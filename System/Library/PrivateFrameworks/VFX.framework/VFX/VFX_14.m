void sub_1AF1B38E8(void *a1)
{
  v2 = sub_1AF1B1FE0(a1);
  if (v2 >= 1)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = sub_1AF1B2030(a1, i);
      sub_1AF1A1A4C(v5);
    }
  }

  sub_1AF1B3398(a1);

  sub_1AF1BE334(@"kCFXShadableDidChange", a1, 0, 1u);
}

void sub_1AF1B3970(void *a1, void *cf)
{
  v4 = a1[9];
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[9] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[9] = v5;
  }

  if (cf)
  {
    v6 = sub_1AF1C3F64(a1);
    sub_1AF1C3CB4(cf, v6);
  }

  sub_1AF1B38E8(a1);
}

BOOL sub_1AF1B3A08(uint64_t a1)
{
  if (qword_1ED7346C8 != -1)
  {
    sub_1AFDDCF90();
  }

  return qword_1ED7346C0 == a1 || sub_1AF16EA90() == a1 || sub_1AF1BE9BC() == a1 || sub_1AF1C611C() == a1 || sub_1AF1C621C() == a1;
}

void sub_1AF1B3A88(CFTypeRef cf, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v6 = a6;
  v77 = *MEMORY[0x1E69E9840];
  if (a6 != 2)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == sub_1AF1BE9BC())
    {

      sub_1AF1BE38C(cf);
      return;
    }
  }

  v11 = sub_1AF1B2C1C(cf);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = sub_1AF1A4CE8(v11, 1);
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = sub_1AF1AE6EC(v13);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_1AF1A4F84(v12, 1);
  v18 = v17;
  if (!v17 || sub_1AF1AE6EC(v17) == v16)
  {
    if (v6 == 1)
    {
      if ((byte_1EB658619 & 1) == 0)
      {
        byte_1EB658619 = 1;
        v19 = sub_1AF0D5194();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDD150(v19);
        }
      }

      v6 = 0;
    }

    v20 = sub_1AF1A3CCC(v12);
    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v6 == 0;
    }

    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = v6;
    }

    if (v24)
    {
      if (v24 == 2 && a2 >= 1)
      {
        if (a5)
        {
          v25 = v18 == 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = !v25;
        do
        {
          v27 = 214013 * *a3 + 2531011;
          *a3 = v27;
          v28 = v27 % v16;
          *&v29 = sub_1AF1AF084(v14, (v27 % v16), v21, v22);
          *a4 = v29;
          if (v26)
          {
            *&v30 = sub_1AF1AF084(v18, v28, v21, v22);
            *a5 = v30;
          }

          ++a5;
          ++a4;
          --a2;
        }

        while (a2);
      }

      return;
    }

    if (a2 < 1)
    {
      return;
    }

    v32 = 0;
    v67 = a4;
    v68 = a5;
    v65 = v20;
    v66 = v12;
    while (1)
    {
      v33 = 214013 * *a3 + 2531011;
      *a3 = v33;
      v34 = sub_1AF1A3D1C(v12, v33 % v20, 1);
      v35 = sub_1AF1A7674(v34);
      v36 = 214013 * *a3 + 2531011;
      *a3 = v36;
      v37 = sub_1AF1A71E0(v34);
      if (v37 >= 1)
      {
        v38 = 0;
        v39 = v36 % v35;
        do
        {
          v40 = sub_1AF1A7C24(v34, v39, v38, 0);
          *&v45 = sub_1AF1AF084(v14, v40, v41, v42);
          *(&v74 + v38) = v45;
          if (v18)
          {
            *&v46 = sub_1AF1AF084(v18, v40, v43, v44);
            *(&v71 + v38) = v46;
          }

          ++v38;
        }

        while (v37 != v38);
      }

      if (v37 == 1)
      {
        v47 = v68;
        v67[v32] = v74;
        v20 = v65;
        v12 = v66;
        if (v68)
        {
          v59 = v71;
          goto LABEL_54;
        }
      }

      else
      {
        v47 = v68;
        v20 = v65;
        v12 = v66;
        if (v37 != 2)
        {
          if (v37 != 3)
          {
            goto LABEL_55;
          }

          v48 = 214013 * *a3 + 2531011;
          v49 = HIWORD(v48) * 0.000015259;
          v50 = 214013 * v48 + 2531011;
          v51 = HIWORD(v50) * 0.000015259;
          v52 = 214013 * v50 + 2531011;
          *a3 = v52;
          v53 = HIWORD(v52) * 0.000015259;
          v54 = 1.0 / ((v49 + v51) + v53);
          v55 = v51 * v54;
          v67[v32] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v75, v55), v74, v49 * v54), v76, v53 * v54);
          if (!v68)
          {
            goto LABEL_55;
          }

          v56 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v72, v55), v71, v49 * v54), v73, v53 * v54);
          v57 = vmulq_f32(v56, v56);
          *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
          *v57.f32 = vrsqrte_f32(v58);
          *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
          v59 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
          goto LABEL_54;
        }

        v60 = 214013 * *a3 + 2531011;
        *a3 = v60;
        v61 = HIWORD(v60) * 0.000015259;
        v67[v32] = vmlaq_n_f32(v74, vsubq_f32(v75, v74), v61);
        if (v68)
        {
          v62 = vmlaq_n_f32(v71, vsubq_f32(v72, v71), v61);
          v63 = vmulq_f32(v62, v62);
          *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
          *v63.f32 = vrsqrte_f32(v64);
          *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
          v59 = vmulq_n_f32(v62, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
LABEL_54:
          v47[v32] = v59;
        }
      }

LABEL_55:
      if (++v32 == a2)
      {
        return;
      }
    }
  }

  if ((byte_1EB658618 & 1) == 0)
  {
    byte_1EB658618 = 1;
    v31 = sub_1AF0D5194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDD10C(v31);
    }
  }
}

BOOL sub_1AF1B3F8C(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1 & 3;
  if ((v1 & 3) == 0)
  {
    v4 = sub_1AF1B2C1C(a1);
    v2 = 1;
    v5 = sub_1AF1A516C(v4, 1);
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        if (sub_1AF1A7034(ValueAtIndex))
        {
          break;
        }

        if (v7 == ++v8)
        {
          v2 = 1;
          goto LABEL_8;
        }
      }

      v2 = 2;
    }

LABEL_8:
    *(a1 + 200) = v2 | v1;
  }

  return v2 == 1;
}

BOOL sub_1AF1B402C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 176) - 1 < 3)
  {
    return sub_1AF1B3F8C(a1);
  }

  if (*(a1 + 176))
  {
    return sub_1AF170D38(a1);
  }

  return 0;
}

BOOL sub_1AF1B40A0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return !sub_1AF170998(a1);
}

__n128 sub_1AF1B40F0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = a1[11];
  *a2 = result;
  a2[1].n128_u64[0] = a1[12].n128_u64[0];
  return result;
}

uint64_t sub_1AF1B4154(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a3 = vsubq_f32(*v4, v4[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    result = *(a1 + 64);
    if (result)
    {
      return sub_1AF1C3958(result, 0, a3, a4);
    }
  }

  return result;
}

const void *sub_1AF1B4194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 64);
  if (result)
  {
    return sub_1AF1C39FC(result, 0, a3);
  }

  return result;
}

void sub_1AF1B41A8(uint64_t a1)
{
  v2 = sub_1AF1B1F84(a1);
  if (v2)
  {
    v3 = sub_1AF1C3734(v2);
    sub_1AF1B2E54(a1, v3);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t sub_1AF1B4208(uint64_t a1, const void *a2)
{
  v3 = a1;
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return v3;
  }

  v5 = sub_1AF1B1FE0(v3);
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = sub_1AF1B2030(v3, v7);
      v9 = sub_1AF1C4020(v8, a2);
      if (v9)
      {
        return v9;
      }
    }

    while (v6 != ++v7);
  }

  v10 = sub_1AF1B1F84(v3);

  return sub_1AF1C4020(v10, a2);
}

uint64_t sub_1AF1B42B4(uint64_t a1)
{
  v2 = [VFXModel __createCFObject]_0();
  sub_1AF1B2C84(a1, v2);
  return v2;
}

uint64_t sub_1AF1B42EC()
{
  if (qword_1ED73ABF8 != -1)
  {
    sub_1AFDDD194();
  }

  return qword_1ED73ABF0;
}

double sub_1AF1B4324()
{
  qword_1ED73ABF0 = _CFRuntimeRegisterClass();
  qword_1ED72E9B0 = sub_1AF1B5EEC;
  result = *&xmmword_1F24E7F90;
  unk_1ED72E988 = xmmword_1F24E7F90;
  qword_1ED72E970 = sub_1AF1B5F5C;
  unk_1ED72E998 = unk_1F24E7FA0;
  qword_1ED72E9A8 = qword_1F24E7FB0;
  qword_1ED72E9C0 = sub_1AF1B6144;
  return result;
}

uint64_t sub_1AF1B43A4()
{
  if (qword_1ED73ABF8 != -1)
  {
    sub_1AFDDD194();
  }

  result = sub_1AF0D160C(qword_1ED73ABF0, 0xC0uLL);
  *(result + 192) = 1;
  *(result + 184) = 0x13C23D70ALL;
  return result;
}

uint64_t sub_1AF1B4400(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    *(result + 64) = a2;
    ++*(result + 188);
    result = *(result + 200);
    if (result)
    {
      return sub_1AF1B64F8(result);
    }
  }

  return result;
}

__n128 sub_1AF1B4434@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 88);
  *(a2 + 8) = *(a1 + 96);
  *(a2 + 24) = *(a1 + 112);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 40) = *(a1 + 128);
  *(a2 + 48) = *(a1 + 136);
  *(a2 + 56) = *(a1 + 144);
  result = *(a1 + 152);
  *(a2 + 64) = result;
  return result;
}

void sub_1AF1B4478(uint64_t a1, CFTypeRef cf, size_t __n, const void **a4)
{
  v5 = __n;
  v7 = *(a1 + 88);
  v8 = *(a1 + 72);
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 72) = v10;
  }

  ++*(a1 + 188);
  *(a1 + 193) = v5;
  v11 = *a4;
  v12 = *(a4 + 1);
  *(a1 + 88) = *a4;
  if (v12)
  {
    v13 = *(a1 + 92);
    *(a1 + 92) = v12;
    v14 = (4 * v11);
    if (v11 != v7)
    {
      v15 = *(a1 + 96);
      if (v11)
      {
        v16 = malloc_type_realloc(v15, (4 * v11), 0x390C0F67uLL);
      }

      else
      {
        free(v15);
        v16 = 0;
      }

      *(a1 + 96) = v16;
    }

    if (*a4)
    {
      memcpy(*(a1 + 96), a4[1], v14);
    }

    v17 = *(a4 + 1);
    v18 = (4 * v17);
    if (v17 != v13)
    {
      v19 = *(a1 + 104);
      if (v17)
      {
        v20 = malloc_type_realloc(v19, (4 * v17), 0xB1F0F3B9uLL);
      }

      else
      {
        free(v19);
        v20 = 0;
      }

      *(a1 + 104) = v20;
      v13 = *(a4 + 1);
    }

    if (v13)
    {
      memcpy(*(a1 + 104), a4[2], v18);
    }
  }

  else
  {
    *(a1 + 92) = 0;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
    free(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v21 = *(a1 + 112);
  v22 = *(a4 + 6);
  *(a1 + 112) = v22;
  if (v22)
  {
    v23 = (4 * v22);
    if (v22 == v21 || (*(a1 + 120) = malloc_type_realloc(*(a1 + 120), (4 * v22), 0x9C87AB7CuLL), *(a4 + 6)))
    {
      memcpy(*(a1 + 120), a4[4], v23);
    }

    v24 = *(a1 + 128);
    v25 = *(a4 + 10);
    *(a1 + 128) = v25;
    v26 = (4 * v25);
    if (v25 != v24)
    {
      v27 = *(a1 + 136);
      if (v25)
      {
        v28 = malloc_type_realloc(v27, (4 * v25), 0xB67FBF09uLL);
      }

      else
      {
        free(v27);
        v28 = 0;
      }

      *(a1 + 136) = v28;
      v24 = *(a4 + 10);
    }

    if (v24)
    {
      memcpy(*(a1 + 136), a4[6], v26);
    }

    v29 = *(a4 + 14);
    if (v29)
    {
      v30 = *(a1 + 144);
      *(a1 + 144) = v29;
      v31 = *(a4 + 6);
      v32 = (4 * v31);
      if (v31 != v21)
      {
        v33 = *(a1 + 152);
        if (v31)
        {
          v34 = malloc_type_realloc(v33, (4 * v31), 0x4B7040D0uLL);
        }

        else
        {
          free(v33);
          v34 = 0;
        }

        *(a1 + 152) = v34;
      }

      if (*a4)
      {
        memcpy(*(a1 + 152), a4[8], v32);
      }

      v35 = *(a4 + 14);
      v36 = (4 * v35);
      if (v35 != v30)
      {
        v37 = *(a1 + 160);
        if (*(a4 + 1))
        {
          v38 = malloc_type_realloc(v37, v36, 0x47AE1FFAuLL);
        }

        else
        {
          free(v37);
          v38 = 0;
        }

        *(a1 + 160) = v38;
        v30 = *(a4 + 14);
      }

      if (v30)
      {
        memcpy(*(a1 + 160), a4[9], v36);
      }
    }

    else
    {
      *(a1 + 144) = 0;
      free(*(a1 + 152));
      *(a1 + 152) = 0;
      free(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    free(*(a1 + 120));
    *(a1 + 120) = 0;
    free(*(a1 + 136));
    *(a1 + 136) = 0;
    free(*(a1 + 152));
    *(a1 + 152) = 0;
    free(*(a1 + 160));
    *(a1 + 160) = 0;
    if (!v12)
    {
      free(*(a1 + 168));
      *(a1 + 168) = 0;
    }
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    sub_1AF1C3A90(*(a1 + 80), *(a1 + 48));
    *(a1 + 80) = 0;
    sub_1AF1B47D4(a1, v39);
    sub_1AF1703F8(v39, 0);
    CFRelease(v39);
  }

  v40 = *(a1 + 176);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 176) = 0;
  }
}

void sub_1AF1B47D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 4 * v2);
    CFDataSetLength(Mutable, 4 * v2);
    if (a2)
    {
      a2 = sub_1AF17032C(a2);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    for (i = 0; i != v2; ++i)
    {
      v8 = 0;
      if (a2 && sub_1AF12DB9C(a2) > i)
      {
        v8 = *sub_1AF1CAF40(a2, i, v9, v10);
      }

      *&MutableBytePtr[4 * i] = v8;
    }

    v11 = sub_1AF1CAE64(1, 1, v2, 0, 0);
    v12 = sub_1AF16FC00(v11, 0);
    sub_1AF16FCB0(v12, Mutable);
    sub_1AF1CB108(v11, v12, v13, v14);
    CFRelease(v11);
    CFRelease(Mutable);
    sub_1AF1B4994(a1, v12, v15);

    CFRelease(v12);
  }
}

void sub_1AF1B4918(uint64_t a1, CFArrayRef theArray, size_t a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = Count;
  sub_1AF1B4478(a1, theArray, a3, &v7);
}

float sub_1AF1B4994(uint64_t a1, const void *a2, float result)
{
  v4 = *(a1 + 80);
  if (v4 == a2)
  {
    return result;
  }

  if (v4)
  {
    sub_1AF1703F8(v4, 0);
    sub_1AF1C3A90(*(a1 + 80), *(a1 + 48));
    v6 = *(a1 + 80);
    if (v6 == a2)
    {
      goto LABEL_12;
    }

    if (v6)
    {
      CFRelease(v6);
      *(a1 + 80) = 0;
    }

    if (!a2)
    {
      v6 = 0;
LABEL_11:
      *(a1 + 80) = v6;
LABEL_12:
      if (v6)
      {
        sub_1AF1C3CB4(v6, *(a1 + 48));
        v6 = *(a1 + 80);
      }

      goto LABEL_15;
    }

LABEL_10:
    v6 = CFRetain(a2);
    goto LABEL_11;
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v6 = 0;
LABEL_15:
  sub_1AF1703F8(v6, a1);

  return sub_1AF1B4A50(a1, v7, v8, v9, v10);
}

float sub_1AF1B4A50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, float result)
{
  v46 = *MEMORY[0x1E69E9840];
  ++*(a1 + 188);
  if (*(a1 + 168))
  {
    v6 = *(a1 + 80);
    if (!v6)
    {
      sub_1AF1B47D4(a1, 0);
      v6 = *(a1 + 80);
    }

    v7 = sub_1AF170020(v6, a2, a3, a4);
    v9 = v8;
    if (*(a1 + 88) == v8)
    {
      v10 = v7;
      v11 = *(a1 + 112);
      v12 = *(a1 + 92) + v11 + v8 + *(a1 + 144);
      v37 = 0;
      *buf = 0;
      if (v8)
      {
        v13 = 0;
        v14 = 4 * v8;
        do
        {
          if (*(a1 + 92))
          {
            v15 = *(*(a1 + 96) + v13);
          }

          else
          {
            v15 = 0;
          }

          sub_1AF1B6148(*(a1 + 168), buf, &v37, v15, *(a1 + 104), v12, *&v10[v13]);
          v13 += 4;
        }

        while (v14 != v13);
        v11 = *(a1 + 112);
      }

      v36 = 0;
      if (v11)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(*(a1 + 120) + 4 * v16);
          if (v18)
          {
            v19 = 3.4028e38;
            v20 = *(*(a1 + 120) + 4 * v16);
            v21 = v17;
            do
            {
              v22 = *(*(a1 + 136) + 4 * v21++);
              v19 = fminf(v19, *&v10[4 * v22]);
              --v20;
            }

            while (v20);
            v17 += v18;
          }

          else
          {
            v19 = 3.4028e38;
          }

          if (*(a1 + 144))
          {
            v23 = *(*(a1 + 152) + 4 * v16);
          }

          else
          {
            v23 = 0;
          }

          sub_1AF1B6148(*(a1 + 168), buf, &v36, v23, *(a1 + 160), v12, v19);
          ++v16;
        }

        while (v16 < *(a1 + 112));
      }

      if (*buf != v12)
      {
        v24 = sub_1AF0D5194();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDD1A8(v24, v25, v26, v27, v28, v29, v30, v31);
        }
      }
    }

    else
    {
      v32 = sub_1AF0D5194();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 88);
        v34 = *(a1 + 92);
        v35 = *(a1 + 112);
        *buf = 67109888;
        v39 = v9;
        v40 = 1024;
        v41 = v33;
        v42 = 1024;
        v43 = v34;
        v44 = 1024;
        v45 = v35;
        _os_log_error_impl(&dword_1AF0CE000, v32, OS_LOG_TYPE_ERROR, "Error: Morpher has %d targets weights, but has %d main targets (note: there are %d in-betweens and %d correctives)", buf, 0x1Au);
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B4C94(uint64_t a1)
{
  result = *(a1 + 80);
  if (!result)
  {
    sub_1AF1B47D4(a1, 0);
    return *(a1 + 80);
  }

  return result;
}

__CFArray *sub_1AF1B4CD4(uint64_t a1)
{
  if (*(a1 + 92))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x1E695E9C0]);
    if (*(a1 + 88))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v3 += *(*(a1 + 96) + 4 * v4);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v3 - 1);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        ++v4;
      }

      while (v4 < *(a1 + 88));
    }

    return Mutable;
  }

  if (*(a1 + 112))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x1E695E9C0]);
    if (*(a1 + 88))
    {
      v6 = 0;
      do
      {
        v7 = CFArrayGetValueAtIndex(*(a1 + 72), v6);
        CFArrayAppendValue(Mutable, v7);
        ++v6;
      }

      while (v6 < *(a1 + 88));
    }

    return Mutable;
  }

  v8 = *(a1 + 72);
  if (!v8)
  {
    return 0;
  }

  return CFRetain(v8);
}

uint64_t sub_1AF1B4DEC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 80);
  if (!v10)
  {
    sub_1AF1B47D4(a1, 0);
    v10 = *(a1 + 80);
    if (!v10)
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0208(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      v10 = 0;
    }
  }

  result = sub_1AF17032C(v10);
  if (result)
  {
    return sub_1AF12DB9C(result);
  }

  return result;
}

float sub_1AF1B4E7C(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 80);
  if (!v12)
  {
    sub_1AF1B47D4(a1, 0);
    v12 = *(a1 + 80);
    if (!v12)
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0208(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v12 = 0;
    }
  }

  v21 = sub_1AF17032C(v12);
  v24 = 0.0;
  if (sub_1AF12DB9C(v21) > a2)
  {
    v25 = sub_1AF1CAF40(v21, a2, v22, v23);
    if (v25)
    {
      return *v25;
    }
  }

  return v24;
}

void sub_1AF1B4F44(uint64_t a1, const char *a2, float a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 80);
  if (!v14)
  {
    sub_1AF1B47D4(a1, 0);
    v14 = *(a1 + 80);
    if (!v14)
    {
      v15 = sub_1AF0D5194();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0208(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v14 = 0;
    }
  }

  v23 = sub_1AF17032C(v14);
  if (sub_1AF12DB9C(v23) > a2)
  {
    v26 = sub_1AF1CAFE0(v23, a2, v24, v25);
    if (v26)
    {
      v30 = *v26;
      if (*v26 != a3)
      {
        *v26 = a3;
        sub_1AF1B4A50(a1, v27, v28, v29, v30);
      }
    }
  }
}

