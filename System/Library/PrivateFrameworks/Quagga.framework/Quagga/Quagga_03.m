void sub_2614AE7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t *a51)
{
  sub_261489DCC(&a51);
  sub_2614AE910(&a11);
  sub_261489DCC(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_2614AE910(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = sub_2614F5408(*a1, *(a1 + 8)) ^ 1;
  }

  return a1;
}

uint64_t sub_2614AE960(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd39ANMDImagePreprocessor_Accelerate_32BGRA26resampleAndRotateIfNeeded_ERKNS_6Sample11PixelBufferERKNS3_21ScopedPixelBufferLockILb1EEERNSt3__18optionalINS_5ErrorEEERKNSC_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614AE99C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_Accelerate_32BGRA::resampleAndRotateIfNeeded_", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614AEAD4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd39ANMDImagePreprocessor_Accelerate_32BGRA26resampleAndRotateIfNeeded_ERKNS_6Sample11PixelBufferERKNS3_21ScopedPixelBufferLockILb1EEERNSt3__18optionalINS_5ErrorEEERKNSC_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614AEB10(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_Accelerate_32BGRA::resampleAndRotateIfNeeded_", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614AEC48(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd39ANMDImagePreprocessor_Accelerate_32BGRA3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614AEC84(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_Accelerate_32BGRA::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614AEDBC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd39ANMDImagePreprocessor_Accelerate_32BGRA3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614AEDF8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_Accelerate_32BGRA::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614AEF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 24))(a1))
  {
    return 1;
  }

  v49[0] = &unk_2873D59F0;
  v50 = v49;
  v51 = a3;
  v48[0] = &unk_2873D5A70;
  v48[3] = v48;
  sub_261489C64(v52, v48);
  if (*(v51 + 8) == 1 && v50 != 0)
  {
    sub_261489CFC(v50, *v51);
  }

  sub_261489D4C(v48);
  sub_261489D4C(v49);
  if (*(a1 + 192) == 1 && *(a1 + 336) == 1)
  {
    goto LABEL_35;
  }

  v56[0] = &unk_2873CFE80;
  v57 = v56;
  v55[0] = &unk_2873CFE28;
  v55[3] = v55;
  *buf = a3;
  sub_261489C64(&buf[8], v55);
  if (*(a3 + 8) == 1 && v57)
  {
    sub_261489CFC(v57, **buf);
  }

  sub_261489D4C(v55);
  sub_261489D4C(v56);
  v8 = *MEMORY[0x277CB86F0];
  if ((*(a1 + 192) & 1) == 0)
  {
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 192) = 1;
    Conversion = vImageConvert_YpCbCrToARGB_GenerateConversion(v8, &dword_261573B20, (a1 + 64), kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
    if (Conversion)
    {
      if (*(a1 + 192) == 1)
      {
        *(a1 + 192) = 0;
      }

      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v10 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *v54 = 134349056;
        *&v54[4] = Conversion;
        _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "vImageConvert_YpCbCrToARGB_GenerateConversion failed with vImage_Error: %{public}zd", v54, 0xCu);
      }

LABEL_30:
      *v54 = -2003;
      v39 = @"vImageConvert_YpCbCrToARGB_GenerateConversion failed.";
      sub_261476754(a2, v54, &v39);
      v11 = 0;
      *(a2 + 32) = Conversion;
      *(a2 + 40) = 1;
      goto LABEL_31;
    }
  }

  v11 = 1;
  if ((*(a1 + 336) & 1) == 0)
  {
    *(a1 + 208) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 336) = 1;
    Conversion = vImageConvert_YpCbCrToARGB_GenerateConversion(v8, &unk_26157A21C, (a1 + 208), kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
    if (Conversion)
    {
      if (*(a1 + 336) == 1)
      {
        *(a1 + 336) = 0;
      }

      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v12 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *v54 = 134349056;
        *&v54[4] = Conversion;
        _os_log_error_impl(&dword_26146F000, v12, OS_LOG_TYPE_ERROR, "vImageConvert_YpCbCrToARGB_GenerateConversion failed with vImage_Error: %{public}zd", v54, 0xCu);
      }

      goto LABEL_30;
    }
  }

LABEL_31:
  if (*(*buf + 8) == 1 && *v45)
  {
    sub_261489CFC(*v45, **buf);
  }

  sub_261489D4C(&buf[8]);
  if ((v11 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_35:
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (!v13 || (v13 & 0xF) != 0 || !v14 || (v14 & 0xF) != 0)
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v18 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      *&buf[4] = v13;
      v41 = 2050;
      v42 = v14;
      _os_log_error_impl(&dword_26146F000, v18, OS_LOG_TYPE_ERROR, "Invalid image size: width=%{public}zu, height=%{public}zu", buf, 0x16u);
    }

    *buf = -6008;
    v56[0] = @"Invalid image size.";
    sub_261476754(a2, buf, v56);
    goto LABEL_54;
  }

  v15 = *(a1 + 24);
  if (v15 != 1111970369)
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v20 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_26146F000, v20, OS_LOG_TYPE_ERROR, "Unsupported pixel format type: %{public}u", buf, 8u);
    }

    *buf = -6008;
    v56[0] = @"Unsupported pixel format type.";
    sub_261476754(a2, buf, v56);
LABEL_54:
    v6 = 0;
    goto LABEL_55;
  }

  if ((*(a1 + 384) & 1) == 0)
  {
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 1;
    v16 = MEMORY[0x266705020](a1 + 352, v14, v13, 8, 0);
    if (v16)
    {
      if (*(a1 + 384) == 1)
      {
        *(a1 + 384) = 0;
      }

      if (qword_280CB3F00 != -1)
      {
        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
      }

      v17 = qword_280CB3EF8;
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_26146F000, v17, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
      }

LABEL_77:
      *buf = -2003;
      v56[0] = @"vImageBuffer_Init failed.";
      sub_261476754(a2, buf, v56);
      v6 = 0;
      *(a2 + 32) = v16;
      goto LABEL_91;
    }

    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v21 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 352);
      v32 = *(a1 + 360);
      v33 = *(a1 + 368);
      v34 = *(a1 + 376);
      *buf = 136447234;
      *&buf[4] = "420Yp8";
      v41 = 2050;
      v42 = v31;
      v43 = 2050;
      v44 = v32;
      *v45 = 2050;
      *&v45[2] = v33;
      v46 = 2050;
      v47 = v34;
      _os_log_debug_impl(&dword_26146F000, v21, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }
  }

  if ((*(a1 + 424) & 1) == 0)
  {
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 1;
    v16 = MEMORY[0x266705020]();
    if (v16)
    {
      if (*(a1 + 424) == 1)
      {
        *(a1 + 424) = 0;
      }

      if (qword_280CB3F00 != -1)
      {
        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
      }

      v22 = qword_280CB3EF8;
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_26146F000, v22, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
      }

      goto LABEL_77;
    }

    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v23 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 392);
      v36 = *(a1 + 400);
      v37 = *(a1 + 408);
      v38 = *(a1 + 416);
      *buf = 136447234;
      *&buf[4] = "420CbCr8";
      v41 = 2050;
      v42 = v35;
      v43 = 2050;
      v44 = v36;
      *v45 = 2050;
      *&v45[2] = v37;
      v46 = 2050;
      v47 = v38;
      _os_log_debug_impl(&dword_26146F000, v23, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }
  }

  v6 = 1;
  if (*(a1 + 464))
  {
    goto LABEL_55;
  }

  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1;
  v24 = MEMORY[0x266705020](a1 + 432, v14, v13, 32, 0);
  if (!v24)
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v26 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 432);
      v28 = *(a1 + 440);
      v29 = *(a1 + 448);
      v30 = *(a1 + 456);
      *buf = 136447234;
      *&buf[4] = "32BGRA";
      v41 = 2050;
      v42 = v27;
      v43 = 2050;
      v44 = v28;
      *v45 = 2050;
      *&v45[2] = v29;
      v46 = 2050;
      v47 = v30;
      _os_log_debug_impl(&dword_26146F000, v26, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }

    goto LABEL_55;
  }

  if (*(a1 + 464) == 1)
  {
    *(a1 + 464) = 0;
  }

  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  v25 = qword_280CB3EF8;
  if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v24;
    _os_log_error_impl(&dword_26146F000, v25, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
  }

  *buf = -2003;
  v56[0] = @"vImageBuffer_Init failed.";
  sub_261476754(a2, buf, v56);
  v6 = 0;
  *(a2 + 32) = v24;
LABEL_91:
  *(a2 + 40) = 1;
LABEL_55:
  if (*(v51 + 8) == 1 && v53)
  {
    sub_261489CFC(v53, *v51);
  }

  sub_261489D4C(v52);
  return v6;
}

uint64_t sub_2614AFA6C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd39ANMDImagePreprocessor_Accelerate_32BGRA7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614AFAA8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_Accelerate_32BGRA::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614AFBE0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd39ANMDImagePreprocessor_Accelerate_32BGRA7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614AFC1C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_Accelerate_32BGRA::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614AFD48(_BYTE *a1)
{
  if (a1[192] == 1 && a1[336] == 1 && a1[384] == 1 && a1[424] == 1)
  {
    v1 = a1[464];
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_2614AFD8C(uint64_t a1)
{
  sub_2614AFDC4(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614AFDC4(uint64_t a1)
{
  *a1 = &unk_2873D5848;
  if (*(a1 + 384) == 1)
  {
    free(*(a1 + 352));
  }

  if (*(a1 + 424) == 1)
  {
    free(*(a1 + 392));
  }

  if (*(a1 + 464) == 1)
  {
    free(*(a1 + 432));
  }

  if (*(a1 + 504) == 1)
  {
    free(*(a1 + 472));
  }

  if (*(a1 + 544) == 1)
  {
    free(*(a1 + 512));
  }

  return a1;
}

BOOL sub_2614AFE7C(uint64_t a1, atomic_ullong *a2, uint64_t a3, __CFString *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*(a1 + 192) == 1 && *(a1 + 336) == 1 && *(a1 + 384) == 1 && *(a1 + 424) == 1 && *(a1 + 464) == 1 && atomic_load_explicit((a1 + 672), memory_order_acquire))
  {
    v51[0] = &unk_2873D5DF0;
    v52 = v51;
    v53 = a4;
    v50[0] = &unk_2873D5E70;
    v50[3] = v50;
    sub_261489C64(v54, v50);
    if (LOBYTE(v53->info) == 1 && v52 != 0)
    {
      sub_261489CFC(v52, v53->isa);
    }

    sub_261489D4C(v50);
    sub_261489D4C(v51);
    if (!sub_2614AD320(a1, a2, a3, a4))
    {
      v12 = 0;
LABEL_62:
      if (LOBYTE(v53->info) == 1 && v55)
      {
        sub_261489CFC(v55, v53->isa);
      }

      sub_261489D4C(v54);
      return v12;
    }

    if (*(a1 + 464))
    {
      v9 = (a1 + 432);
    }

    else
    {
      v9 = 0;
    }

    v66[0] = &unk_2873D67F8;
    v67 = v66;
    v68 = a4;
    v65[0] = &unk_2873D6878;
    v65[3] = v65;
    sub_261489C64(v69, v65);
    if (*(v68 + 8) == 1 && v67)
    {
      sub_261489CFC(v67, *v68);
    }

    sub_261489D4C(v65);
    sub_261489D4C(v66);
    sub_2614E33C0(&v49, (a1 + 672), a3);
    if (!atomic_load_explicit(&v49, memory_order_acquire))
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v14 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "Failed to create input pixel buffer from pixel buffer pool", buf, 2u);
      }

      goto LABEL_55;
    }

    if (CVPixelBufferIsPlanar(atomic_load_explicit(&v49, memory_order_acquire)))
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v10 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "Invalid input pixel buffer", buf, 2u);
      }

LABEL_54:
      *buf = -2001;
      dest.data = @"Invalid input pixel buffer.";
      sub_261476754(a3, buf, &dest.data);
LABEL_55:
      v38 = 0;
LABEL_56:
      sub_2614776F0(&v49);
      if (*(v68 + 8) == 1 && v70)
      {
        sub_261489CFC(v70, *v68);
      }

      sub_261489D4C(v69);
      v24 = (a1 + 680);
      v25 = atomic_exchange(v24, atomic_exchange(&v38, 0));
      if (v25)
      {
        CFRelease(v25);
      }

      sub_2614776F0(&v38);
      v12 = atomic_load_explicit(v24, memory_order_acquire) != 0;
      goto LABEL_62;
    }

    Width = CVPixelBufferGetWidth(atomic_load_explicit(&v49, memory_order_acquire));
    Height = CVPixelBufferGetHeight(atomic_load_explicit(&v49, memory_order_acquire));
    PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v49, memory_order_acquire));
    if (Width != *(a1 + 616) || Height != 3 * *(a1 + 608) || (v18 = PixelFormatType, PixelFormatType != 1278226534) && PixelFormatType != 1278226536)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v23 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v23, OS_LOG_TYPE_ERROR, "Invalid input pixel buffer", buf, 2u);
      }

      goto LABEL_54;
    }

    explicit = atomic_load_explicit(&v49, memory_order_acquire);
    if (explicit)
    {
      explicit = CFRetain(explicit);
    }

    v46 = explicit;
    v47 = a3;
    v48 = sub_2614E1C0C(&v46, 0, a3);
    if ((v48 & 1) == 0)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v26 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a3 + 24);
        *buf = 67240192;
        *&buf[4] = v33;
        _os_log_error_impl(&dword_26146F000, v26, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", buf, 8u);
      }

      goto LABEL_70;
    }

    dest.data = CVPixelBufferGetBaseAddress(atomic_load_explicit(&v49, memory_order_acquire));
    dest.height = Height / 3;
    dest.width = Width;
    dest.rowBytes = CVPixelBufferGetBytesPerRow(atomic_load_explicit(&v49, memory_order_acquire));
    v20 = dest.rowBytes * (Height / 3);
    v44.data = dest.data + v20;
    v44.height = Height / 3;
    v44.width = Width;
    v44.rowBytes = dest.rowBytes;
    v43.data = dest.data + 2 * v20;
    v43.height = Height / 3;
    v43.width = Width;
    v43.rowBytes = dest.rowBytes;
    v21 = MEMORY[0x266705020](&blue);
    if (v21)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v22 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v21;
        _os_log_error_impl(&dword_26146F000, v22, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
      }

      *buf = -2003;
      green.data = @"vImageBuffer_Init failed.";
      sub_261476754(a3, buf, &green.data);
      *(a3 + 32) = v21;
      *(a3 + 40) = 1;
LABEL_70:
      v38 = 0;
LABEL_71:
      if (v48 == 1)
      {
        v48 = sub_2614E1DC8(&v46, 0, v47) ^ 1;
      }

      sub_2614776F0(&v46);
      goto LABEL_56;
    }

    v27 = v18;
    v28 = v9;
    data = blue.data;
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v29 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      *&buf[4] = "blueU8";
      v57 = 2050;
      v58 = data;
      v59 = 2050;
      v60 = blue.height;
      v61 = 2050;
      v62 = blue.width;
      v63 = 2050;
      rowBytes = blue.rowBytes;
      _os_log_debug_impl(&dword_26146F000, v29, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }

    v30 = MEMORY[0x266705020](&green, v44.height, v44.width, 8, 0);
    if (v30)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v30;
        _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
      }

      *buf = -2003;
      red.data = @"vImageBuffer_Init failed.";
      sub_261476754(a3, buf, &red.data);
      *(a3 + 32) = v30;
      *(a3 + 40) = 1;
      v38 = 0;
LABEL_112:
      if (data)
      {
        free(data);
      }

      goto LABEL_71;
    }

    v31 = green.data;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      *&buf[4] = "greenU8";
      v57 = 2050;
      v58 = v31;
      v59 = 2050;
      v60 = green.height;
      v61 = 2050;
      v62 = green.width;
      v63 = 2050;
      rowBytes = green.rowBytes;
      _os_log_debug_impl(&dword_26146F000, v29, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }

    v32 = MEMORY[0x266705020](&red, v43.height, v43.width, 8, 0);
    if (v32)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v32;
        _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
      }

      *buf = -2003;
      v39 = @"vImageBuffer_Init failed.";
      sub_261476754(a3, buf, &v39);
      *(a3 + 32) = v32;
      *(a3 + 40) = 1;
      v38 = 0;
LABEL_110:
      if (v31)
      {
        free(v31);
      }

      goto LABEL_112;
    }

    v36 = red.data;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      *&buf[4] = "redU8";
      v57 = 2050;
      v58 = v36;
      v59 = 2050;
      v60 = red.height;
      v61 = 2050;
      v62 = red.width;
      v63 = 2050;
      rowBytes = red.rowBytes;
      _os_log_debug_impl(&dword_26146F000, v29, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }

    v34 = vImageConvert_BGRX8888ToPlanar8(v28, &blue, &green, &red, 0);
    if (v34)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v34;
        _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "vImageConvert_BGRX8888ToPlanar8 failed: %{public}zd", buf, 0xCu);
      }

      *buf = -2005;
      v39 = @"vImageConvert_BGRX8888ToPlanar8 failed.";
      sub_261476754(a3, buf, &v39);
LABEL_107:
      v35 = 0;
      *(a3 + 32) = v34;
      *(a3 + 40) = 1;
      goto LABEL_108;
    }

    if (v27 == 1278226536)
    {
      v34 = vImageConvert_Planar8toPlanar16F(&blue, &dest, 0);
      if (v34 || (v34 = vImageConvert_Planar8toPlanar16F(&green, &v44, 0)) != 0 || (v34 = vImageConvert_Planar8toPlanar16F(&red, &v43, 0)) != 0)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v34;
          _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "vImageConvert_Planar8toPlanar16F failed: %{public}zd", buf, 0xCu);
        }

        *buf = -2005;
        v39 = @"vImageConvert_Planar8toPlanar16F failed.";
        sub_261476754(a3, buf, &v39);
        goto LABEL_107;
      }

      sub_2614FF0FC(&dest);
      sub_2614FF0FC(&v44);
      sub_2614FF0FC(&v43);
    }

    else
    {
      v34 = vImageConvert_Planar8toPlanarF(&blue, &dest, 255.0, 0.0, 0);
      if (v34 || (v34 = vImageConvert_Planar8toPlanarF(&green, &v44, 255.0, 0.0, 0)) != 0 || (v34 = vImageConvert_Planar8toPlanarF(&red, &v43, 255.0, 0.0, 0)) != 0)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v34;
          _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "vImageConvert_Planar8toPlanarF failed: %{public}zd", buf, 0xCu);
        }

        *buf = -2005;
        v39 = @"vImageConvert_Planar8toPlanarF failed.";
        sub_261476754(a3, buf, &v39);
        goto LABEL_107;
      }
    }

    v35 = atomic_exchange(&v49, 0);
LABEL_108:
    v38 = v35;
    if (v36)
    {
      free(v36);
    }

    goto LABEL_110;
  }

  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  v11 = qword_280CB3EF8;
  if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "ANMDImagePreprocessor_Accelerate is not ready.", buf, 2u);
  }

  *buf = -6008;
  v68 = @"ANMDImagePreprocessor_Accelerate is not ready.";
  sub_261476754(a3, buf, &v68);
  return 0;
}

void sub_2614B0B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, atomic_ullong a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t *a52)
{
  if (a10)
  {
    free(a10);
  }

  if (v52)
  {
    free(v52);
  }

  if (a11)
  {
    free(a11);
  }

  sub_2614FF258(&a38);
  sub_2614776F0(&a41);
  sub_261489DCC((v53 - 144));
  sub_261489DCC(&a52);
  _Unwind_Resume(a1);
}

