BOOL sub_2622EA214(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_2622EA298();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_2622EA38C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_timestamp(a2, v5, v6);
  v8 = v7;
  objc_msgSend_timestamp(v4, v9, v10);
  if (v8 < v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v8 > v11;
  }

  return v12;
}

id *sub_2622EA3F8(id *a1)
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

uint64_t *sub_2622EA48C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 176);
    if (v3)
    {
      free(v3);
    }

    v4 = *(v2 + 208);
    if (v4)
    {
      CVPixelBufferRelease(v4);
    }

    *(v2 + 232) = &unk_2874EEC38;
    v5 = *(v2 + 360);
    if (v5)
    {
      sub_2621D1B78(v5);
    }

    v6 = *(v2 + 224);
    *(v2 + 224) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    sub_26225CDF4(*(v2 + 160));
    sub_26225CE48(*(v2 + 136));
    v7 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    JUMPOUT(0x266727420);
  }

  return result;
}

uint64_t **sub_2622EA644(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2622EAA80(void *a1, uint64_t a2, void *a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v58 = a3;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v72, v78, 16);
  if (v8)
  {
    v59 = *v73;
    do
    {
      v9 = 0;
      v60 = v8;
      do
      {
        if (*v73 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v72 + 1) + 8 * v9);
        v11 = objc_msgSend_identifier(v10, v6, v7);
        v14 = objc_msgSend_UUIDString(v11, v12, v13);
        v15 = v14;
        v18 = objc_msgSend_UTF8String(v14, v16, v17);
        v19 = strlen(v18);
        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2621CC980();
        }

        v20 = v19;
        if (v19 >= 0x17)
        {
          operator new();
        }

        v71 = v19;
        if (v19)
        {
          memmove(&__dst, v18, v19);
        }

        *(&__dst + v20) = 0;

        if (sub_26225E7AC(*(a2 + 8), &__dst))
        {
          *&src[0] = &__dst;
          v21 = sub_26225D91C(a2, &__dst);
          v22 = COERCE_FLOAT(*(v21 + 88));
          v23 = COERCE_FLOAT(*(v21 + 136));
          if (v22 >= v23)
          {
            v65 = *(v21 + 80);
            v62 = *(v21 + 112);
            v63 = *(v21 + 96);
            v61 = *(v21 + 128);
          }

          else
          {
            v24.i64[0] = *(v21 + 80);
            v24.i32[2] = *(v21 + 136);
            v24.i32[3] = HIDWORD(*(v21 + 80));
            v25.i64[0] = *(v21 + 96);
            v25.i64[1] = __PAIR64__(HIDWORD(*(v21 + 96)), LODWORD(v23));
            v26.i64[0] = *(v21 + 112);
            v26.i32[2] = *(v21 + 88);
            v26.i32[3] = HIDWORD(*(v21 + 112));
            v27.i64[0] = *(v21 + 128);
            v27.i64[1] = __PAIR64__(HIDWORD(*(v21 + 128)), LODWORD(v22));
            v65 = v24;
            v62 = v26;
            v63 = v25;
            v61 = v27;
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v28 = v58;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v66, v77, 16);
          if (v32)
          {
            v33 = *v67;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v67 != v33)
                {
                  objc_enumerationMutation(v28);
                }

                v35 = *(*(&v66 + 1) + 8 * i);
                v36 = objc_msgSend_identifier(v35, v30, v31);
                v39 = objc_msgSend_identifier(v10, v37, v38);
                isEqual = objc_msgSend_isEqual_(v36, v40, v39);

                if (isEqual)
                {
                  objc_msgSend_quad(v35, v30, v31);
                  v48 = vsubq_f32(v65, v47);
                  v49 = vmulq_f32(v48, v48);
                  if (sqrtf(v49.f32[2] + vaddv_f32(*v49.f32)) > 0.001 || (v50 = vsubq_f32(v63, v44), v51 = vmulq_f32(v50, v50), sqrtf(v51.f32[2] + vaddv_f32(*v51.f32)) > 0.001) || (v52 = vsubq_f32(v62, v45), v53 = vmulq_f32(v52, v52), sqrtf(v53.f32[2] + vaddv_f32(*v53.f32)) > 0.001) || (v54 = vsubq_f32(v61, v46), v55 = vmulq_f32(v54, v54), sqrtf(v55.f32[2] + vaddv_f32(*v55.f32)) > 0.001))
                  {
                    if (objc_msgSend_individualUpdate(v10, v42, v43) == 2 && v10)
                    {
                      v10[105] = 1;
                    }
                  }

                  goto LABEL_32;
                }
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v66, v77, 16);
              if (v32)
              {
                continue;
              }

              break;
            }
          }

LABEL_32:

          src[0] = v65;
          src[1] = v63;
          src[2] = v62;
          src[3] = v61;
          if (v10)
          {
            objc_copyStruct(v10 + 272, src, 64, 1, 0);
          }
        }

        if (v71 < 0)
        {
          operator delete(__dst);
        }

        ++v9;
      }

      while (v9 != v60);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v72, v78, 16);
    }

    while (v8);
  }

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2622EAF60(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_count(v3, v5, v6);
  if (v7 == objc_msgSend_count(v4, v8, v9))
  {
    v12 = 0;
LABEL_3:
    if (v12 >= objc_msgSend_count(v3, v10, v11))
    {
      v40 = 1;
      goto LABEL_9;
    }

    v14 = objc_msgSend_objectAtIndexedSubscript_(v3, v13, v12);
    objc_msgSend_quad(v14, v15, v16);
    v51 = v17;
    v53 = v18;
    v55 = v19;
    v50 = v20;
    v52 = v21;
    v57 = v22;
    v54 = v23;
    v56 = v24;

    v26 = objc_msgSend_objectAtIndexedSubscript_(v4, v25, v12);
    objc_msgSend_quad(v26, v27, v28);
    v43 = v29;
    v45 = v30;
    v47 = v31;
    v42 = v32;
    v44 = v33;
    v49 = v34;
    v46 = v35;
    v48 = v36;

    v37 = 0;
    while (1)
    {
      v38 = vsubq_f32(*(&v50 + v37), *(&v42 + v37));
      v39 = vmulq_f32(v38, v38);
      if (sqrtf(v39.f32[2] + vaddv_f32(*v39.f32)) > 0.01)
      {
        break;
      }

      v37 += 16;
      if (v37 == 64)
      {
        ++v12;
        goto LABEL_3;
      }
    }
  }

  v40 = 0;
LABEL_9:

  return v40;
}

void sub_2622EB110(void *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v3 = a2;
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v34, v39, 16);
  if (v11)
  {
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_identifier(*(*(&v34 + 1) + 8 * i), v9, v10);
        objc_msgSend_addObject_(v6, v15, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v34, v39, 16);
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v29;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v38, 16);
  if (v20)
  {
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        v24 = objc_msgSend_identifier(v23, v18, v19);
        v26 = objc_msgSend_containsObject_(v6, v25, v24);

        if (v23)
        {
          v27 = v26;
        }

        else
        {
          v27 = 1;
        }

        if ((v27 & 1) == 0)
        {
          v23[105] = 0;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v30, v38, 16);
    }

    while (v20);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2622EB374(void *a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v49 = a1;
  v3 = a2;
  v4 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v58, v63, 16);
  if (v9)
  {
    v10 = *v59;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v58 + 1) + 8 * i);
        v13 = objc_msgSend_identifier(v12, v7, v8);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v12, v13);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v58, v63, 16);
    }

    while (v9);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = v49;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v54, v62, 16);
  if (v19)
  {
    v20 = *v55;
    do
    {
      v21 = 0;
      do
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v54 + 1) + 8 * v21);
        v23 = objc_msgSend_identifier(v22, v17, v18);
        v25 = objc_msgSend_objectForKeyedSubscript_(v4, v24, v23);
        v26 = v25 == 0;

        if (v26)
        {
          if (!v22)
          {
            goto LABEL_23;
          }

          v46 = 0;
LABEL_22:
          v22[105] = v46;
          goto LABEL_23;
        }

        v27 = objc_msgSend_identifier(v22, v17, v18);
        v29 = objc_msgSend_objectForKeyedSubscript_(v4, v28, v27);
        objc_msgSend_quad(v29, v30, v31);
        v52 = v33;
        v53 = v32;
        v50 = v35;
        v51 = v34;

        objc_msgSend_quad(v22, v36, v37);
        v42 = vceqq_f32(v41, v53);
        v42.i32[3] = v42.i32[2];
        if ((vminvq_u32(v42) & 0x80000000) != 0 && (v43 = vceqq_f32(v38, v52), v43.i32[3] = v43.i32[2], (vminvq_u32(v43) & 0x80000000) != 0) && (v44 = vceqq_f32(v39, v51), v44.i32[3] = v44.i32[2], (vminvq_u32(v44) & 0x80000000) != 0) && (v45 = vceqq_f32(v40, v50), v45.i32[3] = v45.i32[2], (vminvq_u32(v45) & 0x80000000) != 0))
        {
          v46 = 2;
          if (v22)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v46 = 1;
          if (v22)
          {
            goto LABEL_22;
          }
        }

