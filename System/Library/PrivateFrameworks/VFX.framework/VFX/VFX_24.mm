uint64_t sub_1AF27D874(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3258(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!sub_1AF1A3CCC(a2))
  {
    return 0;
  }

  v14 = sub_1AF1A4CE8(a1, a3);
  if (!v14)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1FD8(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = sub_1AF1AE6EC(v14);
  v24 = sub_1AF1B6A14(0, 1, v23, 3, 1);
  sub_1AF27D42C(a2, v14, v24, a3, 0);
  sub_1AF1ADBE0(v24);
  return v24;
}

void sub_1AF27D958(uint64_t a1, float a2)
{
  v3 = sub_1AF1CF7E8(a1);
  *&v4 = a2;

  sub_1AF27D994(v3, 1, v4);
}

void sub_1AF27D994(__n128 *a1, int a2, double a3)
{
  if (a1)
  {
    *v5.i64 = sub_1AF1B9F08(a1);
    sub_1AF1B9F10(a1, vmulq_n_f32(v5, *&a3));
    if (sub_1AF1B8774(a1))
    {
      *v6.i64 = sub_1AF1BA28C(a1);
      v7.i64[0] = 0x3400000034000000;
      v7.i64[1] = 0x3400000034000000;
      v8 = vcgeq_f32(v7, vabsq_f32(v6));
      v8.i32[3] = v8.i32[2];
      if ((vminvq_u32(v8) & 0x80000000) == 0)
      {
        sub_1AF1BA2E4(a1, vmulq_n_f32(v6, *&a3));
      }
    }

    v9 = sub_1AF1B75A0(a1);
    if (v9)
    {
      v10 = sub_1AF1B2C1C(v9);
      if (v10)
      {
        sub_1AF27DB88(v10, vdupq_lane_s32(*&a3, 0));
      }
    }

    v11 = sub_1AF1B75E8(a1);
    if (v11)
    {
      sub_1AF27DAC4(v11, *&a3);
    }

    v12 = sub_1AF1BB260(a1);
    if (v12)
    {
      sub_1AF27DB20(v12, *&a3);
    }

    if (a2)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF27DB78;
      v14[3] = &unk_1E7A7DC00;
      v15 = LODWORD(a3);
      sub_1AF1B7E14(a1, v14);
    }
  }
}

void sub_1AF27DAC4(uint64_t a1, float a2)
{
  v4 = sub_1AF19CC98(a1);
  sub_1AF19CCE0(a1, v4 * a2);
  v5 = sub_1AF19CBFC(a1) * a2;

  sub_1AF19CC44(a1, v5);
}

float32x2_t sub_1AF27DB20(uint64_t a1, float a2)
{
  v3 = sub_1AF15D9E8(a1);
  sub_1AF15DA30(a1, v3 * a2);
  v4 = sub_1AF15E428(a1);
  result = vmul_n_f32(*(v4 + 4), a2);
  *(v4 + 4) = result;
  return result;
}

void sub_1AF27DB88(uint64_t a1, float32x4_t a2)
{
  v3 = sub_1AF1A4CE8(a1, 0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1AF1A4C6C(a1, 0, 0);
    v6 = sub_1AF1AF040(v4);
    v7 = sub_1AF1AE6EC(v6);
    if (v7 >= 1)
    {
      v10 = v7;
      for (i = 0; i != v10; ++i)
      {
        *v12.i64 = sub_1AF1AF084(v6, i, v8, v9);
        sub_1AF1B6C38(v6, i, v13, v14, vmulq_f32(a2, v12));
      }
    }

    sub_1AF1ADBE0(v6);
    sub_1AF1A44D4(a1, v6, 0, v5);
    CFRelease(v6);
  }

  v15 = a2.f32[1] != a2.f32[2];
  if (a2.f32[0] != a2.f32[2])
  {
    v15 = 0;
  }

  v16 = a2.f32[0] == a2.f32[1] && v15;
  v17 = sub_1AF1A4F84(a1, 0);
  if (!v16)
  {
    v18 = v17;
    if (v17)
    {
      v19 = sub_1AF1A4C6C(a1, 1, 0);
      v20 = sub_1AF1AF040(v18);
      v21 = sub_1AF1AE6EC(v20);
      if (v21 >= 1)
      {
        v24 = v21;
        v25 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        v35 = vdivq_f32(_Q0, a2);
        do
        {
          *v31.i64 = sub_1AF1AF084(v20, v25, v22, v23);
          sub_1AF1B6C38(v20, v25++, v32, v33, vmulq_f32(v35, v31));
        }

        while (v24 != v25);
      }

      sub_1AF1ADBE0(v20);
      sub_1AF1A44D4(a1, v20, 0, v19);

      CFRelease(v20);
    }
  }
}

BOOL sub_1AF27DD4C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AF1B1FE0(a1);
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = sub_1AF1B2030(a1, v6);
      v9 = sub_1AF1A1270(v8);
      if (v9)
      {
        v10 = sub_1AF1656E4(v9, 6, 0);
        if (v10)
        {
          if (sub_1AF166220(v10))
          {
            break;
          }
        }
      }

      v7 = ++v6 < v5;
      if (v5 == v6)
      {
        return v7;
      }
    }

    if (a2)
    {
      *a2 = v6;
    }
  }

  return v7;
}

uint64_t sub_1AF27DDF0(uint64_t a1, int a2)
{
  if (sub_1AF1A4604(a1, 4, 0, a2))
  {
    return 1;
  }

  v5 = sub_1AF1A4CE8(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AF1A4C6C(a1, 0, 0);
    v8 = sub_1AF1A4F84(a1, a2);
    if (!v8)
    {
      result = sub_1AF27D340(a1, a2, 0);
      if (!result)
      {
        return result;
      }

      v8 = result;
      if (a2 == 1)
      {
        sub_1AF1A44DC(a1, result, 0);
      }

      else if (!a2)
      {
        sub_1AF1A44D4(a1, result, 0, v7);
      }

      CFRelease(v8);
    }

    v10 = sub_1AF1A4604(a1, 3, 0, a2);
    if (v10)
    {
      v11 = v10;
      v25 = 0u;
      v26 = 0u;
      sub_1AF1AE1A8(v6, &v25);
      v23 = 0u;
      v24 = 0u;
      sub_1AF1AE1A8(v8, &v23);
      v21 = 0u;
      v22 = 0u;
      sub_1AF1AE1A8(v11, &v21);
      if (BYTE7(v26) == 1 && BYTE8(v26) >= 3u && BYTE7(v24) == 1 && BYTE8(v24) >= 3u && BYTE7(v22) == 1 && BYTE8(v22) >= 2u)
      {
        v12 = sub_1AF27C4D8(a1, a2);
      }

      else
      {
        v12 = sub_1AF27CBA0(a1, a2);
      }

      v19 = v12;
      if (v12)
      {
LABEL_32:
        if (a2 == 1)
        {
          sub_1AF1A44DC(a1, v19, 0);
        }

        else if (!a2)
        {
          sub_1AF1A44D4(a1, v19, 0, v7);
        }

        CFRelease(v19);
        return 1;
      }
    }

    else
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2050();
      }

      v14 = sub_1AF1AE6EC(v6);
      v15 = 16 * v14;
      v16 = malloc_type_calloc(16 * v14, 1uLL, 0x3061F7B7uLL);
      v17 = v16;
      if (v14 >= 1)
      {
        memset_pattern16(v16, &xmmword_1AFE201A0, v15);
      }

      v18 = CFDataCreateWithBytesNoCopy(0, v17, v15, *MEMORY[0x1E695E480]);
      v19 = sub_1AF1ADBE4(v18, 4, v14, 4, 1);
      CFRelease(v18);
      if (v19)
      {
        goto LABEL_32;
      }
    }

    v20 = sub_1AF0D5194();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDF2084();
      return 0;
    }
  }

  else
  {
    v9 = sub_1AF0D5194();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDF20B8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF27E0C4(uint64_t a1, int a2)
{
  v13 = 0;
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = sub_1AF27DD4C(a1, &v13);
  if (result)
  {
    result = sub_1AF1B2C1C(a1);
    if (result)
    {
      return sub_1AF27DDF0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1AF27E144(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF27E380;
  v15[3] = &unk_1E7A7DC28;
  v15[4] = &v20;
  v15[5] = &v16;
  sub_1AF1A2BEC(a1, 0, v15);
  v2 = v21[3];
  if (v2)
  {
    v3 = v17[3] * v2;
    v4 = sub_1AF288058(v3);
    v5 = CFDataCreateWithBytesNoCopy(0, v4, v3, *MEMORY[0x1E695E488]);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6 = sub_1AF1A2E00();
    v7 = sub_1AF1A516C(a1, 0);
    sub_1AF1A5208(v6, v7);
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF27E450;
    v9[3] = &unk_1E7A7DC50;
    v9[4] = &v11;
    v9[5] = &v16;
    v9[6] = &v20;
    v9[7] = v10;
    v9[8] = v5;
    v9[9] = v6;
    sub_1AF1A2BEC(a1, 0, v9);
    CFRelease(v12[3]);
    CFRelease(v5);
    _Block_object_dispose(v10, 8);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v6;
}

void sub_1AF27E32C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AF27E380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1AF080(a2);
  *(*(*(a1 + 32) + 8) + 24) += sub_1AF1CB328(v4);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = sub_1AF1AE6EC(a2);
  v7 = *(*(a1 + 40) + 8);
  if (v5)
  {
    if (v6 != *(v7 + 24))
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Cannot create an interleaved copy, count mismatch", v9, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = v6;
  }
}

uint64_t sub_1AF27E450(void *a1, uint64_t a2, __int16 a3, uint64_t a4, int a5)
{
  v9 = sub_1AF1AF080(a2);
  v10 = v9;
  if (*(*(a1[4] + 8) + 24))
  {
    v11 = sub_1AF1CAED8(v9);
    v12 = sub_1AF1CAED0(v10);
    v13 = sub_1AF1CAE64(v11, v12, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    v14 = sub_1AF1ADD44(v13, a3);
    CFRelease(v13);
    sub_1AF1CB108(v13, *(*(a1[4] + 8) + 24), v15, v16);
    sub_1AF1A44D4(a1[9], v14, a4, a5);
    CFRelease(v14);
  }

  else
  {
    v18 = a1[8];
    v19 = sub_1AF1CAED8(v9);
    v20 = sub_1AF1CAED0(v10);
    *(*(a1[4] + 8) + 24) = sub_1AF1ADC58(a3, v18, v19, v20, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    v13 = sub_1AF1AF080(*(*(a1[4] + 8) + 24));
    sub_1AF1A44D4(a1[9], *(*(a1[4] + 8) + 24), a4, a5);
  }

  sub_1AF1CB3A4(v10, v13, 0, v17);
  result = sub_1AF1CB328(v10);
  *(*(a1[7] + 8) + 24) += result;
  return result;
}

uint64_t sub_1AF27E5F0(__n128 *a1, int a2)
{
  memset(&v119, 0, sizeof(v119));
  v4 = sub_1AF1CF7E8(a1);
  v5 = v4;
  v6 = xmmword_1AFE201A0;
  __asm { FMOV            V1.4S, #1.0 }

  v117 = xmmword_1AFE201A0;
  v118 = _Q1;
  if ((a2 & 1) == 0)
  {
    if (!sub_1AF1B7C8C(v4, &v117, 0))
    {
      v19 = sub_1AF1B8588();
      sub_1AF15C19C();
      v37 = v36;
      sub_1AF1BB2D4(v19, v36);
      sub_1AF16CC34(v19, @"default camera");
      CFRelease(v37);
      return v19;
    }

    v6 = v117;
    _Q1 = v118;
  }

  v12 = vsubq_f32(v6, _Q1);
  v13 = vaddq_f32(v6, _Q1);
  v14 = vmulq_f32(vsubq_f32(v13, v12), vdupq_n_s32(0x3DCCCCCDu));
  v15 = vsubq_f32(v12, v14);
  v16 = vaddq_f32(v13, v14);
  if (a2)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdupq_n_s32(v17);
  v113 = vbslq_s8(v18, v16, v13);
  v112 = vbslq_s8(v18, v15, v12);
  *v122.columns[0].i64 = sub_1AF1B7F84(v5);
  v123 = __invert_f4(v122);
  v107 = v123.columns[1];
  v108 = v123.columns[0];
  v105 = v123.columns[3];
  v106 = v123.columns[2];
  v19 = sub_1AF1B8588();
  sub_1AF15C19C();
  v21 = v20;
  sub_1AF1BB2D4(v19, v20);
  sub_1AF16CC34(v19, @"default camera");
  CFRelease(v21);
  v22 = sub_1AF15E428(v21);
  v23.i64[0] = 0x3F0000003F000000;
  v23.i64[1] = 0x3F0000003F000000;
  v111 = vmulq_f32(vaddq_f32(v112, v113), v23);
  v24 = sub_1AF1CFC48(a1);
  v25.i32[0] = 0;
  v26.i64[0] = 0x3400000034000000;
  v26.i64[1] = 0x3400000034000000;
  v27 = vcgeq_f32(v26, vabsq_f32(v24));
  v27.i32[3] = v27.i32[2];
  v27.i32[0] = vminvq_u32(v27);
  v109 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v25, v27), 0), xmmword_1AFE20160, v24);
  v28 = sub_1AF15D850(v21);
  v29 = tan(v28 * 0.5 * 3.14159265 / 180.0);
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  v31 = vmulq_f32(vsubq_f32(v113, v112), v30);
  *&v29 = 1.0 / v29;
  v32 = vmulq_n_f32(v31, *&v29);
  v33 = v109.f32[0] != 0.0 || v109.f32[1] != 0.0;
  if (v33)
  {
    if (v32.f32[0] < v32.f32[1])
    {
      v32.f32[0] = v32.f32[1];
    }

    v34.i64[0] = v111.i64[0];
    v34.f32[2] = v111.f32[2] + (v31.f32[2] + v32.f32[0]);
    v34.i32[3] = v111.i32[3];
    v35 = v111;
  }

  else if (v109.f32[2] == 0.0)
  {
    v35 = v111;
    v34 = v111;
  }

  else
  {
    if (v32.f32[0] < v32.f32[2])
    {
      v32.f32[0] = v32.f32[2];
    }

    v35 = v111;
    v34.i32[0] = v111.i32[0];
    v34.f32[1] = v111.f32[1] - (v31.f32[1] + v32.f32[0]);
    v34.i64[1] = v111.i64[1];
  }

  v38 = vceqq_f32(v35, v34);
  v38.i32[3] = v38.i32[2];
  v104 = v34;
  if ((vminvq_u32(v38) & 0x80000000) != 0)
  {
    v62.columns[3] = xmmword_1AFE201A0;
    v62.columns[2] = xmmword_1AFE20180;
    v62.columns[1] = xmmword_1AFE20160;
    v62.columns[0] = xmmword_1AFE20150;
  }

  else
  {
    v39 = vsubq_f32(v35, v34);
    v40 = vmulq_f32(v39, v39);
    *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    v42 = vrsqrte_f32(v41);
    v43 = vmul_f32(v42, vrsqrts_f32(v41, vmul_f32(v42, v42)));
    v44 = vmulq_n_f32(v39, vmul_f32(v43, vrsqrts_f32(v41, vmul_f32(v43, v43))).f32[0]);
    v45 = vmulq_f32(v109, v109);
    v43.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
    *v45.f32 = vrsqrte_f32(v43.u32[0]);
    *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32)));
    v46 = vmulq_n_f32(v109, vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
    v47 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
    v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vnegq_f32(v44)), v46, v47);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmulq_f32(v48, v48);
    v40.f32[0] = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
    *v50.f32 = vrsqrte_f32(v40.u32[0]);
    *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v50.f32, *v50.f32)));
    v51 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v50.f32, *v50.f32))).f32[0]);
    v52 = vmlaq_f32(vmulq_f32(v47, vnegq_f32(v51)), v44, vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL));
    v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
    v54 = vmulq_f32(v34, v51);
    v55 = vmulq_f32(v34, v44);
    v44.f32[3] = -(v55.f32[2] + vaddv_f32(*v55.f32));
    v56 = vnegq_f32(v44);
    v57 = vzip1q_s32(v51, v56);
    v51.f32[3] = -(v54.f32[2] + vaddv_f32(*v54.f32));
    v58 = vmulq_f32(v34, v53);
    v59 = vzip1q_s32(v53, 0);
    v53.f32[3] = -(v58.f32[2] + vaddv_f32(*v58.f32));
    v60 = vzip2q_s32(v51, v56);
    v61 = vzip2q_s32(v53, xmmword_1AFE201A0);
    v62.columns[0] = vzip1q_s32(v57, v59);
    v62.columns[1] = vzip2q_s32(v57, v59);
    v62.columns[2] = vzip1q_s32(v60, v61);
    v62.columns[3] = vzip2q_s32(v60, v61);
  }

  v119 = v62;
  v124 = __invert_f4(v62);
  if (a2)
  {
    v103 = v124;
    if (v109.f32[1] == 0.0)
    {
      if (v109.f32[2] == 0.0)
      {
        v63 = xmmword_1AFE47420;
      }

      else
      {
        v63 = xmmword_1AFE47410;
      }
    }

    else
    {
      v63 = xmmword_1AFE47400;
    }

    v110 = v63;
    v64 = __sincosf_stret(*&v63);
    v65.i32[0] = 0;
    v65.i32[1] = LODWORD(v64.__cosval);
    v65.i64[1] = LODWORD(v64.__sinval);
    v66.i32[0] = 0;
    v66.f32[1] = -v64.__sinval;
    v66.i64[1] = LODWORD(v64.__cosval);
    v101 = v66;
    v102 = v65;
    v67 = __sincosf_stret(*(&v110 + 1));
    v68.i32[3] = 0;
    v68.i64[0] = LODWORD(v67.__cosval);
    v68.f32[2] = -v67.__sinval;
    v69.i64[0] = LODWORD(v67.__sinval);
    v69.i64[1] = LODWORD(v67.__cosval);
    v99 = v69;
    v100 = v68;
    v70 = __sincosf_stret(*(&v110 + 2));
    v71 = 0;
    v72.i32[1] = 0;
    v72.i64[1] = 0;
    v120.columns[0] = xmmword_1AFE20150;
    v120.columns[1] = v102;
    v120.columns[2] = v101;
    memset(&v121, 0, 48);
    do
    {
      v121.columns[v71] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*&v120.columns[v71])), xmmword_1AFE20160, *v120.columns[v71].f32, 1), v99, v120.columns[v71], 2);
      ++v71;
    }

    while (v71 != 3);
    v73 = 0;
    cosval_low = LODWORD(v70.__cosval);
    cosval_low.i32[1] = LODWORD(v70.__sinval);
    cosval_low.i32[2] = 0;
    v72.f32[0] = -v70.__sinval;
    v75 = v72;
    v75.i32[1] = LODWORD(v70.__cosval);
    v75.i32[2] = 0;
    v120.columns[0] = v121.columns[0];
    v120.columns[1] = v121.columns[1];
    v120.columns[2] = v121.columns[2];
    memset(&v121, 0, 48);
    do
    {
      v121.columns[v73] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(cosval_low, COERCE_FLOAT(*&v120.columns[v73])), v75, *v120.columns[v73].f32, 1), xmmword_1AFE20180, v120.columns[v73], 2);
      ++v73;
    }

    while (v73 != 3);
    v76 = 0;
    v77 = v121.columns[0];
    v78 = v121.columns[1];
    v79 = v121.columns[2];
    v77.i32[3] = 0;
    v78.i32[3] = 0;
    v79.i32[3] = 0;
    v80 = vnegq_f32(v111);
    v80.i32[3] = 1.0;
    v120.columns[0] = xmmword_1AFE20150;
    v120.columns[1] = xmmword_1AFE20160;
    v120.columns[2] = xmmword_1AFE20180;
    v120.columns[3] = v80;
    memset(&v121, 0, sizeof(v121));
    do
    {
      v121.columns[v76] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77, COERCE_FLOAT(*&v120.columns[v76])), v78, *v120.columns[v76].f32, 1), v79, v120.columns[v76], 2), xmmword_1AFE201A0, v120.columns[v76], 3);
      ++v76;
    }

    while (v76 != 4);
    v81 = 0;
    v82 = v111;
    v82.i32[3] = 1.0;
    v120 = v121;
    memset(&v121, 0, sizeof(v121));
    do
    {
      v121.columns[v81] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*&v120.columns[v81])), xmmword_1AFE20160, *v120.columns[v81].f32, 1), xmmword_1AFE20180, v120.columns[v81], 2), v82, v120.columns[v81], 3);
      ++v81;
    }

    while (v81 != 4);
    v83 = 0;
    v84 = v121.columns[0];
    v85 = v121.columns[1];
    v86 = v121.columns[2];
    v87 = v121.columns[3];
    v120 = v103;
    memset(&v121, 0, sizeof(v121));
    do
    {
      v121.columns[v83] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, COERCE_FLOAT(*&v120.columns[v83])), v85, *v120.columns[v83].f32, 1), v86, v120.columns[v83], 2), v87, v120.columns[v83], 3);
      ++v83;
    }

    while (v83 != 4);
    v124 = v121;
    v119.columns[0] = v121.columns[0];
  }

  v88 = 0;
  v120 = v124;
  memset(&v121, 0, sizeof(v121));
  do
  {
    v121.columns[v88] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*&v120.columns[v88])), v107, *v120.columns[v88].f32, 1), v106, v120.columns[v88], 2), v105, v120.columns[v88], 3);
    ++v88;
  }

  while (v88 != 4);
  v119 = v121;
  sub_1AF1BA204(v19, &v119);
  v89 = 1;
  if (v33)
  {
    v89 = 2;
  }

  v115 = v112;
  v90 = *(&v115 & 0xFFFFFFFFFFFFFFF3 | (4 * (v89 & 3)));
  v116 = v111;
  *(&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v89 & 3))) = v90;
  v91 = v116;
  v91.i32[3] = v111.i32[3];
  v92 = vsubq_f32(v104, v91);
  v93 = vmulq_f32(v92, v92);
  v94 = vsubq_f32(v104, v113);
  v95 = vmulq_f32(v94, v94);
  v96 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v95, v95, 8uLL)), vadd_f32(vzip1_s32(*v93.i8, *v95.i8), vzip2_s32(*v93.i8, *v95.i8))));
  if (v96.f32[0] != 0.0 && v96.f32[1] != 0.0 && (v96.f32[1] / v96.f32[0]) < 250.0)
  {
    v97 = sqrt((v96.f32[1] / v96.f32[0]) / 250.0);
    v96.f32[0] = v96.f32[0] * v97;
    v96.f32[1] = v96.f32[1] / v97;
  }

  v114 = v96.f32[0];
  sub_1AF15E10C(v22, v96.f32[1]);
  sub_1AF15E220(v22, v114);
  return v19;
}

uint64_t sub_1AF27EE18(uint64_t a1, float32x4_t *a2, __n128 a3)
{
  v43 = a3;
  memset(v42, 0, sizeof(v42));
  v5 = sub_1AF27F12C(a1, v42);
  if (v5)
  {
    v49 = *sub_1AF1B9B04(a1);
    v50 = __invert_f4(v49);
    v40 = v50.columns[1];
    v41 = v50.columns[0];
    v38 = v50.columns[3];
    v39 = v50.columns[2];
    v6 = sub_1AF15E62C(v42, &v43);
    v11 = 0;
    v12 = *v6;
    v13 = *(v6 + 1);
    v14 = *(v6 + 2);
    v15 = *(v6 + 3);
    v44[0] = v41;
    v44[1] = v40;
    v44[2] = v39;
    v44[3] = v38;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    do
    {
      *(&v45 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(v44[v11])), v13, *&v44[v11], 1), v14, v44[v11], 2), v15, v44[v11], 3);
      ++v11;
    }

    while (v11 != 4);
    v8.f32[0] = *&v45.i32[3] - *v45.i32;
    v8.f32[1] = *&v46.i32[3] - *v46.i32;
    v8.f32[2] = *(&v47 + 3) - *&v47;
    v16 = vmulq_f32(v8, v8);
    v8.f32[3] = *(&v48 + 3) - *&v48;
    v9.f32[0] = *&v45.i32[3] + *v45.i32;
    v9.f32[1] = *&v46.i32[3] + *v46.i32;
    v9.f32[2] = *(&v47 + 3) + *&v47;
    v17 = vmulq_f32(v9, v9);
    v9.f32[3] = *(&v48 + 3) + *&v48;
    v10.f32[0] = *&v45.i32[3] + *&v45.i32[1];
    v10.f32[1] = *&v46.i32[3] + *&v46.i32[1];
    v10.f32[2] = *(&v47 + 3) + *(&v47 + 1);
    v18 = vmulq_f32(v10, v10);
    v10.f32[3] = *(&v48 + 3) + *(&v48 + 1);
    v7.f32[0] = *&v45.i32[3] - *&v45.i32[1];
    v7.f32[1] = *&v46.i32[3] - *&v46.i32[1];
    v7.f32[2] = *(&v47 + 3) - *(&v47 + 1);
    v19 = vmulq_f32(v7, v7);
    v7.f32[3] = *(&v48 + 3) - *(&v48 + 1);
    v20 = vextq_s8(v46, v46, 8uLL);
    v21 = vextq_s8(v45, v45, 8uLL).u64[0];
    *v20.f32 = vsub_f32(vzip2_s32(v21, *v20.f32), vzip1_s32(v21, *v20.f32));
    v20.f32[2] = *(&v47 + 3) - *(&v47 + 2);
    v22 = vmulq_f32(v20, v20);
    v23 = v20;
    v23.f32[3] = *(&v48 + 3) - *(&v48 + 2);
    v24 = vzip2q_s32(v45, v46);
    v24.i32[2] = DWORD2(v47);
    v25 = vmulq_f32(v24, v24);
    v24.i32[3] = DWORD2(v48);
    v26 = vaddv_f32(*v16.f32);
    *v16.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v16.f32[2] + v26));
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v16.f32[2] + v26), vmul_f32(*v16.f32, *v16.f32)));
    v27 = vmulq_n_f32(v8, vmul_f32(*v16.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v16.f32[2] + v26), vmul_f32(*v16.f32, *v16.f32))).f32[0]);
    v16.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
    v28 = vrsqrte_f32(v16.u32[0]);
    v29 = vmul_f32(v28, vrsqrts_f32(v16.u32[0], vmul_f32(v28, v28)));
    v30 = vmulq_n_f32(v9, vmul_f32(v29, vrsqrts_f32(v16.u32[0], vmul_f32(v29, v29))).f32[0]);
    *&v31 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v16.f32 = vrsqrte_f32(v31);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v31, vmul_f32(*v16.f32, *v16.f32)));
    v16.i32[0] = vmul_f32(*v16.f32, vrsqrts_f32(v31, vmul_f32(*v16.f32, *v16.f32))).u32[0];
    *&v32 = v19.f32[2] + vaddv_f32(*v19.f32);
    v33 = vmulq_n_f32(v10, v16.f32[0]);
    *v16.f32 = vrsqrte_f32(v32);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v32, vmul_f32(*v16.f32, *v16.f32)));
    v34 = vmulq_n_f32(v7, vmul_f32(*v16.f32, vrsqrts_f32(v32, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
    v16.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
    *v25.f32 = vrsqrte_f32(v16.u32[0]);
    *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v16.u32[0], vmul_f32(*v25.f32, *v25.f32)));
    v35 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v16.u32[0], vmul_f32(*v25.f32, *v25.f32))).f32[0]);
    *&v36 = v22.f32[2] + vaddv_f32(*v22.f32);
    *v25.f32 = vrsqrte_f32(v36);
    *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v36, vmul_f32(*v25.f32, *v25.f32)));
    *a2 = v27;
    a2[1] = v30;
    a2[2] = v33;
    a2[3] = v34;
    a2[4] = v35;
    a2[5] = vmulq_n_f32(v23, vmul_f32(*v25.f32, vrsqrts_f32(v36, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
  }

  return v5;
}

uint64_t sub_1AF27F12C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1BB260(a1);
  if (v12)
  {
    v13 = sub_1AF15E428(v12);
    v15 = v13[1];
    v14 = v13[2];
    *a2 = *v13;
    *(a2 + 16) = v15;
    *(a2 + 32) = v14;
    v16 = v13[6];
    v18 = v13[3];
    v17 = v13[4];
    *(a2 + 80) = v13[5];
    *(a2 + 96) = v16;
    *(a2 + 48) = v18;
    *(a2 + 64) = v17;
    v19 = v13[9];
    v20 = v13[10];
    v22 = v13[7];
    v21 = v13[8];
    *(a2 + 144) = v19;
    *(a2 + 160) = v20;
    *(a2 + 112) = v22;
    *(a2 + 128) = v21;
    if ((*a2 & 4) != 0)
    {
      v23 = *(a2 + 152);
      v24 = v23;
      v25 = *(a2 + 168);
      *&v19 = v25 / v23;
      v26 = v25 / (v24 + 1.0);
      v27 = (v25 + -1.0) / v24;
      if (*(a2 + 156) == 0.0)
      {
        v26 = v27;
      }

      *&v26 = v26;
      v28 = vcgt_f32(*&v19, *&v26);
      DWORD1(v19) = LODWORD(v26);
      *(a2 + 4) = vbsl_s8(vdup_lane_s32(v28, 0), vrev64_s32(*&v19), *&v19);
    }

    return 1;
  }

  else
  {
    result = sub_1AF1B75E8(a1);
    if (result)
    {
      return sub_1AF19BC90(result, a2);
    }
  }

  return result;
}

