uint64_t sub_1AF36D7D8(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B7348(a2))
  {
    return 1;
  }

  if (!sub_1AF1B7DB8(a2))
  {
    v5 = sub_1AF1B75A0(a2);
    if (v5)
    {
      if (sub_1AF1C39FC(v5, 0, &v7))
      {
        v6 = sub_1AF1B9B04(a2);
        sub_1AF1DA304(&v7, v6, &v7);
        sub_1AF1DA274(*(a1 + 32), *(a1 + 32), &v7);
      }
    }
  }

  return 0;
}

__n128 sub_1AF36F308(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF36F3A0;
  block[3] = &unk_1E7A7F918;
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v12 = *(a1 + 104);
  v4 = *(a1 + 72);
  v11 = v3;
  v10 = v4;
  v5 = *(a1 + 56);
  v8 = v2;
  v9 = v5;
  dispatch_async(v1, block);
  return result;
}

uint64_t sub_1AF36F3A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 32) + 376), a2, a3, a4) & 1) == 0)
  {
    do
    {
      usleep(0x3E8u);
    }

    while (!objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 32) + 376), v6, v7, v8));
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  if ((objc_msgSend_appendPixelBuffer_withPresentationTime_(v9, v5, v10, &v13) & 1) == 0)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAD8C();
    }
  }

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));
  CVMetalTextureCacheFlush(*(a1 + 72), 0);
  return (*(*(a1 + 48) + 16))();
}

void sub_1AF36F7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AF36F81C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3, a4))
  {
    objc_msgSend_setCanceled_(*(a1 + 40), v5, 1, v7);
  }

  if ((objc_msgSend_canceled(*(a1 + 40), v5, v6, v7) & 1) != 0 || (*(*(*(a1 + 64) + 8) + 24) + (*(a1 + 96) * -0.5)) > *(a1 + 100))
  {
    if (!*(*(*(a1 + 72) + 8) + 24))
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_1AF36FB08;
      v44[3] = &unk_1E7A7E198;
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v44[4] = *(a1 + 40);
      v44[5] = v9;
      dispatch_async(v8, v44);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (*(a1 + 108) == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v14 = *(a1 + 88);
      v15 = 1000 * *(*(*(a1 + 80) + 8) + 24);
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = (1000.0 / *(v16 + 400));
      v19 = *(v16 + 384);
      v48 = 0;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = sub_1AF36FAF0;
      v49[3] = &unk_1E7A7F968;
      v49[4] = *(a1 + 72);
      v45 = v15;
      v46 = v18;
      v47 = 1;
      objc_msgSend_renderAndAppendWithPresentationTime_usingAdaptor_metalTextureCache_cvQueue_completionBlock_(v16, v10, &v45, v19, v14, v17, v49);
    }

    else
    {
      v24 = *(a1 + 40);
      objc_msgSend_size(v24, v10, v11, v12);
      v28 = objc_msgSend__copySnapshot_(v24, v25, v26, v27);
      if (v28)
      {
        v29 = v28;
        if ((objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 40) + 376), v20, v21, v22) & 1) == 0)
        {
          do
          {
            usleep(0x3E8u);
          }

          while (!objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 40) + 376), v31, v32, v33));
        }

        v34 = *(a1 + 40);
        v35 = 1000.0 / *(v34 + 400);
        v36 = *(v34 + 384);
        v45 = 1000 * *(*(*(a1 + 80) + 8) + 24);
        v46 = v35;
        v47 = 1;
        v48 = 0;
        objc_msgSend_appendImage_withPresentationTime_usingAdaptor_(v34, v30, v29, &v45, v36);
        CGImageRelease(v29);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 64) + 8) + 24);
    ++*(*(*(a1 + 80) + 8) + 24);
    *&v23 = (*(*(*(a1 + 64) + 8) + 24) - *(a1 + 104)) / (*(a1 + 100) - *(a1 + 104));
    objc_msgSend_setProgress_(*(a1 + 40), v20, v21, v22, v23);
    v37 = *(a1 + 32);
    v41 = objc_msgSend_completedUnitCount(v37, v38, v39, v40);
    objc_msgSend_setCompletedUnitCount_(v37, v42, v41 + 1, v43);
    objc_autoreleasePoolPop(v13);
  }
}

intptr_t sub_1AF36FB08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_markAsFinished(*(*(a1 + 32) + 376), a2, a3, a4);
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

const void *sub_1AF36FB58(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = objc_msgSend_CGImage(a1, v2, v3, v4);
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return v6;
}

uint64_t VFXGetResourceBundle(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EB658E78;
  if (!qword_1EB658E78)
  {
    return objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AF36FBF4()
{
  v0 = MEMORY[0x1E696AAE8];
  v2 = objc_opt_class();

  return objc_msgSend_bundleForClass_(v0, v1, v2, v3);
}

id VFXSetExternalTextureSource(id result)
{
  if (qword_1EB658E80 != result)
  {
    v1 = result;

    result = v1;
    qword_1EB658E80 = result;
  }

  return result;
}

id sub_1AF36FC84(id result, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    objc_msgSend_getControlPointAtIndex_values_(result, a2, 1, v4);
    objc_msgSend_getControlPointAtIndex_values_(v2, v3, 2, v5);
    return sub_1AF120C80(v4[0], v4[1], v5[0], v5[1]);
  }

  return result;
}

uint64_t sub_1AF36FD0C(uint64_t a1)
{
  v1 = sub_1AF120CF4(a1);
  LODWORD(v5) = *v1;
  LODWORD(v6) = v1[1];
  LODWORD(v7) = v1[2];
  LODWORD(v8) = v1[3];
  v9 = MEMORY[0x1E69793D0];

  return objc_msgSend_functionWithControlPoints__::(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AF36FD48(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = sub_1AF164458();
  v5 = CGColorCreate(v4, components);
  v8 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v6, v5, v7);
  CGColorRelease(v5);
  return v8;
}

uint64_t sub_1AF36FDD0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = sub_1AF164540();
  v5 = CGColorCreate(v4, components);
  v8 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v6, v5, v7);
  CGColorRelease(v5);
  return v8;
}

double sub_1AF36FE5C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_CGColor(a1, a2, a3, a4);

  return sub_1AF164578(v4);
}

uint64_t sub_1AF36FE84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = sub_1AF1648C8(*a3, a3[1]);
  v6 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v4, v3, v5);
  CGColorRelease(v3);
  return v6;
}

uint64_t sub_1AF36FED8(void *a1, const char *a2, float32x2_t *a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (!a3)
    {
      return 0;
    }

    v4 = vcvtq_f64_f32(a3[1]);
    v11 = vcvtq_f64_f32(*a3);
    v12 = v4;
    v5 = sub_1AF1642C0();
    v6 = CGColorCreate(v5, v11.f64);
    v9 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v7, v6, v8, *&v11, *&v12);
    CGColorRelease(v6);
    return v9;
  }

  else
  {

    return objc_msgSend_vfx_colorWithCFXColor_(a1, a2, a3, a4);
  }
}

CGColor *sub_1AF36FFB0(void *a1, const char *a2, uint64_t a3, BOOL *a4)
{
  v5 = a3;
  result = objc_msgSend_CGColor(a1, a2, a3, a4);
  v7 = result;
  if (result)
  {
    result = sub_1AF1645F0(result, v5);
    if (!a4)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return result;
  }

  *a4 = v7 != 0;
  return result;
}

uint64_t sub_1AF370010(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(a1, a2, a3, a4);
  v10 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF3700B8;
  v14[3] = &unk_1E7A7F9B8;
  v14[4] = v10;
  v14[5] = a3;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v11, v14, v12);
  return v10;
}

uint64_t sub_1AF3700B8(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 32);

    return objc_msgSend_addObject_(v6, v3, v5, v4);
  }

  return result;
}

double sub_1AF370110(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_valueForKey_(a1, a2, @"x", a4);
  objc_msgSend_floatValue(v5, v6, v7, v8);
  v25 = v9;
  v12 = objc_msgSend_valueForKey_(a1, v10, @"y", v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v24 = v16;
  v19 = objc_msgSend_valueForKey_(a1, v17, @"z", v18);
  objc_msgSend_floatValue(v19, v20, v21, v22);
  return COERCE_DOUBLE(__PAIR64__(v24, v25));
}

double sub_1AF370188(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_valueForKey_(a1, a2, @"x", a4);
  objc_msgSend_floatValue(v5, v6, v7, v8);
  v31 = v9;
  v12 = objc_msgSend_valueForKey_(a1, v10, @"y", v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v30 = v16;
  v19 = objc_msgSend_valueForKey_(a1, v17, @"z", v18);
  objc_msgSend_floatValue(v19, v20, v21, v22);
  v25 = objc_msgSend_valueForKey_(a1, v23, @"w", v24);
  objc_msgSend_floatValue(v25, v26, v27, v28);
  return COERCE_DOUBLE(__PAIR64__(v30, v31));
}

__n128 sub_1AF370220(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_valueForKey_(a1, a2, @"m11", a4);
  objc_msgSend_floatValue(v5, v6, v7, v8);
  v107 = v9;
  v12 = objc_msgSend_valueForKey_(a1, v10, @"m12", v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v106 = v16;
  v19 = objc_msgSend_valueForKey_(a1, v17, @"m13", v18);
  objc_msgSend_floatValue(v19, v20, v21, v22);
  v105 = v23;
  v26 = objc_msgSend_valueForKey_(a1, v24, @"m14", v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);
  *&v30 = __PAIR64__(v106, v107);
  *(&v30 + 1) = __PAIR64__(v31, v105);
  v108 = v30;
  v34 = objc_msgSend_valueForKey_(a1, v32, @"m21", v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v40 = objc_msgSend_valueForKey_(a1, v38, @"m22", v39);
  objc_msgSend_floatValue(v40, v41, v42, v43);
  v46 = objc_msgSend_valueForKey_(a1, v44, @"m23", v45);
  objc_msgSend_floatValue(v46, v47, v48, v49);
  v52 = objc_msgSend_valueForKey_(a1, v50, @"m24", v51);
  objc_msgSend_floatValue(v52, v53, v54, v55);
  v58 = objc_msgSend_valueForKey_(a1, v56, @"m31", v57);
  objc_msgSend_floatValue(v58, v59, v60, v61);
  v64 = objc_msgSend_valueForKey_(a1, v62, @"m32", v63);
  objc_msgSend_floatValue(v64, v65, v66, v67);
  v70 = objc_msgSend_valueForKey_(a1, v68, @"m33", v69);
  objc_msgSend_floatValue(v70, v71, v72, v73);
  v76 = objc_msgSend_valueForKey_(a1, v74, @"m34", v75);
  objc_msgSend_floatValue(v76, v77, v78, v79);
  v82 = objc_msgSend_valueForKey_(a1, v80, @"m41", v81);
  objc_msgSend_floatValue(v82, v83, v84, v85);
  v88 = objc_msgSend_valueForKey_(a1, v86, @"m42", v87);
  objc_msgSend_floatValue(v88, v89, v90, v91);
  v94 = objc_msgSend_valueForKey_(a1, v92, @"m43", v93);
  objc_msgSend_floatValue(v94, v95, v96, v97);
  v100 = objc_msgSend_valueForKey_(a1, v98, @"m44", v99);
  objc_msgSend_floatValue(v100, v101, v102, v103);
  return v108;
}

uint64_t sub_1AF370418(double a1, double a2, uint64_t a3, const char *a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  return objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], a4, v5, "{CGPoint=dd}");
}

double sub_1AF370450(void *a1, const char *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  objc_msgSend_getValue_size_(a1, a2, v3, 16);
  return *v3;
}

float32x2_t sub_1AF3704BC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objCType(a1, a2, a3, a4);
  if (!strcmp(v5, "{?=ff}"))
  {
    v13.f64[0] = 0.0;
    objc_msgSend_getValue_size_(a1, v6, &v13, 8);
    return *&v13.f64[0];
  }

  else
  {
    v9 = objc_msgSend_objCType(a1, v6, v7, v8);
    v10 = strcmp(v9, "{CGPoint=dd}");
    result = 0;
    if (!v10)
    {
      v13 = 0uLL;
      objc_msgSend_getValue_size_(a1, v11, &v13, 16, 0.0);
      return vcvt_f32_f64(v13);
    }
  }

  return result;
}

double sub_1AF370574(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objCType(a1, a2, a3, a4);
  if (!strcmp(v5, "{?=fff}"))
  {
    LODWORD(v14.f64[1]) = 0;
    v14.f64[0] = 0.0;
    objc_msgSend_getValue_size_(a1, v6, &v14, 12);
    *&v12 = v14.f64[0];
  }

  else
  {
    v9 = objc_msgSend_objCType(a1, v6, v7, v8);
    v10 = strcmp(v9, "{CGRect={CGPoint=dd}{CGSize=dd}}");
    v12 = 0uLL;
    if (!v10)
    {
      memset(&v14, 0, 32);
      objc_msgSend_getValue_size_(a1, v11, &v14, 32);
      *&v12 = vcvt_f32_f64(v14);
    }
  }

  return *&v12;
}

float64_t sub_1AF370640(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objCType(a1, a2, a3, a4);
  if (!strcmp(v5, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v13 = 0u;
    v14 = 0u;
    objc_msgSend_getValue_size_(a1, v6, &v13, 32);
    *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14).u64[0];
  }

  else
  {
    v9 = objc_msgSend_objCType(a1, v6, v7, v8);
    v10 = strcmp(v9, "{?=ffff}");
    result = 0.0;
    if (!v10)
    {
      v13 = 0uLL;
      objc_msgSend_getValue_size_(a1, v11, &v13, 16, 0.0);
      return v13.f64[0];
    }
  }

  return result;
}

uint64_t sub_1AF3706D8(void *a1, const char *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = vcvtq_f64_f32(*a3.f32);
  v9[1] = vcvt_hight_f64_f32(a3);
  v9[2] = vcvtq_f64_f32(*a4.f32);
  v9[3] = vcvt_hight_f64_f32(a4);
  v9[4] = vcvtq_f64_f32(*a5.f32);
  v9[5] = vcvt_hight_f64_f32(a5);
  v9[6] = vcvtq_f64_f32(*a6.f32);
  v9[7] = vcvt_hight_f64_f32(a6);
  return objc_msgSend_valueWithCATransform3D_(a1, a2, v9, a8);
}

double sub_1AF37072C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objCType(a1, a2, a3, a4);
  if (strcmp(v5, "{CATransform3D=dddddddddddddddd}"))
  {
    return *&VFXMatrix4Identity;
  }

  result = 0.0;
  if (a1)
  {
    objc_msgSend_CATransform3DValue(a1, v6, v7, v8);
    *&result = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0).u64[0];
  }

  return result;
}

__CFString *sub_1AF3707E0(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_floatValue(a1, v2, v3, v4);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"%.2f", v7, v5);
  }

  v9 = objc_msgSend_objCType(a1, v2, v3, v4);
  if (!strcmp(v9, "{?=ff}"))
  {
    *&v93 = 0;
    objc_msgSend_getValue_size_(a1, v10, &v93, 8);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"%.2f %.2f", v26, *&v93, *(&v93 + 1));
  }

  v13 = objc_msgSend_objCType(a1, v10, v11, v12);
  if (!strcmp(v13, "{?=fff}"))
  {
    DWORD2(v93) = 0;
    *&v93 = 0;
    objc_msgSend_getValue_size_(a1, v14, &v93, 12);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, @"%.2f %.2f %.2f", v28, *&v93, *(&v93 + 1), *(&v93 + 2));
  }

  v17 = objc_msgSend_objCType(a1, v14, v15, v16);
  if (!strcmp(v17, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v93 = 0u;
    v94 = 0u;
    objc_msgSend_getValue_size_(a1, v18, &v93, 32);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, @"%.2f %.2f %.2f %.2f", v30, v93, v94);
  }

  v21 = objc_msgSend_objCType(a1, v18, v19, v20);
  if (strcmp(v21, "{CATransform3D=dddddddddddddddd}"))
  {

    return objc_msgSend_description(a1, v22, v23, v24);
  }

  objc_msgSend_VFXMatrix4Value(a1, v22, v23, v24);
  v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
  v39 = vmulq_f32(v33, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
  v82 = (v39.f32[2] + vaddv_f32(*v39.f32)) < 0.0;
  v40 = 1.0;
  if (v82)
  {
    v40 = -1.0;
  }

  v41 = vmulq_f32(v33, v33);
  v42 = vmulq_f32(v34, v34);
  v43 = vadd_f32(vzip1_s32(*v41.i8, *v42.i8), vzip2_s32(*v41.i8, *v42.i8));
  v44 = vextq_s8(v41, v41, 8uLL);
  *v44.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v44.f32, *&vextq_s8(v42, v42, 8uLL)), v43));
  v45 = vmulq_f32(v35, v35);
  v44.i32[2] = sqrtf(v45.f32[2] + vaddv_f32(*v45.f32));
  v46 = vmulq_n_f32(v44, v40);
  v47 = vcltzq_f32(v46);
  v48 = vmvnq_s8(vorrq_s8(v47, vcgezq_f32(v46)));
  v48.i32[3] = v48.i32[2];
  v48.i32[0] = vmaxvq_u32(v48);
  v47.i32[0] = -1;
  v49 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v48, v47), 0), v46, 0);
  v50 = vceqzq_f32(v49);
  v50.i32[3] = v50.i32[2];
  if ((vmaxvq_u32(v50) & 0x80000000) != 0)
  {
    return @"non-affine matrix";
  }

  v51 = vdivq_f32(v33, vdupq_lane_s32(*v49.f32, 0));
  v52 = vdivq_f32(v34, vdupq_lane_s32(*v49.f32, 1));
  v53 = vdivq_f32(v35, vdupq_laneq_s32(v49, 2));
  v54 = vmulq_f32(v51, v51);
  v55 = vmulq_f32(v52, v52);
  v56 = vmulq_f32(v53, v53);
  v57 = vzip2q_s32(v54, v56);
  v58 = vzip1q_s32(vzip1q_s32(v54, v56), v55);
  v59 = vtrn2q_s32(v54, v55);
  v59.i32[2] = v56.i32[1];
  v60 = vaddq_f32(vzip1q_s32(v57, vdupq_laneq_s32(v55, 2)), vaddq_f32(v58, v59));
  v59.i64[0] = 0x80000000800000;
  v59.i64[1] = 0x80000000800000;
  v61 = vcgeq_f32(v59, v60);
  v60.i32[3] = 0;
  v62 = vrsqrteq_f32(v60);
  v63 = vmulq_f32(v62, vrsqrtsq_f32(v60, vmulq_f32(v62, v62)));
  v64 = v61;
  v64.i32[3] = 0;
  v65 = vbslq_s8(vcltzq_s32(v64), v60, vmulq_f32(v63, vrsqrtsq_f32(v60, vmulq_f32(v63, v63))));
  v66 = vmulq_n_f32(v51, v65.f32[0]);
  v67 = vmulq_lane_f32(v52, *v65.f32, 1);
  v68 = vmulq_laneq_f32(v53, v65, 2);
  v69 = vuzp1q_s32(v68, v68);
  v70 = vuzp1q_s32(v67, v67);
  v71 = v66;
  if (v61.i32[0])
  {
    v72 = vmlaq_f32(vmulq_f32(vextq_s8(v69, v68, 0xCuLL), vnegq_f32(v67)), v68, vextq_s8(v70, v67, 0xCuLL));
    v71 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
  }

  v73 = vuzp1q_s32(v66, v66);
  v74 = v67;
  if (v61.i32[1])
  {
    v75 = vmlaq_f32(vmulq_f32(vextq_s8(v73, v66, 0xCuLL), vnegq_f32(v68)), v66, vextq_s8(v69, v68, 0xCuLL));
    v74 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
  }

  if (v61.i32[2])
  {
    v76 = vmlaq_f32(vmulq_f32(vextq_s8(v70, v67, 0xCuLL), vnegq_f32(v66)), v67, vextq_s8(v73, v66, 0xCuLL));
    v68 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
  }

  v77 = (*v71.i32 + *&v74.i32[1]) + v68.f32[2];
  if (v77 <= 0.0)
  {
    v82 = *v71.i32 < *&v74.i32[1] || *v71.i32 < v68.f32[2];
    if (v82)
    {
      if (*&v74.i32[1] <= v68.f32[2])
      {
        v89 = vzip2q_s32(v71, v74).u64[0];
        v90 = __PAIR64__(v71.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v68.f32[2] + 1.0) - *v71.i32) - *&v74.i32[1])));
        v91 = vdup_lane_s32(*v74.i8, 0);
        v92 = vsub_f32(*v71.i8, v91);
        v91.i32[0] = v90.i32[0];
        v91.i32[0] = vmul_f32(v90, v91).u32[0];
        v91.i32[1] = v92.i32[1];
        *v79.f32 = vadd_f32(v89, *v68.f32);
        *&v79.u32[2] = v91;
        v80 = 0.5 / v90.f32[0];
        goto LABEL_25;
      }

      v84 = sqrtf(((*&v74.i32[1] + 1.0) - *v71.i32) - v68.f32[2]);
      v88.f32[0] = *&v71.i32[1] + *v74.i32;
      v83 = vzip2q_s32(v71, v74).u64[0];
      v88.f32[1] = v84 * v84;
      *&v88.u32[2] = vext_s8(vadd_f32(*v68.f32, v83), vsub_f32(*v68.f32, v83), 4uLL);
    }

    else
    {
      v84 = sqrtf(((*v71.i32 + 1.0) - *&v74.i32[1]) - v68.f32[2]);
      v88.f32[0] = v84 * v84;
      v85 = *&v71.i32[1] + *v74.i32;
      v86 = vzip2q_s32(v71, v74).u64[0];
      LODWORD(v87) = vadd_f32(v86, *v68.f32).u32[0];
      HIDWORD(v87) = vsub_f32(v86, *&v68).i32[1];
      v88.f32[1] = v85;
      v88.i64[1] = v87;
    }

    v81 = vmulq_n_f32(v88, 0.5 / v84);
    goto LABEL_35;
  }

  v78 = sqrtf(v77 + 1.0);
  *v79.f32 = vsub_f32(*&vzip2q_s32(v74, vuzp1q_s32(v74, v68)), *&vtrn2q_s32(v68, vzip2q_s32(v68, v71)));
  v79.f32[2] = *&v71.i32[1] - *v74.i32;
  v79.f32[3] = v78 * v78;
  v80 = 0.5 / v78;
LABEL_25:
  v81 = vmulq_n_f32(v79, v80);
LABEL_35:
  result = @"non-affine matrix";
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v81, v81))) & 0x80000000) == 0 && (v48.i32[0] & 0x80000000) == 0)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"p[%.2f %.2f %.2f] q[%.2f %.2f %.2f %.2f] s[%.2f %.2f %.2f]", v32, *&v36, *(&v36 + 1), v37, v81.f32[0], v81.f32[1], v81.f32[2], v81.f32[3], v49.f32[0], v49.f32[1], v49.f32[2]);
  }

  return result;
}

uint64_t sub_1AF370D38(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v6 = objc_msgSend_objCType(a1, v2, v3, v4);
  if (!strcmp(v6, "{CGPoint=dd}"))
  {
    return 2;
  }

  v10 = objc_msgSend_objCType(a1, v7, v8, v9);
  if (!strcmp(v10, "{?=ff}"))
  {
    return 2;
  }

  v14 = objc_msgSend_objCType(a1, v11, v12, v13);
  if (!strcmp(v14, "{?=fff}"))
  {
    return 3;
  }

  v18 = objc_msgSend_objCType(a1, v15, v16, v17);
  if (!strcmp(v18, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 4;
  }

  v22 = objc_msgSend_objCType(a1, v19, v20, v21);
  if (!strcmp(v22, "{?=ffff}"))
  {
    return 4;
  }

  v26 = objc_msgSend_objCType(a1, v23, v24, v25);
  return 16 * (strcmp(v26, "{CATransform3D=dddddddddddddddd}") == 0);
}

id sub_1AF370E2C(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_length(a3, a2, a3, a4);
  if (v6 == 3)
  {
    v33 = objc_msgSend_objCType(a1, v7, v8, v9);
    if (!strcmp(v33, "{CATransform3D=dddddddddddddddd}"))
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      if (a1)
      {
        objc_msgSend_CATransform3DValue(a1, v34, v35, v36);
      }

      v38 = objc_msgSend_characterAtIndex_(a3, v34, 1, v36);
      v41 = objc_msgSend_characterAtIndex_(a3, v39, 2, v40);
      if ((v38 - 53) >= 0xFFFFFFFC && (v41 - 53) > 0xFFFFFFFB)
      {
        return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v42, v43, v44, *(&v53 + (v41 + 4 * v38 - 245)));
      }
    }

    goto LABEL_13;
  }

  if (v6 != 1 || (v10 = objc_msgSend_characterAtIndex_(a3, v7, 0, v9), (v10 & 0xFFFC) != 0x78))
  {
LABEL_13:
    v52.receiver = a1;
    v52.super_class = &off_1F2613378;
    return objc_msgSendSuper2(&v52, sel_valueForUndefinedKey_, a3);
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = objc_msgSend_objCType(a1, v12, v13, v14);
    if (!strcmp(v15, "{?=ff}"))
    {
      *&v53 = 0;
      objc_msgSend_getValue_size_(a1, v16, &v53, 8);
      v49 = MEMORY[0x1E696AD98];
      v50 = &v53 + 4;
      if (v11 == 120)
      {
        v50 = &v53;
      }
    }

    else
    {
      v19 = objc_msgSend_objCType(a1, v16, v17, v18);
      if (!strcmp(v19, "{CGPoint=dd}"))
      {
        v53 = 0uLL;
        objc_msgSend_getValue_size_(a1, v20, &v53, 16);
        v49 = MEMORY[0x1E696AD98];
        if (v11 == 120)
        {
          v51 = &v53;
        }

        else
        {
          v51 = &v53 + 1;
        }

        v48 = *v51;
        *&v48 = *v51;
        return objc_msgSend_numberWithFloat_(v49, v45, v46, v47, v48);
      }

      v23 = objc_msgSend_objCType(a1, v20, v21, v22);
      if (strcmp(v23, "{?=fff}"))
      {
        v27 = objc_msgSend_objCType(a1, v24, v25, v26);
        if (!strcmp(v27, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
        {
          v53 = 0u;
          v54 = 0u;
          objc_msgSend_getValue_size_(a1, v28, &v53, 32);
          if (v11 > 121)
          {
            if (v11 == 122)
            {
              return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, v31, *&v54);
            }

            else
            {
              return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, v31, *(&v54 + 1));
            }
          }

          else if (v11 == 120)
          {
            return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, v31, *&v53);
          }

          else
          {
            return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, v31, *(&v53 + 1));
          }
        }

        goto LABEL_13;
      }

      DWORD2(v53) = 0;
      *&v53 = 0;
      objc_msgSend_getValue_size_(a1, v24, &v53, 12);
      v49 = MEMORY[0x1E696AD98];
      if (v11 == 120)
      {
        LODWORD(v48) = v53;
        return objc_msgSend_numberWithFloat_(v49, v45, v46, v47, v48);
      }

      v50 = &v53 + 4;
      if (v11 != 122)
      {
        v50 = &v53 + 8;
      }
    }

    LODWORD(v48) = *v50;
    return objc_msgSend_numberWithFloat_(v49, v45, v46, v47, v48);
  }

  return a1;
}

CFTypeRef sub_1AF3710D4(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != CGColorGetTypeID())
  {
    return cf;
  }

  v5 = MEMORY[0x1E69DC888];

  return objc_msgSend_colorWithCGColor_(v5, v3, cf, v4);
}

double sub_1AF37113C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = objc_msgSend_stringByResolvingSymlinksInPath(a1, a2, a3, a4);
  v18 = 0;
  v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6, v7);
  v10 = objc_msgSend_attributesOfItemAtPath_error_(v8, v9, v4, &v18);
  v13 = objc_msgSend_objectForKey_(v10, v11, *MEMORY[0x1E696A350], v12);
  if (!v13)
  {
    return 0.0;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(v13, v14, v15, v16);
  return result;
}

uint64_t sub_1AF3711B4(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  v7 = sub_1AF288070(a2) + a3;
  v8 = malloc_type_malloc(v7, 0xA909A235uLL);
  v10 = v8;
  if (a3)
  {
    *v8 = a2;
  }

  sub_1AF376368(a1, &v8[v6], a2, v9);
  v12 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v12, v11, v10, v7, 1);
}

uint64_t VFXDataFromValue(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2;
  v6 = objc_msgSend_objCType(a1, a2, a3, a4);
  v7 = sub_1AF376144(v6);
  if (!v7)
  {
    return 0;
  }

  return sub_1AF3711B4(a1, v7, v4);
}

void *sub_1AF3712AC(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    v7 = objc_msgSend_bytes(result, a2, a3, a4);
    v11 = objc_msgSend_length(v6, v8, v9, v10);
    if (sub_1AF288070(a2) + a3 <= v11)
    {
      sub_1AF288070(a2);
      __memcpy_chk();
      return sub_1AF376790((v7 + a3), a2, v15, v13, v14);
    }

    else
    {
      if ((byte_1EB658E88 & 1) == 0)
      {
        byte_1EB658E88 = 1;
        v12 = sub_1AF0D5194();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFAF10();
        }
      }

      return 0;
    }
  }

  return result;
}

void *VFXValueFromData(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    v5 = *objc_msgSend_bytes(result, a2, a3, a4);

    return sub_1AF3712AC(v4, v5, 1, v6);
  }

  return result;
}

uint64_t VFXDataFromArrayOfValues(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(a1, a2, a3, a4);
  if (result)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(a1, v6, 0, v7);
    v12 = sub_1AF37673C(v8, v9, v10, v11);
    v13 = sub_1AF1CDAAC(v12);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1AF1CDB3C(v12);
      CFRelease(v12);
      v19 = objc_msgSend_count(a1, v16, v17, v18) * v15 + 6;
      v20 = malloc_type_malloc(v19, 0x2C9D45A8uLL);
      *v20 = objc_msgSend_count(a1, v21, v22, v23);
      v20[2] = v14;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v24, &v34, v38, 16);
      if (v25)
      {
        v28 = v25;
        v29 = (v20 + 3);
        v30 = *v35;
        do
        {
          v31 = 0;
          do
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(a1);
            }

            sub_1AF376368(*(*(&v34 + 1) + 8 * v31), v29, v14, v27);
            v29 += v15;
            ++v31;
          }

          while (v28 != v31);
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v32, &v34, v38, 16);
        }

        while (v28);
      }

      return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v26, v20, v19, 1);
    }

    else
    {
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFAF44();
      }

      CFRelease(v12);
      return 0;
    }
  }

  return result;
}

void *VFXArrayOfValueFromData(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bytes(a1, a2, a3, a4);
  v6 = *(v5 + 2);
  if (!*(v5 + 2))
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAFAC();
    }

    return 0;
  }

  v7 = v5;
  v8 = *v5;
  v9 = sub_1AF288070(*(v5 + 2));
  if (v9 * v8 + 6 != objc_msgSend_length(a1, v10, v11, v12))
  {
    v24 = sub_1AF0D5194();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAF78();
    }

    return 0;
  }

  v15 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v13, v8, v14);
  if (v8)
  {
    v16 = v7 + 6;
    do
    {
      memset(v26, 0, sizeof(v26));
      __memcpy_chk();
      v20 = sub_1AF376790(v26, v6, v19, v17, v18);
      v16 += v9;
      objc_msgSend_addObject_(v15, v21, v20, v22);
      LODWORD(v8) = v8 - 1;
    }

    while (v8);
  }

  return v15;
}

BOOL sub_1AF3716AC(void *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v7 = objc_msgSend_rangeOfString_(a1, a2, @".", a4);
  v9 = v8;
  if (v8 == 1)
  {
    v10 = v7;
    *a2 = objc_msgSend_substringWithRange_(a1, 1, 0, v7);
    v14 = objc_msgSend_length(a1, v11, v12, v13);
    v16 = objc_msgSend_substringWithRange_(a1, v15, v10 + 1, v14 + ~v10);
  }

  else
  {
    v16 = 0;
    *a2 = a1;
  }

  *a3 = v16;
  return v9 == 1;
}

const void *sub_1AF37174C(void *a1, uint64_t a2)
{
  v4 = sub_1AF1C4990();
  v5 = sub_1AF1C4A5C(v4, a1, 1, a2);
  v6 = v5;
  if (v5)
  {
    CFAutorelease(v5);
  }

  return v6;
}

uint64_t sub_1AF371798(const void *a1, uint64_t a2)
{
  v3 = sub_1AF3710D4(a1);

  return objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(v3, v4, a2, 0);
}

double CFXColorGetLinearExtendedSRGBComponents(const void *a1)
{
  v1 = sub_1AF3710D4(a1);
  v5 = objc_msgSend_CGColor(v1, v2, v3, v4);
  if (!v5)
  {
    return 0.0;
  }

  return sub_1AF1644C8(v5);
}