uint64_t sub_2614B0CC8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd32ANMDImagePreprocessor_Accelerate3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B0D04(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_Accelerate::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B0E3C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd32ANMDImagePreprocessor_Accelerate3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B0E78(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_Accelerate::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B0FA4(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 192) == 1 && *(a1 + 336) == 1 && *(a1 + 384) == 1 && *(a1 + 424) == 1 && *(a1 + 464) == 1 && atomic_load_explicit((a1 + 672), memory_order_acquire))
  {
    return 1;
  }

  v14[0] = &unk_2873D5CF0;
  v15 = v14;
  v16 = a3;
  v13[0] = &unk_2873D5D70;
  v13[3] = v13;
  sub_261489C64(v17, v13);
  if (*(v16 + 8) == 1 && v15 != 0)
  {
    sub_261489CFC(v15, *v16);
  }

  sub_261489D4C(v13);
  sub_261489D4C(v14);
  if ((sub_2614AEF24(a1, a2, a3) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (atomic_load_explicit((a1 + 672), memory_order_acquire))
  {
    goto LABEL_18;
  }

  sub_2614FEF74(&v12, a1 + 552, a2);
  v8 = (a1 + 672);
  v9 = atomic_exchange(v8, atomic_exchange(&v12, 0));
  if (v9)
  {
    CFRelease(v9);
  }

  sub_26149F9E0(&v12);
  if (atomic_load_explicit(v8, memory_order_acquire))
  {
LABEL_18:
    v6 = 1;
  }

  else
  {
LABEL_19:
    v6 = 0;
  }

  if (*(v16 + 8) == 1 && v18 != 0)
  {
    sub_261489CFC(v18, *v16);
  }

  sub_261489D4C(v17);
  return v6;
}

void sub_2614B116C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_26149F9E0(va);
  sub_261489DCC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2614B11D8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd32ANMDImagePreprocessor_Accelerate7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B1214(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_Accelerate::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B134C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd32ANMDImagePreprocessor_Accelerate7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B1388(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_Accelerate::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

void sub_2614B150C(uint64_t a1)
{
  sub_2614776F0((a1 + 680));
  sub_26149F9E0((a1 + 672));
  sub_2614AFDC4(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614B1564(uint64_t a1)
{
  sub_2614776F0((a1 + 680));
  sub_26149F9E0((a1 + 672));

  return sub_2614AFDC4(a1);
}

BOOL sub_2614B15B8(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v103 = *MEMORY[0x277D85DE8];
  if (*(a1 + 200) && *(a1 + 208) && atomic_load_explicit((a1 + 216), memory_order_acquire) && atomic_load_explicit((a1 + 224), memory_order_acquire) && atomic_load_explicit((a1 + 232), memory_order_acquire))
  {
    v89[0] = &unk_2873D5FF0;
    v90 = v89;
    v91 = a4;
    v88[0] = &unk_2873D6070;
    v88[3] = v88;
    sub_261489C64(v92, v88);
    if (*(v91 + 8) == 1 && v90 != 0)
    {
      sub_261489CFC(v90, *v91);
    }

    sub_261489D4C(v88);
    sub_261489D4C(v89);
    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
      if ((PixelFormatType | 0x10) == 0x34323076)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
        v12 = HeightOfPlane;
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        v15 = v13 / v14;
        v70 = WidthOfPlane;
        if (vabdd_f64(1.0, v13 / v14) >= 2.22044605e-16)
        {
          v22 = WidthOfPlane / HeightOfPlane;
          v23 = 1.0 / v22;
          v24 = ceil(v22 * v14);
          if (v22 < v15)
          {
            v25 = v24;
          }

          else
          {
            v25 = *(a1 + 8);
          }

          v26 = ceil(v13 / v22);
          if (v22 > v15)
          {
            v27 = *(a1 + 8);
          }

          else
          {
            v26 = *(a1 + 16);
            v27 = v25;
          }

          if (v23 <= v15)
          {
            if (v23 < v15)
            {
              v13 = ceil(v23 * v14);
            }
          }

          else
          {
            v14 = ceil(v13 / v23);
          }

          v16 = v26 * v27 < v14 * v13;
        }

        else
        {
          v16 = 0;
        }

        *(a1 + 28) = v16;
        v72 = 0;
        v73 = 0;
        sub_2614E33C0(&buf, (a1 + 216), a3);
        v28 = atomic_exchange(&v73, atomic_exchange(&buf, 0));
        if (v28)
        {
          CFRelease(v28);
        }

        sub_2614776F0(&buf);
        if (!atomic_load_explicit(&v73, memory_order_acquire))
        {
          goto LABEL_55;
        }

        if (qword_280CB3F00 != -1)
        {
          dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
        }

        oslog = qword_280CB3EF8;
        if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
        {
          v32 = atomic_load_explicit(&v73, memory_order_acquire);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v32;
          _os_log_debug_impl(&dword_26146F000, oslog, OS_LOG_TYPE_DEBUG, "Allocated interleaved pixel buffer: %{public}@", &buf, 0xCu);
          if (v16)
          {
LABEL_50:
            sub_2614E33C0(&buf, (a1 + 224), a3);
            v29 = atomic_exchange(&v72, atomic_exchange(&buf, 0));
            if (v29)
            {
              CFRelease(v29);
            }

            sub_2614776F0(&buf);
            if (atomic_load_explicit(&v72, memory_order_acquire))
            {
              v30 = &v72;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
              {
                v31 = atomic_load_explicit(&v72, memory_order_acquire);
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v31;
                _os_log_debug_impl(&dword_26146F000, oslog, OS_LOG_TYPE_DEBUG, "Allocated interleaved90CW pixel buffer: %{public}@", &buf, 0xCu);
              }

LABEL_58:
              Width = CVPixelBufferGetWidth(atomic_load_explicit(v30, memory_order_acquire));
              Height = CVPixelBufferGetHeight(atomic_load_explicit(v30, memory_order_acquire));
              v35 = v70 / v12;
              v36 = Width;
              v37 = Height;
              v38 = Width / Height;
              if (v35 <= v38)
              {
                if (v35 < v38)
                {
                  v40 = v35 * v37;
                  Width = vcvtpd_u64_f64(v40);
                  v36 = ceil(v40);
                }
              }

              else
              {
                v39 = v36 / v35;
                Height = vcvtpd_u64_f64(v39);
                v37 = ceil(v39);
              }

              v41 = *(a1 + 200);
              buf = 0uLL;
              v100 = v70;
              v101 = v12;
              LOBYTE(v102) = 1;
              v83 = 0;
              v84 = 0;
              v85 = v36;
              v86 = *&v37;
              v87 = 1;
              LOBYTE(v96) = 0;
              v97 = 0;
              if ((sub_2614D04E0(v41, a2, v30, &buf, &v83, a3, &v96) & 1) == 0)
              {
                goto LABEL_65;
              }

              if (v16)
              {
                v42 = *(a1 + 208);
                buf = 0uLL;
                v100 = v36;
                v101 = v37;
                LOBYTE(v102) = 1;
                v83 = 0;
                v84 = 0;
                v85 = v37;
                v86 = *&v36;
                v87 = 1;
                LOBYTE(v96) = 0;
                v97 = 0;
                v43 = sub_2614D11C8(v42, &v72, &v73, &buf, &v83, a3, &v96);
                v44 = Width;
                if ((v43 & 1) == 0)
                {
LABEL_65:
                  v18 = 0;
                  goto LABEL_105;
                }
              }

              else
              {
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(buf) = 0;
                  _os_log_debug_impl(&dword_26146F000, oslog, OS_LOG_TYPE_DEBUG, "ANMDImagePreprocessor: rotation is not needed", &buf, 2u);
                }

                v44 = Height;
                Height = Width;
              }

              *(a1 + 32) = Height;
              *(a1 + 40) = v44;
              *(a1 + 48) = Height >> 1;
              *(a1 + 56) = v44 >> 1;
              v83 = &unk_2873D68F8;
              v86 = &v83;
              v96 = &unk_2873D6978;
              v98 = &v96;
              *&buf = a4;
              sub_261489C64(&buf + 8, &v96);
              if (*(buf + 8) == 1 && v86)
              {
                sub_261489CFC(v86, *buf);
              }

              sub_261489D4C(&v96);
              sub_261489D4C(&v83);
              if (!atomic_load_explicit(&v73, memory_order_acquire) || CVPixelBufferIsPlanar(atomic_load_explicit(&v73, memory_order_acquire)))
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v45 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v79.data) = 0;
                  _os_log_error_impl(&dword_26146F000, v45, OS_LOG_TYPE_ERROR, "Invalid interleaved pixel buffer", &v79, 2u);
                }

                v79.data = -2006;
                v95.data = @"Invalid interleaved pixel buffer.";
                sub_261476754(a3, &v79, &v95.data);
LABEL_98:
                v71 = 0;
LABEL_99:
                if (*(buf + 8) == 1 && v102)
                {
                  sub_261489CFC(v102, *buf);
                }

                sub_261489D4C(&buf + 8);
                v53 = (a1 + 240);
                v54 = atomic_exchange(v53, atomic_exchange(&v71, 0));
                if (v54)
                {
                  CFRelease(v54);
                }

                sub_2614776F0(&v71);
                v18 = atomic_load_explicit(v53, memory_order_acquire) != 0;
                goto LABEL_105;
              }

              v46 = CVPixelBufferGetWidth(atomic_load_explicit(&v73, memory_order_acquire));
              v47 = CVPixelBufferGetHeight(atomic_load_explicit(&v73, memory_order_acquire));
              v48 = CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v73, memory_order_acquire));
              if (v46 != *(a1 + 128) || v47 != *(a1 + 120) || (v49 = v48, v48 != 1380410945) && v48 != 1380411457)
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v52 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v79.data) = 0;
                  _os_log_error_impl(&dword_26146F000, v52, OS_LOG_TYPE_ERROR, "Invalid interleaved pixel buffer", &v79, 2u);
                }

                v79.data = -2001;
                v95.data = @"Invalid interleaved pixel buffer.";
                sub_261476754(a3, &v79, &v95.data);
                goto LABEL_98;
              }

              v50 = atomic_load_explicit(&v73, memory_order_acquire);
              if (v50)
              {
                v50 = CFRetain(v50);
              }

              v80 = v50;
              v81 = a3;
              v82 = sub_2614E1C0C(&v80, 1, a3);
              if ((v82 & 1) == 0)
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v55 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v79.data) = 0;
                  _os_log_error_impl(&dword_26146F000, v55, OS_LOG_TYPE_ERROR, "Failed to lock interleaved pixel buffer for reading", &v79, 2u);
                }

                v71 = 0;
                goto LABEL_133;
              }

              memset(&v79, 0, sizeof(v79));
              v79.data = CVPixelBufferGetBaseAddress(atomic_load_explicit(&v73, memory_order_acquire));
              v79.height = v47;
              v79.width = v46;
              v79.rowBytes = CVPixelBufferGetBytesPerRow(atomic_load_explicit(&v73, memory_order_acquire));
              sub_2614E33C0(&v78, (a1 + 232), a3);
              if (!atomic_load_explicit(&v78, memory_order_acquire))
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v56 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v95.data) = 0;
                  _os_log_error_impl(&dword_26146F000, v56, OS_LOG_TYPE_ERROR, "Failed to create input pixel buffer from pixel buffer pool", &v95, 2u);
                }

                goto LABEL_131;
              }

              if (CVPixelBufferIsPlanar(atomic_load_explicit(&v78, memory_order_acquire)))
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v51 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v95.data) = 0;
                  _os_log_error_impl(&dword_26146F000, v51, OS_LOG_TYPE_ERROR, "Invalid input pixel buffer", &v95, 2u);
                }

LABEL_130:
                v95.data = -2001;
                green.data = @"Invalid input pixel buffer.";
                sub_261476754(a3, &v95, &green.data);
LABEL_131:
                v71 = 0;
LABEL_132:
                sub_2614776F0(&v78);
LABEL_133:
                if (v82 == 1)
                {
                  v82 = sub_2614E1DC8(&v80, 1, v81) ^ 1;
                }

                sub_2614776F0(&v80);
                goto LABEL_99;
              }

              v57 = CVPixelBufferGetWidth(atomic_load_explicit(&v78, memory_order_acquire));
              v58 = CVPixelBufferGetHeight(atomic_load_explicit(&v78, memory_order_acquire));
              v59 = CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v78, memory_order_acquire));
              if (v57 != *(a1 + 128) || v58 != 3 * *(a1 + 120) || v59 != 1278226534 && v59 != 1278226536)
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v63 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v95.data) = 0;
                  _os_log_error_impl(&dword_26146F000, v63, OS_LOG_TYPE_ERROR, "Invalid input pixel buffer", &v95, 2u);
                }

                goto LABEL_130;
              }

              sub_2614FF5D0(v77, &v78, a3);
              if ((v77[16] & 1) == 0)
              {
                if (qword_280CB3EE0 != -1)
                {
                  dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                }

                v64 = qword_280CB3ED8;
                if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                {
                  v68 = *(a3 + 24);
                  LODWORD(v95.data) = 67240192;
                  HIDWORD(v95.data) = v68;
                  _os_log_error_impl(&dword_26146F000, v64, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", &v95, 8u);
                }

                v71 = 0;
                goto LABEL_150;
              }

              BaseAddress = CVPixelBufferGetBaseAddress(atomic_load_explicit(&v78, memory_order_acquire));
              BytesPerRow = CVPixelBufferGetBytesPerRow(atomic_load_explicit(&v78, memory_order_acquire));
              v95.data = BaseAddress;
              v95.height = v58 / 3;
              v95.width = v57;
              v95.rowBytes = BytesPerRow;
              v62 = BytesPerRow * (v58 / 3);
              green.data = &BaseAddress[v62];
              green.height = v58 / 3;
              green.width = v57;
              green.rowBytes = BytesPerRow;
              blue.data = &BaseAddress[2 * v62];
              blue.height = v58 / 3;
              blue.width = v57;
              blue.rowBytes = BytesPerRow;
              if (v49 == 1380411457)
              {
                sub_2614FF630(&v79, &blue, &green, &v95);
              }

              else
              {
                v65 = vImageConvert_BGRXFFFFToPlanarF(&v79, &blue, &green, &v95, 0);
                if (v65)
                {
                  if (qword_280CB3EE0 != -1)
                  {
                    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                  }

                  v66 = qword_280CB3ED8;
                  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                  {
                    *v94 = 134349056;
                    *&v94[4] = v65;
                    _os_log_error_impl(&dword_26146F000, v66, OS_LOG_TYPE_ERROR, "vImageConvert_RGBXFFFFToPlanarF failed: %{public}zd", v94, 0xCu);
                  }

                  *v94 = -2005;
                  v74 = @"vImageConvert_RGBXFFFFToPlanarF failed.";
                  sub_261476754(a3, v94, &v74);
                  v67 = 0;
                  *(a3 + 32) = v65;
                  *(a3 + 40) = 1;
                  goto LABEL_149;
                }

                sub_2614FFA24(&v95);
                sub_2614FFA24(&green);
                sub_2614FFA24(&blue);
              }

              v67 = atomic_exchange(&v78, 0);
LABEL_149:
              v71 = v67;
LABEL_150:
              sub_2614FF258(v77);
              goto LABEL_132;
            }

LABEL_55:
            v18 = 0;
LABEL_105:
            sub_2614776F0(&v72);
            sub_2614776F0(&v73);
LABEL_106:
            if (*(v91 + 8) == 1 && v93)
            {
              sub_261489CFC(v93, *v91);
            }

            sub_261489D4C(v92);
            return v18;
          }
        }

        else if (v16)
        {
          goto LABEL_50;
        }

        v30 = &v73;
        goto LABEL_58;
      }

      if (qword_280CB3F00 != -1)
      {
        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
      }

      v21 = qword_280CB3EF8;
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67240192;
        DWORD1(buf) = PixelFormatType;
        _os_log_error_impl(&dword_26146F000, v21, OS_LOG_TYPE_ERROR, "Unsupported pixel format: %{public}#x", &buf, 8u);
      }

      *&buf = -2001;
      v83 = @"Unsupported pixel format.";
      sub_261476754(a3, &buf, &v83);
    }

    else
    {
      if (qword_280CB3F00 != -1)
      {
        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
      }

      v20 = qword_280CB3EF8;
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_26146F000, v20, OS_LOG_TYPE_ERROR, "Missing pixel buffer.", &buf, 2u);
      }

      *&buf = -6008;
      v83 = @"Missing pixel buffer.";
      sub_261476754(a3, &buf, &v83);
    }

    v18 = 0;
    goto LABEL_106;
  }

  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  v17 = qword_280CB3EF8;
  if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_26146F000, v17, OS_LOG_TYPE_ERROR, "ANMDImagePreprocessor_VideoToolbox is not ready.", &buf, 2u);
  }

  *&buf = -6008;
  v91 = @"ANMDImagePreprocessor_VideoToolbox is not ready.";
  sub_261476754(a3, &buf, &v91);
  return 0;
}

void sub_2614B246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong a12, atomic_ullong a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, atomic_ullong a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48)
{
  sub_2614FF258(&a23);
  sub_2614776F0(&a26);
  sub_2614FFAEC(&a32);
  sub_261489DCC((v48 - 160));
  sub_2614776F0(&a12);
  sub_2614776F0(&a13);
  sub_261489DCC(&a48);
  _Unwind_Resume(a1);
}

uint64_t sub_2614B262C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd34ANMDImagePreprocessor_VideoToolbox3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B2668(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_VideoToolbox::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B27A0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd34ANMDImagePreprocessor_VideoToolbox3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B27DC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_VideoToolbox::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B2908(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 200);
  if (*(a1 + 200) && *(a1 + 208) && atomic_load_explicit((a1 + 216), memory_order_acquire) && atomic_load_explicit((a1 + 224), memory_order_acquire) && atomic_load_explicit((a1 + 232), memory_order_acquire))
  {
    return 1;
  }

  v80[0] = &unk_2873D5EF0;
  v81 = v80;
  v82 = a3;
  v79[0] = &unk_2873D5F70;
  v79[3] = v79;
  sub_261489C64(v83, v79);
  if (*(v82 + 8) == 1 && v81 != 0)
  {
    sub_261489CFC(v81, *v82);
  }

  sub_261489D4C(v79);
  sub_261489D4C(v80);
  if (!*v5)
  {
    if (*(a1 + 192) == 1)
    {
      v8 = *(a1 + 184);
      HIDWORD(v10) = v8 - 9;
      LODWORD(v10) = v8 - 9;
      v9 = v10 >> 2;
      if (v9 <= 6 && ((0x22u >> v9) & 1) == 0 && ((1 << v9) & 0x5D) == 0)
      {
        qos_class_self();
      }
    }

    v11 = *MEMORY[0x277CBECE8];
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = HIBYTE(v14);
    if (HIBYTE(v14) - 32 >= 0x5Fu)
    {
      v15 = 46;
    }

    v16 = vdup_n_s32(v14);
    if (*(a1 + 24) - 32 >= 0x5F)
    {
      v17 = 46;
    }

    else
    {
      v17 = *(a1 + 24);
    }

    v18 = vshl_u32(v16, 0xFFFFFFF0FFFFFFF8);
    v19 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v18, 0xE0000000E0), 0xFF000000FFLL)), v18, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
    buf[4] = 0;
    *buf = v19.i32[0] | (v17 << 24) | v15 | v19.i32[1];
    v61 = CFStringCreateWithFormat(v11, 0, @"ANMDImagePreprocessor[Transfer, %zu, %zu, %.4s]", v12, v13, buf);
    *&pixelTransferSessionOut = 0;
    v20 = VTPixelTransferSessionCreate(v11, &pixelTransferSessionOut);
    if (!v20)
    {
      operator new();
    }

    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v21 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_26146F000, v21, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionCreate failed: %{public}d", buf, 8u);
    }

    v62 = @"VTPixelTransferSessionCreate failed.";
    *buf = -2003;
    sub_261476754(a2, buf, &v62);
    sub_2615013A8(a2, v20);
    sub_2614B3864(v5, 0);
    v22 = *v5;
    sub_26148E848(&v61);
    if (!v22)
    {
      goto LABEL_77;
    }
  }

  if (!*(a1 + 208))
  {
    v23 = *MEMORY[0x277CBECE8];
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    v27 = HIBYTE(v26);
    if (HIBYTE(v26) - 32 >= 0x5Fu)
    {
      v27 = 46;
    }

    v28 = vdup_n_s32(v26);
    if (*(a1 + 24) - 32 >= 0x5F)
    {
      v29 = 46;
    }

    else
    {
      v29 = *(a1 + 24);
    }

    v30 = vshl_u32(v28, 0xFFFFFFF0FFFFFFF8);
    v31 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v30, 0xE0000000E0), 0xFF000000FFLL)), v30, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
    buf[4] = 0;
    *buf = v31.i32[0] | (v29 << 24) | v27 | v31.i32[1];
    v61 = CFStringCreateWithFormat(v23, 0, @"ANMDImagePreprocessor[Rotation, %zu, %zu, %.4s]", v24, v25, buf);
    *&pixelTransferSessionOut = 0;
    v32 = VTPixelRotationSessionCreate(v23, &pixelTransferSessionOut);
    if (!v32)
    {
      operator new();
    }

    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v33 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_26146F000, v33, OS_LOG_TYPE_ERROR, "VTPixelRotationSessionCreate failed: %{public}d", buf, 8u);
    }

    v62 = @"VTPixelRotationSessionCreate failed.";
    *buf = -2003;
    sub_261476754(a2, buf, &v62);
    sub_2615013A8(a2, v32);
    sub_2614B38B0((a1 + 208), 0);
    v34 = *(a1 + 208);
    sub_26148E848(&v61);
    if (!v34)
    {
      goto LABEL_77;
    }
  }

  if (!atomic_load_explicit((a1 + 216), memory_order_acquire) || !atomic_load_explicit((a1 + 224), memory_order_acquire))
  {
    LOBYTE(pixelTransferSessionOut) = 0;
    BYTE8(pixelTransferSessionOut) = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v56 = 1;
    v55 = 1024;
    v57 = 257;
    *buf = CFRetain(@"MRC: ANMD Preprocessor Interleaved");
    v35 = atomic_exchange(&v60, atomic_exchange(buf, 0));
    if (v35)
    {
      CFRelease(v35);
    }

    sub_26148E848(buf);
    v75[0] = 0;
    v77 = 0;
    v78 = 0;
    v73 = 0;
    v74 = 0;
    v36 = *(a1 + 16);
    *buf = *(a1 + 8);
    v64 = 1;
    v65 = v36;
    LOBYTE(v66) = 1;
    v67 = *(a1 + 24);
    v68 = 1;
    v70 = 1;
    v69 = 64;
    v72 = 1;
    v71 = 64;
    sub_2614A2328(v75, &pixelTransferSessionOut);
    if (!atomic_load_explicit((a1 + 216), memory_order_acquire))
    {
      sub_2614E3314(&v62, buf, a2);
      v37 = atomic_exchange((a1 + 216), atomic_exchange(&v62, 0));
      if (v37)
      {
        CFRelease(v37);
      }

      sub_26149F9E0(&v62);
      if (!atomic_load_explicit((a1 + 216), memory_order_acquire))
      {
        goto LABEL_74;
      }
    }

    if (!atomic_load_explicit((a1 + 224), memory_order_acquire))
    {
      if (v64 == v66)
      {
        if (v64)
        {
          v38 = *buf;
          *buf = v65;
          v65 = v38;
        }
      }

      else if (v64)
      {
        v65 = *buf;
        LOBYTE(v66) = 1;
        v64 = 0;
      }

      else
      {
        *buf = v65;
        v64 = 1;
        if (v66)
        {
          LOBYTE(v66) = 0;
        }
      }

      v62 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ 90CW", atomic_load_explicit(&v76, memory_order_acquire));
      v39 = atomic_exchange(&v76, atomic_exchange(&v62, 0));
      if (v39)
      {
        CFRelease(v39);
      }

      sub_26148E848(&v62);
      sub_2614E3314(&v62, buf, a2);
      v40 = atomic_exchange((a1 + 224), atomic_exchange(&v62, 0));
      if (v40)
      {
        CFRelease(v40);
      }

      sub_26149F9E0(&v62);
      if (!atomic_load_explicit((a1 + 224), memory_order_acquire))
      {
LABEL_74:
        if (v77 == 1)
        {
          sub_26148E848(&v76);
        }

        sub_26148E848(&v60);
        goto LABEL_77;
      }
    }

    if (v77 == 1)
    {
      sub_26148E848(&v76);
    }

    sub_26148E848(&v60);
  }

  if (atomic_load_explicit((a1 + 232), memory_order_acquire))
  {
    goto LABEL_73;
  }

  sub_2614FEF74(buf, a1 + 64, a2);
  v41 = (a1 + 232);
  v42 = atomic_exchange(v41, atomic_exchange(buf, 0));
  if (v42)
  {
    CFRelease(v42);
  }

  sub_26149F9E0(buf);
  if (atomic_load_explicit(v41, memory_order_acquire))
  {
LABEL_73:
    v6 = 1;
    goto LABEL_78;
  }

LABEL_77:
  v6 = 0;
LABEL_78:
  if (*(v82 + 8) == 1 && v84)
  {
    sub_261489CFC(v84, *v82);
  }

  sub_261489D4C(v83);
  return v6;
}

void *sub_2614B3864(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2614D0ED8(result);

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void *sub_2614B38B0(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2614D1AF8(result);

    JUMPOUT(0x2667045D0);
  }

  return result;
}