void sub_1AF27F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2 && a4)
  {
    v6 = sub_1AF1CF7E8(a4);
    if (v6)
    {
      v46 = 0u;
      v47 = 0u;
      v45 = 0;
      if (sub_1AF1B7C8C(v6, &v46, &v45))
      {
        v7 = sub_1AF1B9B04(a2);
        if (v7)
        {
          v8 = 0;
          v9 = *(v7 + 48);
          v10 = vmlaq_f32(vmlaq_f32(vnegq_f32(*(v7 + 32)), 0, *(v7 + 16)), 0, *v7);
          v11 = vmulq_f32(v10, v10);
          v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
          v12 = v11.f32[0] != 0.0;
          v13 = vdupq_lane_s32(*v11.f32, 0);
          v13.i32[3] = 0;
          v14 = vrsqrteq_f32(v13);
          v15 = vmulq_f32(v14, vrsqrtsq_f32(v13, vmulq_f32(v14, v14)));
          v16 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL));
          v16.i32[3] = 0;
          v17 = vbslq_s8(vcltzq_s32(v16), vmulq_f32(v10, vmulq_f32(v15, vrsqrtsq_f32(v13, vmulq_f32(v15, v15)))), v10);
          v18 = vsubq_f32(v46, v47);
          v19 = v18;
          v19.f32[1] = v46.f32[1] - v47.f32[1];
          v20 = v19;
          v20.f32[2] = v46.f32[2] - v47.f32[2];
          v19.f32[2] = v46.f32[2] + v47.f32[2];
          v18.f32[1] = v46.f32[1] + v47.f32[1];
          v21 = v18;
          v21.f32[2] = v46.f32[2] - v47.f32[2];
          v48[0] = v20;
          v48[1] = v19;
          v18.f32[2] = v46.f32[2] + v47.f32[2];
          v48[2] = v21;
          v48[3] = v18;
          v22 = vaddq_f32(v46, v47);
          v23 = v22;
          v23.f32[1] = v46.f32[1] - v47.f32[1];
          v24 = v23;
          v24.f32[2] = v46.f32[2] - v47.f32[2];
          v23.f32[2] = v46.f32[2] + v47.f32[2];
          v48[4] = v24;
          v48[5] = v23;
          v22.f32[1] = v46.f32[1] + v47.f32[1];
          v25 = v22;
          v25.f32[2] = v46.f32[2] - v47.f32[2];
          v22.f32[2] = v46.f32[2] + v47.f32[2];
          v48[6] = v25;
          v48[7] = v22;
          v26 = 3.4028e38;
          v27 = -3.4028e38;
          do
          {
            v28 = vmulq_f32(vsubq_f32(v48[v8], v9), v17);
            v29 = vaddv_f32(*v28.f32);
            if ((v28.f32[2] + v29) < v26)
            {
              v26 = v28.f32[2] + v29;
            }

            v30 = fabsf(v28.f32[2] + v29);
            if (v30 >= v27)
            {
              v27 = v30;
            }

            ++v8;
          }

          while (v8 != 8);
          v31 = vmulq_f32(v47, v47);
          *v31.i32 = sqrtf(vaddv_f32(vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL))));
          v32 = *v31.i32 + *v31.i32;
          v33 = fminf(v27, 1000000.0);
          v35 = v33 + v33 * 0.05;
          if (v32 <= v35)
          {
            v32 = v35;
          }

          v36 = fmax(v32 * 0.0001, 0.001);
          if (v36 > 1.0)
          {
            v36 = 1.0;
          }

          v37 = v36;
          v34 = v26 + v26 * -0.05;
          if (v37 < v34)
          {
            v37 = v26 + v26 * -0.05;
          }

          if (v37 > v35)
          {
            v35 = v37;
          }

          if (v45)
          {
            v38 = v35 + v35;
          }

          else
          {
            v38 = v35;
          }

          v39 = v38 * 0.001;
          if (v39 <= v37)
          {
            v40 = v39;
          }

          else
          {
            v40 = v37;
          }

          if (v40 > v38)
          {
            v41 = sub_1AF0D5194();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF2198(v41, v40, v38);
            }
          }

          *(a1 + 4) = v40;
          *(a1 + 8) = v38;
        }

        else
        {
          v44 = sub_1AF0D5194();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF2234();
          }
        }
      }

      else
      {
        *(a1 + 4) = 0x447A00003DCCCCCDLL;
      }
    }

    else
    {
      v43 = sub_1AF0D5194();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2268();
      }
    }
  }

  else
  {
    v42 = sub_1AF0D5194();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF2164();
    }
  }
}

float32x4_t sub_1AF27F590(uint64_t a1, float32x4_t *a2, __n128 *a3)
{
  v5 = sub_1AF1B9B04(a1);
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v5 + 48), 0, v7), 0, v6), 0, *v5);
  v9 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v7, *a2, 2), v6, *a2->f32, 1), *v5, COERCE_FLOAT(*a2));
  v10 = vmulq_f32(v9, v9);
  v6.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v6.u32[0]);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v10.f32, *v10.f32)));
  result = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v11 = vmulq_f32(v8, result);
  result.f32[3] = -(v11.f32[2] + vaddv_f32(*v11.f32));
  *a3 = result;
  return result;
}

__n128 sub_1AF27F634(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v21 = sub_1AF1CFC48(a1);
  v20 = 0uLL;
  sub_1AF27F590(a2, &v21, &v20);
  _Q0 = v20;
  v6 = vnegq_f32(v20);
  _S2 = vmuls_lane_f32(-2.0, v6, 2);
  _D5 = vmul_f32(*v6.f32, 0xC0000000C0000000);
  __asm { FMLS            S6, S5, V0.S[0] }

  _S7 = _D5.i32[1];
  HIDWORD(v15) = 0;
  *&v15 = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v6.f32[0], _D5, 1)), _S6);
  *(&v15 + 2) = _S2 * v6.f32[0];
  __asm { FMLS            S16, S7, V0.S[1] }

  *&_Q6 = __PAIR64__(_S16, COERCE_UNSIGNED_INT(vmuls_lane_f32(_D5.f32[0], *v6.f32, 1)));
  *(&_Q6 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(_S2, *v6.f32, 1));
  *a3 = v15;
  *(a3 + 16) = _Q6;
  *&v18 = vmul_laneq_f32(_D5, v6, 2);
  __asm { FMLS            S6, S2, V0.S[2] }

  *(&v18 + 1) = _Q6;
  result.n128_u64[0] = vmul_laneq_f32(_D5, v6, 3);
  result.n128_u64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(vmuls_lane_f32(_S2, v6, 3)));
  *(a3 + 32) = v18;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1AF27F708(__n128 *a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  sub_1AF130864(a1);
  v17 = sub_1AF130548(a1);
  memset(v18, 0, sizeof(v18));
  v7 = sub_1AF12F10C(a1);
  if (v7 && (v8 = v7, sub_1AF27F12C(v7, v18)))
  {
    if (sub_1AF15E5E0(v18))
    {
      sub_1AF15E598(v18);
    }

    else
    {
      v10 = v17.n128_f32[2] / fmax(v17.n128_f32[3], 0.000001);
      sub_1AF15DE9C(v18, v10);
      v21 = *sub_1AF1B9B04(v8);
      v22 = __invert_f4(v21);
      v11 = 0;
      v19[0] = a3;
      v19[1] = a4;
      v19[2] = a5;
      v19[3] = a6;
      memset(v20, 0, sizeof(v20));
      do
      {
        v20[v11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22.columns[0], COERCE_FLOAT(v19[v11])), v22.columns[1], *&v19[v11], 1), v22.columns[2], v19[v11], 2), v22.columns[3], v19[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      v12 = sub_1AF15E470(v18);
      sin(v12 / 180.0 * 3.14159265 * 0.5);
    }

    return sub_1AF1B9B04(v8);
  }

  else
  {
    sub_1AF13050C(a1, 1);
    return sub_1AF13050C(a1, 0);
  }
}

uint64_t sub_1AF27FA48(uint64_t result, int a2, float32x2_t a3, float32_t a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    a3.f32[1] = a4;
    __asm { FMOV            V2.2S, #-1.0 }

    do
    {
      if (v4)
      {
        v10 = 0.5;
        v11.i32[0] = 0;
        v12 = v4;
        do
        {
          if (v12)
          {
            v11.f32[0] = v10 + v11.f32[0];
          }

          v10 = v10 * 0.5;
          v13 = v12 > 1;
          v12 >>= 1;
        }

        while (v13);
        v14 = 0.0;
        v15 = v4;
        v16 = 0.33333;
        do
        {
          if (v15 != 3 * (v15 / 3))
          {
            v14 = v14 + ((v15 % 3) * v16);
          }

          v16 = v16 * 0.33333;
          v17 = v15 + 2;
          v15 /= 3;
        }

        while (v17 > 4);
        v11.f32[1] = v14;
      }

      else
      {
        v11 = 0;
      }

      *(result + 8 * v4++) = vmul_f32(vmla_f32(_D2, 0x4000000040000000, v11), a3);
    }

    while (v4 != a2);
  }

  return result;
}

float32x4_t *sub_1AF27FB18(float32x4_t *result, int a2, float a3, float a4, float a5)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; result[i++] = v15)
    {
      if (i)
      {
        v6 = 0.5;
        v7 = 0.0;
        v8 = i;
        do
        {
          if (v8)
          {
            v7 = v6 + v7;
          }

          v6 = v6 * 0.5;
          v9 = v8 > 1;
          v8 >>= 1;
        }

        while (v9);
        v10 = 0.0;
        v11 = i;
        v12 = 0.33333;
        do
        {
          if (v11 != 3 * (v11 / 3))
          {
            v10 = v10 + ((v11 % 3) * v12);
          }

          v12 = v12 * 0.33333;
          v13 = v11 + 2;
          v11 /= 3;
        }

        while (v13 >= 5);
        v14 = ((v7 * 2.0) + -1.0) * a3;
        v15 = result[i];
        v15.f32[0] = v14;
        v15.f32[1] = ((v10 * 2.0) + -1.0) * a4;
      }

      else
      {
        v15.i64[0] = 0;
        v15.i64[1] = result->i64[1];
        *result = v15;
      }

      v15.i64[1] = COERCE_UNSIGNED_INT(sqrtf(COERCE_FLOAT(vmulq_f32(v15, v15).i32[1]) + (v15.f32[0] * v15.f32[0])) * a5);
    }
  }

  return result;
}

uint64_t sub_1AF27FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v44 - 4 * v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v7 + 2);
  do
  {
    sub_1AF1AE1A8(*(a1 + 8 * v9), v49);
    v12 = v49[0];
    v13 = v49[1];
    v10[-1] = v49[0];
    *v10 = v13;
    if (v8)
    {
      if (v8 != v10->i32[0])
      {
        v35 = sub_1AF0D5194();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF229C();
        }

        return 0;
      }
    }

    else
    {
      v8 = v10->i32[0];
    }

    v10 += 2;
    ++v9;
  }

  while (a2 != v9);
  if (!v8)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v48 = v7;
  v17 = v7 + 22;
  v18 = 1;
  do
  {
    if (a2 < 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v17;
      while (1)
      {
        *v21.i64 = sub_1AF279750(*(v20 - 2), (*(v20 - 22) + v16 * *v20), v12, v13.f32[0], v11);
        v13.i64[0] = 0x3400000034000000;
        v13.i64[1] = 0x3400000034000000;
        v12 = vcgeq_f32(vabsq_f32(v21), v13);
        v12.i32[0] = vmaxvq_u32(v12);
        if (v12.i32[0] < 0)
        {
          break;
        }

        v20 += 32;
        if (a2 == ++v19)
        {
          goto LABEL_17;
        }
      }
    }

    if (v19 == a2)
    {
LABEL_17:
      v18 |= v14++ > a3;
    }

    else
    {
      v14 = 0;
      v15 += v18 & 1;
      v18 = 0;
    }

    ++v16;
  }

  while (v16 != v8);
  if (!v15)
  {
    return 0;
  }

  if (v8 >= 0xFFFF)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  v23 = 1;
  if (v8 >= 0xFFFF)
  {
    v23 = 2;
  }

  v24 = 2 * (v15 << v23);
  v47 = malloc_type_malloc(v24, 0x77DAE7D8uLL);
  v45 = v24;
  v46 = v22;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v48 += 22;
  v31 = 1;
  do
  {
    if (a2 < 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = 0;
      v33 = v48;
      while (1)
      {
        *v34.i64 = sub_1AF279750(*(v33 - 2), (*(v33 - 22) + v28 * *v33), v25, v26.f32[0], v27);
        v26.i64[0] = 0x3400000034000000;
        v26.i64[1] = 0x3400000034000000;
        v25 = vcgeq_f32(vabsq_f32(v34), v26);
        v25.i32[0] = vmaxvq_u32(v25);
        if (v25.i32[0] < 0)
        {
          break;
        }

        v33 += 32;
        if (a2 == ++v32)
        {
          goto LABEL_34;
        }
      }
    }

    if (v32 == a2)
    {
LABEL_34:
      if (!(v31 & 1 | (v29 <= a3)))
      {
        if (v8 > 0xFFFE)
        {
          *&v47[8 * v30 + 4] = v28 - v29;
        }

        else
        {
          *&v47[4 * v30 + 2] = v28 - v29;
        }

        ++v30;
        v31 = 1;
      }

      ++v29;
    }

    else if (v31)
    {
      v29 = 0;
      v31 = 0;
      if (v8 > 0xFFFE)
      {
        *&v47[8 * v30] = v28;
      }

      else
      {
        *&v47[4 * v30] = v28;
      }
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    ++v28;
  }

  while (v28 != v8);
  if (v31)
  {
    v39 = v46;
    v40 = v45;
  }

  else
  {
    v41 = (2 * v30) | 1;
    if (v8 > 0xFFFE)
    {
      *&v47[4 * v41] = v8 - v29;
    }

    else
    {
      *&v47[2 * v41] = v8 - v29;
    }

    v39 = v46;
    v40 = v45;
    LODWORD(v30) = v30 + 1;
  }

  v42 = v47;
  v43 = CFDataCreate(*MEMORY[0x1E695E480], v47, v40);
  free(v42);
  v37 = sub_1AF1A6834();
  sub_1AF1A699C(v37, 2);
  sub_1AF1A72A0(v37, v30, v43, v39);
  CFRelease(v43);
  return v37;
}

void sub_1AF27FFF8(uint64_t a1, uint64_t a2, float32x4_t a3, __n128 a4, double a5, int8x16_t a6, int8x16_t a7)
{
  a6.i32[0] = a4.n128_i32[2];
  a7.i32[0] = 1.0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = *vbslq_s8(v11, a7, a6).i32;
  v13 = a4.n128_f32[1] / (fabsf(a4.n128_f32[2]) + 1.0);
  v14 = vmuls_lane_f32(v13, a4.n128_u64[0], 1);
  v7.f32[0] = -(a4.n128_f32[0] * v13);
  v8.f32[0] = a4.n128_f32[2] + (v12 * v14);
  v19.f32[0] = v12 * v7.f32[0];
  v8.f32[1] = v12 * v7.f32[0];
  v21.f32[0] = -a4.n128_f32[0];
  v8.f32[2] = -a4.n128_f32[0];
  v15 = vmulq_f32(a3, v8);
  v18.f32[1] = -v8.f32[0];
  v18.f32[2] = v7.f32[0];
  v7.f32[1] = 1.0 - v14;
  v7.i32[2] = vmuls_lane_f32(-v12, a4.n128_u64[0], 1);
  v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  v22.f32[0] = -v16;
  v17 = vmulq_f32(a3, v7);
  v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  v18.f32[3] = -(v13 * -a4.n128_f32[0]);
  v19.f32[1] = -(v12 * v7.f32[0]);
  v19.i32[2] = v7.i32[1];
  v19.f32[3] = -v7.f32[1];
  v20 = -(a4.n128_f32[1] * -v12);
  v21.i32[1] = a4.n128_u32[0];
  v21.i32[2] = v7.i32[2];
  v21.f32[3] = v20;
  v22.f32[1] = v16;
  v22.f32[2] = -v17.f32[0];
  v22.f32[3] = v17.f32[0];
  v23 = *(a1 + 16);
  if (*(a1 + 23) == 1)
  {
    if (v23)
    {
      v24 = 0;
      v25 = vnegq_f32(v22);
      do
      {
        v26 = (*a1 + v24 * *(a1 + 22));
        v27 = vcgtq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, v26[1]), v18, *v26), v21, v26[2]), v25);
        v28 = vand_s8(*&vextq_s8(v27, v27, 8uLL), 0x800000004);
        *(a2 + v24++) = v27.i8[4] & 2 | (v27.i32[0] < 0) | v28.i8[0] | v28.i8[4];
      }

      while (v24 < *(a1 + 16));
    }
  }

  else if (v23)
  {
    v29 = 0;
    v30 = vnegq_f32(v22);
    v32 = v30;
    v34 = v19;
    v35 = v18;
    v33 = v21;
    do
    {
      *v31.i64 = sub_1AF279750(*(a1 + 20), (*a1 + v29 * *(a1 + 22)), v30, a4.n128_f32[0], v20);
      v30 = vcgtq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v34, *v31.f32, 1), v35, v31.f32[0]), v33, v31, 2), v32);
      a4.n128_u64[0] = vand_s8(*&vextq_s8(v30, v30, 8uLL), 0x800000004);
      *(a2 + v29++) = v30.i8[4] & 2 | (v30.i32[0] < 0) | a4.n128_u8[0] | a4.n128_u8[4];
    }

    while (v29 < *(a1 + 16));
  }
}

void sub_1AF280210(void *a1, CFArrayRef theArray, uint64_t a3)
{
  *&v55[5] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    v8 = *CFArrayGetValueAtIndex(theArray, 0);
    v9 = sub_1AF1A707C(v8);
    v10 = sub_1AF1A7034(v8);
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    bytes = v11;
    if (*(a3 + 8))
    {
      v12 = v10;
      v50 = v9;
      v53 = a1;
      if (v7 < 1)
      {
        v14 = 0;
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (ValueAtIndex[2] != a1)
          {
            v17 = sub_1AF0D5194();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF22D0(v54, v55, v17);
            }
          }

          v18 = *ValueAtIndex;
          v19 = sub_1AF1A7674(*ValueAtIndex);
          if (i < v7 - 1 && v12 == 1)
          {
            if (sub_1AF1A7674(v18))
            {
              v14 += 3;
            }

            else
            {
              v14 += 2;
            }
          }

          v13 += v19;
        }
      }

      v31 = v14 + 2 * v7 + v13;
      if (v12 == 1)
      {
        v32 = v31 - 2;
      }

      else
      {
        v31 = v13 * bytes;
        v32 = v13;
      }

      length = v31 * *(a3 + 12);
      v49 = v32;
      bytesa = sub_1AF288058(length);
      if (v7 >= 1)
      {
        v33 = 0;
        v34 = bytesa;
        do
        {
          v35 = CFArrayGetValueAtIndex(theArray, v33);
          v36 = *v35;
          Value = CFDictionaryGetValue(*(a3 + 16), v35);
          v38 = sub_1AF280650(v34, v36, Value, *(a3 + 12));
          v34 = v38;
          if (v12 == 1 && v33 < v7 - 1)
          {
            memcpy(v38, &v38[-*(a3 + 12)], *(a3 + 12));
            v39 = (v34 + *(a3 + 12));
            if (sub_1AF1A7674(v36))
            {
              memcpy(v39, v39 - *(a3 + 12), *(a3 + 12));
              v39 = (v39 + *(a3 + 12));
            }

            v40 = CFArrayGetValueAtIndex(theArray, ++v33);
            v41 = *v40;
            v42 = CFDictionaryGetValue(*(a3 + 16), v40);
            v43 = *(a3 + 12);
            v44 = sub_1AF1A7C24(v41, 0, 0, 0) + v42;
            if (v43 == 2)
            {
              *v39 = v44;
            }

            else if (v43 == 4)
            {
              *v39 = v44;
            }

            else
            {
              *v39 = v44;
            }

            a1 = v53;
            v34 = v39 + *(a3 + 12);
          }

          else
          {
            ++v33;
          }
        }

        while (v33 != v7);
      }

      v45 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytesa, length, *MEMORY[0x1E695E480]);
      v46 = sub_1AF1A6834();
      sub_1AF1A718C(v46, v50);
      sub_1AF1A6A70(v46, v12, v49, v45, *(a3 + 12));
      CFRelease(v45);
      v47 = sub_1AF1B2C1C(*a3);
      sub_1AF1A4FB0(v47, v46);
      CFRelease(v46);
      if (a1)
      {
        sub_1AF1B32F8(*a3, a1);
      }
    }

    else if (v7 >= 1)
    {
      v20 = 0;
      v21 = *MEMORY[0x1E695E480];
      do
      {
        v22 = CFArrayGetValueAtIndex(theArray, v20);
        v23 = *v22;
        v24 = sub_1AF1A7674(*v22) * bytes * *(a3 + 12);
        v25 = sub_1AF288058(v24);
        v26 = CFDictionaryGetValue(*(a3 + 16), v22);
        sub_1AF280650(v25, v23, v26, *(a3 + 12));
        v27 = sub_1AF1A6A84(v23);
        v28 = CFDataCreateWithBytesNoCopy(v21, v25, v24, v21);
        v29 = sub_1AF1A7674(v27);
        sub_1AF1A72A0(v27, v29, v28, *(a3 + 12));
        CFRelease(v28);
        v30 = sub_1AF1B2C1C(*a3);
        sub_1AF1A4FB0(v30, v27);
        CFRelease(v27);
        if (a1)
        {
          sub_1AF1B32F8(*a3, a1);
        }

        ++v20;
      }

      while (v7 != v20);
    }

    sub_1AF27B1C0(theArray);
  }
}

uint64_t sub_1AF280650(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1AF1A7674(a2);
  if (sub_1AF1A7034(a2) == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1AF1A79D0(a2, &v29);
  if (sub_1AF1A7034(a2) == 1)
  {
    if (a4 == 2)
    {
      if (v8 < -1)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = v8 + 2;
        do
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 2 * v15) = sub_1AF1A7BA8(&v26, 3 * (v15 / 3), v15 % 3, 0) + a3;
          ++v15;
        }

        while (v16 != v15);
      }

      return a1 + 2 * v16;
    }

    else if (a4 == 1)
    {
      if (v8 < -1)
      {
        v11 = 0;
      }

      else
      {
        v10 = 0;
        v11 = v8 + 2;
        do
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + v10) = sub_1AF1A7BA8(&v26, 3 * (v10 / 3), v10 % 3, 0) + a3;
          ++v10;
        }

        while (v11 != v10);
      }

      return a1 + v11;
    }

    else
    {
      if (v8 < -1)
      {
        v21 = 0;
      }

      else
      {
        v20 = 0;
        v21 = v8 + 2;
        do
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 4 * v20) = sub_1AF1A7BA8(&v26, 3 * (v20 / 3), v20 % 3, 0) + a3;
          ++v20;
        }

        while (v21 != v20);
      }

      return a1 + 4 * v21;
    }
  }

  else if (a4 == 1)
  {
    if (v8 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + v18 + i) = sub_1AF1A7BA8(&v26, v17, i, 0) + a3;
        }

        ++v17;
        v18 += i;
      }

      while (v17 != v8);
    }

    return a1 + v18;
  }

  else if (a4 == 2)
  {
    if (v8 < 1)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 2 * v13 + 2 * j) = sub_1AF1A7BA8(&v26, v12, j, 0) + a3;
        }

        ++v12;
        v13 += j;
      }

      while (v12 != v8);
    }

    return a1 + 2 * v13;
  }

  else
  {
    if (v8 < 1)
    {
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        for (k = 0; k != v9; ++k)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 4 * v23 + 4 * k) = sub_1AF1A7BA8(&v26, v22, k, 0) + a3;
        }

        ++v22;
        v23 += k;
      }

      while (v22 != v8);
    }

    return a1 + 4 * v23;
  }
}

uint64_t sub_1AF280994(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 & 0xFD) == 0)
  {
    v3 = result;
    v4 = a3;
    v5 = *(*(result + 32) + 8 * a3 + 72);
    result = sub_1AF1AF178(a2);
    if (v5 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    *(*(v3 + 32) + 8 * v4 + 72) = v6;
  }

  return result;
}

void sub_1AF2809FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = sub_1AF1A3CCC(a1);
  v11 = sub_1AF1AE6EC(a3);
  v50 = 0u;
  v51 = 0u;
  sub_1AF1AE1A8(a2, &v50);
  v48 = 0u;
  v49 = 0u;
  sub_1AF1AE1A8(a3, &v48);
  if (a5)
  {
    v15 = sub_1AF1AC224(a2);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  for (i = 0; i != v11; ++i)
  {
    sub_1AF279B88(BYTE4(v49), v48 + i * BYTE6(v49), 0);
  }

LABEL_7:
  if (v10 >= 1)
  {
    v17 = 0;
    v32 = v51 - 1;
    do
    {
      v18 = sub_1AF1A3D1C(a1, v17, a4);
      if (a4)
      {
        v19 = 0;
      }

      else
      {
        v19 = sub_1AF1A4C6C(a1, 0, 0);
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      sub_1AF1A767C(v18, v19, &v44);
      if ((v46.n128_u8[2] & 0xFA) != 0)
      {
        v20 = sub_1AF0D5194();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AF0CE000, v20, OS_LOG_TYPE_DEFAULT, "Warning: CFXUnifyNormalsFromGeometry can only process triangles and polygons", buf, 2u);
        }
      }

      else
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = sub_1AF280F68;
        v37[3] = &unk_1E7A7DC70;
        v43 = v32;
        v38 = v50;
        v39 = v51;
        v40 = v15;
        v41 = v48;
        v42 = v49;
        *buf = v44;
        v34 = v45;
        v35 = v46;
        v36 = v47;
        sub_1AF1A80E4(buf, v37, v46);
      }

      ++v17;
    }

    while (v10 != v17);
  }

  if (v15 && v11)
  {
    for (j = 0; j != v11; ++j)
    {
      v22 = v15[j];
      if (j != v22)
      {
        *v23.i64 = sub_1AF279750(BYTE4(v49), (v48 + v22 * BYTE6(v49)), v12, v13, v14);
        sub_1AF279B88(BYTE4(v49), v48 + j * BYTE6(v49), v23);
      }
    }
  }

  if (v11)
  {
    for (k = 0; k != v11; ++k)
    {
      *v25.i64 = sub_1AF279750(BYTE4(v49), (v48 + k * BYTE6(v49)), v12, v13, v14);
      v26 = vmulq_f32(v25, v25);
      v26.f32[0] = v26.f32[2] + vaddv_f32(*v26.f32);
      v27 = vdupq_lane_s32(*v26.f32, 0);
      v27.i32[3] = 0;
      v28 = vrsqrteq_f32(v27);
      v29 = vmulq_f32(v28, vrsqrtsq_f32(v27, vmulq_f32(v28, v28)));
      v30 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v26.f32[0] != 0.0)), 0x1FuLL));
      v30.i32[3] = 0;
      v31 = vbslq_s8(vcltzq_s32(v30), vmulq_f32(v25, vmulq_f32(v29, vrsqrtsq_f32(v27, vmulq_f32(v29, v29)))), v25);
      v31.i32[3] = v25.i32[3];
      sub_1AF279B88(BYTE4(v49), v48 + k * BYTE6(v49), v31);
    }
  }

  free(v15);
}

void sub_1AF280D2C(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, int32x4_t a5, uint64_t a6, unsigned int *a7, unsigned int a8)
{
  v9 = a7;
  if (a8 <= 2)
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2314(v23, v24, v25, v26, v27, v28, v29, v30);
      if (!a8)
      {
        return;
      }
    }

    else if (!a8)
    {
      return;
    }
  }

  else if (a8 == 3)
  {
    v11 = *(a1 + 104);
    v12 = *a7;
    if (v11 < *a7)
    {
      v12 = *(a1 + 104);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 54);
    v15 = v13 + v12 * v14;
    a2.i64[0] = *v15;
    a2.i32[2] = *(v15 + 8);
    *a3.f32 = vmul_s32(vmin_u32(vdup_n_s32(v11), *(a7 + 1)), vdup_n_s32(v14));
    v16 = v13 + a3.u32[0];
    a4.i64[0] = *v16;
    a4.i32[2] = *(v16 + 8);
    v17 = v13 + a3.u32[1];
    a3.i64[0] = *v17;
    a3.i32[2] = *(v17 + 8);
    v18 = vsubq_f32(a4, a2);
    v19 = vsubq_f32(a3, a2);
    v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v22.i32[3] = 0;
LABEL_21:
    v52 = *(a1 + 104);
    v53 = *(a1 + 64);
    v54 = *(a1 + 72);
    v55 = a8;
    v56 = *(a1 + 94);
    do
    {
      v58 = *v9++;
      v57 = v58;
      if (v52 < v58)
      {
        v57 = v52;
      }

      if (v53)
      {
        v57 = *(v53 + 4 * v57);
      }

      v59 = v54 + v57 * v56;
      v20.i64[0] = *v59;
      v20.i32[2] = *(v59 + 8);
      v20 = vaddq_f32(v22, v20);
      *v59 = v20.i64[0];
      *(v59 + 8) = v20.i32[2];
      --v55;
    }

    while (v55);
    return;
  }

  v31 = 0uLL;
  v32 = a8;
  v33 = v9;
  do
  {
    v35 = *v33++;
    v34 = v35;
    if (*(a1 + 104) < v35)
    {
      v34 = *(a1 + 104);
    }

    v36 = *(a1 + 32) + v34 * *(a1 + 54);
    a3.i64[0] = *v36;
    a3.i32[2] = *(v36 + 8);
    v31 = vaddq_f32(v31, a3);
    --v32;
  }

  while (v32);
  v37 = 0;
  a3.f32[0] = a8;
  v20 = vdivq_f32(v31, vdupq_lane_s32(*a3.f32, 0));
  v38 = *(a1 + 104);
  v39 = *(a1 + 32);
  v40 = *(a1 + 54);
  v22 = 0uLL;
  do
  {
    v41 = v22;
    v42 = v9[v37];
    if (v38 < v42)
    {
      v42 = *(a1 + 104);
    }

    v43 = a8 - 1 == v37;
    v44 = v37 + 1;
    v45 = (v37 + 1);
    if (v43)
    {
      v45 = 0;
    }

    v46 = v9[v45];
    if (v38 < v46)
    {
      v46 = *(a1 + 104);
    }

    v47 = v39 + v42 * v40;
    v22.i64[0] = *v47;
    v22.i32[2] = *(v47 + 8);
    v48 = v39 + v46 * v40;
    a5.i64[0] = *v48;
    a5.i32[2] = *(v48 + 8);
    v49 = vsubq_f32(v22, v20);
    v50 = vsubq_f32(a5, v20);
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
    a5 = vuzp1q_s32(v51, v51);
    v22 = vaddq_f32(v41, vextq_s8(a5, v51, 0xCuLL));
    v22.i32[3] = v41.i32[3];
    v37 = v44;
  }

  while (a8 != v44);
  if (a8)
  {
    goto LABEL_21;
  }
}