uint64_t sub_1AF371824(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"directional", a4))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1, v5, @"spot", v6))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1, v8, @"omni", v9))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1, v10, @"ambient", v11))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1, v12, @"area", v13))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1, v14, @"ies", v15))
  {
    return 6;
  }

  if ((objc_msgSend_isEqualToString_(a1, v16, @"probe", v17) & 1) == 0)
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAFE0(a1, v18);
    }

    return 2;
  }

  return 4;
}

uint64_t sub_1AF371924(void *a1, CFTypeRef cf, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF3710D4(cf);
  v9 = objc_msgSend_CGColor(v5, v6, v7, v8);
  if (v9)
  {
    *&v11 = sub_1AF1644C8(v9);
  }

  else
  {
    v11 = xmmword_1AFE201A0;
  }

  v13 = v11;
  return objc_msgSend_encodeBytes_length_forKey_(a1, v10, &v13, 16, a3);
}

uint64_t sub_1AF3719B4(void *a1, const char *a2)
{
  v10 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v10);
  v3 = 0uLL;
  if (v10 == 16)
  {
    v3 = *v2;
  }

  v4 = sub_1AF16484C(v3);
  if (!v4)
  {
    return 0;
  }

  v7 = v4;
  v8 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v5, v4, v6);
  CFRelease(v7);
  return v8;
}

uint64_t sub_1AF371A30(void *a1, const char *a2, double a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = a3;
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, v4, 8, a2);
}

uint64_t sub_1AF371A8C(void *a1, const char *a2, __n128 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3.n128_u64[0];
  v5 = a3.n128_u32[2];
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, &v4, 12, a2);
}

uint64_t sub_1AF371AF4(void *a1, const char *a2, __n128 a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, &v4, 16, a2);
}

uint64_t sub_1AF371B50(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, v7, 64, a2);
}

double sub_1AF371B84(void *a1, const char *a2)
{
  v4 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v4);
  result = 0.0;
  if (v4 == 8)
  {
    return *v2;
  }

  return result;
}

double sub_1AF371BC4(void *a1, const char *a2)
{
  v4 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v4);
  result = 0.0;
  if (v4 == 12)
  {
    return *v2;
  }

  return result;
}

__n128 sub_1AF371C0C(void *a1, const char *a2)
{
  v4 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v4);
  result.n128_u64[0] = 0;
  if (v4 == 16)
  {
    return *v2;
  }

  return result;
}

__n128 sub_1AF371C4C(void *a1, const char *a2)
{
  v5 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v5);
  if (v5 == 64)
  {
    v3 = v2;
  }

  else
  {
    v3 = &VFXMatrix4Identity;
  }

  return *v3;
}

uint64_t sub_1AF371C94(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v7 = *a2;
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, *a2, v9);
  objc_msgSend_setValue_forKey_(v6, v11, v10, @"type");
  v12 = *(a2 + 1);
  v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15);
  if (v7 > 1)
  {
    switch(v7)
    {
      case 2:
        v23 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v16, v17, v18, *v12, v12[1]);
        objc_msgSend_addObject_(v19, v24, v23, v25);
        v20 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v26, v27, v28, v12[2], v12[3]);
        break;
      case 3:
        v29 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v16, v17, v18, *v12, v12[1]);
        objc_msgSend_addObject_(v19, v30, v29, v31);
        v35 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v32, v33, v34, v12[2], v12[3]);
        objc_msgSend_addObject_(v19, v36, v35, v37);
        v20 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v38, v39, v40, v12[4], v12[5]);
        break;
      case 4:
        goto LABEL_11;
      default:
        goto LABEL_12;
    }

LABEL_10:
    objc_msgSend_addObject_(v19, v21, v20, v22);
    goto LABEL_11;
  }

  if (v7 <= 1)
  {
    v20 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v16, v17, v18, *v12, v12[1]);
    goto LABEL_10;
  }

LABEL_12:
  v44 = sub_1AF0D5194();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 0;
    _os_log_impl(&dword_1AF0CE000, v44, OS_LOG_TYPE_DEFAULT, "Warning: CGPath archiving: unknown path element type", v45, 2u);
  }

LABEL_11:
  objc_msgSend_setValue_forKey_(v6, v16, v19, @"points");
  return objc_msgSend_addObject_(a1, v41, v6, v42);
}

CGPath *sub_1AF371E30(void *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v75, v79, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v76;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v76 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v75 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKey_(v10, v5, @"type", v6);
        v15 = objc_msgSend_intValue(v11, v12, v13, v14);
        v18 = objc_msgSend_objectForKey_(v10, v16, @"points", v17);
        v19 = v18;
        if (v15 <= 1)
        {
          if (v15)
          {
            if (v15 == 1)
            {
              v20 = objc_msgSend_objectAtIndex_(v18, v5, 0, v6);
              objc_msgSend_VFX_CGPointValue(v20, v21, v22, v23);
              CGPathAddLineToPoint(Mutable, 0, v24, v25);
            }
          }

          else
          {
            v68 = objc_msgSend_objectAtIndex_(v18, v5, 0, v6);
            objc_msgSend_VFX_CGPointValue(v68, v69, v70, v71);
            CGPathMoveToPoint(Mutable, 0, v72, v73);
          }
        }

        else
        {
          switch(v15)
          {
            case 2:
              v26 = objc_msgSend_objectAtIndex_(v18, v5, 0, v6);
              objc_msgSend_VFX_CGPointValue(v26, v27, v28, v29);
              v31 = v30;
              v33 = v32;
              v36 = objc_msgSend_objectAtIndex_(v19, v34, 1, v35);
              objc_msgSend_VFX_CGPointValue(v36, v37, v38, v39);
              CGPathAddQuadCurveToPoint(Mutable, 0, v31, v33, v40, v41);
              break;
            case 3:
              v42 = objc_msgSend_objectAtIndex_(v18, v5, 0, v6);
              objc_msgSend_VFX_CGPointValue(v42, v43, v44, v45);
              v47 = v46;
              v49 = v48;
              v52 = objc_msgSend_objectAtIndex_(v19, v50, 1, v51);
              objc_msgSend_VFX_CGPointValue(v52, v53, v54, v55);
              v57 = v56;
              v59 = v58;
              v62 = objc_msgSend_objectAtIndex_(v19, v60, 2, v61);
              objc_msgSend_VFX_CGPointValue(v62, v63, v64, v65);
              CGPathAddCurveToPoint(Mutable, 0, v47, v49, v57, v59, v66, v67);
              break;
            case 4:
              CGPathCloseSubpath(Mutable);
              break;
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v5, &v75, v79, 16);
    }

    while (v7);
  }

  return Mutable;
}

uint64_t sub_1AF3720AC(uint64_t result, const char *a2, _DWORD *a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = result;
    v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
    CGPathApply(a2, v8, sub_1AF371C94);
    if (a3)
    {
      v16[1] = @"flatness";
      v17[0] = v8;
      v16[0] = @"path";
      LODWORD(v12) = *a3;
      v17[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v9, v10, v11, v12);
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v17, v16, 2);
      return objc_msgSend_encodeObject_forKey_(v7, v15, v14, a4);
    }

    else
    {

      return objc_msgSend_encodeObject_forKey_(v7, v9, v8, a4);
    }
  }

  return result;
}

uint64_t sub_1AF3721F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_flatness(a2, a2, a3, a4);
  *&v7 = v7;
  v13 = LODWORD(v7);
  v11 = objc_msgSend_CGPath(a2, v8, v9, v10);
  return sub_1AF3720AC(a1, v11, &v13, a3);
}

CGPath *sub_1AF372254(void *a1, uint64_t a2)
{
  result = sub_1AF37228C(a1, a2, 0);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CGPath *sub_1AF37228C(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v6, v11, v7, v12, v8, v9, v10, 0);
  v15 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v14, v13, a2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a3)
      {
        v18 = objc_msgSend_valueForKey_(v15, v16, @"flatness", v17);
        objc_msgSend_floatValue(v18, v19, v20, v21);
        *a3 = v22;
      }

      v15 = objc_msgSend_valueForKey_(v15, v16, @"path", v17);
    }

    else
    {
      v15 = 0;
    }
  }

  return sub_1AF371E30(v15);
}

void *sub_1AF3723C4(void *a1, uint64_t a2)
{
  v11 = -1.0;
  v2 = sub_1AF37228C(a1, a2, &v11);
  if (!v2)
  {
    return 0;
  }

  v5 = v2;
  v6 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x1E69DC728], v3, v2, v4);
  CFRelease(v5);
  if (v11 >= 0.0)
  {
    objc_msgSend_setFlatness_(v6, v7, v8, v9, v11);
  }

  return v6;
}

uint64_t sub_1AF372440(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a2, a2, a3, a4);
  result = sub_1AF16CCC0(v5);
  if (result)
  {

    return objc_msgSend_encodeObject_forKey_(a1, v7, result, @"entityID");
  }

  return result;
}

CFTypeRef sub_1AF37249C(void *a1, void *a2)
{
  v4 = objc_opt_class();
  result = objc_msgSend_decodeObjectOfClass_forKey_(a1, v5, v4, @"entityID");
  if (result)
  {
    v10 = result;
    v11 = objc_msgSend___CFObject(a2, v7, v8, v9);

    return sub_1AF16CD6C(v11, v10);
  }

  return result;
}

void sub_1AF372510(void *a1, void *a2, const char *a3, uint64_t a4)
{
  v11 = objc_msgSend_textureType(a2, a2, a3, a4);
  if (a3 && objc_msgSend_mipmapLevelCount(a2, v8, v9, v10) > 1 || VFXMTLTextureTypeIsCube(v11) || VFXMTLTextureTypeIsArray(v11))
  {
    v16 = sub_1AF1F3328(a2, a3, v12, v13);
    if (v16)
    {
      objc_msgSend_encodeObject_forKey_(a1, v15, v16, a4);
    }
  }

  else
  {
    v17 = sub_1AF1F2C7C(a2, v14, v12, v13);
    Mutable = CFDataCreateMutable(0, 0);
    v22 = objc_msgSend_identifier(*MEMORY[0x1E6982E00], v19, v20, v21);
    v23 = CGImageDestinationCreateWithData(Mutable, v22, 1uLL, 0);
    CGImageDestinationAddImage(v23, v17, 0);
    CGImageDestinationFinalize(v23);
    CFRelease(v23);
    objc_msgSend_encodeObject_forKey_(a1, v24, Mutable, a4);
    CFRelease(Mutable);
    CFRelease(v17);
  }
}

void sub_1AF372628(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);

  objc_end_catch();
}

uint64_t sub_1AF37266C(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, a2, 1, 0);
  if (result)
  {
    return objc_msgSend_encodeObject_forKey_(a1, v6, result, a3);
  }

  return result;
}

uint64_t sub_1AF3726E8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_setByAddingObject_(v3, v7, v6, v8);
  }

  else
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v9 = objc_msgSend_setWithObject_(v11, v13, v12, v14);
  }

  v15 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v10, v9, a2);
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_requiresSecureCoding(a1, v16, v17, v18))
      {
        v20 = objc_alloc(MEMORY[0x1E696ACD0]);
        v23 = objc_msgSend_initForReadingFromData_error_(v20, v21, v15, 0);
        if (!v3)
        {
          if (qword_1ED737C38 != -1)
          {
            sub_1AFDFB058();
          }

          v3 = qword_1ED737C30;
        }

        v15 = objc_msgSend_vfx_decodeObjectOfClasses_forKey_(v23, v22, v3, *MEMORY[0x1E696A508]);
        objc_msgSend_finishDecoding(v23, v24, v25, v26);
      }

      else
      {
        return objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v19, v3, v15, 0);
      }
    }
  }

  return v15;
}

void sub_1AF372820(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB06C(v2, v3);
    }

    objc_end_catch();
    JUMPOUT(0x1AF372800);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF37287C()
{
  if (qword_1ED737C38 != -1)
  {
    sub_1AFDFB058();
  }

  return qword_1ED737C30;
}

void *sub_1AF3728B4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_animationKeys(a2, a2, a3, a4);
  if (v5)
  {
    v9 = v5;
    if (objc_msgSend_count(v5, v6, v7, v8))
    {
      v10 = MEMORY[0x1E695DF70];
      v11 = objc_msgSend_count(v9, v6, v7, v8);
      v14 = objc_msgSend_arrayWithCapacity_(v10, v12, v11, v13);
      v15 = MEMORY[0x1E695DF70];
      v19 = objc_msgSend_count(v9, v16, v17, v18);
      v22 = objc_msgSend_arrayWithCapacity_(v15, v20, v19, v21);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v23, &v75, v82, 16);
      if (v24)
      {
        v28 = v24;
        v29 = *v76;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v76 != v29)
            {
              objc_enumerationMutation(v9);
            }

            v31 = *(*(&v75 + 1) + 8 * i);
            v32 = objc_msgSend_animationPlayerForKey_(a2, v25, v31, v27);
            objc_msgSend_addObject_(v22, v33, v31, v34);
            objc_msgSend_addObject_(v14, v35, v32, v36);
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v75, v82, 16);
        }

        while (v28);
      }

      if (objc_msgSend_count(v22, v25, v26, v27))
      {
        objc_msgSend_encodeObject_forKey_(a1, v6, v14, @"animation-players");
        objc_msgSend_encodeObject_forKey_(a1, v37, v22, @"animation-keys");
      }
    }
  }

  result = objc_msgSend__vfxBindings(a2, v6, v7, v8);
  if (result)
  {
    v42 = result;
    v43 = MEMORY[0x1E695DF70];
    v44 = objc_msgSend_count(result, v39, v40, v41);
    v47 = objc_msgSend_arrayWithCapacity_(v43, v45, v44, v46);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v48, &v71, v81, 16);
    if (v49)
    {
      v52 = v49;
      v53 = *v72;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v42);
          }

          v55 = objc_msgSend_valueForKey_(v42, v50, *(*(&v71 + 1) + 8 * j), v51);
          if (objc_msgSend_sourceObject(v55, v56, v57, v58))
          {
            v79[0] = @"sourceObject";
            v80[0] = objc_msgSend_sourceObject(v55, v50, v59, v51);
            v79[1] = @"keyPathSrc";
            v80[1] = objc_msgSend_keyPathSrc(v55, v60, v61, v62);
            v79[2] = @"keyPathDst";
            v80[2] = objc_msgSend_keyPathDst(v55, v63, v64, v65);
            v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v66, v80, v79, 3);
            objc_msgSend_addObject_(v47, v68, v67, v69);
          }
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v50, &v71, v81, 16);
      }

      while (v52);
    }

    return objc_msgSend_encodeObject_forKey_(a1, v50, v47, @"bindings");
  }

  return result;
}

void *sub_1AF372B94(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v6 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a1, v5, v4, @"animation-keys");
  v7 = objc_opt_class();
  v9 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a1, v8, v7, @"animation-players");
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v41, v46, 16);
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = objc_msgSend_objectAtIndex_(v9, v12, v15, v13);
        if (v19)
        {
          objc_msgSend_addAnimationPlayer_forKey_(a2, v12, v19, v18);
        }

        ++v15;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v41, v46, 16);
    }

    while (v14);
  }

  if (qword_1ED737C38 != -1)
  {
    sub_1AFDFB0E4();
  }

  result = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_containingNestedContainersForKey_(a1, v12, qword_1ED737C30, @"bindings");
  obj = result;
  if (result)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v21, &v37, v45, 16);
    if (result)
    {
      v24 = result;
      v25 = *v38;
      do
      {
        v26 = 0;
        do
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v37 + 1) + 8 * v26);
          v28 = objc_msgSend_objectForKeyedSubscript_(v27, v22, @"sourceObject", v23);
          v31 = objc_msgSend_objectForKeyedSubscript_(v27, v29, @"keyPathSrc", v30);
          v34 = objc_msgSend_objectForKeyedSubscript_(v27, v32, @"keyPathDst", v33);
          objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(a2, v35, v34, v28, v31, 0);
          v26 = v26 + 1;
        }

        while (v24 != v26);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v37, v45, 16);
        v24 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1AF372E08(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_path(a1, a2, a3, a4);
  v8 = objc_msgSend_rangeOfString_(v5, v6, @".app/Contents/", v7);
  if (!v9 || (v12 = objc_msgSend_substringFromIndex_(v5, v9, &v9[v8], v11)) == 0)
  {
    v12 = objc_msgSend_path(a1, v9, v10, v11);
    if (!v12)
    {
      return 0;
    }
  }

  v13 = v12;
  v14 = objc_msgSend_pathComponents(v12, v9, v10, v11);
  v18 = objc_msgSend_count(v14, v15, v16, v17);
  if (!v18)
  {
    return 0;
  }

  v22 = v18;
  v64 = a1;
  v23 = VFXGetResourceBundle(v18, v19, v20, v21);
  PathComponent = objc_msgSend_lastPathComponent(v13, v24, v25, v26);
  v31 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v28, v29, v30);
  v35 = objc_msgSend_pathExtension(v13, v32, v33, v34);
  v39 = v22 - 1;
  if (v22 == 1)
  {
LABEL_12:
    v51 = MEMORY[0x1E69DCAB8];
    v52 = objc_msgSend_lastPathComponent(v64, v36, v37, v38);
    v55 = objc_msgSend_imageNamed_(v51, v53, v52, v54);
  }

  else
  {
    v40 = v35;
    v41 = 0;
    while (1)
    {
      v44 = objc_msgSend_count(v14, v36, v37, v38) - 1;
      v45 = &stru_1F2575650;
      if (v44 > v41)
      {
        v46 = v41;
        v45 = &stru_1F2575650;
        do
        {
          v47 = objc_msgSend_objectAtIndex_(v14, v42, v46, v43);
          v45 = objc_msgSend_stringByAppendingPathComponent_(v45, v48, v47, v49);
          ++v46;
        }

        while (v44 != v46);
      }

      v50 = objc_msgSend_pathForResource_ofType_inDirectory_(v23, v42, v31, v40, v45);
      if (v50)
      {
        break;
      }

      if (++v41 == v39)
      {
        goto LABEL_12;
      }
    }

    v60 = v50;
    v61 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v55 = objc_msgSend_initWithContentsOfFile_(v61, v62, v60, v63);
  }

  return objc_msgSend_CGImage(v55, v56, v57, v58);
}

void *VFXResolveImageContents(void *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = a1;
    a1 = 0;
    v8 = objc_msgSend_scheme(v7, v4, v5, v6);
  }

  else
  {
    objc_opt_class();
    v7 = 0;
    v14 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v14;
    }

    v8 = objc_msgSend_scheme(0, v11, v12, v13);
  }

  if (objc_msgSend_isEqualToString_(v8, v9, @"imageNamed", v10))
  {
    v18 = objc_msgSend_absoluteString(v7, v15, v16, v17);
  }

  else
  {
    if (a1)
    {
      goto LABEL_10;
    }

    if (!objc_msgSend_isFileURL(v7, v15, v16, v17) || objc_msgSend_query(v7, v15, v19, v17))
    {
      goto LABEL_22;
    }

    v18 = objc_msgSend_path(v7, v15, v19, v17);
  }

  a1 = v18;
  if (!v18)
  {
LABEL_22:
    a1 = 0;
    if (!v7)
    {
      return 0;
    }

    v51 = 0;
    goto LABEL_24;
  }

LABEL_10:
  if (objc_msgSend_hasPrefix_(a1, v15, @"imageNamed://", v17))
  {
    v22 = objc_msgSend_substringFromIndex_(a1, v20, 13, v21);
    v25 = objc_msgSend_imageNamed_(MEMORY[0x1E69DCAB8], v23, v22, v24);
    if (v25)
    {
      return v25;
    }

    else
    {
      return v22;
    }
  }

  v26 = objc_msgSend_rangeOfString_(a1, v20, @".app/Contents/", v21);
  if (v27)
  {
    v26 = objc_msgSend_substringFromIndex_(a1, v27, &v27[v26], v29);
    if (v26)
    {
      v30 = v26;
      v31 = VFXGetResourceBundle(v26, v27, v28, v29);
      v35 = objc_msgSend_stringByDeletingPathExtension(v30, v32, v33, v34);
      v39 = objc_msgSend_pathExtension(v30, v36, v37, v38);
      v26 = objc_msgSend_URLForResource_withExtension_(v31, v40, v35, v39);
      if (v26)
      {
        return v26;
      }
    }
  }

  v41 = VFXGetResourceBundle(v26, v27, v28, v29);
  v45 = objc_msgSend_stringByDeletingPathExtension(a1, v42, v43, v44);
  v49 = objc_msgSend_pathExtension(a1, v46, v47, v48);
  v26 = objc_msgSend_URLForResource_withExtension_(v41, v50, v45, v49);
  if (v26)
  {
    return v26;
  }

  if (v7)
  {
    v51 = 1;
LABEL_24:
    if (!objc_msgSend_isFileURL(v7, v15, v19, v17))
    {
      return v7;
    }

    v55 = objc_msgSend_query(v7, v52, v53, v54);
    if (v55)
    {
      return v7;
    }

    v59 = 0;
    v14 = v7;
    goto LABEL_31;
  }

  v55 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v15, a1, v17);
  v14 = v55;
  v59 = 1;
  v51 = 1;
LABEL_31:
  v60 = VFXGetResourceBundle(v55, v56, v57, v58);
  PathComponent = objc_msgSend_lastPathComponent(v14, v61, v62, v63);
  v68 = objc_msgSend_pathExtension(v14, v65, v66, v67);
  v26 = objc_msgSend_URLForResource_withExtension_(v60, v69, PathComponent, v68);
  if (v26)
  {
    return v26;
  }

  if ((objc_msgSend_checkResourceIsReachableAndReturnError_(v14, v70, 0, v71) & 1) == 0)
  {
    v75 = v51 ^ 1;
    if (!a2)
    {
      v75 = 1;
    }

    if ((v75 & 1) != 0 || ((v76 = objc_msgSend_URLByAppendingPathComponent_(a2, v73, a1, v74), v80 = objc_msgSend_URLByStandardizingPath(v76, v77, v78, v79), v80 == v76) || (v14 = v80, (objc_msgSend_checkResourceIsReachableAndReturnError_(v80, v81, 0, v82) & 1) == 0)) && (v14 = v76, (objc_msgSend_checkResourceIsReachableAndReturnError_(v76, v81, 0, v82) & 1) == 0) && ((v86 = objc_msgSend_lastPathComponent(a1, v83, v84, v85), v89 = objc_msgSend_URLByAppendingPathComponent_(a2, v87, v86, v88), v93 = objc_msgSend_URLByStandardizingPath(v89, v90, v91, v92), v93 == v89) || (v14 = v93, (objc_msgSend_checkResourceIsReachableAndReturnError_(v93, v94, 0, v95) & 1) == 0)) && (v14 = v89, (objc_msgSend_checkResourceIsReachableAndReturnError_(v89, v94, 0, v95) & 1) == 0))
    {
      if (v59)
      {
        return a1;
      }

      else
      {
        return v7;
      }
    }
  }

  return v14;
}

id sub_1AF3732A8(id result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_msgSend_valueForKey_(v1, v2, @"type", v3);
      if (objc_msgSend_isEqualToString_(v4, v5, @"MDLSkyCubeTexture", v6))
      {
        v9 = objc_alloc(MEMORY[0x1E6974BC0]);
        v12 = objc_msgSend_objectForKeyedSubscript_(v1, v10, @"name", v11);
        v15 = objc_msgSend_objectForKeyedSubscript_(v1, v13, @"channelEncoding", v14);
        v19 = objc_msgSend_integerValue(v15, v16, v17, v18);
        v22 = objc_msgSend_objectForKeyedSubscript_(v1, v20, @"dimensions.x", v21);
        objc_msgSend_floatValue(v22, v23, v24, v25);
        v162 = v26;
        v29 = objc_msgSend_objectForKeyedSubscript_(v1, v27, @"dimensions.x", v28);
        objc_msgSend_floatValue(v29, v30, v31, v32);
        v34 = COERCE_DOUBLE(vcvt_s32_f32(__PAIR64__(v33, v162)));
        v37 = objc_msgSend_objectForKeyedSubscript_(v1, v35, @"turbidity", v36);
        objc_msgSend_floatValue(v37, v38, v39, v40);
        v42 = v41;
        v45 = objc_msgSend_objectForKeyedSubscript_(v1, v43, @"sunElevation", v44);
        objc_msgSend_floatValue(v45, v46, v47, v48);
        v50 = v49;
        v53 = objc_msgSend_objectForKeyedSubscript_(v1, v51, @"upperAtmosphereScattering", v52);
        objc_msgSend_floatValue(v53, v54, v55, v56);
        v58 = v57;
        v61 = objc_msgSend_objectForKeyedSubscript_(v1, v59, @"groundAlbedo", v60);
        objc_msgSend_floatValue(v61, v62, v63, v64);
        LODWORD(v66) = v65;
        LODWORD(v67) = v42;
        LODWORD(v68) = v50;
        LODWORD(v69) = v58;
        v71 = objc_msgSend_initWithName_channelEncoding_textureDimensions_turbidity_sunElevation_upperAtmosphereScattering_groundAlbedo_(v9, v70, v12, v19, v34, v67, v68, v69, v66);
        v74 = objc_msgSend_objectForKeyedSubscript_(v1, v72, @"horizonElevation", v73);
        objc_msgSend_floatValue(v74, v75, v76, v77);
        objc_msgSend_setHorizonElevation_(v71, v78, v79, v80);
        v83 = objc_msgSend_objectForKeyedSubscript_(v1, v81, @"gamma", v82);
        objc_msgSend_floatValue(v83, v84, v85, v86);
        objc_msgSend_setGamma_(v71, v87, v88, v89);
        v92 = objc_msgSend_objectForKeyedSubscript_(v1, v90, @"exposure", v91);
        objc_msgSend_floatValue(v92, v93, v94, v95);
        objc_msgSend_setExposure_(v71, v96, v97, v98);
        v101 = objc_msgSend_objectForKeyedSubscript_(v1, v99, @"brightness", v100);
        objc_msgSend_floatValue(v101, v102, v103, v104);
        objc_msgSend_setBrightness_(v71, v105, v106, v107);
        v110 = objc_msgSend_objectForKeyedSubscript_(v1, v108, @"contrast", v109);
        objc_msgSend_floatValue(v110, v111, v112, v113);
        objc_msgSend_setContrast_(v71, v114, v115, v116);
        v119 = objc_msgSend_objectForKeyedSubscript_(v1, v117, @"saturation", v118);
        objc_msgSend_floatValue(v119, v120, v121, v122);
        objc_msgSend_setSaturation_(v71, v123, v124, v125);
        v128 = objc_msgSend_objectForKeyedSubscript_(v1, v126, @"groundColor", v127);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v131 = MEMORY[0x1E696ACD0];
          v132 = objc_opt_class();
          v134 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v131, v133, v132, v128, 0);
          if (v134)
          {
            v136 = objc_msgSend_CGColor(v134, v129, v135, v130);
            objc_msgSend_setGroundColor_(v71, v137, v136, v138);
          }
        }

        v139 = objc_msgSend_objectForKeyedSubscript_(v1, v129, @"highDynamicRangeCompression.x", v130);
        objc_msgSend_floatValue(v139, v140, v141, v142);
        v163 = v143;
        v146 = objc_msgSend_objectForKeyedSubscript_(v1, v144, @"highDynamicRangeCompression.y", v145);
        objc_msgSend_floatValue(v146, v147, v148, v149);
        objc_msgSend_setHighDynamicRangeCompression_(v71, v150, v151, v152, COERCE_DOUBLE(__PAIR64__(v153, v163)));
        objc_msgSend_updateTexture(v71, v154, v155, v156);

        return v71;
      }

      else
      {
        result = objc_msgSend_valueForKey_(v1, v7, @"data", v8);
        if (!result)
        {
          result = objc_msgSend_valueForKey_(v1, v158, @"path", v159);
          if (!result)
          {

            return objc_msgSend_valueForKey_(v1, v160, @"URL", v161);
          }
        }
      }
    }

    else
    {
      v157 = sub_1AF0D5194();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFB10C(v157);
      }

      return 0;
    }
  }

  return result;
}

id sub_1AF373644(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v8 = objc_msgSend_setWithObject_(v4, v6, v5, v7);
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v16 = objc_msgSend_setWithObjects_(v9, v14, v10, v15, v11, v12, v13, 0);
  v18 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(a1, v17, v8, v16, a2);

  return sub_1AF3732A8(v18);
}

void *sub_1AF373720(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_options(a1, v4, v5, v6);
    v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"VFXWorldExportEmbedImages", v9);
    v14 = objc_msgSend_BOOLValue(v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1AF195E98(a2);
  if (v15)
  {
    v19 = v15;
    v20 = objc_msgSend_query(v15, v16, v17, v18);
    v24 = (objc_msgSend_length(v20, v21, v22, v23) != 0) | v14;
    v29 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v25, v26, v27);
    if ((v24 & 1) == 0)
    {
      objc_msgSend_setObject_forKey_(v29, v28, v19, @"URL");
      return v29;
    }
  }

  else
  {
    v29 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v16, v17, v18);
  }

  v30 = sub_1AF197458(a2);
  if (v30)
  {
    v32 = v30;
LABEL_10:
    objc_msgSend_setObject_forKey_(v29, v31, v32, @"data");
    return v29;
  }

  v34 = sub_1AF196A24(a2);
  if (v34)
  {
    v37 = v34;
    v38 = objc_msgSend_imageWithCGImage_(MEMORY[0x1E69DCAB8], v35, v34, v36);
    v32 = UIImagePNGRepresentation(v38);
    CGImageRelease(v37);
    if (v32)
    {
      goto LABEL_10;
    }
  }

  return v29;
}

uint64_t sub_1AF373844()
{
  if (qword_1ED737C48 != -1)
  {
    sub_1AFDFB150();
  }

  return qword_1ED737C40;
}

uint64_t sub_1AF37387C()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  result = objc_msgSend_initWithObjects_(v0, v9, v1, v10, v2, v3, v4, v5, v6, v7, v8, 0);
  qword_1ED737C40 = result;
  return result;
}

uint64_t sub_1AF373968()
{
  if (qword_1ED737C28 != -1)
  {
    sub_1AFDFB164();
  }

  return qword_1ED737C20;
}

uint64_t sub_1AF3739A0()
{
  v28 = objc_alloc(MEMORY[0x1E695DFD8]);
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_1AF2DCBEC();
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  v3 = sub_1AF2DCBF8();
  if (!v3)
  {
    v3 = objc_opt_class();
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  result = objc_msgSend_initWithObjects_(v28, v11, v27, v12, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);
  qword_1ED737C20 = result;
  return result;
}

id sub_1AF373C20()
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (qword_1ED737C28 != -1)
  {
    sub_1AFDFB164();
  }

  v0 = qword_1ED737C20;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1, v6, 2);
  result = objc_msgSend_setByAddingObjectsFromArray_(v0, v3, v2, v4);
  qword_1ED737C30 = result;
  return result;
}

void sub_1AF373CD8(void *a1, void *a2, uint64_t a3)
{
  v165[18] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_options(a1, v6, v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"VFXWorldExportEmbedImages", v11);
    v16 = objc_msgSend_BOOLValue(v12, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v16 & 1) == 0)
  {
    v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v17, v18, v19);
    objc_msgSend_setObject_forKey_(v20, v21, a2, @"path");