uint64_t sub_2614B3908(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd34ANMDImagePreprocessor_VideoToolbox7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B3944(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDImagePreprocessor_VideoToolbox::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B3A7C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd34ANMDImagePreprocessor_VideoToolbox7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B3AB8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDImagePreprocessor_VideoToolbox::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

void sub_2614B3BE4(uint64_t a1)
{
  sub_2614B3C1C(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614B3C1C(uint64_t a1)
{
  sub_2614776F0((a1 + 240));
  sub_26149F9E0((a1 + 232));
  sub_26149F9E0((a1 + 224));
  sub_26149F9E0((a1 + 216));
  sub_2614B38B0((a1 + 208), 0);
  sub_2614B3864((a1 + 200), 0);
  return a1;
}

uint64_t sub_2614B3C7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, atomic_ullong *a6, uint64_t a7)
{
  v88 = *MEMORY[0x277D85DE8];
  v82[0] = &unk_2873D60F0;
  v83 = v82;
  v84 = a7;
  v81[0] = &unk_2873D6170;
  v81[3] = v81;
  sub_261489C64(v85, v81);
  if (*(v84 + 8) == 1 && v83 != 0)
  {
    sub_261489CFC(v83, *v84);
  }

  sub_261489D4C(v81);
  sub_261489D4C(v82);
  v14 = *a2;
  v15 = *(*a2 + 8);
  v16 = *(v15 + 48) == 4 && *(v15 + 56) == 1;
  if (!v16 || *(v15 + 64) != 4)
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v29 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.a) = 0;
      _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "Unexpected output.", &buf, 2u);
    }

    buf.a = NAN;
    *&t1.a = @"Unexpected output.";
    sub_261476754(a6, &buf, &t1);
    goto LABEL_43;
  }

  v17 = a2[1];
  v18 = *(v17 + 8);
  v19 = *(v18 + 48) == 4 && *(v18 + 56) == 1;
  if (!v19 || *(v18 + 64) != 4 || (v20 = *(v18 + 72), v20 != *(v15 + 72)) || (v21 = *(v18 + 80), v21 != *(v15 + 80)) || (v22 = *(v18 + 16), v22 != *(v15 + 16)) || (v23 = *(v18 + 20), v23 != *(v15 + 20)))
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v30 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.a) = 0;
      _os_log_error_impl(&dword_26146F000, v30, OS_LOG_TYPE_ERROR, "Unexpected output scores.", &buf, 2u);
    }

    buf.a = NAN;
    *&t1.a = @"Unexpected output scores.";
    sub_261476754(a6, &buf, &t1);
    goto LABEL_43;
  }

  v24 = a2[2];
  v25 = *(v24 + 8);
  if (*(v25 + 48) != 4 || *(v25 + 56) != 1 || *(v25 + 64) != 1 || *(v25 + 72) != v20 || *(v25 + 80) != v21 || *(v25 + 16) != v22 || *(v25 + 20) != v23)
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v32 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.a) = 0;
      _os_log_error_impl(&dword_26146F000, v32, OS_LOG_TYPE_ERROR, "Unexpected output angles.", &buf, 2u);
    }

    buf.a = NAN;
    *&t1.a = @"Unexpected output angles.";
    sub_261476754(a6, &buf, &t1);
LABEL_43:
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_44;
  }

  v72 = 0;
  v73 = 0;
  __p = 0;
  if (*(v15 + 16) != 4)
  {
    goto LABEL_53;
  }

  v26 = *(v15 + 20);
  if (v26 == 6)
  {
    v27 = *&a4;
    v28 = sub_2614B4F38(&__p, (v14 + 24), (v17 + 24), (v24 + 24), (v15 + 16), (v18 + 16), (v25 + 16), a6);
    goto LABEL_62;
  }

  if (v26 != 3)
  {
LABEL_53:
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v33 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.a) = 0;
      _os_log_error_impl(&dword_26146F000, v33, OS_LOG_TYPE_ERROR, "Unsupported output tensor data type", &buf, 2u);
    }

    buf.a = NAN;
    *&t1.a = @"Unsupported output tensor data type.";
    sub_261476754(a6, &buf, &t1);
    goto LABEL_58;
  }

  v27 = *&a4;
  v28 = sub_2614B4834(&__p, (v14 + 24), (v17 + 24), (v24 + 24), (v15 + 16), (v18 + 16), (v25 + 16), a6);
LABEL_62:
  if (v28)
  {
    v34 = __p;
    v35 = v72;
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v36 = qword_280CB3EF8;
    if (v34 == v35)
    {
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&dword_26146F000, v36, OS_LOG_TYPE_INFO, "No candidate with scores above pre-NMS-thresholds has been found.", &buf, 2u);
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.a) = 134349056;
        *(&buf.a + 4) = 0x6DB6DB6DB6DB6DB7 * ((v35 - v34) >> 2);
        _os_log_debug_impl(&dword_26146F000, v36, OS_LOG_TYPE_DEBUG, "%{public}zu candidate(s) with scores above pre-NMS-thresholds has/have been found.", &buf, 0xCu);
      }

      sub_2614B5628(&__p);
      sub_2614B5914(__p, v72);
      v37 = MEMORY[0x277CBF2C0];
      v38 = *(MEMORY[0x277CBF2C0] + 16);
      *&v70.a = *MEMORY[0x277CBF2C0];
      *&v70.c = v38;
      *&v70.tx = *(MEMORY[0x277CBF2C0] + 32);
      if (*(a3 + 28) == 1)
      {
        v39 = *(a3 + 32) * 0.5;
        v40 = *(a3 + 40) * 0.5;
        CGAffineTransformMakeTranslation(&v69, -v39, -v40);
        v41 = v37[1];
        *&t1.a = *v37;
        *&t1.c = v41;
        *&t1.tx = v37[2];
        t2 = v69;
        CGAffineTransformConcat(&buf, &t1, &t2);
        v70 = buf;
        CGAffineTransformMakeRotation(&v69, -1.57079633);
        t1 = v70;
        t2 = v69;
        CGAffineTransformConcat(&buf, &t1, &t2);
        v70 = buf;
        CGAffineTransformMakeTranslation(&v69, v40, v39);
        t1 = v70;
        t2 = v69;
        CGAffineTransformConcat(&buf, &t1, &t2);
        v70 = buf;
      }

      Width = CGRectGetWidth(*(*&v27 + 8));
      v43 = Width / CGRectGetHeight(*(*&v27 + 8));
      v44 = *(a3 + 8);
      if (*(a3 + 28))
      {
        v45 = *(a3 + 16);
      }

      else
      {
        v45 = *(a3 + 8);
      }

      if (!*(a3 + 28))
      {
        v44 = *(a3 + 16);
      }

      v67 = v45 / v44;
      v68 = v43;
      *&buf.a = a3;
      *&buf.b = &v68;
      *&buf.c = &v67;
      buf.d = v27;
      v46 = sub_2614B598C(&buf);
      CGAffineTransformMakeScale(&v69, v46, v46);
      t1 = v70;
      t2 = v69;
      CGAffineTransformConcat(&buf, &t1, &t2);
      v70 = buf;
      t1 = buf;
      v47 = a5[1];
      *&t2.a = *a5;
      *&t2.c = v47;
      *&t2.tx = a5[2];
      CGAffineTransformConcat(&buf, &t1, &t2);
      v70 = buf;
      memset(&v69, 0, 24);
      sub_2614B59F8(&v69, 0x6DB6DB6DB6DB6DB7 * ((v72 - __p) >> 2));
      *&t2.a = @"Pseudo1D";
      *&t2.b = @"Pseudo2D";
      *&t2.c = @"PseudoPDF417";
      *&t2.d = @"PseudoExternal";
      v48 = __p;
      v49 = v72;
      if (__p != v72)
      {
        do
        {
          *&t1.a = vcvtq_f64_f32(*v48);
          v50 = *(v48 + 3);
          t1.c = *v48;
          t1.d = v50;
          *&t1.tx = vcvtq_f64_f32(*(v48 + 8));
          v51 = vcvtq_f64_f32(*(v48 + 4));
          v80 = vextq_s8(v51, v51, 8uLL);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v58 = *(v48 + 6);
            v59 = *(v48 + 4);
            v60 = *(v48 + 1);
            v61 = *v48;
            v62 = *(v48 + 3) - v60;
            v63 = (*(v48 + 2) - *v48);
            v64 = *(v48 + 5);
            LODWORD(buf.a) = 67241728;
            HIDWORD(buf.a) = v58;
            LOWORD(buf.b) = 2050;
            *(&buf.b + 2) = v59;
            WORD1(buf.c) = 2050;
            *(&buf.c + 4) = v61;
            WORD2(buf.d) = 2050;
            *(&buf.d + 6) = v60;
            HIWORD(buf.tx) = 2050;
            buf.ty = v63;
            v75 = 2050;
            v76 = v62;
            v77 = 2050;
            v78 = v64;
            _os_log_debug_impl(&dword_26146F000, v36, OS_LOG_TYPE_DEBUG, "class=%{public}u | score=%{public}f | x=%{public}f, y=%{public}f, width=%{public}f, height=%{public}f | angle=%{public}f", &buf, 0x44u);
          }

          v52 = *(v48 + 6);
          if (v52 >= 4)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.a) = 67240192;
              HIDWORD(buf.a) = v52;
              _os_log_error_impl(&dword_26146F000, v36, OS_LOG_TYPE_ERROR, "Invalid coarse class id: %{public}u, skipping...", &buf, 8u);
            }
          }

          else
          {
            v53 = COERCE_DOUBLE(MRCRegionCreate(&t1, &v70, *(&t2.a + v52), *(v48 + 5), *(v48 + 4)));
            v54 = v53;
            if (v53 != 0.0)
            {
              v55 = CFGetTypeID(*&v53);
              if (qword_280CB34F8[0] != -1)
              {
                v66 = v55;
                dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
                v55 = v66;
              }

              if (v55 != qword_280CB35F0)
              {
                _os_assumes_log();
              }
            }

            buf.a = v54;
            b = v69.b;
            if (*&v69.b >= *&v69.c)
            {
              v57 = sub_261476AC4(&v69, &buf);
            }

            else
            {
              **&v69.b = v54;
              v57 = *&b + 8;
            }

            *&v69.b = v57;
          }

          v48 = (v48 + 28);
        }

        while (v48 != v49);
      }

      *a1 = *&v69.a;
      *(a1 + 16) = v69.c;
      memset(&v69, 0, 24);
      *(a1 + 24) = 1;
      *&buf.a = &v69;
      sub_261476A40(&buf);
    }

    goto LABEL_59;
  }

  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  v65 = qword_280CB3EF8;
  if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_26146F000, v65, OS_LOG_TYPE_INFO, "Failed to collect det boxes.", &buf, 2u);
  }

LABEL_58:
  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_59:
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

LABEL_44:
  if (*(v84 + 8) == 1 && v86)
  {
    sub_261489CFC(v86, *v84);
  }

  return sub_261489D4C(v85);
}

void sub_2614B4798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  a33 = &a17;
  sub_261476A40(&a33);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  sub_261489DCC((v52 - 216));
  _Unwind_Resume(a1);
}

uint64_t sub_2614B4834(uint64_t a1, atomic_ullong *a2, atomic_ullong *a3, atomic_ullong *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v111 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v101 = explicit;
  v102 = 0;
  *v103 = buf;
  *&v103[3] = *(&buf + 3);
  v104 = 0;
  *v105 = v94;
  *&v105[3] = *(&v94 + 3);
  v106 = a8;
  v107 = sub_2614E1F84(&v101, &v102, 1, a8);
  v18 = atomic_load_explicit(a3, memory_order_acquire);
  if (v18)
  {
    v18 = CFRetain(v18);
  }

  v94 = v18;
  v95 = 0;
  *v96 = buf;
  *&v96[3] = *(&buf + 3);
  v97 = 0;
  *v98 = v87;
  *&v98[3] = *(&v87 + 3);
  v99 = a8;
  v100 = sub_2614E1F84(&v94, &v95, 1, a8);
  v19 = atomic_load_explicit(a4, memory_order_acquire);
  if (v19)
  {
    v19 = CFRetain(v19);
  }

  v87 = v19;
  v88 = 0;
  *v89 = buf;
  *&v89[3] = *(&buf + 3);
  v90 = 0;
  *v91 = *v108;
  *&v91[3] = *&v108[3];
  v92 = a8;
  v93 = sub_2614E1F84(&v87, &v88, 1, a8);
  v70 = (v107 & v100 & v93);
  if (v70)
  {
    BaseAddress = IOSurfaceGetBaseAddress(atomic_load_explicit(a2, memory_order_acquire));
    v76 = IOSurfaceGetBaseAddress(atomic_load_explicit(a3, memory_order_acquire));
    v20 = IOSurfaceGetBaseAddress(atomic_load_explicit(a4, memory_order_acquire));
    v74 = a6[7];
    if (v74)
    {
      v21 = v20;
      v75 = 0;
      v22 = a5[2];
      v73 = a5[12] / v22;
      v79 = a5[13] / v22;
      v80 = a6[8];
      v23 = a6[6];
      v24 = a6[2];
      v78 = a6[13] / v24;
      v72 = a6[12] / v24;
      v25 = a6[11] / v24;
      v26 = a7[2];
      v77 = a7[13] / v26;
      v27 = a5[11] / v22;
      v85 = &BaseAddress[v27];
      v84 = &BaseAddress[2 * v27];
      v83 = &BaseAddress[3 * v27];
      v71 = a7[12] / v26;
      do
      {
        if (v80)
        {
          v28 = 0;
          v29 = v75 * v71;
          v81 = v75 * v72;
          v30 = v75 * v73;
          do
          {
            if (v23)
            {
              for (i = 0; i != v23; ++i)
              {
                _H0 = v76[v81 + i * v25];
                if (_H0 > COERCE_SHORT_FLOAT(11878))
                {
                  LOWORD(_S9) = v21[v29];
                  if (((_S9 >> 10) & 0x1F) == 0x1F)
                  {
                    if (qword_280CB3F00 != -1)
                    {
                      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                    }

                    v33 = qword_280CB3EF8;
                    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_INFO))
                    {
                      __asm { FCVT            D0, H9 }

                      LODWORD(buf) = 134349056;
                      *(&buf + 4) = _D0;
                      _os_log_impl(&dword_26146F000, v33, OS_LOG_TYPE_INFO, "Predicted orientation is inf or nan: %{public}f", &buf, 0xCu);
                    }
                  }

                  else
                  {
                    __asm { FCVT            S3, H9 }

                    v40 = -_S3;
                    __asm { FCMP            H9, #0 }

                    v42 = 2.0;
                    if (!(!_ZF & _CF))
                    {
                      v42 = -2.0;
                    }

                    for (j = fabsf(_S3); j > 1.0; j = fabsf(v40))
                    {
                      v40 = v42 + v40;
                    }

                    _H2 = BaseAddress[v30];
                    __asm { FCVT            S12, H2 }

                    _H2 = *&v85[2 * v30];
                    _H3 = *&v84[2 * v30];
                    __asm
                    {
                      FCVT            S9, H2
                      FCVT            S13, H3
                    }

                    _H2 = *&v83[2 * v30];
                    __asm
                    {
                      FCVT            S14, H2
                      FCVT            S0, H0
                    }

                    v52 = v40 * 90.0;
                    v53 = *(a1 + 8);
                    v54 = *(a1 + 16);
                    v55 = sqrtf(_S0);
                    if (v53 >= v54)
                    {
                      v57 = 0x6DB6DB6DB6DB6DB7 * ((v53 - *a1) >> 2);
                      v58 = v57 + 1;
                      if ((v57 + 1) > 0x924924924924924)
                      {
                        sub_2614709BC();
                      }

                      v59 = 0x6DB6DB6DB6DB6DB7 * ((v54 - *a1) >> 2);
                      if (2 * v59 > v58)
                      {
                        v58 = 2 * v59;
                      }

                      if (v59 >= 0x492492492492492)
                      {
                        v60 = 0x924924924924924;
                      }

                      else
                      {
                        v60 = v58;
                      }

                      sub_2614B6AE0(&buf, v60, v57, a1);
                      v61 = v110;
                      *v110 = _S12;
                      *(v61 + 4) = _S9;
                      *(v61 + 8) = _S13;
                      *(v61 + 12) = _S14;
                      *(v61 + 16) = v55;
                      *(v61 + 20) = v52;
                      *(v61 + 24) = i;
                      *&v110 = v61 + 28;
                      v62 = *(a1 + 8) - *a1;
                      v63 = *(&buf + 1) - v62;
                      memcpy((*(&buf + 1) - v62), *a1, v62);
                      v64 = *a1;
                      *a1 = v63;
                      v65 = *(a1 + 16);
                      v66 = v110;
                      *(a1 + 8) = v110;
                      *&v110 = v64;
                      *(&v110 + 1) = v65;
                      *&buf = v64;
                      *(&buf + 1) = v64;
                      if (v64)
                      {
                        v82 = v66;
                        operator delete(v64);
                        v66 = v82;
                      }

                      v56 = v66;
                    }

                    else
                    {
                      *v53 = _S12;
                      *(v53 + 4) = _S9;
                      *(v53 + 8) = _S13;
                      *(v53 + 12) = _S14;
                      *(v53 + 16) = v55;
                      *(v53 + 20) = v52;
                      v56 = v53 + 28;
                      *(v53 + 24) = i;
                    }

                    *(a1 + 8) = v56;
                  }
                }
              }
            }

            v30 += v79;
            v81 += v78;
            v29 += v77;
            ++v28;
          }

          while (v28 != v80);
        }

        ++v75;
      }

      while (v75 != v74);
    }
  }

  else
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v67 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      v69 = *(a8 + 56);
      LODWORD(buf) = 67240192;
      DWORD1(buf) = v69;
      _os_log_error_impl(&dword_26146F000, v67, OS_LOG_TYPE_ERROR, "IOSurfaceLock failed: %{public}d", &buf, 8u);
    }
  }

  if (v93 == 1)
  {
    v93 = sub_2614E21F4(&v87, &v88, 1, v92) ^ 1;
  }

  sub_261483CA4(&v87);
  if (v100 == 1)
  {
    v100 = sub_2614E21F4(&v94, &v95, 1, v99) ^ 1;
  }

  sub_261483CA4(&v94);
  if (v107 == 1)
  {
    v107 = sub_2614E21F4(&v101, &v102, 1, v106) ^ 1;
  }

  sub_261483CA4(&v101);
  return v70;
}

void sub_2614B4EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614B4F38(uint64_t a1, atomic_ullong *a2, atomic_ullong *a3, atomic_ullong *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v100 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v90 = explicit;
  v91 = 0;
  *v92 = buf;
  *&v92[3] = *(&buf + 3);
  v93 = 0;
  *v94 = v83;
  *&v94[3] = *(&v83 + 3);
  v95 = a8;
  v96 = sub_2614E1F84(&v90, &v91, 1, a8);
  v17 = atomic_load_explicit(a3, memory_order_acquire);
  if (v17)
  {
    v17 = CFRetain(v17);
  }

  v83 = v17;
  v84 = 0;
  *v85 = buf;
  *&v85[3] = *(&buf + 3);
  v86 = 0;
  *v87 = v76;
  *&v87[3] = *(&v76 + 3);
  v88 = a8;
  v89 = sub_2614E1F84(&v83, &v84, 1, a8);
  v18 = atomic_load_explicit(a4, memory_order_acquire);
  if (v18)
  {
    v18 = CFRetain(v18);
  }

  v76 = v18;
  v77 = 0;
  *v78 = buf;
  *&v78[3] = *(&buf + 3);
  v79 = 0;
  *v80 = *v97;
  *&v80[3] = *&v97[3];
  v81 = a8;
  v82 = sub_2614E1F84(&v76, &v77, 1, a8);
  v59 = (v96 & v89 & v82);
  if (v59)
  {
    BaseAddress = IOSurfaceGetBaseAddress(atomic_load_explicit(a2, memory_order_acquire));
    v65 = IOSurfaceGetBaseAddress(atomic_load_explicit(a3, memory_order_acquire));
    v19 = IOSurfaceGetBaseAddress(atomic_load_explicit(a4, memory_order_acquire));
    v63 = a6[7];
    if (v63)
    {
      v20 = v19;
      v64 = 0;
      v21 = a5[2];
      v62 = a5[12] / v21;
      v68 = a5[13] / v21;
      v69 = a6[8];
      v22 = a6[6];
      v23 = a6[2];
      v67 = a6[13] / v23;
      v61 = a6[12] / v23;
      v24 = a6[11] / v23;
      v25 = a7[2];
      v66 = a7[13] / v25;
      v26 = a5[11] / v21;
      v74 = &BaseAddress[v26];
      v73 = &BaseAddress[2 * v26];
      v72 = &BaseAddress[3 * v26];
      v60 = a7[12] / v25;
      do
      {
        if (v69)
        {
          v27 = 0;
          v28 = v64 * v60;
          v70 = v64 * v61;
          v29 = v64 * v62;
          do
          {
            if (v22)
            {
              for (i = 0; i != v22; ++i)
              {
                v31 = v65[v70 + i * v24];
                if (v31 > 0.1)
                {
                  v32 = v20[v28];
                  if ((LODWORD(v32) & 0x7FFFFFFFu) < 0x7F800000)
                  {
                    v34 = fabsf(v32);
                    v35 = -v32;
                    v36 = 2.0;
                    if (v32 <= 0.0)
                    {
                      v36 = -2.0;
                    }

                    while (v34 > 1.0)
                    {
                      v35 = v36 + v35;
                      v34 = fabsf(v35);
                    }

                    v37 = BaseAddress[v29];
                    v38 = *&v74[4 * v29];
                    v39 = *&v73[4 * v29];
                    v40 = *&v72[4 * v29];
                    v41 = v35 * 90.0;
                    v42 = *(a1 + 8);
                    v43 = *(a1 + 16);
                    v44 = sqrtf(v31);
                    if (v42 >= v43)
                    {
                      v46 = 0x6DB6DB6DB6DB6DB7 * ((v42 - *a1) >> 2);
                      v47 = v46 + 1;
                      if ((v46 + 1) > 0x924924924924924)
                      {
                        sub_2614709BC();
                      }

                      v48 = 0x6DB6DB6DB6DB6DB7 * ((v43 - *a1) >> 2);
                      if (2 * v48 > v47)
                      {
                        v47 = 2 * v48;
                      }

                      if (v48 >= 0x492492492492492)
                      {
                        v49 = 0x924924924924924;
                      }

                      else
                      {
                        v49 = v47;
                      }

                      sub_2614B6AE0(&buf, v49, v46, a1);
                      v50 = v99;
                      *v99 = v37;
                      *(v50 + 4) = v38;
                      *(v50 + 8) = v39;
                      *(v50 + 12) = v40;
                      *(v50 + 16) = v44;
                      *(v50 + 20) = v41;
                      *(v50 + 24) = i;
                      *&v99 = v50 + 28;
                      v51 = *(a1 + 8) - *a1;
                      v52 = *(&buf + 1) - v51;
                      memcpy((*(&buf + 1) - v51), *a1, v51);
                      v53 = *a1;
                      *a1 = v52;
                      v54 = *(a1 + 16);
                      v55 = v99;
                      *(a1 + 8) = v99;
                      *&v99 = v53;
                      *(&v99 + 1) = v54;
                      *&buf = v53;
                      *(&buf + 1) = v53;
                      if (v53)
                      {
                        v71 = v55;
                        operator delete(v53);
                        v55 = v71;
                      }

                      v45 = v55;
                    }

                    else
                    {
                      *v42 = v37;
                      *(v42 + 4) = v38;
                      *(v42 + 8) = v39;
                      *(v42 + 12) = v40;
                      *(v42 + 16) = v44;
                      *(v42 + 20) = v41;
                      v45 = v42 + 28;
                      *(v42 + 24) = i;
                    }

                    *(a1 + 8) = v45;
                  }

                  else
                  {
                    if (qword_280CB3F00 != -1)
                    {
                      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                    }

                    v33 = qword_280CB3EF8;
                    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(buf) = 134349056;
                      *(&buf + 4) = v32;
                      _os_log_impl(&dword_26146F000, v33, OS_LOG_TYPE_INFO, "Predicted orientation is inf or nan: %{public}f", &buf, 0xCu);
                    }
                  }
                }
              }
            }

            v29 += v68;
            v70 += v67;
            v28 += v66;
            ++v27;
          }

          while (v27 != v69);
        }

        ++v64;
      }

      while (v64 != v63);
    }
  }

  else
  {
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v56 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      v58 = *(a8 + 56);
      LODWORD(buf) = 67240192;
      DWORD1(buf) = v58;
      _os_log_error_impl(&dword_26146F000, v56, OS_LOG_TYPE_ERROR, "IOSurfaceLock failed: %{public}d", &buf, 8u);
    }
  }

  if (v82 == 1)
  {
    v82 = sub_2614E21F4(&v76, &v77, 1, v81) ^ 1;
  }

  sub_261483CA4(&v76);
  if (v89 == 1)
  {
    v89 = sub_2614E21F4(&v83, &v84, 1, v88) ^ 1;
  }

  sub_261483CA4(&v83);
  if (v96 == 1)
  {
    v96 = sub_2614E21F4(&v90, &v91, 1, v95) ^ 1;
  }

  sub_261483CA4(&v90);
  return v59;
}