void sub_1AF280F68(uint64_t a1, float32x4_t a2, float a3, float32x4_t a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  LODWORD(v7) = a7;
  v8 = a6;
  if (a7 <= 2)
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2314(v25, v26, v27, v28, v29, v30, v31, v32);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }
  }

  else if (a7 == 3)
  {
    v10 = *(a1 + 104);
    v11 = *a6;
    if (v10 < *a6)
    {
      v11 = *(a1 + 104);
    }

    if (v10 >= a6[1])
    {
      v12 = a6[1];
    }

    else
    {
      v12 = *(a1 + 104);
    }

    if (v10 >= a6[2])
    {
      v13 = a6[2];
    }

    else
    {
      v13 = *(a1 + 104);
    }

    *v14.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v11 * *(a1 + 54)), a2, a3, a4.f32[0]);
    v60 = v14;
    *v17.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v12 * *(a1 + 54)), v14, v15, v16);
    v58 = v17;
    *v20.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v13 * *(a1 + 54)), v17, v18, v19);
    v21 = vsubq_f32(v58, v60);
    v22 = vsubq_f32(v20, v60);
    a4 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v21)), v22, a4);
    v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v24.i32[3] = 0;
    v61 = v24;
LABEL_29:
    v7 = v7;
    do
    {
      v52 = *(a1 + 64);
      v53 = v8;
      if (v52)
      {
        v53 = (v52 + 4 * *v8);
      }

      v54 = *(a1 + 72);
      v55 = *v53 * *(a1 + 94);
      *v56.i64 = sub_1AF279750(*(a1 + 92), (v54 + v55), v24, v23.f32[0], a4.f32[0]);
      sub_1AF279B88(*(a1 + 92), v54 + v55, vaddq_f32(v61, v56));
      ++v8;
      --v7;
    }

    while (v7);
    return;
  }

  v23 = 0uLL;
  v33 = v7;
  v34 = v8;
  do
  {
    v62 = v23;
    v35 = *(a1 + 104);
    v37 = *v34++;
    v36 = v37;
    if (v35 >= v37)
    {
      v35 = v36;
    }

    *a2.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v35 * *(a1 + 54)), a2, v23.f32[0], a4.f32[0]);
    v23 = vaddq_f32(v62, a2);
    --v33;
  }

  while (v33);
  v38 = 0;
  a2.f32[0] = v7;
  v57 = vdivq_f32(v23, vdupq_lane_s32(*a2.f32, 0));
  v24 = 0uLL;
  do
  {
    v63 = v24;
    v39 = *(a1 + 104);
    v40 = v8[v38];
    if (v39 < v40)
    {
      v40 = *(a1 + 104);
    }

    v41 = v38 + 1;
    if (v7 - 1 == v38)
    {
      v42 = 0;
    }

    else
    {
      v42 = (v38 + 1);
    }

    v43 = v8[v42];
    if (v39 >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = *(a1 + 104);
    }

    *v45.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v40 * *(a1 + 54)), v24, v23.f32[0], a4.f32[0]);
    v59 = v45;
    *v48.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v44 * *(a1 + 54)), v45, v46, v47);
    v49 = vsubq_f32(v59, v57);
    v50 = vsubq_f32(v48, v57);
    a4 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, a4);
    v51 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v23.i32[0] = v63.i32[0];
    v24 = vaddq_f32(v63, v51);
    v24.i32[3] = v63.i32[3];
    v38 = v41;
  }

  while (v7 != v41);
  v61 = v24;
  if (v7)
  {
    goto LABEL_29;
  }
}

void sub_1AF28120C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef sub_1AF281240(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
  v4 = *(a1 + 16);
  if (v4)
  {
    v4 = sub_1AF1B955C(v4);
  }

  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %@ %f,%f,%f>", v3, a1, v4, COERCE_FLOAT(*(a1 + 96)), COERCE_FLOAT(HIDWORD(*(a1 + 96))), COERCE_FLOAT(*(a1 + 104)));
}

uint64_t sub_1AF2812CC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6587D0 = result;
  return result;
}

uint64_t sub_1AF2812F4()
{
  if (qword_1EB6587D8 != -1)
  {
    sub_1AFDF238C();
  }

  v1 = qword_1EB6587D0;

  return sub_1AF0D160C(v1, 0xD0uLL);
}

uint64_t sub_1AF28133C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF281384(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

CFTypeRef sub_1AF2813CC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF28144C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t sub_1AF281494(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

uint64_t sub_1AF2814DC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 64;
}

uint64_t sub_1AF281524(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 96;
}

uint64_t sub_1AF28156C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 80;
}

double sub_1AF2815B4(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = vmulq_f32(v10, v10);
  v14 = vmulq_f32(v11, v11);
  v15 = vmulq_f32(v12, v12);
  v16 = vzip1q_s32(v13, v15);
  v17 = vzip2q_s32(v13, v15);
  v18 = vtrn2q_s32(v13, v14);
  v18.i32[2] = v15.i32[1];
  v19 = vaddq_f32(vzip1q_s32(v17, vdupq_laneq_s32(v14, 2)), vaddq_f32(vzip1q_s32(v16, v14), v18));
  __asm { FMOV            V5.4S, #1.0 }

  v25 = vceqzq_f32(v19);
  v25.i32[3] = 0;
  v26 = vbslq_s8(vcltzq_s32(v25), v19, vdivq_f32(_Q5, v19));
  *&result = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(vmulq_laneq_f32(v12, v26, 2), a1[5], 2), vmulq_lane_f32(v11, *v26.f32, 1), *a1[5].f32, 1), vmulq_n_f32(v10, v26.f32[0]), COERCE_FLOAT(*&a1[5])).u64[0];
  return result;
}

uint64_t sub_1AF281664(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 112;
}

float sub_1AF2816AC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 176);
}

double sub_1AF2816F4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2418(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 16);
  v13 = 0.0;
  if (v12)
  {
    v14 = sub_1AF1B75A0(v12);
    if (v14)
    {
      v15 = sub_1AF1B2C1C(v14);
      if (v15)
      {
        v16 = v15;
        v17 = sub_1AF1A4604(v15, 3, a2, 0);
        if (v17)
        {
          v18 = v17;
          v19 = sub_1AF1A4CE8(v16, 0);
          if (v19)
          {
            v20 = v19;
            v21 = sub_1AF1A3D1C(v16, *(a1 + 32), 0);
            if (v21)
            {
              v22 = v21;
              v23 = sub_1AF1A4C6C(v16, 3, a2);
              v24 = sub_1AF1A4C6C(v16, 0, 0);
              v25 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 48), v23);
              v26 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 52), v23);
              v29 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 56), v23);
              v48 = v26;
              v49 = v25;
              v30 = v29;
              if (v24 != v23)
              {
                v25 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 48), v24);
                v26 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 52), v24);
                v30 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 56), v24);
              }

              *&v31 = sub_1AF1AF084(v20, v25, v27, v28);
              v51[0] = v31;
              *&v34 = sub_1AF1AF084(v20, v26, v32, v33);
              v51[1] = v34;
              *&v37 = sub_1AF1AF084(v20, v30, v35, v36);
              v51[2] = v37;
              v50.i32[2] = 0;
              v50.i64[0] = 0;
              sub_1AF1DA3CC(v51, (a1 + 64), &v50);
              v40 = sub_1AF1AF104(v18, v49, v38, v39);
              v43 = sub_1AF1AF104(v18, v48, v41, v42);
              v46 = sub_1AF1AF104(v18, v29, v44, v45);
              return COERCE_DOUBLE(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v43, *v50.f32, 1), *&v40, v50.f32[0]), *&v46, v50, 2));
            }
          }
        }
      }
    }
  }

  return v13;
}

uint64_t sub_1AF281920(float32x4_t *a1, int a2, uint64_t a3, uint64_t a4, float32x2_t *a5, __n128 a6)
{
  v44 = a6;
  memset(v43, 0, sizeof(v43));
  if (!a3)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = sub_1AF27F12C(a3, v43);
  if (v19)
  {
    if (a4 && (v43[0] & 2) != 0)
    {
      sub_1AF27F230(v43, a3, 0, a4);
    }

    v20 = sub_1AF15E62C(v43, &v44);
    v41 = *(v20 + 1);
    v42 = *v20;
    v39 = *(v20 + 3);
    v40 = *(v20 + 2);
    v50 = *sub_1AF1B9B04(a3);
    v51 = __invert_f4(v50);
    v21 = 0;
    v22 = v44;
    v45 = v51;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v46 + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*&v45.columns[v21])), v41, *v45.columns[v21].f32, 1), v40, v45.columns[v21], 2), v39, v45.columns[v21], 3);
      ++v21;
    }

    while (v21 != 4);
    if (a2 >= 1)
    {
      v23 = v46;
      v24 = v47;
      v25 = vcvtq_f64_f32(*v22.i8);
      v26 = a2;
      v27 = vextq_s8(v22, v22, 8uLL).u64[0];
      __asm
      {
        FMOV            V5.2S, #1.0
        FMOV            V6.2D, #0.5
      }

      v34 = v48;
      v35 = v49;
      do
      {
        v36 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v35, v34, *a1, 2), v24, *a1->f32, 1), v23, COERCE_FLOAT(*a1));
        if (v36.f32[3] == 0.0)
        {
          break;
        }

        v37 = 1.0 / v36.f32[3];
        if ((1.0 / v36.f32[3]) == 0.0)
        {
          break;
        }

        a5[1].f32[0] = 1.0 - vmuls_lane_f32(v37, v36, 2);
        *a5 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(vmul_f32(v27, vadd_f32(vmul_n_f32(*v36.f32, v37), _D5))), _Q6), v25));
        a5 += 2;
        ++a1;
        --v26;
      }

      while (v26);
    }
  }

  return v19;
}

uint64_t sub_1AF281AF8(__int128 *a1, signed int a2, uint64_t a3, uint64_t a4, float32x4_t *a5, __n128 a6)
{
  if (!a3)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  memset(v27, 0, sizeof(v27));
  result = sub_1AF27F12C(a3, v27);
  if (result)
  {
    if (a4 && (v27[0] & 2) != 0)
    {
      sub_1AF27F230(v27, a3, 0, a4);
    }

    result = sub_1AF15EAD0(v27, a1, a2, a5, a6);
    if (result)
    {
      v20 = sub_1AF1B9B04(a3);
      if (a2 >= 1)
      {
        v22 = v20[2];
        v21 = v20[3];
        v23 = a2;
        v25 = *v20;
        v24 = v20[1];
        do
        {
          *a5 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v21, v22, *a5, 2), v24, *a5->f32, 1), v25, COERCE_FLOAT(*a5));
          ++a5;
          --v23;
        }

        while (v23);
      }

      return 1;
    }
  }

  return result;
}

double sub_1AF281C18(uint64_t a1, uint64_t a2, float32x4_t *a3, _OWORD *a4, __n128 a5, __n128 a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    __asm { FMOV            V2.4S, #1.0 }

    *&_Q2 = a6.n128_u64[0];
    v16[0] = a6;
    v16[1] = _Q2;
    sub_1AF281AF8(v16, 2, a1, a2, &v14, a5);
    if (a3)
    {
      a5.n128_u64[0] = v14.i64[0];
      *a3 = v14;
    }

    if (a4)
    {
      a5.n128_u64[0] = v15;
      *a4 = v15;
    }
  }

  return a5.n128_f64[0];
}

_OWORD *sub_1AF281CB8(_OWORD *result, CFDictionaryRef theDict)
{
  result[26] = 0u;
  result[27] = 0u;
  result[24] = 0u;
  result[25] = 0u;
  result[22] = 0u;
  result[23] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  *result = -1;
  *(result + 10) = 1;
  *(result + 4) = *(result + 4) & 0xE400 | 0xA3F;
  if (!theDict)
  {
    return result;
  }

  v3 = result;
  Value = CFDictionaryGetValue(theDict, @"kHitTestAllLayers");
  v5 = MEMORY[0x1E695E4D0];
  if (Value)
  {
    if (CFEqual(*MEMORY[0x1E695E4D0], Value))
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *(v3 + 10) = v6;
  }

  v7 = CFDictionaryGetValue(theDict, @"kHitTestLayerMask");
  if (v7)
  {
    v11 = objc_msgSend_integerValue(v7, v8, v9, v10);
    if (v11 >= 1)
    {
      *(v3 + 10) = v11;
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"kHitTestClipToZRange");
  if (v12)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFFFD | (2 * (CFEqual(*v5, v12) != 0));
  }

  v13 = CFDictionaryGetValue(theDict, @"kHitTestIgnoreLockedNodes");
  if (v13)
  {
    *(v3 + 8) = *(v3 + 8) & 0xEFFF | ((CFEqual(*v5, v13) != 0) << 12);
  }

  v14 = CFDictionaryGetValue(theDict, @"kHitTestBackFaceCulling");
  if (v14)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFFF7 | (8 * (CFEqual(*v5, v14) != 0));
  }

  v15 = CFDictionaryGetValue(theDict, @"kHitTestSkipTransparentNode");
  if (v15)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFFEF | (16 * (CFEqual(*v5, v15) != 0));
  }

  v16 = CFDictionaryGetValue(theDict, @"kHitTestCategoryBitMask");
  if (v16)
  {
    valuePtr = 0;
    CFNumberGetValue(v16, kCFNumberLongType, &valuePtr);
    *v3 = valuePtr;
  }

  v17 = CFDictionaryGetValue(theDict, @"kHitTestSkipHiddenNode");
  if (v17)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFFDF | (32 * (CFEqual(*v5, v17) != 0));
  }

  v18 = CFDictionaryGetValue(theDict, @"kHitTestSkipParticleEmitter");
  if (v18)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFFBF | ((CFEqual(*v5, v18) != 0) << 6);
  }

  v19 = CFDictionaryGetValue(theDict, @"kHitTestIgnoreChildNodes");
  if (v19)
  {
    v20 = CFEqual(*v5, v19);
    v21 = *(v3 + 8) & 0xFFFE;
    if (!v20)
    {
      ++v21;
    }

    *(v3 + 8) = v21;
  }

  v22 = CFDictionaryGetValue(theDict, @"kHitTestFirstFoundOnly");
  if (v22)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFEFF | ((CFEqual(*v5, v22) != 0) << 8);
  }

  v23 = CFDictionaryGetValue(theDict, @"kHitTestSortResults");
  if (v23)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFFFB | (4 * (CFEqual(*v5, v23) != 0));
  }

  v24 = CFDictionaryGetValue(theDict, @"kHitTestSearchMode");
  if (v24)
  {
    v28 = objc_msgSend_integerValue(v24, v25, v26, v27);
    switch(v28)
    {
      case 2:
        v29 = *(v3 + 8) & 0xFCFF | 0x100;
        goto LABEL_39;
      case 1:
        v29 = *(v3 + 8) & 0xFCFF;
        goto LABEL_39;
      case 0:
        v29 = *(v3 + 8) & 0xFCFF | 0x200;
LABEL_39:
        *(v3 + 8) = v29;
        break;
    }
  }

  v30 = CFDictionaryGetValue(theDict, @"kHitTestBoundingBoxOnly");
  if (v30)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFF7F | ((CFEqual(*v5, v30) != 0) << 7);
  }

  v31 = CFDictionaryGetValue(theDict, @"kHitTestShowDebugInfo");
  if (v31)
  {
    *(v3 + 8) = *(v3 + 8) & 0xFBFF | ((CFEqual(*v5, v31) != 0) << 10);
  }

  v32 = CFDictionaryGetValue(theDict, @"kHitTestResultIgnoreLightArea");
  if (v32)
  {
    *(v3 + 8) = *(v3 + 8) & 0xF7FF | ((CFEqual(*v5, v32) & 1) << 11);
  }

  result = CFDictionaryGetValue(theDict, @"auth");
  *(v3 + 432) = result;
  return result;
}

void sub_1AF282124(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float32x4_t a7, __n128 a8)
{
  v14 = sub_1AF2812F4();
  sub_1AF2813CC(v14, *(a1 + 112));
  v15 = *(v14 + 24);
  v16 = *(a1 + 120);
  if (v15 != v16)
  {
    if (v15)
    {
      CFRelease(*(v14 + 24));
      *(v14 + 24) = 0;
      v16 = *(a1 + 120);
    }

    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v14 + 24) = v16;
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v19 = *(a1 + 176);
  *(v14 + 144) = *(a1 + 160);
  *(v14 + 160) = v19;
  *(v14 + 112) = v17;
  *(v14 + 128) = v18;
  *(v14 + 80) = a8;
  *(v14 + 32) = *(a1 + 192);
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 52) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a7;
  *(v14 + 96) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a1 + 176), *(a1 + 160), a7, 2), *(a1 + 144), *a7.f32, 1), *(a1 + 128), a7.f32[0]);
  if ((*(a1 + 8) & 0x200) != 0)
  {
    v20 = a6 / *(a1 + 108);
    *(a1 + 108) = a6;
    *(a1 + 60) = v20 * *(a1 + 60);
  }

  CFArrayAppendValue(*(a1 + 328), v14);

  CFRelease(v14);
}

void sub_1AF282244(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float32x4_t a7, __n128 a8)
{
  v14 = sub_1AF2812F4();
  sub_1AF2813CC(v14, *(a1 + 112));
  v15 = *(a1 + 128);
  v16 = *(a1 + 144);
  v17 = *(a1 + 176);
  *(v14 + 144) = *(a1 + 160);
  *(v14 + 160) = v17;
  *(v14 + 112) = v15;
  *(v14 + 128) = v16;
  *(v14 + 80) = a8;
  *(v14 + 32) = *(a1 + 192);
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 52) = a4;
  *(v14 + 56) = a5;
  *(v14 + 96) = a7;
  v21 = __invert_f4(*(a1 + 128));
  *(v14 + 64) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v21.columns[3], v21.columns[2], a7, 2), v21.columns[1], *a7.f32, 1), v21.columns[0], a7.f32[0]);
  if ((*(a1 + 8) & 0x200) != 0)
  {
    *(a1 + 60) = a6;
  }

  CFArrayAppendValue(*(a1 + 328), v14);

  CFRelease(v14);
}

BOOL sub_1AF282328(uint64_t a1, unsigned int *a2, unsigned int a3, float32x4_t a4, float32x4_t a5, __n128 a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v15 = 0;
    v16 = a6.n128_f32[3];
    v17 = *(a9 + 8);
    v18 = a3;
    v19 = 1;
    v20 = 1;
    v21 = 3 * a3;
    while (1)
    {
      v22 = *(a1 + 16 * v15);
      v23 = *(a1 + 16 * (v15 + 1));
      v24 = *(a1 + 16 * (v15 + 2));
      v25 = vsubq_f32(v23, v22);
      v26 = vsubq_f32(v24, v22);
      v27 = vnegq_f32(v25);
      v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v27), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
      v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
      v30 = vmulq_f32(v28, v28);
      v30.f32[0] = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
      v31 = vdupq_lane_s32(*v30.f32, 0);
      v31.i32[3] = 0;
      v32 = vrsqrteq_f32(v31);
      v33 = vmulq_f32(v32, vrsqrtsq_f32(v31, vmulq_f32(v32, v32)));
      v34 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v30.f32[0] != 0.0)), 0x1FuLL));
      v34.i32[3] = 0;
      v36 = vbslq_s8(vcltzq_s32(v34), vmulq_f32(vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33))), v29), v29);
      v35 = vmulq_f32(v36, v22);
      v36.n128_f32[3] = -(v35.f32[2] + vaddv_f32(*v35.f32));
      v37 = vmulq_f32(v11, v36);
      v38 = vaddv_f32(vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)));
      if (v17 & 8) == 0 || (a8)
      {
        if (v38 == 0.0)
        {
          goto LABEL_17;
        }
      }

      else if (v38 >= 0.0)
      {
        goto LABEL_17;
      }

      v39 = vmulq_f32(v12, v36);
      v40 = -vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL))) / v38;
      if (v40 >= 0.0 && v40 <= v16)
      {
        v42 = vmlaq_n_f32(v12, v11, v40);
        v43 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v27), vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v26);
        v44 = vmulq_f32(v43, v43);
        v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
        v27.i64[0] = 0;
        v27.i32[2] = 0;
        if (fabsf(v44.f32[0]) >= 1.1755e-38)
        {
          v45 = vsubq_f32(v24, v42);
          v46 = vsubq_f32(v23, v42);
          v47 = vsubq_f32(v22, v42);
          v48 = vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL);
          v49 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
          v50 = vmlaq_f32(vmulq_f32(v49, vnegq_f32(v46)), v48, v45);
          v51 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
          v52 = vmlaq_f32(vmulq_f32(v51, vnegq_f32(v45)), v49, v47);
          v53 = vmlaq_f32(vmulq_f32(v48, vnegq_f32(v47)), v51, v46);
          v54 = vmulq_f32(v43, v50);
          v55 = vmulq_f32(v43, v52);
          v56 = vmulq_f32(v43, v53);
          v57 = vzip2q_s32(v54, v56);
          v58 = vzip1q_s32(vzip1q_s32(v54, v56), v55);
          v59 = vtrn2q_s32(v54, v55);
          v59.i32[2] = v56.i32[1];
          v60 = vdivq_f32(vaddq_f32(vzip1q_s32(v57, vdupq_laneq_s32(v55, 2)), vaddq_f32(v58, v59)), vdupq_lane_s32(*v44.f32, 0));
          v59.i64[0] = 0xBF000000BF000000;
          v59.i64[1] = 0xBF000000BF000000;
          v61 = vabsq_f32(vaddq_f32(v60, v59));
          v59.i64[0] = 0x3F0000003F000000;
          v59.i64[1] = 0x3F0000003F000000;
          v27 = vcgeq_f32(v59, v61);
        }

        v27.i32[3] = v27.i32[2];
        if ((vminvq_u32(v27) & 0x80000000) != 0)
        {
          sub_1AF282124(a9, *a2, 0, 1, 2, v40, v42, v36);
          v12 = a4;
          v11 = a5;
          v17 = *(a9 + 8);
          if ((v17 & 0x100) != 0)
          {
            return v20;
          }
        }
      }

LABEL_17:
      v20 = v19 < v18;
      ++a2;
      v15 += 3;
      ++v19;
      if (v21 == v15)
      {
        return v20;
      }
    }
  }

  return 0;
}

uint64_t sub_1AF2825F4(uint64_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = *(a1 + 208);
  if (result)
  {
    goto LABEL_5;
  }

  if ((*(a2 + 34) & 0xFA) == 0)
  {
    v17 = *(a2 + 4) + 31;
    *(a1 + 216) = v17 >> 5;
    *(a1 + 208) = malloc_type_malloc(v17 & 0xFFFFFFE0, 0x1000040E0EAB150uLL);
    v18 = *(a3 + 23);
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    v94 = 0;
    v95 = &v94;
    v96 = 0x3020000000;
    v19.i64[0] = 0x80000000800000;
    v19.i64[1] = 0x80000000800000;
    v97 = vnegq_f32(v19);
    v90 = 0;
    v91 = &v90;
    v92 = 0x3020000000;
    v93 = v19;
    v80 = 0;
    v81 = &v80;
    v82 = 0x2020000000;
    v83 = 0;
    if (*(a2 + 34) == 4)
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v20 = a3[1];
      v68 = *a3;
      v69 = v20;
      v21 = a2[1];
      v70 = *a2;
      v71 = v21;
      v22 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v72 = a2[2];
      v73 = v22;
      v67[2] = sub_1AF282CC4;
      v67[3] = &unk_1E7A7DC98;
      v75 = v18 == 1;
      v67[4] = &v94;
      v67[5] = &v90;
      v74 = a1;
      v67[6] = &v84;
      v67[7] = &v80;
      v76 = v24;
      v77 = v23;
      v25 = a2[3];
      v78 = a2[2];
      v79 = v25;
      sub_1AF1A80E4(&v76, v67, v25);
    }

    else
    {
      v89 = 0;
      v88 = 0;
      if (*(a2 + 4))
      {
        v26 = 0;
        v27.i64[0] = 0x80000000800000;
        v27.i64[1] = 0x80000000800000;
        v64 = vnegq_f32(v27);
        do
        {
          v28 = a2[1];
          v76 = *a2;
          v77 = v28;
          v29 = a2[3];
          v78 = a2[2];
          v79 = v29;
          sub_1AF282A64(&v76, v26, &v88, &v88 + 1, &v89);
          if (v18 == 1)
          {
            v33 = *(a3 + 22);
            v34 = *a3 + (v88 * v33);
            v35.i64[0] = *v34;
            v35.i64[1] = *(v34 + 8);
            v36 = *a3 + (HIDWORD(v88) * v33);
            v37.i64[0] = *v36;
            v37.i64[1] = *(v36 + 8);
            v38 = *a3 + (v89 * v33);
            v39.i64[0] = *v38;
            v39.i64[1] = *(v38 + 8);
          }

          else
          {
            *v40.i64 = sub_1AF279750(*(a3 + 20), (*a3 + v88 * *(a3 + 22)), v30, v31, v32);
            v66 = v40;
            *v43.i64 = sub_1AF279750(*(a3 + 20), (*a3 + HIDWORD(v88) * *(a3 + 22)), v40, v41, v42);
            v65 = v43;
            *v39.i64 = sub_1AF279750(*(a3 + 20), (*a3 + v89 * *(a3 + 22)), v43, v44, v45);
            v37 = v65;
            v35 = v66;
          }

          v46 = v95;
          v95[2] = vminnmq_f32(vminnmq_f32(vminnmq_f32(v95[2], v35), v37), v39);
          v47 = v91;
          v91[2] = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v91[2], v35), v37), v39);
          v48 = *(v85 + 6) + 1;
          *(v85 + 6) = v48;
          if (v48 > 0x1F || (v49 = *(a2 + 4), v26 >= v49 - 1))
          {
            v50 = *(a1 + 208);
            v51 = *(v81 + 6);
            *(v81 + 6) = v51 + 1;
            v52 = (v50 + 32 * v51);
            v53 = v46[2];
            v54 = v47[2];
            v53.i32[3] = 1.0;
            v54.i32[3] = 1.0;
            v55.i64[0] = 0x3F0000003F000000;
            v55.i64[1] = 0x3F0000003F000000;
            *v52 = vmulq_f32(vaddq_f32(v53, v54), v55);
            v52[1] = vmulq_f32(vsubq_f32(v54, v53), v55);
            v95[2] = v64;
            v53.i64[0] = 0x80000000800000;
            v53.i64[1] = 0x80000000800000;
            v91[2] = v53;
            *(v85 + 6) = 0;
            v49 = *(a2 + 4);
          }

          ++v26;
        }

        while (v26 < v49);
      }
    }

    if (*(v81 + 6) != *(a1 + 216))
    {
      v56 = sub_1AF0D5194();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF2490(v56, v57, v58, v59, v60, v61, v62, v63);
      }
    }

    _Block_object_dispose(&v80, 8);
    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v94, 8);
    _Block_object_dispose(&v84, 8);
    result = *(a1 + 208);
LABEL_5:
    *a4 = *(a1 + 216);
    return result;
  }

  return 0;
}

void sub_1AF282A14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1AF282A64(uint64_t *a1, int a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = sub_1AF0D5194();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDC54C(a1 + 35, v30);
  }
}

float32x4_t sub_1AF282CC4(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, float32x4_t result, float32x4_t a6, float a7)
{
  if (*(a1 + 168))
  {
    if (a4)
    {
      v10 = a4;
      result.i32[3] = 0;
      do
      {
        v11 = *a3++;
        v12 = *(a1 + 64) + v11 * *(a1 + 86);
        v13.i64[0] = *v12;
        v13.i32[2] = *(v12 + 8);
        v13.i32[3] = result.i32[3];
        *(*(*(a1 + 32) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 32) + 8) + 32), v13);
        *(*(*(a1 + 40) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 40) + 8) + 32), v13);
        result = v13;
        --v10;
      }

      while (v10);
    }
  }

  else if (a4)
  {
    v14 = a4;
    do
    {
      v15 = *a3++;
      *v16.i64 = sub_1AF279750(*(a1 + 84), (*(a1 + 64) + v15 * *(a1 + 86)), result, a6.f32[0], a7);
      *(*(*(a1 + 32) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 32) + 8) + 32), v16);
      v17 = *(*(a1 + 40) + 8);
      a6 = v17[2];
      result = vmaxnmq_f32(a6, v16);
      v17[2] = result;
      --v14;
    }

    while (v14);
  }

  if (++*(*(*(a1 + 48) + 8) + 24) > 0x1Fu || *(a1 + 112) - 1 <= a2)
  {
    v18 = *(*(a1 + 160) + 208);
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 24);
    *(v19 + 24) = v20 + 1;
    v21 = (v18 + 32 * v20);
    v22 = *(*(*(a1 + 32) + 8) + 32);
    v23 = *(*(*(a1 + 40) + 8) + 32);
    v22.i32[3] = 1.0;
    v23.i32[3] = 1.0;
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    *v21 = vmulq_f32(vaddq_f32(v22, v23), v24);
    v21[1] = vmulq_f32(vsubq_f32(v23, v22), v24);
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    *(*(*(a1 + 32) + 8) + 32) = vnegq_f32(result);
    *(*(*(a1 + 40) + 8) + 32) = result;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