uint64_t sub_1AF1B501C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1B43A4();
  *(v10 + 64) = *(a1 + 64);
  *(v10 + 184) = *(a1 + 184);
  *(v10 + 192) = *(a1 + 192);
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = sub_1AF170120(v11);
    sub_1AF1B4994(v10, v12, v13);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    *(v10 + 72) = CFArrayCreateMutableCopy(0, 0, v14);
  }

  v15 = *(a1 + 88);
  *(v10 + 88) = v15;
  *(v10 + 112) = *(a1 + 112);
  *(v10 + 128) = *(a1 + 128);
  *(v10 + 144) = *(a1 + 144);
  if (*(a1 + 96))
  {
    v16 = 4 * v15;
    v17 = malloc_type_malloc(v16, 0xD6801D70uLL);
    *(v10 + 96) = v17;
    memcpy(v17, *(a1 + 96), v16);
  }

  if (*(a1 + 104))
  {
    v18 = 4 * *(a1 + 92);
    v19 = malloc_type_malloc(v18, 0x9C72F448uLL);
    *(v10 + 104) = v19;
    memcpy(v19, *(a1 + 104), v18);
  }

  if (*(a1 + 120))
  {
    v20 = 4 * *(a1 + 112);
    v21 = malloc_type_malloc(v20, 0x7998B04DuLL);
    *(v10 + 120) = v21;
    memcpy(v21, *(a1 + 120), v20);
  }

  if (*(a1 + 136))
  {
    v22 = 4 * *(a1 + 128);
    v23 = malloc_type_malloc(v22, 0x68B89E05uLL);
    *(v10 + 136) = v23;
    memcpy(v23, *(a1 + 136), v22);
  }

  if (*(a1 + 152))
  {
    v24 = 4 * *(a1 + 112);
    v25 = malloc_type_malloc(v24, 0x7F148075uLL);
    *(v10 + 152) = v25;
    memcpy(v25, *(a1 + 152), v24);
  }

  if (*(a1 + 160))
  {
    v26 = 4 * *(a1 + 144);
    v27 = malloc_type_malloc(v26, 0xFD8886BuLL);
    *(v10 + 160) = v27;
    memcpy(v27, *(a1 + 160), v26);
  }

  if (*(a1 + 168))
  {
    v28 = 4 * (*(a1 + 112) + *(a1 + 92) + *(a1 + 144) + *(a1 + 88));
    v29 = malloc_type_malloc(v28, 0x796B9668uLL);
    *(v10 + 168) = v29;
    memcpy(v29, *(a1 + 168), v28);
  }

  sub_1AF16D160(a1, v10);
  return v10;
}

uint64_t sub_1AF1B526C(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 193) == a3)
  {
    return 0;
  }

  v6 = a1;
  if (sub_1AF1706B8(a2) != 1)
  {
    return 0;
  }

  *(v6 + 193) = a3;
  if (a3)
  {
    sub_1AF1B5708(v6, a2, 1, a4);
  }

  Count = CFArrayGetCount(*(v6 + 72));
  if (Count >= 1)
  {
    v35 = a2;
    v7 = 0;
    allocator = *MEMORY[0x1E695E480];
    v36 = v6;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 72), v7);
      v52 = 0;
      v53 = 0;
      v52 = sub_1AF1A4CE8(ValueAtIndex, 0);
      v9 = sub_1AF1A4F84(ValueAtIndex, 0);
      v53 = v9;
      if (v52)
      {
        v10 = sub_1AF1A4C6C(ValueAtIndex, 0, 0);
        v9 = v53;
      }

      else
      {
        v10 = -1;
      }

      v50 = v10;
      if (v9)
      {
        v11 = sub_1AF1A4C6C(ValueAtIndex, 1, 0);
        v12 = v53 == 0;
        v51 = v11;
        if (v53)
        {
          v13 = 2;
LABEL_15:
          if (v11 != v10)
          {
            v14 = sub_1AF0D5194();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDDD298(v48, &v49, v14);
            }
          }

          goto LABEL_18;
        }
      }

      else
      {
        v11 = -1;
        v51 = -1;
        v12 = 1;
      }

      v13 = 1;
      if (!v12)
      {
        goto LABEL_15;
      }

LABEL_18:
      if (a3)
      {
        values = sub_1AF27FC18(&v52, v13, 1);
        if (values)
        {
          v15 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
          sub_1AF1A5208(ValueAtIndex, v15);
          CFRelease(v15);
          CFRelease(values);
          for (i = 0; i != v13; ++i)
          {
            v17 = sub_1AF1AE738(*(&v52 + i), values, *(&v50 + i));
            if (v17)
            {
              v18 = v17;
              if (a4)
              {
                (*(a4 + 16))(a4, ValueAtIndex, *(&v52 + i), v17);
              }

              sub_1AF1A44D4(ValueAtIndex, v18, 0, 255);
              CFRelease(v18);
            }

            else
            {
              v19 = sub_1AF0D5194();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                v45 = i;
                v46 = 1024;
                v47 = v7;
                _os_log_error_impl(&dword_1AF0CE000, v19, OS_LOG_TYPE_ERROR, "Error: Failed to create packed source %d for sparse morph target %d", buf, 0xEu);
              }
            }
          }
        }

        else
        {
          v25 = sub_1AF0D5194();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v45 = v7;
            _os_log_error_impl(&dword_1AF0CE000, v25, OS_LOG_TYPE_ERROR, "Error: Could not create intervals for sparse morph target %d (this morph target is useless)", buf, 8u);
          }

          sub_1AF1A5208(ValueAtIndex, 0);
          v26 = &v52;
          do
          {
            v27 = *v26++;
            sub_1AF1A4880(ValueAtIndex, v27);
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        if (sub_1AF1A3CCC(ValueAtIndex) != 1)
        {
          v20 = sub_1AF0D5194();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDD2DC(v42, &v43, v20);
          }
        }

        if (*(v6 + 64) != 1)
        {
          v21 = sub_1AF0D5194();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDD320(v40, &v41, v21);
          }
        }

        v22 = sub_1AF1A3D1C(ValueAtIndex, 0, 0);
        v23 = sub_1AF1A4CE8(v35, 0);
        if (v23)
        {
          v24 = sub_1AF1AE6EC(v23);
        }

        else
        {
          v24 = 0;
        }

        v28 = &v50;
        v29 = &v52;
        do
        {
          v30 = *v28++;
          v31 = sub_1AF1AEC88(*v29, v22, v24, v30);
          if (v31)
          {
            v32 = v31;
            if (a4)
            {
              (*(a4 + 16))(a4, ValueAtIndex, *v29, v31);
            }

            sub_1AF1A44D4(ValueAtIndex, v32, 0, 255);
            CFRelease(v32);
          }

          ++v29;
          --v13;
        }

        while (v13);
      }

      ++v7;
      v6 = v36;
    }

    while (v7 != Count);
  }

  return 1;
}

uint64_t sub_1AF1B5708(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  if (*(a1 + 64) == a3)
  {
    return 0;
  }

  if (sub_1AF1706B8(a2) != 1)
  {
    return 0;
  }

  *(a1 + 64) = a3;
  v20 = sub_1AF1A4CE8(a2, 0);
  v9 = sub_1AF1A4F84(a2, 0);
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v12 = sub_1AF1A4CE8(ValueAtIndex, 0);
      v13 = sub_1AF1A4F84(ValueAtIndex, 0);
      if (v13)
      {
        v14 = v9 == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      if (a3 == 1)
      {
        v16 = sub_1AF1ADEA8(v20, v12);
        if (v15)
        {
          v17 = sub_1AF1ADEA8(v9, v13);
          goto LABEL_17;
        }
      }

      else
      {
        v16 = sub_1AF1AE420(v20, v12);
        if (v15)
        {
          v17 = sub_1AF1AE420(v9, v13);
LABEL_17:
          v18 = v17;
          if (v16)
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }
      }

      v18 = 0;
      if (v16)
      {
LABEL_20:
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v12, v16);
        }

        sub_1AF1A44D4(ValueAtIndex, v16, 0, 255);
        CFRelease(v16);
      }

LABEL_23:
      if (v18)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v13, v18);
        }

        sub_1AF1A44D4(ValueAtIndex, v18, 0, 255);
        CFRelease(v18);
      }
    }
  }

  return 1;
}

uint64_t sub_1AF1B58F8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 193);
}

const UInt8 *sub_1AF1B5940(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 168);
  if (result || (v5 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144)) != 0 && (*(a1 + 168) = malloc_type_malloc(4 * (*(a1 + 88) + v5), 0x100004052888210uLL), sub_1AF1B4A50(a1, v6, v7, v8, v9), (result = *(a1 + 168)) != 0))
  {
    *a2 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144) + *(a1 + 88);
  }

  else
  {
    v10 = *(a1 + 80);
    if (!v10)
    {
      sub_1AF1B47D4(a1, 0);
      v10 = *(a1 + 80);
    }

    v11 = sub_1AF17032C(v10);
    *a2 = sub_1AF12DB9C(v11);

    return sub_1AF1CAF40(v11, 0, v12, v13);
  }

  return result;
}

uint64_t sub_1AF1B5A20(uint64_t a1, void *key)
{
  *&v18[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 176);
  if (!v4)
  {
    v5 = sub_1AF1B4CD4(a1);
    if (!v5)
    {
      return -1;
    }

    v6 = v5;
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v13 = sub_1AF1A5748(ValueAtIndex);
        if (!v13)
        {
          v14 = sub_1AF0D5194();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDD364(v17, v18, v14);
          }
        }

        CFDictionaryAddValue(Mutable, v13, i);
      }
    }

    *(a1 + 176) = CFDictionaryCreateCopy(v7, Mutable);
    CFRelease(Mutable);
    CFRelease(v6);
    v4 = *(a1 + 176);
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v4, key, &value))
  {
    return value;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1AF1B5B9C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 194);
}

void sub_1AF1B5BE4(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 194) = a2;
}

float sub_1AF1B5C38(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

void sub_1AF1B5C80(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 184) = a2;
}

id sub_1AF1B5CD8(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationMorphWillDie", a1, 0, 1u);
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_1AF1703F8(v2, 0);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 176) = 0;
  }

  free(*(a1 + 168));
  free(*(a1 + 96));
  free(*(a1 + 104));
  free(*(a1 + 120));
  free(*(a1 + 136));
  free(*(a1 + 152));
  free(*(a1 + 160));

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1B5DA4(uint64_t a1)
{
  v2 = sub_1AF1B4CD4(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v6 = sub_1AF3753A8(a1);
  v7 = sub_1AF16CBEC(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v6, a1, v7);
  CFStringAppendFormat(Mutable, 0, @"  calc:%d morphNrm:%d targets:%ld\n", *(a1 + 64), *(a1 + 192), Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      v10 = sub_1AF1B4E7C(a1, i);
      CFStringAppendFormat(Mutable, 0, @"[%ld] weight:%f %@\n", i, v10, ValueAtIndex);
    }
  }

  CFStringAppend(Mutable, @">");
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t sub_1AF1B5EEC(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    sub_1AF1B47D4(a1, 0);
    v6 = *(a1 + 80);
  }

  return sub_1AF1C4020(v6, a2);
}

__CFArray *sub_1AF1B5F5C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 72);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        v8 = sub_1AF16CBEC(ValueAtIndex);
        if (v8)
        {
          v9 = v8;
          CFRetain(v8);
        }

        else
        {
          v9 = CFStringCreateWithFormat(0, 0, @"<unnamed %d>", i);
        }

        v10 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v16 = 1;
        valuePtr = 5;
        v15 = ValueAtIndex;
        v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
        v13 = CFNumberCreate(0, kCFNumberLongType, &v15);
        CFDictionarySetValue(v10, @"name", v9);
        CFDictionarySetValue(v10, @"type", v11);
        CFDictionarySetValue(v10, @"address", v13);
        CFDictionarySetValue(v10, @"semantic", v12);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v12);
        CFRelease(v10);
        CFRelease(v13);
        CFRelease(v11);
        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

uint64_t sub_1AF1B6120(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2)
    {
      return (*(a2 + 16))(a2, v2);
    }
  }

  return result;
}

void sub_1AF1B6148(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned int a4, uint64_t a5, unsigned int a6, float a7)
{
  v7 = *a2;
  v8 = *a3;
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a6 - v7;
    if (a6 < v7)
    {
      v12 = 0;
    }

    v13 = a1 + 4 * v7;
    while (1)
    {
      if (v12 == v10)
      {
        v18 = sub_1AF0D5194();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDD3A8(v7 + v10, a6, v18);
        }

        return;
      }

      v14 = v10 - a4;
      if (v11)
      {
        *(v13 + 4 * v10) = 0;
      }

      else if (a7 >= 1.0)
      {
        if (v14 != -1)
        {
          goto LABEL_16;
        }

        *(v13 + 4 * v10) = a7;
      }

      else
      {
        if (v14 == -1)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = *(a5 + 4 * v8);
        }

        if (v15 < a7)
        {
LABEL_16:
          v11 = 0;
          *(v13 + 4 * v10) = 0;
          goto LABEL_17;
        }

        if (v10)
        {
          v16 = *(a5 + 4 * (v8 - 1));
          v17 = (a7 - v16) / (v15 - v16);
          *(a1 + 4 * (v7 - 1 + v10)) = 1.0 - v17;
        }

        else
        {
          v17 = a7 / v15;
        }

        *(v13 + 4 * v10) = v17;
      }

      v11 = 1;
LABEL_17:
      if (v14 != -1)
      {
        ++v8;
      }

      if (++v10 == a4)
      {
        v19 = v7 + v10;
        goto LABEL_28;
      }
    }
  }

  v19 = v7 + 1;
  *(a1 + 4 * v7) = a7;
LABEL_28:
  *a2 = v19;
  *a3 = v8;
}

const __CFArray *sub_1AF1B6288(uint64_t a1)
{
  result = sub_1AF15B294(*(a1 + 72));
  if (result)
  {
    result = CFArrayGetCount(result);
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 != *(a1 + 96))
  {
    free(*(a1 + 88));
    if (v3)
    {
      result = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
    }

    else
    {
      result = 0;
    }

    *(a1 + 88) = result;
    *(a1 + 96) = v3;
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t sub_1AF1B630C()
{
  if (qword_1ED73ABE8 != -1)
  {
    sub_1AFDDD430();
  }

  return qword_1ED73ABE0;
}

double sub_1AF1B6344()
{
  qword_1ED73ABE0 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E7FD8;
  unk_1ED72E8B0 = xmmword_1F24E7FD8;
  unk_1ED72E8C0 = unk_1F24E7FE8;
  qword_1ED72E8D0 = qword_1F24E7FF8;
  unk_1ED72E8D8 = sub_1AF1B684C;
  qword_1ED72E898 = sub_1AF1B68C8;
  return result;
}

uint64_t sub_1AF1B63B0(const void *a1)
{
  if (qword_1ED73ABE8 != -1)
  {
    sub_1AFDDD430();
  }

  v2 = sub_1AF0D160C(qword_1ED73ABE0, 0x58uLL);
  v3 = sub_1AF1C3F64(v2);
  if (v3)
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      sub_1AF1C3A90(v4, v3);
    }
  }

  v5 = *(v2 + 72);
  if (!v5)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_1AF1B43F8(v5, 0);
  v6 = *(v2 + 72);
  if (v6 == a1)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    CFRelease(v6);
    *(v2 + 72) = 0;
  }

  if (a1)
  {
LABEL_13:
    v7 = CFRetain(a1);
    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:
  *(v2 + 72) = v7;
LABEL_15:
  free(*(v2 + 88));
  *(v2 + 88) = 0;
  *(v2 + 100) = 0;
  if (a1)
  {
    sub_1AF1B43F8(a1, v2);
    sub_1AF1B6288(v2);
  }

  if (v3)
  {
    v8 = *(v2 + 72);
    if (v8)
    {
      sub_1AF1C3CB4(v8, v3);
    }
  }

  return v2;
}

CFTypeRef *sub_1AF1B64A4(uint64_t a1)
{
  v2 = sub_1AF1B501C(*(a1 + 72));
  v3 = sub_1AF1B63B0(v2);
  CFRelease(v2);
  sub_1AF16D160(a1, v3);
  return v3;
}

uint64_t sub_1AF1B6500(uint64_t a1, int a2, void *a3, const UInt8 **a4, _DWORD *a5, float *a6)
{
  if (!a1)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD444(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(a1 + 72);
  if (!v20)
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 100);
  v30 = sub_1AF12EE68(v20);
  if (v29 != a2 || v29 == 0)
  {
    v32 = 2;
LABEL_16:
    *(a1 + 80) = v30;
    sub_1AF1B6288(a1);
    *a3 = *(a1 + 88);
    v34 = 0;
    *a4 = sub_1AF1B5940(v20, &v34);
    *a5 = v34;
    *a6 = sub_1AF1B442C(v20);
    return v32;
  }

  if (*(a1 + 80) != v30)
  {
    v32 = 1;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1AF1B6618(uint64_t a1)
{
  v7 = 0;
  v2 = sub_1AF1B5940(*(a1 + 72), &v7);
  v3 = sub_1AF1B442C(*(a1 + 72));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 88);
    do
    {
      if (vabds_f32(*v2, *v5) > v3)
      {
        *v5 = *v2;
      }

      ++v2;
      ++v5;
      --v4;
    }

    while (v4);
  }

  result = (*(a1 + 100) + 1);
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1AF1B669C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD444(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

CFTypeRef sub_1AF1B66E4(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
    *(a1 + 80) = 0;
  }

  return result;
}

id sub_1AF1B6740(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1AF1B43F8(v2, 0);
    CFRelease(*(a1 + 72));
  }

  free(*(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1B67B0(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | geometry:%p state:%d\n", v3, a1, *(a1 + 64), *(a1 + 80));
  CFStringAppendFormat(Mutable, 0, @"  morph:%@\n", *(a1 + 72));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1B684C(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return sub_1AF1C4020(v6, a2);
}

uint64_t sub_1AF1B68A8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

__CFArray *sub_1AF1B68C8(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 2;
  valuePtr = 5;
  v8 = a1 + 72;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v8);
  CFDictionarySetValue(v3, @"name", @"morph");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  return Mutable;
}

uint64_t sub_1AF1B6A14(CFDataRef theData, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5)
  {
    return 0;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    MutableCopy = CFDataCreateMutableCopy(0, Length, theData);
  }

  else
  {
    v13 = a4 * a3 * sub_1AF288070(a5);
    MutableCopy = CFDataCreateMutable(0, 0);
    CFDataSetLength(MutableCopy, v13);
  }

  v14 = sub_1AF288070(a5);
  v15 = sub_1AF1ADDB0(a2, MutableCopy, a5, a4, a3, v14 * a4, 0);
  CFRelease(MutableCopy);
  return v15;
}

uint64_t sub_1AF1B6AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  result = sub_1AF1CAED0(v8);
  v10 = result - a4;
  if (result > a4)
  {
    v11 = sub_1AF1AE3D8(a1) - 1;
    v12 = 1.0;
    v13 = 1.0;
    if (v11 <= 5)
    {
      v12 = flt_1AFE21C30[v11];
      v13 = flt_1AFE21C48[v11];
    }

    result = sub_1AF121B74(v8);
    if (a3 >= 1)
    {
      v14 = result;
      v15 = 0;
      v16 = a2 + a4;
      v17 = a2 + 8 * a4;
      v18 = a2 + 4 * a4;
      do
      {
        v19 = 0;
        do
        {
          if (v10 - 1 == v19)
          {
            v20 = v12;
          }

          else
          {
            v20 = v13;
          }

          result = sub_1AF1CAED8(v8);
          if (result > 5u)
          {
            if (result != 6)
            {
              if (result != 15)
              {
                goto LABEL_19;
              }

LABEL_16:
              *(v16 + v19) = v20;
              goto LABEL_19;
            }

            *(v17 + 8 * v19) = v20;
          }

          else if (result == 1)
          {
            *(v18 + 4 * v19) = v20;
          }

          else if (result == 4)
          {
            goto LABEL_16;
          }

LABEL_19:
          ++v19;
        }

        while (v10 != v19);
        ++v15;
        v16 += v14;
        v17 += v14;
        v18 += v14;
      }

      while (v15 != a3);
    }
  }

  return result;
}

void sub_1AF1B6C38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v7, v8, a3, a4, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1CAFE0(v13, a2, a3, a4);
  v15 = a5;
  v15.n128_u32[3] = 0;
  v18 = v15;
  v16 = sub_1AF1CAEE0(v13);
  sub_1AF279B88(v16, v14, v18);
}

void sub_1AF1B6CC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  if (!a1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v7, v8, a3, a4, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1CAFE0(v13, a2, a3, a4);
  v15 = sub_1AF1CAEE0(v13);
  sub_1AF279B88(v15, v14, a5);
}