LABEL_7:

    objc_msgSend_encodeObject_forKey_(a1, v22, v20, a3);
    return;
  }

  objc_opt_class();
  if (!(v16 & 1 | ((objc_opt_isKindOfClass() & 1) == 0)))
  {
    v26 = objc_msgSend_query(a2, v23, v24, v25);
    if (!objc_msgSend_length(v26, v27, v28, v29))
    {
      v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v30, v31, v32);
      objc_msgSend_setObject_forKey_(v20, v50, a2, @"URL");
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_groundColor(a2, v33, v34, v35))
    {
      v39 = MEMORY[0x1E69DC888];
      v40 = objc_msgSend_groundColor(a2, v36, v37, v38);
      v43 = objc_msgSend_colorWithCGColor_(v39, v41, v40, v42);
      v45 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v44, v43, 1, 0);
    }

    else
    {
      v45 = 0;
    }

    v165[0] = @"MDLSkyCubeTexture";
    v164[0] = @"type";
    v164[1] = @"name";
    v51 = objc_msgSend_name(a2, v36, v37, v38);
    if (v51)
    {
      v55 = v51;
    }

    else
    {
      v55 = &stru_1F2575650;
    }

    v165[1] = v55;
    v164[2] = @"turbidity";
    v56 = MEMORY[0x1E696AD98];
    objc_msgSend_turbidity(a2, v52, v53, v54);
    v165[2] = objc_msgSend_numberWithFloat_(v56, v57, v58, v59);
    v164[3] = @"sunElevation";
    v60 = MEMORY[0x1E696AD98];
    objc_msgSend_sunElevation(a2, v61, v62, v63);
    v165[3] = objc_msgSend_numberWithFloat_(v60, v64, v65, v66);
    v164[4] = @"upperAtmosphereScattering";
    v67 = MEMORY[0x1E696AD98];
    objc_msgSend_upperAtmosphereScattering(a2, v68, v69, v70);
    v165[4] = objc_msgSend_numberWithFloat_(v67, v71, v72, v73);
    v164[5] = @"groundAlbedo";
    v74 = MEMORY[0x1E696AD98];
    objc_msgSend_groundAlbedo(a2, v75, v76, v77);
    v165[5] = objc_msgSend_numberWithFloat_(v74, v78, v79, v80);
    v164[6] = @"horizonElevation";
    v81 = MEMORY[0x1E696AD98];
    objc_msgSend_horizonElevation(a2, v82, v83, v84);
    v165[6] = objc_msgSend_numberWithFloat_(v81, v85, v86, v87);
    v164[7] = @"gamma";
    v88 = MEMORY[0x1E696AD98];
    objc_msgSend_gamma(a2, v89, v90, v91);
    v165[7] = objc_msgSend_numberWithFloat_(v88, v92, v93, v94);
    v164[8] = @"exposure";
    v95 = MEMORY[0x1E696AD98];
    objc_msgSend_exposure(a2, v96, v97, v98);
    v165[8] = objc_msgSend_numberWithFloat_(v95, v99, v100, v101);
    v164[9] = @"brightness";
    v102 = MEMORY[0x1E696AD98];
    objc_msgSend_brightness(a2, v103, v104, v105);
    v165[9] = objc_msgSend_numberWithFloat_(v102, v106, v107, v108);
    v164[10] = @"contrast";
    v109 = MEMORY[0x1E696AD98];
    objc_msgSend_contrast(a2, v110, v111, v112);
    v165[10] = objc_msgSend_numberWithFloat_(v109, v113, v114, v115);
    v164[11] = @"saturation";
    v116 = MEMORY[0x1E696AD98];
    objc_msgSend_saturation(a2, v117, v118, v119);
    v165[11] = objc_msgSend_numberWithFloat_(v116, v120, v121, v122);
    v164[12] = @"channelEncoding";
    v123 = MEMORY[0x1E696AD98];
    v127 = objc_msgSend_channelEncoding(a2, v124, v125, v126);
    v165[12] = objc_msgSend_numberWithInteger_(v123, v128, v127, v129);
    v164[13] = @"dimensions.x";
    v130 = MEMORY[0x1E696AD98];
    objc_msgSend_dimensions(a2, v131, v132, v133);
    v165[13] = objc_msgSend_numberWithInt_(v130, v135, v134, v136);
    v164[14] = @"dimensions.y";
    v137 = MEMORY[0x1E696AD98];
    objc_msgSend_dimensions(a2, v138, v139, v140);
    v165[14] = objc_msgSend_numberWithInt_(v137, v142, v141, v143);
    v164[15] = @"highDynamicRangeCompression.x";
    v144 = MEMORY[0x1E696AD98];
    objc_msgSend_highDynamicRangeCompression(a2, v145, v146, v147);
    v165[15] = objc_msgSend_numberWithFloat_(v144, v148, v149, v150);
    v164[16] = @"highDynamicRangeCompression.y";
    v151 = MEMORY[0x1E696AD98];
    objc_msgSend_highDynamicRangeCompression(a2, v152, v153, v154);
    LODWORD(v155) = HIDWORD(v155);
    v159 = objc_msgSend_numberWithFloat_(v151, v156, v157, v158, v155);
    v164[17] = @"groundColor";
    if (v45)
    {
      v161 = v45;
    }

    else
    {
      v161 = &stru_1F2575650;
    }

    v165[16] = v159;
    v165[17] = v161;
    v162 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v160, v165, v164, 18);
    objc_msgSend_encodeObject_forKey_(a1, v163, v162, a3);
  }

  else
  {
    v46 = objc_msgSend_copyCFXImageFromImage_(VFXMaterialProperty, v33, a2, v35);
    if (v46)
    {
      v47 = v46;
      v48 = sub_1AF373720(a1, v46);
      objc_msgSend_encodeObject_forKey_(a1, v49, v48, a3);

      CFRelease(v47);
    }
  }
}

uint64_t sub_1AF3741F8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v8, &v21, v25, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(a2);
        }

        v15 = objc_msgSend_copyCFXImageFromImage_(VFXMaterialProperty, v10, *(*(&v21 + 1) + 8 * v14), v11);
        if (v15)
        {
          v16 = v15;
          v17 = sub_1AF373720(a1, v15);
          objc_msgSend_addObject_(v7, v18, v17, v19);
          CFRelease(v16);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v10, &v21, v25, 16);
    }

    while (v12);
  }

  return objc_msgSend_encodeObject_forKey_(a1, v10, v7, a3);
}

void *sub_1AF374344(void *a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED737C48 != -1)
  {
    sub_1AFDFB150();
  }

  v4 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, a2, qword_1ED737C40, a2);
  if (!v4)
  {
    return 0;
  }

  v8 = v4;
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v19, v23, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = sub_1AF3732A8(*(*(&v19 + 1) + 8 * i));
        if (v15)
        {
          objc_msgSend_addObject_(v9, v16, v15, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v19, v23, 16);
    }

    while (v12);
  }

  return v9;
}

void sub_1AF37448C(void *a1, void *a2, uint64_t a3)
{
  v6 = CFXMTLCreateSystemDefaultDevice();
  v9 = objc_msgSend_newTextureForDevice_(a2, v7, v6, v8);
  v13 = objc_msgSend_newCommandQueue(v6, v10, v11, v12);
  v17 = objc_msgSend_commandBuffer(v13, v14, v15, v16);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = sub_1AF374720;
  v41 = sub_1AF374730;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = sub_1AF374720;
  v35 = sub_1AF374730;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF37473C;
  v30[3] = &unk_1E7A7F9E8;
  v30[5] = &v31;
  v30[6] = &v37;
  v30[4] = v17;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1AF3747D4;
  v29[3] = &unk_1E7A7FA10;
  v29[5] = &v37;
  v29[6] = &v31;
  v29[4] = v17;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1AF37486C;
  v28[3] = &unk_1E7A7E160;
  v28[4] = v17;
  v18 = sub_1AFDF3774([_VFXCoderMaterialPropertyTextureProviderHelper alloc], v6, v13);
  objc_msgSend_renderToTexture_computeCommandHandler_blitCommandHandler_completionHandler_helper_(a2, v19, v9, v30, v29, v28, v18);
  v23 = v32[5];
  if (v23)
  {
    objc_msgSend_endEncoding(v23, v20, v21, v22);
    v32[5] = 0;
  }

  v24 = v38[5];
  if (v24)
  {
    objc_msgSend_endEncoding(v24, v20, v21, v22);
    v38[5] = 0;
  }

  objc_msgSend_commit(v17, v20, v21, v22);
  objc_msgSend_waitUntilCompleted(v17, v25, v26, v27);

  sub_1AF372510(a1, v9, 0, a3);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

void sub_1AF3746FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF37473C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    v6 = *(*(*(result + 40) + 8) + 40);
    if (v6)
    {
      objc_msgSend_endEncoding(v6, a2, a3, a4);
      *(*(*(v5 + 40) + 8) + 40) = 0;
    }

    v7 = *(*(*(v5 + 48) + 8) + 40);
    if (!v7)
    {
      *(*(*(v5 + 48) + 8) + 40) = objc_msgSend_computeCommandEncoder(*(v5 + 32), 0, a3, a4);
      v7 = *(*(*(v5 + 48) + 8) + 40);
    }

    v8 = *(a2 + 16);

    return v8(a2, v7);
  }

  return result;
}

uint64_t sub_1AF3747D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    v6 = *(*(*(result + 40) + 8) + 40);
    if (v6)
    {
      objc_msgSend_endEncoding(v6, a2, a3, a4);
      *(*(*(v5 + 40) + 8) + 40) = 0;
    }

    v7 = *(*(*(v5 + 48) + 8) + 40);
    if (!v7)
    {
      *(*(*(v5 + 48) + 8) + 40) = objc_msgSend_blitCommandEncoder(*(v5 + 32), 0, a3, a4);
      v7 = *(*(*(v5 + 48) + 8) + 40);
    }

    v8 = *(a2 + 16);

    return v8(a2, v7);
  }

  return result;
}

uint64_t sub_1AF37486C(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return objc_msgSend_addCompletedHandler_(*(result + 32), a2, a2, a4);
  }

  return result;
}

void *sub_1AF374880(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_mutableCopy(a1, a2, a3, a4);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v6, &v19, v23, 16);
  if (v7)
  {
    v8 = v7;
    LODWORD(v9) = 0;
    v10 = *v20;
    do
    {
      v11 = 0;
      v9 = v9;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(a1);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_msgSend_VFXMutableDeepCopy(v12, v13, v14, v15);
          objc_msgSend_replaceObjectAtIndex_withObject_(v5, v17, v9, v16);
        }

        ++v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v13, &v19, v23, 16);
    }

    while (v8);
  }

  return v5;
}

void *sub_1AF3749C0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a1, a2, a3, a4);
  v8 = objc_msgSend_allKeys(v4, v5, v6, v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v16, v12);
        if (objc_opt_respondsToSelector())
        {
          v19 = objc_msgSend_VFXMutableDeepCopy(v17, v11, v18, v12);
          objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  return v4;
}

CFStringRef sub_1AF375358(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p>", v3, a1);
}

const char *sub_1AF3753A8(const void *a1)
{
  if (!a1)
  {
    return "<null>";
  }

  v2 = CFGetTypeID(a1);
  if (MEMORY[0x1B271C3B0](v2, a1))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);

    return objc_msgSend_cStringUsingEncoding_(v4, v5, 1, v6);
  }

  else
  {

    return sub_1AF375434(v2);
  }
}

const char *sub_1AF375434(uint64_t a1)
{
  if (!a1)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFB178(v1);
    }
  }

  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (ClassWithTypeID)
  {
    return *(ClassWithTypeID + 8);
  }

  else
  {
    return "<null>";
  }
}

uint64_t sub_1AF37610C(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = *a1 + a1[1];
  v5 = *(v4 + v3 * *a2);
  v6 = *(v4 + v3 * *a3);
  if (v6 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1AF376144(char *__s1)
{
  v2 = *__s1;
  if (v2 > 0x62)
  {
    if (*__s1 <= 0x68u)
    {
      if (v2 != 99)
      {
        if (v2 == 100)
        {
          if (!__s1[1])
          {
            return 6;
          }
        }

        else if (v2 == 102 && !__s1[1])
        {
          return 1;
        }

        goto LABEL_29;
      }

LABEL_20:
      if (!__s1[1])
      {
        return 4;
      }

      goto LABEL_29;
    }

    if (v2 != 105)
    {
      if (v2 != 113)
      {
        if (v2 != 115)
        {
          goto LABEL_29;
        }

        goto LABEL_16;
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (*__s1 > 0x48u)
  {
    if (v2 != 73)
    {
      if (v2 != 81)
      {
        if (v2 != 83)
        {
          goto LABEL_29;
        }

LABEL_16:
        if (!__s1[1])
        {
          return 13;
        }

        goto LABEL_29;
      }

LABEL_22:
      if (!__s1[1])
      {
        return 45;
      }

      goto LABEL_29;
    }

LABEL_24:
    if (!__s1[1])
    {
      return 2;
    }

    goto LABEL_29;
  }

  if (v2 == 66)
  {
    if (!__s1[1])
    {
      return 3;
    }

    goto LABEL_29;
  }

  if (v2 == 67)
  {
    goto LABEL_20;
  }

LABEL_29:
  if (!strcmp(__s1, "{CATransform3D=dddddddddddddddd}"))
  {
    return 10;
  }

  if (!strcmp(__s1, "{CGPoint=dd}"))
  {
    return 7;
  }

  if (!strcmp(__s1, "{?=ffff}") || !strcmp(__s1, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 9;
  }

  if (!strcmp(__s1, "{?=fff}"))
  {
    return 8;
  }

  if (v2 == 64)
  {
    return 5;
  }

  return 0;
}

const void *sub_1AF3762E4(void *a1, uint64_t a2)
{
  v4 = sub_1AF1CD954(a2);
  v5 = sub_1AF1CDA60(v4);
  if ((sub_1AF376368(a1, v5, a2, v6) & 1) == 0)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB45C(a1, v7);
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t sub_1AF376368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  switch(a3)
  {
    case 1:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      objc_msgSend_floatValue(a1, v23, v24, v25);
      *a2 = v26;
      return 1;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      *a2 = objc_msgSend_intValue(a1, v39, v40, v41);
      return 1;
    case 3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      v30 = objc_msgSend_BOOLValue(a1, v33, v34, v35);
      goto LABEL_28;
    case 4:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v30 = objc_msgSend_charValue(a1, v27, v28, v29);
      goto LABEL_28;
    case 5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v20 = objc_msgSend_pointerValue(a1, v36, v37, v38);
      goto LABEL_39;
    case 6:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      objc_msgSend_doubleValue(a1, v45, v46, v47);
      *a2 = v48;
      return 1;
    case 7:
    case 17:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = 0uLL;
        sub_1AF1CDDFC(a1, &v58, 2);
        goto LABEL_35;
      }

      objc_msgSend_CGPointValue(a1, v7, v8, v9);
      *&v31 = v31;
      *&v32 = v32;
      *a2 = LODWORD(v31);
      *(a2 + 4) = LODWORD(v32);
      return 1;
    case 8:
    case 18:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = 0uLL;
        sub_1AF1CDC80(a1, &v58, 3);
        *a2 = v58;
        *(a2 + 8) = DWORD2(v58);
      }

      else
      {
        objc_msgSend_VFXFloat3Value(a1, v10, v11, v12);
        *a2 = v21;
        *(a2 + 8) = v22;
      }

      return 1;
    case 9:
    case 19:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    case 10:
      objc_msgSend_VFXMatrix4Value(a1, a2, a3, a4);
      *a2 = v49;
      *(a2 + 16) = v50;
      *(a2 + 32) = v51;
      *(a2 + 48) = v52;
      return 1;
    case 11:
    case 13:
    case 14:
    case 16:
      return result;
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_34:
        v58 = 0uLL;
        sub_1AF1CDC80(a1, &v58, 4);
LABEL_35:
        v16 = v58;
        goto LABEL_36;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(a1, v53, 0, 0);
        *(a2 + 8) = v54;
LABEL_39:
        *a2 = v20;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          objc_msgSend_VFXFloat4Value(a1, v13, v14, v15);
LABEL_36:
          *a2 = v16;
        }
      }

      return 1;
    case 15:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v30 = objc_msgSend_unsignedCharValue(a1, v42, v43, v44);
LABEL_28:
      *a2 = v30;
      return 1;
    default:
      if (a3 != 45)
      {
        return result;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_longValue(a1, v17, v18, v19);
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *a2 = objc_msgSend_intValue(a1, v55, v56, v57);
        return 1;
      }

      return 0;
  }
}

const void *sub_1AF37673C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objCType(a1, a2, a3, a4);
  v6 = sub_1AF376144(v5);
  if (!v6)
  {
    return 0;
  }

  return sub_1AF3762E4(a1, v6);
}

uint64_t sub_1AF376790(double *a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      switch(a2)
      {
        case 1:
          LODWORD(a3) = *a1;
          return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], a2, a1, a5, a3);
        case 2:
          return objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *a1, a5);
        case 3:
          return objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *a1, a5);
      }

      return 0;
    }

    if (a2 == 4)
    {
      return MEMORY[0x1EEE66B58](MEMORY[0x1E696AD98], sel_numberWithChar_, *a1, a5);
    }

    else if (a2 == 5)
    {
      return objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], a2, *a1, a5);
    }

    else
    {
      return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a1, a5, *a1);
    }
  }

  else
  {
    if (a2 > 9)
    {
      if (a2 > 14)
      {
        if (a2 == 15)
        {
          return objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *a1, a5);
        }

        if (a2 == 45)
        {
          return objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], a2, *a1, a5);
        }
      }

      else
      {
        if (a2 == 10)
        {
          return objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], a2, a1, a5, *a1, a1[2], a1[4], a1[6]);
        }

        if (a2 == 12)
        {
          return objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], a2, a1, a5);
        }
      }

      return 0;
    }

    if (a2 == 7)
    {
      return objc_msgSend_valueWithCGPoint_(MEMORY[0x1E696B098], a2, a1, a5, *a1, *(a1 + 1));
    }

    else if (a2 == 8)
    {
      return objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], a2, a1, a5, *a1);
    }

    else
    {
      return objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], a2, a1, a5, *a1);
    }
  }
}

uint64_t sub_1AF376904(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 1:
    case 14:
      v9 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithFloat_(v9, a2, a3, a4, 0.0);
      break;
    case 2:
      v16 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithInteger_(v16, a2, 0, a4);
      break;
    case 3:
      v14 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithBool_(v14, a2, 0, a4);
      break;
    case 4:
    case 15:
    case 20:
    case 21:
      v5 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithUnsignedChar_(v5, a2, 0, a4);
      break;
    case 5:
      v15 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithUnsignedLong_(v15, a2, 0, a4);
      break;
    case 6:
      v18 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithDouble_(v18, a2, a3, a4, 0.0);
      break;
    case 7:
    case 17:
      v10 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithCGPoint_(v10, a2, a3, a4, 0.0, 0.0);
      break;
    case 8:
    case 18:
      v11 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithVFXFloat3_(v11, a2, a3, a4, 0.0);
      break;
    case 9:
    case 12:
    case 19:
      v7 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithVFXFloat4_(v7, a2, a3, a4, 0.0);
      break;
    case 10:
    case 11:
      v8 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithVFXMatrix4_(v8, a2, a3, a4, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
      break;
    case 13:
    case 16:
      v12 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithUnsignedShort_(v12, a2, 0, a4);
      break;
    case 45:
      v17 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithLong_(v17, a2, 0, a4);
      break;
    default:
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19[0] = 67109120;
        v19[1] = a1;
        _os_log_impl(&dword_1AF0CE000, v13, OS_LOG_TYPE_DEFAULT, "Warning: VFXDefaultValueWithBaseType - unknwon base type %d", v19, 8u);
      }

      result = 0;
      break;
  }

  return result;
}

objc_property *sub_1AF376D10(objc_class *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_UTF8String(a2, a2, a3, a4);
  result = class_getProperty(a1, v5);
  if (result)
  {
    Attributes = property_getAttributes(result);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, Attributes, v9);
    v13 = objc_msgSend_componentsSeparatedByString_(v10, v11, @",", v12);
    v16 = objc_msgSend_objectAtIndex_(v13, v14, 0, v15);
    v19 = objc_msgSend_substringFromIndex_(v16, v17, 1, v18);
    v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);

    return sub_1AF376144(v23);
  }

  return result;
}

uint64_t sub_1AF376D98(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v7 = sub_1AF376D10(v4, a2, v5, v6);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = objc_msgSend_valueForKey_(a1, v8, a2, v9);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1AF1CD954(v10);
    v14 = sub_1AF1CDA60(v13);
    if (sub_1AF376368(v12, v14, v10, v15))
    {
      return v13;
    }

    v16 = sub_1AF0D5194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB4D4(a2, a1, v16);
    }

    CFRelease(v13);
    return 0;
  }

  return sub_1AF1CD9FC(v10);
}

uint64_t sub_1AF378310()
{
  result = CGImageGetImageProvider();
  if (result)
  {

    return MEMORY[0x1EEDBA1B8]();
  }

  return result;
}

void sub_1AF378348()
{
  v0 = 0;
  v4[1] = *MEMORY[0x1E69E9840];
  do
  {
    v1 = 0;
    v2 = 0;
    do
    {
      if ((v0 >> v1))
      {
        v3 = v2;
      }

      else
      {
        v3 = 0x80;
      }

      *(v4 + v1) = v3;
      v2 += (v0 >> v1++) & 1;
    }

    while (v1 != 8);
    qword_1ED739AE8[v0] = v4[0];
    byte_1ED73A2E8[v0++] = v2;
  }

  while (v0 != 256);
}

__n64 compute_fog_parameters(float a1, float a2)
{
  v2 = fmaxf(a1, 0.0);
  v3 = fmaxf(a2, 0.0);
  result.n64_u64[0] = 0;
  if (v2 != v3)
  {
    result.n64_f32[0] = 1.0 / (v3 - v2);
    result.n64_f32[1] = -(v2 * result.n64_f32[0]);
  }

  return result;
}

float32x4_t *moveSystem(float32x4_t *result, float32x4_t *a2, unsigned int a3, int32x2_t a4)
{
  if (a3)
  {
    v4 = vdupq_lane_s32(a4, 0);
    v5 = a3;
    __asm { FMOV            V1.4S, #10.0 }

    do
    {
      v11 = vmlaq_f32(*result, v4, *a2);
      v12 = vcgtq_f32(vabsq_f32(v11), _Q1);
      v13 = v12;
      v13.i32[3] = v12.i32[2];
      if ((vmaxvq_u32(v13) & 0x80000000) != 0)
      {
        v12.i32[3] = 0;
        v14 = vbslq_s8(vcltzq_s32(v12), vnegq_f32(*a2), *a2);
        v14.i32[3] = HIDWORD(*a2);
        *a2 = v14;
      }

      else
      {
        v11.i32[3] = HIDWORD(*result);
        *result = v11;
      }

      ++result;
      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

float32x4_t globalClamp(float32x4_t *a1, int8x16_t *a2, float32x4_t a3)
{
  v3.i64[0] = 0x8000000080000000;
  v3.i64[1] = 0x8000000080000000;
  *a2 = veorq_s8(vandq_s8(vcgtq_f32(*a1, a3), v3), *a2);
  result = vmaxnmq_f32(vnegq_f32(a3), vminnmq_f32(*a1, a3));
  *a1 = result;
  return result;
}

float srdnoise3(_OWORD *a1, float a2, float a3, float a4, float a5)
{
  v10 = __sincosf_stret(a5);
  v11 = ((a2 + a3) + a4) * 0.33333;
  v12 = floorf(v11 + a2);
  v13 = floorf(v11 + a3);
  v14 = floorf(v11 + a4);
  v15 = (v14 + (v12 + v13)) * 0.16667;
  v16 = v13 - v15;
  v17 = v14 - v15;
  v18 = a2 - (v12 - v15);
  v19 = a3 - v16;
  v20 = a4 - v17;
  if (v18 >= v19)
  {
    if (v19 >= v20)
    {
      v24 = 0;
      v26 = 0;
      v22 = 0;
      v25 = 1;
      v21 = 1;
      v23 = 1;
    }

    else
    {
      v25 = 0;
      v22 = 0;
      v26 = v18 < v20;
      v23 = v18 >= v20;
      v24 = 1;
      v21 = 1;
    }
  }

  else if (v19 >= v20)
  {
    v26 = 0;
    v23 = 0;
    v24 = v18 < v20;
    v21 = v18 >= v20;
    v25 = 1;
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  v27 = (v18 - v23) + 0.16667;
  v28 = (v19 - v22) + 0.16667;
  v29 = (v20 - v26) + 0.16667;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = ((0.6 - (v18 * v18)) - (v19 * v19)) - (v20 * v20);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  if (v33 >= 0.0)
  {
    v42 = (&unk_1AFE47EB0 + 12 * (byte_1AFE48030[byte_1AFE48030[byte_1AFE48030[v32] + v31] + v12] & 0xF));
    v43 = (&unk_1AFE47F70 + 12 * (byte_1AFE48030[byte_1AFE48030[byte_1AFE48030[v32] + v31] + v12] & 0xF));
    v35 = (v10.__sinval * *v43) + (v10.__cosval * *v42);
    v36 = (v10.__sinval * v43[1]) + (v10.__cosval * v42[1]);
    v37 = (v10.__sinval * v43[2]) + (v10.__cosval * v42[2]);
    v39 = v33 * v33;
    v40 = v39 * v39;
    v41 = (v39 * v39) * (((v19 * v36) + (v35 * v18)) + (v37 * v20));
    v38 = ((0.6 - (v18 * v18)) - (v19 * v19)) - (v20 * v20);
  }

  v93 = v38;
  v94 = v35;
  v95 = v36;
  v96 = v37;
  v101 = v41;
  v44 = (v18 - v21) + 0.33333;
  v45 = (v19 - v25) + 0.33333;
  v46 = (v20 - v24) + 0.33333;
  v47 = ((0.6 - (v27 * v27)) - (v28 * v28)) - (v29 * v29);
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  if (v47 >= 0.0)
  {
    v54 = 3 * (byte_1AFE48030[(v23 + v30) + byte_1AFE48030[v22 + v31 + byte_1AFE48030[v26 + v32]]] & 0xF);
    v55 = (&unk_1AFE47EB0 + 4 * v54);
    v56 = (&unk_1AFE47F70 + 4 * v54);
    v34 = (v10.__sinval * *v56) + (v10.__cosval * *v55);
    v48 = (v10.__sinval * v56[1]) + (v10.__cosval * v55[1]);
    v49 = (v10.__sinval * v56[2]) + (v10.__cosval * v55[2]);
    v51 = v47 * v47;
    v52 = v51 * v51;
    v53 = (v51 * v51) * (((v28 * v48) + (v34 * v27)) + (v49 * v29));
    v50 = ((0.6 - (v27 * v27)) - (v28 * v28)) - (v29 * v29);
  }

  v92 = v49;
  v99 = (v18 - v23) + 0.16667;
  v100 = v53;
  v97 = v29;
  v98 = v28;
  v57 = (v18 + -1.0) + 0.5;
  v58 = (v19 + -1.0) + 0.5;
  v59 = (v20 + -1.0) + 0.5;
  v60 = ((0.6 - (v44 * v44)) - (v45 * v45)) - (v46 * v46);
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v60 >= 0.0)
  {
    v69 = 3 * (byte_1AFE48030[(v21 + v30) + byte_1AFE48030[v25 + v31 + byte_1AFE48030[v24 + v32]]] & 0xF);
    v70 = (&unk_1AFE47EB0 + 4 * v69);
    v71 = (&unk_1AFE47F70 + 4 * v69);
    v62 = (v10.__sinval * *v71) + (v10.__cosval * *v70);
    v63 = (v10.__sinval * v71[1]) + (v10.__cosval * v70[1]);
    v64 = (v10.__sinval * v71[2]) + (v10.__cosval * v70[2]);
    v66 = v60 * v60;
    v67 = v66 * v66;
    v68 = (v66 * v66) * (((v45 * v63) + (v62 * v44)) + (v64 * v46));
    v65 = ((0.6 - (v44 * v44)) - (v45 * v45)) - (v46 * v46);
  }

  v91 = v62;
  v72 = ((0.6 - (v57 * v57)) - (v58 * v58)) - (v59 * v59);
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  if (v72 >= 0.0)
  {
    v79 = (&unk_1AFE47EB0 + 12 * (byte_1AFE48030[(v30 + 1) + byte_1AFE48030[v31 + 1 + byte_1AFE48030[v32 + 1]]] & 0xF));
    v80 = (&unk_1AFE47F70 + 12 * (byte_1AFE48030[(v30 + 1) + byte_1AFE48030[v31 + 1 + byte_1AFE48030[v32 + 1]]] & 0xF));
    v61 = (v10.__sinval * *v80) + (v10.__cosval * *v79);
    v73 = (v10.__sinval * v80[1]) + (v10.__cosval * v79[1]);
    v74 = (v10.__sinval * v80[2]) + (v10.__cosval * v79[2]);
    v76 = v72 * v72;
    v77 = v76 * v76;
    v78 = (v76 * v76) * (((v58 * v73) + (v61 * v57)) + (v74 * v59));
    v75 = ((0.6 - (v57 * v57)) - (v58 * v58)) - (v59 * v59);
  }

  if (a1)
  {
    v81 = (((v19 * v95) + (v94 * v18)) + (v96 * v20)) * (v93 * v39);
    *&v9 = (((v98 * v48) + (v34 * v99)) + (v92 * v97)) * (v50 * v51);
    v82 = (v18 * v81) + (*&v9 * v99);
    v83 = (v19 * v81) + (*&v9 * v98);
    v84 = (v20 * v81) + (*&v9 * v97);
    *&v9 = (((v45 * v63) + (v91 * v44)) + (v64 * v46)) * (v65 * v66);
    v85 = v82 + (*&v9 * v44);
    v86 = v83 + (*&v9 * v45);
    v87 = v84 + (*&v9 * v46);
    *&v9 = (((v58 * v73) + (v61 * v57)) + (v74 * v59)) * (v75 * v76);
    v88 = v86 + (*&v9 * v58);
    v89 = (v87 + (*&v9 * v59)) * 8.0;
    *&v9 = (((((v34 * v52) + (v40 * v94)) + (v67 * v91)) + (v77 * v61)) - ((v85 + (*&v9 * v57)) * 8.0)) * 28.0;
    *(&v9 + 1) = (((((v48 * v52) + (v40 * v95)) + (v67 * v63)) + (v77 * v73)) - (v88 * 8.0)) * 28.0;
    *(&v9 + 2) = (((((v92 * v52) + (v40 * v96)) + (v67 * v64)) + (v77 * v74)) - v89) * 28.0;
    *a1 = v9;
  }

  return (((v101 + v100) + v68) + v78) * 28.0;
}

double noised(float32x4_t a1)
{
  v1 = a1;
  v1.i32[3] = 0;
  v2 = vrndmq_f32(v1);
  v3 = vsubq_f32(a1, v2);
  v4 = v2;
  v133 = v2;
  v3.i32[3] = 0;
  v5 = vminnmq_f32(v3, xmmword_1AFE47E30);
  __asm
  {
    FMOV            V1.4S, #6.0
    FMOV            V2.4S, #-15.0
  }

  v12 = vmlaq_f32(_Q2, _Q1, v5);
  __asm { FMOV            V1.4S, #10.0 }

  v128 = v5;
  v129 = vmulq_f32(vmulq_f32(v5, vmulq_f32(v5, v5)), vmlaq_f32(_Q1, v12, v5));
  __asm { FMOV            V0.4S, #30.0 }

  _Q1.i64[0] = 0xC0000000C0000000;
  _Q1.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V2.4S, #1.0 }

  v127 = _Q2;
  v130 = vmulq_f32(vmulq_f32(v5, vmulq_f32(v5, _Q0)), vmlaq_f32(_Q2, vaddq_f32(v5, _Q1), v5));
  v16 = vaddq_f32(v4, 0);
  v17 = vmulq_f32(v16, xmmword_1AFE47E00);
  v18 = vmulq_f32(v16, xmmword_1AFE47E10);
  *v17.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vadd_f32(vzip1_s32(*v17.f32, *v18.i8), vzip2_s32(*v17.f32, *v18.i8)));
  v19 = vmulq_f32(v16, xmmword_1AFE47E20);
  v17.f32[2] = v19.f32[2] + vaddv_f32(*v19.f32);
  v17.i32[3] = 0;
  v132 = vdupq_n_s32(0x472AEE8Cu);
  v20 = vmulq_f32(_simd_sin_f4(v17), v132);
  v21 = v20;
  v21.i32[3] = 0;
  v22 = vsubq_f32(v20, vrndmq_f32(v21));
  v22.i32[3] = 0;
  v23.i64[0] = 0x4000000040000000;
  v23.i64[1] = 0x4000000040000000;
  __asm { FMOV            V1.4S, #-1.0 }

  v131 = _Q1;
  v126 = vmlaq_f32(_Q1, v23, vminnmq_f32(v22, xmmword_1AFE47E30));
  v25 = vaddq_f32(v133, xmmword_1AFE20150);
  v26 = vmulq_f32(v25, xmmword_1AFE47E00);
  v27 = vmulq_f32(v25, xmmword_1AFE47E10);
  *v26.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vadd_f32(vzip1_s32(*v26.f32, *v27.i8), vzip2_s32(*v26.f32, *v27.i8)));
  v28 = vmulq_f32(v25, xmmword_1AFE47E20);
  v26.f32[2] = v28.f32[2] + vaddv_f32(*v28.f32);
  v26.i32[3] = 0;
  v29 = vmulq_f32(_simd_sin_f4(v26), v132);
  v30 = v29;
  v30.i32[3] = 0;
  v31 = vsubq_f32(v29, vrndmq_f32(v30));
  v31.i32[3] = 0;
  v32.i64[0] = 0x4000000040000000;
  v32.i64[1] = 0x4000000040000000;
  v125 = vmlaq_f32(v131, v32, vminnmq_f32(v31, xmmword_1AFE47E30));
  v33 = vaddq_f32(v133, xmmword_1AFE20160);
  v34 = vmulq_f32(v33, xmmword_1AFE47E00);
  v35 = vmulq_f32(v33, xmmword_1AFE47E10);
  *v34.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.f32, *v35.i8), vzip2_s32(*v34.f32, *v35.i8)));
  v36 = vmulq_f32(v33, xmmword_1AFE47E20);
  v34.f32[2] = v36.f32[2] + vaddv_f32(*v36.f32);
  v34.i32[3] = 0;
  v37 = vmulq_f32(_simd_sin_f4(v34), v132);
  v38 = v37;
  v38.i32[3] = 0;
  v39 = vsubq_f32(v37, vrndmq_f32(v38));
  v39.i32[3] = 0;
  v40.i64[0] = 0x4000000040000000;
  v40.i64[1] = 0x4000000040000000;
  v124 = vmlaq_f32(v131, v40, vminnmq_f32(v39, xmmword_1AFE47E30));
  v41 = vaddq_f32(v133, xmmword_1AFE20670);
  v42 = vmulq_f32(v41, xmmword_1AFE47E00);
  v43 = vmulq_f32(v41, xmmword_1AFE47E10);
  *v42.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)), vadd_f32(vzip1_s32(*v42.f32, *v43.i8), vzip2_s32(*v42.f32, *v43.i8)));
  v44 = vmulq_f32(v41, xmmword_1AFE47E20);
  v42.f32[2] = v44.f32[2] + vaddv_f32(*v44.f32);
  v42.i32[3] = 0;
  v45 = vmulq_f32(_simd_sin_f4(v42), v132);
  v46 = v45;
  v46.i32[3] = 0;
  v47 = vsubq_f32(v45, vrndmq_f32(v46));
  v47.i32[3] = 0;
  v48.i64[0] = 0x4000000040000000;
  v48.i64[1] = 0x4000000040000000;
  v123 = vmlaq_f32(v131, v48, vminnmq_f32(v47, xmmword_1AFE47E30));
  v49 = vaddq_f32(v133, xmmword_1AFE20180);
  v50 = vmulq_f32(v49, xmmword_1AFE47E00);
  v51 = vmulq_f32(v49, xmmword_1AFE47E10);
  *v50.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)), vadd_f32(vzip1_s32(*v50.f32, *v51.i8), vzip2_s32(*v50.f32, *v51.i8)));
  v52 = vmulq_f32(v49, xmmword_1AFE47E20);
  v50.f32[2] = v52.f32[2] + vaddv_f32(*v52.f32);
  v50.i32[3] = 0;
  v53 = vmulq_f32(_simd_sin_f4(v50), v132);
  v54 = v53;
  v54.i32[3] = 0;
  v55 = vsubq_f32(v53, vrndmq_f32(v54));
  v55.i32[3] = 0;
  v54.i64[0] = 0x4000000040000000;
  v54.i64[1] = 0x4000000040000000;
  v122 = vmlaq_f32(v131, v54, vminnmq_f32(v55, xmmword_1AFE47E30));
  v56 = vaddq_f32(v133, xmmword_1AFE47E40);
  v57 = vmulq_f32(v56, xmmword_1AFE47E00);
  v58 = vmulq_f32(v56, xmmword_1AFE47E10);
  *v57.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)), vadd_f32(vzip1_s32(*v57.f32, *v58.i8), vzip2_s32(*v57.f32, *v58.i8)));
  v59 = vmulq_f32(v56, xmmword_1AFE47E20);
  v57.f32[2] = v59.f32[2] + vaddv_f32(*v59.f32);
  v57.i32[3] = 0;
  v60 = vmulq_f32(_simd_sin_f4(v57), v132);
  v61 = v60;
  v61.i32[3] = 0;
  v62 = vsubq_f32(v60, vrndmq_f32(v61));
  v62.i32[3] = 0;
  v61.i64[0] = 0x4000000040000000;
  v61.i64[1] = 0x4000000040000000;
  v121 = vmlaq_f32(v131, v61, vminnmq_f32(v62, xmmword_1AFE47E30));
  v63 = vaddq_f32(v133, xmmword_1AFE47E50);
  v64 = vmulq_f32(v63, xmmword_1AFE47E00);
  v65 = vmulq_f32(v63, xmmword_1AFE47E10);
  *v64.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v65, v65, 8uLL)), vadd_f32(vzip1_s32(*v64.f32, *v65.i8), vzip2_s32(*v64.f32, *v65.i8)));
  v66 = vmulq_f32(v63, xmmword_1AFE47E20);
  v64.f32[2] = v66.f32[2] + vaddv_f32(*v66.f32);
  v64.i32[3] = 0;
  v67 = vmulq_f32(_simd_sin_f4(v64), v132);
  v68 = v67;
  v68.i32[3] = 0;
  v69 = vsubq_f32(v67, vrndmq_f32(v68));
  v69.i32[3] = 0;
  v68.i64[0] = 0x4000000040000000;
  v68.i64[1] = 0x4000000040000000;
  v120 = vmlaq_f32(v131, v68, vminnmq_f32(v69, xmmword_1AFE47E30));
  v70 = vaddq_f32(v133, v127);
  v71 = vmulq_f32(v70, xmmword_1AFE47E00);
  v72 = vmulq_f32(v70, xmmword_1AFE47E10);
  *v71.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)), vadd_f32(vzip1_s32(*v71.f32, *v72.i8), vzip2_s32(*v71.f32, *v72.i8)));
  v73 = vmulq_f32(v70, xmmword_1AFE47E20);
  v71.f32[2] = v73.f32[2] + vaddv_f32(*v73.f32);
  v71.i32[3] = 0;
  v74 = vmulq_f32(_simd_sin_f4(v71), v132);
  v75 = v74;
  v75.i32[3] = 0;
  v76 = vsubq_f32(v74, vrndmq_f32(v75));
  v76.i32[3] = 0;
  v77.i64[0] = 0x4000000040000000;
  v77.i64[1] = 0x4000000040000000;
  v78 = vmlaq_f32(v131, v77, vminnmq_f32(v76, xmmword_1AFE47E30));
  v79 = vmulq_f32(v128, v126);
  v80 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE213A0), v125);
  v81 = vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8));
  v82 = vextq_s8(v80, v80, 8uLL);
  v83 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *v82.i8), v81);
  v84 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE213C0), v124);
  v85 = v84.f32[2] + vaddv_f32(*v84.f32);
  v86 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE47E60), v123);
  v87 = v86.f32[2] + vaddv_f32(*v86.f32);
  v88 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE213B0), v122);
  v89 = v88.f32[2] + vaddv_f32(*v88.f32);
  v90 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE47E70), v121);
  v91 = v90.f32[2] + vaddv_f32(*v90.f32);
  v92 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE47E80), v120);
  v93 = v92.f32[2] + vaddv_f32(*v92.f32);
  v94 = vmulq_f32(vaddq_f32(v128, v131), v78);
  v95 = v94.f32[2] + vaddv_f32(*v94.f32);
  v94.f32[0] = v83.f32[1] - v83.f32[0];
  _Q26 = v129;
  _S21 = v129.i32[1];
  _S16 = v85 - v83.f32[0];
  __asm { FMLA            S4, S16, V26.S[1] }

  _S7 = v89 - v83.f32[0];
  __asm { FMLA            S4, S7, V26.S[2] }

  v102 = vmuls_lane_f32(_Q26.f32[0], *_Q26.f32, 1);
  v103 = v83.f32[0] - v83.f32[1];
  *v82.i32 = ((v83.f32[0] - v83.f32[1]) - v85) + v87;
  v104 = vmuls_lane_f32(v129.f32[1], v129, 2);
  v83.f32[0] = ((v83.f32[0] - v85) - v89) + v93;
  v105 = (_S4 + (v102 * *v82.i32)) + (v104 * v83.f32[0]);
  v106 = vmuls_lane_f32(_Q26.f32[0], _Q26, 2);
  v107.f32[0] = (v103 - v89) + v91;
  v108 = v105 + (v106 * v107.f32[0]);
  v109 = vmuls_lane_f32(v102, v129, 2);
  v110 = (((((v94.f32[0] + v85) - v87) + v89) - v91) - v93) + v95;
  *v111.i32 = v108 + (v109 * v110);
  v112 = vsubq_f32(v125, v126);
  v113 = vsubq_f32(v126, v125);
  v94.f32[1] = _S16;
  v114 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v126, v112, v129.f32[0]), vsubq_f32(v124, v126), *v129.f32, 1), vsubq_f32(v122, v126), v129, 2), vaddq_f32(vsubq_f32(v113, v124), v123), v102), vaddq_f32(vsubq_f32(vsubq_f32(v126, v124), v122), v120), v104), vaddq_f32(vsubq_f32(v113, v122), v121), v106), vaddq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(v112, v124), v123), v122), v121), v120), v78), v109);
  v94.f32[2] = _S7;
  v115 = vextq_s8(vextq_s8(_Q26, _Q26, 0xCuLL), v129, 8uLL);
  v116 = v82;
  v116.i32[1] = v83.i32[0];
  v116.i32[2] = v107.i32[0];
  v117 = vmlaq_f32(v94, v116, v115);
  v118 = vextq_s8(vuzp1q_s32(_Q26, _Q26), v129, 0xCuLL);
  v107.i32[1] = v82.i32[0];
  v107.i32[2] = v83.i32[0];
  *&result = vextq_s8(vextq_s8(v111, v111, 4uLL), vmlaq_f32(v114, vmlaq_n_f32(vmlaq_f32(v117, v107, v118), vmulq_f32(v115, v118), v110), v130), 0xCuLL).u64[0];
  return result;
}