BOOL sub_1AF282E70(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v6 = *(a3 + 248);
  v79 = *(a3 + 232);
  v80 = v6;
  v7 = *(a3 + 280);
  v81 = *(a3 + 264);
  v82 = v7;
  if ((*(a3 + 8) & 8) != 0)
  {
    v8 = *(a3 + 296) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = *(a3 + 223);
  v11 = *(a3 + 297);
  v73 = *(a3 + 64);
  v77 = *(a3 + 80);
  v12 = *(a3 + 96);
  v84 = 0;
  v83 = 0;
  v13 = a2 - a1;
  if (a2 > a1)
  {
    v14 = *(&v12 + 3);
    v9 = 1;
    v15 = a1;
    v76 = a2;
    do
    {
      v78[0] = v79;
      v78[1] = v80;
      v78[2] = v81;
      v78[3] = v82;
      if (v11)
      {
        v16 = (&v83 + 4);
        v17 = &v83;
      }

      else
      {
        v16 = &v83;
        v17 = (&v83 + 4);
      }

      sub_1AF282A64(v78, v15, v16, v17, &v84);
      v21 = v3 + (v83 * v5);
      if (v10 == 1)
      {
        v23.i64[0] = *v21;
        v22 = v3 + (HIDWORD(v83) * v5);
        v24.i64[0] = *v22;
        v23.i64[1] = *(v21 + 8);
        v24.i64[1] = *(v22 + 8);
        v25 = v3 + (v84 * v5);
        v26.i64[0] = *v25;
        v26.i64[1] = *(v25 + 8);
      }

      else
      {
        *v27.i64 = sub_1AF279750(v4, v21, v18, v19, v20);
        v75 = v27;
        *v30.i64 = sub_1AF279750(v4, (v3 + (HIDWORD(v83) * v5)), v27, v28, v29);
        v74 = v30;
        *v26.i64 = sub_1AF279750(v4, (v3 + (v84 * v5)), v30, v31, v32);
        v24 = v74;
        v23 = v75;
      }

      v33 = vsubq_f32(v24, v23);
      v34 = vsubq_f32(v26, v23);
      v35 = vnegq_f32(v33);
      v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v35), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
      v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      v38 = vmulq_f32(v36, v36);
      v38.f32[0] = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
      v39 = vdupq_lane_s32(*v38.f32, 0);
      v39.i32[3] = 0;
      v40 = vrsqrteq_f32(v39);
      v41 = vmulq_f32(v40, vrsqrtsq_f32(v39, vmulq_f32(v40, v40)));
      v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v38.f32[0] != 0.0)), 0x1FuLL));
      v42.i32[3] = 0;
      v44 = vbslq_s8(vcltzq_s32(v42), vmulq_f32(vmulq_f32(v41, vrsqrtsq_f32(v39, vmulq_f32(v41, v41))), v37), v37);
      v43 = vmulq_f32(v23, v44);
      v44.n128_f32[3] = -(v43.f32[2] + vaddv_f32(*v43.f32));
      v45 = vmulq_f32(v77, v44);
      v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
      if (v8)
      {
        if (v46 >= 0.0)
        {
          goto LABEL_25;
        }
      }

      else if (v46 == 0.0)
      {
        goto LABEL_25;
      }

      v47 = vmulq_f32(v73, v44);
      v48 = -vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL))) / v46;
      if (v48 >= 0.0 && v48 <= v14)
      {
        v50 = vmlaq_n_f32(v73, v77, v48);
        v51 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL), v34);
        v52 = vmulq_f32(v51, v51);
        v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
        v35.i64[0] = 0;
        v35.i32[2] = 0;
        if (fabsf(v52.f32[0]) >= 1.1755e-38)
        {
          v53 = vsubq_f32(v26, v50);
          v54 = vsubq_f32(v24, v50);
          v55 = vsubq_f32(v23, v50);
          v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
          v57 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
          v58 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v54)), v56, v53);
          v59 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
          v60 = vmlaq_f32(vmulq_f32(v59, vnegq_f32(v53)), v57, v55);
          v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v55)), v59, v54);
          v62 = vmulq_f32(v51, v58);
          v63 = vmulq_f32(v51, v60);
          v64 = vmulq_f32(v51, v61);
          v65 = vdupq_laneq_s32(v63, 2);
          v66 = vzip1q_s32(vzip1q_s32(v62, v64), v63);
          v67 = vtrn2q_s32(v62, v63);
          v67.i32[2] = v64.i32[1];
          v68 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v62, v64), v65), vaddq_f32(v66, v67)), vdupq_lane_s32(*v52.f32, 0));
          v69.i64[0] = 0xBF000000BF000000;
          v69.i64[1] = 0xBF000000BF000000;
          v70 = vabsq_f32(vaddq_f32(v68, v69));
          v69.i64[0] = 0x3F0000003F000000;
          v69.i64[1] = 0x3F0000003F000000;
          v35 = vcgeq_f32(v69, v70);
        }

        v35.i32[3] = v35.i32[2];
        if ((vminvq_u32(v35) & 0x80000000) != 0)
        {
          sub_1AF282124(a3, v15, 0, 1, 2, v48, v50, v44);
          if ((*(a3 + 8) & 0x100) != 0)
          {
            return v9;
          }
        }
      }

LABEL_25:
      v9 = ++v15 < v76;
      --v13;
    }

    while (v13);
  }

  return v9;
}

uint64_t sub_1AF28328C(unsigned int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v32[0] = a1;
  v32[1] = a2 - a1;
  v6 = *(a3 + 223) == 1;
  if ((*(a3 + 8) & 8) != 0)
  {
    v7 = *(a3 + 296) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 297);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18 = v9;
  v19 = *(a3 + 96);
  v28 = 0;
  v29 = &v27 + 1;
  v30 = 0x2020000000;
  v31 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF2833E0;
  v16[3] = &unk_1E7A7DCC0;
  v24 = v8;
  v25 = v6;
  v23 = v5;
  v26 = v4;
  v27 = v7 & 1;
  v21 = v3;
  v22 = a3;
  v20 = &v27 + 1;
  v11 = *(a3 + 232);
  v12 = *(a3 + 248);
  v13 = v32;
  v14 = 1;
  *v15 = *(a3 + 266);
  *&v15[14] = *(a3 + 280);
  sub_1AF1AA060(&v11, v16, *&v15[14]);
  _Block_object_dispose(&v27 + 1, 8);
  return 0;
}

void sub_1AF2833E0(float32x4_t *a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, float32x4_t a6, float32x4_t a7, int8x16_t a8)
{
  v12 = 0;
  v13 = (a4 - 2);
  v14 = a3 + 4;
  while (v13 != v12)
  {
    v15 = (a1[6].i8[12] ? a3 : v14);
    v16 = (a1[6].i8[12] ? v14 : a3);
    v17 = *v16;
    v18 = *v15;
    v19 = *(a3 + 4 * (v12 + 2));
    if (a1[6].i8[13] == 1)
    {
      v20 = a1[5].i64[1];
      v21 = a1[6].i32[2];
      v22 = v20 + (v21 * v17);
      v23.i64[0] = *v22;
      v23.i64[1] = *(v22 + 8);
      v24 = v20 + (v21 * v18);
      v25.i64[0] = *v24;
      v25.i64[1] = *(v24 + 8);
      v26 = v20 + (v21 * v19);
      a6.i64[0] = *v26;
      a6.i32[2] = *(v26 + 8);
      a6.i32[3] = 0;
    }

    else
    {
      *v27.i64 = sub_1AF279750(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v17)), a6, a7.f32[0], *a8.i32);
      v71 = v27;
      *v30.i64 = sub_1AF279750(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v18)), v27, v28, v29);
      v70 = v30;
      *a6.i64 = sub_1AF279750(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v19)), v30, v31, v32);
      v25 = v70;
      v23 = v71;
    }

    v33 = vsubq_f32(v25, v23);
    v34 = vsubq_f32(a6, v23);
    v35 = vnegq_f32(v33);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v35), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v37 = vmulq_f32(v36, v36);
    v37.f32[0] = v37.f32[1] + (v37.f32[2] + v37.f32[0]);
    v38 = vdupq_lane_s32(*v37.f32, 0);
    v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38.i32[3] = 0;
    v40 = vrsqrteq_f32(v38);
    v41 = vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)));
    v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37.f32[0] != 0.0)), 0x1FuLL));
    v42.i32[3] = 0;
    a8 = vbslq_s8(vcltzq_s32(v42), vmulq_f32(v39, vmulq_f32(v41, vrsqrtsq_f32(v38, vmulq_f32(v41, v41)))), v39);
    v43 = vmulq_f32(v23, a8);
    *&a8.i32[3] = -(v43.f32[2] + vaddv_f32(*v43.f32));
    v44 = a1[3];
    v45 = vmulq_f32(a8, v44);
    v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
    if (a1[6].i8[15] == 1)
    {
      if (v46 >= 0.0)
      {
        return;
      }
    }

    else if (v46 == 0.0)
    {
      return;
    }

    v47 = a1[2];
    v48 = vmulq_f32(a8, v47);
    v49 = -vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL))) / v46;
    if (v49 < 0.0 || v49 > a1[4].f32[3])
    {
      break;
    }

    a7 = vmlaq_n_f32(v47, v44, v49);
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL), v34);
    v52 = vmulq_f32(v51, v51);
    v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
    v35.i64[0] = 0;
    v35.i32[2] = 0;
    if (fabsf(v52.f32[0]) >= 1.1755e-38)
    {
      v53 = vsubq_f32(a6, a7);
      v54 = vsubq_f32(v25, a7);
      v55 = vsubq_f32(v23, a7);
      v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
      v57 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
      v58 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v54)), v56, v53);
      v59 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
      v60 = vmlaq_f32(vmulq_f32(v59, vnegq_f32(v53)), v57, v55);
      v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v55)), v59, v54);
      v62 = vmulq_f32(v51, v58);
      v63 = vmulq_f32(v51, v60);
      v64 = vmulq_f32(v51, v61);
      v65 = vdupq_laneq_s32(v63, 2);
      v66 = vzip1q_s32(vzip1q_s32(v62, v64), v63);
      v67 = vtrn2q_s32(v62, v63);
      v67.i32[2] = v64.i32[1];
      v68 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v62, v64), v65), vaddq_f32(v66, v67)), vdupq_lane_s32(*v52.f32, 0));
      v69.i64[0] = 0xBF000000BF000000;
      v69.i64[1] = 0xBF000000BF000000;
      a6 = vabsq_f32(vaddq_f32(v68, v69));
      v69.i64[0] = 0x3F0000003F000000;
      v69.i64[1] = 0x3F0000003F000000;
      v35 = vcgeq_f32(v69, a6);
    }

    v35.i32[3] = v35.i32[2];
    a6.i32[0] = vminvq_u32(v35);
    v14 += 4;
    ++v12;
    if (a6.i32[0] < 0)
    {
      sub_1AF282124(a1[6].i64[0], a2, 0, v12, v12 + 1, v49, a7, a8);
      if ((*(a1[6].i64[0] + 8) & 0x100) != 0)
      {
        *a5 = 1;
        *(*(a1[5].i64[0] + 8) + 24) = 1;
      }

      return;
    }
  }
}

BOOL sub_1AF283740(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 200);
  v74 = *(a3 + 220);
  v5 = *(a3 + 222);
  v6 = *(a3 + 248);
  v82 = *(a3 + 232);
  v83 = v6;
  v7 = *(a3 + 280);
  v84 = *(a3 + 264);
  v85 = v7;
  if ((*(a3 + 8) & 8) != 0)
  {
    v8 = *(a3 + 296) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v80 = 0;
  v9 = *(a3 + 223);
  v10 = *(a3 + 297);
  v75 = *(a3 + 64);
  v78 = *(a3 + 80);
  v11 = *(a3 + 96);
  v87 = 0;
  v86 = 0;
  v12 = a2 - a1;
  if (a2 > a1)
  {
    v13 = *(&v11 + 3);
    v80 = 1;
    v14 = a1;
    v79 = a2;
    v73 = v8;
    do
    {
      v81[0] = v82;
      v81[1] = v83;
      v81[2] = v84;
      v81[3] = v85;
      if (v10)
      {
        v15 = (&v86 + 4);
        v16 = &v86;
      }

      else
      {
        v15 = &v86;
        v16 = (&v86 + 4);
      }

      sub_1AF282A64(v81, v14, v15, v16, &v87);
      v20 = HIDWORD(v86);
      v21 = v87;
      if (((*(*(a3 + 320) + HIDWORD(v86)) & *(*(a3 + 320) + v86)) & *(*(a3 + 320) + v87)) != 0)
      {
        goto LABEL_10;
      }

      v22 = v4 + (v86 * v5);
      if (v9 == 1)
      {
        v23.i64[0] = *v22;
        v23.i64[1] = *(v22 + 8);
        v24 = v4 + (HIDWORD(v86) * v5);
        v25.i64[0] = *v24;
        v25.i64[1] = *(v24 + 8);
        v26 = v4 + v87 * v5;
        v27.i64[0] = *v26;
        v27.i64[1] = *(v26 + 8);
      }

      else
      {
        *v28.i64 = sub_1AF279750(v74, v22, v17, v18, v19);
        v77 = v28;
        *v31.i64 = sub_1AF279750(v74, (v4 + (v20 * v5)), v28, v29, v30);
        v76 = v31;
        v8 = v73;
        *v27.i64 = sub_1AF279750(v74, (v4 + v21 * v5), v31, v32, v33);
        v25 = v76;
        v23 = v77;
      }

      v34 = vsubq_f32(v25, v23);
      v35 = vsubq_f32(v27, v23);
      v36 = vnegq_f32(v34);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v36), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v39 = vmulq_f32(v37, v37);
      v39.f32[0] = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
      v40 = vdupq_lane_s32(*v39.f32, 0);
      v40.i32[3] = 0;
      v41 = vrsqrteq_f32(v40);
      v42 = vmulq_f32(v41, vrsqrtsq_f32(v40, vmulq_f32(v41, v41)));
      v43 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v39.f32[0] != 0.0)), 0x1FuLL));
      v43.i32[3] = 0;
      v45 = vbslq_s8(vcltzq_s32(v43), vmulq_f32(vmulq_f32(v42, vrsqrtsq_f32(v40, vmulq_f32(v42, v42))), v38), v38);
      v44 = vmulq_f32(v23, v45);
      v45.n128_f32[3] = -(v44.f32[2] + vaddv_f32(*v44.f32));
      v46 = vmulq_f32(v78, v45);
      v47 = vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)));
      if (v8)
      {
        if (v47 >= 0.0)
        {
          goto LABEL_10;
        }
      }

      else if (v47 == 0.0)
      {
        goto LABEL_10;
      }

      v48 = vmulq_f32(v75, v45);
      v49 = -vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL))) / v47;
      if (v49 >= 0.0 && v49 <= v13)
      {
        v51 = vmlaq_n_f32(v75, v78, v49);
        v52 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL), v36), vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35);
        v53 = vmulq_f32(v52, v52);
        v53.f32[0] = v53.f32[2] + vaddv_f32(*v53.f32);
        v36.i64[0] = 0;
        v36.i32[2] = 0;
        if (fabsf(v53.f32[0]) >= 1.1755e-38)
        {
          v54 = vsubq_f32(v27, v51);
          v55 = vsubq_f32(v25, v51);
          v56 = vsubq_f32(v23, v51);
          v57 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
          v58 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
          v59 = vmlaq_f32(vmulq_f32(v58, vnegq_f32(v55)), v57, v54);
          v60 = vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL);
          v61 = vmlaq_f32(vmulq_f32(v60, vnegq_f32(v54)), v58, v56);
          v62 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v56)), v60, v55);
          v63 = vmulq_f32(v52, v59);
          v64 = vmulq_f32(v52, v61);
          v65 = vmulq_f32(v52, v62);
          v66 = vdupq_laneq_s32(v64, 2);
          v67 = vzip1q_s32(vzip1q_s32(v63, v65), v64);
          v68 = vtrn2q_s32(v63, v64);
          v68.i32[2] = v65.i32[1];
          v69 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v63, v65), v66), vaddq_f32(v67, v68)), vdupq_lane_s32(*v53.f32, 0));
          v70.i64[0] = 0xBF000000BF000000;
          v70.i64[1] = 0xBF000000BF000000;
          v71 = vabsq_f32(vaddq_f32(v69, v70));
          v70.i64[0] = 0x3F0000003F000000;
          v70.i64[1] = 0x3F0000003F000000;
          v36 = vcgeq_f32(v70, v71);
        }

        v36.i32[3] = v36.i32[2];
        if ((vminvq_u32(v36) & 0x80000000) != 0)
        {
          sub_1AF282124(a3, v14, 0, 1, 2, v49, v51, v45);
          if ((*(a3 + 8) & 0x100) != 0)
          {
            return v80;
          }
        }
      }

LABEL_10:
      v80 = ++v14 < v79;
      --v12;
    }

    while (v12);
  }

  return v80;
}

uint64_t sub_1AF283B74(unsigned int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v32[0] = a1;
  v32[1] = a2 - a1;
  v6 = *(a3 + 223) == 1;
  if ((*(a3 + 8) & 8) != 0)
  {
    v7 = *(a3 + 296) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 297);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18 = v9;
  v19 = *(a3 + 96);
  v28 = 0;
  v29 = &v27 + 1;
  v30 = 0x2020000000;
  v31 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF283CC8;
  v16[3] = &unk_1E7A7DCC0;
  v24 = v8;
  v25 = v6;
  v21 = a3;
  v22 = v3;
  v23 = v5;
  v26 = v4;
  v27 = v7 & 1;
  v20 = &v27 + 1;
  v11 = *(a3 + 232);
  v12 = *(a3 + 248);
  v13 = v32;
  v14 = 1;
  *v15 = *(a3 + 266);
  *&v15[14] = *(a3 + 280);
  sub_1AF1AA060(&v11, v16, *&v15[14]);
  _Block_object_dispose(&v27 + 1, 8);
  return 0;
}

void sub_1AF283CC8(float32x4_t *a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, float32x4_t a6, float32x4_t a7, int8x16_t a8)
{
  v12 = 0;
  v13 = (a4 - 2);
  for (i = a3 + 4; v13 != v12; i += 4)
  {
    v15 = (a1[6].i8[12] ? a3 : i);
    v16 = (a1[6].i8[12] ? i : a3);
    v17 = *v16;
    v18 = *v15;
    v19 = *(a3 + 4 * (v12 + 2));
    if (((*(*(a1[5].i64[1] + 320) + v18) & *(*(a1[5].i64[1] + 320) + v17)) & *(*(a1[5].i64[1] + 320) + v19)) != 0)
    {
      break;
    }

    if (a1[6].i8[13] == 1)
    {
      v20 = a1[6].i64[0];
      v21 = a1[6].i32[2];
      v22 = v20 + (v21 * v17);
      v23.i64[0] = *v22;
      v23.i64[1] = *(v22 + 8);
      v24 = v20 + (v21 * v18);
      v25.i64[0] = *v24;
      v25.i64[1] = *(v24 + 8);
      v26 = v20 + (v21 * v19);
      a6.i64[0] = *v26;
      a6.i32[2] = *(v26 + 8);
      a6.i32[3] = 0;
    }

    else
    {
      *v27.i64 = sub_1AF279750(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v17)), a6, a7.f32[0], *a8.i32);
      v71 = v27;
      *v30.i64 = sub_1AF279750(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v18)), v27, v28, v29);
      v70 = v30;
      *a6.i64 = sub_1AF279750(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v19)), v30, v31, v32);
      v25 = v70;
      v23 = v71;
    }

    v33 = vsubq_f32(v25, v23);
    v34 = vsubq_f32(a6, v23);
    v35 = vnegq_f32(v33);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v35), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v37 = vmulq_f32(v36, v36);
    v37.f32[0] = v37.f32[1] + (v37.f32[2] + v37.f32[0]);
    v38 = vdupq_lane_s32(*v37.f32, 0);
    v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38.i32[3] = 0;
    v40 = vrsqrteq_f32(v38);
    v41 = vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)));
    v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37.f32[0] != 0.0)), 0x1FuLL));
    v42.i32[3] = 0;
    a8 = vbslq_s8(vcltzq_s32(v42), vmulq_f32(v39, vmulq_f32(v41, vrsqrtsq_f32(v38, vmulq_f32(v41, v41)))), v39);
    v43 = vmulq_f32(v23, a8);
    *&a8.i32[3] = -(v43.f32[2] + vaddv_f32(*v43.f32));
    v44 = a1[3];
    v45 = vmulq_f32(a8, v44);
    v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
    if (a1[6].i8[15] == 1)
    {
      if (v46 >= 0.0)
      {
        return;
      }
    }

    else if (v46 == 0.0)
    {
      return;
    }

    v47 = a1[2];
    v48 = vmulq_f32(a8, v47);
    v49 = -vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL))) / v46;
    if (v49 < 0.0 || v49 > a1[4].f32[3])
    {
      break;
    }

    a7 = vmlaq_n_f32(v47, v44, v49);
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL), v34);
    v52 = vmulq_f32(v51, v51);
    v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
    v35.i64[0] = 0;
    v35.i32[2] = 0;
    if (fabsf(v52.f32[0]) >= 1.1755e-38)
    {
      v53 = vsubq_f32(a6, a7);
      v54 = vsubq_f32(v25, a7);
      v55 = vsubq_f32(v23, a7);
      v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
      v57 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
      v58 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v54)), v56, v53);
      v59 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
      v60 = vmlaq_f32(vmulq_f32(v59, vnegq_f32(v53)), v57, v55);
      v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v55)), v59, v54);
      v62 = vmulq_f32(v51, v58);
      v63 = vmulq_f32(v51, v60);
      v64 = vmulq_f32(v51, v61);
      v65 = vdupq_laneq_s32(v63, 2);
      v66 = vzip1q_s32(vzip1q_s32(v62, v64), v63);
      v67 = vtrn2q_s32(v62, v63);
      v67.i32[2] = v64.i32[1];
      v68 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v62, v64), v65), vaddq_f32(v66, v67)), vdupq_lane_s32(*v52.f32, 0));
      v69.i64[0] = 0xBF000000BF000000;
      v69.i64[1] = 0xBF000000BF000000;
      a6 = vabsq_f32(vaddq_f32(v68, v69));
      v69.i64[0] = 0x3F0000003F000000;
      v69.i64[1] = 0x3F0000003F000000;
      v35 = vcgeq_f32(v69, a6);
    }

    v35.i32[3] = v35.i32[2];
    a6.i32[0] = vminvq_u32(v35);
    ++v12;
    if (a6.i32[0] < 0)
    {
      sub_1AF282124(a1[5].i64[1], a2, 0, v12, v12 + 1, v49, a7, a8);
      if ((*(a1[5].i64[1] + 8) & 0x100) != 0)
      {
        *a5 = 1;
        *(*(a1[5].i64[0] + 8) + 24) = 1;
      }

      return;
    }
  }
}

BOOL sub_1AF284048(unsigned int a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v12 = *(a3 + 200);
  v13 = *(a3 + 222);
  v14 = *(a3 + 232);
  if (*(a3 + 280) || *(a3 + 288) != 1)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2508(v15);
    }
  }

  v16 = a2 - a1;
  if (a2 <= a1)
  {
    return 0;
  }

  else
  {
    v17 = a1;
    v18 = 1;
    v19.i64[0] = 0xBF000000BF000000;
    v19.i64[1] = 0xBF000000BF000000;
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    v21 = 3 * a1;
    do
    {
      if (((*(*(a3 + 320) + *(v14 + 2 * (v21 + 1))) & *(*(a3 + 320) + *(v14 + 2 * v21))) & *(*(a3 + 320) + *(v14 + 2 * (v21 + 2)))) == 0)
      {
        v22 = v12 + *(v14 + 2 * v21) * v13;
        a7.i64[0] = *v22;
        a7.i32[2] = *(v22 + 8);
        v23 = v12 + *(v14 + 2 * (v21 + 1)) * v13;
        a8.i64[0] = *v23;
        a8.i32[2] = *(v23 + 8);
        v24 = v12 + *(v14 + 2 * (v21 + 2)) * v13;
        a9.i64[0] = *v24;
        a9.i32[2] = *(v24 + 8);
        v25 = vsubq_f32(a8, a7);
        v26 = vsubq_f32(a9, a7);
        v27 = vnegq_f32(v25);
        v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v27), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
        v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v30 = vmulq_f32(v28, v28);
        v30.f32[0] = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
        v31 = vdupq_lane_s32(*v30.f32, 0);
        v31.i32[3] = 0;
        v32 = vrsqrteq_f32(v31);
        v33 = vmulq_f32(v32, vrsqrtsq_f32(v31, vmulq_f32(v32, v32)));
        v34 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v30.f32[0] != 0.0)), 0x1FuLL));
        v34.i32[3] = 0;
        v36 = vbslq_s8(vcltzq_s32(v34), vmulq_f32(vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33))), v29), v29);
        v35 = vmulq_f32(a7, v36);
        v36.n128_f32[3] = -(v35.f32[2] + vaddv_f32(*v35.f32));
        v37 = *(a3 + 80);
        v38 = vmulq_f32(v37, v36);
        v39 = vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)));
        if (v39 < 0.0)
        {
          v40 = *(a3 + 64);
          v41 = vmulq_f32(v40, v36);
          v42 = -vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL))) / v39;
          if (v42 >= 0.0 && v42 <= *(a3 + 108))
          {
            v44 = vmlaq_n_f32(v40, v37, v42);
            v45 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v27), vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v26);
            v46 = vmulq_f32(v45, v45);
            v46.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
            v27.i64[0] = 0;
            v27.i32[2] = 0;
            if (fabsf(v46.f32[0]) >= 1.1755e-38)
            {
              v47 = vsubq_f32(a9, v44);
              v48 = vsubq_f32(a8, v44);
              v49 = vsubq_f32(a7, v44);
              v50 = vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL);
              v51 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
              v52 = vmlaq_f32(vmulq_f32(v51, vnegq_f32(v48)), v50, v47);
              v53 = vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL);
              v54 = vmlaq_f32(vmulq_f32(v53, vnegq_f32(v47)), v51, v49);
              v55 = vmlaq_f32(vmulq_f32(v50, vnegq_f32(v49)), v53, v48);
              v56 = vmulq_f32(v45, v52);
              a9 = vmulq_f32(v45, v54);
              v57 = vmulq_f32(v45, v55);
              v58 = vzip2q_s32(v56, v57);
              v59 = vzip1q_s32(vzip1q_s32(v56, v57), a9);
              v60 = vtrn2q_s32(v56, a9);
              v60.i32[2] = v57.i32[1];
              v61 = vaddq_f32(vzip1q_s32(v58, vdupq_laneq_s32(a9, 2)), vaddq_f32(v59, v60));
              a8 = vdupq_lane_s32(*v46.f32, 0);
              a7 = vabsq_f32(vaddq_f32(vdivq_f32(v61, a8), v19));
              v27 = vcgeq_f32(v20, a7);
            }

            v27.i32[3] = v27.i32[2];
            if ((vminvq_u32(v27) & 0x80000000) != 0)
            {
              sub_1AF282124(a3, v17, 0, 1, 2, v42, v44, v36);
              v20.i64[0] = 0x3F0000003F000000;
              v20.i64[1] = 0x3F0000003F000000;
              v19.i64[0] = 0xBF000000BF000000;
              v19.i64[1] = 0xBF000000BF000000;
              if ((*(a3 + 8) & 0x100) != 0)
              {
                break;
              }
            }
          }
        }
      }

      v18 = ++v17 < a2;
      v21 += 3;
      --v16;
    }

    while (v16);
  }

  return v18;
}

BOOL sub_1AF28435C(unsigned int a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v12 = *(a3 + 200);
  v13 = *(a3 + 222);
  v14 = *(a3 + 232);
  if (*(a3 + 280) || *(a3 + 288) != 1)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF25A0(v15);
    }
  }

  v16 = a2 - a1;
  if (a2 <= a1)
  {
    return 0;
  }

  else
  {
    v17 = a1;
    v18 = 1;
    v19 = 3 * a1;
    do
    {
      if (v14)
      {
        v20 = *(v14 + 2 * v19);
        v21 = *(v14 + 2 * (v19 + 1));
        v22 = *(v14 + 2 * (v19 + 2));
      }

      else
      {
        v20 = 3 * v17;
        v21 = 3 * v17 + 1;
        v22 = 3 * v17 + 2;
      }

      v23 = v12 + v20 * v13;
      a7.i64[0] = *v23;
      a7.i32[2] = *(v23 + 8);
      v24 = v12 + v21 * v13;
      a8.i64[0] = *v24;
      a8.i32[2] = *(v24 + 8);
      v25 = v12 + v22 * v13;
      a9.i64[0] = *v25;
      a9.i32[2] = *(v25 + 8);
      v26 = vsubq_f32(a8, a7);
      v27 = vsubq_f32(a9, a7);
      v28 = vnegq_f32(v26);
      v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), v28), v27, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
      v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
      v31 = vmulq_f32(v29, v29);
      v31.f32[0] = v31.f32[1] + (v31.f32[2] + v31.f32[0]);
      v32 = vdupq_lane_s32(*v31.f32, 0);
      v32.i32[3] = 0;
      v33 = vrsqrteq_f32(v32);
      v34 = vmulq_f32(v33, vrsqrtsq_f32(v32, vmulq_f32(v33, v33)));
      v35 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v31.f32[0] != 0.0)), 0x1FuLL));
      v35.i32[3] = 0;
      v37 = vbslq_s8(vcltzq_s32(v35), vmulq_f32(vmulq_f32(v34, vrsqrtsq_f32(v32, vmulq_f32(v34, v34))), v30), v30);
      v36 = vmulq_f32(a7, v37);
      v37.n128_f32[3] = -(v36.f32[2] + vaddv_f32(*v36.f32));
      v38 = *(a3 + 80);
      v39 = vmulq_f32(v38, v37);
      v40 = vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)));
      if (v40 < 0.0)
      {
        v41 = *(a3 + 64);
        v42 = vmulq_f32(v41, v37);
        v43 = -vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL))) / v40;
        if (v43 >= 0.0 && v43 <= *(a3 + 108))
        {
          v45 = vmlaq_n_f32(v41, v38, v43);
          v46 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL), v28), vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v27);
          v47 = vmulq_f32(v46, v46);
          v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
          v28.i64[0] = 0;
          v28.i32[2] = 0;
          if (fabsf(v47.f32[0]) >= 1.1755e-38)
          {
            v48 = vsubq_f32(a9, v45);
            v49 = vsubq_f32(a8, v45);
            v50 = vsubq_f32(a7, v45);
            v51 = vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL);
            v52 = vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL);
            v53 = vmlaq_f32(vmulq_f32(v52, vnegq_f32(v49)), v51, v48);
            v54 = vextq_s8(vextq_s8(v50, v50, 0xCuLL), v50, 8uLL);
            v55 = vmlaq_f32(vmulq_f32(v54, vnegq_f32(v48)), v52, v50);
            v56 = vmlaq_f32(vmulq_f32(v51, vnegq_f32(v50)), v54, v49);
            v57 = vmulq_f32(v46, v53);
            a9 = vmulq_f32(v46, v55);
            v58 = vmulq_f32(v46, v56);
            v59 = vzip2q_s32(v57, v58);
            v60 = vzip1q_s32(vzip1q_s32(v57, v58), a9);
            v61 = vtrn2q_s32(v57, a9);
            v61.i32[2] = v58.i32[1];
            v62 = vdivq_f32(vaddq_f32(vzip1q_s32(v59, vdupq_laneq_s32(a9, 2)), vaddq_f32(v60, v61)), vdupq_lane_s32(*v47.f32, 0));
            v61.i64[0] = 0xBF000000BF000000;
            v61.i64[1] = 0xBF000000BF000000;
            a7 = vabsq_f32(vaddq_f32(v62, v61));
            a8.i64[0] = 0x3F0000003F000000;
            a8.i64[1] = 0x3F0000003F000000;
            v28 = vcgeq_f32(a8, a7);
          }

          v28.i32[3] = v28.i32[2];
          if ((vminvq_u32(v28) & 0x80000000) != 0)
          {
            sub_1AF282124(a3, v17, 0, 1, 2, v43, v45, v37);
            if ((*(a3 + 8) & 0x100) != 0)
            {
              break;
            }
          }
        }
      }

      v18 = ++v17 < a2;
      v19 += 3;
      --v16;
    }

    while (v16);
  }

  return v18;
}