LABEL_23:
        ++v21;
      }

      while (v19 != v21);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v54, v62, 16);
      v19 = v47;
    }

    while (v47);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2622EB6C4(uint64_t a1)
{
  sub_2622EB6FC(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2622EB6FC(uint64_t a1)
{
  *a1 = &unk_2874EE748;
  v2 = *(a1 + 1280);
  v3 = (a1 + 1288);
  if (v2 != (a1 + 1288))
  {
    do
    {
      CVPixelBufferRelease(v2[7]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_2621DF078(*(a1 + 1312));
  sub_2621CC7B4(*(a1 + 1288));
  sub_2622C9478(*(a1 + 1200));
  v7 = *(a1 + 1168);
  if (v7)
  {
    *(a1 + 1176) = v7;
    operator delete(v7);
  }

  *(a1 + 1008) = &unk_2874EF0B8;
  v8 = *(a1 + 1136);
  if (v8)
  {
    sub_2621D1B78(v8);
  }

  sub_262383D20((a1 + 80));
  sub_26229F680(a1 + 8);
  return a1;
}

uint64_t sub_2622EB800(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2622EB8C8(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_2622EB9C8(char a1, char *__p)
{
  if (a1)
  {
    *(__p + 7) = &unk_2874EF0D8;
    v3 = *(__p + 23);
    if (v3)
    {
      sub_2621D1B78(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_2622EBA50(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    v12 = v4;
    goto LABEL_17;
  }

  v7 = (a4 - a3) >> 3;
  do
  {
    while (1)
    {
      v4 = v5;
      v8 = v5[4];
      v9 = (v5[5] - v8) >> 3;
      v10 = v9 >= v7 ? (a4 - a3) >> 3 : v9;
      if (v10 >= 1)
      {
        break;
      }

LABEL_10:
      if (v7 >= v9)
      {
        goto LABEL_14;
      }

LABEL_11:
      v5 = *v4;
      v12 = v4;
      if (!*v4)
      {
        goto LABEL_17;
      }
    }

    v11 = a3;
    while (*v11 == *v8)
    {
      ++v11;
      ++v8;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    if (*v11 < *v8)
    {
      goto LABEL_11;
    }

LABEL_14:
    v5 = v4[1];
  }

  while (v5);
  v12 = v4 + 1;
LABEL_17:
  *a2 = v4;
  return v12;
}

uint64_t sub_2622EBAE0(uint64_t a1, CVPixelBufferRef pixelBuffer, _DWORD *a3)
{
  v5 = *a3;
  v6 = *(*a3 + 8);
  v29 = *(*a3 + 16);
  v30 = v6;
  v28 = *(v5 + 24);
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  IOSurfaceLock(IOSurface, 1u, 0);
  *(a1 + 8) = 0u;
  *a1 = &unk_2874EEDA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  if (a3[7] == 3)
  {
    IOSurfaceGetBaseAddress(IOSurface);
    sub_262293FD4(v15, &v30, &v29, &v28);
    sub_262294264(&v16, v15);
    v8 = v20;
    v9 = v22;
    *(a1 + 72) = v21;
    *(a1 + 88) = v9;
    *(a1 + 104) = v23;
    v10 = v18;
    *(a1 + 8) = v17;
    *(a1 + 24) = v10;
    *(a1 + 40) = v19;
    *(a1 + 56) = v8;
    v12 = v24;
    v11 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 128);
    *(a1 + 120) = v12;
    *(a1 + 128) = v11;
    if (v13)
    {
      sub_2621D1B78(v13);
    }

    *(a1 + 144) = v27;
    *(a1 + 136) = v26;
    v16 = &unk_2874EEDA0;
    if (v25)
    {
      sub_2621D1B78(v25);
    }
  }

  return IOSurfaceUnlock(IOSurface, 1u, 0);
}

void sub_2622EBC70(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622EBC98()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v130 = v0;
  v255[19] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  CVPixelBufferLockBaseAddress(v2, 1uLL);
  v5 = *(v4 + 24);
  sub_2622A0078();
  CVPixelBufferUnlockBaseAddress(v2, 1uLL);
  kdebug_trace();
  kdebug_trace();
  sub_2621D0F64(v242, "loi_input_2");
  __p[0] = v242;
  v6 = *(sub_2622F30B0(v4 + 1280, v242) + 56);
  sub_2621D0F64(__p, "loi_input_2");
  v7 = sub_2622A0200(v4 + 8, __p);
  sub_2622EBAE0(v187, v6, v7);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v242[2]) < 0)
  {
    operator delete(v242[0]);
  }

  sub_2621D0F64(v242, "jmap");
  __p[0] = v242;
  v8 = *(sub_2622F30B0(v4 + 1280, v242) + 56);
  sub_2621D0F64(__p, "jmap");
  v9 = sub_2622A0200(v4 + 8, __p);
  sub_2622EBAE0(&v183, v8, v9);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v242[2]) < 0)
  {
    operator delete(v242[0]);
  }

  sub_2621D0F64(v242, "jmap_peaks");
  __p[0] = v242;
  v10 = *(sub_2622F30B0(v4 + 1280, v242) + 56);
  sub_2621D0F64(__p, "jmap_peaks");
  v11 = sub_2622A0200(v4 + 8, __p);
  sub_2622EBAE0(&v177, v10, v11);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v242[2]) < 0)
  {
    operator delete(v242[0]);
  }

  sub_2621D0F64(v242, "lmap");
  __p[0] = v242;
  v12 = sub_2622F3150(v4 + 1304, v242);
  if (SHIBYTE(v242[2]) < 0)
  {
    operator delete(v242[0]);
  }

  sub_2621D0F64(v242, "lmap");
  __p[0] = v242;
  v13 = *(sub_2622F30B0(v4 + 1280, v242) + 56);
  sub_2621D0F64(__p, "lmap");
  v14 = sub_2622A0200(v4 + 8, __p);
  v15 = *(*v14 + 8);
  v16 = *(*v14 + 16);
  v17 = *(*v14 + 24);
  v18 = *(v12 + 200);
  IOSurface = CVPixelBufferGetIOSurface(v13);
  IOSurfaceLock(IOSurface, 1u, 0);
  v20 = v16 * v15 * v17;
  v21 = v14[7];
  if (v21 == 3)
  {
    for (i = IOSurfaceGetBaseAddress(IOSurface); v20; --v20)
    {
      v25 = *i++;
      _H0 = v25;
      __asm { FCVT            S0, H0 }

      *v18++ = _S0;
    }
  }

  else if (v21 == 6)
  {
    for (j = IOSurfaceGetBaseAddress(IOSurface); v20; --v20)
    {
      v23 = *j++;
      *v18++ = v23;
    }
  }

  IOSurfaceUnlock(IOSurface, 1u, 0);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v242[2]) < 0)
  {
    operator delete(v242[0]);
  }

  v129 = v12;
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  v131 = v4;
  v32 = *(v4 + 1224);
  v176 = 0;
  v174 = 0;
  v175 = 0;
  v133 = v179;
  if (v179)
  {
    v33 = 0;
    v34 = 0;
    v35 = v178;
    v36 = v180;
    v37 = v186;
    v38 = v182;
    v39 = v178 - 1;
    v40 = 2 * v180 * v179;
    v41 = (v182 + v40);
    v42 = v180;
    v132 = v180;
    v137 = v182;
    v138 = v178;
    v136 = v178 - 1;
    do
    {
      v134 = v41;
      v135 = v34;
      if (v36)
      {
        v43 = 0;
        v44 = v34 * v36;
        v45 = v34;
        do
        {
          _H0 = *(v37 + 2 * (v43 + v44));
          __asm { FCVT            S1, H0 }

          if (v32 <= _S1)
          {
            _H11 = *(v38 + 2 * (v43 + v44));
            v49 = v41;
            v50 = v39;
            if (v35 >= 2)
            {
              do
              {
                if (_H11 < *v49)
                {
                  _H11 = *v49;
                }

                v49 = (v49 + v40);
                --v50;
              }

              while (v50);
            }

            if (_H0 == _H11)
            {
              v51 = v43;
              v52 = v43 / v42 + v45;
              if (v33 >= v176)
              {
                v55 = v174;
                v56 = v33 - v174;
                v57 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v174) >> 2);
                v58 = v57 + 1;
                if (v57 + 1 > 0x1555555555555555)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((v176 - v174) >> 2) > v58)
                {
                  v58 = 0x5555555555555556 * ((v176 - v174) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v176 - v174) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v59 = 0x1555555555555555;
                }

                else
                {
                  v59 = v58;
                }

                if (v59)
                {
                  if (v59 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_2621C6A34();
                }

                v60 = 12 * v57;
                __asm { FCVT            S0, H11 }

                *v60 = v51;
                *(v60 + 4) = v52;
                *(v60 + 8) = _S0;
                v54 = 12 * v57 + 12;
                v62 = (12 * v57 - v56);
                memcpy((v60 - v56), v55, v56);
                v174 = v62;
                v175 = v54;
                v176 = 0;
                if (v55)
                {
                  operator delete(v55);
                }

                v38 = v137;
                v35 = v138;
                v39 = v136;
              }

              else
              {
                __asm { FCVT            S0, H11 }

                *v33 = v51;
                *(v33 + 4) = v52;
                *(v33 + 8) = _S0;
                v54 = v33 + 12;
              }

              v175 = v54;
              v33 = v54;
            }
          }

          ++v43;
          ++v41;
        }

        while (v43 != v36);
      }

      v34 = v135 + 1;
      v41 = &v134[v132];
    }

    while (v135 + 1 != v133);
  }

  kdebug_trace();
  kdebug_trace();
  v63 = (v175 - v174) >> 2;
  if (0xAAAAAAAAAAAAAAABLL * v63 >= *(v131 + 1216))
  {
    v64 = *(v131 + 1216);
  }

  else
  {
    v64 = 0xAAAAAAAAAAAAAAABLL * v63;
  }

  if (v64 > 1)
  {
    sub_2621CD160(&v211, 0xAAAAAAAAAAAAAAABLL * v63);
    v65 = v211;
    if (v211 != *(&v211 + 1))
    {
      v66 = 0;
      v67 = (*(&v211 + 1) - v211 - 8) >> 3;
      v68 = vdupq_n_s64(v67);
      v69 = (v67 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v70 = xmmword_2623A7620;
      v71 = vdupq_n_s64(2uLL);
      do
      {
        v72 = vmovn_s64(vcgeq_u64(v68, v70));
        if (v72.i8[0])
        {
          *(v65 + 8 * v66) = v66;
        }

        if (v72.i8[4])
        {
          *(v65 + 8 * v66 + 8) = v66 + 1;
        }

        v66 += 2;
        v70 = vaddq_s64(v70, v71);
      }

      while (v69 != v66);
    }

    v73 = 126 - 2 * __clz((*(&v65 + 1) - v65) >> 3);
    v242[0] = &v174;
    if (*(&v65 + 1) == v65)
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    sub_262383E6C(v65, *(&v65 + 1), v242, v74, 1);
    __p[0] = (((v64 - 1) * v64) >> 1);
    *&__p[1] = vdupq_n_s64(2uLL);
    sub_2622F3390(v242, __p);
    v75 = vdupq_n_s64(2uLL);
    v75.n128_u64[0] = v64;
    sub_2622335D4(__p, v75);
    sub_2622E2298(v194, v64, 0.0);
    v76 = 0;
    v77 = v239;
    v78 = v211;
    v79 = v175;
    v80 = v246 + 1;
    for (k = 16 * v64 - 16; ; k -= 16)
    {
      *&v222 = v76;
      v82 = *(v78 + 8 * v76);
      if (0xAAAAAAAAAAAAAAABLL * ((v79 - v174) >> 2) <= v82)
      {
        sub_262333AEC();
      }

      v83 = (v174 + 12 * v82);
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = (v77 + 8 * v76);
      *v87 = v85;
      v87[1] = v84;
      *sub_2622CB6CC(v194, &v222) = v86;
      if (v76 == v64 - 1)
      {
        break;
      }

      ++v76;
      v78 = v211;
      v79 = v175;
      v88 = v174;
      v89 = 0xAAAAAAAAAAAAAAABLL * ((v175 - v174) >> 2);
      v90 = v80;
      v91 = v76;
      do
      {
        v92 = *(v78 + 8 * v91);
        if (v89 <= v92)
        {
          sub_262333AEC();
        }

        v93 = *&v88[12 * v92];
        v90[-1].i32[0] = v85;
        v90[-1].i32[1] = v84;
        *v90 = vrev64_s32(v93);
        v90 += 2;
        ++v91;
      }

      while (v64 != v91);
      v80 = (v80 + k);
    }

    sub_26222AE80(&v143, v242);
    sub_262223F30(&v154, __p);
    sub_262229F7C(&v164, v194);
    *&v194[0] = &unk_2874EF6A8;
    if (v196)
    {
      sub_2621D1B78(v196);
    }

    __p[0] = &unk_2874EF0B8;
    if (v238)
    {
      sub_2621D1B78(v238);
    }

    v242[0] = &unk_2874EF0D8;
    if (v245)
    {
      sub_2621D1B78(v245);
    }

    if (v211)
    {
      *(&v211 + 1) = v211;
      operator delete(v211);
    }

    if (*(v131 + 1276) == 1)
    {
      LODWORD(v255[0]) = 1;
      sub_26222296C(&v211, v129 + 56, v255);
      LODWORD(v253) = 2;
      sub_26222296C(&v222, v129 + 56, &v253);
      v243 = 0u;
      memset(v242, 0, sizeof(v242));
      sub_262223F30(v244, &v211);
      sub_262223F30(v247, &v222);
      v94 = 0;
      v95 = 1;
      do
      {
        v96 = *&v244[8 * v94 + 8];
        v97 = v247[v94 + 1];
        if ((v95 & 1) == 0)
        {
          break;
        }

        v95 = 0;
        v94 = 1;
      }

      while (v96 == v97);
      if (v96 != v97)
      {
        v98 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v99 = sub_2621D552C(v98, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
        sub_2621D552C(v99, " ", 1);
        v100 = MEMORY[0x277D82670];
        v101 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
        sub_2621D552C(v101, " ", 1);
        sub_2621D552C(v101, "TensorBinaryExp", 15);
        std::ios_base::getloc((v101 + *(*v101 - 24)));
        v102 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v102->__vftable[2].~facet_0)(v102, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "Binary Exp shape should equal");
        std::ios_base::getloc((v100 + *(*v100 - 24)));
        v103 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v103->__vftable[2].~facet_0)(v103, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
      }

      *v242 = *&v244[8];
      *&v242[2] = *&v244[24];
      v243 = *&v244[40];
      *&v196 = 0;
      memset(&v194[4] + 8, 0, 32);
      *(v194 + 8) = *&v244[8];
      *(&v194[2] + 8) = *&v244[40];
      *(&v194[1] + 8) = *&v244[24];
      *&v194[0] = &unk_2874EF0B8;
      *(&v194[3] + 1) = *&v244[16];
      *&v194[4] = 1;
      *(&v194[6] + 1) = *&v244[8] * *&v244[16];
      v195 = 0uLL;
      sub_262224B84();
    }

    v141 = v144;
    v106 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
      v142 = v106;
    }

    else
    {
      v142 = 0;
    }

    v107 = v153;
    v190 = 0;
    v189 = 0;
    v191 = 0;
    v108 = v141;
    if (v141)
    {
      v109 = (512.0 / v184) * 0.03;
      v139 = v187[2] / v184;
      do
      {
        v110 = COERCE_FLOAT(*v107) - COERCE_FLOAT(v107->i64[1]);
        v111 = v109 * sqrtf(((COERCE_FLOAT(HIDWORD(v107->i64[0])) - COERCE_FLOAT(HIDWORD(*v107))) * (COERCE_FLOAT(HIDWORD(v107->i64[0])) - COERCE_FLOAT(HIDWORD(*v107)))) + (v110 * v110));
        if (v111 >= *(v131 + 1232) && v111 <= *(v131 + 1228))
        {
          *__p = vmulq_n_f32(*v107, v139);
          memset(v242, 0, 24);
          sub_2621DC430(v242, __p, &__p[2], 4uLL);
          sub_2622F3228(&v189, v242);
          if (v242[0])
          {
            operator delete(v242[0]);
          }
        }

        ++v107;
        --v108;
      }

      while (v108);
      if (v190 != v189)
      {
        v242[0] = (0xAAAAAAAAAAAAAAABLL * ((v190 - v189) >> 3));
        *&v242[1] = vdupq_n_s64(2uLL);
        sub_2622F3390(v219, v242);
        v112 = v189;
        if (v190 != v189)
        {
          v113 = 0;
          v114 = 0;
          v115 = v219[18];
          v116 = 0xAAAAAAAAAAAAAAABLL * ((v190 - v189) >> 3);
          if (v116 <= 1)
          {
            v116 = 1;
          }

          do
          {
            v117 = v112[3 * v113];
            v118 = 4;
            do
            {
              v119 = *v117++;
              v115[v114++] = v119;
              --v118;
            }

            while (v118);
            ++v113;
          }

          while (v113 != v116);
        }

        kdebug_trace();
        kdebug_trace();
        v120 = *(v131 + 1264);
        v140 = *(v131 + 1248);
        v121 = *(v131 + 1240);
        v192 = 0x100000000;
        LODWORD(v193) = 1;
        sub_2622F37B4(&v252, v219, &v192);
        v213 = 0u;
        memset(v214, 0, sizeof(v214));
        v211 = 0u;
        v212 = 0u;
        sub_26222AE80(&v215, &v252);
        sub_262223F30(&v217, v131 + 1008);
        sub_2622F6AA8(v214, v216, v218, &v211);
        v220 = 0x200000001;
        LODWORD(v221) = 1;
        sub_2622F37B4(&v233, v219, &v220);
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v228 = 1065353216;
        sub_262223F30(&v229, v131 + 1008);
        v222 = v230;
        v223 = v231;
        v224 = v232;
        memset(v194, 0, sizeof(v194));
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        sub_26222AE80(&v206, &v233);
        v208[4] = v226;
        v208[5] = v227;
        v208[0] = v222;
        v208[1] = v223;
        v209 = v228;
        v208[2] = v224;
        v208[3] = v225;
        sub_262223F30(&v210, &v229);
        sub_2622F6AA8(&v194[3], v207, v208, v194);
        v235 = 0u;
        memset(__p, 0, sizeof(__p));
        sub_2622F68B0(v236, &v211);
        sub_2622F6994(&v240, v194);
        if (*v236 != v240 || *&v236[8] != v241)
        {
          v122 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v123 = sub_2621D552C(v122, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
          sub_2621D552C(v123, " ", 1);
          v124 = MEMORY[0x277D82670];
          v125 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
          sub_2621D552C(v125, " ", 1);
          sub_2621D552C(v125, "TensorBinaryExp", 15);
          std::ios_base::getloc((v125 + *(*v125 - 24)));
          v126 = std::locale::use_facet(v255, MEMORY[0x277D82680]);
          (v126->__vftable[2].~facet_0)(v126, 10);
          std::locale::~locale(v255);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D6B98("err", "Binary Exp shape should equal");
          std::ios_base::getloc((v124 + *(*v124 - 24)));
          v127 = std::locale::use_facet(v255, MEMORY[0x277D82680]);
          (v127->__vftable[2].~facet_0)(v127, 10);
          std::locale::~locale(v255);
          std::ostream::put();
          std::ostream::flush();
        }

        *__p = *v236;
        *&__p[2] = *&v236[16];
        v235 = v237;
        memset(v242, 0, sizeof(v242));
        v243 = 0u;
        *v244 = *v236;
        *&v244[16] = *&v236[16];
        *&v244[32] = v237;
        sub_2622F68B0(&v244[48], v236);
        sub_2622F6994(v248, &v240);
        v249 = 0u;
        v250 = 0u;
        *&v248[696] = 0u;
        v251 = 1056964608;
        *v242 = *v244;
        *&v242[2] = *&v244[16];
        v243 = *&v244[32];
        memset(v254, 0, 96);
        v254[15] = 0;
        v253 = &unk_2874EF0D8;
        v254[14] = 0;
        sub_262204784(v254, v242);
        sub_262224B84();
      }
    }

    if (qword_27FF0C070 != -1)
    {
      dispatch_once(&qword_27FF0C070, &unk_2874EE120);
    }

    v128 = qword_27FF0C068;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v242[0]) = 0;
      _os_log_debug_impl(&dword_2621C3000, v128, OS_LOG_TYPE_DEBUG, "No valid candidate line", v242, 2u);
    }

    *v130 = 0;
    *(v130 + 8) = &unk_2874EF0D8;
    *(v130 + 16) = 0u;
    *(v130 + 32) = 0u;
    *(v130 + 48) = 0u;
    *(v130 + 64) = 0u;
    *(v130 + 80) = 0u;
    *(v130 + 96) = 0u;
    *(v130 + 128) = 0u;
    *(v130 + 144) = 257;
    *(v130 + 160) = &unk_2874EF0D8;
    *(v130 + 168) = 0u;
    *(v130 + 184) = 0u;
    *(v130 + 200) = 0u;
    *(v130 + 216) = 0u;
    *(v130 + 232) = 0u;
    *(v130 + 248) = 0u;
    *(v130 + 280) = 0u;
    *(v130 + 296) = 257;
    *(v130 + 312) = &unk_2874EF0B8;
    *(v130 + 320) = 0u;
    *(v130 + 336) = 0u;
    *(v130 + 352) = 0u;
    *(v130 + 368) = 0u;
    *(v130 + 384) = 0u;
    *(v130 + 400) = 0u;
    *(v130 + 432) = 0u;
    *(v130 + 448) = 257;
    *(v130 + 464) = &unk_2874EF0B8;
    *(v130 + 472) = 0u;
    *(v130 + 488) = 0u;
    *(v130 + 504) = 0u;
    *(v130 + 520) = 0u;
    *(v130 + 536) = 0u;
    *(v130 + 552) = 0u;
    *(v130 + 584) = 0u;
    *(v130 + 600) = 257;
    *(v130 + 616) = &unk_2874EF6A8;
    *(v130 + 688) = 0u;
    *(v130 + 704) = 0u;
    *(v130 + 656) = 0u;
    *(v130 + 672) = 0u;
    *(v130 + 624) = 0u;
    *(v130 + 640) = 0u;
    *(v130 + 736) = 0u;
    *(v130 + 752) = 257;
    v242[0] = &v189;
    sub_2621E1D40(v242);
    if (v142)
    {
      sub_2621D1B78(v142);
    }
  }

  else
  {
    v143 = &unk_2874EF0D8;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v151 = 0;
    v150 = 0;
    v152 = 257;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v162 = 0;
    v154 = &unk_2874EF0B8;
    v161 = 0;
    v163 = 257;
    v164 = &unk_2874EF6A8;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0;
    v172 = 0;
    v173 = 257;
    kdebug_trace();
    kdebug_trace();
    if (qword_27FF0C070 != -1)
    {
      dispatch_once(&qword_27FF0C070, &unk_2874EE120);
    }

    v104 = qword_27FF0C068;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v242[0]) = 0;
      _os_log_debug_impl(&dword_2621C3000, v104, OS_LOG_TYPE_DEBUG, "No candidate line", v242, 2u);
    }

    *v130 = 0;
    *(v130 + 8) = &unk_2874EF0D8;
    *(v130 + 16) = 0u;
    *(v130 + 32) = 0u;
    *(v130 + 48) = 0u;
    *(v130 + 64) = 0u;
    *(v130 + 80) = 0u;
    *(v130 + 96) = 0u;
    *(v130 + 128) = 0u;
    *(v130 + 144) = 257;
    *(v130 + 160) = &unk_2874EF0D8;
    *(v130 + 168) = 0u;
    *(v130 + 184) = 0u;
    *(v130 + 200) = 0u;
    *(v130 + 216) = 0u;
    *(v130 + 232) = 0u;
    *(v130 + 248) = 0u;
    *(v130 + 280) = 0u;
    *(v130 + 296) = 257;
    *(v130 + 312) = &unk_2874EF0B8;
    *(v130 + 320) = 0u;
    *(v130 + 336) = 0u;
    *(v130 + 352) = 0u;
    *(v130 + 368) = 0u;
    *(v130 + 384) = 0u;
    *(v130 + 400) = 0u;
    *(v130 + 432) = 0u;
    *(v130 + 448) = 257;
    *(v130 + 464) = &unk_2874EF0B8;
    *(v130 + 472) = 0u;
    *(v130 + 488) = 0u;
    *(v130 + 504) = 0u;
    *(v130 + 520) = 0u;
    *(v130 + 536) = 0u;
    *(v130 + 552) = 0u;
    *(v130 + 584) = 0u;
    *(v130 + 600) = 257;
    *(v130 + 616) = &unk_2874EF6A8;
    *(v130 + 688) = 0u;
    *(v130 + 704) = 0u;
    *(v130 + 656) = 0u;
    *(v130 + 672) = 0u;
    *(v130 + 624) = 0u;
    *(v130 + 640) = 0u;
    *(v130 + 736) = 0u;
    *(v130 + 752) = 257;
  }

  v164 = &unk_2874EF6A8;
  if (v172)
  {
    sub_2621D1B78(v172);
  }

  v154 = &unk_2874EF0B8;
  if (v162)
  {
    sub_2621D1B78(v162);
  }

  v143 = &unk_2874EF0D8;
  if (v151)
  {
    sub_2621D1B78(v151);
  }

  if (v174)
  {
    v175 = v174;
    operator delete(v174);
  }

  v177 = &unk_2874EEDA0;
  if (v181)
  {
    sub_2621D1B78(v181);
  }

  v183 = &unk_2874EEDA0;
  if (v185)
  {
    sub_2621D1B78(v185);
  }

  v187[0] = &unk_2874EEDA0;
  if (v188)
  {
    sub_2621D1B78(v188);
  }

  v105 = *MEMORY[0x277D85DE8];
}