uint64_t kcluster_update(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 8);
    v7 = *(result + 16);
    v8 = a4;
    v9 = *result + 16;
    v10.i64[0] = 0x400000004;
    v10.i64[1] = 0x400000004;
    do
    {
      v11 = *(a2 + 16 * v4);
      v12 = vdupq_lane_s32(*v11.i8, 0);
      v13 = vdupq_lane_s32(*v11.i8, 1);
      v14 = vdupq_laneq_s32(v11, 2);
      v15 = vsubq_f32(v12, *v5);
      v16 = vsubq_f32(v13, *v6);
      v17 = vsubq_f32(v14, *v7);
      v18 = vmlaq_f32(vmlaq_f32(vmulq_f32(v16, v16), v15, v15), v17, v17);
      v19 = *(result + 24);
      if (v19 < 5)
      {
        v24 = xmmword_1AFE202E0;
      }

      else
      {
        v20 = v7 + 1;
        v21 = v6 + 1;
        v22 = v9;
        v23 = 4;
        v24 = xmmword_1AFE202E0;
        v25 = xmmword_1AFE202D0;
        do
        {
          v26 = *v22++;
          v27 = v26;
          v28 = *v21++;
          v29 = v28;
          v30 = *v20++;
          v31 = vsubq_f32(v12, v27);
          v32 = vsubq_f32(v13, v29);
          v33 = vsubq_f32(v14, v30);
          v34 = vmlaq_f32(vmlaq_f32(vmulq_f32(v32, v32), v31, v31), v33, v33);
          v35 = vcgtq_f32(v18, v34);
          v18 = vminnmq_f32(v34, v18);
          v24 = vbslq_s8(v35, v25, v24);
          v23 += 4;
          v25 = vaddq_s32(v25, v10);
        }

        while (v23 < v19);
      }

      v36 = vextq_s8(v18, v18, 8uLL);
      v37 = vminnmq_f32(v18, v36).u64[0];
      v38 = vbslq_s8(vcgtq_f32(v18, v36), vdupq_laneq_s64(v24, 1), v24).u64[0];
      v39 = HIDWORD(v38);
      if (*&v37 < *(&v37 + 1))
      {
        v39 = v38;
      }

      *(a3 + 4 * v4++) = v39;
    }

    while (v4 != v8);
  }

  return result;
}

uint64_t kcluster_update_compare(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (!a4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a5;
  v10 = a4;
  v11 = *a1 + 16;
  LOBYTE(v12) = 1;
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  do
  {
    v14 = *(a2 + 16 * v5);
    v15 = vdupq_lane_s32(*v14.i8, 0);
    v16 = vdupq_lane_s32(*v14.i8, 1);
    v17 = vdupq_laneq_s32(v14, 2);
    v18 = vsubq_f32(v15, *v6);
    v19 = vsubq_f32(v16, *v7);
    v20 = vsubq_f32(v17, *v8);
    v21 = vmlaq_f32(vmlaq_f32(vmulq_f32(v19, v19), v18, v18), v20, v20);
    v22 = *(a1 + 24);
    if (v22 < 5)
    {
      v27 = xmmword_1AFE202E0;
    }

    else
    {
      v23 = v8 + 1;
      v24 = v7 + 1;
      v25 = v11;
      v26 = 4;
      v27 = xmmword_1AFE202E0;
      v28 = xmmword_1AFE202D0;
      do
      {
        v29 = *v25++;
        v30 = v29;
        v31 = *v24++;
        v32 = v31;
        v33 = *v23++;
        v34 = vsubq_f32(v15, v30);
        v35 = vsubq_f32(v16, v32);
        v36 = vsubq_f32(v17, v33);
        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v36, v36);
        v38 = vcgtq_f32(v21, v37);
        v21 = vminnmq_f32(v37, v21);
        v27 = vbslq_s8(v38, v28, v27);
        v26 += 4;
        v28 = vaddq_s32(v28, v13);
      }

      while (v26 < v22);
    }

    v39 = vextq_s8(v21, v21, 8uLL);
    v40 = vminnmq_f32(v21, v39).u64[0];
    v41 = vbslq_s8(vcgtq_f32(v21, v39), vdupq_laneq_s64(v27, 1), v27).u64[0];
    v42 = HIDWORD(v41);
    if (*&v40 < *(&v40 + 1))
    {
      v42 = v41;
    }

    *(a3 + 4 * v5) = v42;
    v12 = v12 & (v42 == v9);
    ++v5;
  }

  while (v5 != v10);
  return v12 ^ 1u;
}

float noise(float32x4_t a1)
{
  v1 = a1;
  v1.i32[3] = 0;
  v2 = vrndmq_f32(v1);
  v3 = vmulq_f32(v2, xmmword_1AFE47E90);
  v3.f32[0] = v3.f32[2] + vaddv_f32(*v3.f32);
  v22 = vaddq_f32(vdupq_lane_s32(*v3.f32, 0), xmmword_1AFE47EA0);
  v4 = vmulq_n_f32(vsubq_f32(a1, v2), acosf(-1.0));
  v4.i32[3] = 0;
  v5 = _simd_cos_f4(v4);
  v6.i64[0] = 0xBF000000BF000000;
  v6.i64[1] = 0xBF000000BF000000;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v21 = vmlaq_f32(v7, v6, v5);
  v8 = _simd_cos_f4(v22);
  v20 = _simd_sin_f4(vmulq_f32(v22, v8));
  __asm { FMOV            V0.4S, #1.0 }

  v23 = vaddq_f32(v22, _Q0);
  v14 = _simd_cos_f4(v23);
  v15 = vmlaq_n_f32(v20, vsubq_f32(_simd_sin_f4(vmulq_f32(v23, v14)), v20), v21.f32[0]);
  v16 = vextq_s8(v15, v15, 8uLL).u64[0];
  v17 = vzip1_s32(*v15.i8, v16);
  v18 = vmla_lane_f32(v17, vsub_f32(vzip2_s32(*v15.i8, v16), v17), *v21.f32, 1);
  return *v18.i32 + (v21.f32[2] * vsub_f32(vdup_lane_s32(v18, 1), v18).f32[0]);
}

float32x4_t *voxel_draw_points(float32x4_t *result, uint64_t a2, int a3, float a4)
{
  if (a3)
  {
    v5 = 0;
    v6 = result[1];
    v7 = result[2];
    v8 = result->i32[2];
    v9 = vmulq_n_f32(v7, 2.0 / v8);
    v9.i32[3] = 1.0;
    v10.i32[0] = 1;
    v10.i32[1] = v8;
    v10.i64[1] = (v8 * v8);
    v11 = vsubq_f32(v7, v6);
    __asm { FMOV            V6.4S, #1.0 }

    v17 = vdivq_f32(_Q6, v9);
    *v4.i32 = (v8 - 1);
    v18 = vdupq_lane_s32(v4, 0);
    v18.i32[3] = 0;
    v19 = result->i64[0];
    v20 = vdupq_n_s32(0x3F7FFFFFu);
    v21.i64[0] = 0xBF000000BF000000;
    v21.i64[1] = 0xBF000000BF000000;
    v22.i64[0] = 0x8000000080000000;
    v22.i64[1] = 0x8000000080000000;
    do
    {
      v23 = *(a2 + 16 * v5);
      if ((vminvq_u32(vcgeq_f32(v7, vabdq_f32(v23, v6))) & 0x80000000) != 0)
      {
        v24 = 0;
        v25 = vmulq_f32(v17, vaddq_f32(v11, v23));
        v26 = vaddq_f32(vminnmq_f32(vsubq_f32(v25, vrndmq_f32(v25)), v20), v21);
        v27 = vandq_s8(vorrq_s8(vandq_s8(v26, v22), _Q6), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26)));
        v28 = vabsq_f32(v26);
        do
        {
          v29 = xmmword_1AFE48230[v24];
          v30 = vaddvq_s32(vmulq_s32(v10, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v25, v29, v27), 0), v18))));
          v31 = vsubq_f32(v29, v28);
          v32 = vmulq_f32(v31, v31);
          *(v19 + 4 * v30) = *(v19 + 4 * v30) + (((0.1 * v17.f32[0]) * fmaxf(1.0 - sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)), 0.0)) * a4);
          ++v24;
        }

        while (v24 != 8);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return result;
}

float32x4_t *voxel_draw_colored_points(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, float a5)
{
  if (a4)
  {
    v6 = 0;
    v7 = result[2];
    v8 = result->i32[2];
    v9 = vmulq_n_f32(v7, 2.0 / v8);
    v9.i32[3] = 1.0;
    v10 = result[1];
    v11.i32[0] = 1;
    v11.i32[1] = v8;
    v11.i64[1] = (v8 * v8);
    v12 = vsubq_f32(v7, v10);
    __asm { FMOV            V6.4S, #1.0 }

    v18 = vdivq_f32(_Q6, v9);
    *v5.i32 = (v8 - 1);
    v19 = vdupq_lane_s32(v5, 0);
    v19.i32[3] = 0;
    v20 = result->i64[0];
    v21 = vmulq_n_f32(xmmword_1AFE208C0, 0.1 * v18.f32[0]);
    v22 = vmulq_n_f32(xmmword_1AFE21390, 0.1 * v18.f32[0]);
    v23 = vdupq_n_s32(0x3F7FFFFFu);
    v24.i64[0] = 0xBF000000BF000000;
    v24.i64[1] = 0xBF000000BF000000;
    v25.i64[0] = 0x8000000080000000;
    v25.i64[1] = 0x8000000080000000;
    do
    {
      v26 = xmmword_1AFE201A0;
      if (a3)
      {
        v26 = vmaxnmq_f32(vmlaq_f32(v22, v21, *(a3 + 16 * v6)), 0);
      }

      v27 = *(a2 + 16 * v6);
      if ((vminvq_u32(vcgeq_f32(v7, vabdq_f32(v27, v10))) & 0x80000000) != 0)
      {
        v28 = 0;
        v26.i32[3] = vmuls_lane_f32(a5, v26, 3);
        v29 = vmulq_f32(v18, vaddq_f32(v12, v27));
        v30 = vaddq_f32(vminnmq_f32(vsubq_f32(v29, vrndmq_f32(v29)), v23), v24);
        v31 = vandq_s8(vorrq_s8(vandq_s8(v30, v25), _Q6), vorrq_s8(vcltzq_f32(v30), vcgtzq_f32(v30)));
        v32 = vabsq_f32(v30);
        v33 = vextq_s8(v26, v26, 0xCuLL);
        do
        {
          v34 = xmmword_1AFE48230[v28];
          v35 = vaddvq_s32(vmulq_s32(v11, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v29, v34, v31), 0), v19))));
          v36 = vsubq_f32(v34, v32);
          v37 = vmulq_f32(v36, v36);
          *(v20 + 16 * v35) = vmlaq_n_f32(*(v20 + 16 * v35), v33, fmaxf(1.0 - sqrtf(v37.f32[2] + vaddv_f32(*v37.f32)), 0.0));
          ++v28;
        }

        while (v28 != 8);
      }

      ++v6;
    }

    while (v6 != a4);
  }

  return result;
}

void voxel_draw_spheres(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, float a5)
{
  if (a4)
  {
    v7 = 0;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1->i32[2];
    v11 = vmulq_n_f32(v9, 2.0 / v10);
    v11.i32[3] = 1.0;
    v12.i32[0] = 1;
    v12.i32[1] = v10;
    v12.i64[1] = (v10 * v10);
    v13 = vsubq_f32(v9, v8);
    __asm { FMOV            V1.4S, #1.0 }

    v8.f32[0] = (v10 - 1);
    v19 = vdupq_lane_s32(*v8.f32, 0);
    v63 = _Q1;
    v64 = v13;
    v19.i32[3] = 0;
    v20 = a1->i64[0];
    v21 = a4;
    v61 = vdupq_n_s32(0x3F7FFFFFu);
    v62 = vdivq_f32(_Q1, v11);
    v22 = 0uLL;
    v69 = v19;
    v70 = v12;
    do
    {
      v23 = vmulq_f32(v62, vaddq_f32(v64, *(a2 + 16 * v7)));
      v24 = (v62.f32[0] * *(a3 + 4 * v7));
      v25.i64[0] = 0xBF000000BF000000;
      v25.i64[1] = 0xBF000000BF000000;
      v26 = vaddq_f32(vminnmq_f32(vsubq_f32(v23, vrndmq_f32(v23)), v61), v25);
      v25.i64[0] = 0x8000000080000000;
      v25.i64[1] = 0x8000000080000000;
      v27 = vandq_s8(vorrq_s8(vandq_s8(v26, v25), v63), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26)));
      v28 = vabsq_f32(v26);
      if (v24 <= 0)
      {
        for (i = 0; i != 8; ++i)
        {
          v57 = xmmword_1AFE48230[i];
          v58 = vaddvq_s32(vmulq_s32(v12, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v23, v57, v27), v22), v19))));
          v59 = vsubq_f32(v57, v28);
          v60 = vmulq_f32(v59, v59);
          *(v20 + 4 * v58) = *(v20 + 4 * v58) + (fmaxf(1.0 - sqrtf(v60.f32[2] + vaddv_f32(*v60.f32)), 0.0) * a5);
        }
      }

      else
      {
        v29 = 0;
        v67 = v27;
        v68 = v23;
        v66 = v28;
        do
        {
          v30 = xmmword_1AFE48230[v29];
          v31 = vmlaq_f32(v23, v30, v27);
          v32 = vsubq_f32(v30, v28);
          v33 = vmulq_f32(v32, v32);
          v34 = fmaxf(1.0 - sqrtf(v33.f32[2] + vaddv_f32(*v33.f32)), 0.0) * a5;
          v35 = -v24;
          v71 = v31;
          do
          {
            v72 = v35;
            v36 = cos((v35 / v24) * 3.14159265 * 0.5);
            v22 = 0uLL;
            v19 = v69;
            v12 = v70;
            v37 = 0;
            v38 = v36 * v24;
            v39 = -v38;
            v40 = 2 - 2 * v38;
            do
            {
              v41.f32[0] = -v39;
              v42 = v41.u32[0];
              v42.f32[1] = v37;
              v42.f32[2] = v35;
              v41.f32[1] = -v37;
              v41.i64[1] = LODWORD(v72);
              v43 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v42), 0), v69))));
              v44 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v41), 0), v69))));
              v45.f32[0] = v39;
              v46 = COERCE_UNSIGNED_INT(v39);
              *(v20 + 4 * v43) = v34 + *(v20 + 4 * v43);
              v46.f32[1] = v41.f32[1];
              v46.f32[2] = v35;
              *(v20 + 4 * v44) = v34 + *(v20 + 4 * v44);
              v47 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v46), 0), v69))));
              v45.f32[1] = v37;
              v45.i64[1] = LODWORD(v72);
              *(v20 + 4 * v47) = v34 + *(v20 + 4 * v47);
              v48 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v45), 0), v69))));
              v49 = 2 * (v37 + 1);
              if (v40 > v37)
              {
                v50 = 0;
              }

              else
              {
                ++v37;
                v50 = v49 + 1;
              }

              v51 = v50 + v40;
              v53 = v40 > v39 || v51 > v37;
              *(v20 + 4 * v48) = v34 + *(v20 + 4 * v48);
              v54 = 2 * (v39 + 1);
              if (v53)
              {
                ++v39;
                v55 = v54 + 1;
              }

              else
              {
                v55 = 0;
              }

              v40 = v55 + v51;
            }

            while (v39 < 1);
          }

          while (v35++ != v24);
          ++v29;
          v27 = v67;
          v23 = v68;
          v28 = v66;
        }

        while (v29 != 8);
      }

      ++v7;
    }

    while (v7 != v21);
  }
}

float32x4_t *voxel_draw_colored_spheres(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a5)
  {
    v11 = 0;
    v12 = result[2];
    v13 = result->i32[2];
    v14 = vmulq_n_f32(v12, 2.0 / v13);
    v14.i32[3] = 1.0;
    v15.i32[0] = 1;
    v15.i32[1] = v13;
    v15.i64[1] = (v13 * v13);
    v16 = vsubq_f32(v12, result[1]);
    __asm { FMOV            V4.4S, #1.0 }

    *&a11 = (v13 - 1);
    v22 = vdupq_lane_s32(*&a11, 0);
    v22.i32[3] = 0;
    v23 = vdivq_f32(_Q4, v14);
    v24 = result->i64[0];
    v25 = vdupq_n_s32(0x3F7FFFFFu);
    v26.i64[0] = 0xBF000000BF000000;
    v26.i64[1] = 0xBF000000BF000000;
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    do
    {
      v28 = xmmword_1AFE201A0;
      if (a4)
      {
        v28 = vmaxnmq_f32(vmlaq_f32(vmulq_n_f32(xmmword_1AFE21390, v23.f32[0] * *(a3 + 4 * v11)), vmulq_n_f32(xmmword_1AFE208C0, v23.f32[0] * *(a3 + 4 * v11)), *(a4 + 16 * v11)), 0);
      }

      v29 = 0;
      v30 = vmulq_f32(v23, vaddq_f32(v16, *(a2 + 16 * v11)));
      v28.i32[3] = vmuls_lane_f32(a6, v28, 3);
      v31 = vaddq_f32(vminnmq_f32(vsubq_f32(v30, vrndmq_f32(v30)), v25), v26);
      v32 = vandq_s8(vorrq_s8(vandq_s8(v31, v27), _Q4), vorrq_s8(vcltzq_f32(v31), vcgtzq_f32(v31)));
      v33 = vabsq_f32(v31);
      v34 = vextq_s8(v28, v28, 0xCuLL);
      do
      {
        v35 = xmmword_1AFE48230[v29];
        v36 = vaddvq_s32(vmulq_s32(v15, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v30, v35, v32), 0), v22))));
        v37 = vsubq_f32(v35, v33);
        v38 = vmulq_f32(v37, v37);
        *(v24 + 16 * v36) = vaddq_f32(*(v24 + 16 * v36), vmulq_n_f32(v34, fmaxf(1.0 - sqrtf(v38.f32[2] + vaddv_f32(*v38.f32)), 0.0)));
        ++v29;
      }

      while (v29 != 8);
      ++v11;
    }

    while (v11 != a5);
  }

  return result;
}

uint64_t voxel_opacity_color_clamp(uint64_t result)
{
  v1 = (*(result + 8) * *(result + 8) * *(result + 8));
  if (v1)
  {
    v2 = *result;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      *v2 = vminnmq_f32(*v2, _Q0);
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t voxel_opacity_clamp(uint64_t result)
{
  v1 = (*(result + 8) * *(result + 8) * *(result + 8));
  if (v1)
  {
    v2 = *result;
    do
    {
      *v2 = fminf(*v2, 1.0);
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

float32x4_t merge_aabb(float32x4_t *a1, float32x4_t *a2, float32x4_t a3)
{
  v3 = vminq_f32(vsubq_f32(*a1, *a2), a3);
  v4 = vmaxq_f32(vaddq_f32(*a1, *a2), a3);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  *a1 = vmulq_f32(vaddq_f32(v3, v4), v5);
  result = vmulq_f32(vsubq_f32(v4, v3), v5);
  *a2 = result;
  return result;
}

__n64 sub_1AF379DB4(double a1, double a2, double a3, float a4, int8x16_t a5, int8x16_t a6)
{
  *a6.i32 = (((*&a3 * -1.5) + (a4 * 0.5)) + (*&a2 * 1.5)) + (*&a1 * -0.5);
  *&a2 = (((*&a3 + *&a3) + (a4 * -0.5)) + (*&a2 * -2.5)) + *&a1;
  *&a1 = (*&a1 * -0.5) + (*&a3 * 0.5);
  *&a3 = *a5.i32 * *a5.i32;
  *&a2 = (*&a2 + *&a2) * *a5.i32;
  v6 = vaddq_f32(vdupq_lane_s32(*&a1, 0), vmlaq_n_f32(vdupq_lane_s32(*&a2, 0), vdupq_lane_s32(*&a3, 0), *a6.i32 * 3.0));
  v7 = vmulq_f32(v6, v6);
  *&v8 = *&v7.i32[2] + vaddv_f32(*v7.i8);
  *v7.i8 = vrsqrte_f32(v8);
  *v7.i8 = vmul_f32(*v7.i8, vrsqrts_f32(v8, vmul_f32(*v7.i8, *v7.i8)));
  v9 = vmulq_n_f32(v6, vmul_f32(*v7.i8, vrsqrts_f32(v8, vmul_f32(*v7.i8, *v7.i8))).f32[0]);
  a5.i32[0] = v9.i32[2];
  a6.i32[0] = 1.0;
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v10 = *vbslq_s8(v7, a6, a5).i32;
  v6.f32[0] = v9.f32[1] / (fabsf(v9.f32[2]) + 1.0);
  *v7.i32 = -(v9.f32[0] * v6.f32[0]);
  result.n64_f32[0] = v9.f32[2] + (v10 * vmuls_lane_f32(v6.f32[0], *v9.f32, 1));
  result.n64_f32[1] = v10 * *v7.i32;
  return result;
}

double catmull_rom_spline_basis_quat(double a1, double a2, double a3, float a4, int8x16_t a5, int8x16_t a6)
{
  *v6.i8 = sub_1AF379DB4(a1, a2, a3, a4, a5, a6);
  *v11.i32 = v9 + (*v6.i32 + *&v7.i32[1]);
  if (*v11.i32 >= 0.0)
  {
    v19 = sqrtf(*v11.i32 + 1.0);
    v20 = vrecpe_f32(COERCE_UNSIGNED_INT(v19 + v19));
    v21 = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v19 + v19), v20));
    *v10.i8 = vrecps_f32(COERCE_UNSIGNED_INT(v19 + v19), v21);
    v21.f32[0] = vmul_f32(v21, *v10.i8).f32[0];
    *v10.i32 = (*&v7.i32[2] - v8.n64_f32[1]) * v21.f32[0];
    v8.n64_u32[1] = v6.u32[1];
    *v11.i8 = vmul_n_f32(vsub_f32(v8.n64_u64[0], *&vzip2q_s32(v6, vuzp1q_s32(v6, v7))), v21.f32[0]);
  }

  else if (*v6.i32 < *&v7.i32[1] || *v6.i32 < v9)
  {
    v13 = 1.0 - *v6.i32;
    if (*&v7.i32[1] >= v9)
    {
      v26 = sqrtf(*&v7.i32[1] + (v13 - v9));
      v27.f32[0] = v26 + v26;
      v28 = vrecpe_f32(COERCE_UNSIGNED_INT(v26 + v26));
      v29 = vmul_f32(v28, vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v28));
      *v10.i8 = vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v29);
      v29.f32[0] = vmul_f32(v29, *v10.i8).f32[0];
      *v10.i32 = (*&v6.i32[1] + *v7.i32) * v29.f32[0];
      v27.f32[1] = *&v7.i32[2] + v8.n64_f32[1];
      __asm { FMOV            V1.2S, #0.25 }

      _D1.i32[1] = v29.i32[0];
      *v11.i8 = vmul_f32(v27, _D1);
    }

    else
    {
      v14 = sqrtf(v9 + (v13 - *&v7.i32[1]));
      v15 = v14 + v14;
      v16 = vrecpe_f32(COERCE_UNSIGNED_INT(v14 + v14));
      v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v16));
      *v10.i8 = vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v17);
      v17.f32[0] = vmul_f32(v17, *v10.i8).f32[0];
      *v10.i32 = (*&v6.i32[2] + v8.n64_f32[0]) * v17.f32[0];
      v18.f32[1] = v15;
      v17.i32[1] = 0.25;
      v18.f32[0] = *&v7.i32[2] + v8.n64_f32[1];
      *v11.i8 = vmul_f32(v18, v17);
    }
  }

  else
  {
    v22 = sqrtf(*v6.i32 + ((1.0 - *&v7.i32[1]) - v9));
    *&v23 = v22 + v22;
    v24 = vrecpe_f32(v23);
    v25 = vmul_f32(v24, vrecps_f32(v23, v24));
    v25.f32[0] = vmul_f32(v25, vrecps_f32(v23, v25)).f32[0];
    *v10.i32 = *&v23 * 0.25;
    *v11.i8 = vmul_n_f32(vadd_f32(*&vextq_s8(v6, v6, 4uLL), vzip1_s32(*v7.i8, v8.n64_u64[0])), v25.f32[0]);
  }

  *&result = vextq_s8(vextq_s8(v10, v10, 4uLL), v11, 0xCuLL).u64[0];
  return result;
}