BOOL sub_1AF28466C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = sub_1AF1B1FE0(a2);
  v9 = sub_1AF1B2C1C(a2);
  v10 = sub_1AF1A4CE8(v9, 0);
  v11 = sub_1AF1A4C6C(v9, 0, 0);
  v78 = 0u;
  v79 = 0u;
  sub_1AF1AE1A8(v10, &v78);
  if (!v78)
  {
    return 0;
  }

  v12 = sub_1AF1C7E8C(a1);
  if (!v12)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2638(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v76 = 0u;
  v77 = 0u;
  sub_1AF1AE1A8(v12, &v76);
  if (BYTE7(v77) != 15 || BYTE8(v77) != 4)
  {
    v33 = sub_1AF0D5194();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF26B0();
    }

    return 0;
  }

  v37 = BYTE7(v79) == 1;
  v21 = *(a4 + 80);
  v73 = *(a4 + 64);
  v74 = v21;
  v75 = *(a4 + 96);
  v22 = sub_1AF1A3CCC(v9);
  if (v22 < 1)
  {
    return 0;
  }

  v24 = 0;
  v23.n128_u64[0] = vdup_n_s16(a3);
  v25 = 1;
  v26.i64[0] = 0x80000000800000;
  v26.i64[1] = 0x80000000800000;
  v36 = vnegq_f32(v26);
  v23.n128_u64[0] = vuzp1_s8(v23.n128_u64[0], v23.n128_u64[0]);
  v35 = v23;
  do
  {
    *(a4 + 192) = v24;
    v27 = sub_1AF1A3D1C(v9, v24, 0);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    sub_1AF1A767C(v27, v11, &v69);
    if (((v8 > 0) & ((*(a4 + 8) & 8) >> 3)) == 1)
    {
      v28 = sub_1AF1B2030(a2, v24 % v8);
      v29 = sub_1AF1A1224(v28);
      v30 = sub_1AF1A1378(v28);
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    if ((BYTE2(v71) & 0xFA) == 0)
    {
      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x2020000000;
      v68 = 0;
      v82[0] = 0;
      v82[1] = v82;
      v82[2] = 0x3020000000;
      v83 = v36;
      v80[0] = 0;
      v80[1] = v80;
      v80[2] = 0x3020000000;
      *&v31 = 0x80000000800000;
      *(&v31 + 1) = 0x80000000800000;
      v81 = v31;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v47 = v76;
      v48 = v77;
      v49 = v78;
      v50 = v79;
      v55 = v71;
      v56 = v72;
      v53 = v69;
      v54 = v70;
      v41 = v74;
      v42 = v75;
      v40 = v73;
      v39[2] = sub_1AF284A70;
      v39[3] = &unk_1E7A7DCE8;
      v60 = v30;
      v59 = v35.n128_u32[0];
      v61 = v37;
      v43 = v82;
      v44 = v80;
      v51 = &v85;
      v52 = &v84;
      v62 = v29;
      v57 = v24;
      v58 = a4;
      v45 = v67;
      v46 = &v63;
      v38[0] = v69;
      v38[1] = v70;
      v38[2] = v71;
      v38[3] = v72;
      sub_1AF1A9C98(v38, v39, v35);
      v32 = *(v64 + 24);
      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(v80, 8);
      _Block_object_dispose(v82, 8);
      _Block_object_dispose(v67, 8);
      if (v32)
      {
        break;
      }
    }

    v25 = ++v24 < v22;
  }

  while (v22 != v24);
  return v25;
}

void sub_1AF284A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1AF284A70(uint64_t a1, int a2, uint8x8_t a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, _BYTE *a13)
{
  v14 = a8;
  v17 = *(a1 + 276);
  v18 = v17 == 1;
  if (v17 == 1)
  {
    v19 = a11;
  }

  else
  {
    v19 = a10;
  }

  if (v18)
  {
    v20 = a10;
  }

  else
  {
    v20 = a11;
  }

  v21 = *(a1 + 112);
  v22 = *(a1 + 134);
  a3.i32[0] = *(v21 + (v19 * v22));
  v26 = vmovl_u8(a3);
  a4.i32[0] = *(v21 + (v20 * v22));
  a5.i32[0] = *(v21 + (v22 * a12));
  v23 = vmovl_u8(a5).u64[0];
  a6.i32[0] = *(a1 + 272);
  v24 = vmovl_u8(a6).u64[0];
  *v26.f32 = vorr_s8(vceq_s16(*v26.f32, v24), vceq_s16(*&vmovl_u8(a4), v24));
  v25 = vceq_s16(v23, v24);
  *v26.f32 = vorr_s8(*v26.f32, v25);
  *v26.f32 = vuzp1_s8(*v26.f32, *v26.f32);
  v26.i8[0] = vmaxv_u8(*v26.f32);
  if (v26.i8[0] < 0)
  {
    if (*(a1 + 277) == 1)
    {
      v28 = *(a1 + 144);
      v29 = *(a1 + 166);
      v30 = v28 + (v19 * v29);
      v31.i64[0] = *v30;
      v31.i64[1] = *(v30 + 8);
      v32 = v28 + (v20 * v29);
      v33.i64[0] = *v32;
      v33.i64[1] = *(v32 + 8);
      v34 = v28 + (v29 * a12);
      v35.i64[0] = *v34;
      v35.i64[1] = *(v34 + 8);
    }

    else
    {
      *v36.i64 = sub_1AF279750(*(a1 + 164), (*(a1 + 144) + v19 * *(a1 + 166)), v26, *v25.i32, *v23.i32);
      v57 = v36;
      *v39.i64 = sub_1AF279750(*(a1 + 164), (*(a1 + 144) + v20 * *(a1 + 166)), v36, v37, v38);
      v56 = v39;
      *v35.i64 = sub_1AF279750(*(a1 + 164), (*(a1 + 144) + *(a1 + 166) * a12), v39, v40, v41);
      v33 = v56;
      v31 = v57;
    }

    *(*(*(a1 + 80) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 80) + 8) + 32), v31);
    *(*(*(a1 + 80) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 80) + 8) + 32), v33);
    *(*(*(a1 + 80) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 80) + 8) + 32), v35);
    *(*(*(a1 + 88) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 88) + 8) + 32), v31);
    *(*(*(a1 + 88) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 88) + 8) + 32), v33);
    *(*(*(a1 + 88) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 88) + 8) + 32), v35);
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24))) = v31;
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24) + 1)) = v33;
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24) + 2)) = v35;
    *(*(a1 + 184) + 4 * (*(*(*(a1 + 96) + 8) + 24))++) = a2;
  }

  v42 = *(*(a1 + 96) + 8);
  v43 = *(v42 + 24);
  if (v43 > 0x1F || v14 - 3 == a9 && *(a1 + 208) - 1 == a2)
  {
    *(v42 + 24) = 0;
    v44 = *(*(a1 + 80) + 8);
    v45 = v44[2];
    v46 = *(*(*(a1 + 88) + 8) + 32);
    v47.i64[0] = 0x80000000800000;
    v47.i64[1] = 0x80000000800000;
    v44[2] = vnegq_f32(v47);
    *(*(*(a1 + 88) + 8) + 32) = v47;
    v48 = *(a1 + 32);
    v49 = *(a1 + 64);
    v50 = vmulq_f32(vsubq_f32(v45, v48), v49);
    v51 = vmulq_f32(vsubq_f32(v46, v48), v49);
    v50.i32[3] = 0;
    v51.i32[3] = 0;
    v52 = vminnmq_f32(v50, v51);
    v53 = vmaxnmq_f32(v50, v51);
    v54 = fmaxf(fmaxf(v52.f32[0], v52.f32[2]), v52.f32[1]);
    if (fminf(fminf(v53.f32[0], v53.f32[2]), v53.f32[1]) >= v54 && v54 < COERCE_FLOAT(HIDWORD(*(a1 + 64))) && sub_1AF282328(*(a1 + 176), *(a1 + 184), v43, v48, *(a1 + 48), v49, a8, *(a1 + 278), *(a1 + 264)))
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
      *a13 = 1;
    }
  }
}

uint64_t sub_1AF284DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1CA094(a1, *(a2 + 112));
  v5 = sub_1AF15B294(a1);
  v6 = sub_1AF1B75A0(*(a2 + 112));
  v7 = v6;
  if ((*(a2 + 8) & 0x80) != 0 || v6)
  {
    v8 = sub_1AF1C7594(v5);
    v9 = sub_1AF1C7594(a1);
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = (v4 + 32 * v14);
          if ((vminvq_u32(vcgezq_f32(v15[1])) & 0x80000000) != 0)
          {
            v93 = *v15;
            v95 = v15[1];
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
            *(a2 + 120) = ValueAtIndex;
            v17 = sub_1AF1B9B04(ValueAtIndex);
            v18 = *v17;
            v19 = *(v17 + 16);
            v20 = *(v17 + 32);
            v21 = *(v17 + 48);
            v22 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v21, v20, v93, 2), v19, *v93.f32, 1), *v17, v93.f32[0]);
            v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
            v24 = vmulq_f32(*v17, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
            *v23.i32 = vaddv_f32(*v24.f32);
            v25 = 1.0;
            if ((v24.f32[2] + *v23.i32) < 0.0)
            {
              v25 = -1.0;
            }

            v26 = vmulq_f32(v18, v18);
            v27 = vmulq_f32(v19, v19);
            v28 = vadd_f32(vzip1_s32(*v26.i8, *v27.i8), vzip2_s32(*v26.i8, *v27.i8));
            v29 = vextq_s8(v26, v26, 8uLL);
            *v29.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v29.f32, *&vextq_s8(v27, v27, 8uLL)), v28));
            v30 = vmulq_f32(v20, v20);
            v29.i32[2] = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
            v31 = vmulq_n_f32(v29, v25);
            v32 = vdivq_f32(v18, vdupq_lane_s32(*v31.f32, 0));
            v33 = vdivq_f32(v19, vdupq_lane_s32(*v31.f32, 1));
            v34 = vdivq_f32(v20, vdupq_laneq_s32(v31, 2));
            v35 = vmulq_f32(v95, v31);
            v36 = *(a2 + 16);
            v37 = *(a2 + 32);
            v38 = vsubq_f32(v22, v36);
            v39 = vzip1q_s32(vzip1q_s32(v32, v34), v33);
            v40 = vtrn2q_s32(v32, v33);
            v40.i32[2] = v34.i32[1];
            v41 = vzip1q_s32(vzip2q_s32(v32, v34), vdupq_laneq_s32(v33, 2));
            v42 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v40, *v38.f32, 1), v39, v38.f32[0]), v41, v38, 2);
            v43 = vaddq_f32(v35, v42);
            v44 = vsubq_f32(v42, v35);
            v35.i32[3] = v95.i32[3];
            v99.columns[1] = v32;
            v99.columns[2] = v33;
            v45 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v40, *v37.f32, 1), v39, v37.f32[0]), v41, v37, 2);
            v47 = vdivq_f32(v43, v45);
            v46 = vdivq_f32(v44, v45);
            v47.i32[3] = 0;
            v46.i32[3] = 0;
            v99.columns[3] = v34;
            v100 = v35;
            v48 = vminnmq_f32(v47, v46);
            v49 = vmaxnmq_f32(v47, v46);
            v50 = fmaxf(fmaxf(*v48.i32, *&v48.i32[2]), *&v48.i32[1]);
            v51 = fminf(fminf(v49.f32[0], v49.f32[2]), v49.f32[1]);
            if (v51 >= v50 && v51 >= 0.0 && v50 < *(a2 + 60))
            {
              LODWORD(v53) = *v48.i32 < *&v48.i32[1];
              if (*v48.i32 < *&v48.i32[1])
              {
                v48.i32[0] = v48.i32[1];
              }

              if (*v48.i32 < *&v48.i32[2])
              {
                v53 = 2;
              }

              else
              {
                v53 = v53;
              }

              if (v50 >= 0.0)
              {
                v54 = v50;
              }

              else
              {
                v54 = v51;
              }

              v55 = v99.columns[v53 + 1];
              v98 = v45;
              v56 = *(&v98 | (4 * v53));
              *v48.i32 = -v56;
              v47.i32[0] = 1.0;
              v57.i64[0] = 0x8000000080000000;
              v57.i64[1] = 0x8000000080000000;
              v48.i32[0] = vbslq_s8(v57, v47, v48).u32[0];
              if (v56 == 0.0)
              {
                v58 = -0.0;
              }

              else
              {
                v58 = *v48.i32;
              }

              if ((*(a2 + 8) & 0x80) != 0)
              {
                v89 = v58;
                v90 = v55;
                v92 = v37;
                v94 = v54;
                v96 = v36;
                v71 = sub_1AF2812F4();
                sub_1AF2813CC(v71, *(a2 + 112));
                v72 = *(v71 + 24);
                if (v72 != ValueAtIndex)
                {
                  if (v72)
                  {
                    CFRelease(v72);
                    *(v71 + 24) = 0;
                  }

                  if (ValueAtIndex)
                  {
                    v73 = CFRetain(ValueAtIndex);
                  }

                  else
                  {
                    v73 = 0;
                  }

                  *(v71 + 24) = v73;
                }

                v91 = vmulq_n_f32(v90, v89);
                v97 = vmlaq_n_f32(v96, v92, v94);
                v84 = *(a2 + 128);
                v85 = *(a2 + 144);
                v86 = *(a2 + 176);
                *(v71 + 144) = *(a2 + 160);
                *(v71 + 160) = v86;
                *(v71 + 112) = v84;
                *(v71 + 128) = v85;
                *(v71 + 96) = v97;
                v103 = __invert_f4(*(a2 + 128));
                v103.columns[3] = vmlaq_lane_f32(vmlaq_laneq_f32(v103.columns[3], v103.columns[2], v97, 2), v103.columns[1], *v97.f32, 1);
                v103.columns[2] = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v103.columns[2], v91, 2), v103.columns[1], *v91.f32, 1), v103.columns[0], v91.f32[0]);
                v103.columns[1] = vmulq_f32(v103.columns[2], v103.columns[2]);
                *&v87 = v103.columns[1].f32[2] + vaddv_f32(*v103.columns[1].f32);
                v103.columns[3] = vmlaq_n_f32(v103.columns[3], v103.columns[0], v97.f32[0]);
                *v103.columns[0].f32 = vrsqrte_f32(v87);
                *v103.columns[0].f32 = vmul_f32(*v103.columns[0].f32, vrsqrts_f32(v87, vmul_f32(*v103.columns[0].f32, *v103.columns[0].f32)));
                *(v71 + 64) = v103.columns[3];
                *(v71 + 80) = vmulq_n_f32(v103.columns[2], vmul_f32(*v103.columns[0].f32, vrsqrts_f32(v87, vmul_f32(*v103.columns[0].f32, *v103.columns[0].f32))).f32[0]);
                CFArrayAppendValue(*(a2 + 328), v71);
                CFRelease(v71);
                v83 = *(a2 + 8);
                if ((v83 & 0x200) != 0)
                {
                  *(a2 + 60) = v94;
                }

LABEL_43:
                v13 = 1;
                if ((v83 & 0x100) != 0)
                {
                  return v13 & 1;
                }

                goto LABEL_44;
              }

              v59 = 0;
              v60 = (v8 + (v14 << 6));
              v61 = v60[1];
              v62 = v60[2];
              v63 = v60[3];
              v101[0] = *v60;
              v101[1] = v61;
              v101[2] = v62;
              v101[3] = v63;
              memset(&v99, 0, sizeof(v99));
              do
              {
                v99.columns[v59] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v101[v59])), v19, *&v101[v59], 1), v20, v101[v59], 2), v21, v101[v59], 3);
                ++v59;
              }

              while (v59 != 4);
              v102 = __invert_f4(v99);
              v64 = *(a2 + 16);
              v65 = *(a2 + 32);
              v66 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v102.columns[3], v102.columns[2], v64, 2), v102.columns[1], *v64.f32, 1), v102.columns[0], v64.f32[0]);
              if (COERCE_FLOAT(HIDWORD(*(a2 + 48))) >= 1.0e20)
              {
                v74 = vaddq_f32(v64, v65);
                v75 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v102.columns[3], v102.columns[2], v74, 2), v102.columns[1], *v74.f32, 1), v102.columns[0], v74.f32[0]), v66);
                v69 = vmulq_f32(v75, v75);
                *&v76 = v69.f32[2] + vaddv_f32(*v69.f32);
                *v69.f32 = vrsqrte_f32(v76);
                *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v76, vmul_f32(*v69.f32, *v69.f32)));
                v70 = vmulq_n_f32(v75, vmul_f32(*v69.f32, vrsqrts_f32(v76, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
                v66.i32[3] = 1.0;
                v69.i32[0] = 2139095040;
              }

              else
              {
                v67 = vmlaq_laneq_f32(v64, v65, *(a2 + 48), 3);
                v68 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v102.columns[3], v102.columns[2], v67, 2), v102.columns[1], *v67.f32, 1), v102.columns[0], v67.f32[0]), v66);
                v69 = vmulq_f32(v68, v68);
                v66.i32[3] = 1.0;
                v69.f32[0] = sqrtf(v69.f32[2] + vaddv_f32(*v69.f32));
                v70 = vdivq_f32(v68, vdupq_lane_s32(*v69.f32, 0));
              }

              v77 = v70;
              v70.i32[3] = 0;
              __asm { FMOV            V3.4S, #1.0 }

              v82 = vdivq_f32(_Q3, v77);
              v82.i32[3] = v69.i32[0];
              *(a2 + 64) = v66;
              *(a2 + 80) = v70;
              *(a2 + 96) = v82;
              if (sub_1AF28466C(v5, v7, v14, a2))
              {
                v83 = *(a2 + 8);
                goto LABEL_43;
              }
            }
          }