__CFData *sub_1AF1B6D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, a2, a3, a4, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 64);
  v12 = sub_1AF1CAEF0(v11, a2, a3, a4);
  v13 = sub_1AF121B74(v11);
  if (!v12)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC148(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  Length = CFDataGetLength(v12);
  if (Length != sub_1AF12DB9C(v11) * v13)
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD4BC(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  v31 = CFDataGetLength(v12);
  CFDataSetLength(v12, v31 + v13 * a2);
  v32 = sub_1AF12DB9C(v11);
  sub_1AF1CB354(v11, &v32[a2]);
  return sub_1AF1CAFE0(v11, v32, v33, v34);
}

uint64_t sub_1AF1B6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v7, v8, a3, a4, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1B6D4C(a1, a3, a3, a4);
  v15 = sub_1AF121B74(v13);
  if (a3 >= 1)
  {
    v16 = v15;
    v17 = (v14 + 8);
    v18 = (a2 + 4);
    for (i = a3; i; --i)
    {
      v20 = sub_1AF1CAED8(v13);
      if (v20 > 5)
      {
        if (v20 == 6)
        {
          *(v17 - 1) = *(v18 - 1);
          *v17 = *v18;
          v17[1] = v18[1];
          goto LABEL_16;
        }

        if (v20 != 15)
        {
LABEL_9:
          v21 = sub_1AF0D5194();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDD534(&v23, v24);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v20 == 1)
        {
          *(v17 - 2) = *(v18 - 1);
          *(v17 - 1) = *v18;
          *v17 = v18[1];
          goto LABEL_16;
        }

        if (v20 != 4)
        {
          goto LABEL_9;
        }
      }

      *(v17 - 8) = *(v18 - 1);
      *(v17 - 7) = *v18;
      *(v17 - 6) = v18[1];
LABEL_16:
      v17 = (v17 + v16);
      v18 += 4;
    }
  }

  return sub_1AF1B6AE4(a1, v14, a3, 3);
}

uint64_t sub_1AF1B6FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v7, v8, a3, a4, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1B6D4C(a1, a3, a3, a4);
  v15 = sub_1AF121B74(v13);
  if (a3 >= 1)
  {
    v16 = v15;
    v17 = (a2 + 4);
    v18 = v14;
    for (i = a3; i; --i)
    {
      v20 = sub_1AF1CAED8(v13);
      if (v20 > 5)
      {
        if (v20 == 6)
        {
          *v18 = COERCE_FLOAT(*(v17 - 1));
          *(v18 + 1) = *v17;
          goto LABEL_16;
        }

        if (v20 != 15)
        {
LABEL_9:
          v21 = sub_1AF0D5194();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDD560(&v23, v24);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v20 == 1)
        {
          *v18 = *(v17 - 1);
          *(v18 + 1) = *v17;
          goto LABEL_16;
        }

        if (v20 != 4)
        {
          goto LABEL_9;
        }
      }

      *v18 = COERCE_FLOAT(*(v17 - 1));
      *(v18 + 1) = *v17;
LABEL_16:
      v17 += 2;
      v18 = (v18 + v16);
    }
  }

  return sub_1AF1B6AE4(a1, v14, a3, 2);
}

uint64_t sub_1AF1B7164(__int16 a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0x14 && ((1 << a3) & 0x108052) != 0)
  {
    v6 = sub_1AF288070(a3);
    v7 = sub_1AF1CAE64(a3, a2, 0, v6 * a2, 0);
    if (!v7)
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8424(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v18 = sub_1AF1ADD44(v7, a1);
    if (!v18)
    {
      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDB710(v19, v20, v16, v17, v21, v22, v23, v24);
      }
    }

    sub_1AF1CB108(v7, v18, v16, v17);
    CFRelease(v7);
    *(v18 + 88) |= 4u;
  }

  else
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDD58C(v26);
    }

    return 0;
  }

  return v18;
}

void sub_1AF1B727C(uint64_t a1, uint64_t a2)
{
  if ((sub_1AF170380(a1) & 1) == 0)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD5D0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF170288(a1, a2);
}

uint64_t sub_1AF1B7300(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 98);
}

uint64_t sub_1AF1B7348(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200);
}

void sub_1AF1B7390(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_1AF1B73A0(a1, v1);
  }
}

void sub_1AF1B73A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1B8088(a1);
  if (((v4 ^ (*(a1 + 216) == -1)) & 1) == 0)
  {
    v5 = v4;
    v6 = sub_1AF1D01D0(a2);
    if (v5)
    {
      v7 = sub_1AF127288(v6, a1);
    }

    else
    {
      sub_1AF127918(v6, *(a1 + 216));
      v7 = -1;
    }

    *(a1 + 216) = v7;
    v8 = sub_1AF1D0218(a2);
    v9 = *(a1 + 88);
    v10 = *(a1 + 216);

    sub_1AF14CC70(v8, v9, v10);
  }
}

float32x4_t sub_1AF1B7440(uint64_t a1)
{
  *(a1 + 272) = xmmword_1AFE201A0;
  *(a1 + 288) = xmmword_1AFE20B70;
  v2 = sub_1AF1B7558(a1);
  if (!v2 || (sub_1AF16BE10(v2, (a1 + 272)) & 1) == 0)
  {
    v4 = sub_1AF1B75A0(a1);
    if (v4)
    {
      v16 = 0uLL;
      v15 = 0uLL;
      if (sub_1AF1C3958(v4, 0, &v16, &v15))
      {
        v6 = v15;
        v5 = v16;
        v5.i32[3] = 1.0;
        v6.i32[3] = 1.0;
        v7.i64[0] = 0x3F0000003F000000;
        v7.i64[1] = 0x3F0000003F000000;
        *(a1 + 272) = vmulq_f32(vaddq_f32(v5, v6), v7);
        *(a1 + 288) = vmulq_f32(vsubq_f32(v6, v5), v7);
      }
    }

    v8 = sub_1AF1B75E8(a1);
    if (v8)
    {
      v9 = v8;
      if (sub_1AF19CBB4(v8) == 5)
      {
        if (sub_1AF19D3B0(v9))
        {
          v10 = sub_1AF19CD34(v9);
          if (v10)
          {
            v16 = 0uLL;
            v15 = 0uLL;
            if (sub_1AF1C3958(v10, 0, &v16, &v15))
            {
              v12 = v15;
              v11 = v16;
              v11.i32[3] = 1.0;
              v12.i32[3] = 1.0;
              v13.i64[0] = 0x3F0000003F000000;
              v13.i64[1] = 0x3F0000003F000000;
              v14 = vmulq_f32(vaddq_f32(v11, v12), v13);
              result = vmulq_f32(vsubq_f32(v12, v11), v13);
              *(a1 + 272) = v14;
              *(a1 + 288) = result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B7558(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 248);
}

uint64_t sub_1AF1B75A0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

const __CFDictionary *sub_1AF1B75E8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 221))
  {
    return sub_1AF16CEA0(a1, @"kLightKey");
  }

  else
  {
    return 0;
  }
}

void sub_1AF1B7650(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[3].i64[0];
  v11 = a1[15].i64[1];
  if (v11)
  {
    v12 = a1[15].i64[0];
    if (v12)
    {
      v13 = sub_1AF1B1F84(v12);
    }

    else
    {
      v13 = 0;
    }

    sub_1AF16B998(v11, v13);
  }

  sub_1AF1B778C(a1);
  sub_1AF1B78DC(a1);
  sub_1AF1B7978(a1, 0);
  v14 = a1;
  do
  {
    v14[13].i32[3] |= 2u;
    v14 = v14[4].i64[0];
  }

  while (v14);
  if (v10)
  {
    sub_1AF1CF760(v10, 2, a1, @"model");
    sub_1AF1B73A0(a1, v10);
  }

  v15 = a1[15].i64[0];
  if (v15)
  {
    v16 = CFGetTypeID(v15);
    if (v16 == sub_1AF16EA90())
    {
      v17 = 2048;
LABEL_17:
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v10, 0, 1u);
      v19 = a1[13].i32[3];
      v18 = v17;
      goto LABEL_18;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = a1[13].i32[3];
  if ((v19 & 0x800) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  a1[13].i32[3] = v19 & 0xFFFFF7FF | v18;
}

void sub_1AF1B778C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 232) = 0;
  *(a1 + 220) &= ~0x1000u;
  v11 = sub_1AF1B75A0(a1);
  if (v11)
  {
    v12 = sub_1AF1B31B0(v11);
    if (v12)
    {
      v13 = v12;
      if (CFArrayGetCount(v12) >= 1)
      {
        Count = CFArrayGetCount(v13);
        ValueAtIndex = CFArrayGetValueAtIndex(v13, Count / 2);
        v16 = sub_1AF1A09F8(ValueAtIndex);
        v17 = malloc_type_malloc(12 * Count + 8, 0x100004000313F17uLL);
        *(a1 + 232) = v17;
        *v17 = Count;
        v17[2] = v16;
        *(*(a1 + 232) + 4) = 0;
        *(a1 + 220) |= 0x1000u;
        if (Count >= 1)
        {
          v18 = 0;
          v19 = (v17 + 16);
          do
          {
            v20 = CFArrayGetValueAtIndex(v13, v18);
            *(v19 - 2) = sub_1AF1A0A40(v20);
            *(v19 - 1) = 0xFFFFFFFFLL;
            ++v18;
            v19 += 3;
          }

          while (Count != v18);
        }
      }
    }
  }

  sub_1AF1CF760(*(a1 + 48), 2, a1, @"model");
}

void sub_1AF1B78DC(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((a1[13].i8[12] & 4) == 0)
  {
    sub_1AF1B7440(a1);
  }

  if (a1[13].i32[2] != -1)
  {
    v10 = a1[3].i64[0];
    if (v10)
    {
      v11 = sub_1AF1D01D0(v10);
      v12 = a1[18];
      v13[0] = a1[17];
      v13[1] = v12;
      if ((vminvq_u32(vcgezq_f32(a1[18])) & 0x80000000) != 0)
      {
        sub_1AF127390(v11, a1[13].u32[2], v13);
      }
    }
  }
}

uint64_t sub_1AF1B7978(uint64_t a1, int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    result = sub_1AF1D01D0(result);
    if (result)
    {
      if (a2)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = sub_1AF1BC344;
        v6[3] = &unk_1E7A7B748;
        v6[4] = result;
        return sub_1AF1B94AC(a1, v6);
      }

      else
      {
        v5 = *(a1 + 216);
        if (v5 != -1)
        {

          return sub_1AF127798(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B7A3C(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 288);
  *a2 = *(a1 + 272);
  a2[1] = v2;
  return vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
}

float32x4_t sub_1AF1B7A68(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v5.i32[3] = 1.0;
  v6.i32[3] = 1.0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(vaddq_f32(v5, v6), v7);
  v9 = vmulq_f32(vsubq_f32(v6, v5), v7);
  v10 = a5[1];
  v11 = a5[2];
  v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a5[3], v11, v8, 2), v10, *v8.f32, 1), *a5, v8.f32[0]);
  v12.i32[3] = v8.i32[3];
  v13 = v9;
  v13.i32[1] = v9.i32[0];
  v13.i32[2] = v9.i32[0];
  v14 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v10), vuzp2q_s32(vdupq_lane_s32(*v9.i8, 1), v9)), v13, vabsq_f32(*a5)), vzip2q_s32(vtrn1q_s32(v9, v9), v9), vabsq_f32(v11));
  *a3 = vsubq_f32(v12, v14);
  result = vaddq_f32(v14, v12);
  *a4 = result;
  return result;
}

uint64_t sub_1AF1B7AF0(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    result = sub_1AF1B2030(result, 0);
    if (result)
    {
      result = sub_1AF1A1270(result);
      if (result)
      {
        return (sub_1AF165AE4(result) & 0xFD) != 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B7B34(uint64_t a1)
{
  v1 = *(a1 + 220);
  if ((v1 & 2) != 0)
  {
    if ((v1 & 4) != 0)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = *(a1 + 240);
      if (v3)
      {
        LODWORD(v3) = sub_1AF1B209C(v3);
        v1 = *(a1 + 220);
      }
    }

    v1 = v1 & 0xFFFFFFFC | v3;
    *(a1 + 220) = v1;
  }

  return v1 & 1;
}

void sub_1AF1B7B98(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *(a1 + 220);
  if (a3 != 2 || (v5 & 4) == 0)
  {
    if (a2)
    {
      v6 = a2[1];
      *(a1 + 272) = *a2;
      *(a1 + 288) = v6;
    }

    else
    {
      sub_1AF1B7440(a1);
      v5 = *(a1 + 220);
    }

    if (a3 != 2)
    {
      v5 = v5 & 0xFFFFFFFB | (4 * (a3 == 1));
      *(a1 + 220) = v5;
    }

    if ((v5 & 4) != 0)
    {
      *(a1 + 220) = v5 & 0xFFFFFFFC;
    }

    sub_1AF1B78DC(a1);
  }
}

uint64_t sub_1AF1B7C2C(uint64_t result, uint64_t a2)
{
  if (*(result + 216) != -1)
  {
    v2 = result;
    result = *(result + 48);
    if (result)
    {
      v4 = sub_1AF1D01D0(result);
      v5 = *(v2 + 216);

      return sub_1AF1275C4(v4, v5, a2);
    }
  }

  return result;
}

uint64_t sub_1AF1B7C8C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (sub_1AF1B7348(a1))
  {
    v6 = 0;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    if (sub_1AF1B7DB8(a1))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = *(a1 + 288);
      *a2 = *(a1 + 272);
      a2[1] = v8;
      v7 = vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
    }

    v21 = v7;
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v13 = sub_1AF1B7E6C;
      v14 = &unk_1E7A7B660;
      v15 = &v18;
      v16 = a3;
      v17 = a2;
      do
      {
        (v13)(v12, v9, v10++);
        v9 = *(v9 + 80);
      }

      while (v9);
    }

    v6 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  return v6 & 1;
}

uint64_t sub_1AF1B7DB8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 8) != 0)
  {
    return sub_1AF1B75A0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1B7E14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    v4 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v2, v4++);
      v2 = *(v2 + 80);
    }

    while (v2);
  }

  return result;
}

double sub_1AF1B7E6C(void *a1, uint64_t a2)
{
  v23 = 0u;
  v24 = 0u;
  v4 = sub_1AF1B7DB8(a2);
  v6 = a1[5];
  if (v4)
  {
    if (v6)
    {
      *v6 = 1;
    }
  }

  else if (sub_1AF1B7C8C(a2, &v23, v6))
  {
    *v7.i64 = sub_1AF1B7F84(a2);
    v11 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v9, v8, v23, 2), v10, *v23.f32, 1), v7, v23.f32[0]);
    v11.i32[3] = v23.i32[3];
    v12 = v24;
    v12.i32[1] = v24.i32[0];
    v12.i32[2] = v24.i32[0];
    v13 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v10), vuzp2q_s32(vdupq_lane_s32(*v24.i8, 1), v24)), v12, vabsq_f32(v7)), vzip2q_s32(vtrn1q_s32(v24, v24), v24), vabsq_f32(v8));
    v23 = v11;
    v24 = v13;
    v14 = *(a1[4] + 8);
    if (*(v14 + 24))
    {
      v15 = a1[6];
      v16 = v15[1];
      v17 = vminnmq_f32(vsubq_f32(*v15, v16), vsubq_f32(v11, v13));
      v18 = vmaxnmq_f32(vaddq_f32(*v15, v16), vaddq_f32(v13, v11));
      v16.i64[0] = 0x3F0000003F000000;
      v16.i64[1] = 0x3F0000003F000000;
      v19 = vmulq_f32(vaddq_f32(v17, v18), v16);
      v5 = vmulq_f32(vsubq_f32(v18, v17), v16);
      *v15 = v19;
      v15[1] = v5;
    }

    else
    {
      *(v14 + 24) = 1;
      v20 = a1[6];
      v5.i64[0] = v23.i64[0];
      v21 = v24;
      *v20 = v23;
      *(v20 + 16) = v21;
    }
  }

  return *v5.i64;
}

double sub_1AF1B7F84(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v13 = sub_1AF1CBF20((a1 + 96));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(a1 + 192);
  if (v17)
  {
    if (*(v17 + 124) == 0.0)
    {
      v25 = v10;
      v26 = v13;
      v23 = v12;
      v24 = v11;
      v29 = __invert_f4(*v17);
      v16 = v23;
      v15 = v24;
      v14 = v25;
      v13 = v26;
      *(v17 + 64) = v29;
      v17 = *(a1 + 192);
    }

    v18 = 0;
    v19 = *(v17 + 80);
    v20 = *(v17 + 96);
    v21 = *(v17 + 112);
    v27[0] = *(v17 + 64);
    v27[1] = v19;
    v27[2] = v20;
    v27[3] = v21;
    memset(v28, 0, sizeof(v28));
    do
    {
      v28[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v27[v18])), v14, *&v27[v18], 1), v15, v27[v18], 2), v16, v27[v18], 3);
      ++v18;
    }

    while (v18 != 4);
    v13.n128_u64[0] = *&v28[0];
  }

  return v13.n128_f64[0];
}

uint64_t sub_1AF1B8088(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 1;
  }

  v3 = *(a1 + 220);
  if ((v3 & 0x100) != 0)
  {
    v4 = sub_1AF1B75E8(a1);
    if (sub_1AF19D3B0(v4))
    {
      return 1;
    }

    v3 = *(a1 + 220);
  }

  return (v3 >> 22) & 1;
}

uint64_t sub_1AF1B80E4(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[18];
  *a2 = a1[17];
  a2[1] = v2;
  v3 = vminvq_u32(vcgezq_f32(a1[18])) >> 31;
  for (i = a1[4].i64[1]; i; i = *(i + 80))
  {
    v17 = 0u;
    v18 = 0u;
    if (sub_1AF1B80E4(i, &v17))
    {
      *v6.i64 = sub_1AF1B7F84(i);
      v10 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v8, v7, v17, 2), v9, *v17.f32, 1), v6, v17.f32[0]);
      v10.i32[3] = v17.i32[3];
      v11 = v18;
      v11.i32[1] = v18.i32[0];
      v11.i32[2] = v18.i32[0];
      v12 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v9), vuzp2q_s32(vdupq_lane_s32(*v18.i8, 1), v18)), v11, vabsq_f32(v6)), vzip2q_s32(vtrn1q_s32(v18, v18), v18), vabsq_f32(v7));
      v13 = a2[1];
      v14 = vminnmq_f32(vsubq_f32(v10, v12), vsubq_f32(*a2, v13));
      v15 = vmaxnmq_f32(vaddq_f32(v12, v10), vaddq_f32(*a2, v13));
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      *a2 = vmulq_f32(vaddq_f32(v14, v15), v13);
      a2[1] = vmulq_f32(vsubq_f32(v15, v14), v13);
      LOBYTE(v3) = 1;
    }
  }

  return v3 & 1;
}

uint64_t sub_1AF1B81E4(float32x4_t *a1, int a2, float32x4_t *a3)
{
  if ((a1[13].i8[14] & 0x38) == 0 && (v13 = a1[3].i64[0]) != 0 && (v14 = sub_1AF1D01D0(v13)) != 0)
  {
    *a3 = sub_1AF128598(v14, a1, a2);
    a3[1] = v15;
    return vminvq_u32(vcgezq_f32(v15)) >> 31;
  }

  else
  {
    result = sub_1AF1B80E4(a1, a3);
    if (result)
    {
      if ((a2 & 1) == 0)
      {
        v7 = sub_1AF1B9B04(a1);
        v8 = *(v7 + 16);
        v9 = *(v7 + 32);
        v10 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v7 + 48), v9, *a3, 2), v8, *a3->f32, 1), *v7, COERCE_FLOAT(*a3));
        v10.i32[3] = HIDWORD(*a3);
        v11 = a3[1];
        v11.i32[1] = v11.i32[0];
        v11.i32[2] = a3[1];
        v12 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v8), vuzp2q_s32(vdupq_lane_s32(*a3[1].f32, 1), a3[1])), v11, vabsq_f32(*v7)), vzip2q_s32(vtrn1q_s32(a3[1], a3[1]), a3[1]), vabsq_f32(v9));
        *a3 = v10;
        a3[1] = v12;
        return 1;
      }
    }
  }

  return result;
}

double sub_1AF1B82C8(uint64_t a1, int a2, uint64_t a3)
{
  if ((sub_1AF1B7348(a1) & 1) == 0)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = sub_1AF1D01D0(v7);
    if (!v8)
    {
      goto LABEL_9;
    }

    if (a2)
    {
      v9 = sub_1AF128598(v8, a1, 1);
LABEL_8:
      *a3 = v9;
      *(a3 + 16) = v10;
LABEL_9:
      v6 = vcgezq_f32(*(a3 + 16));
      v6.i32[0] = vminvq_u32(v6);
      return *v6.i64;
    }

    v11 = *(a1 + 216);
    if (v11 != -1)
    {
      v9.n128_f64[0] = sub_1AF1284D0(v8, v11, 1);
      goto LABEL_8;
    }

    v6.i64[0] = 0;
    *a3 = xmmword_1AFE201A0;
    *(a3 + 16) = xmmword_1AFE20B70;
  }

  return *v6.i64;
}