float catmull_rom_spline_arclength(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5, float a6)
{
  v6 = 0;
  v7 = (a6 - a5) * 0.5;
  v8 = (a5 + a6) * 0.5;
  __asm { FMOV            V5.4S, #-1.5 }

  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V16.4S, #1.5 }

  v16 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(a3, _Q5), v14, a4), _Q16, a2), v14, a1);
  v17 = vmlsq_f32(vaddq_f32(a3, a3), v14, a4);
  __asm { FMOV            V3.4S, #-2.5 }

  v19 = vaddq_f32(a1, vmlaq_f32(v17, _Q3, a2));
  v20.i64[0] = 0xBF000000BF000000;
  v20.i64[1] = 0xBF000000BF000000;
  v21 = vmlaq_f32(vmulq_f32(a1, v20), v14, a3);
  __asm { FMOV            V1.4S, #3.0 }

  v23 = vmulq_f32(v16, _Q1);
  v24 = vaddq_f32(v19, v19);
  v25 = 0.0;
  do
  {
    v26 = vaddq_f32(v21, vmlaq_n_f32(vmulq_n_f32(v24, v8 + (v7 * *&dword_1AFE482B0[v6])), v23, (v8 + (v7 * *&dword_1AFE482B0[v6])) * (v8 + (v7 * *&dword_1AFE482B0[v6]))));
    v27 = vmulq_f32(v26, v26);
    v25 = v25 + (*&dword_1AFE482E4[v6++] * sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)));
  }

  while (v6 != 13);
  return v7 * v25;
}

float sample_curve(uint64_t a1, float a2)
{
  v2 = *(a1 + 144) + (fminf(fmaxf(a2, 0.0), 1.0) * *(a1 + 140));
  v3 = vcvtms_s32_f32(v2);
  v4 = v2 - floorf(v2);
  v5 = (a1 + 4 * v3);
  return ((*v5 + *v5) + (((v5[1] - *(v5 - 1)) + ((((((v5[1] * 4.0) + (*(v5 - 1) * 2.0)) + (*v5 * -5.0)) - v5[2]) + (((v5[2] + ((*v5 - v5[1]) * 3.0)) - *(v5 - 1)) * v4)) * v4)) * v4)) * 0.5;
}

void computeTangents(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, float32x4_t *a9, uint64_t a10, int a11)
{
  v15 = a4;
  v17 = a9;
  if (a3 == 4)
  {
    v18 = a4;
    v15 = 0;
  }

  else
  {
    if (a3 != 2)
    {
      printf("ComputeTangents : Unsupported index size (%zu)", a3);
      return;
    }

    v18 = 0;
  }

  v19 = malloc_type_calloc(16 * a2, 1uLL, 0x1000040451B5BE8uLL);
  if (a1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v20.i32[3] = 0;
    do
    {
      if (v15)
      {
        v25 = *(v15 + 2 * v24);
        v26 = *(v15 + 2 * (v24 + 1));
        v27 = *(v15 + 2 * (v24 + 2));
      }

      else if (v18)
      {
        v25 = *(v18 + 4 * v24);
        v26 = *(v18 + 4 * (v24 + 1));
        v27 = *(v18 + 4 * (v24 + 2));
      }

      v28 = *(a10 + (v25 * a11));
      v29 = vsub_f32(*(a10 + (v26 * a11)), v28);
      v30 = vsub_f32(*(a10 + (v27 * a11)), v28);
      v31 = (-v29.f32[1] * *v30.i32) + (v29.f32[0] * *&v30.i32[1]);
      if (v31 == 0.0)
      {
        v30 = vadd_f32(v30, COERCE_FLOAT32X2_T(-3.18618444e-58));
        v29 = vadd_f32(v29, 0xB4000000B4000000);
        v31 = (-v29.f32[1] * *v30.i32) + (v29.f32[0] * *&v30.i32[1]);
      }

      v32 = a5 + (v25 * a6);
      v21.i64[0] = *v32;
      v21.i32[2] = *(v32 + 8);
      v33 = a5 + (v26 * a6);
      v22.i64[0] = *v33;
      v22.i32[2] = *(v33 + 8);
      v34 = a5 + (v27 * a6);
      v23.i64[0] = *v34;
      v23.i32[2] = *(v34 + 8);
      v22 = vsubq_f32(v22, v21);
      v21 = vsubq_f32(v23, v21);
      v35 = v31;
      v36 = vrecpe_f32(LODWORD(v31));
      v37 = vmul_f32(v36, vrecps_f32(LODWORD(v35), v36));
      v37.i32[0] = vmul_f32(v37, vrecps_f32(LODWORD(v35), v37)).u32[0];
      v23 = vmulq_n_f32(vmlaq_lane_f32(vmulq_lane_f32(vnegq_f32(v21), v29, 1), v22, v30, 1), v37.f32[0]);
      v23.i32[3] = 0;
      a9[v25] = vaddq_f32(a9[v25], v23);
      a9[v26] = vaddq_f32(a9[v26], v23);
      a9[v27] = vaddq_f32(a9[v27], v23);
      v38 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v22, vnegq_f32(vdupq_lane_s32(v30, 0))), v21, v29.f32[0]), v37.f32[0]);
      v38.i32[3] = v20.i32[3];
      v19[v25] = vaddq_f32(v38, v19[v25]);
      v19[v26] = vaddq_f32(v38, v19[v26]);
      v19[v27] = vaddq_f32(v38, v19[v27]);
      v24 += 3;
      v20.i64[1] = v38.i64[1];
    }

    while (3 * a1 != v24);
  }

  if (a2)
  {
    v39 = 0;
    v40 = a2;
    v41 = v19;
    do
    {
      v42 = a7 + v39;
      v20.i64[0] = *v42;
      v43 = v20;
      v43.i32[2] = *(v42 + 8);
      v20.i32[2] = v43.i32[2];
      v44 = vmulq_f32(*v17, v20);
      v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
      v45 = vmlsq_lane_f32(*v17, v43, *v44.f32, 0);
      v46 = vmulq_f32(v45, v45);
      *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
      *v46.f32 = vrsqrte_f32(v47);
      v20 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
      v48 = *v41++;
      v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v43)), v20, vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL));
      v50 = vmulq_f32(v48, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
      if ((v50.f32[2] + vaddv_f32(*v50.f32)) < 0.0)
      {
        v51 = -1.0;
      }

      else
      {
        v51 = 1.0;
      }

      v20.f32[3] = v51;
      *v17++ = v20;
      v39 += a8;
      --v40;
    }

    while (v40);
  }

  free(v19);
}

uint64_t matrix_multiply_batch(uint64_t result, uint64_t a2, unint64_t a3, double a4, double a5, __n128 a6, __n128 a7)
{
  v9[2] = a6;
  v9[3] = a7;
  if (a3)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(result + i * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*(a2 + (v7 << 6) + 16), *&v9[i], 1), *(a2 + (v7 << 6)), COERCE_FLOAT(v9[i])), *(a2 + (v7 << 6) + 32), v9[i], 2), *(a2 + (v7 << 6) + 48), v9[i], 3);
      }

      ++v7;
      result += 64;
    }

    while (a3 > v7);
  }

  return result;
}

uint64_t matrix_multiply_constant_batch(uint64_t result, uint64_t a2, unint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a3)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 64; i += 16)
      {
        *(result + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a5, *(a2 + i), 1), a4, COERCE_FLOAT(*(a2 + i))), a6, *(a2 + i), 2), a7, *(a2 + i), 3);
      }

      ++v7;
      a2 += 64;
      result += 64;
    }

    while (a3 > v7);
  }

  return result;
}

int32x4_t matrix_transpose_batch(uint64_t a1, int32x4_t *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2 + 2;
    v4 = (a1 + 32);
    v5 = 1;
    do
    {
      v6 = v3[-2];
      v7 = v3[-1];
      v8 = *v3;
      v9 = v3[1];
      v3 += 4;
      v10 = vzip1q_s32(v6, v8);
      v15.val[0] = vzip2q_s32(v6, v8).u64[0];
      v11 = vzip1q_s32(v7, v9);
      v15.val[1] = vzip2q_s32(v7, v9).u64[0];
      result = vzip2q_s32(v10, v11);
      v13 = v4 - 8;
      vst2_f32(v13, v10);
      *(v4 - 1) = result;
      v14 = v5;
      vst2_f32(v4, v15);
      ++v5;
      v4 += 12;
    }

    while (v14 < a3);
  }

  return result;
}

void sph_compute_pressures_and_densitites_2d(__int128 *a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[3];
  v7 = a3[4];
  v23 = a1[1];
  v41 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  v11 = *(a1 + 60);
  v42 = *(a1 + 44);
  v43 = v11;
  v44 = *(a1 + 19);
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v13 = a5 - a4;
  if (a5 <= a4)
  {
    v24 = vnegq_f32(v12);
  }

  else
  {
    v15 = v9 * (v9 * (v9 * vmuls_lane_f32(v10, v23, 3)));
    v16 = MEMORY[0x1E69E9820];
    v17 = a4;
    v24 = vnegq_f32(v12);
    do
    {
      v18 = *(v5 + 8 * v17);
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = v15;
      v25[0] = v16;
      v25[1] = 3221225472;
      v25[2] = sub_1AF37A834;
      v25[3] = &unk_1E7A7FA38;
      v36 = v18;
      v26 = v41;
      v27 = v23;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v33 = v44;
      v32 = v43;
      v31 = v42;
      v34 = &v37;
      v35 = v5;
      vfx_uniform_grid_apply(a2, v17, v25);
      v19 = v38[6];
      *(v6 + 4 * v17) = v19;
      v20.i64[1] = v23.i64[1];
      v21 = v23.f32[1] * (v19 - v23.f32[0]);
      *(v7 + 4 * v17) = v21;
      v20.i32[0] = *(v6 + 4 * v17);
      v20.f32[1] = v21;
      v20.i64[1] = vnegq_f32(v20).u64[0];
      v24 = vminnmq_f32(v24, v20);
      _Block_object_dispose(&v37, 8);
      ++v17;
      --v13;
    }

    while (v13);
  }

  *(a1 + 15) = v24.i32[1];
  *(a1 + 13) = v24.i32[0];
  *(a1 + 14) = -v24.f32[2];
  *(a1 + 16) = -v24.f32[3];
}

float32x2_t *sub_1AF37A834(float32x2_t *result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result[15];
    v4 = a3;
    do
    {
      v5 = *a2++;
      v6 = vsub_f32(*(*&v3 + 8 * v5), result[16]);
      v7 = vaddv_f32(vmul_f32(v6, v6));
      v8 = result[8].f32[1];
      if (v8 > v7)
      {
        *(*(*&result[14] + 8) + 24) = *(*(*&result[14] + 8) + 24) + (((v8 - v7) * ((v8 - v7) * (result[7].f32[1] * result[9].f32[0]))) * (v8 - v7));
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sph_compute_forces_2d(__int128 *a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v23 = a3[1];
  v24 = *a3;
  v5 = a3[2];
  v21 = a3[4];
  v22 = a3[3];
  v6 = *a1;
  v7 = *(a1 + 28);
  v8 = *(a1 + 60);
  v53 = *(a1 + 44);
  v54 = v8;
  v55 = *(a1 + 19);
  v51 = *(a1 + 12);
  v52 = v7;
  if (a4 < a5)
  {
    v9 = 0;
    v18 = v24 + 8 * a4;
    v17 = MEMORY[0x1E69E9820];
    v10 = v23 + 8 * a4;
    v11 = v22 + 4 * a4;
    v12 = v5 + 8 * a4;
    v13 = a4 - a5;
    v14 = v21 + 4 * a4;
    v26 = v6;
    do
    {
      v15 = *(v10 + 8 * v9);
      v25 = *(v11 + 4 * v9);
      v16 = *(v14 + 4 * v9);
      v37 = *(v18 + 8 * v9);
      v30 = v52;
      v31 = v53;
      v32 = v54;
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v27[0] = v17;
      v27[1] = 3221225472;
      v27[2] = sub_1AF37AAF8;
      v27[3] = &unk_1E7A7FA60;
      v28 = DWORD2(v6);
      v35 = &v43;
      v36 = v24;
      v27[4] = v6;
      v33 = v55;
      v29 = v51;
      v38 = v23;
      v39 = v22;
      v40 = v21;
      v42 = v16;
      v34 = &v47;
      v41 = v15;
      vfx_uniform_grid_apply(a2, a4 + v9, v27);
      *(v12 + 8 * v9) = vadd_f32(vmul_n_f32(*&v26, v25), vadd_f32(v48[3], v44[3]));
      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      ++v9;
      v6 = v26;
    }

    while (v13 + v9);
  }
}

void sub_1AF37AAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Unwind_Resume(a1);
}

float32x2_t *sub_1AF37AAF8(float32x2_t *result, unsigned int *a2, unsigned int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a3)
  {
    v9 = a3;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = vsub_f32(*(*&result[16] + 8 * v11), result[17]);
      *&a9 = sqrtf(vaddv_f32(vmul_f32(v12, v12))) + 0.0000001;
      v13 = result[7].f32[0] - *&a9;
      if (v13 > 0.0)
      {
        v14 = *(*&result[18] + 8 * v10);
        v15 = 1.0 / *(*&result[19] + 4 * v10);
        *&a9 = (v13 * (v13 * result[9].f32[1])) * ((result[7].f32[1] / *&a9) * (v15 * ((*(*&result[20] + 4 * v10) + result[22].f32[0]) * 0.5)));
        *(*(*&result[14] + 8) + 24) = vmls_lane_f32(*(*(*&result[14] + 8) + 24), v12, *&a9, 0);
        v16 = *(*&result[15] + 8);
        a9 = COERCE_DOUBLE(vmla_n_f32(v16[3], vsub_f32(v14, result[21]), (v13 * v15) * ((result[10].f32[0] * result[8].f32[0]) * result[7].f32[1])));
        *&v16[3] = a9;
      }

      --v9;
    }

    while (v9);
  }

  return result;
}

void sph_compute_pressures_and_densitites_3d(__int128 *a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[3];
  v7 = a3[4];
  v23 = a1[1];
  v41 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  v11 = *(a1 + 60);
  v42 = *(a1 + 44);
  v43 = v11;
  v44 = *(a1 + 19);
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v13 = a5 - a4;
  if (a5 <= a4)
  {
    v24 = vnegq_f32(v12);
  }

  else
  {
    v15 = v9 * (v9 * (v9 * vmuls_lane_f32(v10, v23, 3)));
    v16 = MEMORY[0x1E69E9820];
    v17 = a4;
    v24 = vnegq_f32(v12);
    do
    {
      v18 = *(v5 + 16 * v17);
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = v15;
      v25[0] = v16;
      v25[1] = 3221225472;
      v25[2] = sub_1AF37AE1C;
      v25[3] = &unk_1E7A7FA88;
      v27 = v41;
      v26 = v18;
      v28 = v23;
      v29 = v8;
      v30 = v9;
      v31 = v10;
      v34 = v44;
      v33 = v43;
      v32 = v42;
      v35 = &v37;
      v36 = v5;
      vfx_uniform_grid_apply(a2, v17, v25);
      v19 = v38[6];
      *(v6 + 4 * v17) = v19;
      v20.i64[1] = v23.i64[1];
      v21 = v23.f32[1] * (v19 - v23.f32[0]);
      *(v7 + 4 * v17) = v21;
      v20.i32[0] = *(v6 + 4 * v17);
      v20.f32[1] = v21;
      v20.i64[1] = vnegq_f32(v20).u64[0];
      v24 = vminnmq_f32(v24, v20);
      _Block_object_dispose(&v37, 8);
      ++v17;
      --v13;
    }

    while (v13);
  }

  *(a1 + 15) = v24.i32[1];
  *(a1 + 13) = v24.i32[0];
  *(a1 + 14) = -v24.f32[2];
  *(a1 + 16) = -v24.f32[3];
}

float32x4_t *sub_1AF37AE1C(float32x4_t *result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result[8].i64[1];
    v4 = a3;
    do
    {
      v5 = *a2++;
      v6 = vsubq_f32(*(v3 + 16 * v5), result[2]);
      v7 = vmulq_f32(v6, v6);
      v8 = v7.f32[2] + vaddv_f32(*v7.f32);
      v9 = result[5].f32[1];
      if (v9 > v8)
      {
        *(*(result[8].i64[0] + 8) + 24) = *(*(result[8].i64[0] + 8) + 24) + (((v9 - v8) * ((v9 - v8) * (result[4].f32[3] * result[5].f32[2]))) * (v9 - v8));
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sph_compute_forces_3d(float32x4_t *a1, uint64_t a2, __int128 *a3, unsigned int a4, unsigned int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 2);
  v23 = *(a3 + 24);
  v24 = *a3;
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v50 = a1[1];
  v51 = v7;
  v9 = a1[4];
  v52 = v8;
  v53 = v9;
  if (a4 < a5)
  {
    v10 = 0;
    v21 = MEMORY[0x1E69E9820];
    v11 = v24 + 16 * a4;
    v12 = *(&v24 + 1) + 16 * a4;
    v13 = v23 + 4 * a4;
    v14 = *(&v23 + 1) + 4 * a4;
    v15 = v5 + 16 * a4;
    v16 = a4 - a5;
    v26 = v6;
    do
    {
      v17 = *(v11 + 16 * v10);
      v18 = *(v12 + 16 * v10);
      v25 = *(v13 + 4 * v10);
      v19 = *(v14 + 4 * v10);
      v45 = 0;
      v46 = &v45;
      v47 = 0x3020000000;
      v48 = 0;
      v49 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x3020000000;
      v43 = 0;
      v44 = 0;
      v27[0] = v21;
      v27[1] = 3221225472;
      v27[2] = sub_1AF37B0AC;
      v27[3] = &unk_1E7A7FAB0;
      v28 = v17;
      v29 = v6;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v37 = v24;
      v38 = v23;
      v39 = v19;
      v35 = &v45;
      v36 = &v40;
      v34 = v18;
      vfx_uniform_grid_apply(a2, a4 + v10, v27);
      *(v15 + 16 * v10) = vaddq_f32(vmulq_n_f32(v26, v25), vaddq_f32(v46[2], v41[2]));
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v45, 8);
      ++v10;
      v6 = v26;
    }

    while (v16 + v10);
  }
}

void sub_1AF37B088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 224), 8);
  _Unwind_Resume(a1);
}

float32x4_t *sub_1AF37B0AC(float32x4_t *result, unsigned int *a2, unsigned int a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  if (a3)
  {
    v9 = a3;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = vsubq_f32(*(result[10].i64[0] + 16 * v11), result[2]);
      v13 = vmulq_f32(v12, v12);
      a9.f32[0] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)) + 0.0000001;
      v14 = result[4].f32[2] - a9.f32[0];
      if (v14 > 0.0)
      {
        v15 = *(result[10].i64[1] + 16 * v10);
        v16 = 1.0 / *(result[11].i64[0] + 4 * v10);
        a9.f32[0] = (v14 * (v14 * result[5].f32[3])) * ((result[4].f32[3] / a9.f32[0]) * (v16 * ((*(result[11].i64[1] + 4 * v10) + result[12].f32[0]) * 0.5)));
        *(*(result[9].i64[0] + 8) + 32) = vmlsq_lane_f32(*(*(result[9].i64[0] + 8) + 32), v12, *a9.f32, 0);
        v17 = *(result[9].i64[1] + 8);
        a9 = vmlaq_n_f32(v17[2], vsubq_f32(v15, result[8]), (v14 * v16) * ((result[6].f32[0] * result[5].f32[0]) * result[4].f32[3]));
        v17[2] = a9;
      }

      --v9;
    }

    while (v9);
  }

  return result;
}

double sub_1AF37B198(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    v6.i64[0] = 0;
  }

  else
  {
    v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)));
    v7 = *(*(a1 + 64) + vaddvq_s32(v6));
    v8 = (v7 >> 10) & 0x1F;
    if (v8 == 31)
    {
      v9 = 2139095040;
    }

    else
    {
      v9 = (v7 >> 10) & 0x1F;
    }

    if (v8)
    {
      _ZF = v8 == 31;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v11 = v9;
    }

    else
    {
      v11 = (v8 << 23) + 939524096;
    }

    v6.i32[0] = v11 | (v7 << 16) & 0x80000000 | (v7 >> 7) & 7 | (8 * (v7 & 0x3FF)) & 0x1FFF | ((v7 & 0x3FF) << 13);
    v6.i64[0] = vdupq_lane_s32(*v6.i8, 0).u64[0];
  }

  return *v6.i64;
}

double sub_1AF37B238(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v7).u64[0];
  return result;
}

double sub_1AF37B290(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vandq_s8(vmovl_s16(v7), v8);
  v10 = vshll_n_u16(v7, 0xDuLL);
  v11 = vorrq_s8(vandq_s8(v10, vdupq_n_s32(0xF800000u)), vorrq_s8(v9, vandq_s8(v10, vdupq_n_s32(0x7FE000u))));
  v9.i64[0] = 0x3800000038000000;
  v9.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v11, v9).u64[0];
  return result;
}

double sub_1AF37B31C(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    *&v7 = 0;
  }

  else
  {
    v7 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  }

  return *&v7;
}

double sub_1AF37B370(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)));
  v7.i32[0] = vaddvq_s32(v7);
  v7.i8[0] = *(*(a1 + 64) + v7.i32[0]);
  *v7.i32 = v7.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v7.i8, 0).u64[0];
  return result;
}

double sub_1AF37B3D8(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v14 = a1[1];
  v15 = a1[2];
  v16 = vmulq_s32(v15, vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), v14));
  v16.i32[0] = vaddvq_s32(v16);
  v16.i8[0] = *(a1[4].i64[0] + v16.i32[0]);
  v15.f32[0] = v16.u32[0] * 0.0039216;
  v16.f32[0] = v15.f32[0] * v15.f32[0];
  v14.f32[0] = v16.f32[0] * v16.f32[0];
  a5.i32[0] = 1033798545;
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v17 = vmlaq_f32(a7, a6, v15);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v18 = vmlaq_f32(a8, a6, v15);
  v19 = vmlaq_f32(v17, v16, v18);
  a6.i32[0] = 1064027478;
  v18.i32[0] = -1083773218;
  v20 = vmlaq_f32(v18, a6, v15);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v21 = vdupq_lane_s32(*&vmlaq_f32(v19, v14, vmlaq_f32(v20, v16, vmlaq_f32(a9, a6, v15))), 0);
  v22 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v15, vdupq_n_s32(0x3D25AEE6u))), 0));
  v22.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v22), v21, vdupq_lane_s32(*&vmulq_f32(v15, a5), 0)).u64[0];
  return result;
}

double sub_1AF37B4E0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37B560(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9));
  v11 = vmulq_f32(v10, vdupq_n_s32(0x3B808081u));
  v12 = vmulq_f32(v11, v11);
  v13 = vmulq_f32(v10, vdupq_n_s32(0x399F22B4u));
  v14 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v10), v12, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v10)), vmulq_f32(v12, v12), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v10), v12, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v10)));
  v15 = vcgeq_f32(v11, vdupq_n_s32(0x3D25AEE6u));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), v14, v13).u64[0];
  return result;
}

double sub_1AF37B694(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v10, v10, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37B71C(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9));
  v11 = vmulq_f32(v10, vdupq_n_s32(0x3B808081u));
  v12 = vmulq_f32(v11, v11);
  v13 = vmulq_f32(v10, vdupq_n_s32(0x399F22B4u));
  v14 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v10), v12, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v10)), vmulq_f32(v12, v12), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v10), v12, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v10)));
  v15 = vcgeq_f32(v11, vdupq_n_s32(0x3D25AEE6u));
  v15.i32[3] = 0;
  v16 = vbslq_s8(vcltzq_s32(v15), v14, v13);
  v16.i32[3] = v11.i32[3];
  v17 = vrev64q_s32(v16);
  *&result = vextq_s8(v17, v17, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37B858(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)));
  v7 = *(*(a1 + 64) + vaddvq_s32(v6));
  v8 = (v7 >> 10) & 0x1F;
  if (v8 == 31)
  {
    v9 = 2139095040;
  }

  else
  {
    v9 = (v7 >> 10) & 0x1F;
  }

  if (v8)
  {
    _ZF = v8 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v11 = v9;
  }

  else
  {
    v11 = (v8 << 23) + 939524096;
  }

  v6.i32[0] = v11 | (v7 << 16) & 0x80000000 | (v7 >> 7) & 7 | (8 * (v7 & 0x3FF)) & 0x1FFF | ((v7 & 0x3FF) << 13);
  v6.i64[0] = vdupq_lane_s32(*v6.i8, 0).u64[0];
  return *v6.i64;
}

double sub_1AF37B8E4(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v7).u64[0];
  return result;
}

double sub_1AF37B928(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vandq_s8(vmovl_s16(v7), v8);
  v10 = vshll_n_u16(v7, 0xDuLL);
  v11 = vorrq_s8(vandq_s8(v10, vdupq_n_s32(0xF800000u)), vorrq_s8(v9, vandq_s8(v10, vdupq_n_s32(0x7FE000u))));
  v9.i64[0] = 0x3800000038000000;
  v9.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v11, v9).u64[0];
  return result;
}

__n128 sub_1AF37B9A0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  return *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
}

double sub_1AF37B9E0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)));
  v7.i32[0] = vaddvq_s32(v7);
  v7.i8[0] = *(*(a1 + 64) + v7.i32[0]);
  *v7.i32 = v7.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v7.i8, 0).u64[0];
  return result;
}

double sub_1AF37BA34(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v14 = a1[1];
  v15 = vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), v14);
  v16 = a1[2];
  v17 = vmulq_s32(v16, v15);
  v17.i32[0] = vaddvq_s32(v17);
  v17.i8[0] = *(a1[4].i64[0] + v17.i32[0]);
  v16.f32[0] = v17.u32[0] * 0.0039216;
  v17.f32[0] = v16.f32[0] * v16.f32[0];
  v14.i32[0] = 1033798545;
  a5.f32[0] = v17.f32[0] * v17.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v18 = vmlaq_f32(a7, a6, v16);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v19 = vmlaq_f32(a8, a6, v16);
  v20 = vmlaq_f32(v18, v17, v19);
  a6.i32[0] = 1064027478;
  v19.i32[0] = -1083773218;
  v21 = vmlaq_f32(v19, a6, v16);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v22 = vdupq_lane_s32(*&vmlaq_f32(v20, a5, vmlaq_f32(v21, v17, vmlaq_f32(a9, a6, v16))), 0);
  v23 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v16, vdupq_n_s32(0x3D25AEE6u))), 0));
  v23.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v23), v22, vdupq_lane_s32(*&vmulq_f32(v16, v14), 0)).u64[0];
  return result;
}

double sub_1AF37BB28(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37BB94(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1));
  v10 = vmulq_f32(v9, vdupq_n_s32(0x3B808081u));
  v11 = vmulq_f32(v10, v10);
  v12 = vmulq_f32(v9, vdupq_n_s32(0x399F22B4u));
  v13 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v9), v11, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v9));
  v14 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v9), v11, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v9));
  v15 = vcgeq_f32(v10, vdupq_n_s32(0x3D25AEE6u));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), vmlaq_f32(v13, vmulq_f32(v11, v11), v14), v12).u64[0];
  return result;
}

double sub_1AF37BCB4(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v9 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v9, v9, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37BD28(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1));
  v10 = vmulq_f32(v9, vdupq_n_s32(0x3B808081u));
  v11 = vmulq_f32(v10, v10);
  v12 = vmulq_f32(v9, vdupq_n_s32(0x399F22B4u));
  v13 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v9), v11, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v9)), vmulq_f32(v11, v11), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v9), v11, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v9)));
  v14 = vcgeq_f32(v10, vdupq_n_s32(0x3D25AEE6u));
  v14.i32[3] = 0;
  v15 = vbslq_s8(vcltzq_s32(v14), v13, v12);
  v15.i32[3] = v10.i32[3];
  v16 = vrev64q_s32(v15);
  *&result = vextq_s8(v16, v16, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37BE50(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)));
  v3 = *(*(a1 + 64) + vaddvq_s32(v2));
  v4 = (v3 >> 10) & 0x1F;
  if (v4 == 31)
  {
    v5 = 2139095040;
  }

  else
  {
    v5 = (v3 >> 10) & 0x1F;
  }

  if (v4)
  {
    v6 = v4 == 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v4 << 23) + 939524096;
  }

  v2.i32[0] = v7 | (v3 << 16) & 0x80000000 | (v3 >> 7) & 7 | (8 * (v3 & 0x3FF)) & 0x1FFF | ((v3 & 0x3FF) << 13);
  v2.i64[0] = vdupq_lane_s32(*v2.i8, 0).u64[0];
  return *v2.i64;
}

double sub_1AF37BEE0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v2).u64[0];
  return result;
}

double sub_1AF37BF28(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3.i64[0] = 0x8000000080000000;
  v3.i64[1] = 0x8000000080000000;
  v4 = vandq_s8(vmovl_s16(v2), v3);
  v5 = vshll_n_u16(v2, 0xDuLL);
  v6 = vorrq_s8(vandq_s8(v5, vdupq_n_s32(0xF800000u)), vorrq_s8(v4, vandq_s8(v5, vdupq_n_s32(0x7FE000u))));
  v4.i64[0] = 0x3800000038000000;
  v4.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v6, v4).u64[0];
  return result;
}

double sub_1AF37BFE8(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)));
  v2.i32[0] = vaddvq_s32(v2);
  v2.i8[0] = *(*(a1 + 64) + v2.i32[0]);
  *v2.i32 = v2.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v2.i8, 0).u64[0];
  return result;
}

double sub_1AF37C040(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  v9 = a1[1];
  v10 = a1[2];
  v11 = vmulq_s32(v10, vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), v9));
  v11.i32[0] = vaddvq_s32(v11);
  v11.i8[0] = *(a1[4].i64[0] + v11.i32[0]);
  v10.f32[0] = v11.u32[0] * 0.0039216;
  v11.f32[0] = v10.f32[0] * v10.f32[0];
  v9.i32[0] = 1033798545;
  a5.f32[0] = v11.f32[0] * v11.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v12 = vmlaq_f32(a7, a6, v10);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v13 = vmlaq_f32(a8, a6, v10);
  v14 = vmlaq_f32(v12, v11, v13);
  a6.i32[0] = 1064027478;
  v13.i32[0] = -1083773218;
  v15 = vmlaq_f32(v13, a6, v10);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v16 = vdupq_lane_s32(*&vmlaq_f32(v14, a5, vmlaq_f32(v15, v11, vmlaq_f32(a9, a6, v10))), 0);
  v17 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v10, vdupq_n_s32(0x3D25AEE6u))), 0));
  v17.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v17), v16, vdupq_lane_s32(*&vmulq_f32(v10, v9), 0)).u64[0];
  return result;
}

double sub_1AF37C138(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37C1A8(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4));
  v6 = vmulq_f32(v5, vdupq_n_s32(0x3B808081u));
  v7 = vmulq_f32(v6, v6);
  v8 = vmulq_f32(v5, vdupq_n_s32(0x399F22B4u));
  v9 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v5), v7, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v5));
  v10 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v5), v7, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v5));
  v11 = vcgeq_f32(v6, vdupq_n_s32(0x3D25AEE6u));
  v11.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v11), vmlaq_f32(v9, vmulq_f32(v7, v7), v10), v8).u64[0];
  return result;
}

double sub_1AF37C2CC(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v5, v5, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37C344(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4));
  v6 = vmulq_f32(v5, vdupq_n_s32(0x3B808081u));
  v7 = vmulq_f32(v6, v6);
  v8 = vmulq_f32(v5, vdupq_n_s32(0x399F22B4u));
  v9 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v5), v7, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v5)), vmulq_f32(v7, v7), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v5), v7, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v5)));
  v10 = vcgeq_f32(v6, vdupq_n_s32(0x3D25AEE6u));
  v10.i32[3] = 0;
  v11 = vbslq_s8(vcltzq_s32(v10), v9, v8);
  v11.i32[3] = v6.i32[3];
  v12 = vrev64q_s32(v11);
  *&result = vextq_s8(v12, v12, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37C470(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)));
  v7 = *(*(a1 + 64) + vaddvq_s32(v6));
  v8 = (v7 >> 10) & 0x1F;
  if (v8 == 31)
  {
    v9 = 2139095040;
  }

  else
  {
    v9 = (v7 >> 10) & 0x1F;
  }

  if (v8)
  {
    v10 = v8 == 31;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = (v8 << 23) + 939524096;
  }

  v6.i32[0] = v11 | (v7 << 16) & 0x80000000 | (v7 >> 7) & 7 | (8 * (v7 & 0x3FF)) & 0x1FFF | ((v7 & 0x3FF) << 13);
  v6.i64[0] = vdupq_lane_s32(*v6.i8, 0).u64[0];
  return *v6.i64;
}