void sub_2622F1E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0x1940]);
  sub_2621C57C8(&STACK[0xDC0]);
  if (STACK[0x6C0])
  {
    sub_2621D1B78(STACK[0x6C0]);
  }

  STACK[0x1330] = &unk_2874EF6A8;
  if (STACK[0x13B0])
  {
    sub_2621D1B78(STACK[0x13B0]);
  }

  STACK[0xC20] = &unk_2874EF6A8;
  if (STACK[0xCA0])
  {
    sub_2621D1B78(STACK[0xCA0]);
  }

  STACK[0xD28] = v64;
  if (STACK[0xDA8])
  {
    sub_2621D1B78(STACK[0xDA8]);
  }

  if (a42)
  {
    sub_2621D1B78(a42);
  }

  STACK[0xB58] = &unk_2874EF0D8;
  if (STACK[0xBD8])
  {
    sub_2621D1B78(STACK[0xBD8]);
  }

  STACK[0x900] = &STACK[0x570];
  sub_2621E1D40(&STACK[0x900]);
  if (a61)
  {
    sub_2621D1B78(a61);
  }

  sub_2622F370C(&a64);
  v66 = STACK[0x388];
  if (STACK[0x388])
  {
    STACK[0x390] = v66;
    operator delete(v66);
  }

  STACK[0x3A0] = &unk_2874EEDA0;
  if (STACK[0x420])
  {
    sub_2621D1B78(STACK[0x420]);
  }

  STACK[0x438] = &unk_2874EEDA0;
  if (STACK[0x4B8])
  {
    sub_2621D1B78(STACK[0x4B8]);
  }

  STACK[0x4D0] = &unk_2874EEDA0;
  if (STACK[0x550])
  {
    sub_2621D1B78(STACK[0x550]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622F30B0(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2622F3150(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2622F3228(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_2621E1EE4(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_2621C8E70(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_2621C8E70(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_2622F3370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622F3390(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v25 = *a2;
  v26 = *(a2 + 16);
  v27 = 0;
  result = sub_262226244(a1, &v25);
  if (*(a1 + 137) == 1)
  {
    v4 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v5 = sub_2621D552C(v4, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v5, " ", 1);
    v6 = MEMORY[0x277D82670];
    v7 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v7, " ", 1);
    sub_2621D552C(v7, "operator=", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v9 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    result = std::ostream::flush();
  }

  memset(v31, 0, sizeof(v31));
  *&v30[0].__locale_ = 0u;
  v10 = *(a1 + 104);
  v11 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v12 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_2623A7630;
      v15 = xmmword_2623A7620;
      v16 = (v11 + 8);
      v17 = vdupq_n_s64(4uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s16(v18, *v13.i8).u8[0])
        {
          *(v16 - 2) = 0;
        }

        if (vuzp1_s16(v18, *&v13).i8[2])
        {
          *(v16 - 1) = 0;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
        {
          *v16 = 0;
          v16[1] = 0;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 += 4;
        v12 -= 4;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        result = *(a1 + 56 + v20 * 8);
        v21 += result * v30[v20++].__locale_;
      }

      while (v20 != 3);
      v22 = 0;
      *(v11 + 4 * v21) = 0;
      do
      {
        v23 = *(v31 + v22) + 1;
        *(v31 + v22) = v23;
        if (v23 != *(a1 + 24 + v22))
        {
          break;
        }

        *(v31 + v22) = 0;
        v22 -= 8;
      }

      while (v22 != -24);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622F36BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale(&a15);
  *v15 = &unk_2874EF0D8;
  v17 = v15[16];
  if (v17)
  {
    sub_2621D1B78(v17);
  }

  _Unwind_Resume(a1);
}

void *sub_2622F370C(void *a1)
{
  a1[39] = &unk_2874EF6A8;
  v2 = a1[55];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[20] = &unk_2874EF0B8;
  v3 = a1[36];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[1] = &unk_2874EF0D8;
  v4 = a1[17];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  return a1;
}

void sub_2622F37B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[7] = *MEMORY[0x277D85DE8];
  v5 = v10;
  for (i = 8; i != 32; i += 8)
  {
    v7 = *(a2 + i);
    *(v5 - 2) = 0;
    *(v5 - 1) = v7;
    *v5 = 1;
    v5 += 3;
  }

  sub_262202A58(a2 + 8, v9, 1u, *a3, *(a3 + 4), *(a3 + 8));
  sub_262224D0C(a1, a2, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void *sub_2622F3860(void *a1)
{
  a1[68] = &unk_2874EF0B8;
  v2 = a1[84];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0D8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void *sub_2622F38E4(void *a1)
{
  a1[55] = &unk_2874EF0B8;
  v2 = a1[71];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0D8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void sub_2622F3968(uint64_t a1, _OWORD *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_262223B08();
}

void sub_2622F44BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

void sub_2622F451C(uint64_t a1, _OWORD *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[17];
  v2 = a2[18];
  *(a1 + 8) = a2[16];
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_262223B08();
}

void sub_2622F4FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  std::locale::~locale((v36 - 144));
  sub_2621C57C8(&a35);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  v38 = *(v35 + 128);
  if (v38)
  {
    sub_2621D1B78(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622F505C(void *a1, void *a2)
{
  if (a1[21] != a2[15])
  {
    return 0;
  }

  if (a1[7] != a2[1] || a1[13] != a2[7] || a1[20] != a2[14])
  {
    return 2;
  }

  if (a1[19] == a2[13])
  {
    return 1;
  }

  return 2;
}

uint64_t sub_2622F50C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v132 = *MEMORY[0x277D85DE8];
  v4 = (result + 8);
  if (*(result + 8) == *(a2 + 256))
  {
    v5 = *(result + 104);
    v6 = *(result + 144);
    if (*(a2 + 184))
    {
      if (*(result + 136))
      {
        if (v5)
        {
          v7 = *(a2 + 192);
          v8 = *(a2 + 248);
          v9 = *(a2 + 304);
          v10 = *(a2 + 312);
          do
          {
            v11 = *v7++;
            v12 = v11 + v8;
            if (v11 + v8 >= v10)
            {
              v12 = v10;
            }

            if (v12 <= v9)
            {
              v12 = v9;
            }

            *v6++ = v12;
            --v5;
          }

          while (v5);
        }
      }

      else if (v5)
      {
        v67 = 0;
        v68 = *(a2 + 192);
        v69 = *(a2 + 248);
        v70 = *(a2 + 304);
        v71 = *(a2 + 312);
        do
        {
          v72 = *v68++;
          v73 = v72 + v69;
          if (v72 + v69 >= v71)
          {
            v73 = v71;
          }

          if (v73 <= v70)
          {
            v73 = v70;
          }

          v6[*(result + 56) * v67] = v73;
          if (v67 + 1 == *(result + 8))
          {
            v67 = 0;
          }

          else
          {
            ++v67;
          }

          --v5;
        }

        while (v5);
      }
    }

    else if (*(result + 136))
    {
      if (v5)
      {
        v36 = 0;
        v37 = *(a2 + 192);
        v38 = *(a2 + 248);
        v39 = *(a2 + 304);
        v40 = *(a2 + 312);
        do
        {
          v41 = *(v37 + 8 * *(a2 + 104) * v36) + v38;
          if (v41 >= v40)
          {
            v41 = v40;
          }

          if (v41 <= v39)
          {
            v41 = v39;
          }

          *v6++ = v41;
          if (v36 + 1 == *v4)
          {
            v36 = 0;
          }

          else
          {
            ++v36;
          }

          --v5;
        }

        while (v5);
      }
    }

    else if (v5)
    {
      v74 = 0;
      v75 = *(a2 + 192);
      v76 = *(a2 + 248);
      v77 = *(a2 + 304);
      v78 = *(a2 + 312);
      do
      {
        v79 = *(v75 + 8 * *(a2 + 104) * v74) + v76;
        if (v79 >= v78)
        {
          v79 = v78;
        }

        if (v79 <= v77)
        {
          v79 = v77;
        }

        v6[*(result + 56) * v74] = v79;
        if (v74 + 1 == *(result + 8))
        {
          v74 = 0;
        }

        else
        {
          ++v74;
        }

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v121 = 0uLL;
      v122 = 0uLL;
      v119 = 0uLL;
      v120 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v115 = 0uLL;
      v116 = 0uLL;
      v113 = 0uLL;
      v114 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      sub_262205FA8(&v114, v4, (a2 + 256), &v111);
      v13 = v111;
      if (v111 != *v4)
      {
        v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v15, " ", 1);
        v16 = MEMORY[0x277D82670];
        v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v17, " ", 1);
        sub_2621D552C(v17, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(v129, MEMORY[0x277D82680]);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(v129);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v19 = std::locale::use_facet(v129, MEMORY[0x277D82680]);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(v129);
        std::ostream::put();
        std::ostream::flush();
      }

      v130 = 0u;
      v131 = 0u;
      *&v129[0].__locale_ = 0u;
      v20 = *(v3 + 104);
      v21 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v20)
        {
          v22 = 0;
          v23 = 0;
          v24 = *(a2 + 304);
          v25 = *(a2 + 312);
          v27 = *(&v115 + 1);
          v26 = v116;
          v28 = (v116 - *(&v115 + 1)) >> 3;
          if (v28 <= 1)
          {
            v28 = 1;
          }

          v29 = *(a2 + 192);
          v30 = *(a2 + 248);
          do
          {
            v129[0].__locale_ = v22;
            locale = v22;
            if (v26 != v27)
            {
              v32 = v27;
              v33 = v28;
              do
              {
                v34 = *v32++;
                v129[v34].__locale_ = 0;
                --v33;
              }

              while (v33);
              locale = v129[0].__locale_;
            }

            v35 = *(v29 + 8 * v126 * locale) + v30;
            if (v35 >= v25)
            {
              v35 = v25;
            }

            if (v35 <= v24)
            {
              v35 = v24;
            }

            *(v21 + 8 * v23) = v35;
            if ((v22 + 1) == v13)
            {
              v22 = 0;
            }

            else
            {
              v22 = (v22 + 1);
            }

            ++v23;
          }

          while (v23 != v20);
        }
      }

      else if (v20)
      {
        v80 = 0;
        v81 = 0;
        v82 = *(a2 + 304);
        v83 = *(a2 + 312);
        v85 = *(&v115 + 1);
        v84 = v116;
        v86 = (v116 - *(&v115 + 1)) >> 3;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        v87 = *(a2 + 192);
        v88 = *(a2 + 248);
        do
        {
          v129[0].__locale_ = v80;
          v89 = v80;
          if (v84 != v85)
          {
            v90 = v85;
            v91 = v86;
            do
            {
              v92 = *v90++;
              v129[v92].__locale_ = 0;
              --v91;
            }

            while (v91);
            v89 = v129[0].__locale_;
          }

          v93 = *(v87 + 8 * v126 * v89) + v88;
          if (v93 >= v83)
          {
            v93 = v83;
          }

          if (v93 <= v82)
          {
            v93 = v82;
          }

          *(v21 + 8 * *(v3 + 56) * v80) = v93;
          if ((v80 + 1) == v13)
          {
            v80 = 0;
          }

          else
          {
            v80 = (v80 + 1);
          }

          ++v81;
        }

        while (v81 != v20);
      }
    }

    else
    {
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v121 = 0uLL;
      v122 = 0uLL;
      v119 = 0uLL;
      v120 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v115 = 0uLL;
      v116 = 0uLL;
      v113 = 0uLL;
      v114 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      sub_262205FA8(&v114, v4, (a2 + 256), &v111);
      v42 = v111;
      if (v111 != *v4)
      {
        v43 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v44 = sub_2621D552C(v43, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v44, " ", 1);
        v45 = MEMORY[0x277D82670];
        v46 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v46, " ", 1);
        sub_2621D552C(v46, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v46 + *(*v46 - 24)));
        v47 = std::locale::use_facet(v129, MEMORY[0x277D82680]);
        (v47->__vftable[2].~facet_0)(v47, 10);
        std::locale::~locale(v129);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v45 + *(*v45 - 24)));
        v48 = std::locale::use_facet(v129, MEMORY[0x277D82680]);
        (v48->__vftable[2].~facet_0)(v48, 10);
        std::locale::~locale(v129);
        std::ostream::put();
        std::ostream::flush();
      }

      v130 = 0u;
      v131 = 0u;
      *&v129[0].__locale_ = 0u;
      v49 = *(v3 + 104);
      v50 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v49)
        {
          v51 = 0;
          v52 = 0;
          v53 = *(a2 + 304);
          v54 = *(a2 + 312);
          v56 = *(&v115 + 1);
          v55 = v116;
          v57 = (v116 - *(&v115 + 1)) >> 3;
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = *(a2 + 184);
          v59 = *(a2 + 192);
          v60 = *(a2 + 248);
          do
          {
            v129[0].__locale_ = v51;
            v61 = v51;
            if (v55 != v56)
            {
              v62 = v56;
              v63 = v57;
              do
              {
                v64 = *v62++;
                v129[v64].__locale_ = 0;
                --v63;
              }

              while (v63);
              v61 = v129[0].__locale_;
            }

            v65 = (a2 + 104);
            if (v58)
            {
              v65 = &v126;
            }

            v66 = *(v59 + 8 * *v65 * v61) + v60;
            if (v66 >= v54)
            {
              v66 = v54;
            }

            if (v66 <= v53)
            {
              v66 = v53;
            }

            *(v50 + 8 * v52) = v66;
            if ((v51 + 1) == v42)
            {
              v51 = 0;
            }

            else
            {
              v51 = (v51 + 1);
            }

            ++v52;
          }

          while (v52 != v49);
        }
      }

      else if (v49)
      {
        v94 = 0;
        v95 = 0;
        v96 = *(a2 + 304);
        v97 = *(a2 + 312);
        v99 = *(&v115 + 1);
        v98 = v116;
        v100 = (v116 - *(&v115 + 1)) >> 3;
        if (v100 <= 1)
        {
          v100 = 1;
        }

        v101 = *(a2 + 184);
        v102 = *(a2 + 192);
        v103 = *(a2 + 248);
        do
        {
          v129[0].__locale_ = v94;
          v104 = v94;
          if (v98 != v99)
          {
            v105 = v99;
            v106 = v100;
            do
            {
              v107 = *v105++;
              v129[v107].__locale_ = 0;
              --v106;
            }

            while (v106);
            v104 = v129[0].__locale_;
          }

          v108 = (a2 + 104);
          if (v101)
          {
            v108 = &v126;
          }

          v109 = *(v102 + 8 * *v108 * v104) + v103;
          if (v109 >= v97)
          {
            v109 = v97;
          }

          if (v109 <= v96)
          {
            v109 = v96;
          }

          *(v50 + 8 * *(v3 + 56) * v94) = v109;
          if ((v94 + 1) == v42)
          {
            v94 = 0;
          }

          else
          {
            v94 = (v94 + 1);
          }

          ++v95;
        }

        while (v95 != v49);
      }
    }

    result = sub_2621C57C8(&v114);
  }

  v110 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622F5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::locale::~locale((v7 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2622F5998(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  if (*(a1 + 8) != *a2 || *(a1 + 16) != *(a2 + 8) || *(a1 + 24) != *(a2 + 16))
  {
    if (*(a2 + 520) == 1 && *(a2 + 672) == 1 && *(a2 + 1112) == 1 && *(a2 + 1368) == 1)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v64 = 0u;
      memset(v63, 0, sizeof(v63));
      sub_2622063F0(&v71, v4, a2, v63);
      if (*&v63[0] != *v4 || *(v63 + 8) != *(a1 + 16))
      {
        v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v7, " ", 1);
        v8 = MEMORY[0x277D82670];
        v9 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v9, " ", 1);
        sub_2621D552C(v9, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v9 + *(*v9 - 24)));
        v10 = std::locale::use_facet(v68, MEMORY[0x277D82680]);
        (v10->__vftable[2].~facet_0)(v10, 10);
        std::locale::~locale(v68);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v8 + *(*v8 - 24)));
        v11 = std::locale::use_facet(v68, MEMORY[0x277D82680]);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(v68);
        std::ostream::put();
        std::ostream::flush();
      }

      v70 = 0u;
      *&v68[0].__locale_ = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v12 = *(a1 + 104);
      v13 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v12)
        {
          for (i = 0; i != v12; ++i)
          {
            v62 = 0;
            sub_2622066E4(&v71, v68, &v62, &v65);
            v15 = sub_2622F6798(a2 + 96, &v65);
            *(v13 + 4 * i) = (v15 + sub_2622F6820(a2 + 688, &v65)) - *(a2 + 1432);
            for (j = 2; j != -1; --j)
            {
              v17 = (v68[j].__locale_ + 1);
              v68[j].__locale_ = v17;
              if (v17 != *(v63 + j * 8))
              {
                break;
              }

              v68[j].__locale_ = 0;
            }
          }
        }
      }

      else if (v12)
      {
        v55 = 0;
        v56 = a1 + 56;
        do
        {
          v62 = 0;
          sub_2622066E4(&v71, v68, &v62, &v65);
          v57 = 0;
          v58 = 0;
          do
          {
            v58 += *(v56 + v57 * 8) * v68[v57].__locale_;
            ++v57;
          }

          while (v57 != 3);
          v59 = sub_2622F6798(a2 + 96, &v65);
          *(v13 + 4 * v58) = (v59 + sub_2622F6820(a2 + 688, &v65)) - *(a2 + 1432);
          for (k = 2; k != -1; --k)
          {
            v61 = (v68[k].__locale_ + 1);
            v68[k].__locale_ = v61;
            if (v61 != *(v63 + k * 8))
            {
              break;
            }

            v68[k].__locale_ = 0;
          }

          ++v55;
        }

        while (v55 != v12);
      }
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v64 = 0u;
      memset(v63, 0, sizeof(v63));
      sub_2622063F0(&v71, v4, a2, v63);
      if (*&v63[0] != *v4 || *(v63 + 8) != *(a1 + 16))
      {
        v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v19, " ", 1);
        v20 = MEMORY[0x277D82670];
        v21 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v68, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v68);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v23 = std::locale::use_facet(v68, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v68);
        std::ostream::put();
        std::ostream::flush();
      }

      v70 = 0u;
      *&v68[0].__locale_ = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v24 = *(a1 + 104);
      v25 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v24)
        {
          for (m = 0; m != v24; ++m)
          {
            v62 = 0;
            sub_2622066E4(&v71, v68, &v62, &v65);
            v27 = sub_2622F64D4(a2 + 96, &v65);
            *(v25 + 4 * m) = (v27 + sub_2622F65C0(a2 + 688, &v65)) - *(a2 + 1432);
            for (n = 2; n != -1; --n)
            {
              v29 = (v68[n].__locale_ + 1);
              v68[n].__locale_ = v29;
              if (v29 != *(v63 + n * 8))
              {
                break;
              }

              v68[n].__locale_ = 0;
            }
          }
        }
      }

      else if (v24)
      {
        v30 = 0;
        v31 = a1 + 56;
        do
        {
          v62 = 0;
          sub_2622066E4(&v71, v68, &v62, &v65);
          v32 = 0;
          v33 = 0;
          do
          {
            v33 += *(v31 + v32 * 8) * v68[v32].__locale_;
            ++v32;
          }

          while (v32 != 3);
          v34 = sub_2622F64D4(a2 + 96, &v65);
          *(v25 + 4 * v33) = (v34 + sub_2622F65C0(a2 + 688, &v65)) - *(a2 + 1432);
          for (ii = 2; ii != -1; --ii)
          {
            v36 = (v68[ii].__locale_ + 1);
            v68[ii].__locale_ = v36;
            if (v36 != *(v63 + ii * 8))
            {
              break;
            }

            v68[ii].__locale_ = 0;
          }

          ++v30;
        }

        while (v30 != v24);
      }
    }

    sub_2621C57C8(&v71);
    goto LABEL_46;
  }

  if (*(a2 + 520) != 1 || *(a2 + 672) != 1 || *(a2 + 1112) != 1 || *(a2 + 1368) != 1)
  {
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v38 = *(a1 + 104);
    v39 = *(a1 + 144);
    if (*(a1 + 136))
    {
      if (v38)
      {
        v40 = 0;
        v41 = a1 + 24;
        do
        {
          v42 = sub_2622F64D4(a2 + 96, &v71);
          v43 = sub_2622F65C0(a2 + 688, &v71);
          v44 = 0;
          *(v39 + 4 * v40) = (v42 + v43) - *(a2 + 1432);
          do
          {
            v45 = *(&v72 + v44) + 1;
            *(&v72 + v44) = v45;
            if (v45 != *(v41 + v44))
            {
              break;
            }

            *(&v72 + v44) = 0;
            v44 -= 8;
          }

          while (v44 != -24);
          ++v40;
        }

        while (v40 != v38);
      }
    }

    else if (v38)
    {
      v46 = 0;
      v47 = a1 + 56;
      v48 = a1 + 24;
      do
      {
        v49 = 0;
        v50 = 0;
        do
        {
          v50 += *(v47 + v49) * *(&v71 + v49);
          v49 += 8;
        }

        while (v49 != 24);
        v51 = sub_2622F64D4(a2 + 96, &v71);
        v52 = sub_2622F65C0(a2 + 688, &v71);
        v53 = 0;
        *(v39 + 4 * v50) = (v51 + v52) - *(a2 + 1432);
        do
        {
          v54 = *(&v72 + v53) + 1;
          *(&v72 + v53) = v54;
          if (v54 != *(v48 + v53))
          {
            break;
          }

          *(&v72 + v53) = 0;
          v53 -= 8;
        }

        while (v53 != -24);
        ++v46;
      }

      while (v46 != v38);
    }

LABEL_46:
    v37 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *MEMORY[0x277D85DE8];

  sub_2622F6324(a1, a2);
}

void sub_2622F62F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::locale::~locale(&a23);
  sub_2621C57C8(&a29);
  _Unwind_Resume(a1);
}

void sub_2622F6324(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v3 = *(a1 + 104);
  v4 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v3)
    {
      v5 = 0;
      v6 = a1 + 24;
      do
      {
        v7 = sub_2622F6798(a2 + 96, &v21);
        v8 = sub_2622F6820(a2 + 688, &v21);
        v9 = 0;
        *(v4 + 4 * v5) = (v7 + v8) - *(a2 + 1432);
        do
        {
          v10 = *(v22 + v9) + 1;
          *(v22 + v9) = v10;
          if (v10 != *(v6 + v9))
          {
            break;
          }

          *(v22 + v9) = 0;
          v9 -= 8;
        }

        while (v9 != -24);
        ++v5;
      }

      while (v5 != v3);
    }
  }

  else if (v3)
  {
    v11 = 0;
    v12 = a1 + 56;
    v13 = a1 + 24;
    do
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v15 += *(v12 + v14) * *(&v22[-1] + v14);
        v14 += 8;
      }

      while (v14 != 24);
      v16 = sub_2622F6798(a2 + 96, &v21);
      v17 = sub_2622F6820(a2 + 688, &v21);
      v18 = 0;
      *(v4 + 4 * v15) = (v16 + v17) - *(a2 + 1432);
      do
      {
        v19 = *(v22 + v18) + 1;
        *(v22 + v18) = v19;
        if (v19 != *(v13 + v18))
        {
          break;
        }

        *(v22 + v18) = 0;
        v18 -= 8;
      }

      while (v18 != -24);
      ++v11;
    }

    while (v11 != v3);
  }

  v20 = *MEMORY[0x277D85DE8];
}

float sub_2622F64D4(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  sub_2622F66B8(a1 + 48, a2, &v10, v12, &v9, v11);
  if (*(a1 + 424))
  {
    v3 = v10;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    do
    {
      v3 += *(a1 + 344 + v4) * *&v12[v4];
      v4 += 8;
    }

    while (v4 != 24);
  }

  if (*(a1 + 576) == 1)
  {
    v5 = v9;
    v6 = *(a1 + 584);
  }

  else
  {
    v5 = *(a1 + 496) * v11[0];
    v6 = *(a1 + 584) + 4 * *(a1 + 504) * v11[1];
  }

  v7 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 432) + 4 * v3) * *(v6 + 4 * v5);
}

float sub_2622F65C0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  sub_2622F66B8(a1 + 48, a2, &v10, v12, &v9, v11);
  if (*(a1 + 424))
  {
    v3 = v10;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    do
    {
      v3 += *(a1 + 344 + v4) * *&v12[v4];
      v4 += 8;
    }

    while (v4 != 24);
  }

  if (*(a1 + 680) == 1)
  {
    v5 = v9;
    v6 = *(a1 + 688);
  }

  else
  {
    v5 = *(a1 + 600) * v11[0];
    v6 = *(a1 + 688) + 4 * *(a1 + 608) * v11[1];
  }

  v7 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 432) + 4 * v3) * (*(a1 + 536) - *(v6 + 4 * v5));
}

uint64_t sub_2622F66B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = 0;
  *a5 = 0;
  *a3 = 0;
  v7 = *(result + 24);
  v8 = *(result + 32);
  *a6 = *(a2 + 8);
  a6[1] = *(a2 + 16);
  v9 = *result;
  v10 = *(result + 8);
  do
  {
    *(a4 + v6) = *(a2 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  if (v8 != v7)
  {
    v11 = v8 - v7;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v7++;
      a6[v12] = 0;
      --v11;
    }

    while (v11);
  }

  if (v10 != v9)
  {
    v13 = v10 - v9;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v14 = *v9++;
      *(a4 + 8 * v14) = 0;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
  v16 = *a5;
  v17 = 1;
  do
  {
    v18 = v17;
    v16 += *(result + 192 + 8 * v15) * a6[v15];
    *a5 = v16;
    v15 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  v19 = 0;
  v20 = *a3;
  do
  {
    v20 += *(result + 144 + v19) * *(a4 + v19);
    *a3 = v20;
    v19 += 8;
  }

  while (v19 != 24);
  return result;
}

float sub_2622F6798(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  sub_2622F66B8(a1 + 48, a2, &v6, v8, &v5, v7);
  v3 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 432) + 4 * v6) * *(*(a1 + 584) + 4 * v5);
}

float sub_2622F6820(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  sub_2622F66B8(a1 + 48, a2, &v6, v8, &v5, v7);
  v3 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 432) + 4 * v6) * (*(a1 + 536) - *(*(a1 + 688) + 4 * v5));
}

uint64_t sub_2622F68B0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80(a1 + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_26222AE80(a1 + 288, (a2 + 18));
  sub_262223F30(a1 + 440, a2 + 440);
  return a1;
}

void sub_2622F6978(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622F6994(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80(a1 + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_26222AE80(a1 + 288, (a2 + 18));
  v15 = *(a2 + 440);
  v16 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v16;
  *(a1 + 440) = v15;
  v17 = *(a2 + 488);
  v18 = *(a2 + 504);
  v19 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 134);
  *(a1 + 504) = v18;
  *(a1 + 520) = v19;
  *(a1 + 488) = v17;
  sub_262223F30(a1 + 544, (a2 + 34));
  return a1;
}

void sub_2622F6A8C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622F6AA8(uint64_t a1, _OWORD *a2, _OWORD *a3, void *a4)
{
  v7 = *a2;
  v8 = a2[2];
  *(a1 + 64) = a2[1];
  *(a1 + 80) = v8;
  *(a1 + 48) = v7;
  v9 = *a3;
  v10 = a3[2];
  *(a1 + 112) = a3[1];
  *(a1 + 128) = v10;
  *(a1 + 96) = v9;
  v11 = a3 + 1;
  v12 = 2;
  v13 = MEMORY[0x277D82670];
  v14 = MEMORY[0x277D82680];
  do
  {
    v15 = v12 - 1;
    v16 = *(a2 + v12);
    if (v16 == *v11)
    {
      a4[v12] = v16;
      goto LABEL_10;
    }

    if (v16 == 1)
    {
      v30.__locale_ = v12;
      sub_2621C9004(a1, &v30);
      v17 = *v11;
LABEL_8:
      a4[v12] = v17;
      goto LABEL_10;
    }

    if (*v11 == 1)
    {
      v30.__locale_ = (v12 - 1);
      sub_2621C9004(a1 + 24, &v30);
      v17 = *(a2 + v12);
      goto LABEL_8;
    }

    v18 = sub_2621D552C(v13, "runtime_err in ", 15);
    v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/broadcast_helper.hpp", 119);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = MEMORY[0x266727260](v20, 135);
    v22 = sub_2621D552C(v21, " ", 1);
    v23 = sub_2621D552C(v22, "init_internal", 13);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v30, v14);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D995C("err", "cannot broadcast");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v25 = std::locale::use_facet(&v30, v14);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v30);
    std::ostream::put();
    std::ostream::flush();
LABEL_10:
    --v11;
    --v12;
  }

  while (v15);
  v26 = 0;
  *a4 = *a2;
  v27 = a1 + 144;
  do
  {
    *(v27 + 8 * v26) = 1;
    if (v26 <= 1)
    {
      v28 = v26;
      v29 = 1;
      do
      {
        v29 *= *(a1 + 56 + 8 * v28);
        *(v27 + 8 * v26) = v29;
        ++v28;
      }

      while (v28 != 2);
    }

    ++v26;
  }

  while (v26 != 3);
  *(a1 + 192) = *(a1 + 104);
  *(a1 + 200) = 1;
}