uint64_t sub_1AF1B8374(uint64_t a1)
{
  if (sub_1AF1B75A0(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = 8 * (sub_1AF1B83E8(a1) != 0);
  }

  v3 = sub_1AF1B75E8(a1);
  if (v3 && sub_1AF19CBB4(v3) == 5)
  {
    v2 |= 4u;
  }

  if (sub_1AF1B8420(a1))
  {
    return v2 | 0x10;
  }

  else
  {
    return v2;
  }
}

const __CFDictionary *sub_1AF1B83E8(uint64_t a1)
{
  v1 = sub_1AF1BC094(a1);
  if (!v1)
  {
    return 0;
  }

  v5 = v1;
  if ((sub_1AF16ACC0(v1, v2, v3, v4) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1AF1B8420(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 222) >> 7;
}

uint64_t sub_1AF1B846C()
{
  if (qword_1ED73ABD8 != -1)
  {
    sub_1AFDDD648();
  }

  return qword_1ED73ABD0;
}

double sub_1AF1B84A4()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ABD0 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"hidden", 0xC8u, 3, 0);
  sub_1AF1DD02C(@"opacity", 0xCCu, 1, 0);
  sub_1AF1DD018();
  unk_1ED72E7C8 = xmmword_1F24E8020;
  xmmword_1ED72E7B0 = xmmword_1F24E8030;
  unk_1ED72E7D8 = xmmword_1F24E8040;
  qword_1ED72E7C0 = sub_1AF1BC5F4;
  unk_1ED72E7E8 = *&off_1F24E8050;
  qword_1ED72E7F8 = qword_1F24E8060;
  unk_1ED72E800 = sub_1AF1BDAF8;
  result = *&xmmword_1F24E8068;
  unk_1ED72E818 = xmmword_1F24E8068;
  return result;
}

uint64_t sub_1AF1B8588()
{
  if (qword_1ED73ABD8 != -1)
  {
    sub_1AFDDD648();
  }

  v0 = sub_1AF0D160C(qword_1ED73ABD0, 0x120uLL);
  sub_1AF1CCEE0(v0 + 96);
  *(v0 + 204) = 1065353216;
  *(v0 + 200) = 0;
  v1 = *(v0 + 220) & 0xFFFBFFD1 | 0x4002A;
  *(v0 + 208) = 1;
  *(v0 + 216) = -1;
  *(v0 + 220) = v1;
  *(v0 + 88) = -1;
  *(v0 + 272) = xmmword_1AFE201A0;
  *(v0 + 288) = xmmword_1AFE20B70;
  return v0;
}

uint64_t sub_1AF1B8624(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1B8588();
  v11 = *(a1 + 112);
  *(v10 + 96) = *(a1 + 96);
  *(v10 + 112) = v11;
  v12 = *(a1 + 176);
  v14 = *(a1 + 128);
  v13 = *(a1 + 144);
  *(v10 + 160) = *(a1 + 160);
  *(v10 + 176) = v12;
  *(v10 + 128) = v14;
  *(v10 + 144) = v13;
  if (sub_1AF1B8774(a1))
  {
    v15 = sub_1AF1B887C(a1);
    sub_1AF1B87C4(v10, v15, v16, v17, v18);
  }

  v19 = sub_1AF1B8A30(a1);
  sub_1AF1B88DC(v10, v19);
  v20 = sub_1AF1B7348(a1);
  sub_1AF1B8A78(v10, v20);
  v21 = *(a1 + 240);
  if (v21)
  {
    sub_1AF1B8AE4(v10, v21);
  }

  sub_1AF16D160(a1, v10);
  v22 = *(v10 + 220) & 0xFFFFFDFF | (((*(a1 + 220) >> 9) & 1) << 9);
  *(v10 + 220) = v22;
  v23 = v22 & 0xFFFFDFFF | (((*(a1 + 220) >> 13) & 1) << 13);
  *(v10 + 220) = v23;
  v24 = v23 & 0xFFFFF7FF | (((*(a1 + 220) >> 11) & 1) << 11);
  *(v10 + 220) = v24;
  v25 = v24 & 0xFFFFFEFF | (((*(a1 + 220) >> 8) & 1) << 8);
  *(v10 + 220) = v25;
  v26 = *(a1 + 248);
  if (v26)
  {
    v26 = sub_1AF16B5C4(v26, v10);
    v25 = *(v10 + 220);
  }

  *(v10 + 248) = v26;
  v27 = v25 & 0xFFFFFBFF | (((*(a1 + 220) >> 10) & 1) << 10);
  *(v10 + 220) = v27;
  v28 = *(a1 + 288);
  *(v10 + 272) = *(a1 + 272);
  *(v10 + 288) = v28;
  *(v10 + 220) = v27 & 0xFFFFFFFB | (4 * ((*(a1 + 220) >> 2) & 1));
  *(v10 + 208) = *(a1 + 208);
  return v10;
}

BOOL sub_1AF1B8774(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192) != 0;
}

uint64_t sub_1AF1B87C4(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (!a1)
  {
    v24 = a5;
    v20 = a3;
    v22 = a4;
    v18 = a2;
    v6 = sub_1AF0D5194();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    a2 = v18;
    a3 = v20;
    a4 = v22;
    a5 = v24;
    if (v7)
    {
      sub_1AFDD137C(v6, v8, v9, v10, v11, v12, v13, v14);
      a2 = v18;
      a3 = v20;
      a4 = v22;
      a5 = v24;
    }
  }

  v15 = *(a1 + 192);
  if (!v15)
  {
    v25 = a5;
    v21 = a3;
    v23 = a4;
    v19 = a2;
    v15 = sub_1AF288058(0x80uLL);
    a2 = v19;
    a3 = v21;
    a4 = v23;
    a5 = v25;
    *(a1 + 192) = v15;
  }

  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v16 = *(a1 + 192);
  if (v16)
  {
    *(v16 + 124) = 0;
  }

  return sub_1AF1B9F8C(a1);
}

__n128 sub_1AF1B887C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    v10 = MEMORY[0x1E69E9B18];
  }

  return *v10;
}

void sub_1AF1B88DC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 204);
  if (v12 != a2)
  {
    if (a2 >= 1.0 && v12 < 1.0)
    {
      *(a1 + 204) = a2;
      sub_1AF1BA81C(a1, 1);
    }

    else
    {
      if (a2 >= 1.0)
      {
        *(a1 + 204) = a2;
        sub_1AF1BA81C(a1, 0);
        goto LABEL_15;
      }

      *(a1 + 204) = a2;
      sub_1AF1BA81C(a1, v12 >= 1.0);
      if (v12 < 1.0)
      {
        goto LABEL_15;
      }
    }

    v14 = *(a1 + 48);
    sub_1AF1CF760(v14, 4, a1, 0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = sub_1AF1BDDBC;
    v15[3] = &unk_1E7A7B820;
    v15[4] = v14;
    sub_1AF1B94AC(a1, v15);
LABEL_15:
    if (a2 == 0.0 || v12 == 0.0)
    {
      sub_1AF1B7978(a1, 1);
    }
  }
}

float sub_1AF1B8A30(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 204);
}

void sub_1AF1B8A78(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 200) != a2)
  {
    *(a1 + 200) = a2;
    sub_1AF1BAA04(a1, a2 ^ 1);
  }
}

void sub_1AF1B8AE4(float32x4_t *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[3].i64[0];
  v13 = sub_1AF1B75A0(a1);
  if (v13)
  {
    v14 = v13;
    sub_1AF1B37C0(v13, a1);
    sub_1AF1C3A90(v14, v12);
  }

  v15 = a1[15].i64[0];
  if (v15 != a2)
  {
    if (v15)
    {
      CFRelease(v15);
      a1[15].i64[0] = 0;
    }

    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    a1[15].i64[0] = v16;
  }

  if (a2)
  {
    sub_1AF1B368C(a2, a1);
    sub_1AF1C3CB4(a2, v12);
  }

  sub_1AF1B7650(a1);
}

uint64_t sub_1AF1B8BB0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1B8624(a1);
  v13 = v12;
  if (a2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v18 = sub_1AF1B8C94;
    v19 = &unk_1E7A7B6A0;
    v21 = a2;
    v20 = v12;
    v14 = *(a1 + 72);
    if (v14)
    {
      v15 = 0;
      do
      {
        (v18)(v17, v14, v15++);
        v14 = *(v14 + 80);
      }

      while (v14);
    }
  }

  return v13;
}

void sub_1AF1B8C94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B8BB0(a2, *(a1 + 40));
  sub_1AF1B8CE8(*(a1 + 32), v3);

  CFRelease(v3);
}

uint64_t sub_1AF1B8CE8(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      *(a1 + 72) = CFRetain(cf);
      return sub_1AF1B9664(a1, cf);
    }

    goto LABEL_7;
  }

  v5 = sub_1AF0D5194();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDD65C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    do
    {
LABEL_7:
      v13 = v4;
      v4 = *(v4 + 80);
    }

    while (v4);
    if (cf)
    {
      *(v13 + 80) = CFRetain(cf);
    }
  }

  return sub_1AF1B9664(a1, cf);
}

__n128 *sub_1AF1B8D80(const void *a1, const void *a2, unsigned __int8 a3)
{
  v5 = sub_1AF1B2BD0(a1);
  v6 = v5;
  if (a2)
  {
    v7 = sub_1AF1B2C1C(v5);
    sub_1AF1A5208(v7, a2);
  }

  v8 = sub_1AF170B68(v6);
  sub_1AF170B70(v6, v8 & 0xFFFFFF00);
  sub_1AF1709B8(v6, a3);
  v9 = sub_1AF1710CC(v6);
  CFRetain(v9);
  sub_1AF1709B8(v6, 0);
  sub_1AF1B2C80(v6, v9);
  CFRelease(v9);
  return v6;
}

float32x4_t *sub_1AF1B8E1C(uint64_t a1, int a2)
{
  v2 = a2;
  if (!a2)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD6D4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1B8BB0(a1, 0);
  v13 = sub_1AF1B75A0(v12);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1AF1B9158(a1);
    v16 = sub_1AF1B8D80(v14, 0, v2);
    sub_1AF1B8AE4(v12, v16);
    CFRelease(v16);
    if (v15)
    {
      v48 = v12;
      v17 = sub_1AF1B64A4(v15);
      v18 = sub_1AF1B1F84(v16);
      sub_1AF1B66E4(v17, v18);
      v46 = v17;
      v19 = sub_1AF15B294(v17);
      v20 = sub_1AF1B1F84(v14);
      if (sub_1AF1B58F8(v19))
      {
        sub_1AF1B526C(v19, v20, 0, 0);
      }

      v47 = v15;
      if (sub_1AF1B4CCC(v19))
      {
        sub_1AF1B5708(v19, v20, 0, 0);
      }

      v21 = sub_1AF1B2C1C(v14);
      v22 = sub_1AF1A516C(v21, 0);
      v23 = sub_1AF15B294(v19);
      Count = CFArrayGetCount(v23);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
          v28 = sub_1AF1B8D80(ValueAtIndex, v22, v2);
          CFArrayAppendValue(Mutable, v28);
          CFRelease(v28);
        }
      }

      sub_1AF1B4918(v19, Mutable, 0);
      v12 = v48;
      sub_1AF1B91A8(v48, v46);
      CFRelease(v46);
      v15 = v47;
    }

    v29 = *(a1 + 248);
    if (v29)
    {
      v30 = sub_1AF16BB4C(v29);
      if (v30)
      {
        v31 = v30;
        v32 = sub_1AF15B294(v30);
        v33 = sub_1AF1B2C1C(v14);
        v34 = sub_1AF1A2EDC(v33);
        v35 = [VFXModel __createCFObject]_0();
        sub_1AF1B2C80(v35, v34);
        if (v34)
        {
          CFRelease(v34);
        }

        if (v15)
        {
          v36 = sub_1AF170B68(v35);
          sub_1AF170B70(v35, v36 & 0xFFFFFF00);
        }

        sub_1AF1709B8(v35, v2);
        v37 = sub_1AF1710CC(v35);
        v38 = sub_1AF1C7594(v31);
        v39 = v38;
        if (v38)
        {
          LOWORD(v38) = CFArrayGetCount(v38);
        }

        v40 = sub_1AF1C7134(v37, v38);
        CFRelease(v35);
        if (v40)
        {
          v41 = sub_1AF1BA1FC(v32);
          sub_1AF1C7934(v40, *v41, v41[1], v41[2], v41[3]);
          v42 = sub_1AF15B364(v32);
          sub_1AF1C759C(v40, v42);
          v43 = sub_1AF1C8C0C(v40);
          CFRelease(v40);
          if (v39)
          {
            Copy = CFArrayCreateCopy(0, v39);
            sub_1AF1C8DC8(v43, Copy);
            CFRelease(Copy);
          }

          sub_1AF1B92D8(v12, v43);
          CFRelease(v43);
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1AF1B9158(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 248);
  if (result)
  {
    return sub_1AF16BA50(result);
  }

  return result;
}

void sub_1AF1B91A8(float32x4_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1B9158(a1);
  if (v12 != a2)
  {
    v13 = v12;
    if (v12)
    {
      v14 = sub_1AF1C3F64(a1);
      sub_1AF1C3A90(v13, v14);
    }

    if (a2)
    {
      v15 = a1[3].i64[0];
      if (v15)
      {
        sub_1AF1C3CB4(a2, v15);
      }

      v17 = &a1[15].i64[1];
      v16 = a1[15].i64[1];
      if (!v16)
      {
        v16 = sub_1AF16B520(a1);
        a1[15].i64[1] = v16;
        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = &a1[15].i64[1];
      v16 = a1[15].i64[1];
      if (!v16)
      {
LABEL_17:
        if (sub_1AF1C3F64(a1))
        {
          sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
        }

        sub_1AF1B7650(a1);
        return;
      }
    }

    sub_1AF16BA98(v16, a2);
    if (sub_1AF16B6E4(v16) && *v17)
    {
      CFRelease(*v17);
      *v17 = 0;
    }

    goto LABEL_17;
  }
}

uint64_t sub_1AF1B92C8(uint64_t a1)
{
  result = *(a1 + 248);
  if (result)
  {
    return sub_1AF16BB4C(result);
  }

  return result;
}

void sub_1AF1B92D8(float32x4_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[15].i64[1];
  if (!v12)
  {
    if (!a2)
    {
      return;
    }

LABEL_12:
    v17 = a1[3].i64[0];
    if (v17)
    {
      sub_1AF1C3CB4(a2, v17);
    }

    sub_1AF1C8F60(a2, a1);
    v16 = a1[15].i64[1];
    if (!v16)
    {
      v16 = sub_1AF16B520(a1);
      a1[15].i64[1] = v16;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

  v13 = sub_1AF16BB4C(v12);
  if (v13 == a2)
  {
    return;
  }

  v14 = v13;
  if (v13)
  {
    v15 = sub_1AF1C3F64(a1);
    sub_1AF1C3A90(v14, v15);
    sub_1AF1C8F60(v14, 0);
  }

  if (a2)
  {
    goto LABEL_12;
  }

  v16 = a1[15].i64[1];
  if (v16)
  {
LABEL_16:
    sub_1AF16BB94(v16, a2);
    if (sub_1AF16B6E4(v16))
    {
      v18 = a1[15].i64[1];
      if (v18)
      {
        CFRelease(v18);
        a1[15].i64[1] = 0;
      }
    }
  }

LABEL_19:
  if (sub_1AF1C3F64(a1))
  {
    sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
  }

  sub_1AF1B7650(a1);
}

uint64_t sub_1AF1B9410(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 80);
  }

  while (v1);
  return result;
}

uint64_t sub_1AF1B9434(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    (*(a2 + 16))(a2, v2, v4, &v6);
    result = v6;
    if (v6)
    {
      break;
    }

    ++v4;
    v2 = *(v2 + 80);
  }

  while (v2);
  return result;
}

uint64_t sub_1AF1B94AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (*(a2 + 16))(a2, result);
    if (v4 == 2)
    {
      return 1;
    }

    v5 = v3;
    while (1)
    {
      if (v4 == 1 || (v6 = v5[9]) == 0)
      {
        if (v5 == v3)
        {
          return 0;
        }

        while (1)
        {
          v6 = v5[10];
          if (v6)
          {
            break;
          }

          v5 = v5[8];
          if (v5)
          {
            v7 = v5 == v3;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 0;
          }
        }
      }

      v4 = (*(a2 + 16))(a2, v6);
      v5 = v6;
      if (v4 == 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B955C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1);
}

uint64_t sub_1AF1B95A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    do
    {
LABEL_3:
      v5 = v4;
      if (*(v4 + 200))
      {
        break;
      }

      v6 = (*(a2 + 16))(a2, v4);
      if (v6 == 2)
      {
        return 1;
      }

      v4 = v5[9];
    }

    while (v6 != 1 && v4 != 0);
    while (v5 != v3)
    {
      v4 = v5[10];
      if (v4)
      {
        goto LABEL_3;
      }

      v5 = v5[8];
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF1B963C(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 72);
  if (a2 && result)
  {
    v3 = 1;
    do
    {
      result = *(result + 80);
      if (v3 >= a2)
      {
        break;
      }

      ++v3;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF1B9664(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = a1;
  sub_1AF1B9F8C(a2);
  if (a1)
  {
    if ((*(a2 + 220) & 3) != 0)
    {
      v4 = a1;
      do
      {
        *(v4 + 220) |= 2u;
        v4 = *(v4 + 64);
      }

      while (v4);
      if (!a2)
      {
        v5 = sub_1AF0D5194();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD137C(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a2 + 220) & 0xFFC7FFFF | (((*(v13 + 220) >> 19) & 7) << 19);
    *(a2 + 220) = v14;
  }

  else
  {
    v14 = *(a2 + 220);
  }

  sub_1AF1BDCAC(a2, (v14 >> 19) & 7);
  sub_1AF1BA81C(a2, 0);
  v15 = *(a2 + 48);
  v16 = *(a1 + 48);
  if (v16)
  {
    if (v15 != v16)
    {
      sub_1AF1C3A90(a2, v15);
      sub_1AF1C3CB4(a2, v16);
    }
  }

  else
  {
    sub_1AF1C3A90(a2, v15);
  }

  return sub_1AF1BAA04(a2, 1);
}

uint64_t sub_1AF1B9764(uint64_t a1, void *cf, int a3)
{
  if (cf[10])
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD74C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (cf[8])
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD7C4(v14, v15, v16, v17, v18, v19, v20, v21);
      if (a3)
      {
        goto LABEL_7;
      }

LABEL_11:
      cf[10] = *(a1 + 72);
      *(a1 + 72) = cf;
      CFRetain(cf);
      return sub_1AF1B9664(a1, cf);
    }
  }

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_7:
  v22 = *(a1 + 72);
  v23 = (a3 - 1);
  if (a3 != 1)
  {
    do
    {
      v22 = *(v22 + 80);
      --v23;
    }

    while (v23);
  }

  v24 = *(v22 + 80);
  *(v22 + 80) = cf;
  CFRetain(cf);
  cf[10] = v24;
  return sub_1AF1B9664(a1, cf);
}

uint64_t sub_1AF1B9838(uint64_t a1, void *cf, uint64_t a3)
{
  if (cf[8])
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD7C4(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!cf[10] || (v14 = sub_1AF0D5194(), !os_log_type_enabled(v14, OS_LOG_TYPE_FAULT)))
  {
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_12:
    cf[10] = *(a1 + 72);
    *(a1 + 72) = cf;
    CFRetain(cf);
    return sub_1AF1B9664(a1, cf);
  }

  sub_1AFDDD74C(v14, v15, v16, v17, v18, v19, v20, v21);
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a3 + 64) != a1)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD83C(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(a3 + 80);
  *(a3 + 80) = cf;
  CFRetain(cf);
  cf[10] = v30;
  return sub_1AF1B9664(a1, cf);
}

void sub_1AF1B9920(void *cf)
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  v1 = cf[8];
  if (v1)
  {
    v3 = *(v1 + 72);
    if (v3 == cf)
    {
      *(v1 + 72) = cf[10];
    }

    else
    {
      if (!v3)
      {
        v4 = sub_1AF0D5194();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDD8B4(v4, v5, v6, v7, v8, v9, v10, v11);
        }
      }

      for (i = v3[10]; i != cf; i = v3[10])
      {
        v3 = i;
        if (!i)
        {
          v13 = sub_1AF0D5194();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDD92C(v14, v15, v13);
          }
        }
      }

      v3[10] = cf[10];
    }

    cf[10] = 0;
    cf[8] = 0;
    sub_1AF1C3A90(cf, cf[6]);
    CFRelease(cf);
  }
}

uint64_t sub_1AF1B9A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = v2 == 0;
  v4 = v2 == 0;
  v5 = 0;
  while (!v3 && v2 != a2)
  {
    ++v5;
    v2 = *(v2 + 80);
    v3 = v2 == 0;
    v4 = v2 == 0;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1AF1B9A6C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

__n128 sub_1AF1B9AB4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(sub_1AF1B9B04(a1) + 48);
}

uint64_t sub_1AF1B9B04(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return sub_1AF1CC1BC(a1 + 96);
  }

  v11 = sub_1AF1D0218(v10);
  if (!v11)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1AF0CE000, v22, OS_LOG_TYPE_DEFAULT, "Warning: CFXNodeGetWorldMatrixPtr - no transform tree", v23, 2u);
    }

    return sub_1AF1CC1BC(a1 + 96);
  }

  v12 = v11;
  if (*(a1 + 88) == -1)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD97C(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return sub_1AF14CD4C(v12, *(a1 + 88));
}