double sub_1AF37C514(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3 = vmlaq_f32(v2, v2, a2);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vabdq_f32(v4, vminnmq_f32(vsubq_f32(v3, vrndmq_f32(v3)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v6).u64[0];
  return result;
}

double sub_1AF37C570(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v5.i64[0] = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v6 = vandq_s8(vmovl_s16(*v5.f32), v4);
  v7 = vshll_n_u16(*v5.f32, 0xDuLL);
  v8 = vorrq_s8(vandq_s8(v7, vdupq_n_s32(0xF800000u)), vorrq_s8(v6, vandq_s8(v7, vdupq_n_s32(0x7FE000u))));
  v6.i64[0] = 0x3800000038000000;
  v6.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v8, v6).u64[0];
  return result;
}

__n128 sub_1AF37C600(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  return *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
}

double sub_1AF37C658(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)));
  v6.i32[0] = vaddvq_s32(v6);
  v6.i8[0] = *(*(a1 + 64) + v6.i32[0]);
  *v6.i32 = v6.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v6.i8, 0).u64[0];
  return result;
}

double sub_1AF37C6C4(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmlaq_f32(v10, v10, a2);
  v12 = vabdq_f32(v9, vminnmq_f32(vsubq_f32(v11, vrndmq_f32(v11)), vdupq_n_s32(0x3F7FFFFFu)));
  v13 = a1[1];
  v14 = a1[2];
  v15 = vmulq_s32(v14, vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v12, v12))), v13));
  v15.i32[0] = vaddvq_s32(v15);
  v15.i8[0] = *(a1[4].i64[0] + v15.i32[0]);
  v14.f32[0] = v15.u32[0] * 0.0039216;
  v15.f32[0] = v14.f32[0] * v14.f32[0];
  v13.i32[0] = 1033798545;
  a5.f32[0] = v15.f32[0] * v15.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v16 = vmlaq_f32(a7, a6, v14);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v17 = vmlaq_f32(a8, a6, v14);
  v18 = vmlaq_f32(v16, v15, v17);
  a6.i32[0] = 1064027478;
  v17.i32[0] = -1083773218;
  v19 = vmlaq_f32(v17, a6, v14);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v20 = vdupq_lane_s32(*&vmlaq_f32(v18, a5, vmlaq_f32(v19, v15, vmlaq_f32(a9, a6, v14))), 0);
  v21 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v14, vdupq_n_s32(0x3D25AEE6u))), 0));
  v21.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v21), v20, vdupq_lane_s32(*&vmulq_f32(v14, v13), 0)).u64[0];
  return result;
}

double sub_1AF37C7D0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v2)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37C854(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v2));
  v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
  v12 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8));
  v13 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8));
  v14 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
  v14.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v14), vmlaq_f32(v12, vmulq_f32(v10, v10), v13), v11).u64[0];
  return result;
}

double sub_1AF37C98C(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3 = vmlaq_f32(v2, v2, a2);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vabdq_f32(v4, vminnmq_f32(vsubq_f32(v3, vrndmq_f32(v3)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v8 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v3)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37CA18(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v2));
  v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
  v12 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8)), vmulq_f32(v10, v10), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8)));
  v13 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
  v13.i32[3] = 0;
  v14 = vbslq_s8(vcltzq_s32(v13), v12, v11);
  v14.i32[3] = v9.i32[3];
  v15 = vrev64q_s32(v14);
  *&result = vextq_s8(v15, v15, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37CB58(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v10 = vsubq_f32(a2, *(a1 + 80));
  v10.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v10, _Q1), vcltzq_f32(v10))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v15 = *(a1 + 16);
  v16 = vmulq_f32(*a1, v10);
  v17 = vminq_s32(vcvtq_s32_f32(v16), v15);
  v18 = *(a1 + 64);
  v19 = *(a1 + 32);
  v20 = vmulq_s32(v19, v17);
  v20.i32[0] = vaddvq_s32(v20);
  v21 = vandq_s8(v19, vcgtq_s32(v15, v17));
  v22 = v21.i32[0] + v20.i32[0];
  v23 = v21.i32[1] + v20.i32[0];
  v24 = v23 + v21.i32[0];
  v25 = (v18 + v20.i32[0]);
  v26 = *v25;
  v27 = (v26 >> 10) & 0x1F;
  if (v27 == 31)
  {
    v28 = 2139095040;
  }

  else
  {
    v28 = (v26 >> 10) & 0x1F;
  }

  if (v27)
  {
    _ZF = v27 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v30 = v28;
  }

  else
  {
    v30 = (v27 << 23) + 939524096;
  }

  v20.i32[0] = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
  v31 = (v18 + v22);
  v32 = *v31;
  v33 = (v32 >> 10) & 0x1F;
  if (v33 == 31)
  {
    v34 = 2139095040;
  }

  else
  {
    v34 = (v32 >> 10) & 0x1F;
  }

  if (v33)
  {
    v35 = v33 == 31;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = (v33 << 23) + 939524096;
  }

  v21.i32[0] = v36 | (v32 << 16) & 0x80000000 | (v32 >> 7) & 7 | (8 * (v32 & 0x3FF)) & 0x1FFF | ((v32 & 0x3FF) << 13);
  v37 = v18 + v23;
  v38 = *(v18 + v23);
  v39 = (v38 >> 10) & 0x1F;
  if (v39 == 31)
  {
    v40 = 2139095040;
  }

  else
  {
    v40 = (v38 >> 10) & 0x1F;
  }

  if (v39)
  {
    v41 = v39 == 31;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = (v39 << 23) + 939524096;
  }

  v17.i32[0] = v42 | (v38 << 16) & 0x80000000 | (v38 >> 7) & 7 | (8 * (v38 & 0x3FF)) & 0x1FFF | ((v38 & 0x3FF) << 13);
  v43 = (v18 + v24);
  v44 = *v43;
  v45 = (v44 >> 10) & 0x1F;
  if (v45 == 31)
  {
    v46 = 2139095040;
  }

  else
  {
    v46 = (v44 >> 10) & 0x1F;
  }

  if (v45)
  {
    v47 = v45 == 31;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = (v45 << 23) + 939524096;
  }

  v19.i32[0] = v48 | (v44 << 16) & 0x80000000 | (v44 >> 7) & 7 | (8 * (v44 & 0x3FF)) & 0x1FFF | ((v44 & 0x3FF) << 13);
  v49 = *(v25 + v21.i32[2]);
  v50 = (v49 >> 10) & 0x1F;
  if (v50 == 31)
  {
    v51 = 2139095040;
  }

  else
  {
    v51 = (v49 >> 10) & 0x1F;
  }

  if (v50)
  {
    v52 = v50 == 31;
  }

  else
  {
    v52 = 1;
  }

  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = (v50 << 23) + 939524096;
  }

  a7.i32[0] = v53 | (v49 << 16) & 0x80000000 | (v49 >> 7) & 7 | (8 * (v49 & 0x3FF)) & 0x1FFF | ((v49 & 0x3FF) << 13);
  v54 = *(v31 + v21.i32[2]);
  v55 = (v54 >> 10) & 0x1F;
  if (v55 == 31)
  {
    v56 = 2139095040;
  }

  else
  {
    v56 = (v54 >> 10) & 0x1F;
  }

  if (v55)
  {
    v57 = v55 == 31;
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v58 = v56;
  }

  else
  {
    v58 = (v55 << 23) + 939524096;
  }

  a8.i32[0] = v58 | (v54 << 16) & 0x80000000 | (v54 >> 7) & 7 | (8 * (v54 & 0x3FF)) & 0x1FFF | ((v54 & 0x3FF) << 13);
  v59 = *(v37 + v21.i32[2]);
  v60 = (v59 >> 10) & 0x1F;
  if (v60 == 31)
  {
    v61 = 2139095040;
  }

  else
  {
    v61 = (v59 >> 10) & 0x1F;
  }

  if (v60)
  {
    v62 = v60 == 31;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = v61;
  }

  else
  {
    v63 = (v60 << 23) + 939524096;
  }

  a9.i32[0] = v63 | (v59 << 16) & 0x80000000 | (v59 >> 7) & 7 | (8 * (v59 & 0x3FF)) & 0x1FFF | ((v59 & 0x3FF) << 13);
  v64 = *(v43 + v21.i32[2]);
  v65 = (v64 >> 10) & 0x1F;
  if (v65 == 31)
  {
    v66 = 2139095040;
  }

  else
  {
    v66 = (v64 >> 10) & 0x1F;
  }

  if (v65)
  {
    v67 = v65 == 31;
  }

  else
  {
    v67 = 1;
  }

  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = (v65 << 23) + 939524096;
  }

  v9.i32[0] = v68 | (v64 << 16) & 0x80000000 | (v64 >> 7) & 7 | (8 * (v64 & 0x3FF)) & 0x1FFF | ((v64 & 0x3FF) << 13);
  v69 = vsubq_f32(v16, vrndq_f32(v16));
  v70 = vmlaq_f32(v20, v69, vsubq_f32(v21, v20));
  v71 = vmlaq_f32(a7, v69, vsubq_f32(a8, a7));
  v72 = vsubq_f32(v9, a9);
  v73 = vdupq_lane_s32(*v69.f32, 1);
  v74 = vmlaq_n_f32(vdupq_lane_s32(*v70.f32, 0), v73, vmlaq_f32(vsubq_f32(v17, v70), v69, vsubq_f32(v19, v17)).f32[0]);
  *&result = vmlaq_laneq_f32(v74, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v71.f32, 0), v74), v73, vmlaq_f32(vsubq_f32(a9, v71), v69, v72).f32[0]), v69, 2).u64[0];
  return result;
}

double sub_1AF37CE60(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v9, _Q1), vcltzq_f32(v9))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v15 = a1[1];
  v16 = vmulq_f32(*a1, v9);
  v17 = vminq_s32(vcvtq_s32_f32(v16), v15);
  v18 = a1[2];
  v19 = vmulq_s32(v18, v17);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vandq_s8(v18, vcgtq_s32(v15, v17));
  v21 = v20.i32[1] + v19.i32[0];
  v22 = v21 + v20.i32[0];
  v23 = a1[4].i64[0];
  v24 = v20.i32[0] + v19.i32[0];
  v25 = (v23 + v19.i32[0]);
  v20.i32[0] = *v25;
  v26 = (v23 + v24);
  v27 = (v23 + v21);
  v18.i32[0] = *v27;
  v28 = (v23 + v22);
  a7.i32[0] = *(v25 + v20.i32[2]);
  a8.f32[0] = *(v26 + v20.i32[2]);
  a9.i32[0] = *(v27 + v20.i32[2]);
  v29 = *(v28 + v20.i32[2]);
  v30 = vsubq_f32(v16, vrndq_f32(v16));
  v16.f32[0] = *v26 - *v25;
  v31 = vmlaq_f32(v20, v30, v16);
  v15.f32[0] = a8.f32[0] - a7.f32[0];
  v32 = vmlaq_f32(a7, v30, v15);
  v19.f32[0] = *v28 - *v27;
  a8.f32[0] = v29 - a9.f32[0];
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v18, v31), v30, v19).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(a9, v32), v30, a8).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF37CF5C(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[2];
  v15 = v13.i32[1] + v12;
  v16 = v15 + v13.i32[0];
  v17 = vdupq_n_s32(0x7FE000u);
  v18 = vdupq_n_s32(0xF800000u);
  v19 = *(a1 + 64);
  v20 = v13.i32[0] + v12;
  v21 = (v19 + v12);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23 = vshll_n_u16(*v21, 0xDuLL);
  v24.i64[0] = 0x3800000038000000;
  v24.i64[1] = 0x3800000038000000;
  v25 = vaddq_s32(vorrq_s8(vandq_s8(v23, v18), vorrq_s8(vandq_s8(vmovl_s16(*v21), v22), vandq_s8(v23, v17))), v24);
  v26 = (v19 + v20);
  v27 = vshll_n_u16(*v26, 0xDuLL);
  v28 = vaddq_s32(vorrq_s8(vandq_s8(v27, v18), vorrq_s8(vandq_s8(vmovl_s16(*v26), v22), vandq_s8(v27, v17))), v24);
  v29 = (v19 + v15);
  v30 = vshll_n_u16(*v29, 0xDuLL);
  v31 = vaddq_s32(vorrq_s8(vandq_s8(v30, v18), vorrq_s8(vandq_s8(vmovl_s16(*v29), v22), vandq_s8(v30, v17))), v24);
  v32 = (v19 + v16);
  v33 = vshll_n_u16(*v32, 0xDuLL);
  v34 = vaddq_s32(vorrq_s8(vandq_s8(v33, v18), vorrq_s8(vandq_s8(vmovl_s16(*v32), v22), vandq_s8(v33, v17))), v24);
  v35 = *(v21 + v14);
  v36 = vandq_s8(vmovl_s16(v35), v22);
  v37 = vshll_n_u16(v35, 0xDuLL);
  v38 = vaddq_s32(vorrq_s8(vandq_s8(v37, v18), vorrq_s8(v36, vandq_s8(v37, v17))), v24);
  *v36.i8 = *(v26 + v14);
  v39 = vandq_s8(vmovl_s16(*v36.i8), v22);
  v40 = vshll_n_u16(*v36.i8, 0xDuLL);
  v41 = vaddq_s32(vorrq_s8(vandq_s8(v40, v18), vorrq_s8(v39, vandq_s8(v40, v17))), v24);
  *v39.i8 = *(v29 + v14);
  v42 = vandq_s8(vmovl_s16(*v39.i8), v22);
  v43 = vshll_n_u16(*v39.i8, 0xDuLL);
  v44 = vaddq_s32(vorrq_s8(vandq_s8(v43, v18), vorrq_s8(v42, vandq_s8(v43, v17))), v24);
  *v42.i8 = *(v32 + v14);
  v45 = vandq_s8(vmovl_s16(*v42.i8), v22);
  v46 = vshll_n_u16(*v42.i8, 0xDuLL);
  v47 = vsubq_f32(v9, vrndq_f32(v9));
  v48 = vmlaq_n_f32(v25, vsubq_f32(v28, v25), v47.f32[0]);
  v49 = vmlaq_n_f32(v38, vsubq_f32(v41, v38), v47.f32[0]);
  v50 = vmlaq_lane_f32(v48, vmlaq_n_f32(vsubq_f32(v31, v48), vsubq_f32(v34, v31), v47.f32[0]), *v47.f32, 1);
  *&result = vmlaq_laneq_f32(v50, vmlaq_lane_f32(vsubq_f32(v49, v50), vmlaq_n_f32(vsubq_f32(v44, v49), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v46, v18), vorrq_s8(v45, vandq_s8(v46, v17))), v24), v44), v47.f32[0]), *v47.f32, 1), v47, 2).u64[0];
  return result;
}

double sub_1AF37D164(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[1] + v12;
  v15 = v14 + v13.i32[0];
  v16 = *(a1 + 64);
  v17 = (v16 + v12);
  v18 = (v16 + v13.i32[0] + v12);
  v19 = (v16 + v14);
  v20 = (v16 + v15);
  v21 = *(v17 + v13.i32[2]);
  v22 = *(v18 + v13.i32[2]);
  v23 = *(v19 + v13.i32[2]);
  v24 = *(v20 + v13.i32[2]);
  v25 = vsubq_f32(v9, vrndq_f32(v9));
  v26 = vmlaq_n_f32(*v17, vsubq_f32(*v18, *v17), v25.f32[0]);
  v27 = vmlaq_n_f32(v21, vsubq_f32(v22, v21), v25.f32[0]);
  v28 = vmlaq_lane_f32(v26, vmlaq_n_f32(vsubq_f32(*v19, v26), vsubq_f32(*v20, *v19), v25.f32[0]), *v25.f32, 1);
  *&result = vmlaq_laneq_f32(v28, vmlaq_lane_f32(vsubq_f32(v27, v28), vmlaq_n_f32(vsubq_f32(v23, v27), vsubq_f32(v24, v23), v25.f32[0]), *v25.f32, 1), v25, 2).u64[0];
  return result;
}

double sub_1AF37D254(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v11, _Q1), vcltzq_f32(v11))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v17 = a1[1];
  v18 = vmulq_f32(*a1, v11);
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = a1[2];
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = (v25 + v21.i32[0]);
  v17.i8[0] = *v26;
  v17.f32[0] = v17.u32[0] * 0.0039216;
  v27 = (v25 + v22.i32[0] + v21.i32[0]);
  v20.i8[0] = *v27;
  v28 = (v25 + v23);
  v21.i8[0] = *v28;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v29 = (v25 + v24);
  a7.i8[0] = *v29;
  a8.i8[0] = v26[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  LOBYTE(a9) = v27[v22.i32[2]];
  v9.i8[0] = v28[v22.i32[2]];
  LOBYTE(v10) = v29[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v30 = vsubq_f32(v18, vrndq_f32(v18));
  v18.f32[0] = -(v17.f32[0] - (v20.u32[0] * 0.0039216));
  v31 = vmlaq_f32(v17, v30, v18);
  v20.f32[0] = -(a8.f32[0] - (LODWORD(a9) * 0.0039216));
  v32 = vmlaq_f32(a8, v30, v20);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  v22.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v21, v31), v30, a7).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(v9, v32), v30, v22).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF37D388(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v11, _Q1), vcltzq_f32(v11))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v17 = a1[1];
  v18 = vmulq_f32(*a1, v11);
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = a1[2];
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = v22.i32[0] + v21.i32[0];
  v27 = (v25 + v21.i32[0]);
  v22.i8[0] = *v27;
  v22.f32[0] = v22.u32[0];
  v20.f32[0] = v22.f32[0] * 0.0039216;
  v28 = (v25 + v26);
  v22.i8[0] = *v28;
  v29 = (v25 + v23);
  v21.i8[0] = *v29;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v30 = (v25 + v24);
  a7.i8[0] = *v30;
  a8.i8[0] = v27[v22.i32[2]];
  a9.i8[0] = v28[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  v9.i8[0] = v29[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v30[v22.i32[2]];
  v31 = vsubq_f32(v18, vrndq_f32(v18));
  v22.f32[0] = -(v20.f32[0] - (v22.u32[0] * 0.0039216));
  v32 = vmlaq_f32(v20, v31, v22);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v33 = vmlaq_f32(a8, v31, a9);
  v17.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v34 = vdupq_lane_s32(*v31.f32, 1);
  v35 = vmlaq_n_f32(vdupq_lane_s32(*v32.f32, 0), v34, vmlaq_f32(vsubq_f32(v21, v32), v31, a7).f32[0]);
  v36 = vmlaq_laneq_f32(v35, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v33.f32, 0), v35), v34, vmlaq_f32(vsubq_f32(v9, v33), v31, v17).f32[0]), v31, 2);
  v37 = vmulq_f32(v36, v36);
  v38 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v36), v37, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v36)), vmulq_f32(v37, v37), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v36), v37, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v36)));
  v39 = vcgeq_f32(v36, vdupq_n_s32(0x3D25AEE6u));
  v39.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v39), v38, vmulq_f32(v36, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37D570(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v31 = (v11 + v18);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vld1q_dup_f32(v20);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v36 = vld1q_dup_f32(v25);
  v37 = vld1q_dup_f32(v28);
  v38 = vld1q_dup_f32(v32);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  *&result = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v39, v42), vmlaq_f32(vnegq_f32(v39), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2).u64[0];
  return result;
}

double sub_1AF37D6F8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = (v11 + v16);
  v25 = vld1q_dup_f32(v23);
  v24 = (v23 + v15);
  v26 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v31 = (v11 + v18);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vld1q_dup_f32(v20);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v36 = vld1q_dup_f32(v24);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v39 = vld1q_dup_f32(v32);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v26, vmlaq_f32(vnegq_f32(v26), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44)), vmulq_f32(v45, v45), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44)));
  v47 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v47.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v47), v46, vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37D934(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0];
  v17 = v14.i32[0] + v13;
  v18 = v14.i32[1] + v13;
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v22 = v18 + v16;
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v23);
  v25 = (v11 + v17);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v15);
  v28 = (v11 + v18);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v15);
  v31 = (v11 + v22);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v12)), v23);
  v35 = vld1q_dup_f32(v20);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12)), v23);
  v40 = vld1q_dup_f32(v32);
  v41 = vsubq_f32(v9, vrndq_f32(v9));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v34, v42), vmlaq_f32(vnegq_f32(v34), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1);
  v45 = vrev64q_s32(vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1), v41, 2));
  *&result = vextq_s8(v45, v45, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37DAC4(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = (v11 + v18);
  v32 = vld1q_dup_f32(v30);
  v31 = (v30 + v15);
  v33 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v34 = vld1q_dup_f32(v20);
  v35 = vld1q_dup_f32(v25);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v39 = vld1q_dup_f32(v31);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v33, v41), vmlaq_f32(vnegq_f32(v33), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44)), vmulq_f32(v45, v45), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44)));
  v47 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v47.i32[3] = 0;
  v48 = vbslq_s8(vcltzq_s32(v47), v46, vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u)));
  v48.i32[3] = v44.i32[3];
  v49 = vrev64q_s32(v48);
  *&result = vextq_s8(v49, v49, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37DD08(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v14 = a1[1];
  v15 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v9, 0), _Q1));
  v16 = vminq_s32(vcvtq_s32_f32(v15), v14);
  v17 = a1[4].i64[0];
  v18 = a1[2];
  v19 = vmulq_s32(v18, v16);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vandq_s8(v18, vcgtq_s32(v14, v16));
  v21 = v20.i32[0] + v19.i32[0];
  v22 = v20.i32[1] + v19.i32[0];
  v23 = v22 + v20.i32[0];
  v24 = (v17 + v19.i32[0]);
  v25 = *v24;
  v26 = (v25 >> 10) & 0x1F;
  if (v26 == 31)
  {
    v27 = 2139095040;
  }

  else
  {
    v27 = (v25 >> 10) & 0x1F;
  }

  if (v26)
  {
    _ZF = v26 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v29 = v27;
  }

  else
  {
    v29 = (v26 << 23) + 939524096;
  }

  v30 = v17 + v21;
  v31 = *(v17 + v21);
  v32 = (v31 >> 10) & 0x1F;
  if (v32 == 31)
  {
    v33 = 2139095040;
  }

  else
  {
    v33 = (v31 >> 10) & 0x1F;
  }

  if (v32)
  {
    v34 = v32 == 31;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = (v32 << 23) + 939524096;
  }

  v36 = v17 + v22;
  v37 = *(v17 + v22);
  v38 = (v37 >> 10) & 0x1F;
  if (v38 == 31)
  {
    v39 = 2139095040;
  }

  else
  {
    v39 = (v37 >> 10) & 0x1F;
  }

  if (v38)
  {
    v40 = v38 == 31;
  }

  else
  {
    v40 = 1;
  }

  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = (v38 << 23) + 939524096;
  }

  v42 = (v17 + v23);
  v43 = *v42;
  v44 = (v43 >> 10) & 0x1F;
  if (v44 == 31)
  {
    v45 = 2139095040;
  }

  else
  {
    v45 = (v43 >> 10) & 0x1F;
  }

  if (v44)
  {
    v46 = v44 == 31;
  }

  else
  {
    v46 = 1;
  }

  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = (v44 << 23) + 939524096;
  }

  v48 = *(v24 + v20.i32[2]);
  v49 = (v48 >> 10) & 0x1F;
  if (v49 == 31)
  {
    v50 = 2139095040;
  }

  else
  {
    v50 = (v48 >> 10) & 0x1F;
  }

  if (v49)
  {
    v51 = v49 == 31;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = (v49 << 23) + 939524096;
  }

  v53 = *(v30 + v20.i32[2]);
  v54 = (v53 >> 10) & 0x1F;
  if (v54 == 31)
  {
    v55 = 2139095040;
  }

  else
  {
    v55 = (v53 >> 10) & 0x1F;
  }

  if (v54)
  {
    v56 = v54 == 31;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = (v54 << 23) + 939524096;
  }

  v58 = *(v36 + v20.i32[2]);
  v59 = (v58 >> 10) & 0x1F;
  if (v59 == 31)
  {
    v60 = 2139095040;
  }

  else
  {
    v60 = (v58 >> 10) & 0x1F;
  }

  if (v59)
  {
    v61 = v59 == 31;
  }

  else
  {
    v61 = 1;
  }

  if (v61)
  {
    v62 = v60;
  }

  else
  {
    v62 = (v59 << 23) + 939524096;
  }

  v63 = *(v42 + v20.i32[2]);
  v64 = (v63 >> 10) & 0x1F;
  if (v64 == 31)
  {
    v65 = 2139095040;
  }

  else
  {
    v65 = (v63 >> 10) & 0x1F;
  }

  if (v64)
  {
    v66 = v64 == 31;
  }

  else
  {
    v66 = 1;
  }

  if (v66)
  {
    v67 = v65;
  }

  else
  {
    v67 = (v64 << 23) + 939524096;
  }

  v20.i32[0] = v62 | (v58 << 16) & 0x80000000 | (v58 >> 7) & 7 | (8 * (v58 & 0x3FF)) & 0x1FFF | ((v58 & 0x3FF) << 13);
  v14.i32[0] = v57 | (v53 << 16) & 0x80000000 | (v53 >> 7) & 7 | (8 * (v53 & 0x3FF)) & 0x1FFF | ((v53 & 0x3FF) << 13);
  v18.i32[0] = v52 | (v48 << 16) & 0x80000000 | (v48 >> 7) & 7 | (8 * (v48 & 0x3FF)) & 0x1FFF | ((v48 & 0x3FF) << 13);
  v19.i32[0] = v47 | (v43 << 16) & 0x80000000 | (v43 >> 7) & 7 | (8 * (v43 & 0x3FF)) & 0x1FFF | ((v43 & 0x3FF) << 13);
  a7.i32[0] = v41 | (v37 << 16) & 0x80000000 | (v37 >> 7) & 7 | (8 * (v37 & 0x3FF)) & 0x1FFF | ((v37 & 0x3FF) << 13);
  a8.i32[0] = v35 | (v31 << 16) & 0x80000000 | (v31 >> 7) & 7 | (8 * (v31 & 0x3FF)) & 0x1FFF | ((v31 & 0x3FF) << 13);
  a9.i32[0] = v29 | (v25 << 16) & 0x80000000 | (v25 >> 7) & 7 | (8 * (v25 & 0x3FF)) & 0x1FFF | ((v25 & 0x3FF) << 13);
  v68 = vsubq_f32(v15, vrndq_f32(v15));
  v69 = vmlaq_f32(a9, v68, vsubq_f32(a8, a9));
  a8.i32[0] = v67 | (v63 << 16) & 0x80000000 | (v63 >> 7) & 7 | (8 * (v63 & 0x3FF)) & 0x1FFF | ((v63 & 0x3FF) << 13);
  v70 = vmlaq_f32(v18, v68, vsubq_f32(v14, v18));
  v71 = vdupq_lane_s32(*v68.f32, 1);
  v72 = vmlaq_n_f32(vdupq_lane_s32(*v69.f32, 0), v71, vmlaq_f32(vsubq_f32(a7, v69), v68, vsubq_f32(v19, a7)).f32[0]);
  *&result = vmlaq_laneq_f32(v72, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v70.f32, 0), v72), v71, vmlaq_f32(vsubq_f32(v20, v70), v68, vsubq_f32(a8, v20)).f32[0]), v68, 2).u64[0];
  return result;
}

double sub_1AF37E004(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v15 = a1[1];
  v16 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v9, 0), _Q1));
  v17 = vminq_s32(vcvtq_s32_f32(v16), v15);
  v18 = a1[2];
  v19 = vmulq_s32(v18, v17);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vandq_s8(v18, vcgtq_s32(v15, v17));
  v21 = v20.i32[1] + v19.i32[0];
  v22 = v21 + v20.i32[0];
  v23 = a1[4].i64[0];
  v24 = v20.i32[0] + v19.i32[0];
  v25 = (v23 + v19.i32[0]);
  v20.i32[0] = *v25;
  v26 = (v23 + v24);
  v27 = (v23 + v21);
  v18.i32[0] = *v27;
  v28 = (v23 + v22);
  v19.i32[0] = *(v25 + v20.i32[2]);
  a7.f32[0] = *(v26 + v20.i32[2]);
  a8.i32[0] = *(v27 + v20.i32[2]);
  a9.f32[0] = *(v28 + v20.i32[2]);
  v29 = vsubq_f32(v16, vrndq_f32(v16));
  v16.f32[0] = *v26 - *v25;
  v30 = vmlaq_f32(v20, v29, v16);
  v15.f32[0] = *v28 - *v27;
  a7.f32[0] = a7.f32[0] - v19.f32[0];
  v31 = vmlaq_f32(v19, v29, a7);
  a9.f32[0] = a9.f32[0] - a8.f32[0];
  v32 = vdupq_lane_s32(*v29.f32, 1);
  v33 = vmlaq_n_f32(vdupq_lane_s32(*v30.f32, 0), v32, vmlaq_f32(vsubq_f32(v18, v30), v29, v15).f32[0]);
  *&result = vmlaq_laneq_f32(v33, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v31.f32, 0), v33), v32, vmlaq_f32(vsubq_f32(a8, v31), v29, a9).f32[0]), v29, 2).u64[0];
  return result;
}

double sub_1AF37E0EC(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[2];
  v15 = v13.i32[1] + v12;
  v16 = vdupq_n_s32(0x7FE000u);
  v17 = vdupq_n_s32(0xF800000u);
  v18 = v15 + v13.i32[0];
  v19 = *(a1 + 64);
  v20 = v13.i32[0] + v12;
  v21 = (v19 + v12);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23 = vshll_n_u16(*v21, 0xDuLL);
  v24.i64[0] = 0x3800000038000000;
  v24.i64[1] = 0x3800000038000000;
  v25 = vaddq_s32(vorrq_s8(vandq_s8(v23, v17), vorrq_s8(vandq_s8(vmovl_s16(*v21), v22), vandq_s8(v23, v16))), v24);
  v26 = (v19 + v20);
  v27 = vshll_n_u16(*v26, 0xDuLL);
  v28 = vaddq_s32(vorrq_s8(vandq_s8(v27, v17), vorrq_s8(vandq_s8(vmovl_s16(*v26), v22), vandq_s8(v27, v16))), v24);
  v29 = (v19 + v15);
  v30 = vshll_n_u16(*v29, 0xDuLL);
  v31 = vaddq_s32(vorrq_s8(vandq_s8(v30, v17), vorrq_s8(vandq_s8(vmovl_s16(*v29), v22), vandq_s8(v30, v16))), v24);
  v32 = (v19 + v18);
  v33 = vshll_n_u16(*v32, 0xDuLL);
  v34 = vaddq_s32(vorrq_s8(vandq_s8(v33, v17), vorrq_s8(vandq_s8(vmovl_s16(*v32), v22), vandq_s8(v33, v16))), v24);
  v35 = *(v21 + v14);
  v36 = vandq_s8(vmovl_s16(v35), v22);
  v37 = vshll_n_u16(v35, 0xDuLL);
  v38 = vaddq_s32(vorrq_s8(vandq_s8(v37, v17), vorrq_s8(v36, vandq_s8(v37, v16))), v24);
  *v36.i8 = *(v26 + v14);
  v39 = vandq_s8(vmovl_s16(*v36.i8), v22);
  v40 = vshll_n_u16(*v36.i8, 0xDuLL);
  v41 = vorrq_s8(vandq_s8(v40, v17), vorrq_s8(v39, vandq_s8(v40, v16)));
  *v39.i8 = *(v29 + v14);
  v42 = vandq_s8(vmovl_s16(*v39.i8), v22);
  v43 = vshll_n_u16(*v39.i8, 0xDuLL);
  v44 = vaddq_s32(vorrq_s8(vandq_s8(v43, v17), vorrq_s8(v42, vandq_s8(v43, v16))), v24);
  *v42.i8 = *(v32 + v14);
  v45 = vandq_s8(vmovl_s16(*v42.i8), v22);
  v46 = vshll_n_u16(*v42.i8, 0xDuLL);
  v47 = vsubq_f32(v9, vrndq_f32(v9));
  v48 = vmlaq_n_f32(v25, vsubq_f32(v28, v25), v47.f32[0]);
  v49 = vmlaq_n_f32(v38, vsubq_f32(vaddq_s32(v41, v24), v38), v47.f32[0]);
  v50 = vmlaq_lane_f32(v48, vmlaq_n_f32(vsubq_f32(v31, v48), vsubq_f32(v34, v31), v47.f32[0]), *v47.f32, 1);
  *&result = vmlaq_laneq_f32(v50, vmlaq_lane_f32(vsubq_f32(v49, v50), vmlaq_n_f32(vsubq_f32(v44, v49), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v46, v17), vorrq_s8(v45, vandq_s8(v46, v16))), v24), v44), v47.f32[0]), *v47.f32, 1), v47, 2).u64[0];
  return result;
}