void sub_2614B559C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614B5628(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v4 == v3)
  {
    return;
  }

  sub_2614B5AB4(v4, v3, 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (&v3[-v4] >> 2)), 1, v2);
  v5 = *(a1 + 8) - *a1;
  if (!v5)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 2);
  v9 = -1;
  while (1)
  {
    v10 = v7 + 1;
    if (v7 + 1 >= v8)
    {
      break;
    }

    v11 = v8 + v9;
    v12 = v6;
    v8 = v7 + 1;
    do
    {
      v13 = *a1 + 28 * v7;
      v14 = *a1 + v12;
      v15 = (v14 + 28);
      if (*(v13 + 24) != *(v14 + 52) || (v16 = *(v13 + 4), v17 = *(v14 + 32), v18 = *(v14 + 36), v19 = *(v13 + 8), v20 = *(v13 + 12), v21 = *(v14 + 40), v22 = fmax((fminf(v19, v18) - fmaxf(*v13, *v15)), 0.0), v23 = fmax((fminf(v20, v21) - fmaxf(v16, v17)), 0.0), ((v22 * v23) / ((((v18 - *v15) * (v21 - v17)) + ((v19 - *v13) * (v20 - v16))) - (v22 * v23))) <= 0.5))
      {
        v24 = (*a1 + 28 * v8);
        v25 = *v15;
        ++v8;
        *(v24 + 12) = *(v14 + 40);
        *v24 = v25;
      }

      v12 += 28;
      --v11;
    }

    while (v11);
    --v9;
    v6 += 28;
    ++v7;
    if (v10 >= v8)
    {
      goto LABEL_13;
    }
  }

  v8 = v7 + 1;
LABEL_13:
  v26 = *a1;
  v27 = *(a1 + 8);
  v28 = 0x6DB6DB6DB6DB6DB7 * ((v27 - *a1) >> 2);
  v29 = v8 - v28;
  if (v8 <= v28)
  {
    if (v8 >= v28)
    {
      return;
    }

    v38 = v26 + 28 * v8;
    goto LABEL_26;
  }

  v30 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v30 - v27) >> 2) >= v29)
  {
    bzero(*(a1 + 8), 28 * ((28 * v29 - 28) / 0x1C) + 28);
    v38 = v27 + 28 * ((28 * v29 - 28) / 0x1C) + 28;
LABEL_26:
    *(a1 + 8) = v38;
    return;
  }

  if (v8 > 0x924924924924924)
  {
    sub_2614709BC();
  }

  v31 = 0x6DB6DB6DB6DB6DB7 * ((v30 - v26) >> 2);
  if (2 * v31 > v8)
  {
    v8 = 2 * v31;
  }

  if (v31 >= 0x492492492492492)
  {
    v32 = 0x924924924924924;
  }

  else
  {
    v32 = v8;
  }

  sub_2614B6AE0(&v39, v32, v28, a1);
  v33 = v41[0];
  bzero(v41[0], 28 * ((28 * v29 - 28) / 0x1C) + 28);
  v41[0] = &v33[28 * ((28 * v29 - 28) / 0x1C) + 28];
  v34 = *(a1 + 8) - *a1;
  v35 = &v40[-v34];
  memcpy(&v40[-v34], *a1, v34);
  v36 = *a1;
  *a1 = v35;
  v37 = *(a1 + 16);
  *(a1 + 8) = *v41;
  v41[0] = v36;
  v41[1] = v37;
  v39 = v36;
  v40 = v36;
  if (v36)
  {
    operator delete(v36);
  }
}

__int128 *sub_2614B5914(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    while (*(result + 4) >= flt_261561140[*(result + 6)])
    {
      result = (result + 28);
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = (result + 28); i != a2; i = (i + 28))
      {
        if (*(i + 4) >= flt_261561140[*(i + 6)])
        {
          v3 = *i;
          *(result + 12) = *(i + 12);
          *result = v3;
          result = (result + 28);
        }
      }
    }
  }

  return result;
}

double sub_2614B598C(double **a1)
{
  v1 = a1[3];
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  if (*a1[1] >= *a1[2])
  {
    if (*(*a1 + 28))
    {
      v6 = *(*a1 + 2);
    }

    else
    {
      v6 = *(*a1 + 1);
    }

    Width = CGRectGetWidth(*&v2);
  }

  else
  {
    if (*(*a1 + 28))
    {
      v6 = *(*a1 + 1);
    }

    else
    {
      v6 = *(*a1 + 2);
    }

    Width = CGRectGetHeight(*&v2);
  }

  return Width / v6;
}

void *sub_2614B59F8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_26147B1E8(a2);
    }

    sub_2614709BC();
  }

  return result;
}

void sub_2614B5AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B2D8(va);
  _Unwind_Resume(a1);
}

__n128 sub_2614B5AB4(uint64_t a1, char *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 28);
  v10 = (a2 - 56);
  v11 = (a2 - 84);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = &a2[-v12];
    v14 = 0x6DB6DB6DB6DB6DB7 * (&a2[-v12] >> 2);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u32[0] = *(a2 - 3);
        if (result.n128_f32[0] <= *(v12 + 16))
        {
          return result;
        }

LABEL_111:
        *&v155[12] = *(v12 + 12);
        *v155 = *v12;
        v80 = *v9;
        *(v12 + 12) = *(a2 - 1);
        *v12 = v80;
LABEL_112:
        result = *v155;
        *(a2 - 1) = *&v155[12];
        *v9 = *v155;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v81 = *(v12 + 44);
      v82 = *(v12 + 72);
      if (v81 <= *(v12 + 16))
      {
        if (v82 > v81)
        {
          *v161 = *(v12 + 28);
          *&v161[12] = *(v12 + 40);
          *(v12 + 28) = *(v12 + 56);
          *(v12 + 40) = *(v12 + 68);
          *(v12 + 56) = *v161;
          result = *&v161[12];
          *(v12 + 68) = *&v161[12];
          if (*(v12 + 44) > *(v12 + 16))
          {
            *&v162[12] = *(v12 + 12);
            *v162 = *v12;
            *v12 = *(v12 + 28);
            *(v12 + 12) = *(v12 + 40);
            *(v12 + 28) = *v162;
            result = *&v162[12];
            *(v12 + 40) = *&v162[12];
          }
        }
      }

      else
      {
        if (v82 > v81)
        {
          *&v156[12] = *(v12 + 12);
          *v156 = *v12;
          *v12 = *(v12 + 56);
          *(v12 + 12) = *(v12 + 68);
          goto LABEL_184;
        }

        *&v165[12] = *(v12 + 12);
        *v165 = *v12;
        *v12 = *(v12 + 28);
        *(v12 + 12) = *(v12 + 40);
        *(v12 + 28) = *v165;
        *(v12 + 40) = *&v165[12];
        if (v82 > *(v12 + 44))
        {
          *v156 = *(v12 + 28);
          *&v156[12] = *(v12 + 40);
          *(v12 + 28) = *(v12 + 56);
          *(v12 + 40) = *(v12 + 68);
LABEL_184:
          *(v12 + 56) = *v156;
          result = *&v156[12];
          *(v12 + 68) = *&v156[12];
        }
      }

      result.n128_u32[0] = *(a2 - 3);
      if (result.n128_f32[0] <= *(v12 + 72))
      {
        return result;
      }

      *v166 = *(v12 + 56);
      *&v166[12] = *(v12 + 68);
      v128 = *v9;
      *(v12 + 68) = *(a2 - 1);
      *(v12 + 56) = v128;
      result = *v166;
      *(a2 - 1) = *&v166[12];
      *v9 = *v166;
      result.n128_u32[0] = *(v12 + 72);
      if (result.n128_f32[0] <= *(v12 + 44))
      {
        return result;
      }

      *v167 = *(v12 + 28);
      *&v167[12] = *(v12 + 40);
      *(v12 + 28) = *(v12 + 56);
      *(v12 + 40) = *(v12 + 68);
      *(v12 + 56) = *v167;
      result = *&v167[12];
      *(v12 + 68) = *&v167[12];