LABEL_44:
          if (++v14 == v12)
          {
            return v13 & 1;
          }
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1AF2852EC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v234 = *MEMORY[0x1E69E9840];
  v2[14] = v4;
  v2[15] = 0;
  v2[24] = 0;
  v6 = sub_1AF1B9B04(v4);
  v7 = v6[2];
  v8 = v6[3];
  v210 = v6[1];
  v213 = *v6;
  *(v3 + 128) = *v6;
  *(v3 + 144) = v210;
  v207 = v8;
  v209 = v7;
  *(v3 + 160) = v7;
  *(v3 + 176) = v8;
  v9 = sub_1AF1B92C8(v5);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AF1C9420(v9);
    if (sub_1AF1CA3DC(v11))
    {

      return sub_1AF284DA0(v10, v3);
    }

    *v13.columns[0].i64 = sub_1AF1CA3E8(v10, v11, v213, v210, v209, v207);
  }

  else
  {
    v13.columns[1] = v210;
    v13.columns[0] = v213;
    v13.columns[3] = v207;
    v13.columns[2] = v209;
  }

  v228 = 0.0;
  v236 = __invert_f4(v13);
  v14 = *(v3 + 16);
  v15 = *(v3 + 32);
  v16 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v236.columns[3], v236.columns[2], v14, 2), v236.columns[1], *v14.f32, 1), v236.columns[0], v14.f32[0]);
  if (COERCE_FLOAT(HIDWORD(*(v3 + 48))) >= 1.0e20)
  {
    v21 = vaddq_f32(v14, v15);
    v22 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v236.columns[3], v236.columns[2], v21, 2), v236.columns[1], *v21.f32, 1), v236.columns[0], v21.f32[0]), v16);
    v19 = vmulq_f32(v22, v22);
    *&v23 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v19.f32 = vrsqrte_f32(v23);
    *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v23, vmul_f32(*v19.f32, *v19.f32)));
    v20 = vmulq_n_f32(v22, vmul_f32(*v19.f32, vrsqrts_f32(v23, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
    v16.i32[3] = 1.0;
    v19.i32[0] = 2139095040;
  }

  else
  {
    v17 = vmlaq_laneq_f32(v14, v15, *(v3 + 48), 3);
    v18 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v236.columns[3], v236.columns[2], v17, 2), v236.columns[1], *v17.f32, 1), v236.columns[0], v17.f32[0]), v16);
    v16.i32[3] = 1.0;
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    v20 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
  }

  v24 = v20;
  v20.i32[3] = 0;
  __asm { FMOV            V3.4S, #1.0 }

  v214 = _Q3;
  v29 = vdivq_f32(_Q3, v24);
  v29.i32[3] = v19.i32[0];
  *(v3 + 64) = v16;
  *(v3 + 80) = v20;
  *(v3 + 96) = v29;
  if ((*(v3 + 9) & 8) == 0)
  {
    v30 = sub_1AF1B75E8(v5);
    if (v30)
    {
      v31 = v30;
      if (sub_1AF19CBB4(v30) == 5)
      {
        if (sub_1AF19D3B0(v31))
        {
          v32.i32[0] = *(v3 + 88);
          v33.i32[0] = 1.0;
          v34.i64[0] = 0x8000000080000000;
          v34.i64[1] = 0x8000000080000000;
          v33.i32[0] = vbslq_s8(v34, v33, v32).u32[0];
          if (*v32.i32 == 0.0)
          {
            *v33.i32 = 0.0;
          }

          v35 = *v33.i32;
          v36 = sub_1AF19D540(v31);
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          sub_1AF19D5A0(v31, &v222);
          if (v222 > 2u)
          {
            if (v222 == 3)
            {
              v41 = *(v3 + 64);
              v38 = *(v3 + 80);
              v76 = vdivq_f32(v214, v223);
              v77 = vabsq_f32(v76);
              v77.i32[3] = 0;
              v78.i64[0] = 0x8000000080000000;
              v78.i64[1] = 0x8000000080000000;
              v79 = vorrq_s8(vandq_s8(v76, v78), vabsq_f32(vmaxnmq_f32(v77, xmmword_1AFE20A30)));
              v80 = v79.u32[0];
              v81.i32[0] = 0;
              v81.i64[1] = 0;
              v81.i32[1] = v79.i32[1];
              v82.i64[0] = 0;
              v82.i64[1] = v79.u32[2];
              v83 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, v82, v41, 2), v81.u64[0], *v41.f32, 1), v79.u32[0], v41.f32[0]);
              if (COERCE_FLOAT(HIDWORD(*(v3 + 96))) >= 1.0e20)
              {
                v88 = vaddq_f32(v41, v38);
                v89 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, v82, v88, 2), v81, *v88.f32, 1), v80, v88.f32[0]), v83);
                v86 = vmulq_f32(v89, v89);
                v88.f32[0] = v86.f32[2] + vaddv_f32(*v86.f32);
                *v86.f32 = vrsqrte_f32(v88.u32[0]);
                *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v88.u32[0], vmul_f32(*v86.f32, *v86.f32)));
                v87 = vmulq_n_f32(v89, vmul_f32(*v86.f32, vrsqrts_f32(v88.u32[0], vmul_f32(*v86.f32, *v86.f32))).f32[0]);
                v83.i32[3] = 1.0;
                v86.i32[0] = 2139095040;
              }

              else
              {
                v84 = vmlaq_laneq_f32(v41, v38, *(v3 + 96), 3);
                v85 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, v82, v84, 2), v81, *v84.f32, 1), v80, v84.f32[0]), v83);
                v83.i32[3] = 1.0;
                v86 = vmulq_f32(v85, v85);
                v86.f32[0] = sqrtf(v86.f32[2] + vaddv_f32(*v86.f32));
                v87 = vdivq_f32(v85, vdupq_lane_s32(*v86.f32, 0));
              }

              v90 = vmulq_f32(v83, v87);
              v91 = v90.f32[2] + vaddv_f32(*v90.f32);
              v92 = vmulq_f32(v83, v83);
              v93 = (v92.f32[2] + vaddv_f32(*v92.f32)) + -1.0;
              if (v93 <= 0.0 || v91 <= 0.0)
              {
                v94 = -(v93 - (v91 * v91));
                if (v94 >= 0.0)
                {
                  v95 = sqrtf(v94);
                  v96 = -v91 - v95;
                  v97 = v91 + v95;
                  if (v96 >= 0.0)
                  {
                    v97 = v96;
                  }

                  if (v97 <= v86.f32[0])
                  {
                    v87.i32[3] = 0;
                    v98 = vmlaq_n_f32(v83, v87, v97);
                    v99 = vsubq_f32(vmulq_f32(v223, v98), v41);
                    v100 = vmulq_f32(v99, v99);
                    v43 = sqrtf(v100.f32[2] + vaddv_f32(*v100.f32));
                    v228 = v43;
                    v101 = vdivq_f32(v98, v223);
                    v102 = vmulq_f32(v101, v101);
                    *&v103 = v102.f32[2] + vaddv_f32(*v102.f32);
                    *v102.f32 = vrsqrte_f32(v103);
                    *v102.f32 = vmul_f32(*v102.f32, vrsqrts_f32(v103, vmul_f32(*v102.f32, *v102.f32)));
                    v49 = vmulq_n_f32(v101, vmul_f32(*v102.f32, vrsqrts_f32(v103, vmul_f32(*v102.f32, *v102.f32))).f32[0]);
                    goto LABEL_70;
                  }
                }
              }
            }

            else if (v222 == 4)
            {
              v50 = v35 > 0.0 ? 1 : v36;
              if (v50 == 1)
              {
                v38 = *(v3 + 80);
                v51 = vmulq_f32(v38, xmmword_1AFE47470);
                v52 = vaddv_f32(vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL)));
                if (v52 != 0.0)
                {
                  v41 = *(v3 + 64);
                  v53 = vmulq_f32(v41, xmmword_1AFE47470);
                  v43 = -vaddv_f32(vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL))) / v52;
                  if (v43 >= 0.0 && v43 <= *(v3 + 108))
                  {
                    if (v224)
                    {
                      v55 = 0;
                      v56 = 0;
                      v49.n128_u64[0] = 0;
                      v49.n128_u32[3] = 0;
                      v49.n128_f32[2] = -v35;
                      v57 = vmlaq_n_f32(v41, v38, v43);
                      v58 = vmulq_f32(v57, xmmword_1AFE20650);
                      v59 = vmulq_f32(v57, xmmword_1AFE20160);
                      v60 = vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v59.i8), vzip2_s32(*v58.i8, *v59.i8)));
                      v61.i32[1] = v60.i32[1];
                      v61.i32[0] = -859915232;
                      v62 = vsub_f32(v61, v60);
                      v63 = -*&v62.i32[1];
                      v64 = vdup_lane_s32(v62, 0);
                      do
                      {
                        v65 = *(*(&v224 + 1) + 8 * v55);
                        if (v224 - 1 == v55)
                        {
                          v66 = 0;
                        }

                        else
                        {
                          v66 = v55 + 1;
                        }

                        v67 = *(*(&v224 + 1) + 8 * v66);
                        v68 = vsub_f32(v60, v65);
                        v69 = vsub_f32(v61, v65);
                        v70 = vsub_f32(v67, v65);
                        if (((-v70.f32[1] * v68.f32[0]) + (v70.f32[0] * v68.f32[1])) >= 0.0 == ((-v70.f32[1] * v69.f32[0]) + (v70.f32[0] * v69.f32[1])) < 0.0)
                        {
                          v71 = vsub_f32(v67, v60);
                          v72 = vsub_f32(v65, v60);
                          v73 = vcgez_f32(vmla_f32(vmul_n_f32(vzip1_s32(v72, v71), v63), vzip2_s32(v72, v71), v64));
                          v56 ^= veor_s8(v73, vdup_lane_s32(v73, 1)).u8[0];
                        }

                        ++v55;
                      }

                      while (v224 != v55);
                      v228 = v43;
                      if (v56)
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      v228 = v43;
                    }
                  }
                }
              }
            }
          }

          else if (v222 == 1)
          {
            if (v35 > 0.0)
            {
              v74 = 1;
            }

            else
            {
              v74 = v36;
            }

            if (v74 == 1)
            {
              v229 = 0u;
              v230 = xmmword_1AFE20180;
              v231 = xmmword_1AFE20150;
              v232.i64[0] = v223;
              v211 = *(v3 + 80);
              v215 = *(v3 + 64);
              v75 = sub_1AF286180(&v229, &v228, v215, v211, *(v3 + 96));
              v49.n128_u64[0] = 0;
              v49.n128_u32[3] = 0;
              v38 = v211;
              v41 = v215;
              if (v75)
              {
                v49.n128_f32[2] = -v35;
                v43 = v228;
                goto LABEL_70;
              }
            }
          }

          else if (v222 == 2)
          {
            v37 = v35 > 0.0 ? 1 : v36;
            if (v37 == 1)
            {
              v38 = *(v3 + 80);
              v39 = vmulq_f32(v38, xmmword_1AFE47460);
              v40 = vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)));
              if (v40 != 0.0)
              {
                v41 = *(v3 + 64);
                v42 = vmulq_f32(v41, xmmword_1AFE47460);
                v43 = -vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL))) / v40;
                if (v43 >= 0.0 && v43 <= *(v3 + 108))
                {
                  v45 = vmlaq_n_f32(v41, v38, v43);
                  v46 = vmulq_f32(v45, xmmword_1AFE20150);
                  v47 = vmulq_f32(v45, xmmword_1AFE20160);
                  v48 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v47, v47, 8uLL)), vadd_f32(vzip1_s32(*v46.i8, *v47.i8), vzip2_s32(*v46.i8, *v47.i8))), *&v223);
                  if (vaddv_f32(vmul_f32(v48, v48)) <= 1.0)
                  {
                    v49.n128_u64[0] = 0;
                    v49.n128_u32[3] = 0;
                    v49.n128_f32[2] = -v35;
                    v228 = v43;
LABEL_70:
                    sub_1AF282124(v3, 0, 0, 0, 0, v43, vmlaq_n_f32(v41, v38, v43), v49);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((*(v5 + 221) & 8) != 0)
  {
    v141 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(*(v3 + 160), *(v3 + 304), 2), *(v3 + 144), *(v3 + 304), 1), *(v3 + 128), COERCE_FLOAT(*(v3 + 304)));
    v142 = vmulq_f32(v141, v141);
    *&v143 = v142.f32[2] + vaddv_f32(*v142.f32);
    *v142.f32 = vrsqrte_f32(v143);
    *v142.f32 = vmul_f32(*v142.f32, vrsqrts_f32(v143, vmul_f32(*v142.f32, *v142.f32)));
    v144 = vmulq_n_f32(v141, vmul_f32(*v142.f32, vrsqrts_f32(v143, vmul_f32(*v142.f32, *v142.f32))).f32[0]);
    v145 = vmulq_f32(*(v3 + 176), v144);
    v146 = -(v145.f32[2] + vaddv_f32(*v145.f32));
    v147 = v144;
    v147.f32[3] = v146;
    v148 = vmulq_f32(*(v3 + 32), v147);
    v149 = vaddv_f32(vadd_f32(*v148.i8, *&vextq_s8(v148, v148, 8uLL)));
    if (v149 == 0.0)
    {
      return 0;
    }

    v150 = vmulq_f32(v147, *(v3 + 16));
    v151 = -vaddv_f32(vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL))) / v149;
    if (v151 < 0.0 || v151 > *(v3 + 60))
    {
      return 0;
    }

    v216 = v144;
    v228 = v151;
  }

  else
  {
    v222 = 0u;
    v223 = 0u;
    if ((sub_1AF1B7A3C(v5, &v222) & 1) == 0)
    {
      return 0;
    }

    v104 = *(v3 + 128);
    v105 = *(v3 + 144);
    v106 = *(v3 + 160);
    v107 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v3 + 176), v106, v222, 2), v105, *&v222, 1), v104, *&v222);
    v108 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL), vnegq_f32(v105)), v106, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL));
    v109 = vmulq_f32(v104, vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL));
    _NF = (v109.f32[2] + vaddv_f32(*v109.f32)) < 0.0;
    v110 = 1.0;
    if (_NF)
    {
      v110 = -1.0;
    }

    v111 = vmulq_f32(v104, v104);
    v112 = vmulq_f32(v105, v105);
    v113 = vadd_f32(vzip1_s32(*v111.i8, *v112.i8), vzip2_s32(*v111.i8, *v112.i8));
    v114 = vextq_s8(v111, v111, 8uLL);
    *v114.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v114.f32, *&vextq_s8(v112, v112, 8uLL)), v113));
    v115 = vmulq_f32(v106, v106);
    v114.i32[2] = sqrtf(v115.f32[2] + vaddv_f32(*v115.f32));
    v116 = vmulq_n_f32(v114, v110);
    v117 = vdivq_f32(v104, vdupq_lane_s32(*v116.f32, 0));
    v118 = vdivq_f32(v105, vdupq_lane_s32(*v116.f32, 1));
    v119 = vdivq_f32(v106, vdupq_laneq_s32(v116, 2));
    v133 = vmulq_f32(v223, v116);
    v120 = *(v3 + 32);
    v121 = vsubq_f32(v107, *(v3 + 16));
    v122 = vzip1q_s32(vzip1q_s32(v117, v119), v118);
    v123 = vtrn2q_s32(v117, v118);
    v123.i32[2] = v119.i32[1];
    v124 = vzip1q_s32(vzip2q_s32(v117, v119), vdupq_laneq_s32(v118, 2));
    v125 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v123, *v121.f32, 1), v122, v121.f32[0]), v124, v121, 2);
    v126 = vaddq_f32(v133, v125);
    v127 = vsubq_f32(v125, v133);
    v133.i32[3] = HIDWORD(v223);
    v230 = v117;
    v231 = v118;
    v128 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v123, *v120.f32, 1), v122, v120.f32[0]), v124, v120, 2);
    v130 = vdivq_f32(v126, v128);
    v129 = vdivq_f32(v127, v128);
    v130.i32[3] = 0;
    v129.i32[3] = 0;
    v232 = v119;
    v233 = v133;
    v131 = vminnmq_f32(v130, v129);
    v132 = vmaxnmq_f32(v130, v129);
    v133.f32[0] = fmaxf(fmaxf(v131.f32[0], v131.f32[2]), v131.f32[1]);
    v134 = fminf(fminf(v132.f32[0], v132.f32[2]), v132.f32[1]);
    if (v134 < v133.f32[0])
    {
      return 0;
    }

    _NF = v134 >= v228 && v133.f32[0] < *(v3 + 60);
    if (!_NF)
    {
      return 0;
    }

    LODWORD(v136) = v131.f32[0] < v131.f32[1];
    if (v131.f32[0] < v131.f32[1])
    {
      v131.f32[0] = v131.f32[1];
    }

    if (v131.f32[0] < v131.f32[2])
    {
      v136 = 2;
    }

    else
    {
      v136 = v136;
    }

    if (v133.f32[0] >= v228)
    {
      v137 = v133.f32[0];
    }

    else
    {
      v137 = v134;
    }

    v228 = v137;
    v138 = *(&v230 + v136);
    v139 = (&v218 | (4 * v136));
    v218 = v128;
    v133.f32[0] = -*v139;
    v130.i32[0] = 1.0;
    v140.i64[0] = 0x8000000080000000;
    v140.i64[1] = 0x8000000080000000;
    v133.i32[0] = vbslq_s8(v140, v130, v133).u32[0];
    if (*v139 == 0.0)
    {
      v133.f32[0] = -0.0;
    }

    v216 = vmulq_n_f32(v138, v133.f32[0]);
  }

  v154 = sub_1AF1B75A0(v5);
  if (!v154)
  {
    goto LABEL_157;
  }

  v155 = v154;
  v156 = sub_1AF1B2C1C(v154);
  if (!v156)
  {
    goto LABEL_157;
  }

  v157 = v156;
  v158 = sub_1AF1A3CCC(v156);
  if (v158 < 1)
  {
    goto LABEL_157;
  }

  v159 = v158;
  v160 = sub_1AF1A3D1C(v157, 0, 0);
  v161 = sub_1AF1A7034(v160);
  v162 = sub_1AF1A72E0(v161);
  v163 = 0;
  if (!v162)
  {
    v164 = 1;
    do
    {
      v165 = v164;
      if (v159 == v164)
      {
        break;
      }

      v166 = sub_1AF1A3D1C(v157, v164, 0);
      v167 = sub_1AF1A7034(v166);
      v168 = sub_1AF1A72E0(v167);
      v164 = v165 + 1;
    }

    while (!v168);
    v163 = v165 >= v159;
  }

  if (v163 || (*(v3 + 8) & 0x80) != 0 || (*(v5 + 221) & 8) != 0)
  {
LABEL_157:
    sub_1AF282244(v3, 0, 0, 0, 0, v228, vmlaq_n_f32(*(v3 + 16), *(v3 + 32), v228), v216);
    return 1;
  }

  v169 = sub_1AF1B1FE0(v155);
  v170 = sub_1AF1A4CE8(v157, 0);
  if (!v170)
  {
    return 0;
  }

  v171 = v170;
  v172 = sub_1AF1A4C6C(v157, 0, 0);
  v226 = 0u;
  v227 = 0u;
  sub_1AF1AE1A8(v171, &v226);
  if (!v226)
  {
    return 0;
  }

  v217 = v227;
  if (v227 <= 0xFFF)
  {
    v222 = v226;
    v223 = v227;
    sub_1AF27FFF8(&v222, &v229, *(v3 + 64), *(v3 + 80), *(v3 + 96), v173, v174);
    *(v3 + 320) = &v229;
  }

  v212 = BYTE7(v227);
  v175 = sub_1AF1A3CCC(v157);
  if (v175 < 1)
  {
    return 0;
  }

  v176 = v175;
  v177 = 0;
  v153 = 1;
  v206 = v169;
  v208 = v172;
  while (1)
  {
    *(v3 + 192) = v177;
    v178 = sub_1AF1A3D1C(v157, v177, 0);
    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    sub_1AF1A767C(v178, v172, &v222);
    if (sub_1AF170C98(v178) || !sub_1AF1A72E0(SBYTE2(v224)))
    {
      goto LABEL_155;
    }

    v179 = 0;
    if ((*(v3 + 8) & 8) != 0)
    {
      v180 = 0;
      if (v169 >= 1)
      {
        v181 = sub_1AF1B2030(v155, v177 % v169);
        v179 = sub_1AF1A1224(v181);
        v182 = v181;
        v172 = v208;
        v180 = sub_1AF1A1378(v182);
      }
    }

    else
    {
      v180 = 0;
    }

    v183 = v223;
    *(v3 + 232) = v222;
    *(v3 + 248) = v183;
    v184 = v225;
    *(v3 + 264) = v224;
    *(v3 + 280) = v184;
    v185 = v227;
    *(v3 + 200) = v226;
    v186 = v212 == 1;
    *(v3 + 296) = v179;
    *(v3 + 297) = v180 == 1;
    v187 = BYTE2(v224);
    if (BYTE2(v224))
    {
      v186 = 0;
    }

    *(v3 + 216) = v185;
    if (BYTE3(v224) != 2)
    {
      v186 = 0;
    }

    if (v180)
    {
      v186 = 0;
    }

    if (v217 <= 0xFFF)
    {
      _ZF = v187 == 4;
      v188 = sub_1AF283740;
      if (_ZF)
      {
        v188 = sub_1AF283B74;
      }

      if (v186)
      {
        v188 = sub_1AF284048;
        if (((*(v3 + 8) & 8) == 0) | v179 & 1)
        {
          v188 = sub_1AF283740;
        }
      }

      (v188)(0, v223, v3);
      goto LABEL_155;
    }

    if (v187 == 4)
    {
      v189 = sub_1AF28328C;
    }

    else
    {
      v189 = sub_1AF282E70;
    }

    if (v186)
    {
      if (((*(v3 + 8) & 8) == 0) | v179 & 1)
      {
        v189 = sub_1AF282E70;
      }

      else
      {
        v189 = sub_1AF28435C;
      }
    }

    if (v223 < 0x41)
    {
      v205 = (v189)(0);
      v172 = v208;
      if (v205)
      {
        return v153;
      }

      goto LABEL_155;
    }

    v221 = 0;
    v220[0] = v222;
    v220[1] = v223;
    v220[2] = v224;
    v220[3] = v225;
    v219[0] = v226;
    v219[1] = v227;
    v190 = sub_1AF2825F4(v178, v220, v219, &v221);
    if (v221)
    {
      break;
    }

LABEL_153:
    v169 = v206;
    v172 = v208;
LABEL_155:
    v153 = ++v177 < v176;
    if (v177 == v176)
    {
      return v153;
    }
  }

  v191 = v190;
  v192 = 0;
  v193 = v191 + 1;
  v194 = 32 * v221;
  while (1)
  {
    v195 = v193[-1];
    v196 = *(v3 + 64);
    v197 = *(v3 + 96);
    v198 = vmulq_f32(vsubq_f32(vsubq_f32(v195, *v193), v196), v197);
    v199 = vmulq_f32(vsubq_f32(vaddq_f32(v195, *v193), v196), v197);
    v198.i32[3] = 0;
    v199.i32[3] = 0;
    v200 = vminnmq_f32(v198, v199);
    v201 = vmaxnmq_f32(v198, v199);
    v202 = fmaxf(fmaxf(v200.f32[0], v200.f32[2]), v200.f32[1]);
    v203 = v192 + 32;
    v204 = fminf(fminf(v201.f32[0], v201.f32[2]), v201.f32[1]) >= v202 && v202 < COERCE_FLOAT(HIDWORD(*(v3 + 96)));
    if (v204 && v189())
    {
      return v153;
    }

    v193 += 2;
    v192 = v203;
    if (v194 == v203)
    {
      goto LABEL_153;
    }
  }
}

uint64_t sub_1AF286180(uint64_t a1, float *a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  v5 = *(a1 + 16);
  v6 = vmulq_f32(v5, *a1);
  v7 = -(v6.f32[2] + vaddv_f32(*v6.f32));
  v8 = v5;
  v8.f32[3] = v7;
  v9 = vmulq_f32(a4, v8);
  v10 = vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)));
  if (v10 == 0.0)
  {
    return 0;
  }

  v11 = vmulq_f32(a3, v8);
  v12 = -vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL))) / v10;
  if (v12 < 0.0 || v12 > a5.n128_f32[3])
  {
    return 0;
  }

  v14 = vmlaq_n_f32(a3, a4, v12);
  v15 = *(a1 + 32);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v5)), v15, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v17 = vsubq_f32(v14, *a1);
  v18 = vmulq_f32(v15, v17);
  v19 = vmulq_f32(v17, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v20 = vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8)));
  v21 = *(a1 + 48);
  v22 = vcgt_f32(vneg_f32(v21), v20);
  if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v23 = vcgt_f32(v20, v21);
  if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return 1;
}

uint64_t sub_1AF286274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 4);
  if ((v5 & 0x1000) != 0)
  {
    if (sub_1AF1BC2F0(a2))
    {
      return 1;
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 4);
  }

  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  if (sub_1AF1B7348(a2))
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 4);
LABEL_7:
  if ((~v5 & 0x30) == 0)
  {
    if (sub_1AF1B8A30(a2) == 0.0)
    {
      return 1;
    }

    v4 = *(a1 + 32);
  }

  v7 = *v4;
  if (sub_1AF1BAF14(a2) & v7) != 0 && (v8 = sub_1AF1BC2B8(a2), v9 = *(a1 + 32), ((*(v9 + 10) >> v8)) && (*(a2 + 220) & 8) != 0 && sub_1AF2852EC(a2, v9) && (*(*(a1 + 32) + 8) & 0x100) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF286358(__n128 *a1, float32x4_t *a2, CFDictionaryRef theDict)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFD68(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF26E4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  memset(__src, 0, 448);
  sub_1AF281CB8(__src, theDict);
  __src[19] = sub_1AF1CFC48(a1);
  *(&__src[20] + 1) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v22 = *a2;
  v23 = vsubq_f32(a2[1], *a2);
  if ((BYTE8(__src[0]) & 2) != 0)
  {
    v22.i32[3] = 1.0;
    v26 = vmulq_f32(v23, v23);
    v26.f32[0] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
    v25 = vdivq_f32(v23, vdupq_lane_s32(*v26.f32, 0));
  }

  else
  {
    v26 = vmulq_f32(v23, v23);
    *&v24 = v26.f32[2] + vaddv_f32(*v26.f32);
    *v26.f32 = vrsqrte_f32(v24);
    *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v24, vmul_f32(*v26.f32, *v26.f32)));
    v25 = vmulq_n_f32(v23, vmul_f32(*v26.f32, vrsqrts_f32(v24, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
    v22.i32[3] = 1.0;
    v26.i32[0] = 2139095040;
  }

  v27 = v25;
  v25.i32[3] = 0;
  __asm { FMOV            V4.4S, #1.0 }

  v78 = _Q4;
  v33 = vdivq_f32(_Q4, v27);
  v33.i32[3] = v26.i32[0];
  __src[1] = v22;
  __src[2] = v25;
  __src[3] = v33;
  v34 = sub_1AF1CF7E8(a1);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kHitTestRootNode");
  }

  else
  {
    Value = 0;
  }

  if (!Value)
  {
    Value = v34;
  }

  if ((BYTE8(__src[0]) & 1) != 0 && Value == v34)
  {
    v89.n128_u64[0] = 0;
    v87 = 0u;
    v88 = 0u;
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = sub_1AF286A88;
    v98[3] = &unk_1E7A7DD28;
    v98[4] = __src;
    sub_1AF1271CC(v98, &v87);
    *&v87 = *&__src[0];
    BYTE12(v88) = (WORD4(__src[0]) & 0x200) != 0;
    if ((BYTE8(__src[0]) & 0x20) != 0)
    {
      DWORD1(v88) |= 2u;
    }

    if ((BYTE8(__src[0]) & 0x40) != 0)
    {
      DWORD1(v88) |= 0x20u;
    }

    DWORD2(v88) = BYTE10(__src[0]);
    v36 = sub_1AF1D01D0(a1);
    sub_1AF127D6C(v36, &v87);
    if ((WORD4(__src[0]) & 0x1000) != 0)
    {
      Count = CFArrayGetCount(*(&__src[20] + 1));
      if (Count >= 1)
      {
        v38 = Count;
        v39 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(&__src[20] + 1), v39);
          v41 = sub_1AF28133C(ValueAtIndex);
          if (v41 && sub_1AF1BC2FC(v41))
          {
            CFArrayRemoveValueAtIndex(*(&__src[20] + 1), v39);
            --v38;
          }

          else
          {
            ++v39;
          }
        }

        while (v39 < v38);
      }
    }
  }

  else if (BYTE8(__src[0]))
  {
    *&v87 = MEMORY[0x1E69E9820];
    *(&v87 + 1) = 3221225472;
    *&v88 = sub_1AF286274;
    *(&v88 + 1) = &unk_1E7A7DD08;
    v89.n128_u64[0] = __src;
    sub_1AF1B94AC(Value, &v87);
  }

  else
  {
    sub_1AF2852EC(Value, __src);
  }

  v42 = CFArrayGetCount(*(&__src[20] + 1));
  if (v42 < 1)
  {
    goto LABEL_38;
  }

  v43 = v42;
  for (i = 0; i != v43; ++i)
  {
    v45 = CFArrayGetValueAtIndex(*(&__src[20] + 1), i);
    v46 = vsubq_f32(*sub_1AF281524(v45), *a2);
    v47 = vmulq_f32(v46, v46);
    v45[44] = v47.f32[2] + vaddv_f32(*v47.f32);
  }

  v48 = WORD4(__src[0]);
  if (v43 != 1 && (BYTE8(__src[0]) & 4) != 0)
  {
    v100.location = 0;
    v100.length = v43;
    CFArraySortValues(*(&__src[20] + 1), v100, sub_1AF286AF0, 0);
LABEL_38:
    v48 = WORD4(__src[0]);
  }

  if ((v48 & 0x400) != 0 && *&__src[27])
  {
    v97 = 0uLL;
    sub_1AF163FFC(&v97, 1.0, 0.0, 0.0, 1.0);
    v96 = 0uLL;
    sub_1AF163FFC(&v96, 0.0, 1.0, 0.0, 1.0);
    v95[1] = 0;
    v95[0] = 0;
    sub_1AF163FFC(v95, 0.0, 0.0, 1.0, 1.0);
    sub_1AF0FDC90(*&__src[27], 5.0);
    v49 = CFArrayGetCount(*(&__src[20] + 1));
    if (v49 >= 1)
    {
      v50 = v49;
      for (j = 0; j != v50; ++j)
      {
        v53 = CFArrayGetValueAtIndex(*(&__src[20] + 1), j);
        v91 = 0;
        v92 = &v91;
        v93 = 0x2020000000;
        v94 = 1065353216;
        v54 = v53[1].n128_i64[0];
        if (v54)
        {
          v55 = sub_1AF1B75A0(v54);
          if (v55)
          {
            v56 = sub_1AF1B2C1C(v55);
            v57 = v56;
            if (v56)
            {
              v58 = sub_1AF1A4C6C(v56, 0, 0);
              v59 = sub_1AF1A4CE8(v57, 0);
              if (v59)
              {
                v60 = sub_1AF1A3D1C(v57, v53[2].n128_i64[0], 0);
                if (v60)
                {
                  v89 = 0u;
                  v90 = 0u;
                  v87 = 0u;
                  v88 = 0u;
                  sub_1AF1A767C(v60, v58, &v87);
                  v86[0] = v53[2].n128_u64[1];
                  v86[1] = 1;
                  *(&v88 + 1) = v86;
                  v89.n128_u16[0] = 1;
                  v80[0] = MEMORY[0x1E69E9820];
                  v80[1] = 3221225472;
                  v80[2] = sub_1AF286B08;
                  v80[3] = &unk_1E7A7DD50;
                  v84 = v59;
                  v83 = &v91;
                  memcpy(v81, __src, sizeof(v81));
                  v85 = v53;
                  v82 = v97;
                  v79[0] = v87;
                  v79[1] = v88;
                  v79[2] = v89;
                  v79[3] = v90;
                  sub_1AF1AA060(v79, v80, v89);
                }
              }
            }
          }
        }

        v61 = v53[6];
        v61.n128_u32[3] = *(v92 + 6);
        sub_1AF0FE168(*&__src[27], 0, &v96, v52, v61);
        v62 = v53[7];
        v63 = v53[8];
        v64 = v53[9];
        v65 = vmulq_f32(v62, v62);
        v66 = vmulq_f32(v63, v63);
        v67 = vmulq_f32(v64, v64);
        v68 = vzip2q_s32(v65, v67);
        v69 = vzip1q_s32(vzip1q_s32(v65, v67), v66);
        v70 = vtrn2q_s32(v65, v66);
        v70.i32[2] = v67.i32[1];
        v71 = vaddq_f32(vzip1q_s32(v68, vdupq_laneq_s32(v66, 2)), vaddq_f32(v69, v70));
        v72 = vceqzq_f32(v71);
        v72.i32[3] = 0;
        v73 = vbslq_s8(vcltzq_s32(v72), v71, vdivq_f32(v78, v71));
        v74 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(vmulq_laneq_f32(v64, v73, 2), v53[5], 2), vmulq_lane_f32(v63, *v73.f32, 1), v53[5].n128_u64[0], 1), vmulq_n_f32(v62, v73.f32[0]), COERCE_FLOAT(*&v53[5]));
        v75 = vmulq_f32(v74, v74);
        v73.f32[0] = v75.f32[2] + vaddv_f32(*v75.f32);
        *v75.f32 = vrsqrte_f32(v73.u32[0]);
        *v75.f32 = vmul_f32(*v75.f32, vrsqrts_f32(v73.u32[0], vmul_f32(*v75.f32, *v75.f32)));
        sub_1AF0FDFAC(*&__src[27], 0, v95, v76, v53[6], vaddq_f32(v53[6], vmulq_n_f32(v74, vmul_f32(*v75.f32, vrsqrts_f32(v73.u32[0], vmul_f32(*v75.f32, *v75.f32))).f32[0])));
        _Block_object_dispose(&v91, 8);
      }
    }

    sub_1AF0FDCFC(*&__src[27]);
  }

  return *(&__src[20] + 1);
}

uint64_t sub_1AF286A88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v5 = result;
    for (i = 0; i < a3; ++i)
    {
      result = sub_1AF2852EC(*(a2 + 8 * i), *(v5 + 32));
      if (result && (*(*(v5 + 32) + 8) & 0x100) != 0)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_1AF286AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v3 = *(a2 + 176);
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

void sub_1AF286B08(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v27.f32[-4 * v7];
  if (v9)
  {
    v11 = 0uLL;
    v12 = v7;
    v13 = &v27 - v7;
    do
    {
      v27 = v11;
      v14 = *a3++;
      *v15.i64 = sub_1AF1AF084(*(a1 + 504), v14, v8, v9);
      v16 = v27;
      *v13++ = v15;
      v11 = vaddq_f32(v16, v15);
      --v12;
    }

    while (v12);
    v15.f32[0] = a4;
    v17 = vdivq_f32(v11, vdupq_lane_s32(*v15.f32, 0));
    v18 = 3.4028e38;
    v19 = v7;
    v20 = &v27 - v7;
    do
    {
      v21 = *v20++;
      v22 = vsubq_f32(v21, v17);
      v23 = vmulq_f32(v22, v22);
      v18 = fminf(v18, sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)));
      --v19;
    }

    while (v19);
    *(*(*(a1 + 496) + 8) + 24) = v18 * 0.5;
    do
    {
      v24 = v10[v19];
      v25 = v19 + 1;
      if (v7 - 1 == v19)
      {
        v26 = 0;
      }

      else
      {
        v26 = v19 + 1;
      }

      sub_1AF0FE080(*(a1 + 464), (*(a1 + 512) + 112), (a1 + 480), 0, v24, v10[v26]);
      v19 = v25;
    }

    while (v7 != v25);
  }

  else
  {
    *(*(*(a1 + 496) + 8) + 24) = 2130706431;
  }
}

uint64_t sub_1AF286C78(__n128 *a1, uint64_t a2, const __CFDictionary *a3, double a4, __n128 a5, __n128 a6)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a1 || (v41 = a4, v43 = a5, v9 = sub_1AF0D5194(), v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT), a4 = v41, a5 = v43, !v10))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_12:
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    return 0;
  }

  sub_1AFDDFD68(v9, v11, v12, v13, v14, v15, v16, v17);
  a4 = v41;
  a5 = v43;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_4:
  __asm { FMOV            V3.4S, #1.0 }

  *&_Q3 = a4;
  a6.n128_f64[0] = a4;
  v46 = a6;
  v47 = _Q3;
  v23 = sub_1AF281AF8(&v46, 2, a2, a1, &v57, a5);
  v45[0] = v57;
  v45[1] = v58;
  if (!v23)
  {
    return 0;
  }

  v42 = v58;
  v44 = v57;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kHitTestClipToZRange");
    if (Value)
    {
      if (!CFEqual(*MEMORY[0x1E695E4D0], Value))
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        if (sub_1AF27F12C(a2, &v46))
        {
          if (v46.n128_u8[0])
          {
            v35 = sub_1AF1B9AB4(a2);
            v36 = vsubq_f32(v42, v44);
            v37 = vmulq_f32(v36, v36);
            *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
            *v37.f32 = vrsqrte_f32(v38);
            *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
            v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
            v40 = vmulq_f32(vsubq_f32(v44, v35), v39);
            v40.f32[0] = v40.f32[2] + vaddv_f32(*v40.f32);
            v25 = vmlsq_lane_f32(v44, v39, *v40.f32, 0);
          }

          else
          {
            v25 = *(sub_1AF1B9B04(a2) + 48);
          }

          v45[0] = v25;
          return sub_1AF286358(a1, v45, a3);
        }

        return 0;
      }
    }
  }

  return sub_1AF286358(a1, v45, a3);
}

uint64_t sub_1AF286E6C(const void *a1, float32x4_t a2, float32x4_t a3)
{
  v4 = sub_1AF2812F4();
  v5 = sub_1AF1B9B04(a1);
  v19 = *v5;
  *(v4 + 112) = v5->columns[0];
  *(v4 + 128) = v19.columns[1];
  *(v4 + 144) = v19.columns[2];
  *(v4 + 160) = v19.columns[3];
  v20 = __invert_f4(v19);
  v15 = v20.columns[0];
  v16 = v20.columns[1];
  v14 = v20.columns[2];
  *(v4 + 96) = a2;
  *(v4 + 64) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v20.columns[3], v20.columns[2], a2, 2), v20.columns[1], *a2.f32, 1), v20.columns[0], a2.f32[0]);
  sub_1AF2813CC(v4, a1);
  v6 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v14, a3, 2), v16, *a3.f32, 1), v15, a3.f32[0]);
  v7 = vmulq_f32(a3, a3);
  v8 = vmulq_f32(v6, v6);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vdupq_lane_s32(*v8.f32, 0);
  v9.i32[3] = 0;
  v10 = vrsqrteq_f32(v9);
  v11 = vmulq_f32(v10, vrsqrtsq_f32(v9, vmulq_f32(v10, v10)));
  v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v8.f32[0] != 0.0)), 0x1FuLL));
  v12.i32[3] = 0;
  *(v4 + 80) = vbslq_s8(vcltzq_s32(v12), vmulq_f32(v6, vmulq_n_f32(vmulq_f32(v11, vrsqrtsq_f32(v9, vmulq_f32(v11, v11))), sqrtf(v7.f32[2] + vaddv_f32(*v7.f32)))), v6);
  return v4;
}

uint64_t sub_1AF286F84(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  nullsub_106();
  v7 = v6;
  v8 = sub_1AF1DA1C8(a1);
  _Q4 = *v8;
  _S3 = *(a2 + 8);
  __asm { FMLA            S0, S3, V4.S[2] }

  if (_S0 == 0.0)
  {
    return 0;
  }

  _Q4 = *v7;
  __asm { FMLA            S1, S3, V4.S[2] }

  v18 = -(*(a2 + 12) + _S1) / _S0;
  if (v18 < 0.0)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = vmlaq_n_f32(*v7, *v8, v18);
  }

  return 1;
}

BOOL sub_1AF28702C(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  nullsub_106();
  v7 = v6;
  v8 = sub_1AF1DA1C8(a1);
  _Q4 = *v8;
  _S3 = *(a2 + 8);
  __asm { FMLA            S0, S3, V4.S[2] }

  if (a3 && _S0 != 0.0)
  {
    _Q4 = *v7;
    __asm { FMLA            S1, S3, V4.S[2] }

    *a3 = vmlaq_n_f32(*v7, *v8, -(*(a2 + 12) + _S1) / _S0);
  }

  return _S0 != 0.0;
}

void sub_1AF2870C8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t sub_1AF287120()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6587E0 = result;
  return result;
}