void sub_2622F6D6C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v167 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 184);
  if (v7 == v8)
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v10 = *(a1 + 104);
      v11 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 192);
          v13 = *(a2 + 344);
          do
          {
            v14 = *v12++;
            v15 = v14;
            v16 = *v13++;
            v17 = v16;
            if (v15 < v16)
            {
              v15 = v17;
            }

            *v11++ = v15;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v104 = 0;
        v105 = *(a1 + 56);
        v106 = *(a1 + 64);
        v107 = *(a2 + 192);
        v108 = *(a2 + 344);
        do
        {
          v109 = 0;
          v110 = *(v107 + 4 * v104);
          if (v110 < *(v108 + 4 * v104))
          {
            v110 = *(v108 + 4 * v104);
          }

          v11[v106 * *(&v152 + 1) + v105 * v152] = v110;
          do
          {
            v111 = *(&v152 + v109 + 8) + 1;
            *(&v152 + v109 + 8) = v111;
            if (v111 != *(a1 + 16 + v109))
            {
              break;
            }

            *(&v152 + v109 + 8) = 0;
            v109 -= 8;
          }

          while (v109 != -16);
          ++v104;
        }

        while (v104 != v10);
      }
    }

    else
    {
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v48 = *(a1 + 104);
      v49 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v48)
        {
          for (i = 0; i != v48; ++i)
          {
            v51 = sub_2622F7828(a2, i, v152, *(&v152 + 1));
            v52 = 0;
            *(v49 + 4 * i) = v51;
            do
            {
              v53 = *(&v152 + v52 + 8) + 1;
              *(&v152 + v52 + 8) = v53;
              if (v53 != *(a1 + 16 + v52))
              {
                break;
              }

              *(&v152 + v52 + 8) = 0;
              v52 -= 8;
            }

            while (v52 != -16);
          }
        }
      }

      else if (v48)
      {
        v80 = 0;
        v81 = *(a1 + 56);
        v82 = *(a1 + 64);
        v83 = a1 + 16;
        do
        {
          v84 = v81 * v152;
          v85 = v49 + 4 * v82 * *(&v152 + 1);
          v86 = sub_2622F7828(a2, v80, v152, *(&v152 + 1));
          v87 = 0;
          *(v85 + 4 * v84) = v86;
          do
          {
            v88 = *(&v152 + v87 + 8) + 1;
            *(&v152 + v87 + 8) = v88;
            if (v88 != *(v83 + v87))
            {
              break;
            }

            *(&v152 + v87 + 8) = 0;
            v87 -= 8;
          }

          while (v87 != -16);
          ++v80;
        }

        while (v80 != v48);
      }
    }
  }

  else
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v18 = 0;
      v19 = &v143;
      v20 = 1;
      do
      {
        v21 = *v19;
        v22 = *(v5 + v18);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v20 = 0;
        v19 = &v143 + 1;
        v18 = 1;
      }

      while (v21 == v22);
      if (v21 != v22)
      {
        v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v24, " ", 1);
        v25 = MEMORY[0x277D82670];
        v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v26, " ", 1);
        sub_2621D552C(v26, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v28 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v29 = *(a1 + 104);
      v30 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v29)
        {
          v31 = 0;
          v33 = *(&v153 + 1);
          v32 = v154;
          v34 = (v154 - *(&v153 + 1)) >> 3;
          if (v34 <= 1)
          {
            v34 = 1;
          }

          v35 = *(a2 + 192);
          v36 = *(a2 + 344);
          do
          {
            v146 = *&v149[0].__locale_;
            if (v32 != v33)
            {
              v37 = v33;
              v38 = v34;
              do
              {
                v39 = *v37++;
                *(&v146 + v39) = 0;
                --v38;
              }

              while (v38);
            }

            v40 = 0;
            v41 = 0;
            v42 = &v146;
            v43 = 1;
            do
            {
              v44 = v43;
              v41 += *(&v164 + v40) * *v42;
              v42 = (&v146 + 8);
              v40 = 1;
              v43 = 0;
            }

            while ((v44 & 1) != 0);
            v45 = *(v35 + 4 * v41);
            if (v45 < *(v36 + 4 * v41))
            {
              v45 = *(v36 + 4 * v41);
            }

            *(v30 + 4 * v31) = v45;
            for (j = 1; j != -1; --j)
            {
              v47 = (v149[j].__locale_ + 1);
              v149[j].__locale_ = v47;
              if (v47 != *(&v143 + j * 8))
              {
                break;
              }

              v149[j].__locale_ = 0;
            }

            ++v31;
          }

          while (v31 != v29);
        }
      }

      else if (v29)
      {
        v112 = 0;
        v114 = *(&v153 + 1);
        v113 = v154;
        v115 = (v154 - *(&v153 + 1)) >> 3;
        if (v115 <= 1)
        {
          v115 = 1;
        }

        v116 = *(a1 + 56);
        v117 = *(a1 + 64);
        v118 = *(a2 + 192);
        v119 = *(a2 + 344);
        do
        {
          locale = v149[0].__locale_;
          v121 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v113 != v114)
          {
            v122 = v114;
            v123 = v115;
            do
            {
              v124 = *v122++;
              *(&v146 + v124) = 0;
              --v123;
            }

            while (v123);
          }

          v125 = 0;
          v126 = 0;
          v127 = &v146;
          v128 = 1;
          do
          {
            v129 = v128;
            v126 += *(&v164 + v125) * *v127;
            v127 = (&v146 + 8);
            v125 = 1;
            v128 = 0;
          }

          while ((v129 & 1) != 0);
          v130 = locale * v116;
          v131 = v121 * v117;
          v132 = *(v118 + 4 * v126);
          if (v132 < *(v119 + 4 * v126))
          {
            v132 = *(v119 + 4 * v126);
          }

          *(v30 + 4 * v131 + 4 * v130) = v132;
          for (k = 1; k != -1; --k)
          {
            v134 = (v149[k].__locale_ + 1);
            v149[k].__locale_ = v134;
            if (v134 != *(&v143 + k * 8))
            {
              break;
            }

            v149[k].__locale_ = 0;
          }

          ++v112;
        }

        while (v112 != v29);
      }
    }

    else
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v152 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      sub_2621D96E4(&v152, v5, a2, &v143);
      v54 = 0;
      v55 = &v143;
      v56 = 1;
      do
      {
        v57 = *v55;
        v58 = *(v5 + v54);
        if ((v56 & 1) == 0)
        {
          break;
        }

        v56 = 0;
        v55 = &v143 + 1;
        v54 = 1;
      }

      while (v57 == v58);
      if (v57 != v58)
      {
        v59 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v60 = sub_2621D552C(v59, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v60, " ", 1);
        v61 = MEMORY[0x277D82670];
        v62 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v62, " ", 1);
        sub_2621D552C(v62, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v62 + *(*v62 - 24)));
        v63 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v64 = std::locale::use_facet(v149, MEMORY[0x277D82680]);
        (v64->__vftable[2].~facet_0)(v64, 10);
        std::locale::~locale(v149);
        std::ostream::put();
        std::ostream::flush();
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      *&v149[0].__locale_ = 0u;
      v146 = 0u;
      v147 = 0u;
      v65 = *(a1 + 104);
      v142 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v65)
        {
          v66 = 0;
          v68 = *(&v153 + 1);
          v67 = v154;
          v69 = (v154 - *(&v153 + 1)) >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v140 = v69;
          do
          {
            v146 = *&v149[0].__locale_;
            if (v67 != v68)
            {
              v70 = v68;
              v71 = v140;
              do
              {
                v72 = *v70++;
                *(&v146 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            v73 = 0;
            v74 = 0;
            v75 = &v146;
            v76 = 1;
            do
            {
              v77 = v76;
              v74 += *(&v164 + v73) * *v75;
              v75 = (&v146 + 8);
              v73 = 1;
              v76 = 0;
            }

            while ((v77 & 1) != 0);
            *(v142 + 4 * v66) = sub_2622F7828(a2, v74, v146, *(&v146 + 1));
            for (m = 1; m != -1; --m)
            {
              v79 = (v149[m].__locale_ + 1);
              v149[m].__locale_ = v79;
              if (v79 != *(&v143 + m * 8))
              {
                break;
              }

              v149[m].__locale_ = 0;
            }

            ++v66;
          }

          while (v66 != v65);
        }
      }

      else if (v65)
      {
        v89 = 0;
        v139 = v154;
        v141 = *(&v153 + 1);
        if (((v154 - *(&v153 + 1)) >> 3) <= 1)
        {
          v90 = 1;
        }

        else
        {
          v90 = (v154 - *(&v153 + 1)) >> 3;
        }

        v138 = *(a1 + 64);
        v136 = v90;
        v137 = *(a1 + 56);
        do
        {
          v91 = v65;
          v93 = v149[0].__locale_;
          v92 = v149[1].__locale_;
          v146 = *&v149[0].__locale_;
          if (v139 != v141)
          {
            v94 = v141;
            v95 = v136;
            do
            {
              v96 = *v94++;
              *(&v146 + v96) = 0;
              --v95;
            }

            while (v95);
          }

          v97 = 0;
          v98 = 0;
          v99 = &v146;
          v100 = 1;
          do
          {
            v101 = v100;
            v98 += *(&v164 + v97) * *v99;
            v99 = (&v146 + 8);
            v97 = 1;
            v100 = 0;
          }

          while ((v101 & 1) != 0);
          *(v142 + 4 * v138 * v92 + 4 * v137 * v93) = sub_2622F7828(a2, v98, v146, *(&v146 + 1));
          for (n = 1; n != -1; --n)
          {
            v103 = (v149[n].__locale_ + 1);
            v149[n].__locale_ = v103;
            if (v103 != *(&v143 + n * 8))
            {
              break;
            }

            v149[n].__locale_ = 0;
          }

          ++v89;
          v65 = v91;
        }

        while (v89 != v91);
      }
    }

    sub_2621C57C8(&v152);
  }

  v135 = *MEMORY[0x277D85DE8];
}

void sub_2622F77F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::locale::~locale(&a27);
  sub_2621C57C8(&a33);
  _Unwind_Resume(a1);
}

float sub_2622F7828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (*(a1 + 192) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 192) + 4 * *(a1 + 112) * a4 + 4 * *(a1 + 104) * a3);
  }

  result = *v4;
  if (*(a1 + 336) == 1)
  {
    v6 = *(a1 + 344) + 4 * a2;
  }

  else
  {
    v6 = *(a1 + 344) + 4 * *(a1 + 264) * a4 + 4 * *(a1 + 256) * a3;
  }

  if (result < *v6)
  {
    return *v6;
  }

  return result;
}

void sub_2622F78A4(void *a1)
{
  *a1 = &unk_2874EE768;
  v1 = (a1 + 2);
  sub_2622F7918(a1 + 2);
  sub_2621C74C4(v1);

  JUMPOUT(0x266727420);
}

void *sub_2622F7918(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *sub_2622F7984(void *a1)
{
  *a1 = &unk_2874EE768;
  v2 = (a1 + 2);
  sub_2622F7918(a1 + 2);
  sub_2621C74C4(v2);
  return a1;
}

void sub_2622F7C64(void *a1, void *a2)
{
  v16 = a1;
  if (objc_msgSend_count(v16, v3, v4) == 2)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v16, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v15 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v16, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    *a2 = __PAIR64__(v14, v15);
  }
}

id sub_2622F7E2C(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13 = HIDWORD(a1);
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v14[0] = v4;
  HIDWORD(v5) = v13;
  LODWORD(v5) = v13;
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v14[1] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v14, 2);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_2622F7EF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2622F84BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2622F85D0(float32x2_t *a1)
{
  if (a1)
  {
    v17 = a1[42].f32[0];
    v2 = __sincosf_stret((a1[42].f32[1] * 3.1416) / 180.0);
    v3 = vmul_n_f32(__PAIR64__(LODWORD(v2.__sinval), LODWORD(v2.__cosval)), v17);
    v4 = __sincosf_stret((a1[43].f32[0] * 3.1416) / 180.0);
    v5 = vmul_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), v17);
    objc_msgSend_quad(a1, v6, v7);
    v18 = v8;
    objc_msgSend_quad(a1, v9, v10);
    v11 = a1[45];
    *&v12 = vadd_f32(v3, v11);
    *&v13 = v12;
    *(&v13 + 1) = vextq_s8(v18, v18, 8uLL).u64[0];
    *&v14 = vadd_f32(v11, v5);
    *&v15 = v14;
    *(&v15 + 1) = *(&v13 + 1);
    *(&v14 + 1) = vextq_s8(v16, v16, 8uLL).u64[0];
    *(&v12 + 1) = *(&v14 + 1);
    src[0] = v13;
    src[1] = v15;
    src[2] = v14;
    src[3] = v12;
    objc_copyStruct(&a1[34], src, 64, 1, 0);
  }
}

uint64_t sub_2622F88B0(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_2621E1E3C(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_262234B80(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_262234B80(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_2622F89F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

void sub_2622F8A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 137) == 1)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1342);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "reshape", 7);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_2621DD5D0(&v66, a3, a3 + 8, 2uLL);
  memset(v65, 0, sizeof(v65));
  v15 = v66;
  v16 = v67;
  sub_262270440(v65, v66, v67, v67 - v66);
  v58 = a1;
  v59 = a2;
  __p = v15;
  if (v15 >= v16)
  {
    v19 = -1;
  }

  else
  {
    v17 = 0;
    v18 = MEMORY[0x277D82670];
    v19 = -1;
    v20 = MEMORY[0x277D82680];
    v21 = v15;
    do
    {
      v22 = *v21;
      if (*v21)
      {
        v23 = v22 <= -2;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        sub_2621D552C(v18, "runtime_err in ", 15);
        sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v24 = MEMORY[0x266727260](v18, 1348);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "reshape", 7);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(&v61, v20);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(&v61);
        std::ostream::put();
        std::ostream::flush();
        LODWORD(v61.__locale_) = 200000000;
        sub_2621D59F8("err", "shape can only be -1 or integer between 1 and ", &v61);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v26 = std::locale::use_facet(&v61, v20);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v61);
        v15 = __p;
        std::ostream::put();
        std::ostream::flush();
        v22 = *v21;
      }

      if (v22 != -1 || v19 == -1)
      {
        if (v22 == -1 && v19 == -1)
        {
          v19 = v17;
        }
      }

      else
      {
        sub_2621D552C(v18, "runtime_err in ", 15);
        sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v29 = MEMORY[0x266727260](v18, 1349);
        sub_2621D552C(v29, " ", 1);
        sub_2621D552C(v29, "reshape", 7);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v61, v20);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v61);
        std::ostream::put();
        std::ostream::flush();
        sub_262270668("err", "shape cannot be deduced");
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v31 = std::locale::use_facet(&v61, v20);
        (v31->__vftable[2].~facet_0)(v31, 10);
        std::locale::~locale(&v61);
        v15 = __p;
        std::ostream::put();
        std::ostream::flush();
      }

      ++v21;
      ++v17;
    }

    while (v21 < v16);
  }

  v32 = 1;
  if (v15 == v16)
  {
    v33 = v59;
  }

  else
  {
    v33 = v59;
    do
    {
      v34 = *v15++;
      v32 *= v34;
    }

    while (v15 != v16);
  }

  if (v32 >= 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = -v32;
  }

  v36 = *(v33 + 104);
  if (v36 < v35 || v36 % v35)
  {
    v37 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v38 = sub_2621D552C(v37, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v38, " ", 1);
    v39 = MEMORY[0x277D82670];
    v40 = MEMORY[0x266727260](MEMORY[0x277D82670], 1356);
    sub_2621D552C(v40, " ", 1);
    sub_2621D552C(v40, "reshape", 7);
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v41 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v41->__vftable[2].~facet_0)(v41, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
    sub_262270774("err", "length not match, cannot reshape");
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v42 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v19 != -1)
  {
    *&v65[0][8 * v19] = *(v33 + 104) / v35;
  }

  sub_2621D6CA4(__b, v65);
  *(v58 + 8) = 0u;
  *v58 = &unk_2874EEB10;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 0u;
  *(v58 + 56) = 0u;
  *(v58 + 72) = 0u;
  *(v58 + 88) = 0u;
  *(v58 + 120) = 0;
  *(v58 + 128) = 0;
  *(v58 + 136) = 257;
  if (*(v33 + 136) == 1)
  {
    v43 = *(v33 + 120);
    v44 = *(v33 + 128);
    if (!v44)
    {
      *(v58 + 120) = v43;
      *(v58 + 128) = 0;
      goto LABEL_49;
    }

    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    v45 = *(v58 + 128);
    *(v58 + 120) = v43;
    *(v58 + 128) = v44;
    if (!v45)
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_26226EC48(&v61, (v33 + 8));
    sub_26226F700(&v61, v33);
    v47 = v62;
    v46 = v63;
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = *(v58 + 128);
    *(v58 + 120) = v47;
    *(v58 + 128) = v46;
    if (v48)
    {
      sub_2621D1B78(v48);
    }

    v61.__locale_ = &unk_2874EE7A8;
    v45 = v63;
    if (!v63)
    {
      goto LABEL_49;
    }
  }

  sub_2621D1B78(v45);
LABEL_49:
  v49 = __b[1];
  *(v58 + 8) = __b[0];
  *(v58 + 24) = v49;
  *(v58 + 40) = __b[2];
  v50 = 1;
  *(v58 + 64) = 1;
  v51 = (v58 + 64);
  v53 = *(v58 + 8);
  v52 = *(v58 + 16);
  *(v58 + 56) = v52;
  *(v58 + 104) = v53 * v52;
  *(v58 + 112) = 0;
  *(v58 + 137) = 0;
  v54 = -2;
  while (1)
  {
    v55 = *(v51 - 6);
    if (v55 != 1)
    {
      break;
    }

LABEL_53:
    --v51;
    if (__CFADD__(v54++, 1))
    {
      v57 = 1;
      goto LABEL_57;
    }
  }

  if (*v51 == v50)
  {
    v50 *= v55;
    goto LABEL_53;
  }

  v57 = 0;
LABEL_57:
  *(v58 + 136) = v57;
  *(v58 + 144) = **(v58 + 120);
  if (v65[0])
  {
    operator delete(v65[0]);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_2622F9304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_2621D1B78(a29);
  }

  *a10 = v29;
  v32 = a10[16];
  if (v32)
  {
    sub_2621D1B78(v32);
  }

  v33 = *(v30 - 136);
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622F93C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 48) = 0u;
  v62 = (a1 + 48);
  *(a1 + 112) = 0;
  v61 = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  v60 = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_262206318(a1 + 216, a2);
  v7 = 0;
  v63 = (a1 + 96);
  v8 = 1;
  v9 = MEMORY[0x277D82670];
  v10 = MEMORY[0x277D82680];
  do
  {
    v11 = v8;
    v12 = *(a3 + 4 * v7);
    LODWORD(v64) = v12;
    if (v12 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    if (v13 >= 3)
    {
      sub_2621D552C(v9, "runtime_err in ", 15);
      sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v9, " ", 1);
      v14 = MEMORY[0x266727260](v9, 150);
      sub_2621D552C(v14, " ", 1);
      sub_2621D552C(v14, "init", 4);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v65, v10);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
      sub_262229DB0("err", "the absolute value of axis should be less than dim");
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v16 = std::locale::use_facet(&v65, v10);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v12 < 0)
    {
      v12 += 3;
      LODWORD(v64) = v12;
    }

    if (v12 >= 3)
    {
      sub_2621D552C(v9, "runtime_err in ", 15);
      sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v9, " ", 1);
      v17 = MEMORY[0x266727260](v9, 154);
      sub_2621D552C(v17, " ", 1);
      sub_2621D552C(v17, "init", 4);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v65, v10);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v64);
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v19 = std::locale::use_facet(&v65, v10);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
      if (v12 < 0)
      {
        sub_2621D552C(v9, "runtime_err in ", 15);
        sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
        sub_2621D552C(v9, " ", 1);
        v20 = MEMORY[0x266727260](v9, 155);
        sub_2621D552C(v20, " ", 1);
        sub_2621D552C(v20, "init", 4);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(&v65, v10);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(&v65);
        std::ostream::put();
        std::ostream::flush();
        sub_262201E08("err", &v64);
        std::ios_base::getloc((v9 + *(*v9 - 24)));
        v22 = std::locale::use_facet(&v65, v10);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v65);
        std::ostream::put();
        std::ostream::flush();
      }
    }

    v8 = 0;
    v63[v7] = v12;
    v7 = 1;
  }

  while ((v11 & 1) != 0);
  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  if (v23 == v24)
  {
    v25 = v62;
    v26 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v28 = v60;
    v27 = v61;
    v29 = sub_2621D552C(v26, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v29, " ", 1);
    v30 = MEMORY[0x277D82670];
    v31 = MEMORY[0x266727260](MEMORY[0x277D82670], 162);
    sub_2621D552C(v31, " ", 1);
    sub_2621D552C(v31, "init", 4);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    sub_2622FF040("err", "gather dim should not be same!");
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v33 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    v23 = *(a1 + 96);
    v24 = *(a1 + 104);
  }

  else
  {
    v27 = v61;
    v25 = v62;
    v28 = v60;
  }

  if (v23 > v24)
  {
    *(a1 + 96) = v24;
    *(a1 + 104) = v23;
  }

  sub_26222A054(v25, a4);
  sub_26222A054(v25, a5);
  sub_2621C9004(a1 + 72, (*(a1 + 48) + 56));
  v34 = *v25;
  if (*(*v25 + 8) != *(*v25 + 160))
  {
    v35 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v36 = sub_2621D552C(v35, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    v37 = sub_2621D552C(v36, " ", 1);
    v38 = MEMORY[0x266727260](v37, 179);
    sub_2621D552C(v38, " ", 1);
    sub_2621D552C(v38, "init", 4);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    v40 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
    v41 = sub_2621D552C(v40, " ", 1);
    v42 = sub_2621D552C(v41, "indices shape should be same", 28);
    std::ios_base::getloc((v42 + *(*v42 - 24)));
    v43 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    v44 = MEMORY[0x277D82670];
    std::ostream::flush();
    std::ios_base::getloc((v44 + *(*v44 - 24)));
    v45 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v45->__vftable[2].~facet_0)(v45, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    v34 = *v25;
  }

  sub_2621C9004(a1 + 72, (v34 + 208));
  v46 = *(a1 + 96);
  *(a1 + 136) = v46;
  v64 = 0;
  v65.__locale_ = 0;
  v47 = 0;
  if (v46)
  {
    v48 = a1;
    do
    {
      sub_2621C9004(v27, &v64);
      sub_2621C9004(v28, &v65);
      v49 = v48[28];
      v64 = ++v47;
      v65.__locale_ = v47;
      *v48++ = v49;
    }

    while (v47 < *(a1 + 136));
  }

  v50 = (v47 + 1);
  *(a1 + 8 * v47) = *(*(a1 + 48) + 8);
  v51 = *(a1 + 136);
  v64 = v51 + 1;
  v65.__locale_ = v50;
  if ((v51 + 1) <= 2)
  {
    do
    {
      v52 = v51 + 1;
      if (v51 + 1 != *v63 && v52 != *(a1 + 104))
      {
        sub_2621C9004(v28, &v65);
        sub_2621C9004(v27, &v64);
        *(a1 + 8 * v50) = *(a1 + 232 + 8 * v51);
        v50 = (v50 + 1);
        v65.__locale_ = v50;
      }

      v64 = v51 + 2;
      ++v51;
    }

    while (v52 != 2);
  }

  v53 = 0;
  v54 = a1 + 168;
  do
  {
    *(v54 + 8 * v53) = 1;
    if (v53 <= 1)
    {
      v55 = v53;
      v56 = 1;
      do
      {
        v56 *= *(a1 + 232 + 8 * v55);
        *(v54 + 8 * v53) = v56;
        ++v55;
      }

      while (v55 != 2);
    }

    ++v53;
  }

  while (v53 != 3);
  return a1;
}