double sub_1AF37E2E0(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[2];
  v15 = v13.i32[1] + v12;
  v16 = v15 + v13.i32[0];
  v17 = *(a1 + 64);
  v18 = (v17 + v12);
  v19 = (v17 + v13.i32[0] + v12);
  v20 = (v17 + v15);
  v21 = (v17 + v16);
  v22 = *(v18 + v13.i32[2]);
  v23 = *(v20 + v13.i32[2]);
  v24 = *(v21 + v13.i32[2]);
  v25 = vsubq_f32(v9, vrndq_f32(v9));
  v26 = vmlaq_n_f32(*v18, vsubq_f32(*v19, *v18), v25.f32[0]);
  v27 = vmlaq_n_f32(v22, vsubq_f32(*(v19 + v14), v22), v25.f32[0]);
  v28 = vmlaq_lane_f32(v26, vmlaq_n_f32(vsubq_f32(*v20, v26), vsubq_f32(*v21, *v20), v25.f32[0]), *v25.f32, 1);
  *&result = vmlaq_laneq_f32(v28, vmlaq_lane_f32(vsubq_f32(v27, v28), vmlaq_n_f32(vsubq_f32(v23, v27), vsubq_f32(v24, v23), v25.f32[0]), *v25.f32, 1), v25, 2).u64[0];
  return result;
}

double sub_1AF37E3BC(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, *(a1 + 80));
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v17 = *(a1 + 16);
  v18 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v11, 0), _Q1));
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = *(a1 + 32);
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = *(a1 + 64);
  v26 = (v25 + v21.i32[0]);
  v17.i8[0] = *v26;
  v17.f32[0] = v17.u32[0] * 0.0039216;
  v27 = (v25 + v22.i32[0] + v21.i32[0]);
  v20.i8[0] = *v27;
  v28 = (v25 + v23);
  v21.i8[0] = *v28;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v29 = (v25 + v24);
  a7.i8[0] = *v29;
  a8.i8[0] = v26[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v27[v22.i32[2]];
  v9.i8[0] = v28[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v29[v22.i32[2]];
  v30 = vsubq_f32(v18, vrndq_f32(v18));
  v18.f32[0] = -(v17.f32[0] - (v20.u32[0] * 0.0039216));
  v31 = vmlaq_f32(v17, v30, v18);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v32 = vmlaq_f32(a8, v30, a9);
  v22.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v21, v31), v30, a7).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(v9, v32), v30, v22).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF37E4DC(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v17 = a1[1];
  v18 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v11, 0), _Q1));
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = a1[2];
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = v22.i32[0] + v21.i32[0];
  v27 = (v25 + v21.i32[0]);
  v22.i8[0] = *v27;
  v22.f32[0] = v22.u32[0];
  v20.f32[0] = v22.f32[0] * 0.0039216;
  v28 = (v25 + v26);
  v22.i8[0] = *v28;
  v29 = (v25 + v23);
  v21.i8[0] = *v29;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v30 = (v25 + v24);
  a7.i8[0] = *v30;
  a8.i8[0] = v27[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v28[v22.i32[2]];
  v9.i8[0] = v29[v22.i32[2]];
  LOBYTE(v10) = v30[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v31 = vsubq_f32(v18, vrndq_f32(v18));
  v22.f32[0] = -(v20.f32[0] - (v22.u32[0] * 0.0039216));
  v32 = vmlaq_f32(v20, v31, v22);
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v33 = vmlaq_f32(a8, v31, a9);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  v17.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v34 = vdupq_lane_s32(*v31.f32, 1);
  v35 = vmlaq_n_f32(vdupq_lane_s32(*v32.f32, 0), v34, vmlaq_f32(vsubq_f32(v21, v32), v31, a7).f32[0]);
  v36 = vmlaq_laneq_f32(v35, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v33.f32, 0), v35), v34, vmlaq_f32(vsubq_f32(v9, v33), v31, v17).f32[0]), v31, 2);
  v37 = vmulq_f32(v36, v36);
  v38 = vmulq_f32(v37, v37);
  v39 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v36), v37, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v36));
  v40 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v36), v37, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v36));
  v41 = vcgeq_f32(v36, vdupq_n_s32(0x3D25AEE6u));
  v41.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v41), vmlaq_f32(v39, v38, v40), vmulq_f32(v36, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37E6B0(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = (v11 + v18);
  v32 = vld1q_dup_f32(v30);
  v31 = (v30 + v15);
  v33 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v34 = vld1q_dup_f32(v20);
  v35 = vld1q_dup_f32(v25);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v39 = vld1q_dup_f32(v31);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v33, v41), vmlaq_f32(vnegq_f32(v33), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  *&result = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2).u64[0];
  return result;
}

double sub_1AF37E824(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v31 = (v11 + v18);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vld1q_dup_f32(v20);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v36 = vld1q_dup_f32(v25);
  v37 = vld1q_dup_f32(v28);
  v38 = vld1q_dup_f32(v32);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v39, v42), vmlaq_f32(vnegq_f32(v39), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmulq_f32(v45, v45);
  v47 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44));
  v48 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44));
  v49 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v49.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v49), vmlaq_f32(v47, v46, v48), vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37EA4C(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0];
  v17 = v14.i32[0] + v13;
  v18 = v14.i32[1] + v13;
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v22 = v18 + v16;
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v23);
  v25 = (v11 + v17);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v15);
  v28 = (v11 + v18);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v15);
  v31 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v12)), v23);
  v32 = (v11 + v22);
  v34 = vld1q_dup_f32(v32);
  v33 = (v32 + v15);
  v35 = vld1q_dup_f32(v20);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12)), v23);
  v40 = vld1q_dup_f32(v33);
  v41 = vsubq_f32(v9, vrndq_f32(v9));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v31, v42), vmlaq_f32(vnegq_f32(v31), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1);
  v45 = vrev64q_s32(vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1), v41, 2));
  *&result = vextq_s8(v45, v45, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37EBC8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0];
  v17 = v14.i32[0] + v13;
  v18 = v14.i32[1] + v13;
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v22 = v18 + v16;
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v23);
  v25 = (v11 + v17);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v15);
  v28 = (v11 + v18);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v15);
  v31 = (v11 + v22);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v12)), v23);
  v35 = vld1q_dup_f32(v20);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12)), v23);
  v40 = vld1q_dup_f32(v32);
  v41 = vsubq_f32(v9, vrndq_f32(v9));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v34, v42), vmlaq_f32(vnegq_f32(v34), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1);
  v45 = vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1), v41, 2);
  v46 = vmulq_f32(v45, v45);
  v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v45), v46, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v45)), vmulq_f32(v46, v46), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v45), v46, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v45)));
  v48 = vcgeq_f32(v45, vdupq_n_s32(0x3D25AEE6u));
  v48.i32[3] = 0;
  v49 = vbslq_s8(vcltzq_s32(v48), v47, vmulq_f32(v45, vdupq_n_s32(0x3D9E8391u)));
  v49.i32[3] = v45.i32[3];
  v50 = vrev64q_s32(v49);
  *&result = vextq_s8(v50, v50, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37EDF8(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10 = a1[1];
  v11 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v9, vrndmq_f32(v9)), vdupq_n_s32(0x3F7FFFFFu)));
  v12 = vminq_s32(vcvtq_s32_f32(v11), v10);
  v13 = a1[4].i64[0];
  v15 = a1[2];
  v14 = a1[3];
  v16 = vmulq_s32(v15, v12);
  v16.i32[0] = vaddvq_s32(v16);
  v17 = vbslq_s8(vcgtq_s32(v10, v12), v15, v14);
  v18 = v17.i32[0] + v16.i32[0];
  v19 = v17.i32[1] + v16.i32[0];
  v20 = v19 + v17.i32[0];
  v21 = (v13 + v16.i32[0]);
  v22 = *v21;
  v23 = (v22 >> 10) & 0x1F;
  if (v23 == 31)
  {
    v24 = 2139095040;
  }

  else
  {
    v24 = (v22 >> 10) & 0x1F;
  }

  if (v23)
  {
    v25 = v23 == 31;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = (v23 << 23) + 939524096;
  }

  v27 = v13 + v18;
  v28 = *(v13 + v18);
  v29 = (v28 >> 10) & 0x1F;
  if (v29 == 31)
  {
    v30 = 2139095040;
  }

  else
  {
    v30 = (v28 >> 10) & 0x1F;
  }

  if (v29)
  {
    v31 = v29 == 31;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = (v29 << 23) + 939524096;
  }

  v33 = v13 + v19;
  v34 = *(v13 + v19);
  v35 = (v34 >> 10) & 0x1F;
  if (v35 == 31)
  {
    v36 = 2139095040;
  }

  else
  {
    v36 = (v34 >> 10) & 0x1F;
  }

  if (v35)
  {
    v37 = v35 == 31;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = (v35 << 23) + 939524096;
  }

  v39 = (v13 + v20);
  v40 = *v39;
  v41 = (v40 >> 10) & 0x1F;
  if (v41 == 31)
  {
    v42 = 2139095040;
  }

  else
  {
    v42 = (v40 >> 10) & 0x1F;
  }

  if (v41)
  {
    v43 = v41 == 31;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = (v41 << 23) + 939524096;
  }

  v45 = *(v21 + v17.i32[2]);
  v46 = (v45 >> 10) & 0x1F;
  if (v46 == 31)
  {
    v47 = 2139095040;
  }

  else
  {
    v47 = (v45 >> 10) & 0x1F;
  }

  if (v46)
  {
    v48 = v46 == 31;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = (v46 << 23) + 939524096;
  }

  v50 = *(v27 + v17.i32[2]);
  v51 = (v50 >> 10) & 0x1F;
  if (v51 == 31)
  {
    v52 = 2139095040;
  }

  else
  {
    v52 = (v50 >> 10) & 0x1F;
  }

  if (v51)
  {
    v53 = v51 == 31;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = (v51 << 23) + 939524096;
  }

  v55 = *(v33 + v17.i32[2]);
  v56 = (v55 >> 10) & 0x1F;
  if (v56 == 31)
  {
    v57 = 2139095040;
  }

  else
  {
    v57 = (v55 >> 10) & 0x1F;
  }

  if (v56)
  {
    v58 = v56 == 31;
  }

  else
  {
    v58 = 1;
  }

  if (v58)
  {
    v59 = v57;
  }

  else
  {
    v59 = (v56 << 23) + 939524096;
  }

  v60 = *(v39 + v17.i32[2]);
  v61 = (v60 >> 10) & 0x1F;
  if (v61 == 31)
  {
    v62 = 2139095040;
  }

  else
  {
    v62 = (v60 >> 10) & 0x1F;
  }

  if (v61)
  {
    v63 = v61 == 31;
  }

  else
  {
    v63 = 1;
  }

  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = (v61 << 23) + 939524096;
  }

  v17.i32[0] = v59 | (v55 << 16) & 0x80000000 | (v55 >> 7) & 7 | (8 * (v55 & 0x3FF)) & 0x1FFF | ((v55 & 0x3FF) << 13);
  v10.i32[0] = v54 | (v50 << 16) & 0x80000000 | (v50 >> 7) & 7 | (8 * (v50 & 0x3FF)) & 0x1FFF | ((v50 & 0x3FF) << 13);
  v14.i32[0] = v49 | (v45 << 16) & 0x80000000 | (v45 >> 7) & 7 | (8 * (v45 & 0x3FF)) & 0x1FFF | ((v45 & 0x3FF) << 13);
  v15.i32[0] = v44 | (v40 << 16) & 0x80000000 | (v40 >> 7) & 7 | (8 * (v40 & 0x3FF)) & 0x1FFF | ((v40 & 0x3FF) << 13);
  v16.i32[0] = v38 | (v34 << 16) & 0x80000000 | (v34 >> 7) & 7 | (8 * (v34 & 0x3FF)) & 0x1FFF | ((v34 & 0x3FF) << 13);
  a8.i32[0] = v32 | (v28 << 16) & 0x80000000 | (v28 >> 7) & 7 | (8 * (v28 & 0x3FF)) & 0x1FFF | ((v28 & 0x3FF) << 13);
  a9.i32[0] = v26 | (v22 << 16) & 0x80000000 | (v22 >> 7) & 7 | (8 * (v22 & 0x3FF)) & 0x1FFF | ((v22 & 0x3FF) << 13);
  v65 = vsubq_f32(v11, vrndq_f32(v11));
  v66 = vmlaq_f32(a9, v65, vsubq_f32(a8, a9));
  a8.i32[0] = v64 | (v60 << 16) & 0x80000000 | (v60 >> 7) & 7 | (8 * (v60 & 0x3FF)) & 0x1FFF | ((v60 & 0x3FF) << 13);
  v67 = vmlaq_f32(v14, v65, vsubq_f32(v10, v14));
  v68 = vdupq_lane_s32(*v65.f32, 1);
  v69 = vmlaq_n_f32(vdupq_lane_s32(*v66.f32, 0), v68, vmlaq_f32(vsubq_f32(v16, v66), v65, vsubq_f32(v15, v16)).f32[0]);
  *&result = vmlaq_laneq_f32(v69, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v67.f32, 0), v69), v68, vmlaq_f32(vsubq_f32(v17, v67), v65, vsubq_f32(a8, v17)).f32[0]), v65, 2).u64[0];
  return result;
}

double sub_1AF37F0F8(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10 = a1[1];
  v11 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v9, vrndmq_f32(v9)), vdupq_n_s32(0x3F7FFFFFu)));
  v12 = vminq_s32(vcvtq_s32_f32(v11), v10);
  v14 = a1[2];
  v13 = a1[3];
  v15 = vmulq_s32(v14, v12);
  v15.i32[0] = vaddvq_s32(v15);
  v16 = vbslq_s8(vcgtq_s32(v10, v12), v14, v13);
  v17 = v16.i32[1] + v15.i32[0];
  v18 = v17 + v16.i32[0];
  v19 = a1[4].i64[0];
  v20 = v16.i32[0] + v15.i32[0];
  v21 = (v19 + v15.i32[0]);
  v16.i32[0] = *v21;
  v22 = (v19 + v20);
  v23 = (v19 + v17);
  v13.i32[0] = *v23;
  v24 = (v19 + v18);
  v14.i32[0] = *(v21 + v16.i32[2]);
  v15.f32[0] = *(v22 + v16.i32[2]);
  a8.i32[0] = *(v23 + v16.i32[2]);
  a9.f32[0] = *(v24 + v16.i32[2]);
  v25 = vsubq_f32(v11, vrndq_f32(v11));
  v11.f32[0] = *v22 - *v21;
  v26 = vmlaq_f32(v16, v25, v11);
  v10.f32[0] = *v24 - *v23;
  v15.f32[0] = v15.f32[0] - v14.f32[0];
  v27 = vmlaq_f32(v14, v25, v15);
  a9.f32[0] = a9.f32[0] - a8.f32[0];
  v28 = vdupq_lane_s32(*v25.f32, 1);
  v29 = vmlaq_n_f32(vdupq_lane_s32(*v26.f32, 0), v28, vmlaq_f32(vsubq_f32(v13, v26), v25, v10).f32[0]);
  *&result = vmlaq_laneq_f32(v29, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v27.f32, 0), v29), v28, vmlaq_f32(vsubq_f32(a8, v27), v25, a9).f32[0]), v25, 2).u64[0];
  return result;
}

double sub_1AF37F1E4(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = vaddvq_s32(vmulq_s32(v6, v5));
  v8 = vbslq_s8(vcgtq_s32(v3, v5), v6, *(a1 + 48));
  v9 = v8.i32[2];
  v10 = v8.i32[1] + v7;
  v11 = vdupq_n_s32(0x7FE000u);
  v12 = vdupq_n_s32(0xF800000u);
  v13 = v10 + v8.i32[0];
  v14 = *(a1 + 64);
  v15 = v8.i32[0] + v7;
  v16 = (v14 + v7);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v17 = vshll_n_u16(*v16, 0xDuLL);
  v18.i64[0] = 0x3800000038000000;
  v18.i64[1] = 0x3800000038000000;
  v19 = vaddq_s32(vorrq_s8(vandq_s8(v17, v12), vorrq_s8(vandq_s8(vmovl_s16(*v16), v6), vandq_s8(v17, v11))), v18);
  v20 = (v14 + v15);
  v21 = vshll_n_u16(*v20, 0xDuLL);
  v22 = vaddq_s32(vorrq_s8(vandq_s8(v21, v12), vorrq_s8(vandq_s8(vmovl_s16(*v20), v6), vandq_s8(v21, v11))), v18);
  v23 = (v14 + v10);
  v24 = vshll_n_u16(*v23, 0xDuLL);
  v25 = vaddq_s32(vorrq_s8(vandq_s8(v24, v12), vorrq_s8(vandq_s8(vmovl_s16(*v23), v6), vandq_s8(v24, v11))), v18);
  v26 = (v14 + v13);
  v27 = vshll_n_u16(*v26, 0xDuLL);
  v28 = vaddq_s32(vorrq_s8(vandq_s8(v27, v12), vorrq_s8(vandq_s8(vmovl_s16(*v26), v6), vandq_s8(v27, v11))), v18);
  v29 = *(v16 + v9);
  v30 = vandq_s8(vmovl_s16(v29), v6);
  v31 = vshll_n_u16(v29, 0xDuLL);
  v32 = vaddq_s32(vorrq_s8(vandq_s8(v31, v12), vorrq_s8(v30, vandq_s8(v31, v11))), v18);
  *v30.i8 = *(v20 + v9);
  v33 = vandq_s8(vmovl_s16(*v30.i8), v6);
  v34 = vshll_n_u16(*v30.i8, 0xDuLL);
  v35 = vorrq_s8(vandq_s8(v34, v12), vorrq_s8(v33, vandq_s8(v34, v11)));
  *v33.i8 = *(v23 + v9);
  v36 = vandq_s8(vmovl_s16(*v33.i8), v6);
  v37 = vshll_n_u16(*v33.i8, 0xDuLL);
  v38 = vaddq_s32(vorrq_s8(vandq_s8(v37, v12), vorrq_s8(v36, vandq_s8(v37, v11))), v18);
  *v36.i8 = *(v26 + v9);
  v39 = vandq_s8(vmovl_s16(*v36.i8), v6);
  v40 = vshll_n_u16(*v36.i8, 0xDuLL);
  v41 = vsubq_f32(v4, vrndq_f32(v4));
  v42 = vmlaq_n_f32(v19, vsubq_f32(v22, v19), v41.f32[0]);
  v43 = vmlaq_n_f32(v32, vsubq_f32(vaddq_s32(v35, v18), v32), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v25, v42), vsubq_f32(v28, v25), v41.f32[0]), *v41.f32, 1);
  *&result = vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v38, v43), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v40, v12), vorrq_s8(v39, vandq_s8(v40, v11))), v18), v38), v41.f32[0]), *v41.f32, 1), v41, 2).u64[0];
  return result;
}

double sub_1AF37F3DC(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = vaddvq_s32(vmulq_s32(v6, v5));
  v8 = vbslq_s8(vcgtq_s32(v3, v5), v6, *(a1 + 48));
  v9 = v8.i32[2];
  v10 = v8.i32[1] + v7;
  v11 = v10 + v8.i32[0];
  v12 = *(a1 + 64);
  v13 = (v12 + v7);
  v14 = (v12 + v8.i32[0] + v7);
  v15 = (v12 + v10);
  v16 = (v12 + v11);
  v17 = *(v13 + v8.i32[2]);
  v18 = *(v15 + v8.i32[2]);
  v19 = *(v16 + v8.i32[2]);
  v20 = vsubq_f32(v4, vrndq_f32(v4));
  v21 = vmlaq_n_f32(*v13, vsubq_f32(*v14, *v13), v20.f32[0]);
  v22 = vmlaq_n_f32(v17, vsubq_f32(*(v14 + v9), v17), v20.f32[0]);
  v23 = vmlaq_lane_f32(v21, vmlaq_n_f32(vsubq_f32(*v15, v21), vsubq_f32(*v16, *v15), v20.f32[0]), *v20.f32, 1);
  *&result = vmlaq_laneq_f32(v23, vmlaq_lane_f32(vsubq_f32(v22, v23), vmlaq_n_f32(vsubq_f32(v18, v22), vsubq_f32(v19, v18), v20.f32[0]), *v20.f32, 1), v20, 2).u64[0];
  return result;
}

double sub_1AF37F4BC(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, *(a1 + 80));
  v11.i32[3] = 0;
  v12 = *(a1 + 16);
  v13 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v11, vrndmq_f32(v11)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = vminq_s32(vcvtq_s32_f32(v13), v12);
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v17 = vmulq_s32(v16, v14);
  v17.i32[0] = vaddvq_s32(v17);
  v18 = vbslq_s8(vcgtq_s32(v12, v14), v16, v15);
  v19 = v18.i32[1] + v17.i32[0];
  v20 = v19 + v18.i32[0];
  v21 = *(a1 + 64);
  v22 = (v21 + v17.i32[0]);
  v12.i8[0] = *v22;
  v12.f32[0] = v12.u32[0] * 0.0039216;
  v23 = (v21 + v18.i32[0] + v17.i32[0]);
  v15.i8[0] = *v23;
  v24 = (v21 + v19);
  v16.i8[0] = *v24;
  v16.f32[0] = v16.u32[0] * 0.0039216;
  v25 = (v21 + v20);
  v17.i8[0] = *v25;
  a8.i8[0] = v22[v18.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v23[v18.i32[2]];
  v9.i8[0] = v24[v18.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v25[v18.i32[2]];
  v26 = vsubq_f32(v13, vrndq_f32(v13));
  v13.f32[0] = -(v12.f32[0] - (v15.u32[0] * 0.0039216));
  v27 = vmlaq_f32(v12, v26, v13);
  v17.f32[0] = -(v16.f32[0] - (v17.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v28 = vmlaq_f32(a8, v26, a9);
  v18.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v29 = vdupq_lane_s32(*v26.f32, 1);
  v30 = vmlaq_n_f32(vdupq_lane_s32(*v27.f32, 0), v29, vmlaq_f32(vsubq_f32(v16, v27), v26, v17).f32[0]);
  *&result = vmlaq_laneq_f32(v30, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v28.f32, 0), v30), v29, vmlaq_f32(vsubq_f32(v9, v28), v26, v18).f32[0]), v26, 2).u64[0];
  return result;
}

double sub_1AF37F5E0(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  v12 = a1[1];
  v13 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v11, vrndmq_f32(v11)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = vminq_s32(vcvtq_s32_f32(v13), v12);
  v16 = a1[2];
  v15 = a1[3];
  v17 = vmulq_s32(v16, v14);
  v17.i32[0] = vaddvq_s32(v17);
  v18 = vbslq_s8(vcgtq_s32(v12, v14), v16, v15);
  v19 = v18.i32[1] + v17.i32[0];
  v20 = v19 + v18.i32[0];
  v21 = a1[4].i64[0];
  v22 = v18.i32[0] + v17.i32[0];
  v23 = (v21 + v17.i32[0]);
  v18.i8[0] = *v23;
  v18.f32[0] = v18.u32[0];
  v15.f32[0] = v18.f32[0] * 0.0039216;
  v24 = (v21 + v22);
  v18.i8[0] = *v24;
  v25 = (v21 + v19);
  v16.i8[0] = *v25;
  v16.f32[0] = v16.u32[0] * 0.0039216;
  v26 = (v21 + v20);
  v17.i8[0] = *v26;
  a8.i8[0] = v23[v18.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v24[v18.i32[2]];
  v9.i8[0] = v25[v18.i32[2]];
  LOBYTE(v10) = v26[v18.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v27 = vsubq_f32(v13, vrndq_f32(v13));
  v18.f32[0] = -(v15.f32[0] - (v18.u32[0] * 0.0039216));
  v28 = vmlaq_f32(v15, v27, v18);
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v29 = vmlaq_f32(a8, v27, a9);
  v17.f32[0] = -(v16.f32[0] - (v17.u32[0] * 0.0039216));
  v12.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v30 = vdupq_lane_s32(*v27.f32, 1);
  v31 = vmlaq_n_f32(vdupq_lane_s32(*v28.f32, 0), v30, vmlaq_f32(vsubq_f32(v16, v28), v27, v17).f32[0]);
  v32 = vmlaq_laneq_f32(v31, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v29.f32, 0), v31), v30, vmlaq_f32(vsubq_f32(v9, v29), v27, v12).f32[0]), v27, 2);
  v33 = vmulq_f32(v32, v32);
  v34 = vmulq_f32(v33, v33);
  v35 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v32), v33, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v32));
  v36 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v32), v33, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v32));
  v37 = vcgeq_f32(v32, vdupq_n_s32(0x3D25AEE6u));
  v37.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v37), vmlaq_f32(v35, v34, v36), vmulq_f32(v32, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37F7B8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0] + v8;
  v12 = v9.i32[1] + v8;
  v13 = v12 + v9.i32[0];
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17.i64[0] = 0xFF000000FFLL;
  v17.i64[1] = 0xFF000000FFLL;
  v18 = vdupq_n_s32(0x3B808081u);
  v19 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v17)), v18);
  v20 = (v6 + v11);
  v22 = vld1q_dup_f32(v20);
  v21 = (v20 + v10);
  v23 = (v6 + v12);
  v25 = vld1q_dup_f32(v23);
  v24 = (v23 + v10);
  v26 = (v6 + v13);
  v28 = vld1q_dup_f32(v26);
  v27 = (v26 + v10);
  v29 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v17)), v18);
  v30 = vld1q_dup_f32(v15);
  v31 = vld1q_dup_f32(v21);
  v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v17)), v18);
  v33 = vld1q_dup_f32(v24);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v17)), v18);
  v35 = vld1q_dup_f32(v27);
  v36 = vsubq_f32(v4, vrndq_f32(v4));
  v37 = vmlaq_n_f32(v19, vmlaq_f32(vnegq_f32(v19), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v38 = vmlaq_n_f32(v32, vmlaq_f32(vnegq_f32(v32), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v39 = vmlaq_lane_f32(v37, vmlaq_n_f32(vsubq_f32(v29, v37), vmlaq_f32(vnegq_f32(v29), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v28, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1);
  *&result = vmlaq_laneq_f32(v39, vmlaq_lane_f32(vsubq_f32(v38, v39), vmlaq_n_f32(vsubq_f32(v34, v38), vmlaq_f32(vnegq_f32(v34), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1), v36, 2).u64[0];
  return result;
}

double sub_1AF37F930(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0] + v8;
  v12 = v9.i32[1] + v8;
  v13 = v12 + v9.i32[0];
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17.i64[0] = 0xFF000000FFLL;
  v17.i64[1] = 0xFF000000FFLL;
  v18 = vdupq_n_s32(0x3B808081u);
  v19 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v17)), v18);
  v20 = (v6 + v11);
  v22 = vld1q_dup_f32(v20);
  v21 = (v20 + v10);
  v23 = (v6 + v12);
  v25 = vld1q_dup_f32(v23);
  v24 = (v23 + v10);
  v26 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v17)), v18);
  v27 = (v6 + v13);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v10);
  v30 = vld1q_dup_f32(v15);
  v31 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v17)), v18);
  v32 = vld1q_dup_f32(v21);
  v33 = vld1q_dup_f32(v24);
  v34 = vld1q_dup_f32(v28);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v17)), v18);
  v36 = vsubq_f32(v4, vrndq_f32(v4));
  v37 = vmlaq_n_f32(v19, vmlaq_f32(vnegq_f32(v19), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v38 = vmlaq_n_f32(v31, vmlaq_f32(vnegq_f32(v31), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v39 = vmlaq_lane_f32(v37, vmlaq_n_f32(vsubq_f32(v26, v37), vmlaq_f32(vnegq_f32(v26), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1);
  v40 = vmlaq_laneq_f32(v39, vmlaq_lane_f32(vsubq_f32(v38, v39), vmlaq_n_f32(vsubq_f32(v35, v38), vmlaq_f32(vnegq_f32(v35), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1), v36, 2);
  v41 = vmulq_f32(v40, v40);
  v42 = vmulq_f32(v41, v41);
  v43 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v40), v41, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v40));
  v44 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v40), v41, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v40));
  v45 = vcgeq_f32(v40, vdupq_n_s32(0x3D25AEE6u));
  v45.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v45), vmlaq_f32(v43, v42, v44), vmulq_f32(v40, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37FB5C(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0];
  v12 = v9.i32[0] + v8;
  v13 = v9.i32[1] + v8;
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17 = v13 + v11;
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v18)), v19);
  v21 = (v6 + v12);
  v23 = vld1q_dup_f32(v21);
  v22 = (v21 + v10);
  v24 = (v6 + v13);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v10);
  v27 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v18)), v19);
  v28 = (v6 + v17);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v10);
  v31 = vld1q_dup_f32(v15);
  v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v18)), v19);
  v33 = vld1q_dup_f32(v22);
  v34 = vld1q_dup_f32(v25);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v18)), v19);
  v36 = vld1q_dup_f32(v29);
  v37 = vsubq_f32(v4, vrndq_f32(v4));
  v38 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v39 = vmlaq_n_f32(v32, vmlaq_f32(vnegq_f32(v32), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v40 = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(v27, v38), vmlaq_f32(vnegq_f32(v27), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1);
  v41 = vrev64q_s32(vmlaq_laneq_f32(v40, vmlaq_lane_f32(vsubq_f32(v39, v40), vmlaq_n_f32(vsubq_f32(v35, v39), vmlaq_f32(vnegq_f32(v35), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1), v37, 2));
  *&result = vextq_s8(v41, v41, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37FCDC(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0];
  v12 = v9.i32[0] + v8;
  v13 = v9.i32[1] + v8;
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17 = v13 + v11;
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v18)), v19);
  v21 = (v6 + v12);
  v23 = vld1q_dup_f32(v21);
  v22 = (v21 + v10);
  v24 = (v6 + v13);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v10);
  v27 = (v6 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v10);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v18)), v19);
  v31 = vld1q_dup_f32(v15);
  v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v18)), v19);
  v33 = vld1q_dup_f32(v22);
  v34 = vld1q_dup_f32(v25);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v18)), v19);
  v36 = vld1q_dup_f32(v28);
  v37 = vsubq_f32(v4, vrndq_f32(v4));
  v38 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v39 = vmlaq_n_f32(v32, vmlaq_f32(vnegq_f32(v32), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v40 = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(v30, v38), vmlaq_f32(vnegq_f32(v30), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1);
  v41 = vmlaq_laneq_f32(v40, vmlaq_lane_f32(vsubq_f32(v39, v40), vmlaq_n_f32(vsubq_f32(v35, v39), vmlaq_f32(vnegq_f32(v35), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1), v37, 2);
  v42 = vmulq_f32(v41, v41);
  v43 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v41), v42, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v41)), vmulq_f32(v42, v42), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v41), v42, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v41)));
  v44 = vcgeq_f32(v41, vdupq_n_s32(0x3D25AEE6u));
  v44.i32[3] = 0;
  v45 = vbslq_s8(vcltzq_s32(v44), v43, vmulq_f32(v41, vdupq_n_s32(0x3D9E8391u)));
  v45.i32[3] = v41.i32[3];
  v46 = vrev64q_s32(v45);
  *&result = vextq_s8(v46, v46, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37FF10(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmlaq_f32(v11, v11, v9);
  v13 = vabdq_f32(v10, vminnmq_f32(vsubq_f32(v12, vrndmq_f32(v12)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = a1[1];
  v15 = vmulq_f32(v13, vaddq_f32(*a1, *a1));
  v16 = vminq_s32(vcvtq_s32_f32(v15), v14);
  v17 = a1[4].i64[0];
  v19 = a1[2];
  v18 = a1[3];
  v20 = vmulq_s32(v19, v16);
  v20.i32[0] = vaddvq_s32(v20);
  v21 = vbslq_s8(vcgtq_s32(v14, v16), v19, v18);
  v22 = v21.i32[0] + v20.i32[0];
  v23 = v21.i32[1] + v20.i32[0];
  v24 = v23 + v21.i32[0];
  v25 = (v17 + v20.i32[0]);
  v26 = *v25;
  v27 = (v26 >> 10) & 0x1F;
  if (v27 == 31)
  {
    v28 = 2139095040;
  }

  else
  {
    v28 = (v26 >> 10) & 0x1F;
  }

  if (v27)
  {
    v29 = v27 == 31;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = (v27 << 23) + 939524096;
  }

  v31 = v17 + v22;
  v32 = *(v17 + v22);
  v33 = (v32 >> 10) & 0x1F;
  if (v33 == 31)
  {
    v34 = 2139095040;
  }

  else
  {
    v34 = (v32 >> 10) & 0x1F;
  }

  if (v33)
  {
    v35 = v33 == 31;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = (v33 << 23) + 939524096;
  }

  v37 = v17 + v23;
  v38 = *(v17 + v23);
  v39 = (v38 >> 10) & 0x1F;
  if (v39 == 31)
  {
    v40 = 2139095040;
  }

  else
  {
    v40 = (v38 >> 10) & 0x1F;
  }

  if (v39)
  {
    v41 = v39 == 31;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = (v39 << 23) + 939524096;
  }

  v43 = (v17 + v24);
  v44 = *v43;
  v45 = (v44 >> 10) & 0x1F;
  if (v45 == 31)
  {
    v46 = 2139095040;
  }

  else
  {
    v46 = (v44 >> 10) & 0x1F;
  }

  if (v45)
  {
    v47 = v45 == 31;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = (v45 << 23) + 939524096;
  }

  v49 = *(v25 + v21.i32[2]);
  v50 = (v49 >> 10) & 0x1F;
  if (v50 == 31)
  {
    v51 = 2139095040;
  }

  else
  {
    v51 = (v49 >> 10) & 0x1F;
  }

  if (v50)
  {
    v52 = v50 == 31;
  }

  else
  {
    v52 = 1;
  }

  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = (v50 << 23) + 939524096;
  }

  v54 = *(v31 + v21.i32[2]);
  v55 = (v54 >> 10) & 0x1F;
  if (v55 == 31)
  {
    v56 = 2139095040;
  }

  else
  {
    v56 = (v54 >> 10) & 0x1F;
  }

  if (v55)
  {
    v57 = v55 == 31;
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v58 = v56;
  }

  else
  {
    v58 = (v55 << 23) + 939524096;
  }

  v59 = *(v37 + v21.i32[2]);
  v60 = (v59 >> 10) & 0x1F;
  if (v60 == 31)
  {
    v61 = 2139095040;
  }

  else
  {
    v61 = (v59 >> 10) & 0x1F;
  }

  if (v60)
  {
    v62 = v60 == 31;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = v61;
  }

  else
  {
    v63 = (v60 << 23) + 939524096;
  }

  v64 = *(v43 + v21.i32[2]);
  v65 = (v64 >> 10) & 0x1F;
  if (v65 == 31)
  {
    v66 = 2139095040;
  }

  else
  {
    v66 = (v64 >> 10) & 0x1F;
  }

  if (v65)
  {
    v67 = v65 == 31;
  }

  else
  {
    v67 = 1;
  }

  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = (v65 << 23) + 939524096;
  }

  v21.i32[0] = v63 | (v59 << 16) & 0x80000000 | (v59 >> 7) & 7 | (8 * (v59 & 0x3FF)) & 0x1FFF | ((v59 & 0x3FF) << 13);
  v14.i32[0] = v58 | (v54 << 16) & 0x80000000 | (v54 >> 7) & 7 | (8 * (v54 & 0x3FF)) & 0x1FFF | ((v54 & 0x3FF) << 13);
  v18.i32[0] = v53 | (v49 << 16) & 0x80000000 | (v49 >> 7) & 7 | (8 * (v49 & 0x3FF)) & 0x1FFF | ((v49 & 0x3FF) << 13);
  v19.i32[0] = v48 | (v44 << 16) & 0x80000000 | (v44 >> 7) & 7 | (8 * (v44 & 0x3FF)) & 0x1FFF | ((v44 & 0x3FF) << 13);
  v20.i32[0] = v42 | (v38 << 16) & 0x80000000 | (v38 >> 7) & 7 | (8 * (v38 & 0x3FF)) & 0x1FFF | ((v38 & 0x3FF) << 13);
  a8.i32[0] = v36 | (v32 << 16) & 0x80000000 | (v32 >> 7) & 7 | (8 * (v32 & 0x3FF)) & 0x1FFF | ((v32 & 0x3FF) << 13);
  a9.i32[0] = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
  v69 = vsubq_f32(v15, vrndq_f32(v15));
  v70 = vmlaq_f32(a9, v69, vsubq_f32(a8, a9));
  a8.i32[0] = v68 | (v64 << 16) & 0x80000000 | (v64 >> 7) & 7 | (8 * (v64 & 0x3FF)) & 0x1FFF | ((v64 & 0x3FF) << 13);
  v71 = vmlaq_f32(v18, v69, vsubq_f32(v14, v18));
  v72 = vdupq_lane_s32(*v69.f32, 1);
  v73 = vmlaq_n_f32(vdupq_lane_s32(*v70.f32, 0), v72, vmlaq_f32(vsubq_f32(v20, v70), v69, vsubq_f32(v19, v20)).f32[0]);
  *&result = vmlaq_laneq_f32(v73, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v71.f32, 0), v73), v72, vmlaq_f32(vsubq_f32(v21, v71), v69, vsubq_f32(a8, v21)).f32[0]), v69, 2).u64[0];
  return result;
}