LABEL_188:
      result.n128_u32[0] = *(v12 + 44);
      if (result.n128_f32[0] > *(v12 + 16))
      {
        *&v168[12] = *(v12 + 12);
        *v168 = *v12;
        *v12 = *(v12 + 28);
        *(v12 + 12) = *(v12 + 40);
        *(v12 + 28) = *v168;
        result = *&v168[12];
        *(v12 + 40) = *&v168[12];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_2614B6B70(v12, v12 + 28, v12 + 56, v12 + 84, (a2 - 28)).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 671)
    {
      v83 = (v12 + 28);
      v85 = v12 == a2 || v83 == a2;
      if (a4)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v12;
          do
          {
            v88 = v83;
            result.n128_u32[0] = *(v87 + 44);
            if (result.n128_f32[0] > *(v87 + 16))
            {
              v157 = *v83;
              v89 = *(v87 + 48);
              v90 = v86;
              while (1)
              {
                v91 = v12 + v90;
                *(v91 + 28) = *(v12 + v90);
                *(v91 + 40) = *(v12 + v90 + 12);
                if (!v90)
                {
                  break;
                }

                v90 -= 28;
                if (result.n128_f32[0] <= *(v91 - 12))
                {
                  v92 = v12 + v90 + 28;
                  goto LABEL_131;
                }
              }

              v92 = v12;
LABEL_131:
              *v92 = v157;
              *(v92 + 16) = result.n128_u32[0];
              *(v92 + 20) = v89;
            }

            v83 = (v88 + 28);
            v86 += 28;
            v87 = v88;
          }

          while (v88 + 28 != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v124 = v83;
          result.n128_u32[0] = *(a1 + 44);
          if (result.n128_f32[0] > *(a1 + 16))
          {
            v163 = *v83;
            v125 = *(a1 + 48);
            do
            {
              *v83 = *(v83 - 28);
              *(v83 + 12) = *(v83 - 1);
              v126 = *(v83 - 10);
              v83 = (v83 - 28);
            }

            while (result.n128_f32[0] > v126);
            *v83 = v163;
            *(v83 + 4) = result.n128_u32[0];
            *(v83 + 20) = v125;
          }

          v83 = (v124 + 28);
          a1 = v124;
        }

        while ((v124 + 28) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v93 = (v14 - 2) >> 1;
        v94 = v93;
        do
        {
          v95 = v94;
          if (v93 >= v94)
          {
            v96 = (2 * v94) | 1;
            v97 = v12 + 28 * v96;
            if (2 * v95 + 2 < v14 && *(v97 + 16) > *(v97 + 44))
            {
              v97 += 28;
              v96 = 2 * v95 + 2;
            }

            v98 = v12 + 28 * v95;
            v99 = *(v98 + 16);
            if (*(v97 + 16) <= v99)
            {
              v158 = *v98;
              v100 = *(v98 + 20);
              do
              {
                v101 = v98;
                v98 = v97;
                v102 = *v97;
                *(v101 + 12) = *(v97 + 12);
                *v101 = v102;
                if (v93 < v96)
                {
                  break;
                }

                v103 = 2 * v96;
                v96 = (2 * v96) | 1;
                v97 = v12 + 28 * v96;
                v104 = v103 + 2;
                if (v104 < v14 && *(v97 + 16) > *(v97 + 44))
                {
                  v97 += 28;
                  v96 = v104;
                }
              }

              while (*(v97 + 16) <= v99);
              *v98 = v158;
              *(v98 + 16) = v99;
              *(v98 + 20) = v100;
            }
          }

          v94 = v95 - 1;
        }

        while (v95);
        v105 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 2);
        do
        {
          v106 = 0;
          *&v159[12] = *(v12 + 12);
          *v159 = *v12;
          v107 = v12;
          do
          {
            v108 = v107 + 7 * v106;
            v109 = (v108 + 7);
            v110 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 >= v105)
            {
              v106 = v110;
            }

            else
            {
              v111 = v108[11];
              v112 = v108[18];
              v113 = (v108 + 14);
              if (v111 <= v112)
              {
                v106 = v110;
              }

              else
              {
                v109 = v113;
              }
            }

            v114 = *v109;
            *(v107 + 12) = *(v109 + 12);
            *v107 = v114;
            v107 = v109;
          }

          while (v106 <= ((v105 - 2) >> 1));
          a2 -= 28;
          if (v109 == a2)
          {
            result = *v159;
            *(v109 + 12) = *&v159[12];
            *v109 = *v159;
          }

          else
          {
            v115 = *a2;
            *(v109 + 12) = *(a2 + 12);
            *v109 = v115;
            result = *v159;
            *(a2 + 12) = *&v159[12];
            *a2 = *v159;
            v116 = &v109[-v12 + 28];
            if (v116 >= 29)
            {
              v117 = (0x6DB6DB6DB6DB6DB7 * (v116 >> 2) - 2) >> 1;
              v118 = v12 + 28 * v117;
              result.n128_u32[0] = *(v109 + 4);
              if (*(v118 + 16) > result.n128_f32[0])
              {
                v131 = *v109;
                v119 = *(v109 + 20);
                do
                {
                  v120 = v109;
                  v109 = v118;
                  v121 = *v118;
                  *(v120 + 12) = *(v118 + 12);
                  *v120 = v121;
                  if (!v117)
                  {
                    break;
                  }

                  v117 = (v117 - 1) >> 1;
                  v118 = v12 + 28 * v117;
                }

                while (*(v118 + 16) > result.n128_f32[0]);
                *v109 = v131;
                *(v109 + 4) = result.n128_u32[0];
                *(v109 + 20) = v119;
              }
            }
          }
        }

        while (v105-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 28 * (v14 >> 1);
    v17 = *(a2 - 3);
    if (v13 >= 0xE01)
    {
      v18 = *(v16 + 16);
      if (v18 <= *(v12 + 16))
      {
        if (v17 > v18)
        {
          *&v134[12] = *(v16 + 12);
          *v134 = *v16;
          v22 = *v9;
          *(v16 + 12) = *(a2 - 1);
          *v16 = v22;
          *(a2 - 1) = *&v134[12];
          *v9 = *v134;
          if (*(v16 + 16) > *(v12 + 16))
          {
            *&v135[12] = *(v12 + 12);
            *v135 = *v12;
            v23 = *v16;
            *(v12 + 12) = *(v16 + 12);
            *v12 = v23;
            *(v16 + 12) = *&v135[12];
            *v16 = *v135;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          *&v132[12] = *(v12 + 12);
          *v132 = *v12;
          v19 = *v9;
          *(v12 + 12) = *(a2 - 1);
          *v12 = v19;
          goto LABEL_26;
        }

        *&v138[12] = *(v12 + 12);
        *v138 = *v12;
        v26 = *v16;
        *(v12 + 12) = *(v16 + 12);
        *v12 = v26;
        *(v16 + 12) = *&v138[12];
        *v16 = *v138;
        if (*(a2 - 3) > *(v16 + 16))
        {
          *&v132[12] = *(v16 + 12);
          *v132 = *v16;
          v27 = *v9;
          *(v16 + 12) = *(a2 - 1);
          *v16 = v27;
LABEL_26:
          *(a2 - 1) = *&v132[12];
          *v9 = *v132;
        }
      }

      v28 = v12 + 28 * v15;
      v29 = v28 - 28;
      v30 = *(v28 - 12);
      v31 = *(a2 - 10);
      if (v30 <= *(v12 + 44))
      {
        if (v31 > v30)
        {
          *&v140[12] = *(v28 - 16);
          *v140 = *v29;
          v33 = *v10;
          *(v28 - 16) = *(a2 - 44);
          *v29 = v33;
          *(a2 - 44) = *&v140[12];
          *v10 = *v140;
          if (*(v28 - 12) > *(v12 + 44))
          {
            *v141 = *(v12 + 28);
            *&v141[12] = *(v12 + 40);
            v34 = *v29;
            *(v12 + 40) = *(v28 - 16);
            *(v12 + 28) = v34;
            *(v28 - 16) = *&v141[12];
            *v29 = *v141;
          }
        }
      }

      else
      {
        if (v31 > v30)
        {
          *v139 = *(v12 + 28);
          *&v139[12] = *(v12 + 40);
          v32 = *v10;
          *(v12 + 40) = *(a2 - 44);
          *(v12 + 28) = v32;
          goto LABEL_38;
        }

        *v143 = *(v12 + 28);
        *&v143[12] = *(v12 + 40);
        v37 = *v29;
        *(v12 + 40) = *(v28 - 16);
        *(v12 + 28) = v37;
        *(v28 - 16) = *&v143[12];
        *v29 = *v143;
        if (*(a2 - 10) > *(v28 - 12))
        {
          *&v139[12] = *(v28 - 16);
          *v139 = *v29;
          v38 = *v10;
          *(v28 - 16) = *(a2 - 44);
          *v29 = v38;
LABEL_38:
          *(a2 - 44) = *&v139[12];
          *v10 = *v139;
        }
      }

      v39 = v12 + 28 * v15;
      v40 = (v39 + 28);
      v41 = *(v39 + 44);
      v42 = *(a2 - 17);
      if (v41 <= *(v12 + 72))
      {
        if (v42 > v41)
        {
          *&v145[12] = *(v39 + 40);
          *v145 = *v40;
          v44 = *v11;
          *(v39 + 40) = *(a2 - 72);
          *v40 = v44;
          *(a2 - 72) = *&v145[12];
          *v11 = *v145;
          if (*(v39 + 44) > *(v12 + 72))
          {
            *v146 = *(v12 + 56);
            *&v146[12] = *(v12 + 68);
            v45 = *v40;
            *(v12 + 68) = *(v39 + 40);
            *(v12 + 56) = v45;
            *(v39 + 40) = *&v146[12];
            *v40 = *v146;
          }
        }
      }

      else
      {
        if (v42 > v41)
        {
          *v144 = *(v12 + 56);
          *&v144[12] = *(v12 + 68);
          v43 = *v11;
          *(v12 + 68) = *(a2 - 72);
          *(v12 + 56) = v43;
          goto LABEL_47;
        }

        *v147 = *(v12 + 56);
        *&v147[12] = *(v12 + 68);
        v46 = *v40;
        *(v12 + 68) = *(v39 + 40);
        *(v12 + 56) = v46;
        *(v39 + 40) = *&v147[12];
        *v40 = *v147;
        if (*(a2 - 17) > *(v39 + 44))
        {
          *&v144[12] = *(v39 + 40);
          *v144 = *v40;
          v47 = *v11;
          *(v39 + 40) = *(a2 - 72);
          *v40 = v47;
LABEL_47:
          *(a2 - 72) = *&v144[12];
          *v11 = *v144;
        }
      }

      v48 = *(v16 + 16);
      v49 = *(v39 + 44);
      if (v48 <= *(v29 + 16))
      {
        if (v49 > v48)
        {
          *&v149[12] = *(v16 + 12);
          *v149 = *v16;
          *v16 = *v40;
          *(v16 + 12) = *(v39 + 40);
          *(v39 + 40) = *&v149[12];
          *v40 = *v149;
          if (*(v16 + 16) > *(v29 + 16))
          {
            *&v150[12] = *(v29 + 12);
            *v150 = *v29;
            *v29 = *v16;
            *(v29 + 12) = *(v16 + 12);
            *(v16 + 12) = *&v150[12];
            *v16 = *v150;
          }
        }
      }

      else
      {
        if (v49 > v48)
        {
          *&v148[12] = *(v29 + 12);
          *v148 = *v29;
          *v29 = *v40;
          *(v29 + 12) = *(v39 + 40);
          goto LABEL_56;
        }

        *&v151[12] = *(v29 + 12);
        *v151 = *v29;
        *v29 = *v16;
        *(v29 + 12) = *(v16 + 12);
        *(v16 + 12) = *&v151[12];
        *v16 = *v151;
        if (*(v39 + 44) > *(v16 + 16))
        {
          *&v148[12] = *(v16 + 12);
          *v148 = *v16;
          *v16 = *v40;
          *(v16 + 12) = *(v39 + 40);
LABEL_56:
          *(v39 + 40) = *&v148[12];
          *v40 = *v148;
        }
      }

      *&v152[12] = *(v12 + 12);
      *v152 = *v12;
      v50 = *v16;
      *(v12 + 12) = *(v16 + 12);
      *v12 = v50;
      result = *v152;
      *(v16 + 12) = *&v152[12];
      *v16 = *v152;
      goto LABEL_58;
    }

    v20 = *(v12 + 16);
    if (v20 <= *(v16 + 16))
    {
      if (v17 > v20)
      {
        *&v136[12] = *(v12 + 12);
        *v136 = *v12;
        v24 = *v9;
        *(v12 + 12) = *(a2 - 1);
        *v12 = v24;
        result = *v136;
        *(a2 - 1) = *&v136[12];
        *v9 = *v136;
        if (*(v12 + 16) > *(v16 + 16))
        {
          *&v137[12] = *(v16 + 12);
          *v137 = *v16;
          v25 = *v12;
          *(v16 + 12) = *(v12 + 12);
          *v16 = v25;
          result = *v137;
          *(v12 + 12) = *&v137[12];
          *v12 = *v137;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v20)
    {
      *&v133[12] = *(v16 + 12);
      *v133 = *v16;
      v21 = *v9;
      *(v16 + 12) = *(a2 - 1);
      *v16 = v21;
LABEL_35:
      result = *v133;
      *(a2 - 1) = *&v133[12];
      *v9 = *v133;
      goto LABEL_58;
    }

    *&v142[12] = *(v16 + 12);
    *v142 = *v16;
    v35 = *v12;
    *(v16 + 12) = *(v12 + 12);
    *v16 = v35;
    result = *v142;
    *(v12 + 12) = *&v142[12];
    *v12 = *v142;
    if (*(a2 - 3) > *(v12 + 16))
    {
      *&v133[12] = *(v12 + 12);
      *v133 = *v12;
      v36 = *v9;
      *(v12 + 12) = *(a2 - 1);
      *v12 = v36;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 16);
LABEL_61:
      v129 = *v12;
      v51 = *(v12 + 20);
      v52 = v12;
      do
      {
        v53 = v52;
        v52 += 28;
      }

      while (*(v53 + 44) > result.n128_f32[0]);
      v54 = a2;
      if (v53 == v12)
      {
        v57 = a2;
        while (v52 < v57)
        {
          v55 = v57 - 7;
          v58 = *(v57 - 3);
          v57 -= 7;
          if (v58 > result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v55 = v57;
      }

      else
      {
        do
        {
          v55 = v54 - 7;
          v56 = *(v54 - 3);
          v54 -= 7;
        }

        while (v56 <= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v52;
      if (v52 < v55)
      {
        v59 = v55;
        do
        {
          *v153 = *v12;
          *&v153[12] = *(v12 + 12);
          v60 = *v59;
          *(v12 + 12) = *(v59 + 3);
          *v12 = v60;
          *(v59 + 3) = *&v153[12];
          *v59 = *v153;
          do
          {
            v61 = *(v12 + 44);
            v12 += 28;
          }

          while (v61 > result.n128_f32[0]);
          do
          {
            v62 = *(v59 - 3);
            v59 -= 7;
          }

          while (v62 <= result.n128_f32[0]);
        }

        while (v12 < v59);
      }

      v63 = (v12 - 28);
      if (v12 - 28 != a1)
      {
        v64 = *v63;
        *(a1 + 12) = *(v12 - 16);
        *a1 = v64;
      }

      *v63 = v129;
      *(v12 - 12) = result.n128_u32[0];
      *(v12 - 8) = v51;
      if (v52 < v55)
      {
        goto LABEL_82;
      }

      v65 = sub_2614B6E68(a1, v12 - 28);
      if (sub_2614B6E68(v12, a2))
      {
        a2 = (v12 - 28);
        if (!v65)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v65)
      {
LABEL_82:
        sub_2614B5AB4(a1, v12 - 28, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 16);
      if (*(v12 - 12) > result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v130 = *v12;
      if (result.n128_f32[0] <= *(a2 - 3))
      {
        v68 = v12 + 28;
        do
        {
          v12 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v69 = *(v68 + 16);
          v68 += 28;
        }

        while (result.n128_f32[0] <= v69);
      }

      else
      {
        v66 = v12;
        do
        {
          v12 = v66 + 28;
          v67 = *(v66 + 44);
          v66 += 28;
        }

        while (result.n128_f32[0] <= v67);
      }

      v70 = a2;
      if (v12 < a2)
      {
        v71 = a2;
        do
        {
          v70 = v71 - 7;
          v72 = *(v71 - 3);
          v71 -= 7;
        }

        while (result.n128_f32[0] > v72);
      }

      v73 = *(a1 + 20);
      while (v12 < v70)
      {
        *&v154[12] = *(v12 + 12);
        *v154 = *v12;
        v74 = *v70;
        *(v12 + 12) = *(v70 + 3);
        *v12 = v74;
        *(v70 + 3) = *&v154[12];
        *v70 = *v154;
        do
        {
          v75 = *(v12 + 44);
          v12 += 28;
        }

        while (result.n128_f32[0] <= v75);
        do
        {
          v76 = *(v70 - 3);
          v70 -= 7;
        }

        while (result.n128_f32[0] > v76);
      }

      v77 = (v12 - 28);
      if (v12 - 28 != a1)
      {
        v78 = *v77;
        *(a1 + 12) = *(v12 - 16);
        *a1 = v78;
      }

      a4 = 0;
      *v77 = v130;
      *(v12 - 12) = result.n128_u32[0];
      *(v12 - 8) = v73;
    }
  }

  result.n128_u32[0] = *(v12 + 44);
  v79 = *(a2 - 3);
  if (result.n128_f32[0] <= *(v12 + 16))
  {
    if (v79 <= result.n128_f32[0])
    {
      return result;
    }

    *v160 = *(v12 + 28);
    *&v160[12] = *(v12 + 40);
    v123 = *v9;
    *(v12 + 40) = *(a2 - 1);
    *(v12 + 28) = v123;
    result = *v160;
    *(a2 - 1) = *&v160[12];
    *v9 = *v160;
    goto LABEL_188;
  }

  if (v79 > result.n128_f32[0])
  {
    goto LABEL_111;
  }

  *&v164[12] = *(v12 + 12);
  *v164 = *v12;
  *v12 = *(v12 + 28);
  *(v12 + 12) = *(v12 + 40);
  *(v12 + 28) = *v164;
  result = *&v164[12];
  *(v12 + 40) = *&v164[12];
  result.n128_u32[0] = *(a2 - 3);
  if (result.n128_f32[0] > *(v12 + 44))
  {
    *v155 = *(v12 + 28);
    *&v155[12] = *(v12 + 40);
    v127 = *v9;
    *(v12 + 40) = *(a2 - 1);
    *(v12 + 28) = v127;
    goto LABEL_112;
  }

  return result;
}

void *sub_2614B6AE0(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x924924924924925)
    {
      operator new();
    }

    sub_2614709D4();
  }

  *result = 0;
  result[1] = 28 * a3;
  result[2] = 28 * a3;
  result[3] = 0;
  return result;
}

__n128 sub_2614B6B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  if (v5 <= *(a1 + 16))
  {
    if (v6 > v5)
    {
      *v21 = *a2;
      *&v21[12] = *(a2 + 12);
      v8 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v8;
      *(a3 + 12) = *&v21[12];
      result = *v21;
      *a3 = *v21;
      if (*(a2 + 16) > *(a1 + 16))
      {
        *v22 = *a1;
        *&v22[12] = *(a1 + 12);
        v10 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v10;
        *(a2 + 12) = *&v22[12];
        result = *v22;
        *a2 = *v22;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      *v20 = *a1;
      *&v20[12] = *(a1 + 12);
      v7 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v7;
LABEL_9:
      *(a3 + 12) = *&v20[12];
      result = *v20;
      *a3 = *v20;
      goto LABEL_10;
    }

    *v23 = *a1;
    *&v23[12] = *(a1 + 12);
    v11 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v11;
    *(a2 + 12) = *&v23[12];
    result = *v23;
    *a2 = *v23;
    if (*(a3 + 16) > *(a2 + 16))
    {
      *v20 = *a2;
      *&v20[12] = *(a2 + 12);
      v12 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 16) > *(a3 + 16))
  {
    *v24 = *a3;
    *&v24[12] = *(a3 + 12);
    v13 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v13;
    *(a4 + 12) = *&v24[12];
    result = *v24;
    *a4 = *v24;
    if (*(a3 + 16) > *(a2 + 16))
    {
      *v25 = *a2;
      *&v25[12] = *(a2 + 12);
      v14 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v14;
      *(a3 + 12) = *&v25[12];
      result = *v25;
      *a3 = *v25;
      if (*(a2 + 16) > *(a1 + 16))
      {
        *v26 = *a1;
        *&v26[12] = *(a1 + 12);
        v15 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v15;
        *(a2 + 12) = *&v26[12];
        result = *v26;
        *a2 = *v26;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 16);
  if (result.n128_f32[0] > *(a4 + 16))
  {
    *v27 = *a4;
    *&v27[12] = *(a4 + 12);
    v16 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v16;
    *(a5 + 12) = *&v27[12];
    result = *v27;
    *a5 = *v27;
    result.n128_u32[0] = *(a4 + 16);
    if (result.n128_f32[0] > *(a3 + 16))
    {
      *v28 = *a3;
      *&v28[12] = *(a3 + 12);
      v17 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 12) = v17;
      *(a4 + 12) = *&v28[12];
      result = *v28;
      *a4 = *v28;
      result.n128_u32[0] = *(a3 + 16);
      if (result.n128_f32[0] > *(a2 + 16))
      {
        *v29 = *a2;
        *&v29[12] = *(a2 + 12);
        v18 = *(a3 + 12);
        *a2 = *a3;
        *(a2 + 12) = v18;
        *(a3 + 12) = *&v29[12];
        result = *v29;
        *a3 = *v29;
        result.n128_u32[0] = *(a2 + 16);
        if (result.n128_f32[0] > *(a1 + 16))
        {
          *v30 = *a1;
          *&v30[12] = *(a1 + 12);
          v19 = *(a2 + 12);
          *a1 = *a2;
          *(a1 + 12) = v19;
          *(a2 + 12) = *&v30[12];
          result = *v30;
          *a2 = *v30;
        }
      }
    }
  }

  return result;
}

BOOL sub_2614B6E68(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = (a2 - 28);
      v5 = *(a1 + 44);
      v6 = *(a2 - 12);
      if (v5 > *(a1 + 16))
      {
        if (v6 <= v5)
        {
          *v37 = *a1;
          *&v37[12] = *(a1 + 12);
          *a1 = *(a1 + 28);
          *(a1 + 12) = *(a1 + 40);
          *(a1 + 28) = *v37;
          *(a1 + 40) = *&v37[12];
          if (*(a2 - 12) <= *(a1 + 44))
          {
            return 1;
          }

          *v29 = *(a1 + 28);
          *&v29[12] = *(a1 + 40);
          v16 = *(a2 - 16);
          *(a1 + 28) = *v4;
          *(a1 + 40) = v16;
        }

        else
        {
          *v29 = *a1;
          *&v29[12] = *(a1 + 12);
          v7 = *(a2 - 16);
          *a1 = *v4;
          *(a1 + 12) = v7;
        }

        *(a2 - 16) = *&v29[12];
        *v4 = *v29;
        return 1;
      }

      if (v6 <= v5)
      {
        return 1;
      }

      *v32 = *(a1 + 28);
      *&v32[12] = *(a1 + 40);
      v15 = *(a2 - 16);
      *(a1 + 28) = *v4;
      *(a1 + 40) = v15;
      *(a2 - 16) = *&v32[12];
      *v4 = *v32;
LABEL_50:
      if (*(a1 + 44) > *(a1 + 16))
      {
        *v43 = *a1;
        *&v43[12] = *(a1 + 12);
        *a1 = *(a1 + 28);
        *(a1 + 12) = *(a1 + 40);
        *(a1 + 28) = *v43;
        *(a1 + 40) = *&v43[12];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_2614B6B70(a1, a1 + 28, a1 + 56, a1 + 84, a2 - 28);
      return 1;
    }

    v12 = *(a1 + 44);
    v13 = *(a1 + 16);
    v14 = *(a1 + 72);
    if (v12 <= v13)
    {
      if (v14 > v12)
      {
        *v35 = *(a1 + 28);
        *&v35[12] = *(a1 + 40);
        *(a1 + 28) = *(a1 + 56);
        *(a1 + 40) = *(a1 + 68);
        *(a1 + 56) = *v35;
        *(a1 + 68) = *&v35[12];
        if (*(a1 + 44) > v13)
        {
          *v36 = *a1;
          *&v36[12] = *(a1 + 12);
          *a1 = *(a1 + 28);
          *(a1 + 12) = *(a1 + 40);
          *(a1 + 28) = *v36;
          *(a1 + 40) = *&v36[12];
        }
      }

      goto LABEL_47;
    }

    if (v14 <= v12)
    {
      *v40 = *a1;
      *&v40[12] = *(a1 + 12);
      *a1 = *(a1 + 28);
      *(a1 + 12) = *(a1 + 40);
      *(a1 + 28) = *v40;
      *(a1 + 40) = *&v40[12];
      if (v14 <= *(a1 + 44))
      {
        goto LABEL_47;
      }

      *v31 = *(a1 + 28);
      *&v31[12] = *(a1 + 40);
      *(a1 + 28) = *(a1 + 56);
      *(a1 + 40) = *(a1 + 68);
    }

    else
    {
      *v31 = *a1;
      *&v31[12] = *(a1 + 12);
      *a1 = *(a1 + 56);
      *(a1 + 12) = *(a1 + 68);
    }

    *(a1 + 56) = *v31;
    *(a1 + 68) = *&v31[12];
LABEL_47:
    if (*(a2 - 12) <= *(a1 + 72))
    {
      return 1;
    }

    v25 = (a2 - 28);
    *v41 = *(a1 + 56);
    *&v41[12] = *(a1 + 68);
    v26 = *(a2 - 16);
    *(a1 + 56) = *(a2 - 28);
    *(a1 + 68) = v26;
    *(v25 + 12) = *&v41[12];
    *v25 = *v41;
    if (*(a1 + 72) <= *(a1 + 44))
    {
      return 1;
    }

    *v42 = *(a1 + 28);
    *&v42[12] = *(a1 + 40);
    *(a1 + 28) = *(a1 + 56);
    *(a1 + 40) = *(a1 + 68);
    *(a1 + 56) = *v42;
    *(a1 + 68) = *&v42[12];
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 12) > *(a1 + 16))
    {
      *v28 = *a1;
      *&v28[12] = *(a1 + 12);
      v3 = *(a2 - 16);
      *a1 = *(a2 - 28);
      *(a1 + 12) = v3;
      *(a2 - 16) = *&v28[12];
      *(a2 - 28) = *v28;
    }

    return 1;
  }

LABEL_13:
  v8 = a1 + 56;
  v9 = *(a1 + 44);
  v10 = *(a1 + 16);
  v11 = *(a1 + 72);
  if (v9 <= v10)
  {
    if (v11 > v9)
    {
      *v33 = *(a1 + 28);
      *&v33[12] = *(a1 + 40);
      *(a1 + 28) = *v8;
      *(a1 + 40) = *(a1 + 68);
      *v8 = *v33;
      *(a1 + 68) = *&v33[12];
      if (*(a1 + 44) > v10)
      {
        *v34 = *a1;
        *&v34[12] = *(a1 + 12);
        *a1 = *(a1 + 28);
        *(a1 + 12) = *(a1 + 40);
        *(a1 + 28) = *v34;
        *(a1 + 40) = *&v34[12];
      }
    }
  }

  else
  {
    if (v11 <= v9)
    {
      *v38 = *a1;
      *&v38[12] = *(a1 + 12);
      *a1 = *(a1 + 28);
      *(a1 + 12) = *(a1 + 40);
      *(a1 + 28) = *v38;
      *(a1 + 40) = *&v38[12];
      if (v11 <= *(a1 + 44))
      {
        goto LABEL_33;
      }

      *v30 = *(a1 + 28);
      *&v30[12] = *(a1 + 40);
      *(a1 + 28) = *v8;
      *(a1 + 40) = *(a1 + 68);
    }

    else
    {
      *v30 = *a1;
      *&v30[12] = *(a1 + 12);
      *a1 = *v8;
      *(a1 + 12) = *(a1 + 68);
    }

    *v8 = *v30;
    *(a1 + 68) = *&v30[12];
  }

LABEL_33:
  v17 = a1 + 84;
  if (a1 + 84 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 16);
    if (v20 > *(v8 + 16))
    {
      v39 = *v17;
      v21 = *(v17 + 20);
      v22 = v18;
      while (1)
      {
        v23 = a1 + v22;
        *(v23 + 84) = *(a1 + v22 + 56);
        *(v23 + 96) = *(a1 + v22 + 68);
        if (v22 == -56)
        {
          break;
        }

        v22 -= 28;
        if (v20 <= *(v23 + 44))
        {
          v24 = a1 + v22 + 84;
          goto LABEL_41;
        }
      }

      v24 = a1;
LABEL_41:
      *v24 = v39;
      *(v24 + 16) = v20;
      *(v24 + 20) = v21;
      if (++v19 == 8)
      {
        return v17 + 28 == a2;
      }
    }

    v8 = v17;
    v18 += 28;
    v17 += 28;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

atomic_ullong *sub_2614B73E8(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = sub_2614E21F4(a1, a1 + 8, 1, *(a1 + 24)) ^ 1;
  }

  return sub_261483CA4(a1);
}

uint64_t sub_2614B7454(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc9inference4anmd17ANMDPostprocessor3runERKNS1_21ANMDImagePreprocessorERKNS_6Sample11PixelBufferERK17CGAffineTransformRNSt3__18optionalINS_5ErrorEEERKNSE_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B7490(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDPostprocessor::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B75C8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc9inference4anmd17ANMDPostprocessor3runERKNS1_21ANMDImagePreprocessorERKNS_6Sample11PixelBufferERK17CGAffineTransformRNSt3__18optionalINS_5ErrorEEERKNSE_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B7604(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDPostprocessor::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B7730(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = atomic_exchange((a2 + 8), 0);
  *(a1 + 16) = atomic_exchange((a2 + 16), 0);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(v7 - 8) = v6;
  *(v7 + 128) = 0;
  if (*(a2 + 200) == 1)
  {
    sub_26148819C(v7, (a2 + 72));
    *(a1 + 200) = 1;
    if (*(a2 + 200))
    {
      sub_2614880A4(a2 + 72);
      *(a2 + 200) = 0;
    }
  }

  v8 = *(a2 + 208);
  *(a2 + 208) = 0u;
  *(a1 + 208) = v8;
  v9 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 224) = v9;
  v10 = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a1 + 232) = v10;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 240) = *(a2 + 240);
  v11 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a1 + 264) = v11;
  return a1;
}

uint64_t sub_2614B781C(uint64_t a1)
{
  v2 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = (a1 + 240);
  sub_2614B790C(&v5);
  sub_2614B7994((a1 + 232), 0);
  sub_2614B7994((a1 + 224), 0);
  sub_2614B7994((a1 + 216), 0);
  sub_2614B7A0C((a1 + 208), 0);
  if (*(a1 + 200) == 1)
  {
    sub_2614880A4(a1 + 72);
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_26148D890((a1 + 16));
  sub_26148D890((a1 + 8));
  return a1;
}

void sub_2614B790C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_2614B7994(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_2614B7994(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      sub_261483CA4((v2 + 24));
      sub_261483CD8((v2 + 16));
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

uint64_t *sub_2614B7A0C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      sub_261483CA4((v2 + 24));
      sub_261483CD8((v2 + 16));
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void sub_2614B7A84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 24);
      sub_261487F00((a1 + 32));
      v5 = *(a2 + 32);
      *(a2 + 32) = 0;
      *(a1 + 32) = v5;
      sub_261487D5C((a1 + 40));
      v6 = *(a2 + 40);
      *(a2 + 40) = 0;
      *(a1 + 40) = v6;
      sub_26148827C(a1 + 48, (a2 + 48));

      sub_26148827C(a1 + 88, (a2 + 88));
    }
  }

  else if (*(a1 + 128))
  {
    sub_2614880A4(a1);
    *(a1 + 128) = 0;
  }

  else
  {
    sub_26148819C(a1, a2);
    *(a1 + 128) = 1;
  }
}

uint64_t sub_2614B7B70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_2614B7994((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2614B7D9C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B7DD8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDModel::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B7F10(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B7F4C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDModel::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B8078(uint64_t a1)
{
  if (*(a1 + 200) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 264);
  if (!v2 || !(*(*v2 + 24))(v2))
  {
    return 0;
  }

  v3 = *(**(a1 + 264) + 16);

  return v3();
}

uint64_t sub_2614B812C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel3runERKNS_6SampleERKNSt3__18optionalINS6_17reference_wrapperINS2_16InferenceMetricsEEEEERNS7_INS_5ErrorEEERKNS7_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B8168(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDModel::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B82A0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel3runERKNS_6SampleERKNSt3__18optionalINS6_17reference_wrapperINS2_16InferenceMetricsEEEEERNS7_INS_5ErrorEEERKNS7_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B82DC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDModel::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B84C4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel6createERKNS_7Context7OptionsEbRNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B8500(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "ANMDModel::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614B8638(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel6createERKNS_7Context7OptionsEbRNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614B8674(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EF8;
    if (os_signpost_enabled(qword_280CB3EF8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ANMDModel::create", &unk_26159692B, v4, 2u);
    }
  }
}

void sub_2614B87A0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 24);
  if (!*(a2 + 24))
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v5 = &unk_26156D440;
  v6 = sub_26149DF64((a1 + 24), &unk_26156D440);
  if (!v6)
  {
    v14[0] = &unk_26156D440;
    v14[1] = v14;
    v14[2] = "ANMDContext";
    v14[3] = 11;
    operator new();
  }

  if (v6[3] != &unk_26156D440)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v7 = v6[6];
  if (!v7)
  {
LABEL_38:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_39:
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
LABEL_13:
    v10 = qword_280CB3EF8;
    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(context[0]) = 0;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "Unable to retrieve or instantiate concrete ANMD context.", context, 2u);
    }

    LOBYTE(v17) = 0;
    v18 = 0;
    sub_261500FD8(v19, -1, 0);
    sub_26150122C(context, v19);
    v21 = 1;
    if (!*v2)
    {
      sub_261477FC4();
    }

    (*(**v2 + 48))(*v2, &v17, context);
    if (v21 == 1)
    {
      sub_261501098(context);
    }

    sub_261501098(v19);
    if (v5)
    {
      goto LABEL_35;
    }

    return;
  }

  v8 = *v7;
  v5 = v7[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 8));
  if (!v8)
  {
    if (qword_280CB3F00 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  v9 = *v2;
  if (!*v2)
  {
    v2 = &v16;
    goto LABEL_21;
  }

  if (v9 != a2)
  {
    v16 = *v2;
LABEL_21:
    *v2 = 0;
    goto LABEL_23;
  }

  v16 = v15;
  (*(*v9 + 24))(v9, v15);
LABEL_23:
  if (v16)
  {
    v11 = *(v8 + 472);
    v12 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v11, v12))
    {
      if (qword_280CB3F00 != -1)
      {
        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
      }

      v13 = qword_280CB3EF8;
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(context[0]) = 0;
        _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "Timed out waiting for model to be loaded.", context, 2u);
      }

      LOBYTE(v17) = 0;
      v18 = 0;
      sub_261500FD8(v19, -6010, @"Timed out waiting for model to be loaded.");
      sub_26150122C(context, v19);
      v21 = 1;
      if (!v16)
      {
        sub_261477FC4();
      }

      (*(*v16 + 48))(v16, &v17, context);
      if (v21 == 1)
      {
        sub_261501098(context);
      }

      sub_261501098(v19);
    }

    else
    {
      context[0] = &unk_2873D0E58;
      context[1] = v8;
      context[2] = v15;
      context[3] = context;
      dispatch_barrier_async_and_wait_f(*(v8 + 8), context, sub_2614B8F90);
      sub_261477CFC(context);
    }
  }

  sub_261476924(v15);
  if (v5)
  {
LABEL_35:
    sub_26149E780(v5);
  }
}

void sub_2614B8D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2614B8ED0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 472);
    *(v2 + 472) = 0;
    if (v3)
    {
      (*(v2 + 480))();
    }

    if (*(v2 + 464) == 1)
    {
      sub_261501098((v2 + 368));
    }

    if (*(v2 + 360) == 1)
    {
      sub_2614B781C(v2 + 88);
    }

    sub_26148D890((v2 + 40));
    sub_26148D890((v2 + 32));
    v4 = *(v2 + 8);
    *v2 = &unk_2873D1EC8;
    *(v2 + 8) = 0;
    if (v4)
    {
      (*(v2 + 16))();
    }

    MEMORY[0x2667045D0](v2, 0x10F3C4026DA44F7);
  }

  return a1;
}