void sub_2622F9E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::locale a18)
{
  std::locale::~locale(&a18);
  *(v18 + 216) = &unk_2874EEDA0;
  v21 = *(v18 + 344);
  if (v21)
  {
    sub_2621D1B78(v21);
  }

  sub_2622FAAB8(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_2622F9EC8(uint64_t a1, void *a2, int *a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v5 = a1;
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1125);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "at", 2);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    a1 = v5;
  }

  v15 = 0;
  v16 = MEMORY[0x277D82670];
  v27 = a1;
  v28 = 0;
  v17 = a1 + 8;
  v18 = *a3;
  v33[0] = *a2;
  v33[1] = v18;
  v19 = 1;
  v20 = MEMORY[0x277D82680];
  v31 = 0u;
  v32 = 0u;
  *&v30[0].__locale_ = 0u;
  do
  {
    v21 = v33[v15];
    if (v21 >= *(v17 + v15 * 8))
    {
      sub_2621D552C(v16, "runtime_err in ", 15);
      sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v16, " ", 1);
      v22 = MEMORY[0x266727260](v16, 1133);
      sub_2621D552C(v22, " ", 1);
      sub_2621D552C(v22, "at", 2);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v29, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v28, "=", &v33[v15], "should smaller then", (v17 + v15 * 8));
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v29, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
    }

    v28 = v19;
    v30[v15++].__locale_ = v21;
    ++v19;
  }

  while (v15 != 2);
  v25 = *MEMORY[0x277D85DE8];
  return v27[18] + 4 * v27[8] * v30[1].__locale_ + 4 * v27[7] * v30[0].__locale_;
}

uint64_t sub_2622FA30C(uint64_t a1, unint64_t *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v24[0] = v13;
  v22 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v22, "=", v24, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = *MEMORY[0x277D85DE8];
  return *(a1 + 144) + 8 * *(a1 + 56) * v13;
}

void sub_2622FA6E4(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EE7C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262204144();
}

void sub_2622FAA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622FAAB8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v6 = a1;
  sub_262229EBC(&v6);
  return a1;
}

void sub_2622FAB20(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v198 = *MEMORY[0x277D85DE8];
  v194 = 0uLL;
  v195 = 0;
  v4 = *a3;
  if ((v4 & 0x80000000) != 0)
  {
    __b[0].__locale_ = (v4 + 2);
  }

  else
  {
    __b[0].__locale_ = *a3;
  }

  sub_2621C9004(&v194, __b);
  v5 = v194;
  v6 = MEMORY[0x277D82670];
  if (*(&v194 + 1) != v194)
  {
    v7 = 0;
    v8 = (*(&v194 + 1) - v194) >> 3;
    v9 = MEMORY[0x277D82680];
    do
    {
      if (*(v5 + 8 * v7) >= 2uLL)
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v10 = MEMORY[0x266727260](v6, 28);
        sub_2621D552C(v10, " ", 1);
        sub_2621D552C(v10, "format_reduce_axes", 18);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(__b, v9);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v12 = std::locale::use_facet(__b, v9);
        (v12->__vftable[2].~facet_0)(v12, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v7;
    }

    while (v7 < v8);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v13 = v194;
  v175 = (*(&v194 + 1) - v194) >> 3;
  v172 = *(&v194 + 1) - v194;
  if (*(&v194 + 1) - v194 != 8)
  {
    v14 = 0;
    v15 = MEMORY[0x277D82680];
    do
    {
      if (*(v13 + 8 * v14) == *(v13 + 8 * v14 + 8))
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v16 = MEMORY[0x266727260](v6, 33);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "format_reduce_axes", 18);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(__b, v15);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v18 = std::locale::use_facet(__b, v15);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v14;
    }

    while (v14 < v175 - 1);
  }

  v19 = 0;
  v20 = a2 + 8;
  v193[0] = 0;
  v193[1] = 0;
  v21 = v175;
  if (v175 <= 1)
  {
    v21 = 1;
  }

  v193[2] = 0;
  v22 = v21 - 1;
  v23 = 1;
  do
  {
    v24 = v23;
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v19)
      {
LABEL_19:
        __b[0].__locale_ = 1;
        sub_2621C9004(v193, __b);
        goto LABEL_25;
      }

      v25 = 0;
      while (v22 != v25)
      {
        v26 = *(v13 + 8 + 8 * v25++);
        if (v26 == v19)
        {
          if (v25 < v175)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    sub_2621C9004(v193, (v20 + 8 * v19));
LABEL_25:
    v23 = 0;
    v19 = 1;
  }

  while ((v24 & 1) != 0);
  sub_2621D6CA4(__b, v193);
  v190 = 0u;
  v191 = 0u;
  v189[0] = __b[1];
  v189[1] = 1;
  sub_2622035C8(v176, __b);
  v27 = *(v13 + v172 - 8);
  v174 = v27;
  if (v27 == 1)
  {
    if (v175 != 1)
    {
      v28 = *(v13 - 16 + v172);
      if (*(v13 + 8 * (v175 - 1)) - v28 == 1)
      {
        v29 = (v13 + 8 * v175 - 24);
        v30 = v175 - 2;
        do
        {
          v27 = v28;
          if (!v30)
          {
            break;
          }

          v28 = *v29;
          v31 = v29[1];
          --v29;
          --v30;
        }

        while (v31 - v28 == 1);
        goto LABEL_32;
      }
    }

    v186 = 0;
    v187 = 0;
    v188 = 0;
    v183 = 0;
    v184 = 0;
    v27 = 1;
    v185 = 0;
  }

  else
  {
LABEL_32:
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    if (!v27)
    {
      v32 = 0;
      v33 = 1;
      v34 = 1;
      v173 = 1;
LABEL_47:
      v40 = 8 * v33;
      v41 = 1;
      do
      {
        v41 *= *(v20 + v40);
        v40 += 8;
      }

      while (v40 != 16);
      goto LABEL_51;
    }
  }

  v35 = 0;
  v34 = 1;
  while (2)
  {
    v36 = (v20 + 8 * v35);
    v37 = *v36;
    sub_2621C9004(&v186, v36);
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v35)
      {
LABEL_38:
        *&v197[0] = 0;
        sub_2621C9004(&v183, v197);
        goto LABEL_44;
      }

      v38 = 0;
      while (v22 != v38)
      {
        v39 = *(v13 + 8 + 8 * v38++);
        if (v39 == v35)
        {
          if (v38 < v175)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v183, &v189[v35]);
LABEL_44:
    v34 *= v37;
    if (++v35 != v27)
    {
      continue;
    }

    break;
  }

  v173 = 0;
  if ((v27 + 1) <= 1)
  {
    v33 = 0;
    v32 = -1;
    goto LABEL_47;
  }

  v32 = v27;
  v41 = 1;
LABEL_51:
  v42 = *(v20 + 8 * v32);
  if (v174 == 1)
  {
    v43 = *(v20 + 8 * v32);
  }

  else
  {
    v43 = 1;
  }

  v169 = v43;
  v44 = v178;
  if (v174 == 1)
  {
    v45 = v34;
  }

  else
  {
    v45 = v42;
  }

  memset(&v197[1], 0, 32);
  if (v174 == 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v34;
  }

  v197[0] = 0uLL;
  memset(v196, 0, sizeof(v196));
  v47 = v173;
  if (v173)
  {
    __p = 0;
    sub_2621C9004(&v186, &__p);
    v48 = 0;
    __p = 0;
    v181 = 0;
    v182 = 0;
    goto LABEL_74;
  }

  v168 = v46;
  v49 = 0;
  __p = 0;
  v181 = 0;
  v182 = 0;
  v179 = 0;
  if (v32 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v32;
  }

  while (2)
  {
    if (*(&v13 + 1) == v13)
    {
LABEL_71:
      sub_2621C9004(&__p, &v179);
    }

    else if (*v13 != v49)
    {
      v51 = 0;
      while (v22 != v51)
      {
        v52 = *(v13 + 8 + 8 * v51++);
        if (v52 == v49)
        {
          if (v51 < v175)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }
      }

      goto LABEL_71;
    }

LABEL_72:
    v179 = ++v49;
    if (v49 != v50)
    {
      continue;
    }

    break;
  }

  v46 = v168;
  v48 = v32 - 1;
  v47 = v173;
LABEL_74:
  v53 = v41 * v169;
  v54 = *(a2 + 136);
  if (v174 == 1)
  {
    if (*(a2 + 136))
    {
      if (v45)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = *(a2 + 144);
        v59 = v186;
        v60 = (v58 + 2);
        if (v53 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = v41 * v169;
        }

        v62 = v183;
        v63 = 2 * v61;
        v64 = 1;
        v65 = v44;
        while (1)
        {
          v66 = *(v58 + 2 * v56);
          if (v53 < 2)
          {
            break;
          }

          v67 = v53 - 1;
          v68 = v60;
          do
          {
            v69 = *v68++;
            v66 = v66 + v69;
            --v67;
          }

          while (v67);
          v56 += v53;
          if (!v64)
          {
            goto LABEL_87;
          }

LABEL_88:
          *v65 = v66;
          v70 = v48;
          do
          {
            v71 = *(v197 + v70) + 1;
            *(v197 + v70) = v71;
            if (v71 != v59[v70])
            {
              break;
            }

            *(v197 + v70) = 0;
            v72 = v70-- <= 0;
          }

          while (!v72);
          if (v47)
          {
            v64 = 0;
            v73 = 0;
          }

          else
          {
            v73 = 0;
            v74 = v197;
            v75 = v62;
            v76 = v32;
            do
            {
              v78 = *v74++;
              v77 = v78;
              v79 = *v75++;
              v73 += v79 * v77;
              --v76;
            }

            while (v76);
            v64 = v73 > v57;
            if (v73 > v57)
            {
              v57 = v73;
            }
          }

          v65 = &v44[v73];
          ++v55;
          v60 = (v60 + v63);
          if (v55 == v45)
          {
            goto LABEL_190;
          }
        }

        ++v56;
        if (v64)
        {
          goto LABEL_88;
        }

LABEL_87:
        v66 = v66 + *v65;
        goto LABEL_88;
      }
    }

    else if (v45)
    {
      v106 = 0;
      v107 = 0;
      v108 = v186;
      v109 = v183;
      v110 = *(a2 + 56);
      v111 = *(a2 + 64);
      v112 = 1;
      v113 = v44;
      v114 = *(a2 + 144);
      do
      {
        v115 = *(v114 + 2 * v111 * *(&v196[0] + 1) + 2 * v110 * *&v196[0]);
        v116 = (a2 + 16);
        for (i = 1; i != -1; --i)
        {
          v118 = *(v196 + i) + 1;
          *(v196 + i) = v118;
          v119 = *v116--;
          if (v118 != v119)
          {
            break;
          }

          *(v196 + i) = 0;
        }

        if (v53 >= 2)
        {
          for (j = 1; j != v53; ++j)
          {
            v121 = 0;
            v115 = v115 + *(v114 + 2 * v111 * *(&v196[0] + 1) + 2 * v110 * *&v196[0]);
            do
            {
              v122 = *(v196 + v121 + 8) + 1;
              *(v196 + v121 + 8) = v122;
              if (v122 != *(a2 + 16 + v121))
              {
                break;
              }

              *(v196 + v121 + 8) = 0;
              v121 -= 8;
            }

            while (v121 != -16);
          }
        }

        if (!v112)
        {
          v115 = v115 + *v113;
        }

        *v113 = v115;
        v123 = v48;
        do
        {
          v124 = *(v197 + v123) + 1;
          *(v197 + v123) = v124;
          if (v124 != v108[v123])
          {
            break;
          }

          *(v197 + v123) = 0;
          v72 = v123-- <= 0;
        }

        while (!v72);
        if (v47)
        {
          v112 = 0;
          v125 = 0;
        }

        else
        {
          v125 = 0;
          v126 = v197;
          v127 = v109;
          v128 = v32;
          do
          {
            v130 = *v126++;
            v129 = v130;
            v131 = *v127++;
            v125 += v131 * v129;
            --v128;
          }

          while (v128);
          v112 = v125 > v107;
          if (v125 > v107)
          {
            v107 = v125;
          }
        }

        v113 = &v44[v125];
        ++v106;
      }

      while (v106 != v45);
    }
  }

  else if (*(a2 + 136))
  {
    if (v46)
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = v186;
      v84 = 1;
      v85 = v183;
      v86 = v44;
      do
      {
        if (v84)
        {
          if (v53)
          {
            v87 = *(a2 + 144);
            v88 = v86;
            v89 = v41 * v169;
            do
            {
              *v88++ = *(v87 + 2 * v81++);
              --v89;
            }

            while (v89);
          }
        }

        else if (v53)
        {
          v90 = *(a2 + 144);
          v91 = v86;
          v92 = v41 * v169;
          do
          {
            *v91 = *(v90 + 2 * v81) + *v91;
            ++v91;
            ++v81;
            --v92;
          }

          while (v92);
        }

        if (v45 >= 2)
        {
          for (k = 1; k != v45; ++k)
          {
            if (v53)
            {
              v94 = *(a2 + 144);
              v95 = v86;
              v96 = v41 * v169;
              do
              {
                *v95 = *(v94 + 2 * v81) + *v95;
                ++v95;
                ++v81;
                --v96;
              }

              while (v96);
            }
          }
        }

        v97 = v48;
        do
        {
          v98 = *(v197 + v97) + 1;
          *(v197 + v97) = v98;
          if (v98 != v83[v97])
          {
            break;
          }

          *(v197 + v97) = 0;
          v72 = v97-- <= 0;
        }

        while (!v72);
        if (v47)
        {
          v84 = 0;
          v99 = 0;
        }

        else
        {
          v99 = 0;
          v100 = v197;
          v101 = v85;
          v102 = v32;
          do
          {
            v104 = *v100++;
            v103 = v104;
            v105 = *v101++;
            v99 += v105 * v103;
            --v102;
          }

          while (v102);
          v84 = v99 > v82;
          if (v99 > v82)
          {
            v82 = v99;
          }
        }

        v86 = &v44[v99];
        ++v80;
      }

      while (v80 != v46);
    }
  }

  else if (v46)
  {
    v132 = 0;
    v133 = 0;
    v134 = v186;
    v135 = a2 + 16;
    v136 = v183;
    v137 = 1;
    v138 = v44;
    do
    {
      if (v137)
      {
        if (v53)
        {
          v139 = 0;
          v140 = *(a2 + 144);
          v142 = *(a2 + 56);
          v141 = *(a2 + 64);
          do
          {
            v143 = 0;
            v138[v139] = *(v140 + 2 * v141 * *(&v196[0] + 1) + 2 * v142 * *&v196[0]);
            do
            {
              v144 = *(v196 + v143 + 8) + 1;
              *(v196 + v143 + 8) = v144;
              if (v144 != *(v135 + v143))
              {
                break;
              }

              *(v196 + v143 + 8) = 0;
              v143 -= 8;
            }

            while (v143 != -16);
            ++v139;
          }

          while (v139 != v53);
        }
      }

      else if (v53)
      {
        v145 = 0;
        v146 = *(a2 + 144);
        v148 = *(a2 + 56);
        v147 = *(a2 + 64);
        do
        {
          v149 = 0;
          v138[v145] = *(v146 + 2 * v147 * *(&v196[0] + 1) + 2 * v148 * *&v196[0]) + v138[v145];
          do
          {
            v150 = *(v196 + v149 + 8) + 1;
            *(v196 + v149 + 8) = v150;
            if (v150 != *(v135 + v149))
            {
              break;
            }

            *(v196 + v149 + 8) = 0;
            v149 -= 8;
          }

          while (v149 != -16);
          ++v145;
        }

        while (v145 != v53);
      }

      v151 = v48;
      if (v45 >= 2)
      {
        for (m = 1; m != v45; ++m)
        {
          if (v53)
          {
            v153 = 0;
            v154 = *(a2 + 144);
            v156 = *(a2 + 56);
            v155 = *(a2 + 64);
            do
            {
              v157 = 0;
              v138[v153] = *(v154 + 2 * v155 * *(&v196[0] + 1) + 2 * v156 * *&v196[0]) + v138[v153];
              do
              {
                v158 = *(v196 + v157 + 8) + 1;
                *(v196 + v157 + 8) = v158;
                if (v158 != *(v135 + v157))
                {
                  break;
                }

                *(v196 + v157 + 8) = 0;
                v157 -= 8;
              }

              while (v157 != -16);
              ++v153;
            }

            while (v153 != v53);
          }
        }

        v151 = v48;
      }

      do
      {
        v159 = *(v197 + v151) + 1;
        *(v197 + v151) = v159;
        if (v159 != v134[v151])
        {
          break;
        }

        *(v197 + v151) = 0;
        v72 = v151-- <= 0;
      }

      while (!v72);
      if (v47)
      {
        v137 = 0;
        v160 = 0;
      }

      else
      {
        v160 = 0;
        v161 = v197;
        v162 = v136;
        v163 = v32;
        do
        {
          v165 = *v161++;
          v164 = v165;
          v166 = *v162++;
          v160 += v166 * v164;
          --v163;
        }

        while (v163);
        v137 = v160 > v133;
        if (v160 > v133)
        {
          v133 = v160;
        }
      }

      v138 = &v44[v160];
      ++v132;
    }

    while (v132 != v46);
  }

LABEL_190:
  if (__p)
  {
    operator delete(__p);
  }

  if (v183)
  {
    operator delete(v183);
  }

  if (v186)
  {
    operator delete(v186);
  }

  if (v193[0])
  {
    operator delete(v193[0]);
  }

  if (v13)
  {
    operator delete(v13);
  }

  sub_262201E68(a1, v176, *a3);
  v176[0] = &unk_2874EE7C8;
  if (v177)
  {
    sub_2621D1B78(v177);
  }

  v167 = *MEMORY[0x277D85DE8];
}