double sub_1AF1B9BEC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1B9B04(a1);
  v11 = *(v10 + 16);
  v12 = *(v10 + 32);
  v13 = vmulq_f32(*v10, *v10);
  v14 = vmulq_f32(v11, v11);
  v15 = vmulq_f32(v12, v12);
  v16 = vzip2q_s32(v13, v15);
  v17 = vzip1q_s32(vzip1q_s32(v13, v15), v14);
  v18 = vtrn2q_s32(v13, v14);
  v18.i32[2] = v15.i32[1];
  v19 = vaddq_f32(vzip1q_s32(v16, vdupq_laneq_s32(v14, 2)), vaddq_f32(v17, v18));
  v18.i64[0] = 0x80000000800000;
  v18.i64[1] = 0x80000000800000;
  v20 = vcgeq_f32(v18, v19);
  v19.i32[3] = 0;
  v21 = vrsqrteq_f32(v19);
  v22 = vmulq_f32(v21, vrsqrtsq_f32(v19, vmulq_f32(v21, v21)));
  v23 = v20;
  v23.i32[3] = 0;
  v24 = vbslq_s8(vcltzq_s32(v23), v19, vmulq_f32(v22, vrsqrtsq_f32(v19, vmulq_f32(v22, v22))));
  v25 = vmulq_n_f32(*v10, v24.f32[0]);
  v26 = vmulq_lane_f32(v11, *v24.f32, 1);
  v27 = vmulq_laneq_f32(v12, v24, 2);
  v28 = vuzp1q_s32(v27, v27);
  v29 = vuzp1q_s32(v26, v26);
  v30 = v25;
  if (v20.i32[0])
  {
    v31 = vmlaq_f32(vmulq_f32(vextq_s8(v28, v27, 0xCuLL), vnegq_f32(v26)), v27, vextq_s8(v29, v26, 0xCuLL));
    v30 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  }

  v32 = vuzp1q_s32(v25, v25);
  v33 = v26;
  if (v20.i32[1])
  {
    v34 = vmlaq_f32(vmulq_f32(vextq_s8(v32, v25, 0xCuLL), vnegq_f32(v27)), v25, vextq_s8(v28, v27, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  }

  if (v20.i32[2])
  {
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(v29, v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(v32, v25, 0xCuLL));
    v27 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v36 = (*v30.i32 + *&v33.i32[1]) + v27.f32[2];
  if (v36 > 0.0)
  {
    v37 = sqrtf(v36 + 1.0);
    *v38.f32 = vsub_f32(*&vzip2q_s32(v33, vuzp1q_s32(v33, v27)), *&vtrn2q_s32(v27, vzip2q_s32(v27, v30)));
    v38.f32[2] = *&v30.i32[1] - *v33.i32;
    v38.f32[3] = v37 * v37;
    v39 = 0.5 / v37;
LABEL_12:
    *&result = vmulq_n_f32(v38, v39).u64[0];
    return result;
  }

  if (*v30.i32 < *&v33.i32[1] || *v30.i32 < v27.f32[2])
  {
    if (*&v33.i32[1] <= v27.f32[2])
    {
      v48 = vzip2q_s32(v30, v33).u64[0];
      v49 = __PAIR64__(v30.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v27.f32[2] + 1.0) - *v30.i32) - *&v33.i32[1])));
      v50 = vdup_lane_s32(*v33.i8, 0);
      v51 = vsub_f32(*v30.i8, v50);
      v50.i32[0] = v49.i32[0];
      v50.i32[0] = vmul_f32(v49, v50).u32[0];
      v50.i32[1] = v51.i32[1];
      *v38.f32 = vadd_f32(v48, *v27.f32);
      *&v38.u32[2] = v50;
      v39 = 0.5 / v49.f32[0];
      goto LABEL_12;
    }

    v43 = sqrtf(((*&v33.i32[1] + 1.0) - *v30.i32) - v27.f32[2]);
    v47.f32[0] = *&v30.i32[1] + *v33.i32;
    v42 = vzip2q_s32(v30, v33).u64[0];
    v47.f32[1] = v43 * v43;
    *&v47.u32[2] = vext_s8(vadd_f32(*v27.f32, v42), vsub_f32(*v27.f32, v42), 4uLL);
  }

  else
  {
    v43 = sqrtf(((*v30.i32 + 1.0) - *&v33.i32[1]) - v27.f32[2]);
    v47.f32[0] = v43 * v43;
    v44 = *&v30.i32[1] + *v33.i32;
    v45 = vzip2q_s32(v30, v33).u64[0];
    LODWORD(v46) = vadd_f32(v45, *v27.f32).u32[0];
    HIDWORD(v46) = vsub_f32(v45, *&v27).i32[1];
    v47.f32[1] = v44;
    v47.i64[1] = v46;
  }

  *&result = vmulq_n_f32(v47, 0.5 / v43).u64[0];
  return result;
}

uint64_t sub_1AF1B9E68(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return sub_1AF1CC1BC(a1 + 96);
  }

  v11 = sub_1AF1D0218(v10);
  if (*(a1 + 88) == -1)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD97C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return sub_1AF14CE1C(v11, *(a1 + 88));
}

void sub_1AF1B9F10(__n128 *a1, float32x4_t a2)
{
  v3 = vceqq_f32(sub_1AF1CCB30(a1 + 6), a2);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    sub_1AF1CCB38(a1 + 6, a2);

    sub_1AF1B9F8C(a1);
  }
}

uint64_t sub_1AF1B9F8C(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    v2 = result;
    v3 = sub_1AF1D0218(*(result + 48));
    if (v3 && *(v2 + 88) != -1)
    {
      v4 = v3;
      *&v5 = sub_1AF1B7F84(v2);
      v12[0] = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      sub_1AF14CB08(v4, *(v2 + 88), v12);
    }

    v9 = sub_1AF1D0140(v1);
    if (v9)
    {
      sub_1AF143F74(v9, v2);
    }

    v10 = sub_1AF1D00B0(v1);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = sub_1AF1BDD24;
    v11[3] = &unk_1E7A7B7E0;
    v11[4] = v10;
    return sub_1AF1B94AC(v2, v11);
  }

  return result;
}

void sub_1AF1BA078(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v9 = vceqq_f32(sub_1AF1CCB48(a1 + 96, *a2.i64, a3, a4, a5, a6, a7, a8), a2);
  v9.i32[3] = v9.i32[2];
  if ((vminvq_u32(v9) & 0x80000000) == 0)
  {
    sub_1AF1CCB7C(a1 + 96, a2);

    sub_1AF1B9F8C(a1);
  }
}

uint64_t sub_1AF1BA104(__n128 *a1, __n128 a2)
{
  sub_1AF1CCAD8(a1 + 6, a2);

  return sub_1AF1B9F8C(a1);
}

uint64_t sub_1AF1BA148(__n128 *a1, __n128 a2)
{
  sub_1AF1CC980(a1 + 6, a2);

  return sub_1AF1B9F8C(a1);
}

void sub_1AF1BA184(__n128 *a1, __n128 a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  *v9.i64 = sub_1AF1CC1F0(&a1[6], a2.n128_f64[0], a3, a4, a5, a6, a7, a8);
  if ((vminvq_u32(vceqq_f32(v9, a2)) & 0x80000000) == 0)
  {
    sub_1AF1CC674(a1 + 6, a2);

    sub_1AF1B9F8C(a1);
  }
}

uint64_t sub_1AF1BA204(uint64_t a1, uint64_t a2)
{
  sub_1AF1CBF04(a1 + 96, a2);

  return sub_1AF1B9F8C(a1);
}

double sub_1AF1BA240(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *&result = sub_1AF1CBF20((a1 + 96)).n128_u64[0];
  return result;
}

double sub_1AF1BA28C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    v11 = *(v10 + 48);
  }

  else
  {
    *&v11 = 0;
  }

  return *&v11;
}

uint64_t sub_1AF1BA2E4(uint64_t a1, __n128 a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    v2 = a2;
    if (v5)
    {
      sub_1AFDD137C(v4, v6, v7, v8, v9, v10, v11, v12);
      v2 = a2;
    }
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    v2.n128_u32[3] = v13[3].n128_u32[3];
    v13[3] = v2;
  }

  else
  {
    v2.n128_u32[3] = 1.0;
    sub_1AF1B87C4(a1, xmmword_1AFE21C60, unk_1AFE21C70, xmmword_1AFE21C80, v2);
  }

  v14 = *(a1 + 192);
  if (v14)
  {
    *(v14 + 124) = 0;
  }

  return sub_1AF1B9F8C(a1);
}

uint64_t sub_1AF1BA38C(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD128C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = sub_1AF1BA490;
  v22[3] = &unk_1E7A7B6C8;
  v22[4] = &v23;
  v22[5] = a2;
  sub_1AF1B94AC(a1, v22);
  v20 = v24[3];
  _Block_object_dispose(&v23, 8);
  return v20;
}

uint64_t sub_1AF1BA490(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1B955C(a2);
  if (result)
  {
    if (CFEqual(result, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableArrayRef sub_1AF1BA4E4(uint64_t a1, __CFString *a2, char a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD128C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    sub_1AFDDD9F4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v23 = Mutable;
  if (@"model" == a2)
  {
    v24 = v30;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = sub_1AF1BA6A8;
    v30[3] = &unk_1E7A7B6E8;
    v30[4] = Mutable;
LABEL_11:
    v25 = v24 + 5;
    goto LABEL_12;
  }

  if (@"kDeformerStackKey" == a2)
  {
    v24 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = sub_1AF1BA6F8;
    v29[3] = &unk_1E7A7B708;
    v29[4] = Mutable;
    goto LABEL_11;
  }

  v24 = v27;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = sub_1AF1BA748;
  v27[3] = &unk_1E7A7B728;
  v27[4] = a2;
  v27[5] = Mutable;
  v25 = &v28;
LABEL_12:
  *v25 = a3;
  sub_1AF1B94AC(a1, v24);
  return v23;
}

uint64_t sub_1AF1BA6A8(uint64_t a1, const void *a2)
{
  if (sub_1AF1B75A0(a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1BA6F8(uint64_t a1, const void *a2)
{
  if (sub_1AF1B7558(a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1BA748(uint64_t a1, const void *a2)
{
  if (sub_1AF16D04C(a2, *(a1 + 32)) && (CFArrayAppendValue(*(a1 + 40), a2), (*(a1 + 48) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_1AF1BA79C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 220);
  if ((v10 & 0x20) != 0)
  {
    *(a1 + 256) = *(a1 + 204);
    if (*(a1 + 64))
    {
      *(a1 + 256) = sub_1AF1BA79C() * *(a1 + 256);
      v10 = *(a1 + 220);
    }

    *(a1 + 220) = v10 & 0xFFFFFFDF;
  }
}

void sub_1AF1BA81C(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = sub_1AF1D00B0(*(a1 + 48));
    sub_1AF133F8C(v13);
  }

  v14 = *(a1 + 220);
  if (*(a1 + 72))
  {
    *(a1 + 220) = v14 & 0xFFFFFFDF;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = sub_1AF1BDD58;
    v15[3] = &unk_1E7A7B800;
    v16 = a2;
    v15[4] = v12;
    sub_1AF1B94AC(a1, v15);
  }

  else
  {
    *(a1 + 220) = v14 | 0x20;
  }
}

uint64_t sub_1AF1BA900(uint64_t a1)
{
  v1 = a1;
  if (sub_1AF1B7348(a1))
  {
    return 1;
  }

  do
  {
    v1 = *(v1 + 64);
    v2 = v1 != 0;
  }

  while (v1 && !sub_1AF1B7348(v1));
  return v2;
}

float sub_1AF1BA950(uint64_t a1)
{
  v1 = a1;
  if (!sub_1AF1BA9A4(a1))
  {
    do
    {
      v1 = *(v1 + 64);
      if (!v1)
      {
        break;
      }

      if (*(v1 + 200))
      {
        break;
      }

      result = *(v1 + 204);
    }

    while (result > 0.0);
  }

  return result;
}

BOOL sub_1AF1BA9A4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 200) & 1) != 0 || *(a1 + 204) <= 0.0;
}

uint64_t sub_1AF1BAA04(uint64_t result, char a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v4 = result;
    if (sub_1AF1B8088(result) && *(v4 + 216) == -1)
    {
      v5 = sub_1AF0D5194();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDDA6C(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    sub_1AF1B7978(v4, 1);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1AF1BDE04;
    v13[3] = &unk_1E7A7B840;
    v14 = a2;
    v13[4] = v4;
    v13[5] = v2;
    return sub_1AF1B94AC(v4, v13);
  }

  return result;
}

BOOL sub_1AF1BAAD8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDDAE4(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  do
  {
LABEL_6:
    v3 = *(v3 + 64);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

void *sub_1AF1BAB68(CFArrayRef theArray)
{
  if (!theArray)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDB5C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v11 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (v11 >= 2)
  {
    for (i = 1; i != v11; ++i)
    {
      v14 = CFArrayGetValueAtIndex(theArray, i);
      if (!ValueAtIndex)
      {
        break;
      }

      while (!v14)
      {
LABEL_12:
        ValueAtIndex = ValueAtIndex[8];
        if (!ValueAtIndex)
        {
          return ValueAtIndex;
        }
      }

      v15 = v14;
      while (v15 != ValueAtIndex)
      {
        v15 = v15[8];
        if (!v15)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return ValueAtIndex;
}

const __CFDictionary *sub_1AF1BAC2C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = sub_1AF16CEA0(a1, @"kRenderingPriorityKey");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberLongType, &valuePtr);
    return valuePtr;
  }

  return result;
}

void sub_1AF1BACA4(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1BAC2C(a1) != a2)
  {
    if (a2)
    {
      valuePtr = a2;
      v12 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      sub_1AF16D044(a1, @"kRenderingPriorityKey", v12);
      CFRelease(v12);
    }

    else
    {
      sub_1AF16D044(a1, @"kRenderingPriorityKey", 0);
    }

    sub_1AF1CF760(*(a1 + 48), 5, a1, 0);
  }
}

uint64_t sub_1AF1BAD78(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 222) >> 2) & 1;
}

void sub_1AF1BADC4(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (((((v12 & 0x40000) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 0x40000;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 220) = v12 & 0xFFFBFFFF | v13;
    sub_1AF1CF760(*(a1 + 48), 5, a1, 0);
    sub_1AF1B7978(a1, 0);
  }
}

void sub_1AF1BAE60(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (((((v12 & 0x800000) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 0x800000;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 220) = v12 & 0xFF7FFFFF | v13;
    v14 = *(a1 + 48);
    sub_1AF1CF760(v14, 8, a1, 0);
    sub_1AF1CF760(v14, 5, a1, 0);
    sub_1AF1B7978(a1, 0);
  }
}

uint64_t sub_1AF1BAF14(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

uint64_t sub_1AF1BAF5C(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  a1[26] = a2;
  sub_1AF1CF760(a1[6], 5, a1, 0);
  return sub_1AF1B7978(a1, 0);
}

uint64_t sub_1AF1BAFDC(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t sub_1AF1BB008(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFF7F | v2;
  return result;
}

uint64_t sub_1AF1BB034(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t sub_1AF1BB060(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFBFFF | v2;
  return result;
}

uint64_t sub_1AF1BB08C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xF7FFFFFF | v2;
  return result;
}

const void *sub_1AF1BB0AC(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    return sub_1AF1B329C(result);
  }

  return result;
}

uint64_t sub_1AF1BB0BC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 221) & 1;
}

void sub_1AF1BB108(float32x4_t *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[3].i64[0];
  if (v12)
  {
    v13 = sub_1AF1B75E8(a1);
    if (v13)
    {
      sub_1AF1C3A90(v13, a1[3].i64[0]);
      v14 = sub_1AF1D00F8(v12);
      sub_1AF137B54(v14, a1);
    }
  }

  v15 = sub_1AF1C3F64(a1) != 0;
  sub_1AF16CF28(a1, @"kLightKey", a2, v15);
  if (a2)
  {
    v16 = a1[3].i64[0];
    if (v16)
    {
      sub_1AF1C3CB4(a2, v16);
    }
  }

  a1[13].i32[3] = a1[13].i32[3] & 0xFFFFFEFF | ((a2 != 0) << 8);
  if (a2 && v12)
  {
    v17 = sub_1AF1D00F8(v12);
    sub_1AF1378D0(v17, a1);
    sub_1AF137D98(v17, a2);
  }

  else if (!a2)
  {
    return;
  }

  if (sub_1AF19CBB4(a2) == 5 && sub_1AF19D3B0(a2))
  {
    sub_1AF1B78DC(a1);
  }

  if (sub_1AF19B944(a2))
  {
    if (sub_1AF19B994(a2))
    {
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v12, 0, 1u);
    }
  }
}

const __CFDictionary *sub_1AF1BB260(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 2) != 0)
  {
    return sub_1AF16CEA0(a1, @"kCameraKey");
  }

  else
  {
    return 0;
  }
}

void sub_1AF1BB2D4(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1C3F64(a1))
  {
    v12 = sub_1AF1BB260(a1);
    if (v12)
    {
      sub_1AF1C3A90(v12, *(a1 + 48));
    }
  }

  v13 = sub_1AF1C3F64(a1) != 0;
  sub_1AF16CF28(a1, @"kCameraKey", a2, v13);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFDFF | ((a2 != 0) << 9);
  if (a2)
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      sub_1AF1C3CB4(a2, v14);
    }
  }
}

uint64_t sub_1AF1BB398(uint64_t a1)
{
  result = *(a1 + 248);
  if (result)
  {
    return sub_1AF16BC38(result);
  }

  return result;
}

void sub_1AF1BB3A8(void *a1, const __CFArray *cf)
{
  v4 = a1[31];
  if (cf && !v4)
  {
    v4 = sub_1AF16B520(a1);
    a1[31] = v4;
  }

  if (v4)
  {
    sub_1AF16BC80(v4, cf);
    if (sub_1AF16B6E4(v4))
    {
      v5 = a1[31];
      if (v5)
      {
        CFRelease(v5);
        a1[31] = 0;
      }
    }

    if (a1[6])
    {

      sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
    }
  }
}

const __CFDictionary *sub_1AF1BB464(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 4) != 0)
  {
    return sub_1AF16CEA0(a1, @"kLightmapInfoKey");
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1BB4CC(uint64_t a1)
{
  result = sub_1AF1B7DB8(a1);
  if (result)
  {
    v2 = result;
    return sub_1AF16F0B8(result) == 0.0 || sub_1AF16F0C8(v2) == 0.0;
  }

  return result;
}

const __CFDictionary *sub_1AF1BB518(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 222))
  {
    return sub_1AF16CEA0(a1, @"kAudioPlayer");
  }

  else
  {
    return 0;
  }
}

CFIndex sub_1AF1BB580(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 222) & 1) == 0)
  {
    return 0;
  }

  v11 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  return CFArrayGetCount(v11);
}

uint64_t sub_1AF1BB5EC(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDDBD4(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1BB580(a1);
  sub_1AF1BB690(a1, a2, v20);
  result = sub_1AF1BA900(a1);
  if ((result & 1) == 0)
  {
    return sub_1AF15AA98(a2, v22, v23, v24);
  }

  return result;
}

uint64_t sub_1AF1BB690(uint64_t a1, void *a2, CFIndex a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    sub_1AFDDDBD4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Mutable = sub_1AF16CEA0(a1, @"kAudioPlayer");
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    sub_1AF16D044(a1, @"kAudioPlayer", Mutable);
    CFRelease(Mutable);
  }

  CFArrayInsertValueAtIndex(Mutable, a3, a2);
  *(a1 + 220) |= 0x10000u;
  v23 = sub_1AF1B9B04(a1);
  sub_1AF15AA28(a2, v24, v25, v26, v23->n128_f64[0], v23[1].n128_f64[0], v23[2].n128_f64[0], v23[3]);
  return sub_1AF15AB24(a2, v27, v28, v29);
}

void sub_1AF1BB79C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      do
      {
        sub_1AF1BB848(a1, 0, 1);
        --v12;
      }

      while (v12);
    }

    sub_1AF16D044(a1, @"kAudioPlayer", 0);
  }

  *(a1 + 220) &= ~0x10000u;
}

void sub_1AF1BB848(uint64_t a1, CFIndex a2, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  if (v14)
  {
    v15 = v14;
    ValueAtIndex = CFArrayGetValueAtIndex(v14, a2);
    v17 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    CFArrayRemoveValueAtIndex(v15, a2);
    if (CFArrayGetCount(v15))
    {
      *(a1 + 220) &= ~0x10000u;
    }

    if (a3)
    {
      sub_1AF15AB78(v17, v18, v19, v20);
    }

    sub_1AF29D0AC(v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void sub_1AF1BB91C(uint64_t a1, const void *a2, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    sub_1AFDDDC4C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  if (v22)
  {
    v23 = v22;
    v25.length = CFArrayGetCount(v22);
    v25.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v23, v25, a2);
    if (FirstIndexOfValue != -1)
    {
      sub_1AF1BB848(a1, FirstIndexOfValue, a3);
    }
  }
}

void sub_1AF1BB9E4(uint64_t a1, void *cf, CFIndex a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, v7, v8, v9, v10, v11, v12, v13);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    CFRetain(cf);
    sub_1AF1BB848(a1, a3, 1);
    sub_1AF1BB690(a1, cf, a3);
    v14 = sub_1AF1B9B04(a1);
    sub_1AF15AA28(cf, v15, v16, v17, v14->n128_f64[0], v14[1].n128_f64[0], v14[2].n128_f64[0], v14[3]);
    CFRelease(cf);
    return;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDDC4C(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  sub_1AF1BB848(a1, a3, 1);
  sub_1AF1BB690(a1, 0, a3);
  v26 = sub_1AF1B9B04(a1);
  sub_1AF15AA28(0, v27, v28, v29, v26->n128_f64[0], v26[1].n128_f64[0], v26[2].n128_f64[0], v26[3]);
}

void sub_1AF1BBAE0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 222))
  {
    v10 = sub_1AF16CEA0(a1, @"kAudioPlayer");
    if (!v10)
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD666C(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v19 = sub_1AF1B9B04(a1);
    v29 = v19[1];
    v30 = *v19;
    v27 = v19[3];
    v28 = v19[2];
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v21 = Count;
      for (i = 0; i != v21; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        sub_1AF15AA28(ValueAtIndex, v24, v25, v26, v30.n128_f64[0], v29.n128_f64[0], v28.n128_f64[0], v27);
      }
    }
  }
}

const __CFDictionary *sub_1AF1BBBCC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 0x20) != 0)
  {
    return sub_1AF16CEA0(a1, @"kConstraints");
  }

  else
  {
    return 0;
  }
}