double sub_1AF380224(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmlaq_f32(v11, v11, v9);
  v13 = vabdq_f32(v10, vminnmq_f32(vsubq_f32(v12, vrndmq_f32(v12)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = a1[1];
  v15 = vmulq_f32(v13, vaddq_f32(*a1, *a1));
  v16 = vminq_s32(vcvtq_s32_f32(v15), v14);
  v18 = a1[2];
  v17 = a1[3];
  v19 = vmulq_s32(v18, v16);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vbslq_s8(vcgtq_s32(v14, v16), v18, v17);
  v21 = v20.i32[1] + v19.i32[0];
  v22 = v21 + v20.i32[0];
  v23 = a1[4].i64[0];
  v24 = v20.i32[0] + v19.i32[0];
  v25 = (v23 + v19.i32[0]);
  v20.i32[0] = *v25;
  v26 = (v23 + v24);
  v27 = (v23 + v21);
  v17.i32[0] = *v27;
  v28 = (v23 + v22);
  v18.i32[0] = *(v25 + v20.i32[2]);
  v19.f32[0] = *(v26 + v20.i32[2]);
  a8.i32[0] = *(v27 + v20.i32[2]);
  a9.f32[0] = *(v28 + v20.i32[2]);
  v29 = vsubq_f32(v15, vrndq_f32(v15));
  v15.f32[0] = *v26 - *v25;
  v30 = vmlaq_f32(v20, v29, v15);
  v14.f32[0] = *v28 - *v27;
  v19.f32[0] = v19.f32[0] - v18.f32[0];
  v31 = vmlaq_f32(v18, v29, v19);
  a9.f32[0] = a9.f32[0] - a8.f32[0];
  v32 = vdupq_lane_s32(*v29.f32, 1);
  v33 = vmlaq_n_f32(vdupq_lane_s32(*v30.f32, 0), v32, vmlaq_f32(vsubq_f32(v17, v30), v29, v14).f32[0]);
  *&result = vmlaq_laneq_f32(v33, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v31.f32, 0), v33), v32, vmlaq_f32(vsubq_f32(a8, v31), v29, a9).f32[0]), v29, 2).u64[0];
  return result;
}

double sub_1AF380324(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 32);
  v11 = vaddvq_s32(vmulq_s32(v10, v9));
  v12 = vbslq_s8(vcgtq_s32(v7, v9), v10, *(a1 + 48));
  v13 = v12.i32[2];
  v14 = v12.i32[1] + v11;
  v15 = vdupq_n_s32(0x7FE000u);
  v16 = vdupq_n_s32(0xF800000u);
  v17 = v14 + v12.i32[0];
  v18 = *(a1 + 64);
  v19 = v12.i32[0] + v11;
  v20 = (v18 + v11);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v21 = vshll_n_u16(*v20, 0xDuLL);
  v22.i64[0] = 0x3800000038000000;
  v22.i64[1] = 0x3800000038000000;
  v23 = vaddq_s32(vorrq_s8(vandq_s8(v21, v16), vorrq_s8(vandq_s8(vmovl_s16(*v20), v10), vandq_s8(v21, v15))), v22);
  v24 = (v18 + v19);
  v25 = vshll_n_u16(*v24, 0xDuLL);
  v26 = vaddq_s32(vorrq_s8(vandq_s8(v25, v16), vorrq_s8(vandq_s8(vmovl_s16(*v24), v10), vandq_s8(v25, v15))), v22);
  v27 = (v18 + v14);
  v28 = vshll_n_u16(*v27, 0xDuLL);
  v29 = vaddq_s32(vorrq_s8(vandq_s8(v28, v16), vorrq_s8(vandq_s8(vmovl_s16(*v27), v10), vandq_s8(v28, v15))), v22);
  v30 = (v18 + v17);
  v31 = vshll_n_u16(*v30, 0xDuLL);
  v32 = vaddq_s32(vorrq_s8(vandq_s8(v31, v16), vorrq_s8(vandq_s8(vmovl_s16(*v30), v10), vandq_s8(v31, v15))), v22);
  v33 = *(v20 + v13);
  v34 = vandq_s8(vmovl_s16(v33), v10);
  v35 = vshll_n_u16(v33, 0xDuLL);
  v36 = vaddq_s32(vorrq_s8(vandq_s8(v35, v16), vorrq_s8(v34, vandq_s8(v35, v15))), v22);
  *v34.i8 = *(v24 + v13);
  v37 = vandq_s8(vmovl_s16(*v34.i8), v10);
  v38 = vshll_n_u16(*v34.i8, 0xDuLL);
  v39 = vorrq_s8(vandq_s8(v38, v16), vorrq_s8(v37, vandq_s8(v38, v15)));
  *v37.i8 = *(v27 + v13);
  v40 = vandq_s8(vmovl_s16(*v37.i8), v10);
  v41 = vshll_n_u16(*v37.i8, 0xDuLL);
  v42 = vaddq_s32(vorrq_s8(vandq_s8(v41, v16), vorrq_s8(v40, vandq_s8(v41, v15))), v22);
  *v40.i8 = *(v30 + v13);
  v43 = vandq_s8(vmovl_s16(*v40.i8), v10);
  v44 = vshll_n_u16(*v40.i8, 0xDuLL);
  v45 = vsubq_f32(v8, vrndq_f32(v8));
  v46 = vmlaq_n_f32(v23, vsubq_f32(v26, v23), v45.f32[0]);
  v47 = vmlaq_n_f32(v36, vsubq_f32(vaddq_s32(v39, v22), v36), v45.f32[0]);
  v48 = vmlaq_lane_f32(v46, vmlaq_n_f32(vsubq_f32(v29, v46), vsubq_f32(v32, v29), v45.f32[0]), *v45.f32, 1);
  *&result = vmlaq_laneq_f32(v48, vmlaq_lane_f32(vsubq_f32(v47, v48), vmlaq_n_f32(vsubq_f32(v42, v47), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v44, v16), vorrq_s8(v43, vandq_s8(v44, v15))), v22), v42), v45.f32[0]), *v45.f32, 1), v45, 2).u64[0];
  return result;
}

double sub_1AF380530(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 32);
  v11 = vaddvq_s32(vmulq_s32(v10, v9));
  v12 = vbslq_s8(vcgtq_s32(v7, v9), v10, *(a1 + 48));
  v13 = v12.i32[2];
  v14 = v12.i32[1] + v11;
  v15 = v14 + v12.i32[0];
  v16 = *(a1 + 64);
  v17 = (v16 + v11);
  v18 = (v16 + v12.i32[0] + v11);
  v19 = (v16 + v14);
  v20 = (v16 + v15);
  v21 = *(v17 + v12.i32[2]);
  v22 = *(v19 + v12.i32[2]);
  v23 = *(v20 + v12.i32[2]);
  v24 = vsubq_f32(v8, vrndq_f32(v8));
  v25 = vmlaq_n_f32(*v17, vsubq_f32(*v18, *v17), v24.f32[0]);
  v26 = vmlaq_n_f32(v21, vsubq_f32(*(v18 + v13), v21), v24.f32[0]);
  v27 = vmlaq_lane_f32(v25, vmlaq_n_f32(vsubq_f32(*v19, v25), vsubq_f32(*v20, *v19), v24.f32[0]), *v24.f32, 1);
  *&result = vmlaq_laneq_f32(v27, vmlaq_lane_f32(vsubq_f32(v26, v27), vmlaq_n_f32(vsubq_f32(v22, v26), vsubq_f32(v23, v22), v24.f32[0]), *v24.f32, 1), v24, 2).u64[0];
  return result;
}

double sub_1AF380624(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, *(a1 + 80));
  v11.i32[3] = 0;
  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vmlaq_f32(v13, v13, v11);
  v15 = vabdq_f32(v12, vminnmq_f32(vsubq_f32(v14, vrndmq_f32(v14)), vdupq_n_s32(0x3F7FFFFFu)));
  v16 = *(a1 + 16);
  v17 = vmulq_f32(v15, vaddq_f32(*a1, *a1));
  v18 = vminq_s32(vcvtq_s32_f32(v17), v16);
  v20 = *(a1 + 32);
  v19 = *(a1 + 48);
  v21 = vmulq_s32(v20, v18);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vbslq_s8(vcgtq_s32(v16, v18), v20, v19);
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = *(a1 + 64);
  v26 = (v25 + v21.i32[0]);
  v16.i8[0] = *v26;
  v16.f32[0] = v16.u32[0] * 0.0039216;
  v27 = (v25 + v22.i32[0] + v21.i32[0]);
  v19.i8[0] = *v27;
  v28 = (v25 + v23);
  v20.i8[0] = *v28;
  v20.f32[0] = v20.u32[0] * 0.0039216;
  v29 = (v25 + v24);
  v21.i8[0] = *v29;
  a8.i8[0] = v26[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v27[v22.i32[2]];
  v9.i8[0] = v28[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v29[v22.i32[2]];
  v30 = vsubq_f32(v17, vrndq_f32(v17));
  v17.f32[0] = -(v16.f32[0] - (v19.u32[0] * 0.0039216));
  v31 = vmlaq_f32(v16, v30, v17);
  v21.f32[0] = -(v20.f32[0] - (v21.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v32 = vmlaq_f32(a8, v30, a9);
  v22.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v20, v31), v30, v21).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(v9, v32), v30, v22).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF38075C(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vmlaq_f32(v13, v13, v11);
  v15 = vabdq_f32(v12, vminnmq_f32(vsubq_f32(v14, vrndmq_f32(v14)), vdupq_n_s32(0x3F7FFFFFu)));
  v16 = a1[1];
  v17 = vmulq_f32(v15, vaddq_f32(*a1, *a1));
  v18 = vminq_s32(vcvtq_s32_f32(v17), v16);
  v20 = a1[2];
  v19 = a1[3];
  v21 = vmulq_s32(v20, v18);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vbslq_s8(vcgtq_s32(v16, v18), v20, v19);
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = v22.i32[0] + v21.i32[0];
  v27 = (v25 + v21.i32[0]);
  v22.i8[0] = *v27;
  v22.f32[0] = v22.u32[0];
  v19.f32[0] = v22.f32[0] * 0.0039216;
  v28 = (v25 + v26);
  v22.i8[0] = *v28;
  v29 = (v25 + v23);
  v20.i8[0] = *v29;
  v20.f32[0] = v20.u32[0] * 0.0039216;
  v30 = (v25 + v24);
  v21.i8[0] = *v30;
  a8.i8[0] = v27[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v28[v22.i32[2]];
  v9.i8[0] = v29[v22.i32[2]];
  LOBYTE(v10) = v30[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v31 = vsubq_f32(v17, vrndq_f32(v17));
  v22.f32[0] = -(v19.f32[0] - (v22.u32[0] * 0.0039216));
  v32 = vmlaq_f32(v19, v31, v22);
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v33 = vmlaq_f32(a8, v31, a9);
  v21.f32[0] = -(v20.f32[0] - (v21.u32[0] * 0.0039216));
  v16.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v34 = vdupq_lane_s32(*v31.f32, 1);
  v35 = vmlaq_n_f32(vdupq_lane_s32(*v32.f32, 0), v34, vmlaq_f32(vsubq_f32(v20, v32), v31, v21).f32[0]);
  v36 = vmlaq_laneq_f32(v35, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v33.f32, 0), v35), v34, vmlaq_f32(vsubq_f32(v9, v33), v31, v16).f32[0]), v31, 2);
  v37 = vmulq_f32(v36, v36);
  v38 = vmulq_f32(v37, v37);
  v39 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v36), v37, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v36));
  v40 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v36), v37, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v36));
  v41 = vcgeq_f32(v36, vdupq_n_s32(0x3D25AEE6u));
  v41.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v41), vmlaq_f32(v39, v38, v40), vmulq_f32(v36, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF380948(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v9));
  v13 = vbslq_s8(vcgtq_s32(v7, v9), v11, *(a1 + 48));
  v14 = v13.i32[2];
  v15 = v13.i32[0] + v12;
  v16 = v13.i32[1] + v12;
  v17 = v16 + v13.i32[0];
  v18 = (v10 + v12);
  v20 = vld1q_dup_f32(v18);
  v19 = (v18 + v14);
  v21.i64[0] = 0xFF000000FFLL;
  v21.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v21)), v22);
  v24 = (v10 + v15);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v14);
  v27 = (v10 + v16);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v14);
  v30 = (v10 + v17);
  v32 = vld1q_dup_f32(v30);
  v31 = (v30 + v14);
  v33 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v21)), v22);
  v34 = vld1q_dup_f32(v19);
  v35 = vld1q_dup_f32(v25);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v21)), v22);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v21)), v22);
  v39 = vld1q_dup_f32(v31);
  v40 = vsubq_f32(v8, vrndq_f32(v8));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v21))), v40.f32[0]);
  v42 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v21))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v33, v41), vmlaq_f32(vnegq_f32(v33), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v21))), v40.f32[0]), *v40.f32, 1);
  *&result = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v21))), v40.f32[0]), *v40.f32, 1), v40, 2).u64[0];
  return result;
}

double sub_1AF380AD4(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v9));
  v13 = vbslq_s8(vcgtq_s32(v7, v9), v11, *(a1 + 48));
  v14 = v13.i32[2];
  v15 = v13.i32[0] + v12;
  v16 = v13.i32[1] + v12;
  v17 = v16 + v13.i32[0];
  v18 = (v10 + v12);
  v20 = vld1q_dup_f32(v18);
  v19 = (v18 + v14);
  v21.i64[0] = 0xFF000000FFLL;
  v21.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v21)), v22);
  v24 = (v10 + v15);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v14);
  v27 = (v10 + v16);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v14);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v21)), v22);
  v31 = (v10 + v17);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v14);
  v34 = vld1q_dup_f32(v19);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v21)), v22);
  v36 = vld1q_dup_f32(v25);
  v37 = vld1q_dup_f32(v28);
  v38 = vld1q_dup_f32(v32);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v21)), v22);
  v40 = vsubq_f32(v8, vrndq_f32(v8));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v21))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v21))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v21))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v39, v42), vmlaq_f32(vnegq_f32(v39), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v21))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmulq_f32(v45, v45);
  v47 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44));
  v48 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44));
  v49 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v49.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v49), vmlaq_f32(v47, v46, v48), vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF380D14(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v9));
  v13 = vbslq_s8(vcgtq_s32(v7, v9), v11, *(a1 + 48));
  v14 = v13.i32[2];
  v15 = v13.i32[0];
  v16 = v13.i32[0] + v12;
  v17 = v13.i32[1] + v12;
  v18 = (v10 + v12);
  v20 = vld1q_dup_f32(v18);
  v19 = (v18 + v14);
  v21 = v17 + v15;
  v22.i64[0] = 0xFF000000FFLL;
  v22.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v22)), v23);
  v25 = (v10 + v16);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v14);
  v28 = (v10 + v17);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v14);
  v31 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v22)), v23);
  v32 = (v10 + v21);
  v34 = vld1q_dup_f32(v32);
  v33 = (v32 + v14);
  v35 = vld1q_dup_f32(v19);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v22)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v22)), v23);
  v40 = vld1q_dup_f32(v33);
  v41 = vsubq_f32(v8, vrndq_f32(v8));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v22))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v22))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v31, v42), vmlaq_f32(vnegq_f32(v31), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v22))), v41.f32[0]), *v41.f32, 1);
  v45 = vrev64q_s32(vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v22))), v41.f32[0]), *v41.f32, 1), v41, 2));
  *&result = vextq_s8(v45, v45, 0xCuLL).u64[0];
  return result;
}

double sub_1AF380EA8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v9));
  v13 = vbslq_s8(vcgtq_s32(v7, v9), v11, *(a1 + 48));
  v14 = v13.i32[2];
  v15 = v13.i32[0];
  v16 = v13.i32[0] + v12;
  v17 = v13.i32[1] + v12;
  v18 = (v10 + v12);
  v20 = vld1q_dup_f32(v18);
  v19 = (v18 + v14);
  v21 = v17 + v15;
  v22.i64[0] = 0xFF000000FFLL;
  v22.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v22)), v23);
  v25 = (v10 + v16);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v14);
  v28 = (v10 + v17);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v14);
  v31 = (v10 + v21);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v14);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v22)), v23);
  v35 = vld1q_dup_f32(v19);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v22)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v22)), v23);
  v40 = vld1q_dup_f32(v32);
  v41 = vsubq_f32(v8, vrndq_f32(v8));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v22))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v22))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v34, v42), vmlaq_f32(vnegq_f32(v34), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v22))), v41.f32[0]), *v41.f32, 1);
  v45 = vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v22))), v41.f32[0]), *v41.f32, 1), v41, 2);
  v46 = vmulq_f32(v45, v45);
  v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v45), v46, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v45)), vmulq_f32(v46, v46), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v45), v46, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v45)));
  v48 = vcgeq_f32(v45, vdupq_n_s32(0x3D25AEE6u));
  v48.i32[3] = 0;
  v49 = vbslq_s8(vcltzq_s32(v48), v47, vmulq_f32(v45, vdupq_n_s32(0x3D9E8391u)));
  v49.i32[3] = v45.i32[3];
  v50 = vrev64q_s32(v49);
  *&result = vextq_s8(v50, v50, 0xCuLL).u64[0];
  return result;
}

float32x4_t vfx_sampler3d_make@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, int32x4_t a6@<Q0>)
{
  if ((a2 - 1) > 9)
  {
    v6 = 2;
  }

  else
  {
    v6 = dword_1AFE4834C[(a2 - 1)];
  }

  v7 = a6;
  v7.i32[3] = 0;
  v8 = vcvtq_f32_s32(v7);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  *a5 = v8;
  *(a5 + 16) = vaddq_s32(v7, v9);
  v10 = vdupq_n_s32(v6);
  v9.i32[0] = 1;
  v9.i32[1] = a6.i32[0];
  v9.i64[1] = (a6.i32[0] * a6.i32[1]);
  v11 = a6.i32[0] - a6.i32[0] * a6.i32[1];
  a6.i32[0] = 1 - a6.i32[0];
  a6.i32[1] = v11;
  a6.i64[1] = (v9.i32[2] - v9.i32[2] * a6.i32[2]);
  v12 = *(&off_1F24EC880[40 * a4] + 10 * a3 + a2);
  *(a5 + 32) = vmulq_s32(v10, v9);
  *(a5 + 48) = vmulq_s32(v10, a6);
  *(a5 + 64) = a1;
  *(a5 + 72) = v12;
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  result = vdivq_f32(v13, v8);
  *(a5 + 80) = result;
  return result;
}

double sub_1AF3811B0(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v6 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v8 = vadd_s32(v7, vdup_lane_s32(v7, 1));
  v9 = *(*(a1 + 32) + v8.i32[0]);
  v10 = (v9 >> 10) & 0x1F;
  if (v10 == 31)
  {
    v11 = 2139095040;
  }

  else
  {
    v11 = (v9 >> 10) & 0x1F;
  }

  if (v10)
  {
    _ZF = v10 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v13 = v11;
  }

  else
  {
    v13 = (v10 << 23) + 939524096;
  }

  v8.i32[0] = v13 | (v9 << 16) & 0x80000000 | (v9 >> 7) & 7 | (8 * (v9 & 0x3FF)) & 0x1FFF | ((v9 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(v8, 0).u64[0];
  return result;
}

double sub_1AF381250(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = (*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  *&result = vld1q_dup_f32(v9).u64[0];
  return result;
}

double sub_1AF3812A8(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = *(*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v11 = vandq_s8(vmovl_s16(v9), v10);
  v12 = vshll_n_u16(v9, 0xDuLL);
  v13 = vorrq_s8(vandq_s8(v12, vdupq_n_s32(0xF800000u)), vorrq_s8(v11, vandq_s8(v12, vdupq_n_s32(0x7FE000u))));
  v11.i64[0] = 0x3800000038000000;
  v11.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v13, v11).u64[0];
  return result;
}

double sub_1AF381334(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    *&v9 = 0;
  }

  else
  {
    v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
    v9 = *(*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  }

  return *&v9;
}

double sub_1AF381388(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = vadd_s32(v8, vdup_lane_s32(v8, 1));
  v9.i8[0] = *(*(a1 + 32) + v9.i32[0]);
  *v9.i32 = v9.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(v9, 0).u64[0];
  return result;
}

double sub_1AF3813F0(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  __asm { FMOV            V1.2S, #1.0 }

  v14 = vorr_s8(vcge_f32(*a2.f32, _D1), vcltz_f32(*a2.f32));
  if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  a4.i64[0] = *(a1 + 8);
  *a2.f32 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, *a2.f32)), *a4.f32));
  *a3.f32 = vdup_lane_s32(*a2.f32, 1);
  *a2.f32 = vadd_s32(*a2.f32, *a3.f32);
  a2.i8[0] = *(*(a1 + 32) + a2.i32[0]);
  a3.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.f32[0] = a2.f32[0] * a2.f32[0];
  a5.i32[0] = 1033798545;
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v15 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v16 = vmlaq_f32(a8, a6, a3);
  v17 = vmlaq_f32(v15, a2, v16);
  a6.i32[0] = 1064027478;
  v16.i32[0] = -1083773218;
  v18 = vmlaq_f32(v16, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v19 = vdupq_lane_s32(*&vmlaq_f32(v17, a4, vmlaq_f32(v18, a2, vmlaq_f32(a9, a6, a3))), 0);
  v20 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v20.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v20), v19, vdupq_lane_s32(*&vmulq_f32(a3, a5), 0)).u64[0];
  return result;
}

double sub_1AF3814F8(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = (*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF381578(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = (*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11));
  v13 = vmulq_f32(v12, vdupq_n_s32(0x3B808081u));
  v14 = vmulq_f32(v13, v13);
  v15 = vmulq_f32(v12, vdupq_n_s32(0x399F22B4u));
  v16 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v12), v14, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v12)), vmulq_f32(v14, v14), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v12), v14, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v12)));
  v17 = vcgeq_f32(v13, vdupq_n_s32(0x3D25AEE6u));
  v17.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v17), v16, v15).u64[0];
  return result;
}

double sub_1AF3816AC(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = (*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v12, v12, 0xCuLL).u64[0];
  return result;
}

double sub_1AF381734(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vorr_s8(vcge_f32(a2, _D1), vcltz_f32(a2));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, a2)), *(a1 + 8)));
  v9 = (*(a1 + 32) + vadd_s32(v8, vdup_lane_s32(v8, 1)).i32[0]);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11));
  v13 = vmulq_f32(v12, vdupq_n_s32(0x3B808081u));
  v14 = vmulq_f32(v13, v13);
  v15 = vmulq_f32(v12, vdupq_n_s32(0x399F22B4u));
  v16 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v12), v14, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v12)), vmulq_f32(v14, v14), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v12), v14, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v12)));
  v17 = vcgeq_f32(v13, vdupq_n_s32(0x3D25AEE6u));
  v17.i32[3] = 0;
  v18 = vbslq_s8(vcltzq_s32(v17), v16, v15);
  v18.i32[3] = v13.i32[3];
  v19 = vrev64q_s32(v18);
  *&result = vextq_s8(v19, v19, 0xCuLL).u64[0];
  return result;
}

double sub_1AF381870(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v6 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v7 = vadd_s32(v6, vdup_lane_s32(v6, 1));
  v8 = *(*(a1 + 32) + v7.i32[0]);
  v9 = (v8 >> 10) & 0x1F;
  if (v9 == 31)
  {
    v10 = 2139095040;
  }

  else
  {
    v10 = (v8 >> 10) & 0x1F;
  }

  if (v9)
  {
    _ZF = v9 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v12 = v10;
  }

  else
  {
    v12 = (v9 << 23) + 939524096;
  }

  v7.i32[0] = v12 | (v8 << 16) & 0x80000000 | (v8 >> 7) & 7 | (8 * (v8 & 0x3FF)) & 0x1FFF | ((v8 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(v7, 0).u64[0];
  return result;
}

double sub_1AF3818FC(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = (*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
  *&result = vld1q_dup_f32(v8).u64[0];
  return result;
}

double sub_1AF381940(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = *(*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vandq_s8(vmovl_s16(v8), v9);
  v11 = vshll_n_u16(v8, 0xDuLL);
  v12 = vorrq_s8(vandq_s8(v11, vdupq_n_s32(0xF800000u)), vorrq_s8(v10, vandq_s8(v11, vdupq_n_s32(0x7FE000u))));
  v10.i64[0] = 0x3800000038000000;
  v10.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v12, v10).u64[0];
  return result;
}

__n128 sub_1AF3819B8(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  return *(*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
}

double sub_1AF3819F8(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = vadd_s32(v7, vdup_lane_s32(v7, 1));
  v8.i8[0] = *(*(a1 + 32) + v8.i32[0]);
  *v8.i32 = v8.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(v8, 0).u64[0];
  return result;
}

double sub_1AF381A4C(uint64_t a1, float32x4_t a2, float32x4_t _Q1, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  __asm { FMOV            V1.2S, #1.0 }

  a4.i64[0] = *(a1 + 8);
  *a2.f32 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(*a2.f32, 0), *_Q1.f32))), *a4.f32));
  *_Q1.f32 = vdup_lane_s32(*a2.f32, 1);
  *a2.f32 = vadd_s32(*a2.f32, *_Q1.f32);
  a2.i8[0] = *(*(a1 + 32) + a2.i32[0]);
  _Q1.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = _Q1.f32[0] * _Q1.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v13 = vmlaq_f32(a7, a6, _Q1);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v14 = vmlaq_f32(a8, a6, _Q1);
  v15 = vmlaq_f32(v13, a2, v14);
  a6.i32[0] = 1064027478;
  v14.i32[0] = -1083773218;
  v16 = vmlaq_f32(v14, a6, _Q1);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v17 = vdupq_lane_s32(*&vmlaq_f32(v15, a5, vmlaq_f32(v16, a2, vmlaq_f32(a9, a6, _Q1))), 0);
  v18 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(_Q1, vdupq_n_s32(0x3D25AEE6u))), 0));
  v18.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v18), v17, vdupq_lane_s32(*&vmulq_f32(_Q1, a4), 0)).u64[0];
  return result;
}

double sub_1AF381B40(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = (*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF381BAC(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = (*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10));
  v12 = vmulq_f32(v11, vdupq_n_s32(0x3B808081u));
  v13 = vmulq_f32(v12, v12);
  v14 = vmulq_f32(v11, vdupq_n_s32(0x399F22B4u));
  v15 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v11), v13, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v11));
  v16 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v11), v13, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v11));
  v17 = vcgeq_f32(v12, vdupq_n_s32(0x3D25AEE6u));
  v17.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v17), vmlaq_f32(v15, vmulq_f32(v13, v13), v16), v14).u64[0];
  return result;
}

double sub_1AF381CCC(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = (*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v11, v11, 0xCuLL).u64[0];
  return result;
}

double sub_1AF381D40(uint64_t a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vmaxnm_f32(a2, 0), _D1))), *(a1 + 8)));
  v8 = (*(a1 + 32) + vadd_s32(v7, vdup_lane_s32(v7, 1)).i32[0]);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10));
  v12 = vmulq_f32(v11, vdupq_n_s32(0x3B808081u));
  v13 = vmulq_f32(v12, v12);
  v14 = vmulq_f32(v11, vdupq_n_s32(0x399F22B4u));
  v15 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v11), v13, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v11)), vmulq_f32(v13, v13), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v11), v13, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v11)));
  v16 = vcgeq_f32(v12, vdupq_n_s32(0x3D25AEE6u));
  v16.i32[3] = 0;
  v17 = vbslq_s8(vcltzq_s32(v16), v15, v14);
  v17.i32[3] = v12.i32[3];
  v18 = vrev64q_s32(v17);
  *&result = vextq_s8(v18, v18, 0xCuLL).u64[0];
  return result;
}

double sub_1AF381E68(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = vadd_s32(v2, vdup_lane_s32(v2, 1));
  v4 = *(*(a1 + 32) + v3.i32[0]);
  v5 = (v4 >> 10) & 0x1F;
  if (v5 == 31)
  {
    v6 = 2139095040;
  }

  else
  {
    v6 = (v4 >> 10) & 0x1F;
  }

  if (v5)
  {
    v7 = v5 == 31;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = (v5 << 23) + 939524096;
  }

  v3.i32[0] = v8 | (v4 << 16) & 0x80000000 | (v4 >> 7) & 7 | (8 * (v4 & 0x3FF)) & 0x1FFF | ((v4 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(v3, 0).u64[0];
  return result;
}

double sub_1AF381EF8(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = (*(a1 + 32) + vadd_s32(v2, vdup_lane_s32(v2, 1)).i32[0]);
  *&result = vld1q_dup_f32(v3).u64[0];
  return result;
}

double sub_1AF381F40(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = *(*(a1 + 32) + vadd_s32(v2, vdup_lane_s32(v2, 1)).i32[0]);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v5 = vandq_s8(vmovl_s16(v3), v4);
  v6 = vshll_n_u16(v3, 0xDuLL);
  v7 = vorrq_s8(vandq_s8(v6, vdupq_n_s32(0xF800000u)), vorrq_s8(v5, vandq_s8(v6, vdupq_n_s32(0x7FE000u))));
  v5.i64[0] = 0x3800000038000000;
  v5.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v7, v5).u64[0];
  return result;
}