void sub_2622FB8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::locale a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a33)
  {
    sub_2621D1B78(a33);
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (v58)
  {
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622FB9B8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE788;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_2622FBA90(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v74 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *a2;
  v9 = a2[1];
  sub_26222AF58(v82, (a3 + 8));
  sub_262227818(a1, v82);
  if (*(a1 + 137) == 1)
  {
    v11 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v12 = sub_2621D552C(v11, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v12, " ", 1);
    v13 = MEMORY[0x277D82670];
    v14 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v14, " ", 1);
    sub_2621D552C(v14, "operator=", 9);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v83, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v83);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v16 = std::locale::use_facet(&v83, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v83);
    std::ostream::put();
    std::ostream::flush();
  }

  v17 = vsub_f32(v8, v9);
  *v10.i32 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
  v18 = *(a1 + 104);
  v19 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v18)
    {
      v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = vdupq_n_s64(v18 - 1);
      v22 = xmmword_2623A7950;
      v23 = xmmword_2623A7960;
      v24 = xmmword_2623A7970;
      v25 = xmmword_2623A7980;
      v26 = xmmword_2623A77F0;
      v27 = xmmword_2623A7800;
      v28 = xmmword_2623A7630;
      v29 = xmmword_2623A7620;
      v30 = (v19 + 7);
      v31 = vdupq_n_s64(0x10uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v21, v29));
        if (vuzp1_s8(vuzp1_s16(v32, *v21.i8), *v21.i8).u8[0])
        {
          *(v30 - 7) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v32, *&v21), *&v21).i8[1])
        {
          *(v30 - 6) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v28))), *&v21).i8[2])
        {
          *(v30 - 5) = 0;
          *(v30 - 4) = 0;
        }

        v33 = vmovn_s64(vcgeq_u64(v21, v27));
        if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i32[1])
        {
          *(v30 - 3) = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i8[5])
        {
          *(v30 - 2) = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v26)))).i8[6])
        {
          *(v30 - 1) = 0;
          *v30 = 0;
        }

        v34 = vmovn_s64(vcgeq_u64(v21, v25));
        if (vuzp1_s8(vuzp1_s16(v34, *v21.i8), *v21.i8).u8[0])
        {
          v30[1] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v34, *&v21), *&v21).i8[1])
        {
          v30[2] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v24))), *&v21).i8[2])
        {
          v30[3] = 0;
          v30[4] = 0;
        }

        v35 = vmovn_s64(vcgeq_u64(v21, v23));
        if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i32[1])
        {
          v30[5] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i8[5])
        {
          v30[6] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22)))).i8[6])
        {
          v30[7] = 0;
          v30[8] = 0;
        }

        v27 = vaddq_s64(v27, v31);
        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        v26 = vaddq_s64(v26, v31);
        v25 = vaddq_s64(v25, v31);
        v24 = vaddq_s64(v24, v31);
        v23 = vaddq_s64(v23, v31);
        v30 += 16;
        v22 = vaddq_s64(v22, v31);
        v20 -= 16;
      }

      while (v20);
    }
  }

  else if (v18)
  {
    v36 = 0;
    v37 = *(a1 + 56);
    v38 = *(a1 + 8);
    do
    {
      *(v19 + v37 * v36) = 0;
      if (v36 + 1 == v38)
      {
        v36 = 0;
      }

      else
      {
        ++v36;
      }

      --v18;
    }

    while (v18);
  }

  if (*v10.i32 > 0.0)
  {
    v75 = v10;
    v40 = *a2;
    v39 = a2[1];
    *&v82[0] = 0x2FFFFFFFFLL;
    sub_2622F8A18(&v79, a4, v82);
    v72 = (*v75.i32 + 10.0);
    if (v72 >= 11)
    {
      v41 = vdup_lane_s32(v75, 0);
      v42 = vdiv_f32(vsub_f32(v39, v40), v41);
      v43 = v72 <= 16 ? 16 : (*v75.i32 + 10.0);
      v44 = v43 - 10;
      v45 = v44 == 6 ? 6 : 7;
      v46 = v44 == 6;
      v47 = (v44 - v45) / 6u;
      v48 = v46 ? v47 : v47 + 1;
      v49 = v48 & 0x7FFFFFFE;
      v41.i32[0] = v48;
      v50 = vld1q_dup_f64(v80);
      v51 = (v48 & 0x7FFFFFFE) + 2;
      v52 = 0uLL;
      do
      {
        v53 = v52;
        v52 = vaddq_s64(v50, v52);
        v51 -= 2;
      }

      while (v51);
      v54 = vcgt_u32(vorr_s8(vdup_n_s32(v49), 0x100000000), vdup_lane_s32(v41, 0));
      v55.i64[0] = v54.i32[0];
      v55.i64[1] = v54.i32[1];
      v56 = vaddvq_s64(vbslq_s8(v55, v53, v52));
      v57 = v56;
      if (v56)
      {
        sub_2622FD998(v78, v56);
        v71 = a3;
        sub_2622FD998(v77, v57);
        v58 = 0;
        v59 = 10;
        v60 = v80[0];
        while (1)
        {
          v61 = *a2;
          *&v82[0] = 0;
          if (v60 != 0.0)
          {
            v62 = 0;
            v63 = vmla_n_f32(v61, v42, v59);
            v64 = v58;
            do
            {
              LODWORD(v83.__locale_) = 0;
              v65 = *sub_2622F9EC8(&v79, v82, &v83);
              LODWORD(v83.__locale_) = 1;
              v66 = sub_2622F9EC8(&v79, v82, &v83);
              if (((v63.f32[1] + *v66) & ~((v63.f32[1] + *v66) >> 31)) >= v7)
              {
                v67 = v7 - 1;
              }

              else
              {
                v67 = (v63.f32[1] + *v66) & ~((v63.f32[1] + *v66) >> 31);
              }

              v83.__locale_ = v64;
              v68 = sub_2622FA30C(v78, &v83);
              v69 = (v63.f32[0] + v65) & ~((v63.f32[0] + v65) >> 31);
              if (v69 >= v74)
              {
                v69 = v74 - 1;
              }

              *v68 = v69;
              v83.__locale_ = v64;
              *sub_2622FA30C(v77, &v83) = v67;
              *&v82[0] = ++v62;
              v60 = v80[0];
              v64 = (v64 + 1);
            }

            while (v62 < *&v80[0]);
          }

          v58 = (v58 + *&v60);
          v59 += 6;
          if (v59 >= v72)
          {
            v83.__locale_ = 0x200000001;
            sub_2622F93C4(v82, v71, &v83, v78, v77);
            sub_2622FA6E4(v76, v82);
          }
        }
      }
    }

    v79 = &unk_2874EEB10;
    if (v81)
    {
      sub_2621D1B78(v81);
    }
  }

  v70 = *MEMORY[0x277D85DE8];
}

void sub_2622FCCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55)
{
  std::locale::~locale(&STACK[0x4F0]);
  sub_2621C57C8(&STACK[0x520]);
  STACK[0x3B0] = &unk_2874EE788;
  if (STACK[0x430])
  {
    sub_2621D1B78(STACK[0x430]);
  }

  if (a36)
  {
    sub_2621D1B78(a36);
  }

  if (a55)
  {
    sub_2621D1B78(a55);
  }

  if (STACK[0x208])
  {
    sub_2621D1B78(STACK[0x208]);
  }

  STACK[0x220] = &unk_2874EE7E8;
  if (STACK[0x2A0])
  {
    sub_2621D1B78(STACK[0x2A0]);
  }

  STACK[0x2B8] = &unk_2874EEB10;
  if (STACK[0x338])
  {
    sub_2621D1B78(STACK[0x338]);
  }

  *a13 = &unk_2874EE808;
  v56 = a13[16];
  if (v56)
  {
    sub_2621D1B78(v56);
  }

  _Unwind_Resume(a1);
}

void sub_2622FCEC8(uint64_t a1, _OWORD *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE910;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_2621D7174();
}

void sub_2622FD8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622FD940(uint64_t a1)
{
  *(a1 + 216) = &unk_2874EEDA0;
  v2 = *(a1 + 344);
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_2622FAAB8(a1 + 48);
  return a1;
}

uint64_t sub_2622FD998(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = a2;
  result = sub_262228A5C(a1, &v19);
  if (*(result + 137) == 1)
  {
    v4 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v5 = sub_2621D552C(v4, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v5, " ", 1);
    v6 = MEMORY[0x277D82670];
    v7 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v7, " ", 1);
    sub_2621D552C(v7, "operator=", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v9 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v12 = (v10 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_2623A7620;
      v15 = (v11 + 8);
      v16 = vdupq_n_s64(2uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v14));
        if (v17.i8[0])
        {
          *(v15 - 1) = 0;
        }

        if (v17.i8[4])
        {
          *v15 = 0;
        }

        v14 = vaddq_s64(v14, v16);
        v15 += 2;
        v12 -= 2;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    v18 = 0;
    do
    {
      *(v11 + 8 * *(a1 + 56) * v18) = 0;
      if (v18 + 1 == *(a1 + 8))
      {
        v18 = 0;
      }

      else
      {
        ++v18;
      }

      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_2622FDC04(_Unwind_Exception *a1)
{
  std::locale::~locale((v2 - 40));
  *v1 = &unk_2874EE7E8;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622FDC4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v147 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  v6 = *(a2 + 232);
  if (v4 == *a2)
  {
    v7 = *(result + 104);
    v8 = *(result + 144);
    v9 = *(result + 136);
    if (*(a2 + 232))
    {
      if (*(result + 136))
      {
        if (v7)
        {
          v10 = *(a2 + 240);
          v11 = *(a2 + 296);
          do
          {
            v12 = *v10++;
            _H3 = v12;
            __asm { FCVT            S3, H3 }

            if (v11 >= _S3)
            {
              v19 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v19) = COERCE_UNSIGNED_INT(1.0);
            }

            *v8++ = v19;
            --v7;
          }

          while (v7);
        }
      }

      else if (v7)
      {
        v76 = 0;
        v77 = *(result + 56);
        v78 = *(a2 + 240);
        v79 = *(a2 + 296);
        do
        {
          v80 = *v78++;
          _H3 = v80;
          __asm { FCVT            S3, H3 }

          if (v79 >= _S3)
          {
            v83 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v83) = COERCE_UNSIGNED_INT(1.0);
          }

          v8[v77 * v76] = v83;
          if (v76 + 1 == v4)
          {
            v76 = 0;
          }

          else
          {
            ++v76;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (*(result + 136))
    {
      if (v7)
      {
        v44 = 0;
        v45 = *(a2 + 240);
        v46 = *(a2 + 296);
        do
        {
          _H3 = *(v45 + 2 * *(a2 + 152) * v44);
          __asm { FCVT            S3, H3 }

          if (v46 >= _S3)
          {
            v49 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v49) = COERCE_UNSIGNED_INT(1.0);
          }

          *v8++ = v49;
          if (v44 + 1 == v4)
          {
            v44 = 0;
          }

          else
          {
            ++v44;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (v7)
    {
      v84 = 0;
      v85 = *(result + 56);
      v86 = *(a2 + 240);
      v87 = *(a2 + 296);
      do
      {
        _H3 = *(v86 + 2 * *(a2 + 152) * v84);
        __asm { FCVT            S3, H3 }

        if (v87 >= _S3)
        {
          v90 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v90) = COERCE_UNSIGNED_INT(1.0);
        }

        v8[v85 * v84] = v90;
        if (v84 + 1 == v4)
        {
          v84 = 0;
        }

        else
        {
          ++v84;
        }

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      v134 = 0uLL;
      v135 = 0uLL;
      v132 = 0uLL;
      v133 = 0uLL;
      v130 = 0uLL;
      v131 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      sub_262205FA8(&v129, v5, a2, &v126);
      v20 = v126;
      if (v126 != *v5)
      {
        v21 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v22 = sub_2621D552C(v21, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v22, " ", 1);
        v23 = MEMORY[0x277D82670];
        v24 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v26 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      *&v144[0].__locale_ = 0u;
      v27 = *(v3 + 104);
      v28 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v27)
        {
          v29 = 0;
          v30 = 0;
          v32 = *(&v130 + 1);
          v31 = v131;
          v33 = (v131 - *(&v130 + 1)) >> 3;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = v141;
          v35 = *(a2 + 240);
          v36 = *(a2 + 296);
          do
          {
            v144[0].__locale_ = v29;
            locale = v29;
            if (v31 != v32)
            {
              v38 = v32;
              v39 = v33;
              do
              {
                v40 = *v38++;
                v144[v40].__locale_ = 0;
                --v39;
              }

              while (v39);
              locale = v144[0].__locale_;
            }

            _H3 = *(v35 + 2 * locale * v34);
            __asm { FCVT            S3, H3 }

            if (v36 >= _S3)
            {
              v43 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v43) = COERCE_UNSIGNED_INT(1.0);
            }

            *(v28 + 2 * v30) = v43;
            if ((v29 + 1) == v20)
            {
              v29 = 0;
            }

            else
            {
              v29 = (v29 + 1);
            }

            ++v30;
          }

          while (v30 != v27);
        }
      }

      else if (v27)
      {
        v91 = 0;
        v92 = 0;
        v94 = *(&v130 + 1);
        v93 = v131;
        v95 = (v131 - *(&v130 + 1)) >> 3;
        if (v95 <= 1)
        {
          v95 = 1;
        }

        v96 = v141;
        v97 = *(v3 + 56);
        v98 = *(a2 + 240);
        v99 = *(a2 + 296);
        do
        {
          v144[0].__locale_ = v91;
          v100 = v91;
          if (v93 != v94)
          {
            v101 = v94;
            v102 = v95;
            do
            {
              v103 = *v101++;
              v144[v103].__locale_ = 0;
              --v102;
            }

            while (v102);
            v100 = v144[0].__locale_;
          }

          _H3 = *(v98 + 2 * v100 * v96);
          __asm { FCVT            S3, H3 }

          if (v99 >= _S3)
          {
            v106 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v106) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v28 + 2 * v91 * v97) = v106;
          if ((v91 + 1) == v20)
          {
            v91 = 0;
          }

          else
          {
            v91 = (v91 + 1);
          }

          ++v92;
        }

        while (v92 != v27);
      }
    }

    else
    {
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v138 = 0uLL;
      v139 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      v134 = 0uLL;
      v135 = 0uLL;
      v132 = 0uLL;
      v133 = 0uLL;
      v130 = 0uLL;
      v131 = 0uLL;
      v128 = 0uLL;
      v129 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      sub_262205FA8(&v129, v5, a2, &v126);
      v50 = v126;
      if (v126 != *v5)
      {
        v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v52, " ", 1);
        v53 = MEMORY[0x277D82670];
        v54 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v54, " ", 1);
        sub_2621D552C(v54, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v54 + *(*v54 - 24)));
        v55 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v55->__vftable[2].~facet_0)(v55, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v56 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v56->__vftable[2].~facet_0)(v56, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      *&v144[0].__locale_ = 0u;
      v57 = *(v3 + 104);
      v58 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v57)
        {
          v59 = 0;
          v60 = 0;
          v62 = *(&v130 + 1);
          v61 = v131;
          v63 = (v131 - *(&v130 + 1)) >> 3;
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v141;
          v65 = *(a2 + 232);
          v66 = *(a2 + 240);
          v67 = *(a2 + 296);
          do
          {
            v144[0].__locale_ = v59;
            v68 = v59;
            if (v61 != v62)
            {
              v69 = v62;
              v70 = v63;
              do
              {
                v71 = *v69++;
                v144[v71].__locale_ = 0;
                --v70;
              }

              while (v70);
              v68 = v144[0].__locale_;
            }

            v72 = *(a2 + 152);
            if (v65)
            {
              v72 = v64;
            }

            _H3 = *(v66 + 2 * v72 * v68);
            __asm { FCVT            S3, H3 }

            if (v67 >= _S3)
            {
              v75 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v75) = COERCE_UNSIGNED_INT(1.0);
            }

            *(v58 + 2 * v60) = v75;
            if ((v59 + 1) == v50)
            {
              v59 = 0;
            }

            else
            {
              v59 = (v59 + 1);
            }

            ++v60;
          }

          while (v60 != v57);
        }
      }

      else if (v57)
      {
        v107 = 0;
        v108 = 0;
        v110 = *(&v130 + 1);
        v109 = v131;
        v111 = (v131 - *(&v130 + 1)) >> 3;
        if (v111 <= 1)
        {
          v111 = 1;
        }

        v112 = v141;
        v113 = *(v3 + 56);
        v114 = *(a2 + 232);
        v115 = *(a2 + 240);
        v116 = *(a2 + 296);
        do
        {
          v144[0].__locale_ = v107;
          v117 = v107;
          if (v109 != v110)
          {
            v118 = v110;
            v119 = v111;
            do
            {
              v120 = *v118++;
              v144[v120].__locale_ = 0;
              --v119;
            }

            while (v119);
            v117 = v144[0].__locale_;
          }

          v121 = *(a2 + 152);
          if (v114)
          {
            v121 = v112;
          }

          _H3 = *(v115 + 2 * v121 * v117);
          __asm { FCVT            S3, H3 }

          if (v116 >= _S3)
          {
            v124 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v124) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v58 + 2 * v107 * v113) = v124;
          if ((v107 + 1) == v50)
          {
            v107 = 0;
          }

          else
          {
            v107 = (v107 + 1);
          }

          ++v108;
        }

        while (v108 != v57);
      }
    }

    result = sub_2621C57C8(&v129);
  }

  v125 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622FE470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::locale::~locale((v7 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2622FE4A4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v139 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 352);
  if (v7 == v8)
  {
    if (*(a2 + 352))
    {
      v125 = 0uLL;
      v126 = 0uLL;
      v124 = 0uLL;
      v10 = *(a1 + 104);
      v11 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v12 = 0;
          v13 = a1 + 16;
          do
          {
            v14 = sub_2622FEFA4(a2, &v124);
            v15 = 0;
            *(v11 + 2 * v12) = v14;
            do
            {
              v16 = *(&v124 + v15 + 8) + 1;
              *(&v124 + v15 + 8) = v16;
              if (v16 != *(v13 + v15))
              {
                break;
              }

              *(&v124 + v15 + 8) = 0;
              v15 -= 8;
            }

            while (v15 != -16);
            ++v12;
          }

          while (v12 != v10);
        }
      }

      else if (v10)
      {
        v68 = 0;
        v69 = *(a1 + 56);
        v70 = *(a1 + 64);
        v71 = a1 + 16;
        do
        {
          v72 = v69 * v124;
          v73 = v11 + 2 * v70 * *(&v124 + 1);
          v74 = sub_2622FEFA4(a2, &v124);
          v75 = 0;
          *(v73 + 2 * v72) = v74;
          do
          {
            v76 = *(&v124 + v75 + 8) + 1;
            *(&v124 + v75 + 8) = v76;
            if (v76 != *(v71 + v75))
            {
              break;
            }

            *(&v124 + v75 + 8) = 0;
            v75 -= 8;
          }

          while (v75 != -16);
          ++v68;
        }

        while (v68 != v10);
      }
    }

    else
    {
      v125 = 0uLL;
      v126 = 0uLL;
      v124 = 0uLL;
      v39 = *(a1 + 104);
      v40 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v39)
        {
          v41 = 0;
          v42 = a1 + 16;
          do
          {
            v43 = sub_2622FEE54(a2, &v124);
            v44 = 0;
            *(v40 + 2 * v41) = v43;
            do
            {
              v45 = *(&v124 + v44 + 8) + 1;
              *(&v124 + v44 + 8) = v45;
              if (v45 != *(v42 + v44))
              {
                break;
              }

              *(&v124 + v44 + 8) = 0;
              v44 -= 8;
            }

            while (v44 != -16);
            ++v41;
          }

          while (v41 != v39);
        }
      }

      else if (v39)
      {
        v77 = 0;
        v78 = *(a1 + 56);
        v79 = *(a1 + 64);
        v80 = a1 + 16;
        do
        {
          v81 = v78 * v124;
          v82 = v40 + 2 * v79 * *(&v124 + 1);
          v83 = sub_2622FEE54(a2, &v124);
          v84 = 0;
          *(v82 + 2 * v81) = v83;
          do
          {
            v85 = *(&v124 + v84 + 8) + 1;
            *(&v124 + v84 + 8) = v85;
            if (v85 != *(v80 + v84))
            {
              break;
            }

            *(&v124 + v84 + 8) = 0;
            v84 -= 8;
          }

          while (v84 != -16);
          ++v77;
        }

        while (v77 != v39);
      }
    }
  }

  else
  {
    if (*(a2 + 352))
    {
      v137 = 0uLL;
      v138 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      v133 = 0uLL;
      v134 = 0uLL;
      v131 = 0uLL;
      v132 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v124 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v115 = 0uLL;
      sub_2621D96E4(&v124, v5, a2, &v115);
      v17 = 0;
      v18 = &v115;
      v19 = 1;
      do
      {
        v20 = *v18;
        v21 = *(v5 + v17);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v18 = &v115 + 1;
        v17 = 1;
      }

      while (v20 == v21);
      if (v20 != v21)
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      *&v121[0].__locale_ = 0u;
      v118 = 0u;
      v119 = 0u;
      v28 = *(a1 + 104);
      v29 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v125 + 1);
          v31 = v126;
          if (((v126 - *(&v125 + 1)) >> 3) <= 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = (v126 - *(&v125 + 1)) >> 3;
          }

          do
          {
            v118 = *&v121[0].__locale_;
            if (v31 != v32)
            {
              v34 = v32;
              v35 = v33;
              do
              {
                v36 = *v34++;
                *(&v118 + v36) = 0;
                --v35;
              }

              while (v35);
            }

            *(v29 + 2 * v30) = sub_2622FEFA4(a2, &v118);
            for (i = 1; i != -1; --i)
            {
              v38 = (v121[i].__locale_ + 1);
              v121[i].__locale_ = v38;
              if (v38 != *(&v115 + i * 8))
              {
                break;
              }

              v121[i].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v86 = 0;
        v87 = *(&v125 + 1);
        v113 = v126;
        if (((v126 - *(&v125 + 1)) >> 3) <= 1)
        {
          v88 = 1;
        }

        else
        {
          v88 = (v126 - *(&v125 + 1)) >> 3;
        }

        v111 = *(a1 + 56);
        v107 = v88;
        v109 = *(a1 + 64);
        do
        {
          locale = v121[0].__locale_;
          v89 = v121[1].__locale_;
          v118 = *&v121[0].__locale_;
          if (v113 != v87)
          {
            v91 = v87;
            v92 = v107;
            do
            {
              v93 = *v91++;
              *(&v118 + v93) = 0;
              --v92;
            }

            while (v92);
          }

          *(v29 + 2 * v109 * v89 + 2 * v111 * locale) = sub_2622FEFA4(a2, &v118);
          for (j = 1; j != -1; --j)
          {
            v95 = (v121[j].__locale_ + 1);
            v121[j].__locale_ = v95;
            if (v95 != *(&v115 + j * 8))
            {
              break;
            }

            v121[j].__locale_ = 0;
          }

          ++v86;
        }

        while (v86 != v28);
      }
    }

    else
    {
      v137 = 0uLL;
      v138 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      v133 = 0uLL;
      v134 = 0uLL;
      v131 = 0uLL;
      v132 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v124 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v115 = 0uLL;
      sub_2621D96E4(&v124, v5, a2, &v115);
      v46 = 0;
      v47 = &v115;
      v48 = 1;
      do
      {
        v49 = *v47;
        v50 = *(v5 + v46);
        if ((v48 & 1) == 0)
        {
          break;
        }

        v48 = 0;
        v47 = &v115 + 1;
        v46 = 1;
      }

      while (v49 == v50);
      if (v49 != v50)
      {
        v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v52, " ", 1);
        v53 = MEMORY[0x277D82670];
        v54 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v54, " ", 1);
        sub_2621D552C(v54, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v54 + *(*v54 - 24)));
        v55 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v55->__vftable[2].~facet_0)(v55, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v56 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v56->__vftable[2].~facet_0)(v56, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      *&v121[0].__locale_ = 0u;
      v118 = 0u;
      v119 = 0u;
      v57 = *(a1 + 104);
      v58 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v57)
        {
          v59 = 0;
          v61 = *(&v125 + 1);
          v60 = v126;
          if (((v126 - *(&v125 + 1)) >> 3) <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = (v126 - *(&v125 + 1)) >> 3;
          }

          do
          {
            v118 = *&v121[0].__locale_;
            if (v60 != v61)
            {
              v63 = v61;
              v64 = v62;
              do
              {
                v65 = *v63++;
                *(&v118 + v65) = 0;
                --v64;
              }

              while (v64);
            }

            *(v58 + 2 * v59) = sub_2622FEE54(a2, &v118);
            for (k = 1; k != -1; --k)
            {
              v67 = (v121[k].__locale_ + 1);
              v121[k].__locale_ = v67;
              if (v67 != *(&v115 + k * 8))
              {
                break;
              }

              v121[k].__locale_ = 0;
            }

            ++v59;
          }

          while (v59 != v57);
        }
      }

      else if (v57)
      {
        v96 = 0;
        v97 = *(&v125 + 1);
        v114 = v126;
        if (((v126 - *(&v125 + 1)) >> 3) <= 1)
        {
          v98 = 1;
        }

        else
        {
          v98 = (v126 - *(&v125 + 1)) >> 3;
        }

        v112 = *(a1 + 56);
        v108 = v98;
        v110 = *(a1 + 64);
        do
        {
          v100 = v121[0].__locale_;
          v99 = v121[1].__locale_;
          v118 = *&v121[0].__locale_;
          if (v114 != v97)
          {
            v101 = v97;
            v102 = v108;
            do
            {
              v103 = *v101++;
              *(&v118 + v103) = 0;
              --v102;
            }

            while (v102);
          }

          *(v58 + 2 * v110 * v99 + 2 * v112 * v100) = sub_2622FEE54(a2, &v118);
          for (m = 1; m != -1; --m)
          {
            v105 = (v121[m].__locale_ + 1);
            v121[m].__locale_ = v105;
            if (v105 != *(&v115 + m * 8))
            {
              break;
            }

            v121[m].__locale_ = 0;
          }

          ++v96;
        }

        while (v96 != v57);
      }
    }

    sub_2621C57C8(&v124);
  }

  v106 = *MEMORY[0x277D85DE8];
}