uint64_t sub_1AF287148()
{
  if (qword_1EB6587E8 != -1)
  {
    sub_1AFDF27A0();
  }

  v0 = sub_1AF0D160C(qword_1EB6587E0, 0x28uLL);
  if (!v0)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF27B4(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  return v0;
}

uint64_t sub_1AF2871B8(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF282C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1A7034(a1))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF28A4();
    }

    return 0;
  }

  else
  {
    v13 = sub_1AF287148();
    v14 = sub_1AF1A73C0(a1, (v13 + 40));
    *(v13 + 16) = CFRetain(a1);
    *(v13 + 48) = sub_1AF1A7674(a1);
    *(v13 + 32) = CFDataCreateMutableCopy(0, 3 * a2 * *(v13 + 40), v14);
  }

  return v13;
}

void sub_1AF28728C(uint64_t a1, unsigned int a2)
{
  v3 = 1;
  if (a2 > 0xFF)
  {
    v3 = 2;
  }

  if (HIWORD(a2))
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (v4 > *(a1 + 40))
  {
    v6 = CFDataGetLength(*(a1 + 32)) / *(a1 + 40);
    v7 = 2;
    if (!HIWORD(a2))
    {
      v7 = a2 > 0xFF;
    }

    v8 = v6 << v7;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v8);
    v10 = *(a1 + 40);
    switch(v10)
    {
      case 4:
        CFDataGetBytePtr(*(a1 + 32));
        v18 = sub_1AF0D5194();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 2:
        BytePtr = CFDataGetBytePtr(*(a1 + 32));
        if (a2 >= 0x10000)
        {
          v15 = BytePtr;
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v17 = *v15;
              v15 += 2;
              *MutableBytePtr = v17;
              MutableBytePtr += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v20 = sub_1AF0D5194();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 1:
        v11 = CFDataGetBytePtr(*(a1 + 32));
        if (v4 == 4)
        {
          v21 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v22 = *v11++;
              *v21 = v22;
              v21 += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        if (v4 == 2)
        {
          v12 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v13 = *v11++;
              *v12 = v13;
              v12 += 2;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v23 = sub_1AF0D5194();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          break;
        }

LABEL_32:
        v24 = *(a1 + 32);
        if (v24)
        {
          CFRelease(v24);
        }

        *(a1 + 40) = v4;
        *(a1 + 32) = Mutable;
        return;
      default:
        v19 = sub_1AF0D5194();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
    }

    sub_1AFDF28D8();
    goto LABEL_32;
  }
}

uint64_t sub_1AF287480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v7 = *(a1 + 40);
  v8 = (3 * a2 + a3) * v7;
  if (v7 > 3)
  {
    if (v7 == 4 || v7 == 8)
    {
      return *&MutableBytePtr[v8];
    }
  }

  else
  {
    if (v7 == 1)
    {
      return MutableBytePtr[v8];
    }

    if (v7 == 2)
    {
      return *&MutableBytePtr[v8];
    }
  }

  v10 = sub_1AF0D5194();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF290C();
  }

  return -1;
}

void sub_1AF28752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF28728C(a1, a4);
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = (3 * a2 + a3) * v9;
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      *&MutableBytePtr[v10] = a4;
      return;
    }

    if (v9 == 8)
    {
      *&MutableBytePtr[v10] = a4;
      return;
    }
  }

  else
  {
    if (v9 == 1)
    {
      MutableBytePtr[v10] = a4;
      return;
    }

    if (v9 == 2)
    {
      *&MutableBytePtr[v10] = a4;
      return;
    }
  }

  v11 = sub_1AF0D5194();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF290C();
  }
}

void sub_1AF2875E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2940(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 48) >= a2)
  {
    v20 = sub_1AF287480(a1, a2, 1);
    v21 = sub_1AF287480(a1, a2, 2);
    v22 = *(a1 + 48);
    v23 = *(a1 + 32);
    Length = CFDataGetLength(v23);
    CFDataSetLength(v23, Length + (9 * *(a1 + 40)));
    sub_1AF28752C(a1, a2, 1, a4);
    sub_1AF28752C(a1, a2, 2, a3);
    sub_1AF28752C(a1, v22, 0, a3);
    sub_1AF28752C(a1, v22, 1, a5);
    sub_1AF28752C(a1, v22, 2, v21);
    sub_1AF28752C(a1, v22 + 1, 0, a3);
    sub_1AF28752C(a1, v22 + 1, 1, a4);
    sub_1AF28752C(a1, v22 + 1, 2, a5);
    sub_1AF28752C(a1, v22 + 2, 0, a4);
    sub_1AF28752C(a1, v22 + 2, 1, v20);
    sub_1AF28752C(a1, v22 + 2, 2, a5);
    *(a1 + 48) += 3;
  }

  else
  {
    v19 = sub_1AF0D5194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF29B8();
    }
  }
}

uint64_t sub_1AF2877C8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2940(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v10 = sub_1AF1A6834();
    v11 = sub_1AF1A707C(*(a1 + 16));
    sub_1AF1A718C(v10, v11);
    Copy = CFDataCreateCopy(0, *(a1 + 32));
    sub_1AF1A6A70(v10, 0, *(a1 + 48), Copy, *(a1 + 40));
    CFRelease(Copy);
    *(a1 + 24) = v10;
  }

  return v10;
}

uint64_t sub_1AF287870(int a1)
{
  if (qword_1ED73B1E8[0] != -1)
  {
    sub_1AF0D5230();
  }

  return qword_1ED73B160[a1];
}

uint64_t sub_1AF2878B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v10 = objc_msgSend_infoDictionary(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, a1, v12);
  if (!v13)
  {
    return a2;
  }

  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  return objc_msgSend_BOOLValue(v14, v15, v16, v17);
}

_DWORD *sub_1AF2879EC(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4)
{
  v5 = (a3 - 2);
  if (a3 <= 2)
  {
    v6 = 0;
    *a4 = 0;
    return v6;
  }

  v7 = a3;
  if (a3 == 4)
  {
    v6 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
    *v6 = *a2;
    v6[1] = a2[1];
    v6[2] = a2[2];
    v6[3] = *a2;
    v6[4] = a2[2];
    v6[5] = a2[3];
    v9 = 6;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v6 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
    *v6 = *a2;
    v6[1] = a2[1];
    v6[2] = a2[2];
    v9 = 3;
LABEL_7:
    *a4 = v9;
    return v6;
  }

  *v12.i64 = sub_1AF1AF084(a1, *a2, a3, a4);
  v72 = v12;
  *v17.i64 = sub_1AF1AF084(a1, a2[1], v13, v14);
  v18 = 0;
  v19 = 0;
  v20 = vsubq_f32(v17, v72);
  v21 = vmulq_f32(v20, v20);
  *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
  *v21.f32 = vrsqrte_f32(v22);
  *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
  v23 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
  v68 = vnegq_f32(v23);
  v70 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  v66 = v23;
  v67 = 0u;
  for (i = 2; i != v7; v18 = ++i >= v7)
  {
    *v25.i64 = sub_1AF1AF084(a1, a2[i], v15, v16);
    v26 = vsubq_f32(v25, v72);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v68), v26, v70);
    v28 = vmulq_f32(v27, v27);
    if ((v28.f32[1] + (v28.f32[2] + v28.f32[0])) != 0.0)
    {
      v29 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v68), v29, v70);
      v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
      v32 = vmulq_f32(v30, v30);
      *&v33 = v32.f32[1] + (v32.f32[2] + v32.f32[0]);
      *v32.f32 = vrsqrte_f32(v33);
      *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
      v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
      if (v19)
      {
        v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v67)), v34, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
        v36 = vmulq_f32(v35, v35);
        v19 = 1;
        if ((v36.f32[1] + (v36.f32[2] + v36.f32[0])) > 0.00001)
        {
          break;
        }
      }

      else
      {
        v19 = 1;
        v67 = v34;
      }
    }
  }

  if (v18 && (v19 & 1) != 0)
  {
    v39 = malloc_type_malloc(72 * v7, 0x1000040994742BFuLL);
    v40 = 0;
    v41 = v39 + 69;
    v42 = 0.0;
    v65 = *MEMORY[0x1E695EFF8];
    v43.f64[0] = 0.0;
    v44 = 0.0;
    v45.f64[0] = 0.0;
    do
    {
      v69 = v45.f64[0];
      v71 = v43.f64[0];
      *v46.i64 = sub_1AF1AF084(a1, a2[v40], v37, v38);
      v47 = vsubq_f32(v46, v72);
      v48 = vmulq_f32(v66, v47);
      v49 = vmulq_f32(v67, v47);
      v50 = a2[v40];
      v51 = vcvtq_f64_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v49.i8), vzip2_s32(*v48.i8, *v49.i8))));
      *(v41 - 69) = v51;
      *(v41 - 53) = v65;
      *(v41 - 37) = v65;
      *(v41 - 21) = v65;
      *(v41 - 5) = 0;
      *(v41 - 1) = 0;
      *v41 = v50;
      if (v40)
      {
        v45.f64[0] = fmin(v69, *v51.i64);
        v43.f64[0] = fmin(v71, *&v51.i64[1]);
        v43.f64[1] = fmax(v42, *&v51.i64[1]);
        v45.f64[1] = fmax(v44, *v51.i64);
      }

      else
      {
        v43 = vdupq_laneq_s64(v51, 1);
        v45 = vdupq_lane_s64(v51.i64[0], 0);
      }

      ++v40;
      v44 = v45.f64[1];
      v42 = v43.f64[1];
      v41 += 72;
    }

    while (v7 != v40);
    v83 = 0;
    v79 = v39;
    v80 = v7;
    v81 = v7;
    v82 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v45, xmmword_1AFE47490)), vaddq_f64(v43, xmmword_1AFE47490));
    v52 = sub_1AF221C80(&v79);
    if (v52 != 2)
    {
      sub_1AF221CFC(&v79);
    }

    v78 = 0;
    v73 = &v79;
    v74 = 1;
    v76 = 0;
    v75 = 0;
    v77 = 0;
    v53 = sub_1AF2215CC(&v73, &v78);
    v54 = malloc_type_malloc(12 * v78, 0x100004052888210uLL);
    v6 = v54;
    if (v78)
    {
      v55 = 0;
      v56 = 16;
      if (v52 == 2)
      {
        v57 = 8;
      }

      else
      {
        v57 = 16;
      }

      if (v52 != 2)
      {
        v56 = 8;
      }

      v58 = 2;
      v59 = v53;
      do
      {
        v54[v58 - 2] = *(*v59 + 69);
        v54[v58 - 1] = *(*&v59[v57] + 69);
        v54[v58] = *(*&v59[v56] + 69);
        ++v55;
        v58 += 3;
        v59 += 56;
      }

      while (v55 < v78);
    }

    else if (!v53)
    {
LABEL_39:
      free(v39);
      *a4 = v53;
      return v6;
    }

    free(v53);
    LODWORD(v53) = 3 * v78;
    goto LABEL_39;
  }

  v60 = 3 * v5;
  v61 = malloc_type_malloc(4 * (3 * v5), 0x100004052888210uLL);
  v6 = v61;
  v62 = (a2 + 2);
  v63 = 2;
  do
  {
    v61[v63 - 2] = *a2;
    v61[v63 - 1] = *(v62 - 1);
    v64 = *v62++;
    v61[v63] = v64;
    v63 += 3;
    --v5;
  }

  while (v5);
  *a4 = v60;
  return v6;
}

uint64_t sub_1AF287EF8(uint64_t a1)
{
  if (!off_1EB6587F0 || ((v2 = off_1EB6587F0(a1, qword_1EB658800), v3 = off_1EB6587F8, v2) ? (v4 = off_1EB6587F8 == 0) : (v4 = 1), v4))
  {
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);

    return MEMORY[0x1EEE66B58](v5, sel_initWithContentsOfURL_options_error_, a1, 0);
  }

  else
  {
    v6 = qword_1EB658800;

    return v3(a1, v6);
  }
}

CGImageSourceRef sub_1AF287FA4(const __CFURL *a1)
{
  if (off_1EB6587F0)
  {
    if (off_1EB6587F0(a1, qword_1EB658800) && off_1EB6587F8 != 0)
    {
      v4 = off_1EB6587F8(a1, qword_1EB658800);
      if (v4)
      {
        v5 = v4;
        v6 = CGImageSourceCreateWithData(v4, 0);
        CFRelease(v5);
        return v6;
      }

      return 0;
    }
  }

  if (!sub_1AF1D637C(a1))
  {
    return 0;
  }

  return CGImageSourceCreateWithURL(a1, 0);
}

uint64_t sub_1AF288070(int a1)
{
  if (a1 >= 46)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF29EC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return qword_1AFE474A0[a1];
}

uint64_t sub_1AF2880C4(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"[", 4uLL);
  if (v2.length)
  {
    v7.length = v2.location;
    v7.location = 0;
    v3 = CFStringCreateWithSubstring(0, a1, v7);
    v4 = sub_1AF288144(v3);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return sub_1AF288144(a1);
  }
}

uint64_t sub_1AF288144(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (CFStringCompare(a1, @"int", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a1, @"long", 0) == kCFCompareEqualTo)
  {
    return 45;
  }

  if (CFStringCompare(a1, @"BOOL", 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(a1, @"texture1d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture2d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture3d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texturecube", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  if (CFStringCompare(a1, @"float", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"float2", 0) == kCFCompareEqualTo)
  {
    return 7;
  }

  if (CFStringCompare(a1, @"float3", 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(a1, @"float4", 0) == kCFCompareEqualTo)
  {
    return 9;
  }

  if (CFStringCompare(a1, @"int2", 0) == kCFCompareEqualTo)
  {
    return 17;
  }

  if (CFStringCompare(a1, @"int3", 0) == kCFCompareEqualTo)
  {
    return 18;
  }

  if (CFStringCompare(a1, @"int4", 0) == kCFCompareEqualTo)
  {
    return 19;
  }

  if (CFStringCompare(a1, @"float4x4", 0) == kCFCompareEqualTo)
  {
    return 10;
  }

  result = CFStringCompare(a1, @"none", 0);
  if (result)
  {
    result = CFStringCompare(a1, @"sampler", 0);
    if (result)
    {
      v3 = sub_1AF0D5194();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v4 = 138412290;
        v5 = a1;
        _os_log_impl(&dword_1AF0CE000, v3, OS_LOG_TYPE_DEFAULT, "Warning: CFXBaseTypeFromMetalString: unknown type name '%@'", &v4, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

__CFString *sub_1AF2883D8(int a1)
{
  if (a1 >= 46)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF29EC(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return @"unknown type";
  }

  else if (a1 > 0x2D)
  {
    return @"unknown type";
  }

  else
  {
    return off_1E7A7DD90[a1];
  }
}

uint64_t sub_1AF28844C(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    return word_1AFE47610[3 * a1];
  }

  else
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF2A64();
    }

    return 0;
  }
}

uint64_t sub_1AF2884B4(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    return HIBYTE(word_1AFE47610[3 * a1 + 1]);
  }

  v1 = sub_1AF0D5194();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF2A64();
  }

  return 1;
}

uint64_t sub_1AF288518(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    return LOBYTE(word_1AFE47610[3 * a1 + 1]);
  }

  v1 = sub_1AF0D5194();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF2A64();
  }

  return 0;
}

uint64_t sub_1AF28857C(unsigned int a1)
{
  if (a1 < 0x2E)
  {
    v2 = word_1AFE47610[3 * a1 + 2];
  }

  else
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF2A64();
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1AF2885E4(int a1, int a2)
{
  LOWORD(v2) = a1;
  if (a1 > 15)
  {
    if (a1 > 33)
    {
      switch(a1)
      {
        case '""':
          if ((a2 - 1) >= 4)
          {
            v17 = sub_1AF0D5194();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2D88();
            }

            LOWORD(v2) = 34;
          }

          else
          {
            LOWORD(v2) = a2 + 33;
          }

          return v2;
        case '&':
          if ((a2 - 1) >= 4)
          {
            v20 = sub_1AF0D5194();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2C90();
            }

            LOWORD(v2) = 38;
          }

          else
          {
            LOWORD(v2) = a2 + 37;
          }

          return v2;
        case '-':
          if (a2 != 1)
          {
            v3 = sub_1AF0D5194();
            if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2B1C();
            }
          }

          LOWORD(v2) = 45;
          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 16:
          if ((a2 - 1) >= 4)
          {
            v15 = sub_1AF0D5194();
            LOWORD(v2) = 16;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2E04();
              LOWORD(v2) = 16;
            }
          }

          else
          {
            v2 = 0x1E001D001C0010uLL >> (16 * (a2 - 1));
          }

          return v2;
        case 20:
          if (a2 != 1)
          {
            if (a2 == 4)
            {
              LOWORD(v2) = 26;
              return v2;
            }

            v24 = sub_1AF0D5194();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2F78();
            }
          }

          LOWORD(v2) = 20;
          return v2;
        case 21:
          if (a2 != 1)
          {
            if (a2 == 4)
            {
              LOWORD(v2) = 27;
              return v2;
            }

            v22 = sub_1AF0D5194();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2E80();
            }
          }

          LOWORD(v2) = 21;
          return v2;
      }
    }

LABEL_46:
    if (a2 != 1)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF3070(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    return v2;
  }

  if (a1 > 12)
  {
    if (a1 != 13)
    {
      if (a1 != 14)
      {
        if (a2 != 1)
        {
          if (a2 == 4)
          {
            LOWORD(v2) = 24;
            return v2;
          }

          v23 = sub_1AF0D5194();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF2FF4();
          }
        }

        LOWORD(v2) = 15;
        return v2;
      }

      if ((a2 - 1) < 4)
      {
        v4 = 16 * (a2 - 1);
        v5 = 0x2C002B002A000ELL;
        goto LABEL_43;
      }

      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2C14();
      }

      LOWORD(v2) = 14;
      return v2;
    }

    if ((a2 - 1) >= 4)
    {
      v16 = sub_1AF0D5194();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2D0C();
      }

      LOWORD(v2) = 13;
      return v2;
    }

    v4 = 16 * (a2 - 1);
    v5 = 0x210020001F000DLL;
LABEL_43:
    v2 = v5 >> v4;
    return v2;
  }

  if (a1 == 1)
  {
    if ((a2 - 1) >= 4)
    {
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2B98();
      }

      LOWORD(v2) = 1;
      return v2;
    }

    v4 = 16 * (a2 - 1);
    v5 = 0x9000800070001;
    goto LABEL_43;
  }

  if (a1 != 2)
  {
    if (a1 == 4)
    {
      if (a2 != 1)
      {
        if (a2 == 4)
        {
          LOWORD(v2) = 25;
          return v2;
        }

        v21 = sub_1AF0D5194();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF2EFC();
        }
      }

      LOWORD(v2) = 4;
      return v2;
    }

    goto LABEL_46;
  }

  if ((a2 - 1) < 4)
  {
    v4 = 16 * (a2 - 1);
    v5 = 0x13001200110002;
    goto LABEL_43;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF2AA0();
  }

  LOWORD(v2) = 2;
  return v2;
}

BOOL sub_1AF288A0C(int a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  if (a1 >= 46 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF29EC(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    if (a3 && a4)
    {
      goto LABEL_8;
    }
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF30E8(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_8:
  v24 = &word_1AFE47610[3 * a1];
  v25 = v24[3];
  *a2 = v24[2];
  *a3 = v25;
  LOBYTE(v24) = v24[4];
  *a4 = v24 & 1;
  return sub_1AF288ADC(*a2, v25, v24 & 1) == a1;
}

uint64_t sub_1AF288ADC(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        if (a3)
        {
          LOWORD(v7) = 6;
        }

        else
        {
          LOWORD(v7) = 45;
        }

        return v7;
      }

      goto LABEL_34;
    }

    v8 = a2 - 1;
    if (a3)
    {
      if ((a2 - 1) < 4)
      {
        v7 = 0x9000800070001uLL >> (16 * v8);
        return v7;
      }

      goto LABEL_17;
    }

    if ((a2 - 1) < 4)
    {
      v5 = 16 * v8;
      v6 = 0x13001200110002;
      goto LABEL_27;
    }

LABEL_28:
    if ((byte_1EB658809 & 1) == 0)
    {
      byte_1EB658809 = 1;
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3160();
      }
    }

    if (a2 == 1)
    {
      LOWORD(v7) = 15;
      return v7;
    }

    if (a2 == 4)
    {
      LOWORD(v7) = 24;
      return v7;
    }

    goto LABEL_34;
  }

  if (a1 == 1)
  {
    if (a3)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 == 2)
  {
    v4 = a2 - 1;
    if (a3)
    {
      if ((a2 - 1) < 4)
      {
        v5 = 16 * v4;
        v6 = 0x2C002B002A000ELL;
LABEL_27:
        v7 = v6 >> v5;
        return v7;
      }

LABEL_17:
      if ((byte_1EB658808 & 1) == 0)
      {
        byte_1EB658808 = 1;
        v9 = sub_1AF0D5194();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF3160();
        }
      }

      if (a2 == 1)
      {
        LOWORD(v7) = 20;
        return v7;
      }

      if (a2 == 4)
      {
        LOWORD(v7) = 26;
        return v7;
      }

      goto LABEL_34;
    }

    if ((a2 - 1) < 4)
    {
      v5 = 16 * v4;
      v6 = 0x210020001F000DLL;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_34:
  v11 = sub_1AF0D5194();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF319C();
  }

  LOWORD(v7) = 0;
  return v7;
}