void sub_1AF1BBC34(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1C3F64(a1))
  {
    v12 = sub_1AF1BBBCC(a1);
    if (v12)
    {
      v13 = v12;
      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v18 = sub_1AF1C3F64(a1);
          sub_1AF1C3A90(ValueAtIndex, v18);
        }
      }
    }
  }

  v19 = sub_1AF1C3F64(a1) != 0;
  sub_1AF16CF28(a1, @"kConstraints", a2, v19);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFDFFF | ((a2 != 0) << 13);
  v20 = *(a1 + 48);
  if (v20)
  {
    sub_1AF1CEC60(*(a1 + 48), a1);
    if (a2)
    {
      v21 = CFArrayGetCount(a2);
      if (v21 >= 1)
      {
        v22 = v21;
        for (j = 0; j != v22; ++j)
        {
          v24 = CFArrayGetValueAtIndex(a2, j);
          sub_1AF1C3CB4(v24, v20);
        }
      }
    }
  }
}

void sub_1AF1BBD7C(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFFFFFBF | ((a2 != 0) << 6);
  sub_1AF16D044(a1, @"kPhysicsBodyKey", a2);
}

const __CFDictionary *sub_1AF1BBDF8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kPhysicsBodyKey");
}

uint64_t sub_1AF1BBE50(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 220) >> 6) & 1;
}

uint64_t sub_1AF1BBE9C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 222) >> 1) & 1;
}

void sub_1AF1BBEE8(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1C3F64(a1);
  if (v12)
  {
    v13 = sub_1AF1BBFEC(a1);
    if (v13)
    {
      v14 = v13;
      sub_1AF1CEEB0(v12, a1);
      sub_1AF350D48(v14, 0);
      sub_1AF1C3A90(v14, *(a1 + 48));
    }
  }

  v15 = sub_1AF1C3F64(a1) != 0;
  sub_1AF16CF28(a1, @"kForceFieldKey", a2, v15);
  *(a1 + 220) = *(a1 + 220) & 0xFFFDFFFF | ((a2 != 0) << 17);
  if (a2)
  {
    sub_1AF350D48(a2, a1);
    v16 = *(a1 + 48);
    if (v16)
    {
      sub_1AF1C3CB4(a2, v16);
    }

    if (v12)
    {
      sub_1AF1CEE2C(v12, a1);
    }
  }
}

const __CFDictionary *sub_1AF1BBFEC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 222) & 2) != 0)
  {
    return sub_1AF16CEA0(a1, @"kForceFieldKey");
  }

  else
  {
    return 0;
  }
}

const __CFDictionary *sub_1AF1BC05C(uint64_t a1)
{
  v1 = sub_1AF1BC094(a1);
  if (!v1)
  {
    return 0;
  }

  v5 = v1;
  if ((sub_1AF16AD10(v1, v2, v3, v4) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

const __CFDictionary *sub_1AF1BC094(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1BC0EC(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 48);
  v13 = sub_1AF1BC094(a1);
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    sub_1AF1C3A90(v13, *(a1 + 48));
  }

  v16 = sub_1AF1C3F64(a1) != 0;
  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, v16);
  *(a1 + 220) = *(a1 + 220) & 0xFFBFFFFF | ((sub_1AF1BC094(a1) != 0) << 22);
  if (v12 && (a2 == 0) == (v14 != 0))
  {
    if (v14)
    {
      sub_1AF1CEDD4(v12, a1);
    }

    else
    {
      sub_1AF1CED38(v12, a1);
      sub_1AF1BDAA8(a1);
    }

    sub_1AF1B73A0(a1, v12);
  }

  if (a2)
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      sub_1AF1C3CB4(a2, v17);
    }
  }
}

uint64_t sub_1AF1BC210(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void sub_1AF1BC258(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 >= 4)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDCC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFC7FFFF | ((v2 & 7) << 19);
}

uint64_t sub_1AF1BC2C4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFEFFFFFF | v2;
  return result;
}

uint64_t sub_1AF1BC2FC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  do
  {
    v1 = *(a1 + 220);
    v2 = (v1 >> 25) & 1;
    if ((v1 & 0x2000000) != 0)
    {
      break;
    }

    a1 = *(a1 + 64);
  }

  while (a1);
  return v2;
}

uint64_t sub_1AF1BC324(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x2000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFDFFFFFF | v2;
  return result;
}

uint64_t sub_1AF1BC344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 216);
  if (v2 != -1)
  {
    sub_1AF127798(*(a1 + 32), v2);
  }

  return 0;
}

id sub_1AF1BC378(uint64_t a1)
{
  v2 = sub_1AF1B75A0(a1);
  if (v2)
  {
    sub_1AF1B37C0(v2, a1);
  }

  sub_1AF1BE334(@"kCFXNotificationNodeWillDie", a1, 0, 1u);
  v3 = *(a1 + 192);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 220);
  if ((v4 & 0x10000) != 0)
  {
    sub_1AF1BB79C(a1);
    v4 = *(a1 + 220);
  }

  if ((v4 & 0x20000) != 0)
  {
    sub_1AF1BBEE8(a1, 0);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    do
    {
      v6 = v5[8];
      if (v6 == a1)
      {
        v5[8] = 0;
      }

      else if (v6)
      {
        v7 = sub_1AF0D5194();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDDD3C(&v14, v15, v7);
        }
      }

      v8 = v5[10];
      v5[10] = 0;
      CFRelease(v5);
      v5 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 80) = 0;
  }

  v10 = *(a1 + 240);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 240) = 0;
  }

  v11 = *(a1 + 248);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 248) = 0;
  }

  v12 = *(a1 + 232);
  if (v12)
  {
    free(v12);
  }

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1BC4AC(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = sub_1AF1B955C(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v3, a1, v4);
  v5 = sub_1AF1B75A0(a1);
  CFStringAppendFormat(Mutable, 0, @"  model: %@\n", v5);
  v6 = *(a1 + 220);
  if ((v6 & 0x100) != 0)
  {
    v7 = sub_1AF1B75E8(a1);
    CFStringAppendFormat(Mutable, 0, @"  light: %@\n", v7);
    v6 = *(a1 + 220);
  }

  if ((v6 & 0x200) != 0)
  {
    v8 = sub_1AF1BB260(a1);
    CFStringAppendFormat(Mutable, 0, @"  camera: %@\n", v8);
  }

  v9 = *(a1 + 248);
  if (v9)
  {
    v10 = sub_1AF16BB4C(v9);
    if (v10)
    {
      CFStringAppendFormat(Mutable, 0, @"  skinner: %@\n", v10);
    }
  }

  v11 = sub_1AF1B9158(a1);
  if (v11)
  {
    CFStringAppendFormat(Mutable, 0, @"  morpher: %@\n", v11);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1BC5F4(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0x500000001;
  v61 = sub_1AF16CCC0(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v5, @"name", @"id");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  v61 = sub_1AF16CBEC(a1);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v9, @"name", @"name");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  v61 = sub_1AF16CE58(a1);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v13, @"name", @"attributes");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = MEMORY[0x1E695E9D8];
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v4);
  valuePtr = 0xA00000000;
  v61 = a1 + 96;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v18, @"name", @"transforms");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, v17, v4);
  valuePtr = 0x500000002;
  v61 = a1 + 72;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v22, @"name", @"firstChild");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x1E695E9E8]);
  valuePtr = 0x500000002;
  v61 = a1 + 80;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v26, @"name", @"nextSibling");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x1E695E9E8]);
  valuePtr = 0x100000000;
  v61 = a1 + 204;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v30, @"name", @"opacity");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x1E695E9E8]);
  valuePtr = 0x300000000;
  v61 = a1 + 200;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v34, @"name", @"hidden");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v61 = a1 + 64;
  valuePtr = 0;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v38, @"name", @"parent");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(Mutable, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  v42 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0x500000002;
  v61 = a1 + 240;
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v45 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v42, @"name", @"model");
  CFDictionarySetValue(v42, @"type", v43);
  CFDictionarySetValue(v42, @"address", v45);
  CFDictionarySetValue(v42, @"semantic", v44);
  CFArrayAppendValue(Mutable, v42);
  CFRelease(v44);
  CFRelease(v42);
  CFRelease(v45);
  CFRelease(v43);
  v46 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0x2D00000000;
  v61 = a1 + 208;
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v49 = CFNumberCreate(0, kCFNumberLongType, &v61);
  CFDictionarySetValue(v46, @"name", @"categoryBitMask");
  CFDictionarySetValue(v46, @"type", v47);
  CFDictionarySetValue(v46, @"address", v49);
  CFDictionarySetValue(v46, @"semantic", v48);
  CFArrayAppendValue(Mutable, v46);
  CFRelease(v48);
  CFRelease(v46);
  CFRelease(v49);
  CFRelease(v47);
  if (sub_1AF1B9158(a1))
  {
    v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    valuePtr = 0x500000001;
    v61 = sub_1AF1B9158(a1);
    v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v53 = CFNumberCreate(0, kCFNumberLongType, &v61);
    CFDictionarySetValue(v50, @"name", @"morpher");
    CFDictionarySetValue(v50, @"type", v51);
    CFDictionarySetValue(v50, @"address", v53);
    CFDictionarySetValue(v50, @"semantic", v52);
    CFArrayAppendValue(Mutable, v50);
    CFRelease(v52);
    CFRelease(v50);
    CFRelease(v53);
    CFRelease(v51);
  }

  v54 = *(a1 + 248);
  if (v54 && sub_1AF16BB4C(v54))
  {
    v55 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    valuePtr = 0x500000001;
    v56 = *(a1 + 248);
    if (v56)
    {
      v56 = sub_1AF16BB4C(v56);
    }

    v61 = v56;
    v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v59 = CFNumberCreate(0, kCFNumberLongType, &v61);
    CFDictionarySetValue(v55, @"name", @"skinner");
    CFDictionarySetValue(v55, @"type", v57);
    CFDictionarySetValue(v55, @"address", v59);
    CFDictionarySetValue(v55, @"semantic", v58);
    CFArrayAppendValue(Mutable, v55);
    CFRelease(v58);
    CFRelease(v55);
    CFRelease(v59);
    CFRelease(v57);
  }

  return Mutable;
}

uint64_t sub_1AF1BD260(float32x4_t *a1, int a2, float32x4_t *a3, float32x4_t *a4)
{
  v10 = 0u;
  v11 = 0u;
  if (a2)
  {
    if (sub_1AF1B81E4(a1, 1, &v10))
    {
LABEL_3:
      v6 = v10;
      v7 = v11;
      *a3 = vsubq_f32(v10, v11);
      *a4 = vaddq_f32(v6, v7);
      return 1;
    }
  }

  else
  {
    v9 = a1[18];
    v10 = a1[17];
    v11 = v9;
    if ((vminvq_u32(vcgezq_f32(a1[18])) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1AF1BD2E4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDD7C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3000000000;
  v43 = 0;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3000000000;
  v39[4] = 0;
  v39[5] = 0;
  v14 = sub_1AF1B75A0(a1);
  if (v14)
  {
    v15 = v14;
    v16 = *(a1 + 248);
    if (v16)
    {
      v17 = sub_1AF16BB4C(v16);
      if (v17)
      {
        v33 = 0u;
        v34 = 0u;
        v18 = sub_1AF1C9DE4(v17, a1, &v33);
LABEL_11:
        *(v36 + 24) = v18;
        v20 = v33;
        HIDWORD(v20) = vmaxvq_f32(v34);
        *(v41 + 2) = v20;
        goto LABEL_12;
      }
    }

    v19 = sub_1AF1C39FC(v15, a2, (v41 + 4));
    *(v36 + 24) = v19;
  }

  else if (sub_1AF1B83E8(a1))
  {
    v33 = 0u;
    v34 = 0u;
    sub_1AF1B82C8(a1, a2, &v33);
    goto LABEL_11;
  }

LABEL_12:
  if (a2)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v27 = sub_1AF1BD528;
    v28 = &unk_1E7A7B770;
    v32 = a2;
    v29 = v39;
    v30 = &v35;
    v31 = &v40;
    v21 = *(a1 + 72);
    if (v21)
    {
      v22 = 0;
      do
      {
        (v27)(v26, v21, v22++);
        v21 = *(v21 + 80);
      }

      while (v21);
    }
  }

  v23 = v36;
  if (*(v36 + 24) == 1)
  {
    *a3 = *(v41 + 2);
    v24 = *(v23 + 24);
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v35, 8);
  return v24 & 1;
}

__n128 sub_1AF1BD528(uint64_t a1, CFTypeRef cf)
{
  if (sub_1AF1C39FC(cf, *(a1 + 56), *(*(a1 + 32) + 8) + 32))
  {
    *v5.i64 = sub_1AF1B7F84(cf);
    v16[0] = v5;
    v16[1] = v6;
    v16[2] = v7;
    v16[3] = v8;
    v9 = *(*(a1 + 32) + 8);
    v13 = sub_1AF1CCB48(cf + 96, *v5.i64, *v6.i64, *v7.i64, *v8.i64, v10, v11, v12);
    sub_1AF27A190(v9 + 2, v16, (*(*(a1 + 32) + 8) + 32), v13);
    v14 = *(*(a1 + 40) + 8);
    if (*(v14 + 24))
    {
      v15 = (*(*(a1 + 48) + 8) + 32);
      sub_1AF1DA274(v15, (*(*(a1 + 32) + 8) + 32), v15);
    }

    else
    {
      *(v14 + 24) = 1;
      result = *(*(*(a1 + 32) + 8) + 32);
      *(*(*(a1 + 48) + 8) + 32) = result;
    }
  }

  return result;
}

void sub_1AF1BD604(void **a1, __n128 *__dst, unsigned __int32 *__src, size_t __n, int a5, unsigned int a6, __n128 a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13)
{
  v14 = (a1 + 12);
  if (v14 == __dst)
  {
    sub_1AF1CD69C(v14, __src, __n, a5, a6, a7, a8, a9, a10, a11, a12, a13);

    sub_1AF1B9F8C(a1);
  }

  else if (a1[24] == __dst)
  {
    v15 = *(__src + 2);
    v16 = *(__src + 3);
    v17 = *__src;
    v18 = *(__src + 1);

    sub_1AF1B87C4(a1, v17, v18, v15, v16);
  }

  else if ((a1 + 204) == __dst)
  {
    v19 = *__src;

    sub_1AF1B88DC(a1, *&v19);
  }

  else if (a1 + 25 == __dst)
  {
    v20 = *__src;

    sub_1AF1B8A78(a1, v20);
  }

  else
  {

    memcpy(__dst, __src, __n);
  }
}

void sub_1AF1BD714(uint64_t a1, const void *a2, void *__dst, size_t __n, int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13)
{
  v13 = a1 + 96;
  if (v13 == a2)
  {
    sub_1AF1CCF54(v13, __dst, __n, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }

  else
  {
    memcpy(__dst, a2, __n);
  }
}

uint64_t sub_1AF1BD740(void *a1, void (**a2)(void))
{
  v4 = sub_1AF16CE58(a1);
  if (v4)
  {
    CFDictionaryApplyFunction(v4, sub_1AF1BDA3C, a2);
  }

  if (a1[30])
  {
    a2[2](a2);
  }

  v5 = sub_1AF1B9158(a1);
  if (v5)
  {
    (a2[2])(a2, v5);
  }

  v6 = a1[31];
  if (v6)
  {
    v7 = sub_1AF16BB4C(v6);
    if (v7)
    {
      (a2[2])(a2, v7);
    }
  }

  result = sub_1AF1BBBCC(a1);
  if (result)
  {
    v9 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v10 = result;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        result = (a2[2])(a2, ValueAtIndex);
      }
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v16 = sub_1AF1BDA98;
  v17 = &unk_1E7A7B798;
  v18 = a2;
  v13 = a1[9];
  if (v13)
  {
    v14 = 0;
    do
    {
      result = (v16)(v15, v13, v14++);
      v13 = *(v13 + 80);
    }

    while (v13);
  }

  return result;
}

void sub_1AF1BD8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1D0218(a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(v5 + 88);
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 88) = sub_1AF14C160(v4, a1, v6);
  sub_1AF1B73A0(a1, a2);
  if ((*(a1 + 222) & 0x40) != 0)
  {
    sub_1AF1CED38(a2, a1);

    sub_1AF1BDAA8(a1);
  }
}

void sub_1AF1BD948(unsigned int *a1, uint64_t a2)
{
  sub_1AF1CF194(a2, a1);
  if (a1[22] != -1)
  {
    v4 = sub_1AF1D0218(a2);
    if (v4)
    {
      sub_1AF14C3E8(v4, a1[22]);
    }

    a1[22] = -1;
  }

  if (a1[54] != -1)
  {
    v5 = sub_1AF1D01D0(a2);
    if (v5)
    {
      sub_1AF127918(v5, a1[54]);
    }

    a1[54] = -1;
  }
}

void sub_1AF1BD9C8(float32x4_t *a1)
{
  if (!a1[4].i64[0])
  {
    sub_1AF1BAA04(a1, 1);
  }

  v2 = a1[15].i64[1];
  if (v2)
  {
    v3 = sub_1AF16BB4C(v2);
    if (v3)
    {
      v4 = v3;
      if (sub_1AF15B294(v3))
      {

        sub_1AF1C9CD8(v4, a1);
      }
    }
  }
}

const void *sub_1AF1BDA3C(uint64_t a1, const void *a2, uint64_t a3)
{
  result = sub_1AF16D234(a2);
  if (result)
  {
    v6 = *(a3 + 16);

    return v6(a3, a2);
  }

  return result;
}

uint64_t sub_1AF1BDAA8(uint64_t result)
{
  if ((*(result + 222) & 0x40) != 0)
  {
    v2 = result;
    v3 = sub_1AF1B7348(result);
    v4 = sub_1AF1BC094(v2);

    return sub_1AF16AC10(v4, (v3 ^ 1u), v5, v6);
  }

  return result;
}

uint64_t sub_1AF1BDAF8(uint64_t a1, const void *a2)
{
  v3 = a1;
  v4 = sub_1AF16CCC0(a1);
  if (!sub_1AF1D2AE0(v4, a2))
  {
    v5 = sub_1AF16CBEC(v3);
    if (!v5 || !sub_1AF1D2AE0(v5, a2))
    {
      v6 = sub_1AF1B75A0(v3);
      v7 = sub_1AF1C4020(v6, a2);
      if (v7)
      {
        return v7;
      }

      v8 = sub_1AF1B75E8(v3);
      v7 = sub_1AF1C4020(v8, a2);
      if (v7)
      {
        return v7;
      }

      v9 = sub_1AF1B9158(v3);
      v7 = sub_1AF1C4020(v9, a2);
      if (v7)
      {
        return v7;
      }

      v10 = *(v3 + 248);
      if (v10)
      {
        v10 = sub_1AF16BB4C(v10);
      }

      v7 = sub_1AF1C4020(v10, a2);
      if (v7)
      {
        return v7;
      }

      v11 = sub_1AF1B7DB8(v3);
      v7 = sub_1AF1C4020(v11, a2);
      if (v7)
      {
        return v7;
      }

      v12 = sub_1AF1BB260(v3);
      v7 = sub_1AF1C4020(v12, a2);
      if (v7)
      {
        return v7;
      }

      else
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x2000000000;
        v18 = 0;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 0x40000000;
        v14[2] = sub_1AF1BDC54;
        v14[3] = &unk_1E7A7B7C0;
        v14[4] = &v15;
        v14[5] = a2;
        sub_1AF1B9434(v3, v14);
        v3 = v16[3];
        _Block_object_dispose(&v15, 8);
      }
    }
  }

  return v3;
}

uint64_t sub_1AF1BDC54(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1AF1BDAF8(a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void sub_1AF1BDCAC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFC7FFFF | ((a2 & 7) << 19);
  for (i = *(a1 + 72); i; i = *(i + 80))
  {
    sub_1AF1BDCAC(i, a2);
  }
}

uint64_t sub_1AF1BDD24(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 221) & 0x4301) != 0)
  {
    sub_1AF133EE8(*(a1 + 32), a2);
  }

  return 0;
}

uint64_t sub_1AF1BDD58(uint64_t a1, _DWORD *a2)
{
  v2 = a2[55];
  if ((*(a1 + 40) & 1) == 0 && (v2 & 0x20) != 0)
  {
    return 1;
  }

  a2[55] = v2 | 0x20;
  if (*(a1 + 40) == 1)
  {
    sub_1AF1CF760(*(a1 + 32), 4, a2, 0);
  }

  return 0;
}

uint64_t sub_1AF1BDDBC(uint64_t a1, float *a2)
{
  if (a2[51] < 1.0)
  {
    return 1;
  }

  sub_1AF1CF760(*(a1 + 32), 4, a2, 0);
  return 0;
}

uint64_t sub_1AF1BDE04(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B7348(a2) && ((*(a1 + 48) & 1) != 0 || *(a1 + 32) != a2))
  {
    return 1;
  }

  if (sub_1AF1B8088(a2))
  {
    if (*(a2 + 216) == -1)
    {
      v5 = sub_1AF0D5194();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDDDF4(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  v15 = sub_1AF1BC094(a2);
  v16 = *(a1 + 48);
  if (v16 == 1)
  {
    sub_1AF1CF760(*(a2 + 48), 0, a2, 0);
    v17 = *(a1 + 40);
    if (v17)
    {
      sub_1AF1CEFD8(v17, a2);
    }
  }

  else
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      sub_1AF1CF318(v18, a2);
    }
  }

  if (v15)
  {
    sub_1AF16AC10(v15, v16, v13, v14);
  }

  v19 = sub_1AF1B7DB8(a2);
  v20 = sub_1AF1B75E8(a2);
  if (v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == sub_1AF19AF4C()) && sub_1AF19B944(v21) && (sub_1AF19B994(v21) & 1) != 0 || v19)
  {
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", *(a1 + 40), 0, 1u);
  }

  return 0;
}