void sub_2622FEE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::locale::~locale(&a25);
  sub_2621C57C8(&a31);
  _Unwind_Resume(a1);
}

__int16 sub_2622FEE54@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  sub_2622FEF20((a1 + 48), a2, v8);
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += *(a1 + 168 + v3) * *(v8 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  if ((*(a1 + 352) & 1) == 0)
  {
    v5 = 0;
    v4 = 0;
    do
    {
      v4 += *(a1 + 272 + v5) * *(v8 + v5);
      v5 += 8;
    }

    while (v5 != 24);
  }

  result = *(*(a1 + 360) + 2 * v4);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_2622FEF20(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *result;
  v5 = result[3];
  v6 = 1;
  do
  {
    v7 = v6;
    *(a3 + 8 * result[v3 + 6]) = *(*(v4 + 152 * v3 + 144) + 8 * *(v5 + 8 * v3) * *(a2 + 8 * result[11]));
    v3 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  v8 = result[8];
  v9 = result[9] - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    v11 = result[12];
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v12 = *v11++;
      v13 = *(a2 + 8 * v12);
      v14 = *v8++;
      *(a3 + 8 * v14) = v13;
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 sub_2622FEFA4@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  sub_2622FEF20((a1 + 48), a2, v7);
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += *(a1 + 168 + v3) * *(v7 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  result = *(*(a1 + 360) + 2 * v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2622FF040(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_2622FF14C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }
}

void sub_2622FF1E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2622FF200(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      sub_2621CC71C(result, a3);
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_2622FF278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2622FF294(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2622FF2B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2622FF2D0(uint64_t a1, double a2, double a3)
{
  v4 = *(*(a1 + 32) + 8);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_2621CC8B4(&v42, *(v4 + 48), *(v4 + 56), (*(v4 + 56) - *(v4 + 48)) >> 3);
  v40 = 0uLL;
  v41 = 0;
  v5 = v42;
  v6 = v43 - v42;
  if (v43 != v42)
  {
    v7 = 0;
    v8 = v6 >> 3;
    if ((v6 >> 3) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 >> 3;
    }

    v10 = *(&a3 + 1) - *(&a2 + 1);
    v11 = vsub_f32(*&a2, *&a3);
    v12 = vmuls_lane_f32(-*&a2, *&a3, 1) + (*&a3 * *(&a2 + 1));
    v13 = vmul_f32(v11, v11).f32[0] + (v10 * v10);
    v37 = v11.f32[0];
    LODWORD(v38) = vsub_f32(*&a3, *&a2).u32[0];
    v14 = 1;
    do
    {
      v15 = *&v5[8 * v7];
      v16 = *&v5[8 * v14];
      v46 = v16;
      v17 = vmuls_lane_f32(v37, v15, 1);
      v18 = ((v38 * (v15.f32[1] - *(&a2 + 1))) - (vsub_f32(v15, *&a2).f32[0] * v10)) < 0.0;
      if ((((v12 + (v17 + (v10 * v15.f32[0]))) * (v12 + (v17 + (v10 * v15.f32[0])))) / v13) < 0.00000001)
      {
        v18 = 1;
      }

      v19 = vmuls_lane_f32(v37, v16, 1);
      if ((((v12 + (v19 + (v10 * v16.f32[0]))) * (v12 + (v19 + (v10 * v16.f32[0])))) / v13) >= 0.00000001 && ((v38 * (v16.f32[1] - *(&a2 + 1))) - (vsub_f32(v16, *&a2).f32[0] * v10)) >= 0.0)
      {
        if (v18)
        {
          v27 = vsub_f32(__PAIR64__(HIDWORD(a3), v15.u32[0]), __PAIR64__(HIDWORD(a2), v16.u32[0]));
          v29 = __PAIR64__(v16.u32[1], LODWORD(a2));
          v28 = vsub_f32(__PAIR64__(v16.u32[1], LODWORD(a2)), __PAIR64__(v15.u32[1], LODWORD(a3)));
          *v29.i32 = (-v27.f32[1] * v27.f32[0]) + (v28.f32[1] * v28.f32[0]);
          v30 = -*v29.i32;
          if (*v29.i32 >= 0.0)
          {
            v30 = (-v27.f32[1] * v27.f32[0]) + (v28.f32[1] * v28.f32[0]);
          }

          v31 = v30;
          v32 = 0;
          if (v31 >= 0.00000001)
          {
            v33 = vmla_f32(vmul_f32(vzip2_s32(*&a3, v16), vneg_f32(vzip1_s32(*&a2, v15))), vzip2_s32(*&a2, v15), vzip1_s32(*&a3, v16));
            v32 = vdiv_f32(vmla_f32(vmul_f32(vrev64_s32(v33), vneg_f32(v28)), v33, v27), vdup_lane_s32(v29, 0));
          }

          v45 = v32;
          sub_2621CBA84(&v40, &v45);
        }
      }

      else
      {
        if (!v18)
        {
          v20 = vsub_f32(__PAIR64__(HIDWORD(a3), v15.u32[0]), __PAIR64__(HIDWORD(a2), v16.u32[0]));
          v22 = __PAIR64__(v16.u32[1], LODWORD(a2));
          v21 = vsub_f32(__PAIR64__(v16.u32[1], LODWORD(a2)), __PAIR64__(v15.u32[1], LODWORD(a3)));
          *v22.i32 = (-v20.f32[1] * v20.f32[0]) + (v21.f32[1] * v21.f32[0]);
          v23 = -*v22.i32;
          if (*v22.i32 >= 0.0)
          {
            v23 = (-v20.f32[1] * v20.f32[0]) + (v21.f32[1] * v21.f32[0]);
          }

          v24 = v23;
          v25 = 0;
          if (v24 >= 0.00000001)
          {
            v26 = vmla_f32(vmul_f32(vzip2_s32(*&a3, v16), vneg_f32(vzip1_s32(*&a2, v15))), vzip2_s32(*&a2, v15), vzip1_s32(*&a3, v16));
            v25 = vdiv_f32(vmla_f32(vmul_f32(vrev64_s32(v26), vneg_f32(v21)), v26, v20), vdup_lane_s32(v22, 0));
          }

          v45 = v25;
          sub_2621CBA84(&v40, &v45);
        }

        sub_2621CBA84(&v40, &v46);
      }

      ++v7;
      v14 = (v14 + 1) % v8;
    }

    while (v9 != v7);
  }

  v34 = *(*(a1 + 32) + 8);
  v35 = v34[6];
  if (v35)
  {
    v34[7] = v35;
    operator delete(v35);
    v34[6] = 0;
    v34[7] = 0;
    v34[8] = 0;
  }

  *(v34 + 3) = v40;
  v34[8] = v41;
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_2622FF644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v17);
  _Unwind_Resume(a1);
}

BOOL sub_2622FF66C(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5, float a6)
{
  sub_2621DC2A8();
  v14 = vsub_f32(v12, v13);
  v15 = vsub_f32(a1, a2);
  v16 = 0.000001;
  v17 = sqrtf(vaddv_f32(vmul_f32(v14, v14))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v15, v15))), 0.000001);
  v18 = vsub_f32(a4, a3);
  v19 = vaddv_f32(vmul_f32(vsub_f32(a1, a3), v18));
  v20 = vaddv_f32(vmul_f32(v18, v18));
  if (v20 >= 0.000001)
  {
    v16 = v20;
  }

  v21 = vsub_f32(vmla_n_f32(a3, v18, v19 / v16), a1);
  v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
  v23 = vsub_f32(vmla_n_f32(a3, v18, vaddv_f32(vmul_f32(vsub_f32(a2, a3), v18)) / v16), a2);
  v24 = sqrtf(vaddv_f32(vmul_f32(v23, v23)));
  if (v22 < v24)
  {
    v22 = v24;
  }

  return v22 < a5 && v17 > a6;
}

void sub_2622FF758(void *a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_2622034F0(&v6, a2);
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  LODWORD(v13) = 1101004800;
  v14 = 0u;
  v15 = 0u;
  v18 = v8;
  v19 = v9;
  v16 = 0u;
  v17 = v7;
  sub_2622034F0(v20, &v6);
  v22 = v11;
  v23 = v12;
  v21 = v10;
  v24 = v13;
  v14 = v17;
  v15 = v18;
  v16 = v19;
  v36 = 0;
  v31 = 0u;
  v32 = 0u;
  v26 = v17;
  v28 = v19;
  v27 = v18;
  v25 = &unk_2874EEC38;
  v29 = *(&v17 + 1);
  v30 = 1;
  v33 = v17 * *(&v17 + 1);
  v35 = 0;
  v34 = 0;
  sub_26225F984();
}

void sub_262300814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  std::locale::~locale(&STACK[0x360]);
  sub_2621C57C8(&STACK[0x390]);
  if (STACK[0x2E8])
  {
    sub_2621D1B78(STACK[0x2E8]);
  }

  if (STACK[0x210])
  {
    sub_2621D1B78(STACK[0x210]);
  }

  if (a37)
  {
    sub_2621D1B78(a37);
  }

  v39 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void sub_262300914(uint64_t a1, uint64_t a2)
{
  sub_2622034F0(v3, a2);
  sub_2622034F0(a1, v3);
  v3[0] = &unk_2874EE7C8;
  if (v4)
  {
    sub_2621D1B78(v4);
  }
}

void sub_26230097C(uint64_t a1, float32x2_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = a5;
  v14 = a3;
  v18 = *a2;
  v17 = a2[1];
  v19 = vsub_f32(*a2, v17);
  *&a12 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
  v20 = (*&a12 + 1.0);
  v21 = *(a1 + 132);
  if (v21 < 1 || v21 >= v20)
  {
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        sub_2621C7F54(v20);
      }

      sub_2621CBEB0();
    }

    v22 = 0;
    v36 = 0;
  }

  else
  {
    v60 = a12;
    if (v21 == 1)
    {
      operator new();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v20 / (v21 - 1);
    v26 = 0;
    do
    {
      v27 = (v24 * v25 + 0.0);
      *(&v61 + 1) = v26;
      if (v23 >= v26)
      {
        v28 = v23 - v22;
        v29 = v23 - v22;
        v30 = v29 + 1;
        if ((v29 + 1) >> 62)
        {
          sub_2621CBEB0();
        }

        v31 = v26 - v22;
        if ((v26 - v22) >> 1 > v30)
        {
          v30 = v31 >> 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v32 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          sub_2621C7F54(v32);
        }

        v33 = v23 - v22;
        v34 = (4 * v29);
        v35 = (4 * v29 - 4 * v33);
        *v34 = v27;
        v23 = v34 + 1;
        memcpy(v35, v22, v28);
        v61 = v23;
        if (v22)
        {
          operator delete(v22);
        }

        v22 = v35;
      }

      else
      {
        *v23++ = v27;
      }

      v26 = *(&v61 + 1);
      ++v24;
    }

    while (v21 != v24);
    v36 = v23;
    v14 = a3;
    v12 = a5;
    a12 = v60;
  }

  if (v22 != v36)
  {
    v37 = vdup_lane_s32(*&a12, 0);
    v38 = vdiv_f32(vsub_f32(v17, v18), v37);
    v39 = vext_s8(v18, v17, 4uLL);
    v40 = vsub_f32(vext_s8(v17, v18, 4uLL), v39);
    v39.f32[0] = v14;
    v41 = vdiv_f32(v40, v37);
    v42 = vneg_f32(vdup_lane_s32(v39, 0));
    v43 = (2 * v14) | 1;
    v44 = v22;
    do
    {
      v45 = 0;
      v46 = vmla_f32(vmla_n_f32(*a2, v38, *v44), v41, v42);
      v47 = 0.0;
      v48 = 0.0;
      do
      {
        v49 = vmla_n_f32(v46, v41, v45);
        v50 = vcgez_f32(v49);
        v51 = vbsl_s8(v50, v49, vneg_f32(v49));
        v52 = vcvt_s32_f32(v51);
        v53 = vmvn_s8(vcge_f32(0x3F0000003F000000, vsub_f32(v51, vcvt_f32_s32(v52))));
        LODWORD(v54) = v52.i32[1] - v53.i32[1];
        if (v50.i8[0])
        {
          v55 = (v52.i32[0] - v53.i32[0]);
        }

        else
        {
          v55 = (v53.i32[0] - v52.i32[0]);
        }

        if (v50.i8[4])
        {
          v54 = v54;
        }

        else
        {
          v54 = (v53.i32[1] - v52.i32[1]);
        }

        v56 = 0.0;
        if ((v55 & 0x80000000) == 0)
        {
          v57 = *(a1 + 120);
          if (v57 > v55 && (v54 & 0x80000000) == 0 && v57 > v54)
          {
            v56 = *(a4 + 4 * v57 * v55 + 4 * v54);
          }
        }

        if (v56 > v48)
        {
          v47 = v56;
          v48 = v56;
        }

        ++v45;
      }

      while (v43 != v45);
      v62 = v47;
      sub_2621C8F2C(v12, &v62);
      ++v44;
    }

    while (v44 != v36);
  }

  if (v22)
  {

    operator delete(v22);
  }
}

void sub_262300DAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262300DCC(void *a1, float a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  result = 1;
  if (v3 != v2)
  {
    while (1)
    {
      v5 = v3[4];
      if (*v5 < a2 && v5[1] >= a2)
      {
        break;
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == v2)
      {
        return result;
      }
    }

    return v3[7];
  }

  return result;
}

void sub_262300E40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56))
  {
    v8 = 0;
    do
    {
      v9 = (*(a1 + 8) + 16 * v8);
      v10 = *(a1 + 144);
      v28 = vsub_f32(*v9, v9[1]);
      v11 = sub_262300DCC(a2, *(a1 + 128) * sqrtf(vaddv_f32(vmul_f32(v28, v28))));
      v17 = *&v28;
      v18 = fabsf(v28.f32[0]);
      if (v18 >= 0.001 || (v17 = fabsf(v28.f32[1]), v18 = 0.0, v17 >= 0.001))
      {
        __dst = 0;
        v30 = 0;
        v31 = 0;
        sub_26230097C(a1, v9, v11, a3, &__dst, v18, v17, v12, v13, v14, v15, v16);
        v19 = vsub_f32(*v9, v9[1]);
        v20 = __dst;
        if (2 * v10 + 2 >= (sqrtf(vaddv_f32(vmul_f32(v19, v19))) + 1.0))
        {
          v24 = v30;
        }

        else
        {
          v21 = 4 * v10;
          if (4 * v10 == -4)
          {
            v24 = v30;
          }

          else
          {
            v22 = __dst + 4 * v10 + 4;
            v23 = v30 - v22;
            if (v30 != v22)
            {
              memmove(__dst, v22, v30 - v22);
            }

            v24 = v20 + v23;
          }

          if (v24 - v21 - 4 != v24)
          {
            v24 = v24 - v21 - 4;
          }
        }

        v25 = 0.0;
        if (v20 != v24)
        {
          v26 = v20;
          do
          {
            v27 = *v26++;
            v25 = v25 + v27;
          }

          while (v26 != v24);
        }

        if (v20)
        {
          operator delete(v20);
        }

        *&v18 = v25 / ((v24 - v20) >> 2);
      }

      LODWORD(__dst) = LODWORD(v18);
      sub_2621C8F2C(a4, &__dst);
      ++v8;
    }

    while (*(a1 + 56) > v8);
  }
}