float32_t sub_1AF288CA0(int a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t a5)
{
  if (!a2 && (v9 = sub_1AF0D5194(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF31D8(v9, v10, v11, v12, v13, v14, v15, v16);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF3250(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a4)
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF32C8(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  switch(a1)
  {
    case 1:
      a5.f32[0] = *a2 + *a3;
      a4->i32[0] = a5.i32[0];
      break;
    case 2:
      a4->i32[0] = *a3 + *a2;
      break;
    case 3:
    case 4:
    case 5:
    case 11:
    case 15:
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF337C();
      }

      break;
    case 6:
      *a5.i64 = *a2 + *a3;
      goto LABEL_23;
    case 7:
    case 17:
      *a5.f32 = vadd_f32(*a2, *a3);
LABEL_23:
      a4->i64[0] = a5.i64[0];
      break;
    case 8:
    case 9:
    case 18:
    case 19:
      a5 = vaddq_f32(*a2, *a3);
      *a4 = a5;
      break;
    case 10:
      a5 = vaddq_f32(*a2, *a3);
      v36 = vaddq_f32(*(a2 + 16), *(a3 + 16));
      v37 = vaddq_f32(*(a2 + 32), *(a3 + 32));
      v38 = vaddq_f32(*(a2 + 48), *(a3 + 48));
      *a4 = a5;
      a4[1] = v36;
      a4[2] = v37;
      a4[3] = v38;
      break;
    case 12:
      a5.f32[0] = sub_1AF16405C(a2, a3, a4->f32);
      break;
    case 13:
    case 16:
      a4->i16[0] = *a3 + *a2;
      break;
    case 14:
      v34 = sub_1AF0D5194();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3340();
      }

      break;
    case 45:
      a4->i64[0] = *a3 + *a2;
      break;
    default:
      v35 = sub_1AF0D5194();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF33F0();
      }

      break;
  }

  return a5.f32[0];
}

float32_t sub_1AF288EA0(int a1, _OWORD *a2, float32x4_t *a3, uint64_t a4, float32x4_t a5)
{
  if (!a2 && (v9 = sub_1AF0D5194(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF31D8(v9, v10, v11, v12, v13, v14, v15, v16);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF3250(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a4)
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF32C8(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  if (a1 != 10)
  {
    return sub_1AF288CA0(a1, a2, a3, a4, a5);
  }

  v33 = 0;
  v34 = *a3;
  v35 = a3[1];
  v36 = a3[2];
  v37 = a3[3];
  v38 = a2[1];
  v39 = a2[2];
  v40 = a2[3];
  v45[0] = *a2;
  v45[1] = v38;
  v45[2] = v39;
  v45[3] = v40;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  do
  {
    *(&v46 + v33 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(v45[v33])), v35, *&v45[v33], 1), v36, v45[v33], 2), v37, v45[v33], 3);
    ++v33;
  }

  while (v33 != 4);
  result = *&v46;
  v42 = v47;
  v43 = v48;
  v44 = v49;
  *a4 = v46;
  *(a4 + 16) = v42;
  *(a4 + 32) = v43;
  *(a4 + 48) = v44;
  return result;
}

float32_t sub_1AF288FD8(int a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t a5)
{
  if (!a2 && (v9 = sub_1AF0D5194(), os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF31D8(v9, v10, v11, v12, v13, v14, v15, v16);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF3250(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  if (!a4)
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF32C8(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  switch(a1)
  {
    case 1:
      a5.f32[0] = *a2 - *a3;
      a4->i32[0] = a5.i32[0];
      break;
    case 2:
      a4->i32[0] = *a2 - *a3;
      break;
    case 3:
    case 4:
    case 5:
    case 11:
    case 15:
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3468();
      }

      break;
    case 6:
      *a5.i64 = *a2 - *a3;
      goto LABEL_23;
    case 7:
    case 17:
      *a5.f32 = vsub_f32(*a2, *a3);
LABEL_23:
      a4->i64[0] = a5.i64[0];
      break;
    case 8:
    case 9:
    case 18:
    case 19:
      a5 = vsubq_f32(*a2, *a3);
      *a4 = a5;
      break;
    case 10:
      a5 = vsubq_f32(*a2, *a3);
      v36 = vsubq_f32(*(a2 + 16), *(a3 + 16));
      v37 = vsubq_f32(*(a2 + 32), *(a3 + 32));
      v38 = vsubq_f32(*(a2 + 48), *(a3 + 48));
      *a4 = a5;
      a4[1] = v36;
      a4[2] = v37;
      a4[3] = v38;
      break;
    case 12:
      a5.f32[0] = sub_1AF1640A0(a2, a3, a4->f32);
      break;
    case 13:
    case 16:
      a4->i16[0] = *a2 - *a3;
      break;
    case 14:
      v34 = sub_1AF0D5194();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF342C();
      }

      break;
    case 45:
      a4->i64[0] = *a2 - *a3;
      break;
    default:
      v35 = sub_1AF0D5194();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF34DC();
      }

      break;
  }

  return a5.f32[0];
}

const char *sub_1AF2891EC(const char *result)
{
  if (result)
  {
    v1 = result;
    result = CFStringGetCStringPtr(result, 0x600u);
    if (!result)
    {

      return objc_msgSend_UTF8String(v1, v2, v3, v4);
    }
  }

  return result;
}

CFCharacterSetRef sub_1AF28923C(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  if (theString)
  {
    *(a1 + 144) = theString;
    *(a1 + 168) = a3;
    *(a1 + 176) = a4;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    *(a1 + 152) = CharactersPtr;
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    *(a1 + 160) = CStringPtr;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  *(a1 + 200) = a3;
  *(a1 + 208) = 0;
  *(a1 + 216) = a5;
  *(a1 + 224) = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  result = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  *(a1 + 232) = result;
  return result;
}

void sub_1AF2892E0(UniChar *buffer, uint64_t *a2, uint64_t a3)
{
  for (i = *a2; i < a3; *a2 = i)
  {
    if (i < 0 || (v7 = *(buffer + 20), v7 <= i))
    {
      v9 = 0;
    }

    else
    {
      v8 = *(buffer + 17);
      if (v8)
      {
        v9 = *(v8 + 2 * *(buffer + 19) + 2 * i);
      }

      else
      {
        v10 = *(buffer + 18);
        if (v10)
        {
          v9 = *(v10 + *(buffer + 19) + i);
        }

        else
        {
          if (*(buffer + 22) <= i || (v11 = *(buffer + 21), v11 > i))
          {
            v12 = i - 4;
            if (i < 4)
            {
              v12 = 0;
            }

            if (v12 + 64 < v7)
            {
              v7 = v12 + 64;
            }

            *(buffer + 21) = v12;
            *(buffer + 22) = v7;
            v13.length = v7 - v12;
            v13.location = *(buffer + 19) + v12;
            CFStringGetCharacters(*(buffer + 16), v13, buffer);
            v11 = *(buffer + 21);
          }

          v9 = buffer[i - v11];
        }
      }
    }

    if (v9 != 12288 && (v9 - 0x2000) >= 0xCu && v9 >= 0x21u && (v9 - 127) > 0x21u)
    {
      break;
    }

    i = *a2 + 1;
  }
}

BOOL sub_1AF289408(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  v5 = CFStringGetLength(a2);
  theString = a1;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v32 = 0uLL;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  v31[0] = a2;
  v33 = v5;
  v34 = 0;
  v8 = CFStringGetCharactersPtr(a2);
  v9 = 0;
  v31[1] = v8;
  if (!v8)
  {
    v9 = CFStringGetCStringPtr(a2, 0x600u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *buffer = 0u;
  v36 = 0u;
  *(&v33 + 1) = 0;
  v34 = 0;
  *&v32 = v9;
  v21 = 0;
  v22 = 0;
  sub_1AF2892E0(buffer, &v22, Length);
LABEL_6:
  sub_1AF2892E0(v23, &v21, v5);
  v10 = v21;
  while (1)
  {
    if (v10 == v5)
    {
      return 1;
    }

    v11 = v22;
    if (v22 == Length)
    {
      goto LABEL_51;
    }

    if (v22 < 0 || (v12 = v47, v47 <= v22))
    {
      v13 = 0;
    }

    else if (v44)
    {
      v13 = v44[v46 + v22];
    }

    else if (v45)
    {
      v13 = v45[v46 + v22];
    }

    else
    {
      if (v49 <= v22 || (v16 = v48, v48 > v22))
      {
        v17 = v22 - 4;
        if (v22 < 4)
        {
          v17 = 0;
        }

        if (v17 + 64 < v47)
        {
          v12 = v17 + 64;
        }

        v48 = v17;
        v49 = v12;
        v50.length = v12 - v17;
        v50.location = v46 + v17;
        CFStringGetCharacters(theString, v50, buffer);
        v16 = v48;
      }

      v13 = buffer[v11 - v16];
    }

    if (v10 < 0 || (v14 = v33, v33 <= v10))
    {
      v15 = 0;
    }

    else if (v31[1])
    {
      v15 = *(&v31[1]->isa + *(&v32 + 1) + v10);
    }

    else if (v32)
    {
      v15 = *(v32 + *(&v32 + 1) + v10);
    }

    else
    {
      if (v34 <= v10 || (v18 = *(&v33 + 1), *(&v33 + 1) > v10))
      {
        v19 = v10 - 4;
        if (v10 < 4)
        {
          v19 = 0;
        }

        if (v19 + 64 < v33)
        {
          v14 = v19 + 64;
        }

        *(&v33 + 1) = v19;
        v34 = v14;
        v51.length = v14 - v19;
        v51.location = *(&v32 + 1) + v19;
        CFStringGetCharacters(v31[0], v51, v23);
        v18 = *(&v33 + 1);
      }

      v15 = v23[v10 - v18];
    }

    if (v15 == 12288 || (v15 - 0x2000) < 0xCu || v15 < 0x21u || (v15 - 127) <= 0x21u)
    {
      if (v13 == 12288 || (v13 - 0x2000) < 0xCu || v13 < 0x21u || (v13 - 127) <= 0x21u)
      {
        sub_1AF2892E0(buffer, &v22, Length);
        goto LABEL_6;
      }

LABEL_51:
      sub_1AF2892E0(v23, &v21, v5);
      return v21 == v5;
    }

    if (v13 != v15)
    {
      return 0;
    }

    v21 = ++v10;
    v22 = v11 + 1;
  }
}

uint64_t sub_1AF289744()
{
  result = dword_1ED726828;
  if (dword_1ED726828 == -1)
  {
    dword_1ED726828 = 0;
    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse2", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 1u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse3", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 2u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.supplementalsse3", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 2u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse4_1", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 8u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse4_2", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 0x10u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.avx1_0", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 0x20u;
    }

    v3 = 0;
    v2 = 4;
    v1 = sysctlbyname("hw.optional.fma", &v3, &v2, 0, 0);
    result = dword_1ED726828;
    if (!v1)
    {
      if (v3)
      {
        result = dword_1ED726828 | 0x40u;
        dword_1ED726828 |= 0x40u;
      }
    }
  }

  return result;
}

uint64_t sub_1AF289940(uint64_t *a1, int a2)
{
  v2 = a1[26] + a1[25];
  v3 = a1[1] + *a1;
  *(a1 + 217) = 0;
  if (v2 >= v3)
  {
    return 0;
  }

  v6 = (a1 + 2);
  while (1)
  {
    v7 = v2 - *a1;
    if (v7 < 0 || (v8 = a1[22], v8 <= v7))
    {
      v10 = 0;
    }

    else
    {
      v9 = a1[19];
      if (v9)
      {
        v10 = *(v9 + 2 * a1[21] + 2 * v7);
      }

      else
      {
        v31 = a1[20];
        if (v31)
        {
          v10 = *(v31 + a1[21] + v7);
        }

        else
        {
          if (a1[24] <= v7 || (v32 = a1[23], v32 > v7))
          {
            v33 = v7 - 4;
            if (v7 < 4)
            {
              v33 = 0;
            }

            if (v33 + 64 < v8)
            {
              v8 = v33 + 64;
            }

            a1[23] = v33;
            a1[24] = v8;
            v56.length = v8 - v33;
            v56.location = a1[21] + v33;
            CFStringGetCharacters(a1[18], v56, v6);
            v32 = a1[23];
          }

          v10 = v6[v7 - v32];
        }
      }
    }

    v11 = v2 + 1;
    if (!CFCharacterSetIsCharacterMember(a1[28], v10))
    {
      break;
    }

    v12 = -v2;
    v13 = v2 + 65;
    do
    {
      v14 = *a1;
      v15 = v2 - *a1 + 1;
      if (v15 < 0 || (v16 = a1[22], v16 <= v15))
      {
        v19 = 0;
      }

      else
      {
        v17 = a1[19];
        if (v17)
        {
          v18 = v17 - 2 * v14 + 2 * a1[21] + 2 * v2;
LABEL_14:
          v19 = *(v18 + 2);
          goto LABEL_16;
        }

        v20 = a1[20];
        if (!v20)
        {
          if (a1[24] <= v15 || (v21 = a1[23], v21 > v15))
          {
            v22 = v11 - v14;
            if ((v11 - v14) >= 4)
            {
              v22 = 4;
            }

            v23 = v14 + v22;
            v24 = v2 - (v14 + v22);
            v25 = v24 + 1;
            v26 = v24 + 65;
            if (v26 >= v16)
            {
              v26 = a1[22];
            }

            a1[23] = v25;
            a1[24] = v26;
            v27 = v2 + a1[21] - v14 - v22;
            v28 = v13 - v14 - v22;
            if (v16 >= v28)
            {
              v16 = v28;
            }

            v55.length = v12 + v23 + v16 - 1;
            v55.location = v27 + 1;
            CFStringGetCharacters(a1[18], v55, v6);
            v21 = a1[23];
          }

          v18 = &v6[v2 - (v21 + v14)];
          goto LABEL_14;
        }

        v19 = *(v20 + v2 + a1[21] - v14 + 1);
      }

LABEL_16:
      ++v2;
      --v12;
      ++v13;
      ++v11;
    }

    while (CFCharacterSetIsCharacterMember(a1[28], v19));
    v29 = a1[25] + a1[26];
    a1[25] = v29;
    a1[26] = v2 - v29;
    if (*(a1 + 216) == 1)
    {
      result = 1;
      *(a1 + 217) = 1;
      return result;
    }

LABEL_35:
    if (v2 >= v3)
    {
      return 0;
    }
  }

  if (v10 != 95 && !CFCharacterSetIsCharacterMember(a1[29], v10))
  {
    v30 = a1[25] + a1[26];
    a1[25] = v30;
    a1[26] = v11 - v30;
    ++v2;
    if ((a1[27] & 1) == 0)
    {
      goto LABEL_35;
    }

    return 1;
  }

  v34 = 0;
  v35 = v2 + 1;
  while (2)
  {
    v36 = -v35;
    v37 = v35 + 64;
    v38 = v11;
    while (2)
    {
      v11 = v38;
      v39 = *a1;
      v40 = v35 - *a1;
      if (v40 < 0 || (v41 = a1[22], v41 <= v40))
      {
        v43 = 0;
      }

      else
      {
        v42 = a1[19];
        if (v42)
        {
          v43 = *(v42 - 2 * v39 + 2 * a1[21] + 2 * v35);
        }

        else
        {
          v46 = a1[20];
          if (v46)
          {
            v43 = *(v46 + a1[21] - v39 + v35);
          }

          else
          {
            if (a1[24] <= v40 || (v47 = a1[23], v47 > v40))
            {
              if (v40 >= 4)
              {
                v40 = 4;
              }

              v48 = v39 + v40;
              v49 = v35 - (v39 + v40);
              v50 = v49 + 64;
              if (v49 + 64 >= v41)
              {
                v50 = a1[22];
              }

              a1[23] = v49;
              a1[24] = v50;
              v51 = a1[21] - v39 - v40;
              v52 = v37 - v39 - v40;
              if (v41 >= v52)
              {
                v41 = v52;
              }

              v57.location = v35 + v51;
              v57.length = v36 + v48 + v41;
              CFStringGetCharacters(a1[18], v57, v6);
              v47 = a1[23];
            }

            v43 = v6[v35 - (v47 + v39)];
          }
        }

        if (v43 == 95)
        {
          CFCharacterSetIsCharacterMember(a1[28], 0x5Fu);
LABEL_56:
          --v36;
          ++v37;
          v38 = ++v35;
          if (v34)
          {
            goto LABEL_76;
          }

          continue;
        }
      }

      break;
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(a1[29], v43);
    v45 = CFCharacterSetIsCharacterMember(a1[28], v43);
    if (IsCharacterMember)
    {
      goto LABEL_56;
    }

    if (a2)
    {
      ++v35;
      v34 = 1;
      if (v43 == 42)
      {
        v11 = v35;
        continue;
      }

      if (v45)
      {
        continue;
      }
    }

    break;
  }

LABEL_76:
  v53 = a1[25] + a1[26];
  a1[25] = v53;
  a1[26] = v11 - v53;
  return 1;
}

CFURLRef sub_1AF289D68(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_length(a1, a2, a3, a4);
  if (result)
  {
    PathComponent = objc_msgSend_lastPathComponent(a1, v6, v7, v8);
    if (objc_msgSend_isEqualToString_(a1, v10, PathComponent, v11))
    {
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend_stringByDeletingLastPathComponent(a1, v12, v13, v14);
    }

    v16 = objc_msgSend_pathExtension(a1, v12, v13, v14);
    v20 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v17, v18, v19);
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.vfx");
    v22 = CFBundleCopyResourceURL(BundleWithIdentifier, v20, v16, 0);
    if (!v22)
    {
      MainBundle = CFBundleGetMainBundle();
      v22 = CFBundleCopyResourceURL(MainBundle, v20, v16, v15);
    }

    return v22;
  }

  return result;
}

CFURLRef sub_1AF289E38(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1AF289D68(a1, a2, a3, a4);
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  return v5;
}

uint64_t sub_1AF289E6C(const __CFURL *a1)
{
  MainBundle = CFBundleGetMainBundle();
  v3 = 0;
  if (!a1)
  {
    return v3;
  }

  v4 = MainBundle;
  if (!MainBundle)
  {
    return v3;
  }

  *packageCreator = 0;
  CFBundleGetPackageInfo(MainBundle, &packageCreator[1], packageCreator);
  if (packageCreator[1] != 1095782476)
  {
    return 0;
  }

  v5 = CFBundleCopyBundleURL(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFURLCopyPath(v5);
  v8 = CFURLCopyPath(a1);
  v12 = v8;
  if (v7 && v8)
  {
    v13 = objc_msgSend_stringByStandardizingPath(v8, v9, v10, v11);
    v17 = objc_msgSend_stringByStandardizingPath(v7, v14, v15, v16);
    v18 = CFStringFind(v13, v17, 1uLL);
    if (v18.location)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18.length <= 0;
    }

    v20 = !v19;
    goto LABEL_15;
  }

  v20 = 0;
  v3 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
    v3 = v20;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(v6);
  return v3;
}

uint64_t sub_1AF289F78(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  *a2 = objc_msgSend_length(a1, a2, a3, a4);

  return objc_msgSend_contents(a1, v5, v6, v7);
}

uint64_t sub_1AF289FB8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_storageMode(a1, a2, a3, a4) == 2)
  {
    if ((byte_1EB65880A & 1) == 0)
    {
      byte_1EB65880A = 1;
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3518();
      }
    }

    return 0;
  }

  else
  {
    v10 = MEMORY[0x1E695DEF0];
    v11 = objc_msgSend_contents(a1, v5, v6, v7);
    v16 = objc_msgSend_length(a1, v12, v13, v14);

    return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v10, v15, v11, v16, 0);
  }
}

uint64_t sub_1AF28A070()
{
  if (qword_1EB658810 != -1)
  {
    sub_1AFDF3554();
  }

  return byte_1EB644858;
}

void sub_1AF28A0A8()
{
  v6 = CFXMTLCreateSystemDefaultDevice();
  byte_1EB644858 |= objc_msgSend_supportsFeatureSet_(v6, v0, 1, v1);
  byte_1EB644858 |= objc_msgSend_supportsFeatureSet_(v6, v2, 3, v3);
  byte_1EB644858 |= objc_msgSend_supportsFeatureSet_(v6, v4, 4, v5);
}

uint64_t sub_1AF28A130()
{
  if (qword_1ED73AB68 != -1)
  {
    sub_1AFDF3568();
  }

  return byte_1ED72F6C0;
}

uint64_t sub_1AF28A168()
{
  byte_1ED72F6C0 = 0;
  byte_1ED72F6C0 = sub_1AF0D5C40(6);
  if (byte_1ED72F6C0)
  {
    byte_1ED72F6C0 = 1;
LABEL_4:
    result = MGGetBoolAnswer();
    goto LABEL_5;
  }

  v2 = sub_1AF2878B4(@"VFXEnableWideGamut", 0, v0, v1);
  result = 0;
  byte_1ED72F6C0 = v2;
  if (v2)
  {
    goto LABEL_4;
  }

LABEL_5:
  byte_1ED72F6C0 = result;
  return result;
}

uint64_t sub_1AF28A1D8()
{
  if (qword_1ED73AB70 != -1)
  {
    sub_1AFDF357C();
  }

  return byte_1EB633A29;
}

BOOL sub_1AF28A210()
{
  result = sub_1AF0D5C40(16);
  byte_1EB633A29 = result;
  return result;
}

uint64_t sub_1AF28A234(unint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3590(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sqrt((a1 / 0xC));
  if (12 * (v10 * v10) != a1)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3608();
    }
  }

  return v10;
}

uint64_t sub_1AF28A2DC()
{
  if (qword_1ED731B50 != -1)
  {
    sub_1AFDF3698();
  }

  return byte_1EB654D28;
}

uint64_t sub_1AF28A314(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);
  result = objc_msgSend_hasPrefix_(v8, v9, @"com.apple.vfxstudio", v10);
  byte_1EB654D28 = result;
  return result;
}

CFTypeRef sub_1AF28A34C(CFTypeRef cf)
{
  result = qword_1EB658818;
  if (qword_1EB658818 != cf)
  {
    if (qword_1EB658818)
    {
      CFRelease(qword_1EB658818);
      qword_1EB658818 = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    qword_1EB658818 = result;
  }

  return result;
}

CFTypeRef _VFXSetShaderCacheURL_0(CFTypeRef cf)
{
  result = qword_1EB64FB38;
  if (qword_1EB64FB38 != cf)
  {
    if (qword_1EB64FB38)
    {
      CFRelease(qword_1EB64FB38);
      qword_1EB64FB38 = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    qword_1EB64FB38 = result;
  }

  return result;
}

const __CFString *sub_1AF28A40C(const __CFString *theString)
{
  if (theString)
  {
    return CFStringCreateArrayBySeparatingStrings(0, theString, @".");
  }

  return theString;
}

const __CFArray *sub_1AF28A428(const __CFArray *theArray)
{
  if (theArray)
  {
    return CFStringCreateByCombiningStrings(0, theArray, @".");
  }

  return theArray;
}

__CFArray *sub_1AF28A444(CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;
  CFArraySortValues(MutableCopy, v4, sub_1AF28A4BC, 0);
  return MutableCopy;
}

CFArrayRef sub_1AF28A4D0(const __CFDictionary *a1)
{
  if (a1 && (Count = CFDictionaryGetCount(a1)) != 0)
  {
    v3 = Count;
    v4 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, v4, 0);
    v5 = CFArrayCreate(*MEMORY[0x1E695E480], v4, v3, MEMORY[0x1E695E9C0]);
    free(v4);
    return v5;
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v7, 0, 0, v8);
  }
}

void sub_1AF28A5A0(const __CFSet *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      context = a2;
      CFSetApplyFunction(a1, sub_1AF28A5E4, &context);
    }
  }
}

void sub_1AF28A5FC(const __CFArray *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3[0] = 0;
      v3[1] = a2;
      v4.length = CFArrayGetCount(a1);
      v4.location = 0;
      CFArrayApplyFunction(a1, v4, sub_1AF28A65C, v3);
    }
  }
}

uint64_t sub_1AF28A65C(uint64_t a1, void *a2)
{
  v2 = a2[1];
  ++*a2;
  return (*(v2 + 16))();
}

void sub_1AF28A67C(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      context = a2;
      CFDictionaryApplyFunction(a1, sub_1AF28A6C0, &context);
    }
  }
}

void sub_1AF28A6DC(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_1AF28A4D0(a1);
      v5 = sub_1AF28A444(v4);
      CFRelease(v4);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF28A790;
      v6[3] = &unk_1E7A7DF08;
      v6[4] = a2;
      v6[5] = a1;
      sub_1AF28A5FC(v5, v6);
      CFRelease(v5);
    }
  }
}

uint64_t sub_1AF28A790(uint64_t a1, int a2, void *key)
{
  CFDictionaryGetValue(*(a1 + 40), key);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

const void *sub_1AF28A7E4(void *key)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED731B68;
  if (!qword_1ED731B68)
  {
    v16 = xmmword_1E7A7DFC8;
    v17 = *off_1E7A7DFD8;
    v18 = 0;
    v12 = xmmword_1E7A7DF88;
    v13 = *&off_1E7A7DF98;
    v14 = xmmword_1E7A7DFA8;
    v15 = *&off_1E7A7DFB8;
    v8 = xmmword_1E7A7DF48;
    v9 = *&off_1E7A7DF58;
    v10 = xmmword_1E7A7DF68;
    v11 = *&off_1E7A7DF78;
    *keys = xmmword_1E7A7DF28;
    v7 = *&off_1E7A7DF38;
    v4[10] = xmmword_1E7A7E090;
    v4[11] = *off_1E7A7E0A0;
    v5 = 0;
    v4[6] = xmmword_1E7A7E050;
    v4[7] = *&off_1E7A7E060;
    v4[8] = xmmword_1E7A7E070;
    v4[9] = *&off_1E7A7E080;
    v4[2] = xmmword_1E7A7E010;
    v4[3] = *&off_1E7A7E020;
    v4[4] = xmmword_1E7A7E030;
    v4[5] = *&off_1E7A7E040;
    v4[0] = xmmword_1E7A7DFF0;
    v4[1] = *&off_1E7A7E000;
    v2 = CFDictionaryCreate(0, keys, v4, 24, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    qword_1ED731B68 = v2;
  }

  return CFDictionaryGetValue(v2, key);
}

uint64_t sub_1AF28AC9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_begin(MEMORY[0x1E6979518], a2, a3, a4);
  if (!pthread_main_np())
  {
    objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v5, 1, v6);
  }

  objc_msgSend_setValue_forKey_(MEMORY[0x1E6979518], v5, MEMORY[0x1E695E118], *MEMORY[0x1E697A020]);
  if (*(a1 + 72) == 1)
  {
    objc_msgSend_setLayer_(*(a1 + 32), v7, *(a1 + 40), v9);
  }

  if (*(a1 + 73) == 1)
  {
    v10 = objc_msgSend_layerToFocusForRenderedLayer_(*(a1 + 48), v7, *(a1 + 40), v9);
    v17 = objc_msgSend_usesBoundsInPixels(*(a1 + 48), v11, v12, v13);
    v18 = *(a1 + 40);
    if (v10 != v18)
    {
      objc_msgSend_setAnchorPoint_(*(a1 + 40), v14, v15, v16, 0.0, 0.0);
      objc_msgSend_setAnchorPoint_(v10, v19, v20, v21, 0.0, 0.0);
      objc_msgSend_setPosition_(*(a1 + 40), v22, v23, v24, 0.0, 0.0);
      objc_msgSend_setPosition_(v10, v25, v26, v27, 0.0, 0.0);
    }

    objc_msgSend_bounds(v10, v14, v15, v16);
    v29 = v28;
    v31 = v30;
    if (v17)
    {
      objc_msgSend_contentsScale(v10, v7, v8, v9);
      v29 = v32 * v29;
      v31 = v32 * v31;
    }

    if (v29 != 0.0 || v31 != 0.0)
    {
      v33 = *(a1 + 56) / v29;
      v34 = *(a1 + 64) / v31;
      shouldFlip = objc_msgSend_shouldFlip(*(a1 + 48), v7, v8, v9);
      if (shouldFlip)
      {
        if (v10 == v18)
        {
          objc_msgSend_anchorPoint(*(a1 + 40), v35, v36, v37);
          v45 = v29 * ((v33 + -1.0) * v44);
          objc_msgSend_anchorPoint(*(a1 + 40), v46, v47, v48);
          CATransform3DMakeTranslation(&v69, v45, v31 * ((v34 + -1.0) * v49), 0.0);
          v41 = *(a1 + 40);
          *&a.m31 = *&v69.m31;
          *&a.m33 = *&v69.m33;
          *&a.m41 = *&v69.m41;
          *&a.m43 = *&v69.m43;
          *&a.m11 = *&v69.m11;
          *&a.m13 = *&v69.m13;
          v42 = *&v69.m21;
          v43 = *&v69.m23;
        }

        else
        {
          CATransform3DMakeTranslation(&v71, 0.0, *(a1 + 64), 0.0);
          v41 = *(a1 + 40);
          *&a.m31 = *&v71.m31;
          *&a.m33 = *&v71.m33;
          *&a.m41 = *&v71.m41;
          *&a.m43 = *&v71.m43;
          *&a.m11 = *&v71.m11;
          *&a.m13 = *&v71.m13;
          v42 = *&v71.m21;
          v43 = *&v71.m23;
        }
      }

      else
      {
        CATransform3DMakeTranslation(&v68, 0.0, 0.0, 0.0);
        v41 = *(a1 + 40);
        *&a.m31 = *&v68.m31;
        *&a.m33 = *&v68.m33;
        *&a.m41 = *&v68.m41;
        *&a.m43 = *&v68.m43;
        *&a.m11 = *&v68.m11;
        *&a.m13 = *&v68.m13;
        v42 = *&v68.m21;
        v43 = *&v68.m23;
      }

      *&a.m21 = v42;
      *&a.m23 = v43;
      objc_msgSend_setTransform_(v41, v39, &a, v40);
      CATransform3DMakeScale(&a, v33, v34, 1.0);
      v53 = *(a1 + 40);
      if (v53)
      {
        objc_msgSend_transform(v53, v50, v51, v52);
      }

      else
      {
        memset(&b, 0, sizeof(b));
      }

      CATransform3DConcat(&v67, &a, &b);
      v54 = *(a1 + 40);
      a = v67;
      objc_msgSend_setTransform_(v54, v55, &a, v56);
      if (shouldFlip)
      {
        CATransform3DMakeScale(&a, 1.0, -1.0, 1.0);
        v60 = *(a1 + 40);
        if (v60)
        {
          objc_msgSend_transform(v60, v57, v58, v59);
        }

        else
        {
          memset(&b, 0, sizeof(b));
        }

        CATransform3DConcat(&v65, &a, &b);
        v61 = *(a1 + 40);
        a = v65;
        objc_msgSend_setTransform_(v61, v62, &a, v63);
      }
    }
  }

  return objc_msgSend_commit(MEMORY[0x1E6979518], v7, v8, v9);
}

uint64_t sub_1AF28B6F0(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = xmmword_1F24EBDE8;
  v4 = sub_1AF2768E0();
  sub_1AF276AA4(v4, &v6);
  sub_1AF276A24(v4, a3);
  return v4;
}

uint64_t sub_1AF28B814(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF28BCA0;
  v7[3] = &unk_1E7A7E110;
  v7[4] = a4;
  v5[4] = a4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF28BD18;
  v6[3] = &unk_1E7A7E138;
  v6[4] = a4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF28BD90;
  v5[3] = &unk_1E7A7E160;
  return objc_msgSend_renderToTexture_computeCommandHandler_blitCommandHandler_completionHandler_helper_(a1, a2, a2, v7, v6, v5, a3);
}

uint64_t sub_1AF28BCA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_msgSend_resourceComputeEncoder(*(result + 32), a2, a3, a4);
    if ((objc_msgSend_isEncoding(v5, v6, v7, v8) & 1) == 0)
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF3830(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    return (*(a2 + 16))(a2, v5);
  }

  return result;
}

uint64_t sub_1AF28BD18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_msgSend_resourceBlitEncoder(*(result + 32), a2, a3, a4);
    if (!*v5)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF38A8(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    return (*(a2 + 16))(a2, *v5);
  }

  return result;
}

uint64_t sub_1AF28BD90(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    v6 = objc_msgSend_resourceComputeEncoder(*(result + 32), a2, a3, a4);
    if ((objc_msgSend_isEncoding(v6, v7, v8, v9) & 1) == 0)
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF3830(v13, v10, v11, v12, v14, v15, v16, v17);
      }
    }

    v18 = objc_msgSend_resourceCommandBuffer(*(v5 + 32), v10, v11, v12);
    return objc_msgSend_addCompletedHandler_(v18, v19, a2, v20);
  }

  return result;
}

void sub_1AF28BE04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 8) = 0;
  }

  v6 = objc_msgSend_iosurface(*(a1 + 16), a2, a3, a4);
  if (v6)
  {
    IOSurfaceDecrementUseCount(v6);
  }

  *(a1 + 16) = 0;
}

void sub_1AF28BE50(uint64_t a1)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  sub_1AF28BE04(a1, v2, v3, v4);
}

void sub_1AF28BEAC(uint64_t a1, void *a2, __CVMetalTextureCache *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = objc_msgSend_wantsWideGamut(a2, a2, a3, a4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v7);
  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType == 875836534)
      {
        goto LABEL_28;
      }

      if (PixelFormatType == 1111970369)
      {
        if (!v8)
        {
          v61 = 81;
          v60 = 80;
          v15 = sub_1AF164420();
          v11 = MTLPixelFormatBGRA8Unorm;
          goto LABEL_34;
        }

        v11 = MTLPixelFormatBGRA8Unorm;
        goto LABEL_32;
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 1380401729:
          if (!v8)
          {
            v61 = 71;
            v60 = 70;
            v15 = sub_1AF164420();
            v11 = MTLPixelFormatRGBA8Unorm;
            goto LABEL_34;
          }

          v11 = MTLPixelFormatRGBA8Unorm;
          goto LABEL_32;
        case 1380410945:
          v60 = 125;
          if (v8)
          {
            v56 = sub_1AF164490();
          }

          else
          {
            v56 = sub_1AF164458();
          }

          v15 = v56;
          v61 = 125;
          v11 = MTLPixelFormatRGBA32Float;
          goto LABEL_34;
        case 1380411457:
          v60 = 115;
          if (v8)
          {
            v12 = sub_1AF164490();
          }

          else
          {
            v12 = sub_1AF164458();
          }

          v15 = v12;
          v61 = 115;
          v11 = MTLPixelFormatRGBA16Float;
          goto LABEL_34;
      }
    }

    goto LABEL_67;
  }

  if (PixelFormatType <= 875704933)
  {
    if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_67;
    }

    v11 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
    if (v8)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (PixelFormatType != 875704934 && PixelFormatType != 875704950)
    {
      if (PixelFormatType == 875836518)
      {
LABEL_28:
        v11 = MTLPixelFormatX24_Stencil8|MTLPixelFormatBGRG422;
        if (!v8)
        {
          goto LABEL_29;
        }

LABEL_32:
        v61 = 553;
        v60 = 552;
        v14 = sub_1AF1642C0();
        goto LABEL_33;
      }

LABEL_67:
      LOBYTE(image[0]) = HIBYTE(PixelFormatType);
      BYTE1(image[0]) = BYTE2(PixelFormatType);
      BYTE2(image[0]) = BYTE1(PixelFormatType);
      *(image + 3) = PixelFormatType;
      v57 = sub_1AF0D5194();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3994();
      }

      return;
    }

    v11 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422;
    if (v8)
    {
      goto LABEL_32;
    }
  }

LABEL_29:
  v61 = 71;
  v60 = 70;
  v14 = sub_1AF164420();
LABEL_33:
  v15 = v14;
LABEL_34:
  Width = CVPixelBufferGetWidth(v7);
  Height = CVPixelBufferGetHeight(v7);
  v18 = *(a1 + 40);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 40) = 0;
  }

  v19 = CVBufferCopyAttachments(v7, kCVAttachmentMode_ShouldPropagate);
  if (v19)
  {
    v20 = v19;
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v19);
    if (ColorSpaceFromAttachments)
    {
      v22 = ColorSpaceFromAttachments;
      v23 = *(a1 + 40);
      if (v23 != v22)
      {
        if (v23)
        {
          CFRelease(v23);
          *(a1 + 40) = 0;
        }

        *(a1 + 40) = CFRetain(v22);
      }

      CFRelease(v22);
    }

    CFRelease(v20);
  }

  if (!*(a1 + 40))
  {
    goto LABEL_47;
  }

  if (CGColorSpaceEqualToColorSpaceIgnoringRange())
  {
    if (*(a1 + 40))
    {
LABEL_48:
      image[0] = 0;
      if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a3, v7, 0, v11, Width, Height, 0, image))
      {
        v24 = sub_1AF0D5194();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF3920();
        }

        return;
      }

      Texture = CVMetalTextureGetTexture(image[0]);
      v30 = objc_msgSend_iosurface(Texture, v27, v28, v29);
      if (v30)
      {
        IOSurfaceIncrementUseCount(v30);
      }

      *(a1 + 16) = Texture;

      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v31 = image[0];
LABEL_72:
      CFRelease(v31);
      return;
    }

LABEL_47:
    v11 = VFXMTLPixelFormatSRGBVariant(v11);
    goto LABEL_48;
  }

  textureOut = 0;
  if (!CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a3, v7, 0, v11, Width, Height, 0, &textureOut))
  {
    v35 = CVMetalTextureGetTexture(textureOut);
    v36 = *(a1 + 24);
    v37 = *(a1 + 32);
    if (!v36 || objc_msgSend_pixelFormat(*(a1 + 24), v32, v33, v34) != v61 || objc_msgSend_width(v36, v38, v39, v40) != Width || objc_msgSend_height(v36, v41, v42, v43) != Height)
    {

      image[0] = 0;
      image[1] = 0;
      v65 = 0;
      CFXTextureDescriptorMake2D(Width, Height, v61, image);
      v50 = 19;
      if (v61 == v60)
      {
        v50 = 3;
      }

      LOBYTE(v65) = v50;
      v51 = objc_msgSend_gpuDevice(a2, v47, v48, v49);
      v62 = *image;
      v63 = v65;
      v52 = CFXGPUDeviceCreateTexture(v51, &v62);
      v36 = v52;
      *(a1 + 24) = v52;
      if (v61 == v60)
      {
        v55 = v52;
      }

      else
      {
        v55 = objc_msgSend_newTextureViewWithPixelFormat_(v52, v53, v60, v54);
      }

      v37 = v55;
      *(a1 + 32) = v55;
    }

    v58 = objc_msgSend_resourceManager(a2, v44, v45, v46);
    objc_msgSend_colorMatchSourceTexture_sourceColorSpace_destinationColorSpace_destinationTexture_renderContext_(v58, v59, v35, *(a1 + 40), v15, v37, a2);
    *(a1 + 16) = v36;
    v31 = textureOut;
    goto LABEL_72;
  }

  v25 = sub_1AF0D5194();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3920();
  }
}