uint64_t sub_1AF1BDF5C(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a2 || (v6 = (*a2)(a1, a3)) == 0)
  {
    v7 = a2[1];
    if (!v7)
    {
      v6 = 0;
LABEL_10:
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = sub_1AF1BE060;
      v10[3] = &unk_1E7A7B860;
      v10[4] = a2;
      v10[5] = a3;
      if (sub_1AF1B9434(a1, v10))
      {
        v6 = 3;
      }

      goto LABEL_12;
    }

    v6 = v7(a1, a3);
  }

  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_10;
  }

LABEL_12:
  v8 = a2[2];
  if (v8)
  {
    v8(a1, a3);
  }

  return v6;
}

uint64_t sub_1AF1BE060(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1AF1BDF5C(a2, *(a1 + 32), *(a1 + 40));
  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1AF1BE0A0(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = (*a2)(a1, a3);
  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_6:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = sub_1AF1BE198;
    v10[3] = &unk_1E7A7B880;
    v10[4] = a2;
    v10[5] = a3;
    sub_1AF1B9434(a1, v10);
  }

  v7 = a2[2];
  if (v7)
  {
    v7(a1, a3);
  }

  if (!v6)
  {
    v8 = a2[1];
    if (v8)
    {
      return v8(a1, a3);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1AF1BE198(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1AF1BE0A0(a2, *(a1 + 32), *(a1 + 40));
  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1AF1BE1D8(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDDE6C(v8);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v9 = sub_1AF0D5194();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDDEF0(v9);
  }

LABEL_6:
  if (a3)
  {
    return sub_1AF1BE0A0(a1, a2, a4);
  }

  else
  {
    return sub_1AF1BDF5C(a1, a2, a4);
  }
}

void sub_1AF1BE27C(const void *a1, void (__cdecl *a2)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a3, const void *a4, CFNotificationSuspensionBehavior a5)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, a1, a2, a3, a4, a5);
}

void sub_1AF1BE2E4(const void *a1, const __CFString *a2, const void *a3)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a1, a2, a3);
}

void sub_1AF1BE334(const __CFString *a1, const void *a2, const __CFDictionary *a3, Boolean a4)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, a2, a3, a4);
}

void sub_1AF1BE38C(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2)
  {

    v2();
  }

  else
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDDF74(v3);
    }
  }
}

void sub_1AF1BE3E0(uint64_t a1)
{
  v24[11] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      if (v2 == sub_1AF1BE68C)
      {
        v3 = sub_1AF1B1FE0(a1);
        v4 = 0;
        if (v3 <= 8)
        {
          v5 = v3;
          if (v3)
          {
            if (v3 >= 1)
            {
              v6 = 0;
              do
              {
                v7 = sub_1AF1B2030(a1, v6);
                if (v6)
                {
                  v8 = v7;
                  v9 = 0;
                  while (sub_1AF1B2030(a1, v9) != v8)
                  {
                    if (v6 == ++v9)
                    {
                      v9 = v6;
                      break;
                    }
                  }

                  v10 = v9 + 1;
                }

                else
                {
                  v10 = 1;
                }

                v24[v6++] = v10;
              }

              while (v6 != v5);
            }

            v11 = 0;
            v12 = 0;
            v4 = 0;
            do
            {
              v4 |= v24[v12 % v5] << v11;
              ++v12;
              v11 += 4;
            }

            while (v12 != 8);
          }
        }

        *(a1 + 284) = v4;
      }

      os_unfair_lock_lock(&unk_1EB654CD8);
      sub_1AF1C2FF8();
      if (*(a1 + 336))
      {
        sub_1AF1C3074(a1);
      }

      v13 = (*(a1 + 320))(a1, v24);
      v14 = CFDataCreate(*MEMORY[0x1E695E480], v24, v13);
      Value = CFDictionaryGetValue(qword_1ED731AF8, v14);
      if (Value)
      {
        v16 = Value;
        sub_1AF1C2274(v14);
      }

      else
      {
        v16 = (*(a1 + 288))(a1 + 208);
        if (v16)
        {
          CFDictionarySetValue(qword_1ED731B00, v14, 1);
          CFDictionarySetValue(qword_1ED731AF8, v14, v16);
          CFRelease(v16);
          v21 = sub_1AF1C3FAC(a1);
          if (v21)
          {
            v22 = sub_1AF1D0140(v21);
            sub_1AF14434C(v22, a1);
          }
        }
      }

      v17 = sub_1AF1C3FAC(a1);
      v18 = v17;
      if (v17)
      {
        sub_1AF1CEA20(v17);
      }

      if (v16)
      {
        v19 = *(a1 + 336);
        if (v19 != v14)
        {
          if (v19)
          {
            CFRelease(v19);
            *(a1 + 336) = 0;
          }

          if (v14)
          {
            v20 = CFRetain(v14);
          }

          else
          {
            v20 = 0;
          }

          *(a1 + 336) = v20;
        }

        v23 = sub_1AF1A2EDC(v16);
        sub_1AF1B2C80(a1, v23);
        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        sub_1AF1B2C80(a1, 0);
      }

      if (v18)
      {
        sub_1AF1CEA9C(v18);
      }

      CFRelease(v14);
      os_unfair_lock_unlock(&unk_1EB654CD8);
    }
  }
}

uint64_t sub_1AF1BE6B0(uint64_t result)
{
  if (*(result + 288) == sub_1AF1BE68C)
  {
    v1 = result;
    result = sub_1AF1BE6FC(result);
    *(v1 + 284) = -1;
  }

  return result;
}

uint64_t sub_1AF1BE6FC(uint64_t a1)
{
  if (*(a1 + 64))
  {
    os_unfair_lock_lock(&unk_1EB654CD8);
    sub_1AF1C3074(a1);
    os_unfair_lock_unlock(&unk_1EB654CD8);
  }

  return sub_1AF1B2C80(a1, 0);
}

uint64_t sub_1AF1BE75C(uint64_t a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = &xmmword_1F24E8080;
      }

      else
      {
        v2 = &xmmword_1F24E80E0;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v2 = &xmmword_1F24E80B0;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v2 = &xmmword_1F24E8110;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = &xmmword_1F24E8140;
      }

      else
      {
        v2 = &xmmword_1F24E8170;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v2 = &xmmword_1F24E81A0;
        goto LABEL_20;
      case 7:
        v2 = &xmmword_1F24E81D0;
        goto LABEL_20;
      case 8:
        v2 = &xmmword_1F24E8200;
LABEL_20:
        v3 = v2[1];
        *(a1 + 288) = *v2;
        *(a1 + 304) = v3;
        *(a1 + 320) = v2[2];
        break;
    }
  }

  return sub_1AF1BE6FC(a1);
}

uint64_t sub_1AF1BE834(uint64_t a1)
{
  memset(v2, 0, sizeof(v2));
  sub_1AF1BE95C(a1, v2);
  result = memcmp(v2, &xmmword_1F24E80B0, 0x30uLL);
  if (result)
  {
    if (!memcmp(v2, &xmmword_1F24E80E0, 0x30uLL))
    {
      return 3;
    }

    else if (!memcmp(v2, &xmmword_1F24E8140, 0x30uLL))
    {
      return 4;
    }

    else if (!memcmp(v2, &xmmword_1F24E8170, 0x30uLL))
    {
      return 5;
    }

    else if (!memcmp(v2, &xmmword_1F24E81A0, 0x30uLL))
    {
      return 6;
    }

    else if (!memcmp(v2, &xmmword_1F24E81D0, 0x30uLL))
    {
      return 7;
    }

    else if (!memcmp(v2, &xmmword_1F24E8200, 0x30uLL))
    {
      return 8;
    }

    else if (!memcmp(v2, &xmmword_1F24E8110, 0x30uLL))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

__n128 sub_1AF1BE95C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDFB8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 304);
  *a2 = *(a1 + 288);
  *(a2 + 16) = v12;
  result = *(a1 + 320);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1AF1BE9BC()
{
  if (qword_1ED73ABC8 != -1)
  {
    sub_1AFDDE030();
  }

  return qword_1ED73ABC0;
}

double sub_1AF1BE9F4()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ABC0 = v0;
  v1 = sub_1AF1B2A04();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"width", 0xD0u, 1, 0);
  sub_1AF1DD02C(@"height", 0xD4u, 1, 0);
  sub_1AF1DD02C(@"length", 0xD8u, 1, 0);
  sub_1AF1DD02C(@"chamferRadius", 0xE0u, 1, 0);
  sub_1AF1DD02C(@"topRadius", 0xE4u, 1, 0);
  sub_1AF1DD02C(@"radius", 0xDCu, 1, 0);
  sub_1AF1DD02C(@"innerRadius", 0xE8u, 1, 0);
  sub_1AF1DD02C(@"pipeRadius", 0xECu, 1, 0);
  sub_1AF1DD02C(@"chamferSegmentCount", 0x104u, 2, 0);
  sub_1AF1DD02C(@"heightSegmentCount", 0xFCu, 2, 0);
  sub_1AF1DD02C(@"lengthSegmentCount", 0x100u, 2, 0);
  sub_1AF1DD02C(@"widthSegmentCount", 0xF8u, 2, 0);
  sub_1AF1DD02C(@"capSegmentCount", 0x110u, 1, 0);
  sub_1AF1DD02C(@"radialSegmentCount", 0x108u, 2, 0);
  sub_1AF1DD02C(@"cornerSegmentCount", 0x104u, 2, 0);
  sub_1AF1DD02C(@"segmentCount", 0xF4u, 2, 0);
  sub_1AF1DD02C(@"radialSpan", 0xF0u, 1, 0);
  sub_1AF1DD02C(@"pipeSegmentCount", 0x10Cu, 2, 0);
  sub_1AF1DD018();
  unk_1ED72E6F0 = xmmword_1F24E8250;
  xmmword_1ED72E6D8 = xmmword_1F24E8260;
  result = *&xmmword_1F24E8270;
  unk_1ED72E700 = xmmword_1F24E8270;
  unk_1ED72E710 = unk_1F24E8280;
  qword_1ED72E720 = qword_1F24E8290;
  qword_1ED72E730 = sub_1AF1C3494;
  return result;
}

float32x2_t sub_1AF1BEC3C(float32x2_t *a1, float32x2_t *a2, float32x2_t result, float32_t a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result.f32[1] = a4;
    a1[1].i32[0] = 0;
    *a1 = vmul_f32(result, 0xBF000000BF000000);
    result = vmul_f32(result, 0x3F0000003F000000);
    a2[1].i32[0] = 0;
    *a2 = result;
  }

  return result;
}

float32x2_t sub_1AF1BEC78(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[26];
    a2[1].i32[0] = 0;
    *a2 = vmul_f32(v4, 0xBF000000BF000000);
    result = vmul_f32(v4, 0x3F0000003F000000);
    a3[1].i32[0] = 0;
    *a3 = result;
  }

  return result;
}

double sub_1AF1BECB4(uint64_t a1, int a2)
{
  v2 = sub_1AF1C22E4(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

BOOL sub_1AF1BECDC(_OWORD *a1, float a2, float a3)
{
  if (a1)
  {
    v3 = sqrtf((a3 * a3) + (a2 * a2)) * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1BED0C(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = sqrtf((*(a1 + 212) * *(a1 + 212)) + (*(a1 + 208) * *(a1 + 208))) * 0.5;
    *a2 = v2;
  }

  return a2 != 0;
}

uint64_t sub_1AF1BED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDFB8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return (*(a1 + 296))(a1, a2, a3);
}

uint64_t sub_1AF1BEDA8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDFB8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (*(a1 + 304))(a1, a2);
}

void sub_1AF1BEE08(void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, unsigned int a6)
{
  v36 = a1[26];
  v12 = sub_1AF1BF028(a1);
  if (a6 >= 2)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }
  }

  else
  {
    v14 = vmul_f32(v36, 0x3F0000003F000000);
    if (v12 <= 0.0)
    {
      if (a2 >= 1)
      {
        v29 = vneg_f32(v14);
        v30 = vdupq_n_s64(0x3EF0001000100010uLL);
        v31 = a5;
        do
        {
          v32 = 214013 * *a3 + 2531011;
          *a3 = 214013 * v32 + 2531011;
          v33.i32[0] = v32;
          v33.i32[1] = 214013 * v32 + 2531011;
          v34 = vshr_n_u32(v33, 0x10uLL);
          v35.i64[0] = v34.u32[0];
          v35.i64[1] = v34.u32[1];
          *&v13 = vmla_f32(v29, v36, vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v35), v30)));
          *a4 = v13;
          if (a5)
          {
            *v31 = xmmword_1AFE20180;
          }

          ++v31;
          ++a4;
          --a2;
        }

        while (a2);
      }
    }

    else
    {
      if (v14.f32[0] >= v14.f32[1])
      {
        v15 = v14.f32[1];
      }

      else
      {
        v15 = v14.f32[0];
      }

      if (v12 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v12;
      }

      if (a2 >= 1)
      {
        v17 = 0;
        v18 = -v14.f32[0];
        v14.f32[0] = v16 - v14.f32[0];
        do
        {
          v19 = *a3;
          do
          {
            v20 = 214013 * v19 + 2531011;
            v21 = HIWORD(v20) * 0.0000152590219;
            v22 = v18 + (v21 * v36.f32[0]);
            v19 = 214013 * v20 + 2531011;
            v23 = HIWORD(v19) * 0.0000152590219;
            v24 = (v23 * v36.f32[1]) - v14.f32[1];
            v25 = v14.f32[0] + fabsf(v22);
            if (v25 <= 0.0)
            {
              break;
            }

            v26 = (v16 - v14.f32[1]) + fabsf(v24);
            v27 = (v26 * v26) + (v25 * v25);
          }

          while (v26 > 0.0 && v27 > (v16 * v16));
          *a3 = v19;
          a4[v17] = __PAIR64__(LODWORD(v24), LODWORD(v22));
          if (a5)
          {
            a5[v17] = xmmword_1AFE20180;
          }

          ++v17;
        }

        while (v17 != a2);
      }
    }
  }
}

float sub_1AF1BF028(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

uint64_t sub_1AF1BF08C(uint64_t a1)
{
  sub_1AF1C236C(a1, 0, 1.0);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C236C(a1, 3, 0.0);
  sub_1AF1C213C(a1, 9, 1);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C213C(a1, 12, 10);
}

uint64_t sub_1AF1BF114(_DWORD *a1, _DWORD *a2)
{
  *a2 = 2;
  a2[1] = a1[69];
  a2[2] = a1[52];
  a2[3] = a1[53];
  a2[4] = a1[56];
  a2[5] = a1[62];
  a2[6] = a1[63];
  a2[7] = a1[65];
  a2[8] = a1[71];
  return 36;
}

float32x2_t sub_1AF1BF164(float32x2_t *a1, float32x2_t *a2, float32x2_t result, float32_t a4, float a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result.f32[1] = a4;
    a1[1].f32[0] = a5 * -0.5;
    *a1 = vmul_f32(result, 0xBF000000BF000000);
    result = vmul_f32(result, 0x3F0000003F000000);
    a2[1].f32[0] = a5 * 0.5;
    *a2 = result;
  }

  return result;
}

float32_t sub_1AF1BF1B0(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[27].f32[0];
    v5 = a1[26];
    a2[1].f32[0] = v4 * -0.5;
    *a2 = vmul_f32(v5, 0xBF000000BF000000);
    result = v4 * 0.5;
    a3[1].f32[0] = result;
    *a3 = vmul_f32(v5, 0x3F0000003F000000);
  }

  return result;
}

BOOL sub_1AF1BF200(_OWORD *a1, float a2, float a3, float a4)
{
  if (a1)
  {
    v4 = sqrtf(((a3 * a3) + (a2 * a2)) + (a4 * a4)) * 0.5;
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL sub_1AF1BF234(float *a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = sqrtf(((a1[53] * a1[53]) + (a1[52] * a1[52])) + (a1[54] * a1[54])) * 0.5;
    *a2 = v2;
  }

  return a2 != 0;
}

void sub_1AF1BF270(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v96 = sub_1AF1BF984(a1);
  v97 = sub_1AF1BF9CC(a1);
  v12 = sub_1AF1BFA14(a1);
  v13 = sub_1AF1BF028(a1);
  *v16.f32 = vmul_f32(__PAIR64__(LODWORD(v97), LODWORD(v96)), 0x3F0000003F000000);
  v17.i64[0] = v16.i64[0];
  v18 = v12 * 0.5;
  v19 = v16.f32[1];
  if (v16.f32[0] >= v16.f32[1])
  {
    v20 = v16.f32[1];
  }

  else
  {
    v20 = v16.f32[0];
  }

  if (v20 >= v18)
  {
    v20 = v12 * 0.5;
  }

  if (v13 >= v20)
  {
    v13 = v20;
  }

  if (v13 >= 0.0)
  {
    *v14.i32 = v13;
  }

  else
  {
    *v14.i32 = 0.0;
  }

  if (a6 == 2)
  {

    sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
  }

  else
  {
    v17.f32[2] = v12 * 0.5;
    v21 = *v14.i32 * *v14.i32;
    v22 = vsubq_f32(v17, vdupq_lane_s32(v14, 0));
    if (a6 == 1)
    {
      if (*v14.i32 <= 0.0)
      {
        if (a2 >= 1)
        {
          v83 = vneg_f32(*v16.f32);
          v84 = -v18;
          v85 = vdupq_n_s64(0x3EF0001000100010uLL);
          v86 = a5;
          do
          {
            v87 = 214013 * *a3 + 2531011;
            v88.i32[0] = v87;
            v88.i32[1] = 214013 * v87 + 2531011;
            v89 = vshr_n_u32(v88, 0x10uLL);
            v90.i64[0] = v89.u32[0];
            v90.i64[1] = v89.u32[1];
            v93 = vmulq_f64(vcvtq_f64_u64(v90), v85);
            *v93.f32 = vmla_f32(v83, __PAIR64__(LODWORD(v97), LODWORD(v96)), vcvt_f32_f64(v93));
            v91 = 214013 * (214013 * v87 + 2531011) + 2531011;
            *a3 = v91;
            v92 = HIWORD(v91) * 0.0000152590219;
            v93.f32[2] = v84 + (v92 * v12);
            *a4 = v93;
            if (a5)
            {
              v94 = vmulq_f32(v93, v93);
              *&v95 = v94.f32[2] + vaddv_f32(*v94.f32);
              *v94.f32 = vrsqrte_f32(v95);
              *v94.f32 = vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32)));
              *v86 = vmulq_n_f32(v93, vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32))).f32[0]);
            }

            ++v86;
            ++a4;
            --a2;
          }

          while (a2);
        }
      }

      else if (a2 >= 1)
      {
        v66 = 0;
        v67 = vneg_f32(*v16.f32);
        v68 = -v18;
        v69 = vdupq_n_s64(0x3EF0001000100010uLL);
        do
        {
          v70 = *a3;
          do
          {
            v71 = 214013 * v70 + 2531011;
            v72.i32[0] = v71;
            v72.i32[1] = 214013 * v71 + 2531011;
            v73 = vshr_n_u32(v72, 0x10uLL);
            v74.i64[0] = v73.u32[0];
            v74.i64[1] = v73.u32[1];
            v76 = vmulq_f64(vcvtq_f64_u64(v74), v69);
            v70 = 214013 * (214013 * v71 + 2531011) + 2531011;
            *v76.f32 = vmla_f32(v67, __PAIR64__(LODWORD(v97), LODWORD(v96)), vcvt_f32_f64(v76));
            v75 = HIWORD(v70) * 0.0000152590219;
            v76.f32[2] = v68 + (v75 * v12);
            v77 = vsubq_f32(vabsq_f32(v76), v22);
            v78 = v77.f32[1];
            v79 = v77.f32[1] > 0.0;
            if (v77.f32[0] > 0.0)
            {
              ++v79;
            }

            if (v77.f32[2] > 0.0)
            {
              ++v79;
            }

            if (v79 == 2)
            {
              if (v77.f32[0] <= v77.f32[1])
              {
                v77.f32[0] = v77.f32[1];
              }

              if (v77.f32[1] <= v77.f32[2])
              {
                v78 = v77.f32[2];
              }

              v80 = (v78 * v78) + (v77.f32[0] * v77.f32[0]);
            }

            else
            {
              if (v79 != 3)
              {
                break;
              }

              v80 = ((v77.f32[1] * v77.f32[1]) + (v77.f32[0] * v77.f32[0])) + (v77.f32[2] * v77.f32[2]);
            }
          }

          while (v80 > v21);
          *a3 = v70;
          a4[v66] = v76;
          if (a5)
          {
            v81 = vmulq_f32(v76, v76);
            *&v82 = v81.f32[2] + vaddv_f32(*v81.f32);
            *v81.f32 = vrsqrte_f32(v82);
            *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32)));
            a5[v66] = vmulq_n_f32(v76, vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32))).f32[0]);
          }

          ++v66;
        }

        while (v66 != a2);
      }
    }

    else if (!a6 && a2 >= 1)
    {
      v16.f32[0] = v16.f32[1] * v18;
      v16.f32[1] = v17.f32[0] * v18;
      v16.f32[2] = v17.f32[0] * v19;
      v23 = vmulq_n_f32(v16, 1.0 / ((v17.f32[0] * v19) + ((v19 * v18) + (v17.f32[0] * v18))));
      v24 = v23.f32[0] + v23.f32[0];
      v25 = (v23.f32[0] + v23.f32[0]) + v23.f32[1] * 2.0;
      v26.i64[0] = 0x8000000080000000;
      v26.i64[1] = 0x8000000080000000;
      v27 = a5;
      do
      {
        v28 = 214013 * *a3 + 2531011;
        v29 = HIWORD(v28) * 0.0000152590219;
        v30 = v29 * 2.0 + -1.0;
        v31 = 214013 * v28 + 2531011;
        v32 = HIWORD(v31) * 0.0000152590219;
        v33 = v32 * 2.0 + -1.0;
        v34 = 214013 * v31 + 2531011;
        *a3 = v34;
        v35 = HIWORD(v34) * 0.0000152590219;
        v36 = v35 + v35;
        v37 = v23.f32[2] == 1.0;
        if ((v36 - v25) < v23.f32[2])
        {
          v37 = 1;
        }

        v38 = v23.f32[1] == 1.0;
        if ((v36 - v24) < v23.f32[1])
        {
          v38 = 1;
        }

        if (v36 < v25)
        {
          v37 = v38;
        }

        v39 = -1;
        if (v36 < v25)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        v41 = v23.f32[0] == 1.0;
        if (v36 < v23.f32[0])
        {
          v41 = 1;
        }

        if (v36 < v24)
        {
          v39 = 2;
        }

        else
        {
          v41 = v37;
        }

        if (v36 < v24)
        {
          v42 = 0;
        }

        else
        {
          v42 = v40;
        }

        if (v42 == 2)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42 + 1;
        }

        v44 = v42 + v39;
        v103 = v17;
        v45 = *(&v103 | (4 * v42));
        if (!v41)
        {
          v45 = -v45;
        }

        v104 = 0uLL;
        *(&v104 & 0xFFFFFFFFFFFFFFF3 | (4 * (v42 & 3))) = v45;
        v46 = *(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) * v30;
        v105 = v104;
        *(&v105 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) = v46;
        v47 = *(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) * v33;
        v106 = v105;
        *(&v106 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) = v47;
        v48 = v106;
        v49 = v106;
        v49.i32[3] = v15;
        if (*v14.i32 <= 0.0)
        {
          goto LABEL_59;
        }

        v50 = vsubq_f32(vabsq_f32(v106), v22);
        v51 = v50.f32[1] > 0.0;
        if (v50.f32[0] > 0.0)
        {
          ++v51;
        }

        if (v50.f32[2] > 0.0)
        {
          ++v51;
        }

        if (v51 == 3)
        {
          v53 = vmulq_f32(v50, v50);
          v54 = vaddv_f32(*v53.f32);
          if ((v53.f32[2] + v54) > v21)
          {
            v55 = vmlaq_n_f32(v22, v50, *v14.i32 / sqrtf(v53.f32[2] + v54));
            *v49.f32 = vbsl_s8(0x8000000080000000, *v55.f32, *v106.i8);
            v50.i32[0] = v55.i32[2];
            v48.i32[0] = v106.i32[2];
            v49.i32[2] = vbslq_s8(v26, v50, v48).u32[0];
LABEL_58:
            v49.i32[3] = v15;
          }
        }

        else if (v51 == 2)
        {
          if (v42 == 2)
          {
            v52 = v50.f32[1] <= 0.0;
          }

          else if (v42 == 1)
          {
            v52 = 2 * (v50.f32[0] > 0.0);
          }

          else if (v50.f32[1] <= 0.0)
          {
            v52 = 1;
          }

          else
          {
            v52 = 2;
          }

          if (v52 == 2)
          {
            v56 = 0;
          }

          else
          {
            v56 = v52 + 1;
          }

          v57 = (v52 + 2) % 3u;
          v98 = v50;
          *(&v98 & 0xFFFFFFFFFFFFFFF3 | (4 * (v52 & 3))) = 0;
          v58 = v98;
          v59 = vmulq_f32(v58, v58);
          v59.f32[0] = *v14.i32 / sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
          v60 = (&v101 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3)));
          v99 = v22;
          v61 = *(&v99 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3)));
          v100 = v98;
          v58.f32[0] = v61 + (*(&v100 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3))) * v59.f32[0]);
          v101 = v48;
          v48.i32[0] = *v60;
          *v60 = vbslq_s8(v26, v58, v48).u32[0];
          v62 = v101;
          v63 = (&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3)));
          v58.f32[0] = *(&v99 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3))) + (*(&v100 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3))) * v59.f32[0]);
          v102 = v101;
          v62.i32[0] = *v63;
          *v63 = vbslq_s8(v26, v58, v62).u32[0];
          v49 = v102;
          goto LABEL_58;
        }