void sub_26230103C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262301054(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, _DWORD *a6, uint64_t a7, uint64_t a8, size_t *a9)
{
  v285 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = *(a1 + 8);
  v257 = (a1 + 32);
  *(a1 + 40) = *(a1 + 32);
  v258 = (a1 + 88);
  *(a1 + 96) = *(a1 + 88);
  *(a1 + 72) = *(a1 + 64);
  v256 = (a1 + 8);
  sub_26230259C(a2, a3, a4, a1 + 8);
  if (a7)
  {
    v13 = a7;
    do
    {
      v14 = *a5;
      v16 = *(a1 + 72);
      v15 = *(a1 + 80);
      if (v16 >= v15)
      {
        v18 = *(a1 + 64);
        v19 = (v16 - v18) >> 3;
        if ((v19 + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        v20 = v15 - v18;
        v21 = v20 >> 2;
        if (v20 >> 2 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_2621CBEC8(v22);
        }

        *(8 * v19) = v14;
        v17 = 8 * v19 + 8;
        v23 = *(a1 + 64);
        v24 = *(a1 + 72) - v23;
        v25 = (8 * v19 - v24);
        memcpy(v25, v23, v24);
        v26 = *(a1 + 64);
        *(a1 + 64) = v25;
        *(a1 + 72) = v17;
        *(a1 + 80) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v16 = v14;
        v17 = (v16 + 1);
      }

      *(a1 + 72) = v17;
      sub_2621C8F2C(v258, a6++);
      ++a5;
      --v13;
    }

    while (v13);
  }

  *(a1 + 112) = a7;
  *a1 = a8;
  if (!*(a1 + 56))
  {
    a9[1] = *a9;
    goto LABEL_308;
  }

  v265 = 0;
  v266 = 0;
  v267 = 0;
  memset(v264, 0, sizeof(v264));
  v261 = 0;
  v262 = 0;
  v263 = 0;
  sub_262300E40(a1, (a1 + 160), a8, &v265);
  if (*(a1 + 56))
  {
    v27 = 0;
    v28 = *a1;
    while (1)
    {
      v29 = (*(a1 + 8) + 16 * v27);
      v30 = *(a1 + 272);
      v31 = vsub_f32(*v29, v29[1]);
      v32 = *(a1 + 128) * sqrtf(vaddv_f32(vmul_f32(v31, v31)));
      v33 = sub_262300DCC((a1 + 280), v32);
      v278 = 0uLL;
      v279 = 0;
      sub_26230097C(a1, v29, v33, v28, &v278, v34, v35, v36, v37, v38, v39, v40);
      v41 = *(&v278 + 1) - v278;
      if (*(&v278 + 1) != v278)
      {
        break;
      }

      v48 = *(a1 + 304);
      v47 = 0.0;
      if (*(&v278 + 1))
      {
        goto LABEL_29;
      }

LABEL_30:
      if ((v32 * (1.0 - v47)) >= v48)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = 1.0;
      }

      *&v278 = v49;
      sub_2621C8F2C(v264, &v278);
      if (*(a1 + 56) <= ++v27)
      {
        goto LABEL_34;
      }
    }

    v42 = v41 >> 2;
    if ((v41 >> 2) <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v41 >> 2;
    }

    v44 = 0.0;
    v45 = v278;
    do
    {
      v46 = *v45++;
      if (v46 >= v30)
      {
        v44 = v44 + 1.0;
      }

      --v43;
    }

    while (v43);
    v47 = v44 / v42;
    v48 = *(a1 + 304);
LABEL_29:
    operator delete(v278);
    goto LABEL_30;
  }

LABEL_34:
  v278 = 0uLL;
  v279 = 0;
  v50 = *(a1 + 8);
  v51 = *(a1 + 16);
  if (v50 != v51)
  {
    v52 = -1.0;
    v53 = *(a1 + 8);
    do
    {
      v54 = *v53;
      v55 = v53[1];
      v53 += 2;
      v56 = vsub_f32(v54, v55);
      v57 = sqrtf(vaddv_f32(vmul_f32(v56, v56)));
      if (v52 < v57)
      {
        v52 = v57;
      }
    }

    while (v53 != v51);
    if (v52 >= 0.001)
    {
      v58 = v52;
    }

    else
    {
      v58 = 0.001;
    }

    do
    {
      v59 = vsub_f32(*v50, v50[1]);
      *&v282 = sqrtf(vaddv_f32(vmul_f32(v59, v59))) / v58;
      sub_2621C8F2C(&v278, &v282);
      v50 += 2;
    }

    while (v50 != v51);
    v60 = v278;
    v61 = *(a1 + 32);
    if (*(a1 + 40) == v61)
    {
      if (!v278)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_49:
    v62 = *(a1 + 152);
    v63 = *(a1 + 140);
    v64 = 0;
    v65 = v265;
    do
    {
      *&v282 = ((*(v61 + 4 * v64) + (v62 * v65[v64])) + (v63 * v60[v64])) / ((v62 + 1.0) + v63);
      sub_2621C8F2C(&v261, &v282);
      ++v64;
      v61 = *(a1 + 32);
    }

    while (v64 < (*(a1 + 40) - v61) >> 2);
LABEL_51:
    operator delete(v60);
    goto LABEL_52;
  }

  v61 = *(a1 + 32);
  if (*(a1 + 40) != v61)
  {
    v60 = 0;
    goto LABEL_49;
  }

LABEL_52:
  v66 = *(a1 + 56);
  v275 = 0;
  v276 = 0;
  v277 = 0;
  memset(v274, 0, sizeof(v274));
  v271 = 0;
  v272 = 0;
  v273 = 0;
  memset(v270, 0, sizeof(v270));
  memset(__p, 0, sizeof(__p));
  if (v66)
  {
    v67 = 0;
    v259 = vdup_n_s32(0x358637BDu);
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (i == v67)
        {
          LOBYTE(v278) = 0;
          sub_2621DC7FC(&v275, &v278);
        }

        else
        {
          v69 = *(a1 + 8);
          v70 = (v69 + 16 * i);
          v71 = (v69 + 16 * v67);
          v72 = *(a1 + 184);
          v73 = *(a1 + 188);
          v74 = *(a1 + 136);
          v75 = *(a1 + 192);
          v76 = sub_2621C92AC(v70, v71, 0);
          v278 = 0uLL;
          v279 = 0;
          LODWORD(v282) = sub_2621DC76C(*v70, *v71, v71[1], 0.00001);
          sub_2621C8F2C(&v278, &v282);
          LODWORD(v282) = sub_2621DC76C(v70[1], *v71, v71[1], 0.00001);
          sub_2621C8F2C(&v278, &v282);
          LODWORD(v282) = sub_2621DC76C(*v71, *v70, v70[1], 0.00001);
          sub_2621C8F2C(&v278, &v282);
          LODWORD(v282) = sub_2621DC76C(v71[1], *v70, v70[1], 0.00001);
          sub_2621C8F2C(&v278, &v282);
          v77 = v278;
          v78 = v278;
          if (v278 != *(&v278 + 1))
          {
            v79 = (v278 + 4);
            v78 = v278;
            if (v278 + 4 != *(&v278 + 1))
            {
              v80 = *v278;
              v78 = v278;
              v81 = (v278 + 4);
              do
              {
                v82 = *v81++;
                v83 = v82;
                if (v82 < v80)
                {
                  v80 = v83;
                  v78 = v79;
                }

                v79 = v81;
              }

              while (v81 != *(&v278 + 1));
            }
          }

          v84 = *v78;
          v85 = *v78 < v73;
          v86 = vsub_f32(*v70, v70[1]);
          v87 = vmul_f32(v86, v86);
          v88 = vsub_f32(*v71, v71[1]);
          v89 = vmul_f32(v88, v88);
          v90 = vsqrt_f32(vadd_f32(vzip1_s32(v89, v87), vzip2_s32(v89, v87)));
          v91 = vmul_n_f32(v90, *(a1 + 128));
          if (v91.f32[0] >= v91.f32[1])
          {
            v91.f32[0] = v91.f32[1];
          }

          v93 = v76 < v75 && v91.f32[0] < v74;
          sub_2621DC2A8();
          v96 = vsub_f32(v94, v95);
          v97 = vmul_f32(v96, v96);
          sub_2621DC2A8();
          v100 = vsub_f32(v98, v99);
          v101 = vmul_f32(v100, v100);
          v280 = vdiv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v97, v101), vzip2_s32(v97, v101))), vmaxnm_f32(v90, v259));
          v283 = 0;
          v284 = 0;
          v282 = 0;
          sub_2621DC430(&v282, &v280, &v281, 2uLL);
          v102 = v282;
          if (v282 != v283)
          {
            v103 = v282 + 1;
            v102 = v282;
            if (v282 + 1 != v283)
            {
              v104 = *v282;
              v102 = v282;
              v105 = v282 + 1;
              do
              {
                v106 = *v105++;
                v107 = v106;
                if (v106 < v104)
                {
                  v104 = v107;
                  v102 = v103;
                }

                v103 = v105;
              }

              while (v105 != v283);
            }
          }

          v108 = (v93 || v76 < v72) && v85;
          if (*v102 >= *(a1 + 196) && v84 < v73)
          {
            v110 = 180.0 - v76;
            if ((180.0 - v76) >= v76)
            {
              v110 = v76;
            }

            if (v110 < v72)
            {
              v108 = 1;
            }
          }

          if (v282)
          {
            operator delete(v282);
          }

          if (v77)
          {
            operator delete(v77);
          }

          v268 = v108;
          sub_2621DC7FC(&v275, &v268);
        }
      }

      ++v67;
    }

    while (v67 != v66);
  }

  v111 = *(a1 + 16);
  if (v111 == *(a1 + 8))
  {
    v112 = 0;
    v113 = 0;
    v139 = *(a1 + 16);
    v140 = v256;
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v111 = *(a1 + 8);
    do
    {
      v115 = *(v261 + v114);
      v116 = *(v264[0] + v114);
      v117 = (v111 + 16 * v114);
      v118 = *v117;
      v119 = v117[1];
      v120 = *(a1 + 64);
      v121 = *(a1 + 72) - v120;
      if (v121)
      {
        v122 = 0;
        v123 = v121 >> 3;
        if (v123 <= 1)
        {
          v123 = 1;
        }

        while (1)
        {
          v124 = vceq_f32(v118, *(v120 + 8 * v122));
          if (v124.i32[0] & v124.i32[1])
          {
            break;
          }

          if (v123 == ++v122)
          {
            LODWORD(v122) = -1;
            break;
          }
        }

        v125 = 0;
        LODWORD(v282) = v122;
        while (1)
        {
          v126 = vceq_f32(v117[1], *(v120 + 8 * v125));
          if (v126.i32[0] & v126.i32[1])
          {
            break;
          }

          if (v123 == ++v125)
          {
            LODWORD(v125) = -1;
            break;
          }
        }
      }

      else
      {
        LODWORD(v125) = -1;
        LODWORD(v282) = -1;
      }

      HIDWORD(v282) = v125;
      v279 = 0;
      v278 = 0uLL;
      sub_2621DD5D0(&v278, &v282, &v283, 2uLL);
      v127 = v278;
      v128 = *(*v258 + 4 * *v278);
      v129 = vsub_f32(v118, v119);
      v130 = sqrtf(vaddv_f32(vmul_f32(v129, v129)));
      if (v128 < 0.1)
      {
        v131 = 1;
      }

      else
      {
        v131 = 2;
      }

      if (*(*v258 + 4 * *(v278 + 4)) >= 0.1)
      {
        v132 = v131;
      }

      else
      {
        v132 = v128 >= 0.1;
      }

      v133 = v113 - v112;
      v134 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3);
      v135 = v134 + 1;
      if (v134 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * (-v112 >> 3) > v135)
      {
        v135 = 0x5555555555555556 * (-v112 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v112 >> 3) >= 0x555555555555555)
      {
        v136 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v136 = v135;
      }

      if (v136)
      {
        if (v136 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v137 = 24 * v134;
      *v137 = v115;
      *(v137 + 4) = v130;
      *(v137 + 8) = v116;
      *(v137 + 12) = v132;
      *(v137 + 16) = v114;
      v113 = 24 * v134 + 24;
      v138 = (v137 + 24 * (v133 / -24));
      memcpy(v138, v112, v133);
      if (!v112 || (operator delete(v112), v127 = v278, v112 = v138, v278))
      {
        operator delete(v127);
        v112 = v138;
      }

      ++v114;
      v111 = *(a1 + 8);
      v139 = *(a1 + 16);
      v140 = v256;
    }

    while (v114 < (v139 - v111) >> 4);
  }

  v141 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3);
  if (v141 < 2)
  {
    goto LABEL_147;
  }

  for (j = 1; j < v141; ++j)
  {
    if (v141 == j)
    {
      break;
    }

    v143 = 1;
    v144 = (v112 + 24);
    do
    {
      if (v143 >= v141)
      {
        goto LABEL_135;
      }

      v145 = *(v144 - 4);
      if (v145 == 1 - *(v144 + 2))
      {
        if (v145 == 1)
        {
          goto LABEL_135;
        }

LABEL_134:
        v146 = v144 - 24;
        v278 = 0uLL;
        v279 = 0;
        v147 = *(v144 - 24);
        v279 = *(v144 - 1);
        v278 = v147;
        *v146 = *v144;
        *(v146 + 2) = *(v144 + 2);
        v148 = v279;
        *v144 = v278;
        *(v144 + 2) = v148;
        goto LABEL_135;
      }

      v150 = *(v144 - 3);
      v151 = *(v144 + 3);
      if (v150 == v151)
      {
        v152 = *(v144 - 6);
        v153 = *v144;
        if (vabds_f32(v152, *v144) < *(a1 + 200))
        {
          v152 = *(v144 - 5);
          v153 = *(v144 + 1);
        }

        if (v152 < v153)
        {
          goto LABEL_134;
        }
      }

      else if (v150 <= v151)
      {
        goto LABEL_134;
      }

LABEL_135:
      v144 += 24;
    }

    while (v143++ < v141 - j);
  }

  v111 = *(a1 + 8);
  v139 = *(a1 + 16);
LABEL_147:
  if (v139 != v111)
  {
    v154 = 0;
    v155 = (v112 + 16);
    do
    {
      sub_2621C9004(v274, v155);
      ++v154;
      v155 += 3;
    }

    while (v154 < (*(a1 + 16) - *(a1 + 8)) >> 4);
  }

  if (v112)
  {
    operator delete(v112);
  }

  LOBYTE(v278) = 0;
  sub_26220F1D4(&v280, v66);
  if (v66)
  {
    v156 = 0;
    v157 = v274[0];
    v158 = v275;
    do
    {
      v159 = v157[v156];
      *&v278 = v159;
      v160 = v280;
      if (((*&v280[(v159 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v159) & 1) == 0)
      {
        v161 = 0;
        v162 = v159 * v66;
        v163 = v66;
        do
        {
          v164 = *&v160[8 * (v161 >> 6)];
          v165 = (v164 & (1 << v161)) != 0 || v159 == v161;
          if (!v165 && ((*&v158[(v162 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v162) & 1) != 0)
          {
            *&v160[8 * (v161 >> 6)] = v164 | (1 << v161);
          }

          ++v161;
          ++v162;
          --v163;
        }

        while (v163);
        sub_2621C9004(&v271, &v278);
      }

      ++v156;
    }

    while (v156 != v66);
  }

  v278 = 0uLL;
  v279 = 0;
  v282 = 0;
  v283 = 0;
  v284 = 0;
  v167 = v271;
  v166 = v272;
  v168 = v272 - v271;
  if (v272 == v271)
  {
    *(a1 + 56) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v177 = v257;
  }

  else
  {
    v169 = v168 >> 3;
    if ((v168 >> 3) <= 1)
    {
      v170 = 1;
    }

    else
    {
      v170 = v168 >> 3;
    }

    v171 = v271;
    v172 = v170;
    do
    {
      v173 = *v171++;
      sub_2621DE070(&v278, (*v140 + 16 * v173));
      sub_2621C8F2C(&v282, (*v257 + 4 * v173));
      --v172;
    }

    while (v172);
    *(a1 + 56) = v169;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v174 = v278;
    v175 = v282;
    v176 = v282;
    v177 = v257;
    do
    {
      sub_2621DE070(v140, v174);
      sub_2621C8F2C(v257, v176++);
      ++v174;
      --v170;
    }

    while (v170);
    if (v175)
    {
      operator delete(v175);
    }
  }

  if (v278)
  {
    operator delete(v278);
  }

  if (v166 == v167)
  {
    v266 = v265;
    v262 = v261;
  }

  else
  {
    v178 = v265;
    v179 = v261;
    if (((v166 - v167) >> 3) <= 1)
    {
      v180 = 1;
    }

    else
    {
      v180 = (v166 - v167) >> 3;
    }

    v181 = v167;
    v182 = v180;
    do
    {
      v183 = *v181++;
      sub_2621C8F2C(v270, &v178[v183]);
      sub_2621C8F2C(__p, &v179[v183]);
      --v182;
    }

    while (v182);
    v266 = v178;
    v262 = v179;
    v184 = v270[0];
    v185 = __p[0];
    v177 = v257;
    do
    {
      sub_2621C8F2C(&v265, v184);
      sub_2621C8F2C(&v261, v185++);
      ++v184;
      --v180;
    }

    while (v180);
  }

  if (v280)
  {
    operator delete(v280);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v270[0])
  {
    operator delete(v270[0]);
  }

  if (v167)
  {
    operator delete(v167);
  }

  if (v274[0])
  {
    operator delete(v274[0]);
  }

  if (v275)
  {
    operator delete(v275);
  }

  v186 = *(a1 + 56);
  if (!v186)
  {
    v278 = 0uLL;
    v279 = 0;
    v282 = 0;
    v283 = 0;
    v284 = 0;
    *(a1 + 16) = *(a1 + 8);
    v203 = *(a1 + 32);
    *(a1 + 40) = v203;
LABEL_229:
    v206 = v203;
    goto LABEL_230;
  }

  v187 = 0;
  v188 = *(a1 + 8);
  v189 = *(a1 + 32);
  v190 = v265;
  v191 = v261;
  v192 = (a1 + 216);
  v193 = *(a1 + 208);
  do
  {
    if (v193 != v192)
    {
      v194 = vsub_f32(*(v188 + 16 * v187), *(v188 + 16 * v187 + 8));
      v195 = *(a1 + 128) * sqrtf(vaddv_f32(vmul_f32(v194, v194)));
      v196 = v193;
      do
      {
        v197 = v196[4];
        if (*v197 < v195 && v197[1] >= v195)
        {
          for (k = v196[7]; k != v196[8]; k += 24)
          {
            if (**k <= *(v189 + 4 * v187) && *(*k + 4) <= v190[v187])
            {
              goto LABEL_219;
            }
          }
        }

        v198 = v196[1];
        if (v198)
        {
          do
          {
            v199 = v198;
            v198 = *v198;
          }

          while (v198);
        }

        else
        {
          do
          {
            v199 = v196[2];
            v165 = *v199 == v196;
            v196 = v199;
          }

          while (!v165);
        }

        v196 = v199;
      }

      while (v199 != v192);
    }

    v191[v187] = 0.0;
LABEL_219:
    ++v187;
  }

  while (v187 != v186);
  v201 = 0;
  v202 = 0;
  v278 = 0uLL;
  v279 = 0;
  v282 = 0;
  v283 = 0;
  v284 = 0;
  do
  {
    if (*v191 > 0.000001)
    {
      sub_2621DE070(&v278, (*v140 + v201));
      sub_2621C8F2C(&v282, v191);
      ++v202;
    }

    v201 += 16;
    ++v191;
    --v186;
  }

  while (v186);
  *(a1 + 56) = v202;
  *(a1 + 16) = *(a1 + 8);
  v203 = *(a1 + 32);
  *(a1 + 40) = v203;
  if (!v202)
  {
    goto LABEL_229;
  }

  v204 = v278;
  v205 = v282;
  do
  {
    sub_2621DE070(v140, v204);
    sub_2621C8F2C(v177, v205++);
    ++v204;
    --v202;
  }

  while (v202);
  v206 = *(a1 + 32);
  v203 = *(a1 + 40);
LABEL_230:
  sub_2621CA9DC(&v261, v206, v203, (v203 - v206) >> 2);
  if (v282)
  {
    operator delete(v282);
  }

  if (v278)
  {
    operator delete(v278);
  }

  v207 = *(a1 + 56);
  v275 = 0;
  v276 = 0;
  v277 = 0;
  v208 = *(a1 + 8);
  v209 = *(a1 + 16);
  if (v209 != v208)
  {
    v210 = 0;
    do
    {
      v278 = 0uLL;
      v279 = 0;
      if (v209 != v208)
      {
        v211 = 0;
        v212 = (v208 + 16 * v210);
        do
        {
          if (v211 == v210)
          {
            LODWORD(v282) = 0;
            sub_2621C8F2C(&v278, &v282);
          }

          else
          {
            v213 = (v208 + 16 * v211);
            sub_2621C95C8(&v282, v212, v213);
            v214 = v282;
            v215 = v282 + 1;
            v216 = v282 == v283 || v215 == v283;
            v217 = v282;
            if (!v216)
            {
              v218 = *v282;
              v217 = v282;
              v219 = v282 + 1;
              do
              {
                v220 = *v219++;
                v221 = v220;
                if (v220 < v218)
                {
                  v218 = v221;
                  v217 = v215;
                }

                v215 = v219;
              }

              while (v219 != v283);
            }

            if (*v217 <= 1.0)
            {
              LODWORD(v274[0]) = sub_2621C92AC(v212, v213, 0);
            }

            else
            {
              LODWORD(v274[0]) = 1232348160;
            }

            sub_2621C8F2C(&v278, v274);
            if (v214)
            {
              operator delete(v214);
            }
          }

          ++v211;
          v208 = *(a1 + 8);
        }

        while (v211 < (*(a1 + 16) - v208) >> 4);
      }

      sub_2622F3228(&v275, &v278);
      if (v278)
      {
        operator delete(v278);
      }

      ++v210;
      v208 = *(a1 + 8);
      v209 = *(a1 + 16);
    }

    while (v210 < (v209 - v208) >> 4);
  }

  v222 = v261;
  if (v262 != v261)
  {
    v223 = 0;
    if (((v262 - v261) >> 2) <= 1)
    {
      v224 = 1;
    }

    else
    {
      v224 = (v262 - v261) >> 2;
    }

    do
    {
      v225 = v275 + 24 * v223;
      v278 = 0uLL;
      v279 = 0;
      v226 = *v225;
      v227 = *(v225 + 1);
      if (*v225 == v227)
      {
        v228 = 0;
        v229 = 0;
      }

      else
      {
        do
        {
          if (*v226 > *(a1 + 264) && *v226 <= *(a1 + 268))
          {
            sub_2621C8F2C(&v278, v226);
          }

          ++v226;
        }

        while (v226 != v227);
        v229 = *(&v278 + 1);
        v228 = v278;
      }

      if ((v229 - v228) > 4)
      {
        v222[v223] = 0.0;
      }

      if (v228)
      {
        operator delete(v228);
      }

      ++v223;
    }

    while (v223 != v224);
  }

  v278 = 0uLL;
  v279 = 0;
  v282 = 0;
  v283 = 0;
  v284 = 0;
  if (v207)
  {
    v230 = 0;
    v231 = 0;
    do
    {
      if (*v222 > 0.000001)
      {
        sub_2621DE070(&v278, (*v140 + v230));
        sub_2621C8F2C(&v282, v222);
        ++v231;
      }

      v230 += 16;
      ++v222;
      --v207;
    }

    while (v207);
    *(a1 + 56) = v231;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v232 = v282;
    v233 = v257;
    if (v231)
    {
      v234 = v278;
      v235 = v282;
      do
      {
        sub_2621DE070(v140, v234);
        sub_2621C8F2C(v257, v235++);
        ++v234;
        --v231;
      }

      while (v231);
    }

    if (v232)
    {
      v283 = v232;
      operator delete(v232);
    }
  }

  else
  {
    *(a1 + 56) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v233 = v257;
  }

  if (v278)
  {
    operator delete(v278);
  }

  *&v278 = &v275;
  sub_2621E1D40(&v278);
  if (v261)
  {
    operator delete(v261);
  }

  if (v264[0])
  {
    operator delete(v264[0]);
  }

  if (v265)
  {
    operator delete(v265);
  }

  v236 = *(a1 + 56);
  v237 = a9;
  v238 = *a9;
  a9[1] = *a9;
  if (v236)
  {
    v239 = 0;
    v240 = 0;
    do
    {
      v241 = *v140;
      v242 = *v233;
      v243 = v237[2];
      if (v238 >= v243)
      {
        v245 = *v237;
        v246 = 0xAAAAAAAAAAAAAAABLL * ((v238 - *v237) >> 3);
        v247 = v246 + 1;
        if (v246 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_2621CBEB0();
        }

        v248 = 0xAAAAAAAAAAAAAAABLL * ((v243 - v245) >> 3);
        if (2 * v248 > v247)
        {
          v247 = 2 * v248;
        }

        if (v248 >= 0x555555555555555)
        {
          v249 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v249 = v247;
        }

        if (v249)
        {
          sub_2623026BC(v249);
        }

        v250 = 24 * v246;
        v251 = *(v242 + 4 * v240);
        *v250 = *(v241 + v239);
        *(v250 + 16) = v251;
        v238 = 24 * v246 + 24;
        v252 = a9[1] - *a9;
        v253 = v250 - v252;
        memcpy((v250 - v252), *a9, v252);
        v254 = *a9;
        *a9 = v253;
        a9[1] = v238;
        a9[2] = 0;
        if (v254)
        {
          operator delete(v254);
        }

        v237 = a9;
        v233 = v257;
      }

      else
      {
        v244 = *(v242 + 4 * v240);
        *v238 = *(v241 + v239);
        *(v238 + 16) = v244;
        v238 += 24;
        v233 = v257;
      }

      v237[1] = v238;
      ++v240;
      v239 += 16;
    }

    while (*(a1 + 56) > v240);
  }

LABEL_308:
  v255 = *MEMORY[0x277D85DE8];
}