uint64_t sub_2614B8F90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_2614B8FE4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd12_GLOBAL__N_111ANMDContext7performENSt3__18functionIFvONS4_8optionalINS4_17reference_wrapperINS1_9ANMDModelEEEEEONS6_INS_5ErrorEEEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_2614B9020(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (*(v2 + 464) == 1)
  {
    v3 = *(a1 + 16);
    LOBYTE(__p) = 0;
    LOBYTE(v18) = 0;
    sub_2615010E4(&v15, v2 + 368);
    v16 = 1;
    v4 = *(v3 + 24);
    if (!v4)
    {
      sub_261477FC4();
    }

LABEL_3:
    result = (*(*v4 + 48))(v4, &__p, &v15);
    if (v16 != 1)
    {
      return result;
    }

    p_p = &v15;
    return sub_261501098(p_p);
  }

  if ((*(v2 + 360) & 1) == 0)
  {
    dispatch_group_enter(*(v2 + 472));
    if (qword_280CB3F00 != -1)
    {
      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
    }

    v13 = os_signpost_id_make_with_pointer(qword_280CB3EF8, v2);
    v14 = 1;
    v20[0] = &unk_2873D62F0;
    v21 = v20;
    v19[0] = &unk_2873D6370;
    v19[3] = v19;
    v22 = &v13;
    sub_261489C64(&v23, v19);
    if (*(v22 + 8) == 1 && v21 != 0)
    {
      sub_261489CFC(v21, *v22);
    }

    sub_261489D4C(v19);
    sub_261489D4C(v20);
    operator new();
  }

  if (*(v2 + 288) == 1)
  {
    v8 = *(v2 + 352);
    if (v8)
    {
      if ((*(*v8 + 24))(v8))
      {
        v9 = *(a1 + 16);
        __p = (v2 + 88);
        LOBYTE(v18) = 1;
        LOBYTE(v15) = 0;
        v16 = 0;
        v4 = *(v9 + 24);
        if (!v4)
        {
          sub_261477FC4();
        }

        goto LABEL_3;
      }
    }
  }

  v10 = *(a1 + 16);
  LOBYTE(v24) = 0;
  v25 = 0;
  v11 = *(v2 + 464);
  if (v11 == 1)
  {
    sub_2615010E4(&v15, v2 + 368);
  }

  else
  {
    sub_261500FD8(&__p, -1, 0);
    sub_26150122C(&v15, &__p);
  }

  v16 = 1;
  v12 = *(v10 + 24);
  if (!v12)
  {
    sub_261477FC4();
  }

  result = (*(*v12 + 48))(v12, &v24, &v15);
  if (v16 == 1)
  {
    result = sub_261501098(&v15);
  }

  if ((v11 & 1) == 0)
  {
    p_p = &__p;
    return sub_261501098(p_p);
  }

  return result;
}

void sub_2614B9EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  sub_261489DCC((v48 - 136));
  if (a48 == 1)
  {
    sub_2614B781C(&a14);
  }

  sub_261489DCC((v48 - 240));
  _Unwind_Resume(a1);
}

__n128 sub_2614BA07C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D0E58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614BA124(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context3Any4makeINS_9inference4anmd12_GLOBAL__N_111ANMDContextEvEES1_RKNS0_7OptionsEP16dispatch_queue_sEUlPvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614BA160(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
    if (v2)
    {
      sub_26149E780(v2);
    }

    JUMPOUT(0x2667045D0);
  }
}

uint64_t sub_2614BA24C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__110shared_ptrIN3mrc9inference4anmd12_GLOBAL__N_111ANMDContextEE27__shared_ptr_default_deleteIS5_S5_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614BA284(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 472);
    *(v1 + 472) = 0;
    if (v2)
    {
      (*(v1 + 480))();
    }

    if (*(v1 + 464) == 1)
    {
      sub_261501098((v1 + 368));
    }

    if (*(v1 + 360) == 1)
    {
      sub_2614B781C(v1 + 88);
    }

    sub_26148D890((v1 + 40));
    sub_26148D890((v1 + 32));
    v3 = *(v1 + 8);
    *v1 = &unk_2873D1EC8;
    *(v1 + 8) = 0;
    if (v3)
    {
      (*(v1 + 16))();
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void sub_2614BA350(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_2614BA38C(uint64_t a1)
{
  v2 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v2)
  {
    (*(a1 + 480))();
  }

  if (*(a1 + 464) == 1)
  {
    sub_261501098((a1 + 368));
  }

  if (*(a1 + 360) == 1)
  {
    sub_2614B781C(a1 + 88);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v3 = *(a1 + 8);
  *a1 = &unk_2873D1EC8;
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614BA448(uint64_t a1)
{
  v2 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v2)
  {
    (*(a1 + 480))();
  }

  if (*(a1 + 464) == 1)
  {
    sub_261501098((a1 + 368));
  }

  if (*(a1 + 360) == 1)
  {
    sub_2614B781C(a1 + 88);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v3 = *(a1 + 8);
  *a1 = &unk_2873D1EC8;
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_2614BA4E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1EC8;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614BA554(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1EC8;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

atomic_ullong *sub_2614BA5A4@<X0>(uint64_t a1@<X0>, CFErrorRef *a2@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  LOBYTE(v4[0]) = 0;
  v5 = 0;
  v6[0] = &unk_2873CFA08;
  v6[1] = v4;
  v6[3] = v6;
  sub_2614B87A0(a1, v6);
  result = sub_261476924(v6);
  if (v5 == 1)
  {
    result = sub_261501518(a2, v4);
    if (v5)
    {
      return sub_261501098(v4);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2614BA668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    sub_261501098(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614BA6A4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4anmd9ANMDModel19preflightForContextERNS_7ContextEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614BA6E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a2[8] != 1 || *(*a2 + 200) != 1 || (v5 = *(*a2 + 264)) == 0 || (result = (*(*v5 + 24))(v5), (result & 1) == 0))
  {
    v7 = *(a1 + 8);

    return sub_261477470(v7, a3);
  }

  return result;
}

uint64_t sub_2614BA77C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CFA08;
  a2[1] = v2;
  return result;
}

void sub_2614BA810(void *a1)
{
  *a1 = &unk_2873D12D8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_2614BA880(void *a1)
{
  *a1 = &unk_2873D12D8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[2] = 0;
  return a1;
}

void sub_2614BA8D0(uint64_t a1)
{
  *a1 = &unk_2873D1AC8;
  sub_2614802C0(*(a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 48) = &unk_2873D12D8;
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_2614705CC(v2);
  }

  *(a1 + 64) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  *(a1 + 16) = &unk_2873D12B8;
  v4 = *(a1 + 32);
  if (v4)
  {
    sub_2614705CC(v4);
  }

  *(a1 + 32) = 0;

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614BA9B4(uint64_t a1)
{
  *a1 = &unk_2873D1AC8;
  sub_2614802C0(*(a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 48) = &unk_2873D12D8;
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_2614705CC(v2);
  }

  *(a1 + 64) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  *(a1 + 16) = &unk_2873D12B8;
  v4 = *(a1 + 32);
  if (v4)
  {
    sub_2614705CC(v4);
  }

  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_2614BAA78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1AC8;
  sub_2614830DC(a1 + 16, a2);
  *(a1 + 40) = 0;
  v9 = *a3;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    v10 = *(a1 + 40);
    if (v10)
    {
      sub_2614705CC(v10);
    }
  }

  *(a1 + 40) = v9;
  *(a1 + 56) = 0;
  *(a1 + 48) = &unk_2873D12D8;
  *(a1 + 64) = 0;
  v11 = *(a4 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
    v12 = *(a1 + 64);
    if (v12)
    {
      sub_2614705CC(v12);
    }
  }

  *(a1 + 64) = v11;
  if (*(a5 + 23) < 0)
  {
    sub_261480F94((a1 + 72), *a5, *(a5 + 1));
  }

  else
  {
    v13 = *a5;
    *(a1 + 88) = *(a5 + 2);
    *(a1 + 72) = v13;
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  return a1;
}

void sub_2614BAB94(_Unwind_Exception *exception_object)
{
  v1[6] = v2;
  v4 = v1[8];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  v1[8] = 0;
  v5 = v1[5];
  if (v5)
  {
    sub_2614705CC(v5);
  }

  v1[2] = &unk_2873D12B8;
  v6 = v1[4];
  if (v6)
  {
    sub_2614705CC(v6);
  }

  v1[4] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_2614BABEC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1AC8;
  sub_2614830DC(a1 + 16, a2);
  *(a1 + 40) = 0;
  v7 = *a3;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    v8 = *(a1 + 40);
    if (v8)
    {
      sub_2614705CC(v8);
    }
  }

  *(a1 + 64) = 0u;
  *(a1 + 40) = v7;
  *(a1 + 56) = 0;
  *(a1 + 48) = &unk_2873D12D8;
  *(a1 + 80) = 0u;
  sub_26148012C((a1 + 96), a4);
  return a1;
}

void sub_2614BACC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  *v4 = v2;
  if (*v3)
  {
    sub_2614705CC(*v3);
  }

  *(v1 + 64) = 0;
  v6 = *(v1 + 40);
  if (v6)
  {
    sub_2614705CC(v6);
  }

  *(v1 + 16) = &unk_2873D12B8;
  v7 = *(v1 + 32);
  if (v7)
  {
    sub_2614705CC(v7);
  }

  *(v1 + 32) = 0;
  _Unwind_Resume(exception_object);
}

double sub_2614BAFBC()
{
  result = 0.0;
  xmmword_280CB34A8 = 0u;
  *&qword_280CB34B8 = 0u;
  dword_280CB34C8 = 1065353216;
  qword_280CB34D0 = &xmmword_280CB34A8;
  return result;
}

uint64_t sub_2614BAFE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    os_unfair_lock_lock_with_options();
    if (qword_280CB3498[0] != -1)
    {
      dispatch_once(qword_280CB3498, &unk_2873D07E0);
    }

    operator new();
  }

  v2 = objc_opt_class();
  class_getName(v2);

  return _CFRuntimeBridgeClasses();
}

void sub_2614BB52C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614BB540(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2614BB540(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_26147B420(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2614BB58C(void *a1)
{
  *a1 = &unk_2873D1990;
  v1 = a1[2];
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614BB5F8(void *a1)
{
  *a1 = &unk_2873D1990;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return a1;
}

BOOL sub_2614BB644(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v6 = *(a1 + 16);
  if (a3 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  if (a5)
  {
    v8 = a4;
    v9 = a2;
    v10 = sub_261470964(*(a1 + 16), a2, a4);
    v11 = v9 + 1;
    v12 = -v7;
    while (1)
    {
      result = v12 + v11 != 1;
      if (v12 + v11 == 1)
      {
        break;
      }

      v14 = sub_261470964(v6, v11, v8);
      v15 = *(a1 + 32);
      if (v15 == 2)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10;
      }

      if (v15 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      ++v11;
      if (v14 != v17)
      {
        return 1;
      }
    }
  }

  else
  {
    v18 = a4;
    v19 = a2;
    v20 = sub_261470964(*(a1 + 16), a4, a2);
    v21 = v19 + 1;
    v22 = -v7;
    while (1)
    {
      result = v22 + v21 != 1;
      if (v22 + v21 == 1)
      {
        break;
      }

      v23 = sub_261470964(v6, v18, v21);
      v24 = *(a1 + 32);
      if (v24 == 2)
      {
        v25 = 1;
      }

      else
      {
        v25 = v20;
      }

      if (v24 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25;
      }

      ++v21;
      if (v23 != v26)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2614BB754(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v9 = sqrtf(((a4 - a6) * (a4 - a6)) + ((a3 - a5) * (a3 - a5))) + 0.5;
  v10 = v9;
  if (v9 >= 2)
  {
    v12 = v9;
    v13 = (a5 - a3) / v12;
    v14 = *(a2 + 16);
    v15 = (a6 - a4) / v12;
    v16 = sub_261470964(v14, (a3 + 0.5), (a4 + 0.5));
    v17 = *(a2 + 32);
    if (v17 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16;
    }

    if (v17 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = 1;
    do
    {
      if (sub_261470964(v14, ((a3 + (v20 * v13)) + 0.5), ((a4 + (v20 * v15)) + 0.5)) != v19)
      {
        operator new();
      }

      ++v20;
    }

    while (v10 != v20);
  }

  result = 0;
  *a1 = 0;
  return result;
}

void sub_2614BB8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(**a2 + 16))();
  (*(**a2 + 24))();
  (*(**a3 + 16))();
  (*(**a3 + 24))();
  (*(**a4 + 16))();
  (*(**a4 + 24))();
  (*(**a5 + 16))();
  (*(**a5 + 24))();
  operator new();
}

void sub_2614BBC54(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    if (v5)
    {
      sub_2614705CC(v4);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_2614BBC74(void *a1, uint64_t a2)
{
  v3 = 0;
  v74 = *(a2 + 32);
  v4 = *(a2 + 36);
  v5 = *(a2 + 40);
  v6 = *(a2 + 44);
  LOBYTE(v7) = 1;
  while (1)
  {
    v8 = v3;
    v67 = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_52;
    }

    v68 = v3;
    v9 = *(a2 + 24);
    if (v4 < v9)
    {
      v10 = 0;
      v11 = v4;
      v12 = (v5 - v6 + 1);
      v71 = v4;
      while (v6 <= v5)
      {
        v13 = v5;
        v14 = *(a2 + 16);
        v15 = v12;
        v16 = v6;
        while (!sub_261470964(v14, v11, v16))
        {
          ++v16;
          LODWORD(v12) = v12 - 1;
          if (!v12)
          {
            v4 = v11;
            v5 = v13;
            goto LABEL_13;
          }
        }

        ++v11;
        v10 = 1;
        v4 = v71;
        v5 = v13;
        v12 = v15;
        if (v11 == v9)
        {
          goto LABEL_86;
        }
      }
    }

    v10 = 0;
LABEL_13:
    if (v4 >= v9)
    {
      goto LABEL_86;
    }

    v17 = *(a2 + 28);
    v72 = v4;
    if (v5 >= v17)
    {
LABEL_23:
      v21 = v10;
      goto LABEL_24;
    }

    v18 = v74;
    v19 = v5;
    v20 = (v4 - v74 + 1);
    v21 = v10;
    v66 = v10;
    v69 = v5;
    while (1)
    {
      if (v74 > v4)
      {
        goto LABEL_23;
      }

      v22 = *(a2 + 16);
      v23 = v20;
      v24 = v18;
LABEL_18:
      if (!sub_261470964(v22, v18, v19))
      {
        break;
      }

      ++v19;
      v21 = 1;
      v5 = v69;
      v4 = v72;
      v18 = v24;
      v10 = v66;
      v20 = v23;
      if (v19 == v17)
      {
        goto LABEL_86;
      }
    }

    ++v18;
    LODWORD(v20) = v20 - 1;
    if (v20)
    {
      goto LABEL_18;
    }

    v5 = v19;
    v4 = v72;
LABEL_24:
    if (v5 >= v17 || v74 < 0)
    {
      goto LABEL_86;
    }

    v25 = v74;
    v26 = v5 - v6 + 1;
    v27 = v21;
    v70 = v5;
LABEL_27:
    if (v6 > v5)
    {
      v27 = v21;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_51:
      v8 = v68;
      goto LABEL_52;
    }

    v28 = *(a2 + 16);
    v29 = v26;
    v30 = v6;
    do
    {
      if (sub_261470964(v28, v25, v30))
      {
        v27 = 1;
        v31 = v25-- <= 0;
        v5 = v70;
        v4 = v72;
        if (v31)
        {
          goto LABEL_86;
        }

        goto LABEL_27;
      }

      ++v30;
      --v29;
    }

    while (v29);
    v74 = v25;
    v5 = v70;
    v4 = v72;
    if (v25 < 0)
    {
      goto LABEL_86;
    }

    if (v6 < 0)
    {
      goto LABEL_51;
    }

LABEL_37:
    v32 = v6;
    v33 = v4 - v74 + 1;
    v7 = v27;
    while (v74 <= v4)
    {
      v34 = *(a2 + 16);
      v35 = v33;
      v36 = v74;
      while (!sub_261470964(v34, v36, v32))
      {
        ++v36;
        if (!--v35)
        {
          v6 = v32;
          v5 = v70;
          v4 = v72;
          goto LABEL_46;
        }
      }

      v7 = 1;
      v31 = v32-- <= 0;
      v5 = v70;
      v4 = v72;
      if (v31)
      {
        goto LABEL_86;
      }
    }

    v7 = v27;
LABEL_46:
    v8 = v68;
    v3 = v7 | v68;
    if (v6 < 0)
    {
LABEL_52:
      if (!(v67 & 1 | ((v8 & 1) == 0)))
      {
        v37 = v4 - v74;
        if (v5 + 1 < v4 - v74)
        {
          v38 = v5 + 1;
        }

        else
        {
          v38 = v4 - v74;
        }

        if (v38 >= 2)
        {
          v39 = v4;
          v40 = v74;
          v41 = v5;
          v42 = v38 - 1;
          v43 = v74 + 1;
          v44 = v5 - 1;
          v45 = v5 - 1;
          v46 = v38 - 1;
          do
          {
            sub_2614BC928(&v75, a2, v40, v45, v43, v41);
            v47 = v75;
            if (v75)
            {
              atomic_fetch_add_explicit(v75 + 2, 1u, memory_order_relaxed);
              sub_2614705CC(v47);
              v49 = *(a2 + 28) - v6;
              if (v49 >= v37)
              {
                v49 = v37;
              }

              v73 = v47;
              if (v49 >= 2)
              {
                for (i = 1; i < v52; ++i)
                {
                  sub_2614BC928(&v75, a2, v40, (v6 + i), (v74 + i), v6);
                  v51 = v75;
                  if (v75)
                  {
                    atomic_fetch_add_explicit(v75 + 2, 1u, memory_order_relaxed);
                    sub_2614705CC(v51);
                    v54 = *(a2 + 28) - v6;
                    if (v54 >= v37)
                    {
                      v54 = v37;
                    }

                    if (v54 >= 2)
                    {
                      v55 = v39;
                      v56 = v39 - 1;
                      v57 = 1;
                      v58 = v56;
                      do
                      {
                        sub_2614BC928(&v75, a2, v55, (v6 + v57), v58, v6);
                        v59 = v75;
                        if (v75)
                        {
                          atomic_fetch_add_explicit(v75 + 2, 1u, memory_order_relaxed);
                          sub_2614705CC(v59);
                          while (1)
                          {
                            sub_2614BC928(&v75, a2, v55, v44, v56, v41);
                            v62 = v75;
                            if (v75)
                            {
                              break;
                            }

                            --v56;
                            --v44;
                            if (!--v42)
                            {
                              exception = __cxa_allocate_exception(0x20uLL);
                              sub_2614EB5DC(exception, "y == NULL");
                              *exception = &unk_2873D19B0;
                              __cxa_throw(exception, &unk_2873D2BE0, sub_261501A54);
                            }
                          }

                          atomic_fetch_add_explicit(v75 + 2, 1u, memory_order_relaxed);
                          sub_2614705CC(v62);
                          atomic_fetch_add_explicit(v62 + 2, 1u, memory_order_relaxed);
                          atomic_fetch_add_explicit(v73 + 2, 1u, memory_order_relaxed);
                          atomic_fetch_add_explicit(v59 + 2, 1u, memory_order_relaxed);
                          atomic_fetch_add_explicit(v51 + 2, 1u, memory_order_relaxed);
                          v64 = (*(*v62 + 16))(v62);
                          (*(*v62 + 24))(v62);
                          (*(*v73 + 16))(v73);
                          (*(*v73 + 24))(v73);
                          (*(*v59 + 16))(v59);
                          (*(*v59 + 24))(v59);
                          (*(*v51 + 16))(v51);
                          (*(*v51 + 24))(v51);
                          sub_2614BCA58(a1, 4uLL);
                          if (v64 < (*(a2 + 24) * 0.5))
                          {
                            operator new();
                          }

                          operator new();
                        }

                        ++v57;
                        v60 = *(a2 + 28) - v6;
                        if (v60 >= v37)
                        {
                          v60 = v37;
                        }

                        --v58;
                      }

                      while (v57 < v60);
                    }

                    v61 = __cxa_allocate_exception(0x20uLL);
                    sub_2614EB5DC(v61, "x == NULL");
                    *v61 = &unk_2873D19B0;
                    __cxa_throw(v61, &unk_2873D2BE0, sub_261501A54);
                  }

                  v52 = *(a2 + 28) - v6;
                  if (v52 >= v37)
                  {
                    v52 = v37;
                  }
                }
              }

              v53 = __cxa_allocate_exception(0x20uLL);
              sub_2614EB5DC(v53, "t == NULL");
              *v53 = &unk_2873D19B0;
              __cxa_throw(v53, &unk_2873D2BE0, sub_261501A54);
            }

            ++v43;
            --v45;
            --v46;
          }

          while (v46);
        }

        v48 = __cxa_allocate_exception(0x20uLL);
        sub_261501A58(v48, "z == NULL");
LABEL_87:
        __cxa_throw(v48, &unk_2873D2BE0, sub_261501A54);
      }

LABEL_86:
      v48 = __cxa_allocate_exception(0x20uLL);
      sub_261501A58(v48, "No black point found on border");
      goto LABEL_87;
    }
  }
}

void sub_2614BC810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14, uint64_t a15, void **a16)
{
  sub_2614705CC(v21);
  sub_2614705CC(v20);
  sub_2614705CC(v18);
  a16 = a9;
  sub_261470CC4(&a16);
  sub_2614705CC(v16);
  sub_2614705CC(v17);
  sub_2614705CC(a14);
  sub_2614705CC(v19);
  sub_2614705CC(v19);
  sub_2614705CC(v17);
  sub_2614705CC(v16);
  sub_2614705CC(a14);
  _Unwind_Resume(a1);
}

uint64_t sub_2614BC928(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v9 = sqrtf(((a4 - a6) * (a4 - a6)) + ((a3 - a5) * (a3 - a5))) + 0.5;
  v10 = v9;
  if (v9 >= 1)
  {
    v11 = 0;
    v12 = v9;
    v13 = (a5 - a3) / v12;
    v14 = *(a2 + 16);
    v15 = (a6 - a4) / v12;
    do
    {
      if (sub_261470964(v14, ((a3 + (v11 * v13)) + 0.5), ((a4 + (v11 * v15)) + 0.5)))
      {
        operator new();
      }

      ++v11;
    }

    while (v10 != v11);
  }

  result = 0;
  *a1 = 0;
  return result;
}

void *sub_2614BCA58(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261470D9C(result, a2);
  }

  return result;
}

void sub_2614BCAD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2614BCB1C(&v3, a1);
  if (v4)
  {
    sub_26149E780(v4);
  }

  *a2 = 0;
}

void sub_2614BCB1C(void *a1, uint64_t a2)
{
  v8[21] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v4 = sub_26149DF64((a2 + 24), &unk_26156D8C8);
  if (!v4)
  {
    v8[0] = &unk_26156D8C8;
    v8[1] = v8;
    v8[2] = "DecoderAppC3DContext";
    v8[3] = 20;
    operator new();
  }

  if (v4[3] != &unk_26156D8C8)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_9:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v5 = v4[6];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *v5;
  v6 = v5[1];
  *a1 = v7;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a2 + 8));
}

void sub_2614BCDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  sub_26149E17C(va);
  sub_26149E1E4(va1);
  os_unfair_lock_unlock(v10 + 2);
  _Unwind_Resume(a1);
}

uint64_t *sub_2614BCE40(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2614BD0B8((v2 + 24), 0);
    v3 = *(v2 + 8);
    *v2 = &unk_2873D1F08;
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(v2 + 16))();
    }

    MEMORY[0x2667045D0](v2, 0xA1C40E2D9BA3DLL);
  }

  return a1;
}

uint64_t sub_2614BCECC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context3Any4makeINS_12_GLOBAL__N_120DecoderAppC3DContextEvEES1_RKNS0_7OptionsEP16dispatch_queue_sEUlPvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614BCF08(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
    if (v2)
    {
      sub_26149E780(v2);
    }

    JUMPOUT(0x2667045D0);
  }
}

uint64_t sub_2614BCFF4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__110shared_ptrIN3mrc12_GLOBAL__N_120DecoderAppC3DContextEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614BD02C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    sub_2614BD0B8((v1 + 24), 0);
    v2 = *(v1 + 8);
    *v1 = &unk_2873D1F08;
    *(v1 + 8) = 0;
    if (v2)
    {
      (*(v1 + 16))();
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

uint64_t *sub_2614BD0B8(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2614BD104(result);

    JUMPOUT(0x2667045D0);
  }

  return result;
}

uint64_t *sub_2614BD104(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1)
  {
    if (qword_280CB3210 != -1)
    {
      dispatch_once(&qword_280CB3210, &unk_2873CF648);
    }

    v3 = qword_280CB3208;
    if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 134349056;
      *&v5[4] = v2;
      _os_log_debug_impl(&dword_26146F000, v3, OS_LOG_TYPE_DEBUG, "AppC3D session will be released: %{public}p", v5, 0xCu);
    }

    AppC3DRelease();
  }

  if (*(a1 + 128) == 1)
  {
    sub_261501098(a1 + 4);
  }

  *v5 = a1 + 1;
  sub_2614773B8(v5);
  return a1;
}