LABEL_59:
        *a4 = v49;
        if (a5)
        {
          v64 = vmulq_f32(v49, v49);
          *&v65 = v64.f32[2] + vaddv_f32(*v64.f32);
          *v64.f32 = vrsqrte_f32(v65);
          *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32)));
          *v27 = vmulq_n_f32(v49, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]);
        }

        ++v27;
        ++a4;
        v15 = v49.i32[3];
        --a2;
      }

      while (a2);
    }
  }
}

float sub_1AF1BF984(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

float sub_1AF1BF9CC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 212);
}

float sub_1AF1BFA14(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

uint64_t sub_1AF1BFA5C(uint64_t a1)
{
  sub_1AF1C236C(a1, 0, 1.0);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C236C(a1, 2, 1.0);
  sub_1AF1C236C(a1, 3, 0.0);
  sub_1AF1C213C(a1, 9, 1);
  sub_1AF1C213C(a1, 10, 1);
  sub_1AF1C213C(a1, 11, 1);

  return sub_1AF1C213C(a1, 12, 10);
}

uint64_t sub_1AF1BFB04(_DWORD *a1, _DWORD *a2)
{
  *a2 = 0;
  a2[1] = a1[69];
  a2[2] = a1[52];
  a2[3] = a1[53];
  a2[4] = a1[54];
  a2[5] = a1[56];
  a2[6] = a1[62];
  a2[7] = a1[63];
  a2[8] = a1[64];
  a2[9] = a1[65];
  a2[10] = a1[71];
  return 44;
}

double sub_1AF1BFB60(uint64_t a1, uint64_t a2, int32x4_t a3, float a4, float a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a3;
    *&v6.i32[1] = a5;
    *v6.i8 = vmul_f32(*v6.i8, 0xBF000000BF000000);
    *(a1 + 8) = v6.i32[1];
    *a1 = vzip1q_s32(v6, a3).u32[0];
    *a3.i32 = *a3.i32 * 0.5;
    *&a3.i32[1] = a4;
    *(a2 + 8) = a5 * 0.5;
    *a2 = a3.i64[0];
  }

  return *a3.i64;
}

float sub_1AF1BFBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v6.i32 = sub_1AF1BF984(a1);
  v13 = v6;
  v12 = sub_1AF1BF9CC(a1);
  *v7.i32 = sub_1AF1BFA14(a1);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v13;
    v9.i32[1] = v7.i32[0];
    *v9.i8 = vmul_f32(*v9.i8, 0xBF000000BF000000);
    *(a2 + 8) = v9.i32[1];
    *a2 = vzip1q_s32(v9, v7).u32[0];
    *&v10 = *v13.i32 * 0.5;
    *(&v10 + 1) = v12;
    *v7.i32 = *v7.i32 * 0.5;
    *(a3 + 8) = v7.i32[0];
    *a3 = v10;
  }

  return *v7.i32;
}

BOOL sub_1AF1BFC5C(int32x4_t *a1, int32x4_t a2, double a3, float a4)
{
  if (a1)
  {
    HIDWORD(a3) = sqrtf(((*&a3 * *&a3) + (*a2.i32 * *a2.i32)) + (a4 * a4));
    *a2.i8 = vmul_f32(*&a3, 0x3F0000003F000000);
    *a1 = vtrn1q_s32(0, vzip1q_s32(a2, a2));
  }

  return a1 != 0;
}

BOOL sub_1AF1BFC98(uint64_t a1, int32x4_t *a2)
{
  v4 = sub_1AF1BF984(a1);
  v8 = sub_1AF1BF9CC(a1);
  *v5.i32 = sub_1AF1BFA14(a1);
  if (a2)
  {
    v6.f32[0] = v8;
    v6.i32[1] = sqrtf(((v6.f32[0] * v6.f32[0]) + (v4 * v4)) + (*v5.i32 * *v5.i32));
    *v5.i8 = vmul_f32(v6, 0x3F0000003F000000);
    *a2 = vtrn1q_s32(0, vzip1q_s32(v5, v5));
  }

  return a2 != 0;
}

void sub_1AF1BFD24(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v12 = sub_1AF1BF984(a1);
  v71 = sub_1AF1BF9CC(a1);
  v13 = sub_1AF1BFA14(a1);
  v19.f32[0] = v12 * 0.5;
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v20 = a5;
      do
      {
        v21 = 214013 * *a3 + 2531011;
        v14.f32[0] = HIWORD(v21) * 0.0000152590219;
        v22 = v71 * v14.f32[0];
        v14.f32[0] = v71 - (v71 * v14.f32[0]);
        v23 = (v19.f32[0] * v14.f32[0]) / v71;
        v24 = ((v13 * 0.5) * v14.f32[0]) / v71;
        v25 = 214013 * v21 + 2531011;
        v14.f32[0] = HIWORD(v25) * 0.0000152590219;
        v14.f32[0] = (v14.f32[0] * 2.0 + -1.0) * v23;
        v26 = 214013 * v25 + 2531011;
        *a3 = v26;
        v27 = HIWORD(v26) * 0.0000152590219;
        v28 = (v27 * 2.0 + -1.0) * v24;
        v14.f32[1] = v22;
        v14.f32[2] = v28;
        *a4 = v14;
        if (a5)
        {
          v29 = vmulq_f32(v14, v14);
          *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
          *v29.f32 = vrsqrte_f32(v30);
          *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
          v14 = vmulq_n_f32(v14, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
          *v20 = v14;
        }

        ++v20;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v31 = 0;
    v34.i32[1] = 0;
    v34.i32[3] = 0;
    v35.i32[3] = 0;
    v35.i64[0] = v19.u32[0];
    v19 = v19.u32[0];
    v19.f32[2] = v13 * 0.5;
    v32.i32[0] = 0;
    v32.i64[1] = 0;
    v32.f32[1] = v71;
    v34.f32[0] = -(v12 * 0.5);
    v33 = v34.u32[0];
    v33.f32[2] = v13 * 0.5;
    v34.f32[2] = -(v13 * 0.5);
    v35.f32[2] = v34.f32[2];
    v36 = vsubq_f32(v19, v33);
    v37 = vsubq_f32(v35, v19);
    v38 = vsubq_f32(v34, v35);
    v39 = vsubq_f32(v33, v34);
    v40 = vsubq_f32(v32.u64[0], v33);
    v41 = vsubq_f32(v32.u64[0], v35);
    v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
    v43 = vmlaq_f32(vmulq_f32(v42, vnegq_f32(v37)), v41, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
    v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
    v45 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
    v46 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    v47 = vnegq_f32(v39);
    v48 = vmlaq_f32(vmulq_f32(v46, v47), v40, v45);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmlaq_f32(vmulq_f32(v42, vnegq_f32(v38)), v41, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
    v51 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
    v52 = vmlaq_f32(vmulq_f32(v46, vnegq_f32(v36)), v40, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
    v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
    do
    {
      v54 = v15;
      v55 = v16;
      v56 = v18;
      v57 = v17.i32[3];
      v73 = 0.16667;
      v72 = xmmword_1AFE21CD8;
      v58 = 4;
      v59 = 0.33333;
      do
      {
        v59 = v59 + *(&v72 + v58);
        *(&v72 + v58) = v59;
        v58 += 4;
      }

      while (v58 != 20);
      v60 = 214013 * *a3 + 2531011;
      v61 = HIWORD(v60) * 0.0000152590219;
      v15 = v33;
      v16 = v47;
      v18 = v36;
      v17 = xmmword_1AFE20B60;
      if (v61 >= 0.33333)
      {
        v15 = v32;
        v16 = v19;
        v18 = v33;
        v17 = v53;
        if (*(&v72 + 1) <= v61)
        {
          v15 = v32;
          v16 = v34;
          v18 = v35;
          v17 = v51;
          if (*(&v72 + 2) <= v61)
          {
            v15 = v34;
            v16 = v32;
            v18 = v33;
            v17 = v49;
            if (*(&v72 + 3) <= v61)
            {
              if (v73 <= v61)
              {
                v17.i64[0] = 0;
                v17.i32[2] = 0;
                v17.i32[3] = v57;
                v15 = v54;
                v16 = v55;
                v18 = v56;
              }

              else
              {
                v15 = v35;
                v16 = v19;
                v18 = v32;
                v17 = v44;
              }
            }
          }
        }
      }

      v62 = 214013 * v60 + 2531011;
      v63 = HIWORD(v62) * 0.0000152590219;
      v64 = 214013 * v62 + 2531011;
      *a3 = v64;
      v65 = HIWORD(v64) * 0.0000152590219;
      if (v61 >= 0.33333)
      {
        v67 = 214013 * v64 + 2531011;
        *a3 = v67;
        v68 = HIWORD(v67) * 0.0000152590219;
        v66 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v16, (1.0 / ((v63 + v65) + v68)) * v65), v18, (1.0 / ((v63 + v65) + v68)) * v63), v15, (1.0 / ((v63 + v65) + v68)) * v68);
      }

      else
      {
        v66 = vaddq_f32(v15, vmlaq_n_f32(vmulq_n_f32(v16, v65), v18, v63));
      }

      a4[v31] = v66;
      if (a5)
      {
        v69 = vmulq_f32(v17, v17);
        *&v70 = v69.f32[2] + vaddv_f32(*v69.f32);
        *v69.f32 = vrsqrte_f32(v70);
        *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32)));
        a5[v31] = vmulq_n_f32(v17, vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
      }

      ++v31;
    }

    while (v31 != a2);
  }
}

uint64_t sub_1AF1C0250(uint64_t a1)
{
  sub_1AF1C236C(a1, 0, 1.0);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C236C(a1, 2, 1.0);
  sub_1AF1C213C(a1, 9, 1);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C213C(a1, 11, 1);
}

uint64_t sub_1AF1C02D8(_DWORD *a1, _DWORD *a2)
{
  *a2 = 3;
  a2[1] = a1[69];
  a2[2] = a1[52];
  a2[3] = a1[53];
  a2[4] = a1[54];
  a2[5] = a1[62];
  a2[6] = a1[63];
  a2[7] = a1[64];
  a2[8] = a1[71];
  return 36;
}

float sub_1AF1C0344(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *&a4 = -*&a3;
    *(a1 + 8) = -*&a3;
    *a1 = vdupq_lane_s32(*&a4, 0).u64[0];
    *(a2 + 8) = LODWORD(a3);
    *a2 = vdupq_lane_s32(*&a3, 0).u64[0];
  }

  return *&a3;
}

float sub_1AF1C0378(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    LODWORD(a4) = *(a1 + 220);
    *&a5 = -*&a4;
    *(a2 + 8) = -*&a4;
    *a2 = vdupq_lane_s32(*&a5, 0).u64[0];
    *(a3 + 8) = LODWORD(a4);
    *a3 = vdupq_lane_s32(*&a4, 0).u64[0];
  }

  return *&a4;
}

BOOL sub_1AF1C03B0(_OWORD *a1, float a2)
{
  if (a1)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = a2;
    *a1 = v2;
  }

  return a1 != 0;
}

BOOL sub_1AF1C03CC(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    HIDWORD(v2) = *(a1 + 220);
    *a2 = v2;
  }

  return a2 != 0;
}

void sub_1AF1C03EC(_DWORD *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6, double a7)
{
  v9 = a4;
  v11 = a2;
  LODWORD(a7) = a1[55];
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v12 = 0;
      v13 = vdup_n_s32(0x37800080u);
      __asm { FMOV            V3.2S, #-1.0 }

      do
      {
        v19 = *a3;
        do
        {
          v20 = 214013 * v19 + 2531011;
          v7.i32[0] = v20;
          v7.i32[1] = 214013 * v20 + 2531011;
          *v7.f32 = vmla_f32(_D3, 0x4000000040000000, vmul_f32(vcvt_f32_u32(vshr_n_u32(*v7.f32, 0x10uLL)), v13));
          v19 = 214013 * (214013 * v20 + 2531011) + 2531011;
          v7.f32[2] = ((HIWORD(v19) * 0.000015259) * 2.0) + -1.0;
          v21 = vmulq_f32(v7, v7);
          v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
        }

        while (v21.f32[0] > 1.0);
        *a3 = v19;
        if (a5)
        {
          a5[v12] = vdivq_f32(v7, vdupq_lane_s32(*v21.f32, 0));
        }

        v7 = vaddq_f32(vmulq_n_f32(v7, *&a7), 0);
        a4[v12++] = v7;
      }

      while (v12 != a2);
    }
  }

  else if (a2 >= 1)
  {
    v28 = vdupq_lane_s32(*&a7, 0);
    v22 = a5;
    do
    {
      v23 = 214013 * *a3 + 2531011;
      v29 = ((HIWORD(v23) * 0.000015259) * 2.0) + -1.0;
      v24 = 214013 * v23 + 2531011;
      *a3 = v24;
      v25 = ((HIWORD(v24) * 0.000015259) + (HIWORD(v24) * 0.000015259)) * 3.14159265;
      v26 = __sincosf_stret(v25);
      *v27.f32 = vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), sqrtf(1.0 - (v29 * v29)));
      v27.f32[2] = v29;
      *v9 = vmlaq_f32(0, v28, v27);
      if (a5)
      {
        *v22 = v27;
      }

      ++v22;
      ++v9;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1AF1C0648(uint64_t a1)
{
  sub_1AF1C213C(a1, 19, 1);
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C213C(a1, 8, 48);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C06B0(_DWORD *a1, _DWORD *a2)
{
  *a2 = 1;
  a2[1] = a1[69];
  a2[2] = a1[70];
  a2[3] = a1[55];
  a2[4] = a1[61];
  a2[5] = a1[60];
  a2[6] = a1[71];
  return 28;
}

float sub_1AF1C0710(uint64_t a1, uint64_t a2, float result, float a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *&v5 = -result;
    *(a1 + 8) = -result;
    *(&v5 + 1) = a4 * -0.5;
    *a1 = v5;
    *&v5 = result;
    *(&v5 + 1) = a4 * 0.5;
    *(a2 + 8) = result;
    *a2 = v5;
  }

  return result;
}

float sub_1AF1C0758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1AF1C07E4(a1);
  result = sub_1AF1BF9CC(a1);
  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *&v8 = -v9;
    *(a2 + 8) = -v9;
    *(&v8 + 1) = result * -0.5;
    *a2 = v8;
    result = result * 0.5;
    *(a3 + 8) = v9;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(v9));
  }

  return result;
}

float sub_1AF1C07E4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 220);
}

BOOL sub_1AF1C082C(_OWORD *a1, float a2, float a3)
{
  if (a1)
  {
    v3 = sqrt((a2 * a2) + a3 * 0.25 * a3);
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1C0868(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1AF1C07E4(a1);
  v5 = sub_1AF1BF9CC(a1);
  if (a2)
  {
    v6 = sqrt((v4 * v4) + v5 * 0.25 * v5);
    *&v7 = 0;
    DWORD2(v7) = 0;
    *(&v7 + 3) = v6;
    *a2 = v7;
  }

  return a2 != 0;
}

void sub_1AF1C08DC(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v12 = sub_1AF1C07E4(a1);
  v13 = sub_1AF1BF9CC(a1);
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v14 = a5;
      do
      {
        v15 = 214013 * *a3 + 2531011;
        v16 = HIWORD(v15) * 0.0000152590219;
        v17 = __sincos_stret((v16 + v16) * 3.14159265);
        sinval = v17.__sinval;
        cosval = v17.__cosval;
        v20 = 214013 * v15 + 2531011;
        v21 = HIWORD(v20) * 0.0000152590219;
        v22 = v12 * v21;
        *&v23 = v22 * cosval;
        v24 = 214013 * v20 + 2531011;
        *a3 = v24;
        v25 = HIWORD(v24) * 0.0000152590219;
        v26 = (v13 * v25) + -v13 * 0.5;
        *(&v23 + 1) = v26;
        *(&v23 + 2) = v22 * sinval;
        *a4 = v23;
        if (a5)
        {
          *&v27 = LODWORD(cosval);
          *(&v27 + 1) = LODWORD(sinval);
          *v14 = v27;
        }

        ++v14;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v28 = a5;
    do
    {
      v29 = 214013 * *a3 + 2531011;
      v30 = HIWORD(v29) * 0.0000152590219;
      v31 = __sincos_stret((v30 + v30) * 3.14159265);
      v32 = 214013 * v29 + 2531011;
      v33 = v31.__sinval;
      v34 = v31.__cosval;
      *&v35 = v12 * v34;
      *a3 = v32;
      v36 = HIWORD(v32) * 0.0000152590219;
      v37 = (v13 * v36) + -v13 * 0.5;
      *(&v35 + 1) = v37;
      *(&v35 + 2) = v12 * v33;
      *a4 = v35;
      if (a5)
      {
        *&v38 = LODWORD(v34);
        *(&v38 + 1) = LODWORD(v33);
        *v28 = v38;
      }

      ++v28;
      ++a4;
      --a2;
    }

    while (a2);
  }
}