void sub_2614BD214(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_261470E34(a1);
}

void sub_2614BD220(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_2614BD25C(uint64_t a1)
{
  sub_2614BD0B8((a1 + 24), 0);
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F08;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614BD2D8(uint64_t a1)
{
  sub_2614BD0B8((a1 + 24), 0);
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F08;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_2614BD334(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F08;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614BD3A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F08;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_2614BD3F4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *buf = 4;
  buf[4] = 1;
  if (sub_2614E9390(*(a1 + 8), @"AppClipCode", buf))
  {
    has_factory_content = os_variant_has_factory_content();
    if (MEMORY[0x282213438] && MEMORY[0x282213430] && !has_factory_content)
    {
      dispatch_group_enter(*(a2 + 72));
      explicit = atomic_load_explicit(a1, memory_order_acquire);
      if (explicit)
      {
        v6 = CFGetTypeID(explicit);
        if (qword_280CB34E0 != -1)
        {
          v10 = v6;
          dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
          v6 = v10;
        }

        if (v6 != qword_280CB35D8)
        {
          _os_assumes_log();
        }
      }

      v7 = *(a2 + 48);
      v13 = *(a2 + 32);
      v14 = v7;
      v15 = *(a2 + 64);
      v8 = *(a2 + 16);
      *buf = *a2;
      v12 = v8;
      operator new();
    }

    if (qword_280CB3210 != -1)
    {
      dispatch_once(&qword_280CB3210, &unk_2873CF648);
    }

    v9 = qword_280CB3208;
    if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26146F000, v9, OS_LOG_TYPE_INFO, "AppC3D is not available.", buf, 2u);
    }
  }

  **(a2 + 64) = 256;
}

uint64_t sub_2614BD63C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder18decodeUsingAppC3D_ERKNS0_4PassEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614BD678(uint64_t a1)
{
  v3[9] = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(*(a1 + 88), memory_order_acquire);
  if (explicit)
  {
    v2 = CFGetTypeID(explicit);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v2 != qword_280CB35D8)
    {
      _os_assumes_log();
    }
  }

  sub_2614BCB1C(v3, explicit + 16);
  operator new();
}

void sub_2614BD850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_26149E780(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614BD870(void *a1)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = a1[1];
  result = (*(*v2 + 48))(v2);
  *v3 = result;
  return result;
}

uint64_t sub_2614BD8D8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120DecoderAppC3DContext6decodeERNS_13DecoderResultERNSt3__18optionalINS_5ErrorEEERKNS5_IyEERKNS_6SampleERKNS5_INS4_17reference_wrapperIKNS_6RegionEEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614BD914(double *a1)
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v5 = *(v2 + 24);
  v3 = (v2 + 24);
  v4 = v5;
  if (v5)
  {
    goto LABEL_52;
  }

  v7 = *(a1 + 2);
  v6 = a1[3];
  *&v82.f64[0] = &unk_2873CFFE0;
  *&v83.f64[1] = &v82;
  v87.i64[0] = &unk_2873D0038;
  v88.i64[1] = &v87;
  time[0].a = v6;
  sub_261489C64(&time[0].b, &v87);
  if (*(*&time[0].a + 8) == 1 && *&v83.f64[1] != 0)
  {
    sub_261489CFC(*&v83.f64[1], **&time[0].a);
  }

  sub_261489D4C(&v87);
  sub_261489D4C(&v82);
  v93[0] = 0;
  v92[0] = 0;
  *&v76 = 0;
  AppC3DConfigCreate();
  v9 = v93[0];
  if (v93[0] || !v92[0])
  {
    if (qword_280CB3210 != -1)
    {
      dispatch_once(&qword_280CB3210, &unk_2873CF648);
    }

    v15 = qword_280CB3208;
    if (!os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138543362;
    *&buf[4] = v9;
    v17 = "AppC3DConfigCreate failed, and returned %{public}@";
LABEL_164:
    _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    goto LABEL_43;
  }

  AppC3DConfigSetTrackingConfig();
  v10 = v93[0];
  if (v93[0])
  {
    if (qword_280CB3210 != -1)
    {
      dispatch_once(&qword_280CB3210, &unk_2873CF648);
    }

    v15 = qword_280CB3208;
    if (!os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138543362;
    *&buf[4] = v10;
    v17 = "AppC3DConfigSetTrackingConfig returned %{public}@";
    goto LABEL_164;
  }

  AppC3DConfigSetTrackingMode();
  v11 = v93[0];
  if (v93[0])
  {
    if (qword_280CB3210 != -1)
    {
      dispatch_once(&qword_280CB3210, &unk_2873CF648);
    }

    v15 = qword_280CB3208;
    if (!os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138543362;
    *&buf[4] = v11;
    v17 = "AppC3DConfigSetTrackingMode returned %{public}@";
    goto LABEL_164;
  }

  if (qword_280CB3E98 != -1)
  {
    dispatch_once_f(&qword_280CB3E98, 0, sub_26151BFB4);
  }

  if (byte_280CB3EA0 == 1)
  {
    if (qword_280CB3488 != -1)
    {
      dispatch_once_f(&qword_280CB3488, 0, sub_26151BFEC);
    }

    v12 = byte_280CB3490;
    if (qword_280CB3210 != -1)
    {
      dispatch_once(&qword_280CB3210, &unk_2873CF648);
    }

    v13 = qword_280CB3208;
    v14 = os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_26146F000, v13, OS_LOG_TYPE_DEBUG, "Device has ANE, will not tempt with fallback device.", buf, 2u);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_26146F000, v13, OS_LOG_TYPE_DEBUG, "Process is not entitled for access to ANE, will set fallback device to GPU.", buf, 2u);
      }

      AppC3DConfigSetANEFallbackDevice();
      v18 = v93[0];
      if (v93[0])
      {
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 138543362;
        *&buf[4] = v18;
        v73 = "AppC3DConfigSetANEFallbackDevice returned %{public}@";
        v74 = v13;
        goto LABEL_161;
      }
    }

    goto LABEL_31;
  }

  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  v15 = qword_280CB3208;
  if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26146F000, v15, OS_LOG_TYPE_DEBUG, "Device does not have ANE, will set fallback device to GPU.", buf, 2u);
  }

  AppC3DConfigSetANEFallbackDevice();
  v16 = v93[0];
  if (v93[0])
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138543362;
    *&buf[4] = v16;
    v17 = "AppC3DConfigSetANEFallbackDevice returned %{public}@";
    goto LABEL_164;
  }

LABEL_31:
  AppC3DCreate();
  v19 = v93[0];
  if (v93[0])
  {
    v20 = 1;
  }

  else
  {
    v20 = v76 == 0;
  }

  v21 = v20;
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  v22 = qword_280CB3208;
  if (!v21)
  {
    if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v76;
      _os_log_debug_impl(&dword_26146F000, v22, OS_LOG_TYPE_DEBUG, "AppC3D session created: %{public}p", buf, 0xCu);
    }

    operator new();
  }

  if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v19;
    v73 = "AppC3DCreate failed, and returned %{public}@";
    v74 = v22;
LABEL_161:
    _os_log_error_impl(&dword_26146F000, v74, OS_LOG_TYPE_ERROR, v73, buf, 0xCu);
  }

LABEL_43:
  if (v92[0])
  {
    AppC3DConfigRelease();
  }

  if (v93[0])
  {
    *buf = -3001;
    v79 = @"AppC3D error.";
    sub_261476754(v7, buf, &v79);
    v23 = atomic_exchange(v7 + 8, v93[0]);
    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (*(*&time[0].a + 8) == 1 && *&time[0].tx)
  {
    sub_261489CFC(*&time[0].tx, **&time[0].a);
  }

  sub_261489D4C(&time[0].b);
  sub_2614BD0B8(v3, 0);
  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

LABEL_52:
  v25 = *(a1 + 2);
  v24 = *(a1 + 3);
  v26 = *(a1 + 4);
  v27 = *(a1 + 5);
  v93[0] = &unk_2873CFF30;
  v93[1] = v27;
  v94 = v93;
  *buf = v24;
  v92[0] = &unk_2873CFF88;
  v92[1] = v27;
  v92[3] = v92;
  sub_261489C64(&buf[8], v92);
  if (*(*buf + 8) == 1 && v94 != 0)
  {
    sub_261489CFC(v94, **buf);
  }

  sub_261489D4C(v92);
  sub_261489D4C(v93);
  v79 = 0;
  sub_2614F51D8(&v76, v27);
  sub_2614F528C(&v87, v27);
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  v29 = qword_280CB3208;
  if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_DEBUG))
  {
    *&v82.f64[0] = sub_2614F5550(v27);
    explicit = atomic_load_explicit(&v82, memory_order_acquire);
    LODWORD(time[0].a) = 138543362;
    *(&time[0].a + 4) = explicit;
    _os_log_debug_impl(&dword_26146F000, v29, OS_LOG_TYPE_DEBUG, "start decoding sample: %{public}@", time, 0xCu);
    sub_26148E848(&v82);
    v32 = v78;
    v33 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v32)
    {
      if (!v33)
      {
        goto LABEL_67;
      }

      LOWORD(time[0].a) = 0;
      v34 = "has PTS";
    }

    else
    {
      if (!v33)
      {
        goto LABEL_67;
      }

      LOWORD(time[0].a) = 0;
      v34 = "no PTS, will use current time";
    }

    _os_log_debug_impl(&dword_26146F000, v29, OS_LOG_TYPE_DEBUG, v34, time, 2u);
LABEL_67:
    v35 = v91;
    v36 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v35 == 1)
    {
      if (v36)
      {
        LOWORD(time[0].a) = 0;
        v37 = "has camera intrinsic matrix";
        goto LABEL_133;
      }
    }

    else if (v36)
    {
      LOWORD(time[0].a) = 0;
      v37 = "no camera intrinsic matrix, will derive from pixel buffer";
LABEL_133:
      _os_log_debug_impl(&dword_26146F000, v29, OS_LOG_TYPE_DEBUG, v37, time, 2u);
      if (v32)
      {
        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v32)
    {
      goto LABEL_61;
    }

    goto LABEL_72;
  }

  if (v78)
  {
LABEL_61:
    *&time[0].a = v76;
    time[0].c = v77;
    CMTimeGetSeconds(time);
    goto LABEL_73;
  }

LABEL_72:
  CFAbsoluteTimeGetCurrent();
LABEL_73:
  if (v91 == 1)
  {
    v82 = vcvtq_f64_f32(vzip1_s32(*v87.i8, *v88.i8));
    v83 = vcvtq_f64_f32(__PAIR64__(v87.u32[1], v89.u32[0]));
    v84 = vcvtq_f64_f32(vzip2_s32(*v88.i8, v89));
    v85 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v87, v87, 8uLL), *&vextq_s8(v88, v88, 8uLL)));
    v86 = v90;
  }

  else
  {
    v82 = COERCE_UNSIGNED_INT64(CGRectGetWidth(*(*v27 + 1)));
    v83.f64[0] = (CGRectGetWidth(*(*v27 + 1)) + -1.0) * 0.5;
    v83.f64[1] = 0.0;
    v84.f64[0] = CGRectGetWidth(*(*v27 + 1));
    v84.f64[1] = (CGRectGetHeight(*(*v27 + 1)) + -1.0) * 0.5;
    v85 = 0uLL;
    v86 = 1.0;
  }

  if (!*v4 || v4[1] != v4[2] || (v4[16] & 1) != 0)
  {
LABEL_142:
    if (!v79)
    {
      goto LABEL_82;
    }

    goto LABEL_143;
  }

  atomic_load_explicit(*v27, memory_order_acquire);
  AppC3DProcessCameraFrameData();
  v38 = v79;
  if (v79)
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }

    LODWORD(time[0].a) = 138543362;
    *(&time[0].a + 4) = v38;
    v71 = "AppC3DProcessCameraFrameData returned %{public}@";
    goto LABEL_141;
  }

  AppC3DWait();
  v39 = v79;
  if (v79)
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }

    LODWORD(time[0].a) = 138543362;
    *(&time[0].a + 4) = v39;
    v71 = "AppC3DWait returned %{public}@";
LABEL_141:
    _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, v71, time, 0xCu);
    goto LABEL_142;
  }

  AppC3DFlush();
  v40 = v79;
  if (!v79)
  {
    goto LABEL_82;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    LODWORD(time[0].a) = 138543362;
    *(&time[0].a + 4) = v40;
    v71 = "AppC3DFlush returned %{public}@";
    goto LABEL_141;
  }

LABEL_143:
  time[0].a = NAN;
  v75 = @"AppC3D error.";
  sub_261476754(v4 + 4, time, &v75);
  v72 = atomic_exchange(v4 + 12, v79);
  if (v72)
  {
    CFRelease(v72);
  }

LABEL_82:
  if (*(v4 + 128) == 1)
  {
    v42 = v4[1];
    v41 = v4[2];
    if (v41 == v42)
    {
      v4[2] = v42;
      LOBYTE(time[0].a) = 0;
      v81 = 0;
    }

    else
    {
      do
      {
        v41 = sub_261477724(v41 - 1);
      }

      while (v41 != v42);
      v43 = *(v4 + 128);
      v4[2] = v42;
      LOBYTE(time[0].a) = 0;
      v81 = 0;
      if ((v43 & 1) == 0)
      {
LABEL_110:
        sub_261477470(v25, time);
        if (v81 == 1)
        {
          sub_261501098(time);
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_261501518(&v75, v25);
          v70 = atomic_load_explicit(&v75, memory_order_acquire);
          LODWORD(time[0].a) = 138543362;
          *(&time[0].a + 4) = v70;
          _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "failed to decode, error: %{public}@", time, 0xCu);
          sub_261476C54(&v75);
        }

        goto LABEL_114;
      }
    }

    sub_26150122C(time, v4 + 4);
    v81 = 1;
    if (v4[16])
    {
      sub_261501098(v4 + 4);
      *(v4 + 128) = 0;
    }

    goto LABEL_110;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v44 = (v4[2] - v4[1]) >> 3;
    LODWORD(time[0].a) = 134349056;
    *(&time[0].a + 4) = v44;
    _os_log_impl(&dword_26146F000, v29, OS_LOG_TYPE_INFO, "finished decoding, number of descriptors: %{public}zu", time, 0xCu);
  }

  v45 = v4[2];
  v46 = v4[1];
  if (v46 != v45)
  {
    do
    {
      if (*(atomic_load_explicit(v46, memory_order_acquire) + 64) == 1)
      {
        v47 = atomic_load_explicit(v46, memory_order_acquire);
        v48 = *(v47 + 40);
        v49 = *(v47 + 48);
        while (v48 != v49)
        {
          memset(time, 0, 48);
          Width = CGRectGetWidth(*(*v27 + 1));
          Height = CGRectGetHeight(*(*v27 + 1));
          CGAffineTransformMakeScale(time, Width, Height);
          *v48 = vaddq_f64(*&time[0].tx, vmlaq_n_f64(vmulq_n_f64(*&time[0].c, v48[1]), *&time[0].a, *v48));
          v48 += 2;
        }
      }

      ++v46;
    }

    while (v46 != v45);
    v53 = v4[1];
    v52 = v4[2];
    v54 = v52 - v53;
    v55 = v52 - v53;
    if (v55 >= 1)
    {
      v57 = v26[1];
      v56 = v26[2];
      if (v56 - v57 >= v54)
      {
        while (v53 != v52)
        {
          *v57++ = atomic_exchange(v53++, 0);
        }

        v26[1] = v57;
      }

      else
      {
        v58 = *v26;
        v59 = v57 - *v26;
        v60 = v55 + (v59 >> 3);
        if (v60 >> 61)
        {
          sub_2614709BC();
        }

        v61 = v56 - v58;
        v62 = (v56 - v58) >> 2;
        if (v62 > v60)
        {
          v60 = v62;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v60;
        }

        *&time[0].tx = v26;
        if (v63)
        {
          sub_261470E48(v63);
        }

        v64 = (8 * (v59 >> 3));
        time[0].a = 0.0;
        *&time[0].b = v64;
        *&time[0].c = v64;
        time[0].d = 0.0;
        *&v65 = v64 + v54;
        do
        {
          *v64++ = atomic_exchange(v53++, 0);
          v54 -= 8;
        }

        while (v54);
        time[0].c = v65;
        sub_26147875C(v26, time, v57);
        sub_261478814(time);
      }
    }

    v67 = v4[1];
      ;
    }

    v4[2] = v67;
    v30 = 1;
    goto LABEL_123;
  }

LABEL_114:
  v30 = 0;
LABEL_123:
  if (*(*buf + 8) == 1 && v96 != 0)
  {
    sub_261489CFC(v96, **buf);
  }

  sub_261489D4C(&buf[8]);
  return v30;
}

uint64_t sub_2614BE85C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_126AppClipCodeDecoderInternal6decodeERNS_13DecoderResultERNSt3__18optionalINS_5ErrorEEERKNS5_IyEERKNS_6SampleERKNS5_INS4_17reference_wrapperIKNS_6RegionEEEEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614BE898(uint64_t a1, os_signpost_id_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3208;
    if (os_signpost_enabled(qword_280CB3208))
    {
      Width = CGRectGetWidth(*(**(a1 + 8) + 8));
      Height = CGRectGetHeight(*(**(a1 + 8) + 8));
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(**(a1 + 8), memory_order_acquire));
      v8[0] = 67110144;
      v8[1] = 17;
      v9 = 2050;
      v10 = Width;
      v11 = 1024;
      v12 = 17;
      v13 = 2050;
      v14 = Height;
      v15 = 1026;
      v16 = PixelFormatType;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v3, "AppClipCodeDecoderInternal::decode", "samplePixelBufferWidth=%{public, signpost.description:attribute}.*g, samplePixelBufferHeight=%{public, signpost.description:attribute}.*g, samplePixelBufferPixelFormatType=0x%{public, signpost.description:attribute}x", v8, 0x28u);
    }
  }
}

uint64_t sub_2614BEA00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CFF88;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614BEAA0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_126AppClipCodeDecoderInternal6decodeERNS_13DecoderResultERNSt3__18optionalINS_5ErrorEEERKNS5_IyEERKNS_6SampleERKNS5_INS4_17reference_wrapperIKNS_6RegionEEEEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614BEADC(uint64_t a1, os_signpost_id_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3208;
    if (os_signpost_enabled(qword_280CB3208))
    {
      Width = CGRectGetWidth(*(**(a1 + 8) + 8));
      Height = CGRectGetHeight(*(**(a1 + 8) + 8));
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(**(a1 + 8), memory_order_acquire));
      v8[0] = 67110144;
      v8[1] = 17;
      v9 = 2050;
      v10 = Width;
      v11 = 1024;
      v12 = 17;
      v13 = 2050;
      v14 = Height;
      v15 = 1026;
      v16 = PixelFormatType;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "AppClipCodeDecoderInternal::decode", "samplePixelBufferWidth=%{public, signpost.description:attribute}.*g, samplePixelBufferHeight=%{public, signpost.description:attribute}.*g, samplePixelBufferPixelFormatType=0x%{public, signpost.description:attribute}x", v8, 0x28u);
    }
  }
}

uint64_t sub_2614BEC44(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CFF30;
  a2[1] = v2;
  return result;
}

void sub_2614BECD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v95 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a7 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  v11 = qword_280CB3208;
  if (v10)
  {
    if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = a7;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "AppC3D update callback called with error %{public}@", buf, 0xCu);
    }
  }

  else
  {
    oslog = qword_280CB3208;
    if (os_log_type_enabled(qword_280CB3208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_debug_impl(&dword_26146F000, oslog, OS_LOG_TYPE_DEBUG, "AppC3D update callback called with tracking result: %{public}p", buf, 0xCu);
    }

    v90 = 0;
    NumberOfTrackingData = AppC3DTrackingResultGetNumberOfTrackingData();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      *&buf[4] = v8;
      *&buf[12] = 2050;
      *&buf[14] = NumberOfTrackingData;
      _os_log_impl(&dword_26146F000, oslog, OS_LOG_TYPE_INFO, "Tracking result %{public}p has %{public}zu tracking data.", buf, 0x16u);
    }

    if (NumberOfTrackingData)
    {
      v12 = 0;
      v13 = &buf[16];
      while (1)
      {
        Data = AppC3DTrackingResultCreateData();
        v14 = atomic_load_explicit(&Data, memory_order_acquire);
        v15 = v90;
        if (v14)
        {
          v16 = v90 == 0;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v15;
            _os_log_error_impl(&dword_26146F000, oslog, OS_LOG_TYPE_ERROR, "AppC3DTrackingResultCreateData failed, and returned %{public}@", buf, 0xCu);
          }

          goto LABEL_86;
        }

        Corners = AppC3DTrackingResultCreateCorners();
        v17 = atomic_load_explicit(&Corners, memory_order_acquire);
        v18 = v90;
        if (!v17 || v90 != 0)
        {
          break;
        }

        if (CFArrayGetCount(atomic_load_explicit(&Corners, memory_order_acquire)) != 4)
        {
          if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }

          Count = CFArrayGetCount(atomic_load_explicit(&Corners, memory_order_acquire));
          *buf = 134349056;
          *&buf[4] = Count;
          v77 = "AppC3DTrackingResultCreateCorners returns unexpected number of corners: %{public}ld";
          v79 = buf;
          v80 = oslog;
          goto LABEL_94;
        }

        v20 = v8;
        v21 = v13;
        v22 = 0;
        v23 = buf;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&Corners, memory_order_acquire), v22);
          v25 = ValueAtIndex;
          if (!ValueAtIndex || (v26 = CFGetTypeID(ValueAtIndex), v26 != CFDictionaryGetTypeID()))
          {
            v82 = oslog;
            if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }

            *v94 = 134349056;
            *&v94[4] = v22;
            v77 = "AppC3DTrackingResultCreateCorners returns unexpected object at: %{public}ld";
            goto LABEL_92;
          }

          if (!CGPointMakeWithDictionaryRepresentation(v25, v23))
          {
            v82 = oslog;
            if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }

            *v94 = 134349056;
            *&v94[4] = v22;
            v77 = "AppC3DTrackingResultCreateCorners returns unexpected object at: %{public}ld";
            goto LABEL_92;
          }

          ++v22;
          ++v23;
        }

        while (v22 != 4);
        v27 = 0;
        v13 = v21;
        v28 = *v21;
        *v21 = v93;
        v93 = v28;
        v29 = buf;
        v30 = *buf;
        do
        {
          v31 = v29;
          v29 = &buf[v27 + 16];
          v32 = *v29 + *&buf[v27 + 24];
          v33 = v30 + *(v31 + 1);
          if (v32 >= v33)
          {
            v29 = v31;
          }

          else
          {
            v30 = *&buf[v27 + 16];
          }

          v27 += 16;
        }

        while (v27 != 48);
        v34 = v29 - buf;
        v35 = v29 == buf || v29 == v94;
        v8 = v20;
        if (!v35)
        {
          if (v13 == v29)
          {
            v41 = *buf;
            v42 = *v13;
            v43 = *(v13 + 2);
            *&buf[16] = *(v13 + 1);
            v92 = v43;
            *buf = v42;
            v93 = v41;
          }

          else
          {
            v36 = v31 + 16;
            if (v32 < v33 || v36 == v94)
            {
              v38 = v93;
              v40 = *&buf[16];
              v39 = v92;
              *v13 = *buf;
              *(v13 + 1) = v40;
              *(v13 + 2) = v39;
              *buf = v38;
            }

            else
            {
              v44 = v34 >> 4;
              if (v34 >> 4 == (v94 - v29) >> 4)
              {
                v45 = v29 + 16;
                v46 = v13;
                do
                {
                  *v94 = *(v46 - 1);
                  v47 = *v94;
                  *(v46 - 1) = *(v45 - 1);
                  *(v45 - 1) = v47;
                  if (v46 == v29)
                  {
                    break;
                  }

                  v46 += 16;
                  v9 = v45 == v94;
                  v45 += 16;
                }

                while (!v9);
              }

              else
              {
                v48 = (v94 - v29) >> 4;
                v49 = v34 >> 4;
                do
                {
                  v50 = v49;
                  v49 = v48;
                  v48 = v50 % v48;
                }

                while (v48);
                v51 = &buf[16 * v49];
                do
                {
                  v52 = *(v51 - 1);
                  v51 -= 16;
                  *v94 = v52;
                  v53 = &v51[v34];
                  v54 = v51;
                  do
                  {
                    v55 = v54;
                    v54 = v53;
                    *v55 = *v53;
                    v56 = __OFSUB__(v44, (v94 - v53) >> 4);
                    v58 = v44 - ((v94 - v53) >> 4);
                    v57 = (v58 < 0) ^ v56;
                    v53 = &buf[16 * v58];
                    if (v57)
                    {
                      v53 = (v54 + v34);
                    }
                  }

                  while (v53 != v51);
                  *v54 = *v94;
                }

                while (v51 != buf);
              }
            }
          }
        }

        AppC3DTrackingResultGetConfidence();
        v60 = v90;
        if (v90)
        {
          v82 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *v94 = 138543362;
            *&v94[4] = v60;
            v77 = "AppC3DTrackingResultGetConfidence returned %{public}@";
LABEL_92:
            v79 = v94;
            goto LABEL_93;
          }

LABEL_85:
          sub_261476A0C(&Corners);
LABEL_86:
          sub_2614BF7E0(&Data);
          goto LABEL_87;
        }

        v61 = v59;
        Metadata = AppC3DTrackingResultGetMetadata();
        v63 = v90;
        if (v90)
        {
          v82 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *v94 = 138543362;
            *&v94[4] = v63;
            v77 = "AppC3DTrackingResultGetMetadata returned %{public}@";
            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v64 = Metadata;
        DataVersion = AppC3DTrackingResultGetDataVersion();
        v66 = v90;
        if (v90)
        {
          v82 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *v94 = 138543362;
            *&v94[4] = v66;
            v77 = "AppC3DTrackingResultGetDataVersion returned %{public}@";
            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v67 = DataVersion;
        *v94 = sub_2614BF584();
        if (!atomic_load_explicit(v94, memory_order_acquire))
        {
          sub_261477724(v94);
          goto LABEL_85;
        }

        v68 = atomic_exchange((atomic_load_explicit(v94, memory_order_acquire) + 16), CFRetain(@"AppClipCode"));
        if (v68)
        {
          CFRelease(v68);
        }

        v69 = atomic_exchange((atomic_load_explicit(v94, memory_order_acquire) + 24), atomic_exchange(&Data, 0));
        if (v69)
        {
          CFRelease(v69);
        }

        explicit = atomic_load_explicit(v94, memory_order_acquire);
        if (*(explicit + 64) == 1)
        {
          v71 = *(explicit + 40);
          if (v71)
          {
            *(explicit + 48) = v71;
            operator delete(v71);
          }

          *(explicit + 64) = 0;
        }

        *(explicit + 40) = 0;
        *(explicit + 48) = 0;
        *(explicit + 56) = 0;
        sub_2614BF814(explicit + 40, buf, v94, 4uLL);
        *(explicit + 64) = 1;
        v72 = atomic_load_explicit(v94, memory_order_acquire);
        *(v72 + 32) = v61;
        *(v72 + 36) = 1;
        v73 = atomic_load_explicit(v94, memory_order_acquire);
        *(v73 + 216) = 0;
        *(v73 + 220) = 1;
        *(atomic_load_explicit(v94, memory_order_acquire) + 216) = v64 | 0x100;
        *(atomic_load_explicit(v94, memory_order_acquire) + 218) = v67 | 0x100;
        v74 = a1;
        v75 = a1[2];
        if (v75 >= a1[3])
        {
          v76 = sub_2614BF6E4((a1 + 1), v94);
          v74 = a1;
        }

        else
        {
          *v75 = atomic_exchange(v94, 0);
          v76 = (v75 + 1);
        }

        v74[2] = v76;
        sub_261477724(v94);
        sub_261476A0C(&Corners);
        sub_2614BF7E0(&Data);
        if (++v12 == NumberOfTrackingData)
        {
          goto LABEL_87;
        }
      }

      v82 = oslog;
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      *buf = 138543362;
      *&buf[4] = v18;
      v77 = "AppC3DTrackingResultCreateCorners failed, and returned %{public}@";
      v79 = buf;
LABEL_93:
      v80 = v82;
LABEL_94:
      _os_log_error_impl(&dword_26146F000, v80, OS_LOG_TYPE_ERROR, v77, v79, 0xCu);
      goto LABEL_85;
    }

LABEL_87:
    if (v90)
    {
      *buf = -3001;
      *v94 = @"AppC3D error.";
      sub_261476754(a1 + 4, buf, v94);
      v78 = atomic_exchange(a1 + 12, v90);
      if (v78)
      {
        CFRelease(v78);
      }
    }
  }
}

void sub_2614BF52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  sub_261476A0C(va);
  sub_2614BF7E0(va1);
  _Unwind_Resume(a1);
}

_OWORD *sub_2614BF584()
{
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    v2 = CFGetTypeID(Instance);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v2 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }

    v1[20] = 0u;
    v1[21] = 0u;
    v1[18] = 0u;
    v1[19] = 0u;
    v1[16] = 0u;
    v1[17] = 0u;
    v1[14] = 0u;
    v1[15] = 0u;
    v1[12] = 0u;
    v1[13] = 0u;
    v1[10] = 0u;
    v1[11] = 0u;
    v1[8] = 0u;
    v1[9] = 0u;
    v1[6] = 0u;
    v1[7] = 0u;
    v1[4] = 0u;
    v1[5] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    v1[1] = 0u;
    v3 = CFGetTypeID(v1);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v3 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }
  }

  return v1;
}

uint64_t sub_2614BF6E4(uint64_t a1, atomic_ullong *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_2614709BC();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_261470E48(v6);
  }

  v13 = 0;
  v14 = 8 * v2;
  v15 = 8 * v2;
  v16 = 0;
  *(8 * v2) = atomic_exchange(a2, 0);
  v15 += 8;
  v7 = v15;
  v8 = *(a1 + 8);
  v9 = (v14 + *a1 - v8);
  sub_261478864(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_261478814(&v13);
  return v7;
}

void sub_2614BF7CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261478814(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614BF7E0(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2614BF814(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2614BF888(result, a4);
  }

  return result;
}

void sub_2614BF86C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614BF888(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_261473150(a2);
  }

  sub_2614709BC();
}

uint64_t sub_2614BF8C8()
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (qword_281EB2618)
  {
    _os_assumes_log();
  }

  if (qword_27FEB43E8)
  {
    _os_assumes_log();
  }

  qword_281EB2618 = "MRCDescriptor";
  qword_27FEB43E8 = _CFRuntimeRegisterClass();
  v1[0] = &unk_2873D70B0;
  v1[3] = v1;
  sub_2614BAFE0(qword_27FEB43E8, v1);
  return sub_26147B420(v1);
}

void sub_2614BF990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2614BF9B8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc2CFINS_10DescriptorENS_2cf6TraitsIS1_NS2_13PersonalitiesIS1_XtlNS_12fixed_stringILm13EEEtlNS_18basic_fixed_stringIcLm13ENSt3__111char_traitsIcEEEEtlA14_cLc77ELc82ELc67ELc68ELc101ELc115ELc99ELc114ELc105ELc112ELc116ELc111ELc114EEEEEJEEEEEE18registerClassOnce_EPvEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_2614BF9F4@<X0>(CFTypeRef *a1@<X1>, CFStringRef *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = CFGetTypeID(*a1);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v4 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }
  }

  result = sub_2615351C4(v3 + 16, 1);
  *a2 = result;
  return result;
}

CFStringRef sub_2614BFB18(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v2 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }
  }

  result = sub_2615351C4(cf + 16, 0);
  if (!result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<%s %p>", "MRCDescriptor", cf);
  }

  return result;
}

unint64_t sub_2614BFBD8(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v2 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }
  }

  v3 = 3317042773;
  v41 = 0;
  explicit = atomic_load_explicit(cf + 2, memory_order_acquire);
  v5 = 3317042773;
  if (explicit)
  {
    v5 = CFHash(explicit) + 2654435769u;
  }

  v41 ^= v5 + (v41 << 6) + (v41 >> 2);
  v6 = atomic_load_explicit(cf + 3, memory_order_acquire);
  v7 = 3317042773;
  if (v6)
  {
    v7 = CFHash(v6) + 2654435769u;
  }

  v8 = (v7 + (v41 << 6) + (v41 >> 2)) ^ v41;
  v9 = *(cf + 8);
  v10 = LODWORD(v9) + 2654435769;
  if (v9 == 0.0)
  {
    v10 = 2654435769;
  }

  if (*(cf + 36))
  {
    v11 = v10;
  }

  else
  {
    v11 = 3317042773;
  }

  v41 = ((v8 >> 2) + (v8 << 6) + v11) ^ v8;
  sub_261536210(&v41, (cf + 5));
  sub_261536210(&v41, (cf + 9));
  if (*(cf + 105))
  {
    v12 = *(cf + 104) + 2654435769;
  }

  else
  {
    v12 = 3317042773;
  }

  v13 = ((v41 >> 2) + (v41 << 6) + v12) ^ v41;
  v14 = 3317042773;
  if (*(cf + 136) == 1)
  {
    v14 = 3317042773;
    if (cf[16])
    {
      v15 = cf[14];
      v14 = 2654435769;
      if (v15 != cf + 15)
      {
        v16 = 0;
        do
        {
          v17 = v15[1];
          v18 = v15;
          if (v17)
          {
            do
            {
              v19 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v19 = v18[2];
              v20 = *v19 == v18;
              v18 = v19;
            }

            while (!v20);
          }

          v16 ^= (v16 << 6) + 2654435769u + (v16 >> 2) + ((*(v15 + 8) + 2654435769 + ((*(v15 + 7) + 2654435769) << 6) + ((*(v15 + 7) + 2654435769) >> 2)) ^ (*(v15 + 7) + 2654435769));
          v15 = v19;
        }

        while (v19 != cf + 15);
        v14 = v16 + 2654435769u;
      }
    }
  }

  v21 = (v14 + (v13 << 6) + (v13 >> 2)) ^ v13;
  v22 = 3317042773;
  if (*(cf + 164) == 1)
  {
    if (*(cf + 148))
    {
      v23 = *(cf + 36) + 2654435769;
    }

    else
    {
      v23 = 3317042773;
    }

    if (*(cf + 156))
    {
      v24 = *(cf + 38) + 2654435769;
    }

    else
    {
      v24 = 3317042773;
    }

    v25 = ((v23 >> 2) + (v23 << 6) + v24) ^ v23;
    if (*(cf + 161))
    {
      v26 = *(cf + 160) + 2654435769;
    }

    else
    {
      v26 = 3317042773;
    }

    v22 = ((v26 + (v25 << 6) + (v25 >> 2)) ^ v25) + 2654435769u;
  }

  v27 = (v22 + (v21 << 6) + (v21 >> 2)) ^ v21;
  v41 = v27;
  v28 = 3317042773;
  if (*(cf + 208) == 1)
  {
    v29 = *(cf + 168);
    v30 = *(cf + 192);
    v31 = cf[22];
    v32 = cf[23];
    v33 = atomic_load_explicit(cf + 25, memory_order_acquire);
    v34 = 3317042773;
    if (v33)
    {
      v34 = CFHash(v33) + 2654435769u;
    }

    v35 = v32 + 2654435769;
    if (!v30)
    {
      v35 = 3317042773;
    }

    v36 = (v35 + (((v31 + ((v29 + 2654435769) << 6) + 3318044711) ^ (v29 + 2654435769)) << 6) + (((v31 + ((v29 + 2654435769) << 6) + 3318044711) ^ (v29 + 2654435769)) >> 2)) ^ (v31 + ((v29 + 2654435769) << 6) + 3318044711) ^ (v29 + 2654435769);
    v28 = (((v36 >> 2) + (v36 << 6) + v34) ^ v36) + 2654435769u;
    v27 = v41;
  }

  if (*(cf + 220) == 1)
  {
    if (*(cf + 217))
    {
      v37 = *(cf + 216) + 2654435769;
    }

    else
    {
      v37 = 3317042773;
    }

    if (*(cf + 219))
    {
      v38 = *(cf + 218) + 2654435769;
    }

    else
    {
      v38 = 3317042773;
    }

    v3 = (((v37 >> 2) + (v37 << 6) + v38) ^ v37) + 2654435769u;
  }

  v39 = (v28 + (v27 << 6) + (v27 >> 2)) ^ v27;
  return (v3 + (v39 << 6) + (v39 >> 2)) ^ v39;
}

uint64_t sub_2614BFF74(unsigned __int8 *cf, unsigned __int8 *a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  if (v4 != qword_27FEB43E8)
  {
    _os_assumes_log();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v5 = CFGetTypeID(a2);
  if (qword_27FEB43E0 != -1)
  {
    dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
  }

  if (v5 != qword_27FEB43E8)
  {
    _os_assumes_log();
  }

LABEL_10:
  explicit = atomic_load_explicit(a2 + 2, memory_order_acquire);
  v7 = atomic_load_explicit(cf + 2, memory_order_acquire);
  if (v7 != explicit)
  {
    v8 = !explicit || v7 == 0;
    if ((v8 || !CFEqual(v7, explicit)) && (!atomic_load_explicit(cf + 2, memory_order_acquire) || !atomic_load_explicit(a2 + 2, memory_order_acquire) || CFStringCompare(atomic_load_explicit(cf + 2, memory_order_acquire), atomic_load_explicit(a2 + 2, memory_order_acquire), 0)))
    {
      return 0;
    }
  }

  v9 = atomic_load_explicit(a2 + 3, memory_order_acquire);
  v10 = atomic_load_explicit(cf + 3, memory_order_acquire);
  if (v10 != v9)
  {
    result = 0;
    if (!v9)
    {
      return result;
    }

    if (!v10)
    {
      return result;
    }

    result = CFEqual(v10, v9);
    if (!result)
    {
      return result;
    }
  }

  v12 = cf[36];
  v13 = a2[36];
  if (v12 == v13 && cf[36])
  {
    if (*(cf + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  result = sub_261534F24((cf + 40), (a2 + 40));
  if (!result)
  {
    return result;
  }

  result = sub_261534F24((cf + 72), (a2 + 72));
  if (!result)
  {
    return result;
  }

  v14 = cf[105];
  v15 = a2[105];
  if (v14 == v15 && cf[105])
  {
    v14 = cf[104];
    v15 = a2[104];
  }

  if (v14 != v15)
  {
    return 0;
  }

  v16 = cf[136];
  v17 = a2[136];
  if (v16 == v17 && cf[136])
  {
    if ((sub_261534FAC(cf + 14, *(a2 + 14), *(a2 + 16)) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = cf[164];
  v19 = a2[164];
  if (v18 == v19 && cf[164])
  {
    if (!sub_261535054(cf + 36, a2 + 36))
    {
      return 0;
    }

    goto LABEL_46;
  }

  if (v18 != v19)
  {
    return 0;
  }

LABEL_46:
  v20 = cf[208];
  v21 = a2[208];
  if (v20 == v21 && cf[208])
  {
    if (!sub_2615350D0(cf + 168, a2 + 168))
    {
      return 0;
    }
  }

  else if (v20 != v21)
  {
    return 0;
  }

  v22 = a2[220];
  v23 = cf[220];
  v8 = v23 == v22;
  v24 = v23 != v22;
  if (v8)
  {
    if (cf[220])
    {
      v24 = !sub_26153516C(cf + 216, a2 + 216);
    }
  }

  return !v24;
}

atomic_ullong *sub_2614C0228(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v2 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_27FEB43E0 != -1)
    {
      dispatch_once_f(&qword_27FEB43E0, 0, sub_2614BF8C8);
    }

    if (v3 != qword_27FEB43E8)
    {
      _os_assumes_log();
    }
  }

  if (*(cf + 344) == 1)
  {
    v4 = cf[40];
    if (v4)
    {
      cf[41] = v4;
      operator delete(v4);
    }
  }

  if (*(cf + 312) == 1)
  {
    v5 = cf[36];
    if (v5)
    {
      cf[37] = v5;
      operator delete(v5);
    }
  }

  if (*(cf + 208) == 1)
  {
    sub_2614BF7E0(cf + 25);
  }

  if (*(cf + 136) == 1)
  {
    sub_2614802C0(cf[15]);
  }

  if (*(cf + 96) == 1)
  {
    v6 = cf[9];
    if (v6)
    {
      cf[10] = v6;
      operator delete(v6);
    }
  }

  if (*(cf + 64) == 1)
  {
    v7 = cf[5];
    if (v7)
    {
      cf[6] = v7;
      operator delete(v7);
    }
  }

  sub_2614BF7E0(cf + 3);

  return sub_26148E848(cf + 2);
}

uint64_t sub_2614C03C4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_126AppClipCodeDecoderInternal6createERNSt3__18optionalINS_5ErrorEEERKNS3_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614C0400(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3208;
    if (os_signpost_enabled(qword_280CB3208))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "AppClipCodeDecoderInternal::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614C0538(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_126AppClipCodeDecoderInternal6createERNSt3__18optionalINS_5ErrorEEERKNS3_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614C0574(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3210 != -1)
  {
    dispatch_once(&qword_280CB3210, &unk_2873CF648);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3208;
    if (os_signpost_enabled(qword_280CB3208))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "AppClipCodeDecoderInternal::create", &unk_26159692B, v4, 2u);
    }
  }
}

__n128 sub_2614C06A8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D0090;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 sub_2614C076C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D0BF0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_2614C0858(uint64_t a1)
{
  sub_2614C0890(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614C0890(uint64_t a1)
{
  *a1 = &unk_2873D1A58;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_2614705CC(v4);
  }

  v6 = (a1 + 40);
  sub_26147086C(&v6);
  v6 = (a1 + 16);
  sub_261470CC4(&v6);
  return a1;
}

uint64_t sub_2614C0920(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1A58;
  *(a1 + 12) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_261470BE0(a1 + 16, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v6 = *a2;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    v7 = *(a1 + 64);
    if (v7)
    {
      sub_2614705CC(v7);
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = v6;
  return a1;
}

void sub_2614C09B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2614C0B34(a4);
    }

    sub_2614709BC();
  }
}

uint64_t sub_2614C0ACC(uint64_t a1)
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

void sub_2614C0B34(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2614709D4();
}

void sub_2614C0B8C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D12D8;
  *(a1 + 16) = 0;
  operator new();
}

void sub_2614C0C34(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2614C0CF4(uint64_t a1)
{
  *a1 = &unk_2873D1780;
  v1 = (a1 + 16);
  sub_2614C0C34(&v1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614C0D6C(uint64_t a1)
{
  *a1 = &unk_2873D1780;
  v3 = (a1 + 16);
  sub_2614C0C34(&v3);
  return a1;
}

void sub_2614C0DC4(void *a1)
{
  *a1 = &unk_2873D1208;
  a1[2] = &unk_2873D12B8;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_2614C0E54(void *a1)
{
  *a1 = &unk_2873D1208;
  a1[2] = &unk_2873D12B8;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[4] = 0;
  return a1;
}

uint64_t sub_2614C0F6C(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    v5 = a2;
    sub_261497D08(a1, &v5);
    sub_2614705CC(a2);
  }

  else
  {
    v5 = 0;
    sub_261497D08(a1, &v5);
  }

  *a1 = &unk_2873D1898;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_2614C1000@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 24);
  if (!v3)
  {
    v4 = *(result + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
      sub_2614705CC(v4);
    }

    (*(*v4 + 16))(v4);
    (*(*v4 + 24))(v4);
    LODWORD(v5) = 0;
    sub_2614836CC(&__p, 0x20uLL);
    sub_261482FFC(&v5);
  }

  atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  *a2 = v3;
  return result;
}

void sub_2614C1454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, void *__p, uint64_t a15)
{
  __cxa_free_exception(v15);
  if (a13)
  {
    sub_2614705CC(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2614C14E8(void *a1)
{
  sub_2614C1520(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614C1520(void *a1)
{
  *a1 = &unk_2873D1898;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  *a1 = &unk_2873D1248;
  v4 = a1[2];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  return a1;
}

uint64_t sub_2614C16EC(uint64_t a1)
{
  if (*(a1 + 44) || *(a1 + 48) || (result = *(a1 + 24)) == 0)
  {
    result = *(a1 + 16);
    if (!result)
    {
      operator new[]();
    }
  }

  return result;
}

void *sub_2614C17E8(uint64_t a1, int a2, void *a3)
{
  if (a2 < 0 || (*(*a1 + 24))(a1) <= a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "Requested row is outside the image");
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  v6 = (*(*a1 + 16))(a1);
  if (!a3)
  {
    operator new[]();
  }

  v7 = (*(a1 + 24) + *(a1 + 44) + (*(a1 + 48) + a2) * *(a1 + 32));

  return memcpy(a3, v7, v6);
}

void sub_2614C1928(void *a1)
{
  *a1 = &unk_2873D1830;
  v1 = a1[2];
  if (v1)
  {
    MEMORY[0x2667045B0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614C19A4(void *a1)
{
  *a1 = &unk_2873D1830;
  v2 = a1[2];
  if (v2)
  {
    MEMORY[0x2667045B0](v2, 0x1000C8077774924);
  }

  return a1;
}

uint64_t sub_2614C1A00(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v1;
  do
  {
    v5 = *(v2 + 32);
    if ((v5 & 0x80000000) == 0)
    {
      v4 = v2;
    }

    v2 = *(v2 + ((v5 >> 28) & 8));
  }

  while (v2);
  if (v4 != v1 && *(v4 + 32) <= 0)
  {
    return (*(**(v4 + 40) + 16))(*(v4 + 40), 0);
  }

  else
  {
    return 0;
  }
}

void sub_2614C1C18(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2873D0998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}