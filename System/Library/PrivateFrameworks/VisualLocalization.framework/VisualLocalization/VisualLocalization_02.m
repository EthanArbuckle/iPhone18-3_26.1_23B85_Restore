void std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::destroy(a1[1]);
    if (a1[8])
    {
      v2 = a1[7];
      v3 = *(a1[6] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[8] = 0;
      if (v2 != a1 + 6)
      {
        do
        {
          v5 = v2[1];

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 6);
      }
    }

    operator delete(a1);
  }
}

void VLEnumerateTokensInString(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x277CD89E0];
  v9 = a1;
  v10 = [[v8 alloc] initWithUnit:0];
  [v10 setString:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __VLEnumerateTokensInString_block_invoke;
  v12[3] = &unk_279E2DA48;
  v13 = v7;
  v11 = v7;
  [v10 enumerateTokensInRange:a2 usingBlock:{a3, v12}];
}

uint64_t __VLEnumerateTokensInString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    *a5 = 0;
  }

  return result;
}

uint64_t __VLGetTraceLog_block_invoke()
{
  qword_281181C88 = os_log_create("com.apple.VisualLocalization", "Trace");

  return MEMORY[0x2821F96F8]();
}

uint64_t _vlTrackCallback(void *a1, _DWORD *a2, char **a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  if (v7)
  {
    a1 = v7;
    if (qword_281181CD8 == -1)
    {
      v8 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v22) = 0;
      _os_log_fault_impl(&dword_27103D000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Assertion failed: self != ((void*)0)", &v22, 2u);
    }

    __break(1u);
  }

  dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  v8 = qword_281181CD0;
  if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
  {
LABEL_4:
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v22 = __PAIR64__(*a2, 67109888);
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    _os_log_impl(&dword_27103D000, v8, OS_LOG_TYPE_DEBUG, "Loading track: <z: %i, x: %i, y: %i, uncertainty: %i>", &v22, 0x1Au);
  }

LABEL_5:
  v22 = 0;
  v12 = [a1 _fileURLForTile:a2 error:&v22];
  v13 = v22;
  v14 = v13;
  if (v12)
  {
    v15 = [v12 path];
    v16 = [v15 UTF8String];
    v17 = [v12 path];
    *a3 = strndup(v16, [v17 lengthOfBytesUsingEncoding:4]);

    v18 = 0;
  }

  else if ([v13 code] == 1)
  {
    v19 = [v14 domain];
    v20 = [v19 isEqualToString:@"VLLocalizationDataProviderErrorDomain"];

    if (v20)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v18 = 2;
  }

  objc_autoreleasePoolPop(v6);
  return v18;
}

void _vlLogCallback(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (qword_281181CE8 == -1)
  {
    v3 = qword_281181CE0;
    if (!os_log_type_enabled(qword_281181CE0, OS_LOG_TYPE_INFO))
    {
      return;
    }
  }

  else
  {
    dispatch_once(&qword_281181CE8, &__block_literal_global_229);
    v3 = qword_281181CE0;
    if (!os_log_type_enabled(qword_281181CE0, OS_LOG_TYPE_INFO))
    {
      return;
    }
  }

  v4 = 136315138;
  v5 = a2;
  _os_log_impl(&dword_27103D000, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
}

void _prepareAltitudeQuery(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (!a3)
  {
    v23 = *a2;
    v24 = *(a2 + 8);
    v25 = *(a2 + 16);
    v26 = sqrt(v24 * v24 + v23 * v23);
    if (v26 >= 0.001)
    {
      v27 = atan2(*(a2 + 16), v26 * 0.996647189);
    }

    else
    {
      v27 = dbl_2711036C0[v25 < 0.0];
      v26 = 0.001;
    }

    v28 = __sincos_stret(v27);
    v29 = atan2(v24, v23);
    *buf = 0;
    v30 = atan2(v25 + v28.__sinval * (v28.__sinval * v28.__sinval) * 42841.3115, v26 + v28.__cosval * (v28.__cosval * v28.__cosval) * -42697.6727);
    v31 = v29;
    altitudes = vl_get_altitudes(a1, &v57, buf, v30, v31);
    if (*buf)
    {
      free(*buf);
    }

    if (!altitudes)
    {
      if (qword_281181CD8 == -1)
      {
        v37 = qword_281181CD0;
        if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_39;
        }
      }

      else
      {
        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
        v37 = qword_281181CD0;
        if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_39;
        }
      }

      v56 = 0;
      v38 = "Existing tile is usable for location. No need to vl_update";
      v39 = &v56;
      goto LABEL_32;
    }

    if (vl_update(a1, a2))
    {
      goto LABEL_22;
    }

LABEL_26:
    if (qword_281181CD8 == -1)
    {
      v37 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v37 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }
    }

    *buf = 0;
    v38 = "vl_update succeeded";
    v39 = buf;
LABEL_32:
    v40 = v37;
    v41 = OS_LOG_TYPE_DEBUG;
    v42 = 2;
LABEL_38:
    _os_log_impl(&dword_27103D000, v40, v41, v38, v39, v42);
    goto LABEL_39;
  }

  if (!vl_update(a1, a2))
  {
    goto LABEL_26;
  }

  if (a3 > 0x63)
  {
    v12 = *a2;
    v11 = *(a2 + 8);
    v13 = sqrt(v11 * v11 + v12 * v12);
    v14 = v13 * 0.99330562;
    v15 = 1.57079633;
    if (v13 * 0.99330562 != 0.0)
    {
      v45 = *(a2 + 8);
      v46 = *a2;
      v16 = 0;
      __y = *(a2 + 16);
      v15 = 0.0;
      v17 = 0.0;
      do
      {
        v18 = v15;
        v15 = atan2(__y, v14);
        v19 = __sincos_stret(v15);
        v20 = 6378137.0 / sqrt(v19.__sinval * -0.00669437999 * v19.__sinval + 1.0);
        v21 = v13 / v19.__cosval - v20;
        if (vabdd_f64(v18, v15) >= 0.000001)
        {
          if (v16 > 8)
          {
            goto LABEL_34;
          }
        }

        else if (vabdd_f64(v17, v21) < 0.001 || v16 >= 9)
        {
          goto LABEL_34;
        }

        ++v16;
        v14 = v13 * (v20 / (v20 + v21) * -0.00669437999 + 1.0);
        v17 = v13 / v19.__cosval - v20;
      }

      while (v14 != 0.0);
      v15 = 1.57079633;
LABEL_34:
      v11 = v45;
      v12 = v46;
    }

    v43 = atan2(v11, v12);
    if (qword_281181CD8 != -1)
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v44 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v44 = qword_281181CD0;
    if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      *buf = 134218240;
      *&buf[4] = v15 / 0.0174532925;
      v59 = 2048;
      v60 = v43 / 0.0174532925;
      v38 = "vl_update failed, but have retried too many times for location: <%f, %f>";
      v39 = buf;
      v40 = v44;
      v41 = OS_LOG_TYPE_ERROR;
      v42 = 22;
      goto LABEL_38;
    }

LABEL_39:
    dispatch_async(v9, v10);
    goto LABEL_40;
  }

LABEL_22:
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    v33 = qword_281181CD0;
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v33 = qword_281181CD0;
  if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
  {
LABEL_24:
    *buf = 0;
    _os_log_impl(&dword_27103D000, v33, OS_LOG_TYPE_DEBUG, "vl_update failed, sleeping for a while before trying again", buf, 2u);
  }

LABEL_25:
  v34 = a3 + 1;
  v35 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v36 = *(a2 + 16);
  v52 = *a2;
  v53 = v36;
  block[2] = ___prepareAltitudeQuery_block_invoke;
  block[3] = &unk_279E2DBD0;
  v51 = a1;
  v54 = *(a2 + 32);
  v55 = v34;
  v49 = v9;
  v50 = v10;
  dispatch_after(v35, v49, block);

LABEL_40:
}

id getCLLocationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_281181CF0;
  v7 = qword_281181CF0;
  if (!qword_281181CF0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationClass_block_invoke;
    v3[3] = &unk_279E2D710;
    v3[4] = &v4;
    __getCLLocationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2710714A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __VLGetLocalizerLog_block_invoke()
{
  qword_281181CD0 = os_log_create("com.apple.VisualLocalization", "Localizer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __VLGetargoLog_block_invoke()
{
  qword_281181CE0 = os_log_create("com.apple.VisualLocalization", "argo");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___prepareAltitudeQuery_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v4;
  v5 = *(a1 + 96);
  v8 = *(a1 + 88);
  return _prepareAltitudeQuery(v2, v7, v5 + 1, v3, v1);
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181CF8)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2DBF0;
    v6 = 0;
    qword_281181CF8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181CF8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_281181CF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_281181CF8 = result;
  return result;
}

Class __getCIImageClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181D08)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2DC08;
    v6 = 0;
    qword_281181D08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181D08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_281181D00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_281181D08 = result;
  return result;
}

Class __getCIContextClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181D08)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2DC08;
    v6 = 0;
    qword_281181D08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181D08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_281181D10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double g_frustum_corners_from_camera(float64x2_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v52 = *MEMORY[0x277D85DE8];
  *v45 = 0x3FF0000000000000;
  *&v45[8] = 0u;
  *v46 = 0u;
  *&v46[16] = 0x3FF0000000000000;
  v47 = 0u;
  v48 = 0u;
  v49 = 1.0;
  memset(v50, 0, sizeof(v50));
  v51 = 1.0;
  g_rot_xyz(v45, -a1[2].f64[1], -a1[2].f64[0], -a1[1].f64[1]);
  v8 = a1[1].f64[0];
  v9 = *a1;
  *v45 = vmlaq_n_f64(*v45, *a1, *v46);
  *&v45[16] = *&v45[16] + *v46 * v8;
  *&v46[8] = vmlaq_n_f64(*&v46[8], v9, *(&v47 + 1));
  *&v47 = *&v47 + *(&v47 + 1) * v8;
  v48 = vmlaq_n_f64(v48, v9, v50[0].f64[0]);
  v49 = v49 + v50[0].f64[0] * v8;
  *(v50 + 8) = vmlaq_n_f64(*(v50 + 8), v9, v51);
  v50[1].f64[1] = v50[1].f64[1] + v51 * v8;
  g_improj_to_xyz(a2, 1, 1, a3, (a3 + 8), (a3 + 16), 0.5, 0.5);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v13 = a1[1].f64[0];
  v14 = v50[1].f64[1] + v11 * *&v47 + *&v45[16] * *a3 + v49 * v12 - v13;
  *(a3 + 112) = v13 + v14 * a5;
  v15 = vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*&v46[8], v11), *v45, v10), v48, v12), *(v50 + 8));
  v16 = *a1;
  v17 = vsubq_f64(v15, *a1);
  *(a3 + 96) = vmlaq_n_f64(*a1, v17, a5);
  *a3 = vmlaq_n_f64(v16, v17, a4);
  *(a3 + 16) = v13 + v14 * a4;
  g_improj_to_xyz(a2, 1, 1, (a3 + 24), (a3 + 32), (a3 + 40), -0.5, 0.5);
  v18 = *(a3 + 24);
  v19 = *(a3 + 32);
  v20 = *(a3 + 40);
  v21 = a1[1].f64[0];
  v22 = v50[1].f64[1] + v19 * *&v47 + *&v45[16] * v18 + v49 * v20 - v21;
  *(a3 + 136) = v21 + v22 * a5;
  v23 = vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*&v46[8], v19), *v45, v18), v48, v20), *(v50 + 8));
  v24 = *a1;
  v25 = vsubq_f64(v23, *a1);
  *(a3 + 120) = vmlaq_n_f64(*a1, v25, a5);
  *(a3 + 24) = vmlaq_n_f64(v24, v25, a4);
  *(a3 + 40) = v21 + v22 * a4;
  g_improj_to_xyz(a2, 1, 1, (a3 + 48), (a3 + 56), (a3 + 64), 0.5, -0.5);
  v26 = *(a3 + 48);
  v27 = *(a3 + 56);
  v28 = *(a3 + 64);
  v29 = a1[1].f64[0];
  v30 = v50[1].f64[1] + v27 * *&v47 + *&v45[16] * v26 + v49 * v28 - v29;
  *(a3 + 160) = v29 + v30 * a5;
  v31 = vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*&v46[8], v27), *v45, v26), v48, v28), *(v50 + 8));
  v32 = *a1;
  v33 = vsubq_f64(v31, *a1);
  *(a3 + 144) = vmlaq_n_f64(*a1, v33, a5);
  *(a3 + 48) = vmlaq_n_f64(v32, v33, a4);
  *(a3 + 64) = v29 + v30 * a4;
  g_improj_to_xyz(a2, 1, 1, (a3 + 72), (a3 + 80), (a3 + 88), -0.5, -0.5);
  v34 = *(a3 + 72);
  v35 = *(a3 + 80);
  v36 = *(a3 + 88);
  v37 = a1[1].f64[0];
  v38 = v50[1].f64[1] + v35 * *&v47 + *&v45[16] * v34 + v49 * v36 - v37;
  *(a3 + 184) = v37 + v38 * a5;
  v39 = vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*&v46[8], v35), *v45, v34), v48, v36), *(v50 + 8));
  v40 = *a1;
  v41 = vsubq_f64(v39, *a1);
  *(a3 + 168) = vmlaq_n_f64(*a1, v41, a5);
  *(a3 + 72) = vmlaq_n_f64(v40, v41, a4);
  result = v37 + v38 * a4;
  *(a3 + 88) = result;
  return result;
}

void g_frustum_from_camera(double *a1, float64x2_t *a2, uint64_t a3, double a4, double a5)
{
  v102 = *MEMORY[0x277D85DE8];
  g_frustum_corners_from_camera(a2, a3, &v81, a4, a5);
  v6 = v81;
  v7 = v82;
  v9 = v83;
  v8 = v84;
  v10 = v84 - v81;
  v12 = v85;
  v11 = v86;
  v13 = v85 - v82;
  v14 = v86 - v83;
  v15 = v87;
  v16 = v88;
  v17 = v87 - v81;
  v18 = v88 - v82;
  v19 = v89;
  v20 = v89 - v83;
  v21 = (v85 - v82) * (v89 - v83) - (v86 - v83) * (v88 - v82);
  v22 = (v86 - v83) * (v87 - v81) - (v84 - v81) * (v89 - v83);
  v23 = (v84 - v81) * (v88 - v82) - (v85 - v82) * (v87 - v81);
  v24 = sqrt(v22 * v22 + v21 * v21 + v23 * v23);
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if (v24 > 0.0)
  {
    v26 = v21 / v24;
    v27 = v22 / v24;
    v28 = v23 / v24;
  }

  *a1 = v26;
  a1[1] = v27;
  a1[2] = v28;
  a1[3] = v7 * v27 + v26 * v6 + v28 * v9;
  v29 = v99;
  v30 = v100;
  v31 = v93;
  v32 = v94;
  v33 = v101;
  v34 = v95;
  v35 = v96;
  v36 = v97;
  v37 = v98;
  v38 = (v100 - v94) * (v98 - v95) - (v101 - v95) * (v97 - v94);
  v39 = (v101 - v95) * (v96 - v93) - (v99 - v93) * (v98 - v95);
  v40 = (v99 - v93) * (v97 - v94) - (v100 - v94) * (v96 - v93);
  v41 = sqrt(v39 * v39 + v38 * v38 + v40 * v40);
  v42 = 0.0;
  v43 = 0.0;
  if (v41 > 0.0)
  {
    v25 = v38 / v41;
    v42 = v39 / v41;
    v43 = v40 / v41;
  }

  a1[4] = v25;
  a1[5] = v42;
  a1[6] = v43;
  a1[7] = v32 * v42 + v25 * v31 + v43 * v34;
  v44 = v31 - v6;
  v45 = v32 - v7;
  v46 = v34 - v9;
  v47 = v45 * v14 - (v34 - v9) * v13;
  v48 = (v34 - v9) * v10 - v44 * v14;
  v49 = v44 * v13 - v45 * v10;
  v50 = sqrt(v48 * v48 + v47 * v47 + v49 * v49);
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  if (v50 > 0.0)
  {
    v52 = v47 / v50;
    v53 = v48 / v50;
    v54 = v49 / v50;
  }

  a1[8] = v52;
  a1[9] = v53;
  a1[10] = v54;
  a1[11] = v7 * v53 + v52 * v6 + v54 * v9;
  v55 = v90;
  v56 = v91;
  v57 = v92;
  v58 = v29 - v15;
  v59 = v30 - v16;
  v60 = v33 - v19;
  v61 = (v91 - v16) * v60 - (v92 - v19) * (v30 - v16);
  v62 = (v92 - v19) * v58 - (v90 - v15) * v60;
  v63 = (v90 - v15) * v59 - (v91 - v16) * v58;
  v64 = sqrt(v62 * v62 + v61 * v61 + v63 * v63);
  v65 = 0.0;
  v66 = 0.0;
  if (v64 > 0.0)
  {
    v51 = v61 / v64;
    v65 = v62 / v64;
    v66 = v63 / v64;
  }

  a1[12] = v51;
  a1[13] = v65;
  a1[14] = v66;
  a1[15] = v16 * v65 + v51 * v15 + v66 * v19;
  v67 = v18 * v46 - v20 * v45;
  v68 = v20 * v44 - v17 * v46;
  v69 = v17 * v45 - v18 * v44;
  v70 = sqrt(v68 * v68 + v67 * v67 + v69 * v69);
  v71 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  if (v70 > 0.0)
  {
    v72 = v67 / v70;
    v73 = v68 / v70;
    v74 = v69 / v70;
  }

  a1[16] = v72;
  a1[17] = v73;
  a1[18] = v74;
  a1[19] = v7 * v73 + v72 * v6 + v74 * v9;
  v75 = (v36 - v12) * (v57 - v11) - (v37 - v11) * (v56 - v12);
  v76 = (v37 - v11) * (v55 - v8) - (v35 - v8) * (v57 - v11);
  v77 = (v35 - v8) * (v56 - v12) - (v36 - v12) * (v55 - v8);
  v78 = sqrt(v76 * v76 + v75 * v75 + v77 * v77);
  v79 = 0.0;
  v80 = 0.0;
  if (v78 > 0.0)
  {
    v71 = v75 / v78;
    v79 = v76 / v78;
    v80 = v77 / v78;
  }

  a1[20] = v71;
  a1[21] = v79;
  a1[22] = v80;
  a1[23] = v12 * v79 + v71 * v8 + v80 * v11;
}

uint64_t g_frustum_isect_lseg(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = a3[2];
  v10 = a2[2];
  v11 = a1[16];
  v12 = a1[17];
  v14 = a1[18];
  v13 = a1[19];
  v15 = v8 * v12 + v11 * *a2 + v14 * v10 - v13;
  v16 = v6 * v12 + v11 * *a3 + v14 * v9 - v13;
  if (v15 < 0.0 && v16 < 0.0)
  {
    return 0;
  }

  v17 = v5 - v7;
  v18 = v6 - v8;
  v19 = v9 - v10;
  v20 = 0.0;
  if (v15 < 0.0 || (v21 = 1.0, v16 < 0.0))
  {
    v30 = v18 * v12 + v17 * v11 + v19 * v14;
    v31 = -v15 / v30;
    if (v30 >= 0.0)
    {
      v33 = 1.0;
      v21 = 1.0;
      if (v31 <= 0.0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v21 = 1.0;
      v32 = v31 < 1.0;
      v33 = -v15 / v30;
      v31 = 0.0;
      if (!v32)
      {
        goto LABEL_5;
      }
    }

    v21 = v33;
    v20 = v31;
    if (v33 <= v31)
    {
      return 0;
    }
  }

LABEL_5:
  v22 = a1[20];
  v23 = a1[21];
  v24 = a1[22];
  v25 = a1[23];
  v26 = v8 * v23 + v22 * v7 + v24 * v10 - v25;
  v27 = v6 * v23 + v22 * v5 + v24 * v9 - v25;
  if (v26 < 0.0 && v27 < 0.0)
  {
    return 0;
  }

  if (v26 >= 0.0 && v27 >= 0.0)
  {
    goto LABEL_22;
  }

  v28 = v18 * v23 + v17 * v22 + v19 * v24;
  v29 = -v26 / v28;
  if (v28 >= 0.0)
  {
    if (v29 > v20)
    {
      goto LABEL_21;
    }
  }

  else if (v29 < v21)
  {
    v21 = -v26 / v28;
  }

  v29 = v20;
LABEL_21:
  v20 = v29;
  if (v21 <= v29)
  {
    return 0;
  }

LABEL_22:
  v34 = a1[12];
  v35 = a1[13];
  v36 = a1[14];
  v37 = a1[15];
  v38 = v8 * v35 + v34 * v7 + v36 * v10 - v37;
  v39 = v6 * v35 + v34 * v5 + v36 * v9 - v37;
  if (v38 < 0.0 && v39 < 0.0)
  {
    return 0;
  }

  if (v38 >= 0.0 && v39 >= 0.0)
  {
    goto LABEL_32;
  }

  v40 = v18 * v35 + v17 * v34 + v19 * v36;
  v41 = -v38 / v40;
  if (v40 >= 0.0)
  {
    if (v41 > v20)
    {
      goto LABEL_31;
    }
  }

  else if (v41 < v21)
  {
    v21 = -v38 / v40;
  }

  v41 = v20;
LABEL_31:
  v20 = v41;
  if (v21 <= v41)
  {
    return 0;
  }

LABEL_32:
  v42 = a1[8];
  v43 = a1[9];
  v44 = a1[10];
  v45 = a1[11];
  v46 = v8 * v43 + v42 * v7 + v44 * v10 - v45;
  v47 = v6 * v43 + v42 * v5 + v44 * v9 - v45;
  if (v46 < 0.0 && v47 < 0.0)
  {
    return 0;
  }

  if (v46 >= 0.0 && v47 >= 0.0)
  {
    goto LABEL_42;
  }

  v48 = v18 * v43 + v17 * v42 + v19 * v44;
  v49 = -v46 / v48;
  if (v48 >= 0.0)
  {
    if (v49 > v20)
    {
      goto LABEL_41;
    }
  }

  else if (v49 < v21)
  {
    v21 = -v46 / v48;
  }

  v49 = v20;
LABEL_41:
  v20 = v49;
  if (v21 <= v49)
  {
    return 0;
  }

LABEL_42:
  v50 = a1[4];
  v51 = a1[5];
  v52 = a1[6];
  v53 = a1[7];
  v54 = v8 * v51 + v50 * v7 + v52 * v10 - v53;
  v55 = v6 * v51 + v50 * v5 + v52 * v9 - v53;
  if (v54 < 0.0 && v55 < 0.0)
  {
    return 0;
  }

  if (v54 >= 0.0 && v55 >= 0.0)
  {
    goto LABEL_52;
  }

  v56 = v18 * v51 + v17 * v50 + v19 * v52;
  v57 = -v54 / v56;
  if (v56 >= 0.0)
  {
    if (v57 > v20)
    {
      goto LABEL_51;
    }
  }

  else if (v57 < v21)
  {
    v21 = -v54 / v56;
  }

  v57 = v20;
LABEL_51:
  v20 = v57;
  if (v21 <= v57)
  {
    return 0;
  }

LABEL_52:
  v58 = a1[1];
  v59 = v8 * v58 + *a1 * v7;
  v60 = a1[2];
  v61 = a1[3];
  v62 = v59 + v60 * v10 - v61;
  v63 = v6 * v58 + *a1 * v5 + v60 * v9 - v61;
  if (v62 < 0.0 && v63 < 0.0)
  {
    return 0;
  }

  if (v62 < 0.0 || v63 < 0.0)
  {
    v65 = v18 * v58 + v17 * *a1 + v19 * v60;
    v66 = -v62 / v65;
    if (v65 >= 0.0)
    {
      if (v66 > v20)
      {
        goto LABEL_62;
      }
    }

    else if (v66 < v21)
    {
      v21 = -v62 / v65;
    }

    v66 = v20;
LABEL_62:
    v20 = v66;
    if (v21 > v66)
    {
      goto LABEL_63;
    }

    return 0;
  }

LABEL_63:
  if (a4)
  {
    *a4 = v20;
  }

  if (a5)
  {
    *a5 = v21;
  }

  return 1;
}

_DWORD *huff_table_create(int a1, signed int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040F32E1FD2uLL);
  v5 = 32 - __clz(a2);
  *v4 = v5;
  v4[1] = a2;
  v6 = 32 - __clz(a1 - 1);
  v4[2] = v6;
  v4[3] = a1;
  if (v6 > a2)
  {
    __assert_rtn("huff_table_create", "huff_coder.c", 779, "t->symbol_bits <= max_code_length && Max code length not enough to represent symbols");
  }

  if (v5 + a2 >= 0x21)
  {
    __assert_rtn("huff_table_create", "huff_coder.c", 780, "max_code_length + t->length_bits <= 32 && 32 bit isn't enough!");
  }

  v7 = v4;
  *(v4 + 2) = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  *(v7 + 3) = malloc_type_calloc(1 << a2, 4uLL, 0x100004052888210uLL);
  return v7;
}

unint64_t huff_decompress(uint64_t a1, uint64_t a2, void *a3, int a4, char *a5, unint64_t a6)
{
  v6 = a1 + 8;
  if (*a1 != a2)
  {
    __assert_rtn("huff_decompress", "huff_coder.c", 1161, "src_len == _src_len");
  }

  v10 = a2;
  v11 = bswap32(*(a1 + 12));
  v12 = v11 << 37;
  v13 = (a1 + 16);
  v14 = huff_table_create(bswap32(*(a1 + 8)), v11 >> 27);
  if (v14[3] < 1)
  {
    v17 = 27;
  }

  else
  {
    v15 = 0;
    v16 = *(v14 + 2);
    v17 = 27;
    do
    {
      v18 = *v14;
      if (v17 < *v14)
      {
        v19 = *v13++;
        v12 |= bswap32(v19) << (32 - v17);
        v17 += 32;
      }

      v20 = v12 >> -v18;
      v21 = v17 - v18;
      v22 = v12 << v18;
      if (v17 - v18 < v20)
      {
        v23 = *v13++;
        v22 |= bswap32(v23) << (32 - v21);
        v21 += 32;
      }

      v24 = v22 >> -v20;
      v25 = v14[1] - v20;
      *(v16 + 4 * v15) = (v24 << v18) | v20;
      if (v25 != 31)
      {
        v26 = (1 << v25);
        v27 = (*(v14 + 3) + 4 * (v24 << v25));
        do
        {
          if (*v27)
          {
            __assert_rtn("huff_table_set_code", "huff_coder.c", 809, "table->decode[bits] == 0");
          }

          *v27++ = (v15 << *v14) | v20;
          --v26;
        }

        while (v26);
      }

      v17 = v21 - v20;
      v12 = v22 << v20;
      ++v15;
    }

    while (v15 < v14[3]);
  }

  if (v10)
  {
    v28 = 0;
    v29 = 0;
    v30 = a5;
    do
    {
      v31 = v14[1];
      if (v17 < v31)
      {
        v32 = *v13++;
        v12 |= bswap32(v32) << (32 - v17);
        v17 += 32;
      }

      v33 = v12 >> -v31;
      v34 = 1 << v31;
      if (v34 <= v33)
      {
        __assert_rtn("huff_table_decode_symbol", "huff_coder.c", 825, "bits < (1 << table->max_code_length)");
      }

      v35 = v34 - 1;
      v36 = *v14;
      v37 = *(*(v14 + 3) + 4 * (v35 & v33));
      if (v29 >= 32)
      {
        v38 = HIDWORD(v28);
        v28 <<= 32;
        *v30 = bswap32(v38);
        v30 += 4;
        v29 -= 32;
      }

      v17 -= v37 & ~(-1 << v36);
      v12 <<= v37 & ~(-1 << v36);
      v29 += a4;
      v28 |= ((v37 >> v36) & ~(-1 << a4)) << -v29;
      --v10;
    }

    while (v10);
    if (v29 >= 1)
    {
      do
      {
        v39 = HIDWORD(v28);
        v28 <<= 32;
        *v30 = bswap32(v39);
        v30 += 4;
        v40 = v29 >= 0x20;
        v29 -= 32;
      }

      while (v29 != 0 && v40);
    }
  }

  else
  {
    v29 = 0;
    v30 = a5;
  }

  v41 = v14;
  free(*(v14 + 2));
  free(v41[3]);
  free(v41);
  if (a3)
  {
    *a3 = ((8 * (v13 - v6) - v17 + 7) >> 3) + 8;
  }

  result = ((v29 + 7) >> 3) + v30 - a5;
  if (a6 < result)
  {
    __assert_rtn("huff_decompress", "huff_coder.c", 1178, "bytes_written <= dst_size");
  }

  return result;
}

void g_triangulate_inv_depthf(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, float32x2_t *a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t a16)
{
  v75 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v47[0] = a1;
  v47[1] = a2;
  v47[2] = a3;
  v48 = LODWORD(a9);
  v49 = a4;
  v50 = *a6;
  v51 = a6[1].f32[0];
  v52 = v50;
  v53 = v51;
  v54 = 0;
  LODWORD(v55) = 0;
  *(&v55 + 1) = a5;
  *&v56 = a8;
  DWORD2(v56) = 2143289344;
  if (a7)
  {
    v54 = *a7;
    LODWORD(v55) = *(a7 + 2);
  }

  v17 = tri_inv_depthf_calc_JtJ_Jtr_err(v47, &v57, &v60, a9, 0.0, a11, a12, a13, a14, a15);
  v69 = sqrtf(*&v57);
  v70 = *(&v57 + 1) / v69;
  *&v18 = *(&v57 + 2) / v69;
  v71 = sqrtf(*&v58 - (v70 * v70));
  v72 = LODWORD(v18);
  v19 = (*(&v58 + 1) - ((*(&v57 + 2) / v69) * (*(&v57 + 1) / v69))) / v71;
  v73 = v19;
  v74 = sqrtf((v59 - (*&v18 * *&v18)) - (v19 * v19));
  *&v20 = v60 / v69;
  v21 = (v61 - ((*(&v57 + 1) / v69) * (v60 / v69))) / v71;
  v67 = v21;
  v68 = ((v62 - ((*(&v57 + 2) / v69) * (v60 / v69))) - (v19 * v21)) / v74;
  *&v22 = v68 / v74;
  v65 = v68 / v74;
  v66 = v60 / v69;
  *&v23 = v21 - (v19 * (v68 / v74));
  v53 = v51;
  v52 = v50;
  *&v24 = *&v23 / v71;
  v25.f32[0] = (((v60 / v69) - ((*(&v57 + 1) / v69) * (*&v23 / v71))) - ((*(&v57 + 2) / v69) * (v68 / v74))) / v69;
  v63 = v25.f32[0];
  v64 = *&v23 / v71;
  v25.f32[1] = *&v23 / v71;
  v26 = *&v50;
  v27 = vadd_f32(v50, v25);
  v50 = v27;
  v51 = (v68 / v74) + v51;
  v27.f32[0] = v51;
  *&v28 = tri_inv_depthf_calc_JtJ_Jtr_err(v47, 0, 0, *&v27, v26, v18, v24, v23, v22, v20);
  if (*&v28 >= v17 || (v35 = tri_inv_depthf_calc_JtJ_Jtr_err(v47, &v57, &v60, v28, v29, v30, v31, v32, v33, v34), v69 = sqrtf(*&v57), v70 = *(&v57 + 1) / v69, *&v36 = *(&v57 + 2) / v69, v71 = sqrtf(*&v58 - (v70 * v70)), v72 = LODWORD(v36), v37 = (*(&v58 + 1) - ((*(&v57 + 2) / v69) * (*(&v57 + 1) / v69))) / v71, v73 = v37, v74 = sqrtf((v59 - (*&v36 * *&v36)) - (v37 * v37)), *&v38 = v60 / v69, v39 = (v61 - ((*(&v57 + 1) / v69) * (v60 / v69))) / v71, v67 = v39, v68 = ((v62 - ((*(&v57 + 2) / v69) * (v60 / v69))) - (v37 * v39)) / v74, *&v40 = v68 / v74, v65 = v68 / v74, v66 = v60 / v69, *&v41 = v39 - (v37 * (v68 / v74)), v53 = v51, v52 = v50, *&v42 = *&v41 / v71, v43.f32[0] = (((v60 / v69) - ((*(&v57 + 1) / v69) * (*&v41 / v71))) - ((*(&v57 + 2) / v69) * (v68 / v74))) / v69, v63 = v43.f32[0], v64 = *&v41 / v71, v43.f32[1] = *&v41 / v71, v44 = *&v50, v45 = vadd_f32(v50, v43), v50 = v45, v51 = (v68 / v74) + v51, v45.f32[0] = v51, *&v28 = tri_inv_depthf_calc_JtJ_Jtr_err(v47, 0, 0, *&v45, v44, v36, v42, v41, v40, v38), *&v28 >= v35))
  {
    v50 = v52;
    v51 = v53;
  }

  *a6 = v50;
  a6[1].f32[0] = v51;
  if (a16)
  {
    tri_inv_depthf_calc_JtJ_Jtr_err(v47, &v57, &v60, v28, v29, v30, v31, v32, v33, v34);
    v46 = v58;
    *a16 = v57;
    *(a16 + 16) = v46;
    *(a16 + 32) = v59;
  }
}

float tri_inv_depthf_calc_JtJ_Jtr_err(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double _D4, double _D5, double _D6)
{
  v10 = *(a1 + 28);
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a3 + 8) = 0;
    *a3 = 0;
  }

  if (v10 >= 1)
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 16);
    v15 = *(a1 + 8) + 4;
    v16 = *a1 + 24;
    v17 = (v14 + 8);
    v18 = v10;
    v19 = 0.0;
    while (1)
    {
      v25 = *(a1 + 36);
      v26 = *(a1 + 40);
      v27 = *(v16 - 24);
      v28 = *(v16 - 12);
      v29 = *(v13 + 12);
      v30 = *(v13 + 24);
      v31 = (((v27 * *v13) + 0.0) + (v28 * v29)) + (*v16 * v30);
      v32 = *(v13 + 4);
      v33 = *(v13 + 16);
      v34 = *(v13 + 28);
      _D19 = vmla_n_f32(vmla_n_f32(vmla_n_f32(0, v32, v27), v33, v28), v34, *v16);
      v36 = 1.0 / *(a1 + 32);
      v37 = *(v13 + 36) - *(v16 + 12);
      v38 = *(v13 + 40) - *(v16 + 16);
      v39 = *(v13 + 44) - *(v16 + 20);
      v40 = (((v27 * v37) + 0.0) + (v28 * v38)) + (*v16 * v39);
      _S11 = v36 * v26;
      __asm { FMLA            S16, S11, V19.S[1] }

      v47 = _S16 + v40;
      if (v47 <= 0.0)
      {
        _S22 = NAN;
      }

      else
      {
        _S22 = 1.0 / v47;
      }

      v49 = *(v16 - 20);
      v50 = *(v16 - 8);
      v51 = vmla_n_f32(vmla_n_f32(0, v49, *v13), v50, v29);
      v52 = *(v16 + 4);
      v53 = vmla_n_f32(v51, v52, v30);
      v54 = vmla_n_f32(vmla_n_f32(vmla_n_f32(0, v32, v49.f32[0]), v33, v50.f32[0]), v34, v52.f32[0]);
      v55 = vmla_lane_f32(vmla_lane_f32(vmla_lane_f32(0, v32, v49, 1), v33, v50, 1), v34, v52, 1);
      v56 = vmla_n_f32(vmla_n_f32(vmla_n_f32(0, v49, v37), v50, v38), v52, v39);
      v57 = vzip1_s32(v54, v55);
      v58 = vzip2_s32(v54, v55);
      _D23 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v57, v36 * v25), v53, v36), v58, _S11), v56);
      __asm
      {
        FMLS            S16, S22, V23.S[0]
        FMLS            S7, S22, V23.S[1]
      }

      v62 = vmul_n_f32(vneg_f32(_D23), _S22 * _S22);
      v63 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(vmul_n_f32(vmla_n_f32(vmla_n_f32(v53, v57, v25), v58, v26), -(v36 * v36)), _S22), v62, -(v36 * v36) * ((v31 + (_D19.f32[0] * v25)) + (_D19.f32[1] * v26))));
      v64 = vmul_n_f32(_D19, v36);
      v65 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(vmul_n_f32(v54, v36), _S22), v64, v62.f32[0]));
      v66 = COERCE_DOUBLE(vmla_lane_f32(vmul_n_f32(vmul_n_f32(v55, v36), _S22), v64, v62, 1));
      if (a2)
      {
        _D4 = v66;
        _D5 = v65;
        _D6 = v63;
      }

      if (v14)
      {
        _S17 = *(v17 - 2);
        _S18 = *(v17 - 1);
        _S19 = *v17;
        _S20 = v17[1];
        v19 = v19 + ((((((_S17 * _S16) + 0.0) + (_S18 * _S7)) * _S16) + 0.0) + ((((*v17 * _S16) + 0.0) + (_S20 * _S7)) * _S7));
        if (!a2)
        {
          goto LABEL_9;
        }

        __asm
        {
          FMLA            S21, S19, V6.S[1]
          FMLA            S24, S20, V6.S[1]
        }

        _S25 = ((_S17 * *&_D5) + 0.0) + (_S19 * *&_D4);
        _S26 = ((_S18 * *&_D5) + 0.0) + (_S20 * *&_D4);
        __asm
        {
          FMLA            S27, S17, V5.S[1]
          FMLA            S28, S18, V5.S[1]
          FMLA            S27, S19, V4.S[1]
          FMLA            S28, S20, V4.S[1]
        }

        v79 = (*(a3 + 4) + (_S25 * _S16)) + (_S26 * _S7);
        *a3 = (*a3 + (_S21 * _S16)) + (_S24 * _S7);
        *(a3 + 4) = v79;
        *(a3 + 8) = (*(a3 + 8) + (_S27 * _S16)) + (_S28 * _S7);
        __asm { FMLA            S7, S24, V6.S[1] }

        v81 = ((*&_D5 * _S21) + 0.0) + (*&_D4 * _S24);
        __asm
        {
          FMLA            S22, S21, V5.S[1]
          FMLA            S22, S24, V4.S[1]
          FMLA            S17, S26, V6.S[1]
        }

        v85 = ((*&_D5 * _S25) + 0.0) + (*&_D4 * _S26);
        __asm
        {
          FMLA            S21, S25, V5.S[1]
          FMLA            S21, S26, V4.S[1]
          FMLA            S16, S28, V6.S[1]
        }

        v89 = ((*&_D5 * _S27) + 0.0) + (*&_D4 * _S28);
        __asm
        {
          FMLA            S19, S27, V5.S[1]
          FMLA            S19, S28, V4.S[1]
        }
      }

      else
      {
        v92 = *(a1 + 24);
        v93 = _S16 * v92;
        _S7 = _S7 * v92;
        v19 = v19 + ((_S7 * _S7) + (v93 * v93));
        if (!a2)
        {
          goto LABEL_9;
        }

        _D6 = COERCE_DOUBLE(vmul_n_f32(*&_D6, v92));
        _D5 = COERCE_DOUBLE(vmul_n_f32(*&_D5, v92));
        _D4 = COERCE_DOUBLE(vmul_n_f32(*&_D4, v92));
        _S18 = HIDWORD(_D6);
        __asm { FMLA            S17, S7, V6.S[1] }

        *a3 = _S17;
        *(a3 + 4) = vmla_n_f32(vmla_n_f32(*(a3 + 4), *&_D5, v93), *&_D4, _S7);
        __asm { FMLA            S7, S18, V6.S[1] }

        _S17 = ((*&_D5 * *&_D6) + 0.0) + (*&_D4 * *(&_D6 + 1));
        _S21 = HIDWORD(_D5);
        _S22 = HIDWORD(_D4);
        __asm { FMLA            S16, S18, V4.S[1] }

        v85 = ((*&_D5 * *&_D5) + 0.0) + (*&_D4 * *&_D4);
        v89 = ((*(&_D5 + 1) * *&_D5) + 0.0) + (*(&_D4 + 1) * *&_D4);
        __asm
        {
          FMLA            S19, S21, V5.S[1]
          FMLA            S19, S22, V4.S[1]
        }

        _S21 = v89;
        _S22 = _S16;
        v81 = _S17;
      }

      v20 = *(a2 + 4);
      *a2 = _S7 + *a2;
      *(a2 + 4) = v81 + v20;
      v21 = *(a2 + 12);
      *(a2 + 8) = _S22 + *(a2 + 8);
      *(a2 + 12) = _S17 + v21;
      v22 = _S21 + *(a2 + 20);
      *(a2 + 16) = v85 + *(a2 + 16);
      *(a2 + 20) = v22;
      v23 = _S16 + *(a2 + 24);
      v24 = v89 + *(a2 + 28);
      *(a2 + 24) = v23;
      *(a2 + 28) = v24;
      *(a2 + 32) = _S19 + *(a2 + 32);
LABEL_9:
      v15 += 8;
      v16 += 48;
      v17 += 4;
      if (!--v18)
      {
        goto LABEL_21;
      }
    }
  }

  v19 = 0.0;
LABEL_21:
  v100 = v12 + 2 * v10;
  if (v11)
  {
    v101 = *(a1 + 56) - *(a1 + 32);
    v102 = *(a1 + 60) - *(a1 + 36);
    v103 = *(a1 + 64) - *(a1 + 40);
    v19 = v19 + ((((((((*v11 * v101) + 0.0) + (v11[1] * v102)) + (v11[2] * v103)) * v101) + 0.0) + (((((v11[3] * v101) + 0.0) + (v11[4] * v102)) + (v11[5] * v103)) * v102)) + (((((v11[6] * v101) + 0.0) + (v11[7] * v102)) + (v11[8] * v103)) * v103));
    if (!a2)
    {
      return v19 / v100;
    }

    v104 = *(a2 + 4);
    *a2 = *v11 + *a2;
    *(a2 + 4) = v104 + v11[1];
    v105 = *(a2 + 12);
    *(a2 + 8) = *(a2 + 8) + v11[2];
    *(a2 + 12) = v105 + v11[3];
    v106 = *(a2 + 20);
    *(a2 + 16) = *(a2 + 16) + v11[4];
    *(a2 + 20) = v106 + v11[5];
    v107 = *(a2 + 28);
    *(a2 + 24) = *(a2 + 24) + v11[6];
    *(a2 + 28) = v107 + v11[7];
    *(a2 + 32) = *(a2 + 32) + v11[8];
    v108 = *(a3 + 4);
    v109 = *a3 + (*v11 * v101);
    *a3 = v109;
    v110 = v109 + (v11[1] * v102);
    *a3 = v110;
    *a3 = v110 + (v11[2] * v103);
    v111 = v108 + (v11[3] * v101);
    *(a3 + 4) = v111;
    v112 = v111 + (v11[4] * v102);
    *(a3 + 4) = v112;
    *(a3 + 4) = v112 + (v11[5] * v103);
    v113 = *(a3 + 8) + (v11[6] * v101);
    *(a3 + 8) = v113;
    v114 = v113 + (v11[7] * v102);
    *(a3 + 8) = v114;
    *(a3 + 8) = v114 + (v11[8] * v103);
  }

  else if (!a2)
  {
    return v19 / v100;
  }

  v115 = *a2;
  if (*a2 < 0.000001)
  {
    v115 = 0.000001;
  }

  *a2 = v115;
  return v19 / v100;
}

char *vl_fio_open(const char *a1, const char *a2, char *a3)
{
  v4 = *a2 - 97;
  v5 = v4 > 0x16 || ((1 << (*a2 - 97)) & 0x420001) == 0;
  if (v5 && (a2[1] & 0xFE) != 0x62)
  {
    __assert_rtn("vl_fio_open", "vl_fio.c", 348, "(mode[0] == 'r' || mode[0] == 'w' || mode[0] == 'a' || mode[1] == 'b' || mode[1] == 'c') && mode not allowed");
  }

  if (!*a3 || !a3[1] || !a3[2] || !a3[3])
  {
    printf("%sError : ", &str_4);
    printf("Wrong file signature %s");
LABEL_17:
    putchar(10);
    return 0;
  }

  if (v4 > 0x16 || ((1 << v4) & 0x420001) == 0 || (a2[1] & 0xFE) != 0x62)
  {
    printf("%sError : ", &str_4);
    printf("Wrong file mode: %s");
    goto LABEL_17;
  }

  v8 = malloc_type_calloc(1uLL, 0x238uLL, 0x10300402769EC20uLL);
  *(v8 + 512) = *a2;
  v9 = *(a2 + 1);
  *(v8 + 513) = v9;
  v10 = v8;
  if (v9 == 98)
  {
    v11 = fopen(a1, a2);
    result = v10;
    *(v10 + 552) = v11;
  }

  else
  {
    v13 = *a2;
    if (v13 == 119)
    {
      *(v8 + 69) = 0;
      v27 = *(v8 + 67);
      if (v27 < 102400)
      {
        v28 = 2 * v27;
        if (v28 <= 102400)
        {
          v29 = 102400;
        }

        else
        {
          v29 = v28;
        }

        *(v8 + 66) = malloc_type_realloc(*(v8 + 66), v29, 0x100004077774924uLL);
        *(v10 + 536) = v29;
      }

      result = strncpy(v10, a1, 0x200uLL);
    }

    else
    {
      if (v13 != 114)
      {
        printf("%sAborting : ", &str_4);
        printf("mode not supported");
        putchar(10);
        __assert_rtn("vl_fopen", "vl_fio.c", 122, "0");
      }

      v14 = fopen(a1, "rb");
      result = v10;
      if (!v14)
      {
        goto LABEL_64;
      }

      fseek(v14, 0, 2);
      v15 = MEMORY[0x2743BCF10](v14);
      rewind(v14);
      result = v10;
      *(v10 + 560) = v15;
      if (v15)
      {
        v16 = malloc_type_malloc(v15, 0x622F8255uLL);
        if (fread(v16, 1uLL, v15, v14) != v15)
        {
          printf("%sError : ", &str_4);
          printf("Failed to read file");
          putchar(10);
        }

        v17 = 2 * v15;
        v18 = v10;
        v19 = *(v10 + 536);
        if ((2 * v15) > v19)
        {
          v20 = 2 * v19;
          if (!v19)
          {
            v20 = 256;
          }

          if (v20 <= v17)
          {
            v19 = 2 * v15;
          }

          else
          {
            v19 = v20;
          }

          if (v19)
          {
            v21 = malloc_type_realloc(*(v10 + 528), v19, 0x100004077774924uLL);
            v18 = v10;
            *(v10 + 528) = v21;
          }

          *(v18 + 536) = v19;
        }

        *(v18 + 520) = v17;
        for (i = compression_decode_buffer(*(v18 + 528), v19, v16, v15, 0, COMPRESSION_LZFSE); i == v19; i = compression_decode_buffer(*(v24 + 528), v19, v16, v15, 0, COMPRESSION_LZFSE))
        {
          v23 = 2 * v19;
          v24 = v10;
          v19 = *(v10 + 536);
          if (v19 < v23)
          {
            v25 = 2 * v19;
            if (!v19)
            {
              v25 = 256;
            }

            if (v25 <= v23)
            {
              v19 = v23;
            }

            else
            {
              v19 = v25;
            }

            if (v19)
            {
              v26 = malloc_type_realloc(*(v10 + 528), v19, 0x100004077774924uLL);
              v24 = v10;
              *(v10 + 528) = v26;
            }

            *(v24 + 536) = v19;
          }

          *(v24 + 520) = v23;
        }

        *(v10 + 520) = i;
        free(v16);
        v32 = fclose(v14);
        result = v10;
        if (v32)
        {
LABEL_64:
          free(result);
          printf("%sError : ", &str_4);
          printf("File %s could not be opened");
          goto LABEL_17;
        }
      }
    }
  }

  v30 = *a2;
  if (v30 == 119)
  {
    vl_fio_write_header(v10, a3);
    return v10;
  }

  if (v30 == 114)
  {
    if (*(result + 69))
    {
      v31 = feof(*(result + 69));
    }

    else
    {
      v31 = *(result + 65) <= *(result + 136);
    }

    if (v31)
    {
      printf("%sError : ", &str_4);
      printf("File %s empty, needs at least a header");
      goto LABEL_17;
    }

    vl_fio_check_header(v10, a3);
    return v10;
  }

  return result;
}

uint64_t vl_fio_check_header(uint64_t a1, char *__s1)
{
  v3 = *(a1 + 552);
  if (v3)
  {
    fread(&__ptr, 1uLL, 4uLL, v3);
    result = strncmp(__s1, &__ptr, 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  v5 = *(a1 + 544);
  v6 = v5;
  if ((v5 + 4) > *(a1 + 520))
  {
    v7 = a1;
    printf("%sError : ", &str_4);
    printf("Trying to read non existing data");
    putchar(10);
    a1 = v7;
    v5 = *(v7 + 544);
    v6 = v5;
  }

  __ptr = *(*(a1 + 528) + v6);
  *(a1 + 544) = v5 + 4;
  result = strncmp(__s1, &__ptr, 4uLL);
  if (result)
  {
LABEL_3:
    printf("%sError : ", &str_4);
    printf("Unknown file format: (%s), should be (%s)", &__ptr, __s1);
    return putchar(10);
  }

  return result;
}

size_t vl_fio_write_header(size_t result, _BYTE *__ptr)
{
  if (!*__ptr || !__ptr[1] || !__ptr[2] || !__ptr[3])
  {
    __assert_rtn("vl_fio_write_header", "vl_fio.c", 330, "signature[0] != 0 && signature[1] != 0 && signature[2] != 0 && signature[3] != 0 && Signature needs to be 4 chars");
  }

  v2 = *(result + 552);
  if (v2)
  {

    return fwrite(__ptr, 1uLL, 4uLL, v2);
  }

  else
  {
    v3 = *(result + 520);
    v4 = v3 + 4;
    v5 = *(result + 536);
    if (v3 + 4 <= v5)
    {
      v11 = *(result + 528);
    }

    else
    {
      v6 = 2 * v5;
      if (!v5)
      {
        v6 = 256;
      }

      if (v6 <= v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = v6;
      }

      v8 = result;
      v9 = __ptr;
      v10 = malloc_type_realloc(*(result + 528), v7, 0x100004077774924uLL);
      __ptr = v9;
      v11 = v10;
      result = v8;
      v8[66] = v11;
      v8[67] = v7;
      v3 = v8[65];
    }

    *&v11[v3] = *__ptr;
    *(result + 520) += 4;
  }

  return result;
}

uint64_t vl_fio_close(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 552);
  if (v2)
  {
    v3 = fclose(v2);
    v4 = *(a1 + 560);
    free(a1);
    if (!v3)
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 512) == 119)
    {
      v6 = *(a1 + 520);
      v7 = malloc_type_malloc(v6, 0xD0149FD0uLL);
      v8 = v7;
      *(a1 + 560) = 0;
      while (1)
      {
        v9 = compression_encode_buffer(v7, v6, *(a1 + 528), v6, 0, COMPRESSION_LZFSE);
        *(a1 + 560) += v9;
        if (v9)
        {
          break;
        }

        free(v8);
        v6 += *(a1 + 520) / 2;
        v7 = malloc_type_malloc(v6, 0x490CB58BuLL);
        v8 = v7;
      }

      v11 = v9;
      v12 = fopen(a1, "wb");
      fwrite(v8, 1uLL, v11, v12);
      v10 = fclose(v12);
      free(v8);
    }

    else
    {
      v10 = 0;
    }

    free(*(a1 + 528));
    v4 = *(a1 + 560);
    free(a1);
    if (!v10)
    {
      return v4;
    }
  }

  printf("%sError : ", &str_4);
  printf("Problem closing file");
  putchar(10);
  return v4;
}

void vl_par_version(int a1@<W0>, _OWORD *a2@<X8>)
{
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  vl_par_default(a2);
  printf("Verbose : ");
  printf("%s: %d \n", "vl_par_version", a1);
  putchar(10);
  if (a1 <= 1999)
  {
    switch(a1)
    {
      case 0:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        return;
      case 1:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 38) = 2;
        return;
      case 2:
      case 3:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 134:
      case 149:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 204:
      case 207:
      case 208:
      case 209:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 256:
      case 257:
      case 259:
      case 260:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 414:
      case 417:
      case 418:
      case 419:
      case 422:
      case 423:
      case 424:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 476:
      case 477:
      case 478:
      case 479:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
      case 602:
      case 603:
      case 604:
      case 605:
      case 606:
      case 607:
      case 608:
      case 609:
      case 610:
      case 611:
      case 612:
      case 613:
      case 614:
      case 615:
      case 616:
      case 617:
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 665:
      case 666:
      case 667:
      case 668:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
      case 701:
      case 702:
      case 703:
      case 704:
      case 705:
      case 710:
      case 711:
      case 712:
      case 713:
      case 714:
      case 715:
      case 716:
      case 717:
      case 718:
      case 719:
      case 720:
      case 721:
      case 722:
      case 723:
      case 724:
      case 725:
      case 726:
      case 727:
      case 728:
      case 729:
      case 730:
      case 731:
      case 732:
      case 733:
      case 734:
      case 735:
      case 736:
      case 737:
      case 738:
      case 739:
      case 740:
      case 741:
      case 742:
      case 743:
      case 744:
      case 745:
      case 746:
      case 747:
      case 748:
      case 749:
      case 750:
      case 751:
      case 752:
      case 753:
      case 754:
      case 755:
      case 756:
      case 757:
      case 758:
      case 759:
      case 760:
      case 761:
      case 762:
      case 763:
      case 764:
      case 765:
      case 766:
      case 767:
      case 768:
      case 769:
      case 770:
      case 771:
      case 772:
      case 773:
      case 774:
      case 775:
      case 776:
      case 777:
      case 778:
      case 779:
      case 780:
      case 781:
      case 782:
      case 783:
      case 784:
      case 785:
      case 786:
      case 787:
      case 788:
      case 789:
      case 790:
      case 791:
      case 792:
      case 793:
      case 794:
      case 795:
      case 796:
      case 797:
      case 798:
      case 799:
      case 801:
      case 802:
      case 803:
      case 804:
      case 805:
      case 806:
      case 807:
      case 808:
      case 809:
      case 810:
      case 811:
      case 812:
      case 813:
      case 814:
      case 815:
      case 816:
      case 817:
      case 818:
      case 819:
      case 820:
      case 821:
      case 822:
      case 823:
      case 824:
      case 825:
      case 826:
      case 827:
      case 828:
      case 829:
      case 830:
      case 831:
      case 832:
      case 833:
      case 834:
      case 835:
      case 836:
      case 837:
      case 838:
      case 839:
      case 840:
      case 841:
      case 842:
      case 843:
      case 844:
      case 845:
      case 846:
      case 847:
      case 848:
      case 849:
        goto LABEL_224;
      case 4:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 38) = 2;
        goto LABEL_276;
      case 10:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 32) = 1;
        return;
      case 102:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 44) = 8;
        *(a2 + 63) = 1065353216;
        return;
      case 103:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 44) = 8;
        *(a2 + 63) = 1065353216;
        goto LABEL_172;
      case 104:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 44) = 8;
        *(a2 + 63) = 1065353216;
        goto LABEL_157;
      case 105:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 44) = 8;
        *(a2 + 63) = 1065353216;
        *(a2 + 76) = 1;
        return;
      case 106:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 44) = 8;
        *(a2 + 63) = 1065353216;
        *(a2 + 125) = 1;
        goto LABEL_159;
      case 131:
        v6 = a2;

        goto LABEL_133;
      case 132:
        v6 = a2;

        goto LABEL_133;
      case 133:
        vl_par_ver_131(a2);
        goto LABEL_128;
      case 135:
        v6 = a2;

LABEL_133:
        vl_par_ver_131(v6);
        return;
      case 136:
        vl_par_ver_131(a2);
        *(a2 + 63) = 1056964608;
        return;
      case 137:

        vl_par_ver_137(a2);
        return;
      case 138:
        vl_par_ver_137(a2);
        *(a2 + 70) = 0xC800000001;
        return;
      case 139:
        vl_par_ver_137(a2);
        *(a2 + 188) = 0x3F6666663F733333;
        *(a2 + 40) = 0;
        goto LABEL_221;
      case 140:
        vl_par_ver_131(a2);
        goto LABEL_266;
      case 141:

        vl_par_ver_141(a2);
        return;
      case 142:
        vl_par_ver_141(a2);
        goto LABEL_218;
      case 143:
        vl_par_ver_137(a2);
        *(a2 + 188) = 0x3F6666663F733333;
        *(a2 + 40) = 0;
        *(a2 + 140) = 1;
        goto LABEL_221;
      case 144:
        vl_par_ver_137(a2);
        goto LABEL_193;
      case 145:

        vl_par_ver_145(a2);
        return;
      case 146:
        vl_par_ver_137(a2);
        goto LABEL_181;
      case 147:

        vl_par_ver_147(a2);
        return;
      case 148:
        vl_par_ver_147(a2);
        *(a2 + 70) = 0xFA00000001;
        return;
      case 150:
        vl_par_ver_131(a2);
        *(a2 + 125) = 0;
LABEL_128:
        *(a2 + 27) = 1082130432;
        return;
      case 151:
        vl_par_ver_131(a2);
        *(a2 + 125) = 0;
        *(a2 + 27) = 1082130432;
LABEL_157:
        *(a2 + 75) = 1;
        return;
      case 152:
        vl_par_ver_131(a2);
        *(a2 + 125) = 0;
        *(a2 + 27) = 1082130432;
LABEL_159:
        *(a2 + 300) = 0x100000001;
        return;
      case 153:
        vl_par_ver_131(a2);
        *(a2 + 125) = 0;
        *(a2 + 27) = 1082130432;
        *(a2 + 75) = 1;
        goto LABEL_204;
      case 154:
        vl_par_ver_137(a2);
        *(a2 + 75) = 1;
        *(a2 + 125) = 1;
        *(a2 + 101) = 0x40000000;
        *(a2 + 412) = 0xF00000001;
        return;
      case 155:

        vl_par_ver_155(a2);
        return;
      case 156:
        vl_par_ver_137(a2);
        *(a2 + 22) = 3006;
LABEL_181:
        *(a2 + 75) = 1;
        *(a2 + 125) = 1;
        return;
      case 157:
        goto LABEL_28;
      case 200:
        vl_par_ver_131(a2);
        *(a2 + 27) = 1082130432;
        *(a2 + 125) = 1;
        return;
      case 201:
        vl_par_ver_131(a2);
        *(a2 + 27) = 1082130432;
        *(a2 + 125) = 1;
        *(a2 + 76) = 1;
        return;
      case 202:
        vl_par_ver_131(a2);
        *(a2 + 27) = 1082130432;
LABEL_172:
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        return;
      case 203:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 300) = 0x100000001;
        *(a2 + 108) = 0x39D1B71740800000;
        return;
      case 205:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 300) = 0x100000001;
        *(a2 + 108) = 0x39D1B71740800000;
        goto LABEL_204;
      case 206:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        *(a2 + 27) = 0;
        *(a2 + 28) = 0;
        *(a2 + 156) = 0x40E0000000000067;
        return;
      case 210:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        *(a2 + 156) = 0x40E0000000000067;
        goto LABEL_196;
      case 227:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        *(a2 + 27) = 0;
        *(a2 + 28) = 0;
        *(a2 + 156) = 0x40E0000000000067;
LABEL_193:
        *(a2 + 138) = 1;
        *(a2 + 604) = 0;
        *(a2 + 74) = 0;
        goto LABEL_194;
      case 228:

        vl_par_ver_228(a2);
        return;
      case 250:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 300) = 0x100000001;
        *(a2 + 108) = 0x39D1B71740800000;
        *(a2 + 72) = 0;
        return;
      case 251:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        *(a2 + 27) = 0;
        *(a2 + 28) = 0;
        *(a2 + 156) = 0x40E0000000000067;
        goto LABEL_204;
      case 252:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        *(a2 + 27) = 0;
        *(a2 + 28) = 0;
        *(a2 + 156) = 0x40E0000000000067;
        *(a2 + 138) = 1;
        *(a2 + 604) = 0;
        *(a2 + 74) = 0;
        goto LABEL_203;
      case 253:
      case 258:
        vl_par_ver_131(a2);
        *(a2 + 75) = 1;
        *(a2 + 27) = 0;
        *(a2 + 28) = 0;
        *(a2 + 156) = 0x40E0000000000067;
        v4 = 3004;
        goto LABEL_10;
      case 254:

        vl_par_ver_254(a2);
        return;
      case 255:
        vl_par_ver_228(a2);
        goto LABEL_204;
      case 300:
        vl_par_default(__src);
        memcpy(a2, __src, 0x3F0uLL);
        *(a2 + 21) = 12000;
        *(a2 + 52) = 0xB3CF5C28FLL;
        *(a2 + 19) = 0x6700000002;
        return;
      case 301:

        vl_par_ver_301(a2);
        return;
      case 302:

        vl_par_ver_302(a2);
        return;
      case 303:

        vl_par_ver_303(a2);
        return;
      case 304:

        vl_par_ver_304(a2);
        return;
      case 305:

        vl_par_ver_305(a2);
        return;
      case 306:

        vl_par_ver_306(a2);
        return;
      case 307:

        vl_par_ver_307(a2);
        return;
      case 308:

        vl_par_ver_308(a2);
        return;
      case 400:
        vl_par_ver_131(a2);
        *(a2 + 125) = 1;
        *(a2 + 75) = 1;
        *(a2 + 27) = 0;
        *(a2 + 28) = 0;
        *(a2 + 156) = 0x40E0000000000067;
        goto LABEL_121;
      case 401:
        vl_par_ver_137(a2);
        *(a2 + 75) = 1;
        *(a2 + 125) = 1;
        *(a2 + 103) = 0;
        return;
      case 402:

        vl_par_ver_402(a2);
        return;
      case 403:

        vl_par_ver_403(a2);
        return;
      case 404:

        vl_par_ver_404(a2);
        return;
      case 410:
        vl_par_ver_402(a2);
        *(a2 + 63) = 1090519040;
        *(a2 + 44) = 0x400000001;
        *(a2 + 79) = 120;
        return;
      case 411:
        vl_par_ver_402(a2);
        *(a2 + 63) = 1090519040;
        *(a2 + 44) = 0x400000001;
        *(a2 + 79) = 30;
        return;
      case 412:

        vl_par_ver_412(a2);
        return;
      case 413:

        vl_par_ver_413(a2);
        return;
      case 415:
        vl_par_ver_402(a2);
        *(a2 + 63) = 1090519040;
        *(a2 + 44) = 0x400000001;
        *(a2 + 92) = 1056964608;
        *(a2 + 95) = 8;
        *(a2 + 79) = 160;
        return;
      case 416:
        vl_par_ver_402(a2);
        *(a2 + 63) = 1090519040;
        *(a2 + 44) = 0x400000001;
        *(a2 + 92) = 1053609165;
        *(a2 + 95) = 6;
        *(a2 + 79) = 80;
        return;
      case 420:
        vl_par_ver_402(a2);
        *(a2 + 44) = 0x400000001;
        *(a2 + 79) = 120;
        *(a2 + 59) = 1;
        a2[15] = xmmword_2711038A0;
        return;
      case 421:

        vl_par_ver_421(a2);
        return;
      case 425:
        vl_par_ver_402(a2);
        *(a2 + 44) = 0x400000001;
        *(a2 + 92) = 1056964608;
        *(a2 + 95) = 8;
        *(a2 + 79) = 160;
        *(a2 + 59) = 1;
        a2[15] = xmmword_271103890;
        return;
      case 433:
        vl_par_ver_228(a2);
        *(a2 + 63) = 1065353216;
LABEL_121:
        *(a2 + 78) = 0x3FB657184AE74487;
        *(a2 + 153) = 9;
        return;
      case 444:

        vl_par_ver_444(a2);
        return;
      case 445:
        vl_par_ver_444(a2);
LABEL_196:
        *(a2 + 108) = 0x387BA88240400000;
        return;
      case 446:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        goto LABEL_111;
      case 447:
        vl_par_ver_444(a2);
        goto LABEL_276;
      case 448:
        vl_par_ver_444(a2);
        goto LABEL_266;
      case 449:
        vl_par_ver_444(a2);
        goto LABEL_263;
      case 450:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 140) = 1;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7FBE77;
        *(a2 + 22) = 3004;
        *(a2 + 44) = 9;
        return;
      case 451:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 39) = 104;
        return;
      case 452:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 39) = 104;
LABEL_111:
        *(a2 + 140) = 1;
        *(a2 + 138) = 1;
LABEL_203:
        *(a2 + 80) = 0x400000003F7FBE77;
LABEL_204:
        *(a2 + 22) = 3004;
        return;
      case 453:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 39) = 104;
        *(a2 + 196) = 0x3F7FFFEF00000004;
        *(a2 + 22) = 0xF424000000020;
        *(a2 + 204) = xmmword_271103880;
        *(a2 + 220) = 0x5DC0000012CLL;
        *(a2 + 57) = 1069547520;
        return;
      case 454:

        vl_par_ver_454(a2);
        return;
      case 455:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 39) = 104;
        goto LABEL_276;
      case 456:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 39) = 104;
        goto LABEL_266;
      case 457:
        vl_par_ver_444(a2);
        *(a2 + 108) = 0x387BA88240400000;
        *(a2 + 39) = 104;
        *(a2 + 140) = 1;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7FBE77;
        *(a2 + 22) = 3004;
        *(a2 + 196) = 0x3F7FFFEF00000004;
        *(a2 + 204) = xmmword_271103870;
        *(a2 + 220) = 0x3E8000000C8;
        *(a2 + 57) = 0x40000000;
        *(a2 + 22) = 0xF424000000028;
        return;
      case 458:

        vl_par_ver_458(a2);
        return;
      case 459:
        vl_par_ver_458(a2);
        goto LABEL_276;
      case 460:
        vl_par_ver_458(a2);
        goto LABEL_213;
      case 461:

        vl_par_ver_461(a2);
        return;
      case 462:
        vl_par_ver_461(a2);
        goto LABEL_276;
      case 463:
        vl_par_ver_461(a2);
LABEL_213:
        *(a2 + 44) = 40;
        *(a2 + 140) = 1;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7EB852;
        return;
      case 464:
        vl_par_ver_461(a2);
        *(a2 + 44) = 40;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7EB852;
        *(a2 + 70) = 0xFD00000001;
        return;
      case 465:

        vl_par_ver_465(a2);
        return;
      case 466:
        vl_par_ver_461(a2);
        *(a2 + 44) = 40;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7EB852;
        *(a2 + 70) = 0xFD00000001;
        *(a2 + 59) = 1;
        *(a2 + 30) = 0x3F19999A3F5EB852;
        *(a2 + 62) = 1128792064;
        return;
      case 467:
        vl_par_ver_461(a2);
        *(a2 + 44) = 40;
        *(a2 + 70) = 0xFD00000001;
        *(a2 + 138) = 0;
        *(a2 + 80) = 0x400000003F666666;
        *(a2 + 75) = 0;
        return;
      case 468:
        goto LABEL_21;
      case 469:
        vl_par_ver_461(a2);
        *(a2 + 44) = 40;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7EB852;
        *(a2 + 70) = 0xFD00000001;
        *(a2 + 162) = 1;
        return;
      case 470:
        vl_par_ver_461(a2);
        *(a2 + 44) = 40;
        *(a2 + 138) = 1;
        *(a2 + 80) = 0x400000003F7EB852;
        *(a2 + 70) = 0xFD00000001;
        *(a2 + 22) = 3010;
        *(a2 + 162) = 1;
        return;
      case 471:

        vl_par_ver_471(a2);
        return;
      case 472:

        vl_par_ver_472(a2);
        return;
      case 473:
        vl_par_ver_472(a2);
        *(a2 + 82) = 0x7D000000001;
        return;
      case 474:

        vl_par_ver_474(a2);
        return;
      case 475:
        vl_par_ver_472(a2);
        *(a2 + 82) = 0x7D000000001;
        *(a2 + 22) = 3011;
        *(a2 + 162) = 0;
        *(a2 + 244) = 1;
        *(a2 + 247) = 4;
        *(a2 + 160) = 1065017672;
        return;
      case 480:
        vl_par_ver_46430(a2);
        *(a2 + 126) = 0x40000000;
        *(a2 + 153) = 2;
        *(a2 + 372) = 0x3DB2B8C23C8EFA35;
        *(a2 + 78) = 0x3FB6571840000000;
        *(a2 + 44) = 42;
        return;
      case 706:
        vl_par_ver_461(a2);
        *(a2 + 44) = 8;
        *(a2 + 70) = 0xFD00000001;
        goto LABEL_293;
      case 707:
        vl_par_ver_458(a2);
        *(a2 + 44) = 8;
        *(a2 + 70) = 0xFC00000001;
        goto LABEL_293;
      case 708:
        vl_par_ver_458(a2);
        *(a2 + 44) = 8;
        *(a2 + 70) = 0xFC00000001;
        *(a2 + 160) = 1063675494;
        *(a2 + 22) = 3007;
        return;
      case 709:

        vl_par_ver_709(a2);
        return;
      case 800:
        vl_par_ver_137(a2);
LABEL_218:
        *(a2 + 38) = 0;
        *(a2 + 21) = 0x1400000001;
        return;
      case 850:
        vl_par_ver_458(a2);
        *(a2 + 27) = 0;
        *(a2 + 22) = 3008;
        *(a2 + 29) = 1;
        goto LABEL_276;
      case 851:
        vl_par_ver_458(a2);
        *(a2 + 27) = 0;
        *(a2 + 22) = 3008;
        *(a2 + 29) = 1;
        *(a2 + 44) = 8;
        *(a2 + 98) = 1;
        return;
      default:
        if (a1 == 1481)
        {
          vl_par_ver_147(a2);
          *(a2 + 70) = 0xFA00000001;
          *(a2 + 188) = 0x3F6666663F733333;
LABEL_221:
          *(a2 + 22) = 0x271000000002;
          return;
        }

        if (a1 != 1946)
        {
          goto LABEL_224;
        }

LABEL_28:
        vl_par_ver_137(a2);
        *(a2 + 75) = 1;
        *(a2 + 125) = 1;
        *(a2 + 27) = 0;
        v5 = 3008;
        break;
    }

LABEL_29:
    *(a2 + 22) = v5;
    *(a2 + 29) = 1;
    return;
  }

  if (a1 <= 4469)
  {
    if (a1 > 2099)
    {
      switch(a1)
      {
        case 2100:
LABEL_24:
          vl_par_ver_461(a2);
          *(a2 + 44) = 40;
          *(a2 + 70) = 0xFD00000001;
          *(a2 + 138) = 0;
          *(a2 + 80) = 0x400000003F666666;
          *(a2 + 75) = 0;
          break;
        case 2200:
LABEL_22:
          vl_par_ver_4644(a2);
          break;
        case 2300:
LABEL_16:
          vl_par_ver_4643(a2);
          break;
        default:
          goto LABEL_224;
      }
    }

    else
    {
      switch(a1)
      {
        case 2000:
LABEL_21:
          vl_par_ver_461(a2);
          *(a2 + 44) = 40;
          *(a2 + 138) = 1;
          *(a2 + 80) = 0x400000003F7EB852;
          *(a2 + 70) = 0xFD00000001;
          break;
        case 2050:
LABEL_23:
          vl_par_ver_461(a2);
          *(a2 + 44) = 40;
          *(a2 + 70) = 0xFD00000001;
          *(a2 + 138) = 0;
          *(a2 + 80) = 0x400000003F666666;
          break;
        case 2051:
          vl_par_ver_461(a2);
          *(a2 + 44) = 40;
          *(a2 + 70) = 0xFD00000001;
          *(a2 + 138) = 0;
          *(a2 + 80) = 0x400000003F666666;
          v4 = 3010;
LABEL_10:
          *(a2 + 22) = v4;
          *(a2 + 125) = 0;
          return;
        default:
LABEL_224:
          printf("%sError : ", "");
          printf("%s: ver %d not implemented", "vl_par_version", a1);

          putchar(10);
          return;
      }
    }

    *(a2 + 22) = 3010;
    return;
  }

  switch(a1)
  {
    case 4470:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      goto LABEL_276;
    case 4471:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      *(a2 + 140) = 1;
      *(a2 + 138) = 1;
      *(a2 + 80) = 0x400000003F7FBE77;
      *(a2 + 22) = 3004;
      goto LABEL_276;
    case 4472:
    case 4473:
    case 4474:
    case 4475:
    case 4476:
    case 4477:
    case 4478:
    case 4479:
    case 4482:
    case 4483:
    case 4484:
    case 4485:
    case 4486:
    case 4487:
    case 4488:
    case 4489:
    case 4492:
    case 4493:
    case 4494:
    case 4495:
    case 4496:
    case 4497:
    case 4498:
    case 4499:
    case 4500:
    case 4501:
    case 4502:
    case 4503:
    case 4504:
    case 4505:
    case 4506:
    case 4507:
    case 4508:
    case 4509:
    case 4510:
    case 4511:
    case 4512:
    case 4513:
    case 4514:
    case 4515:
    case 4516:
    case 4517:
    case 4518:
    case 4519:
    case 4520:
    case 4521:
    case 4522:
    case 4523:
    case 4524:
    case 4525:
    case 4526:
    case 4527:
    case 4528:
    case 4529:
    case 4530:
    case 4533:
    case 4534:
    case 4535:
    case 4536:
    case 4537:
    case 4538:
    case 4539:
    case 4540:
    case 4542:
    case 4543:
    case 4544:
    case 4545:
    case 4546:
    case 4547:
    case 4548:
    case 4549:
    case 4550:
    case 4552:
    case 4553:
    case 4554:
    case 4555:
    case 4556:
    case 4557:
    case 4558:
    case 4559:
    case 4560:
    case 4562:
    case 4563:
    case 4564:
    case 4565:
    case 4566:
    case 4567:
    case 4568:
    case 4569:
    case 4570:
    case 4577:
    case 4578:
    case 4579:
    case 4580:
    case 4581:
    case 4582:
    case 4583:
    case 4584:
    case 4585:
    case 4586:
    case 4587:
    case 4588:
    case 4589:
    case 4590:
    case 4591:
    case 4592:
    case 4593:
    case 4594:
    case 4595:
    case 4596:
    case 4597:
    case 4598:
    case 4599:
    case 4600:
    case 4603:
    case 4604:
    case 4605:
    case 4606:
    case 4607:
    case 4608:
    case 4609:
    case 4610:
    case 4611:
    case 4612:
    case 4613:
    case 4614:
    case 4615:
    case 4616:
    case 4617:
    case 4618:
    case 4619:
    case 4620:
    case 4621:
    case 4622:
    case 4623:
    case 4624:
    case 4625:
    case 4626:
    case 4627:
    case 4628:
    case 4629:
    case 4630:
    case 4637:
    case 4638:
    case 4639:
    case 4640:
    case 4645:
    case 4646:
    case 4647:
    case 4648:
    case 4649:
    case 4650:
    case 4653:
    case 4654:
    case 4655:
    case 4656:
    case 4657:
    case 4658:
    case 4659:
    case 4660:
    case 4663:
    case 4664:
    case 4665:
    case 4666:
    case 4667:
    case 4668:
    case 4669:
    case 4670:
    case 4671:
    case 4672:
    case 4673:
    case 4674:
    case 4675:
    case 4676:
    case 4677:
    case 4678:
    case 4679:
    case 4680:
    case 4685:
    case 4686:
    case 4687:
    case 4688:
    case 4689:
    case 4690:
    case 4691:
    case 4692:
    case 4693:
    case 4694:
    case 4695:
    case 4696:
    case 4697:
    case 4698:
    case 4699:
    case 4700:
    case 4701:
    case 4702:
    case 4703:
    case 4704:
    case 4705:
    case 4706:
    case 4707:
    case 4708:
    case 4709:
    case 4710:
    case 4711:
    case 4712:
    case 4713:
    case 4714:
    case 4715:
    case 4716:
    case 4717:
    case 4718:
    case 4719:
    case 4720:
    case 4721:
    case 4722:
    case 4723:
    case 4724:
    case 4725:
    case 4726:
    case 4727:
    case 4728:
    case 4729:
    case 4730:
    case 4734:
    case 4735:
    case 4736:
    case 4737:
    case 4738:
    case 4739:
    case 4740:
    case 4741:
    case 4742:
    case 4743:
    case 4744:
    case 4745:
    case 4746:
    case 4747:
    case 4748:
    case 4749:
    case 4750:
      goto LABEL_224;
    case 4480:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      goto LABEL_266;
    case 4481:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      *(a2 + 140) = 1;
      *(a2 + 138) = 1;
      *(a2 + 80) = 0x400000003F7FBE77;
      *(a2 + 22) = 3004;
LABEL_266:
      *(a2 + 44) = 16;
      return;
    case 4490:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
LABEL_263:
      *(a2 + 44) = 1;
      return;
    case 4491:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      *(a2 + 140) = 1;
      *(a2 + 138) = 1;
      *(a2 + 80) = 0x400000003F7FBE77;
      *(a2 + 22) = 3004;
      *(a2 + 44) = 1;
      return;
    case 4531:

      vl_par_ver_4531(a2);
      return;
    case 4532:

      vl_par_ver_4532(a2);
      return;
    case 4541:

      vl_par_ver_4541(a2);
      return;
    case 4551:

      vl_par_ver_4551(a2);
      return;
    case 4561:

      vl_par_ver_4561(a2);
      return;
    case 4571:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      *(a2 + 39) = 104;
      *(a2 + 140) = 1;
      *(a2 + 22) = 3004;
      *(a2 + 196) = 0x3F7FFFEF00000004;
      *(a2 + 204) = xmmword_271103870;
      *(a2 + 220) = 0x3E8000000C8;
      *(a2 + 57) = 0x40000000;
      *(a2 + 22) = 0xF424000000028;
      goto LABEL_290;
    case 4572:
      vl_par_ver_444(a2);
      *(a2 + 108) = 0x387BA88240400000;
      *(a2 + 39) = 104;
      *(a2 + 140) = 1;
      *(a2 + 22) = 3004;
      *(a2 + 196) = 0x3F7FFFEF00000004;
      *(a2 + 204) = xmmword_271103870;
      *(a2 + 220) = 0x3E8000000C8;
      *(a2 + 57) = 0x40000000;
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      *(a2 + 22) = 0xF424000000008;
      return;
    case 4573:
      vl_par_ver_444(a2);
      *(a2 + 39) = 104;
      *(a2 + 140) = 1;
      *(a2 + 196) = 0x3F7FFFEF00000004;
      *(a2 + 204) = xmmword_271103870;
      *(a2 + 220) = 0x3E8000000C8;
      *(a2 + 57) = 0x40000000;
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      *(a2 + 22) = 0xF424000000008;
      *(a2 + 108) = 0x387BA88200000000;
      v5 = 3009;
      goto LABEL_29;
    case 4574:
      vl_par_ver_444(a2);
      *(a2 + 39) = 104;
      *(a2 + 140) = 1;
      *(a2 + 196) = 0x3F7FFFEF00000004;
      *(a2 + 204) = xmmword_271103870;
      *(a2 + 220) = 0x3E8000000C8;
      *(a2 + 57) = 0x40000000;
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      *(a2 + 22) = 0xF424000000008;
      *(a2 + 22) = 3006;
      v7 = 0x3827C5AC00000000;
      goto LABEL_261;
    case 4575:
      vl_par_ver_444(a2);
      *(a2 + 39) = 104;
      *(a2 + 140) = 1;
      *(a2 + 196) = 0x3F7FFFEF00000004;
      *(a2 + 204) = xmmword_271103870;
      *(a2 + 220) = 0x3E8000000C8;
      *(a2 + 57) = 0x40000000;
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      *(a2 + 22) = 0xF424000000008;
      *(a2 + 22) = 3006;
      v7 = 0x387BA88240400000;
LABEL_261:
      *(a2 + 108) = v7;
      *(a2 + 29) = 0;
      return;
    case 4576:
      vl_par_ver_444(a2);
      *(a2 + 39) = 104;
      *(a2 + 140) = 1;
      *(a2 + 196) = 0x3F7FFFEF00000004;
      *(a2 + 204) = xmmword_271103870;
      *(a2 + 220) = 0x3E8000000C8;
      *(a2 + 57) = 0x40000000;
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      *(a2 + 22) = 0xF424000000008;
      *(a2 + 22) = 3006;
      *(a2 + 108) = 0x387BA88200000000;
      *(a2 + 29) = 1;
      return;
    case 4601:
      vl_par_ver_458(a2);
      goto LABEL_288;
    case 4602:
      vl_par_ver_458(a2);
      goto LABEL_251;
    case 4631:
      vl_par_ver_461(a2);
LABEL_288:
      *(a2 + 44) = 40;
      *(a2 + 140) = 1;
      goto LABEL_290;
    case 4632:
      vl_par_ver_461(a2);
LABEL_251:
      *(a2 + 140) = 1;
      goto LABEL_268;
    case 4633:

      vl_par_ver_4633(a2);
      return;
    case 4634:
      vl_par_ver_461(a2);
      *(a2 + 44) = 40;
      *(a2 + 140) = 1;
      *(a2 + 138) = 1;
      *(a2 + 80) = 0x400000003F7F3B64;
      return;
    case 4635:
      vl_par_ver_461(a2);
      *(a2 + 44) = 40;
      *(a2 + 140) = 1;
      *(a2 + 138) = 1;
LABEL_194:
      *(a2 + 80) = 0x400000003F7FBE77;
      return;
    case 4636:
      vl_par_ver_461(a2);
      *(a2 + 44) = 40;
      *(a2 + 140) = 1;
      *(a2 + 138) = 1;
      *(a2 + 80) = 0x400000003F7FDF3BLL;
      return;
    case 4641:
      vl_par_ver_461(a2);
      *(a2 + 44) = 40;
      *(a2 + 70) = 0xFD00000001;
      goto LABEL_290;
    case 4642:
      vl_par_ver_461(a2);
      *(a2 + 70) = 0xFD00000001;
LABEL_268:
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      goto LABEL_276;
    case 4643:

      vl_par_ver_4643(a2);
      return;
    case 4644:

      vl_par_ver_4644(a2);
      return;
    case 4651:
      vl_par_ver_465(a2);
      goto LABEL_292;
    case 4652:
      vl_par_ver_465(a2);
      *(a2 + 138) = 0;
      *(a2 + 160) = 1063675494;
LABEL_276:
      *(a2 + 44) = 8;
      break;
    case 4661:
      vl_par_ver_461(a2);
      *(a2 + 44) = 40;
      *(a2 + 70) = 0xFD00000001;
      *(a2 + 59) = 1;
      *(a2 + 30) = 0x3F19999A3F5EB852;
      *(a2 + 62) = 1128792064;
LABEL_290:
      *(a2 + 138) = 0;
      *(a2 + 80) = 0x400000003F666666;
      break;
    case 4662:

      vl_par_ver_4662(a2);
      break;
    case 4681:
      goto LABEL_23;
    case 4682:
      goto LABEL_24;
    case 4683:
      goto LABEL_22;
    case 4684:
      goto LABEL_16;
    case 4731:
      vl_par_ver_472(a2);
      *(a2 + 82) = 0x7D000000001;
LABEL_292:
      *(a2 + 138) = 0;
LABEL_293:
      *(a2 + 160) = 1063675494;
      break;
    case 4732:
      vl_par_ver_472(a2);
      *(a2 + 82) = 0x7D000000001;
      *(a2 + 22) = 3011;
      break;
    case 4733:
      vl_par_ver_472(a2);
      *(a2 + 82) = 0x7D000000001;
      *(a2 + 140) = 0;
      *(a2 + 244) = 1;
      *(a2 + 162) = 0;
      break;
    case 4751:

      vl_par_ver_4751(a2);
      break;
    case 4752:
      vl_par_ver_472(a2);
      *(a2 + 82) = 0x7D000000001;
      *(a2 + 22) = 3011;
      *(a2 + 162) = 0;
      *(a2 + 244) = 1;
      *(a2 + 247) = 4;
      *(a2 + 160) = 1065017672;
      *(a2 + 140) = 0;
      break;
    default:
      switch(a1)
      {
        case 46311:

          vl_par_ver_46311(a2);
          return;
        case 46312:

          vl_par_ver_46312(a2);
          return;
        case 46313:
        case 46314:
        case 46315:
        case 46316:
        case 46317:
        case 46318:
        case 46319:
        case 46320:
        case 46321:
        case 46322:
        case 46323:
        case 46324:
        case 46325:
        case 46326:
        case 46327:
        case 46328:
        case 46329:
        case 46330:
        case 46331:
        case 46332:
        case 46333:
        case 46334:
        case 46335:
        case 46336:
        case 46337:
        case 46338:
        case 46339:
        case 46340:
        case 46341:
        case 46342:
        case 46343:
        case 46344:
        case 46345:
        case 46346:
        case 46347:
        case 46348:
        case 46349:
        case 46350:
        case 46351:
        case 46352:
        case 46353:
        case 46354:
        case 46355:
        case 46356:
        case 46357:
        case 46358:
        case 46359:
        case 46360:
        case 46361:
        case 46362:
        case 46363:
        case 46364:
        case 46365:
        case 46366:
        case 46367:
        case 46368:
        case 46369:
        case 46370:
        case 46371:
        case 46372:
        case 46373:
        case 46374:
        case 46375:
        case 46376:
        case 46377:
        case 46378:
        case 46379:
        case 46380:
        case 46381:
        case 46382:
        case 46383:
        case 46384:
        case 46385:
        case 46386:
        case 46387:
        case 46388:
        case 46389:
        case 46390:
        case 46391:
        case 46392:
        case 46393:
        case 46394:
        case 46395:
        case 46396:
        case 46397:
        case 46398:
        case 46399:
        case 46400:
        case 46401:
        case 46402:
        case 46403:
        case 46404:
        case 46405:
        case 46406:
        case 46407:
        case 46408:
        case 46409:
        case 46410:
        case 46421:
        case 46422:
        case 46423:
        case 46424:
        case 46425:
        case 46426:
        case 46427:
        case 46428:
        case 46429:
        case 46431:
        case 46433:
        case 46437:
        case 46438:
        case 46439:
        case 46440:
          goto LABEL_224;
        case 46411:

          vl_par_ver_46411(a2);
          return;
        case 46412:
          vl_par_ver_46411(a2);
          goto LABEL_336;
        case 46413:
          vl_par_ver_461(a2);
          *(a2 + 44) = 40;
          *(a2 + 70) = 0xFD00000001;
          *(a2 + 138) = 0;
          *(a2 + 80) = 0x400000003F666666;
          goto LABEL_325;
        case 46414:

          vl_par_ver_46414(a2);
          return;
        case 46415:

          vl_par_ver_46415(a2);
          return;
        case 46416:

          vl_par_ver_46416(a2);
          return;
        case 46417:

          vl_par_ver_46417(a2);
          return;
        case 46418:

          vl_par_ver_46418(a2);
          return;
        case 46419:

          vl_par_ver_46419(a2);
          return;
        case 46420:

          vl_par_ver_46420(a2);
          return;
        case 46430:

          vl_par_ver_46430(a2);
          return;
        case 46432:
          vl_par_ver_46430(a2);
          *(a2 + 153) = 15;
          return;
        case 46434:
          vl_par_ver_46430(a2);
          *(a2 + 153) = 4;
          *(a2 + 160) = 0;
          *(a2 + 44) |= 0x20u;
          *(a2 + 39) = 101;
          *(a2 + 41) = 10;
          return;
        case 46435:

          vl_par_ver_46435(a2);
          return;
        case 46436:

          vl_par_ver_46436(a2);
          return;
        case 46441:
          vl_par_ver_4644(a2);
          v9 = 3011;
          goto LABEL_344;
        case 46442:
          vl_par_ver_4644(a2);
          *(a2 + 26) = 384;
          *(a2 + 29) = 0;
LABEL_336:
          *(a2 + 22) = 3021;
          return;
        case 46443:
          vl_par_ver_4644(a2);
LABEL_325:
          *(a2 + 22) = 3011;
          *(a2 + 29) = 0;
          return;
        case 46444:
          vl_par_ver_4644(a2);
          *(a2 + 22) = 3011;
          *(a2 + 29) = 0;
          a2[62] = xmmword_271103860;
          return;
        case 46445:
          vl_par_ver_4644(a2);
          v9 = 3012;
LABEL_344:
          *(a2 + 22) = v9;
          *(a2 + 26) = 384;
          *(a2 + 29) = 0;
          return;
        case 46446:
          vl_par_ver_4644(a2);
          *(a2 + 22) = 3011;
          *(a2 + 26) = 384;
          *(a2 + 29) = 0;
          v8 = 0x12000000180;
          goto LABEL_327;
        case 46447:
          vl_par_ver_4644(a2);
          *(a2 + 22) = 3011;
          *(a2 + 26) = 384;
          *(a2 + 29) = 0;
          v8 = 0xD800000180;
LABEL_327:
          *(a2 + 125) = v8;
          *(a2 + 248) = 1;
          *(a2 + 40) = 0;
          break;
        default:
          if (a1 != 46810)
          {
            goto LABEL_224;
          }

          vl_par_ver_461(a2);
          *(a2 + 44) = 40;
          *(a2 + 138) = 0;
          *(a2 + 80) = 0x400000003F666666;
          *(a2 + 22) = 3010;
          *(a2 + 70) = 0xFD00000000;
          break;
      }

      break;
  }
}

double vl_par_ver_131(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *(a1 + 63) = 1065353216;
  *a1 = 0x100000002;
  result = 12831.713;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 38) = 2;
  return result;
}

float vl_par_ver_137(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  a1[19] = 0x6700000002;
  *(a1 + 44) = 16;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 153) = 9;
  *a1 = 0x100000002;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  result = *(a1 + 100) + *(a1 + 100);
  *(a1 + 100) = result;
  *(a1 + 436) = 0x41F0000040000000;
  *(a1 + 40) = 1088421888;
  return result;
}

float vl_par_ver_141(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 63) = 1065353216;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  a1[19] = 0x6700000002;
  *(a1 + 44) = 16;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 153) = 9;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  result = *(a1 + 100) + *(a1 + 100);
  *(a1 + 100) = result;
  *(a1 + 436) = 0x41F0000040000000;
  *(a1 + 40) = 1088421888;
  return result;
}

double vl_par_ver_145(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  a1[19] = 0x6700000002;
  *(a1 + 44) = 16;
  a1[78] = 0x3FB657184AE74487;
  *a1 = 0x100000002;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 100) = *(a1 + 100) + *(a1 + 100);
  *(a1 + 436) = 0x41F0000040000000;
  *(a1 + 40) = 1088421888;
  *(a1 + 138) = 1;
  *(a1 + 151) = 0;
  a1[76] = 0x900000000;
  a1[74] = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 24) = 4;
  *(a1 + 162) = 1;
  return result;
}

double vl_par_ver_147(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  a1[19] = 0x6700000002;
  *(a1 + 44) = 16;
  a1[78] = 0x3FB657184AE74487;
  *a1 = 0x100000002;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 100) = *(a1 + 100) + *(a1 + 100);
  *(a1 + 436) = 0x41F0000040000000;
  *(a1 + 40) = 1088421888;
  *(a1 + 138) = 1;
  *(a1 + 151) = 0;
  a1[76] = 0x900000000;
  a1[74] = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 75) = 1;
  *(a1 + 125) = 1;
  return result;
}

double vl_par_ver_155(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  a1[19] = 0x6700000002;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 153) = 9;
  *a1 = 0x100000002;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 100) = *(a1 + 100) + *(a1 + 100);
  *(a1 + 436) = 0x41F0000040000000;
  *(a1 + 40) = 1088421888;
  *(a1 + 75) = 1;
  *(a1 + 125) = 1;
  *(a1 + 48) = 1065353216;
  a1[22] = 0x271000000001;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 56) = 1500;
  *(a1 + 50) = 1064514355;
  *&result = 0x12C00000010;
  *(a1 + 204) = 0x12C00000010;
  return result;
}

double vl_par_ver_228(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *(a1 + 63) = 1065353216;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  *(a1 + 138) = 1;
  *(a1 + 604) = 0;
  a1[74] = 0;
  a1[80] = 0x400000003F7FBE77;
  *&result = 0xFA00000001;
  a1[70] = 0xFA00000001;
  return result;
}

double vl_par_ver_254(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *(a1 + 63) = 1065353216;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  *(a1 + 138) = 1;
  *(a1 + 604) = 0;
  a1[74] = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 22) = 3004;
  *(a1 + 125) = 0;
  return result;
}

double vl_par_ver_301(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 12000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_302(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 10000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_303(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 8000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_304(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 6000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_305(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 4000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_306(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 2000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_307(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 1000;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_308(uint64_t a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 176) = 8;
  *(a1 + 252) = 1065353216;
  *(a1 + 84) = 800;
  *(a1 + 52) = 0xB3CF5C28FLL;
  *&result = 0x6700000002;
  *(a1 + 152) = 0x6700000002;
  return result;
}

double vl_par_ver_402(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 153) = 9;
  *(a1 + 252) = 0x3FC0000040000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038B0;
  *&result = 0x3C0000001ELL;
  a1[39] = 0x3C0000001ELL;
  return result;
}

double vl_par_ver_403(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 252) = 0x3FC0000040000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038B0;
  a1[39] = 0x3C0000001ELL;
  *(a1 + 138) = 1;
  *(a1 + 151) = 0;
  a1[76] = 0x900000000;
  a1[74] = 0;
  a1[80] = 0x400000003F7FBE77;
  *&result = 0xFA00000001;
  a1[70] = 0xFA00000001;
  *(a1 + 22) = 3004;
  return result;
}

double vl_par_ver_404(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 252) = 0x3FC0000040000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038B0;
  a1[39] = 0x3C0000001ELL;
  *(a1 + 138) = 1;
  *(a1 + 151) = 0;
  a1[76] = 0x900000000;
  a1[74] = 0;
  a1[80] = 0x400000003F7FBE77;
  *&result = 0xFA00000001;
  a1[70] = 0xFA00000001;
  return result;
}

double vl_par_ver_412(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 80) = 1103626240;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  *(a1 + 138) = 1;
  *(a1 + 151) = 0;
  a1[76] = 0x900000000;
  a1[74] = 0;
  a1[80] = 0x400000003F7FBE77;
  *&result = 0xFA00000001;
  a1[70] = 0xFA00000001;
  *(a1 + 22) = 3004;
  return result;
}

double vl_par_ver_413(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 80) = 1103626240;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  *(a1 + 138) = 1;
  *(a1 + 151) = 0;
  a1[76] = 0x900000000;
  a1[74] = 0;
  a1[80] = 0x400000003F7FBE77;
  *&result = 0xFA00000001;
  a1[70] = 0xFA00000001;
  *(a1 + 22) = 3006;
  return result;
}

double vl_par_ver_421(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 44) = 8;
  *a1 = 0x100000002;
  a1[34] = 0x40C90FDB447A0000;
  *(a1 + 125) = 1;
  *(a1 + 75) = 1;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0;
  a1[19] = 0x6700000002;
  *(a1 + 40) = 1088421888;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 153) = 9;
  *(a1 + 64) = 1069547520;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  *(a1 + 59) = 1;
  result = 0.0000976562877;
  *(a1 + 15) = xmmword_2711038D0;
  return result;
}

double vl_par_ver_444(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  a1[22] = 0x271000000019;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 56) = 1500;
  *(a1 + 50) = 1064514355;
  *(a1 + 204) = 0x12C00000010;
  *a1 = 0x100000002;
  *(a1 + 156) = 0x40E0000000000067;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  result = 2.24711695e307;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  return result;
}

double vl_par_ver_4531(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 108) = 0x387BA88240400000;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  a1[70] = 0xFC00000001;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 22) = 3004;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103880;
  *&result = 0x5DC0000012CLL;
  *(a1 + 220) = 0x5DC0000012CLL;
  *(a1 + 57) = 1069547520;
  return result;
}

double vl_par_ver_4532(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 108) = 0x387BA88240400000;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103880;
  *&result = 0x5DC0000012CLL;
  *(a1 + 220) = 0x5DC0000012CLL;
  *(a1 + 57) = 1069547520;
  *(a1 + 26) = 2048;
  return result;
}

double vl_par_ver_454(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 108) = 0x387BA88240400000;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *&result = 0x3E8000000C8;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  return result;
}

double vl_par_ver_4541(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 108) = 0x387BA88240400000;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  a1[70] = 0xFC00000001;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 22) = 3004;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *&result = 0x3E8000000C8;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  return result;
}

double vl_par_ver_4551(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  result = 0.00750000117;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 1500;
  *(a1 + 50) = 1064514355;
  *(a1 + 204) = 0x12C00000010;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 108) = 0x387BA88240400000;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  a1[70] = 0xFC00000001;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 22) = 3004;
  a1[22] = 0x271000000008;
  a1[23] = 0x3F7EB8523C23D70ALL;
  return result;
}

double vl_par_ver_4561(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  result = 0.00750000117;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 1500;
  *(a1 + 50) = 1064514355;
  *(a1 + 204) = 0x12C00000010;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 108) = 0x387BA88240400000;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  a1[70] = 0xFC00000001;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7FBE77;
  *(a1 + 22) = 3004;
  a1[22] = 0x271000000010;
  a1[23] = 0x3F7EB8523C23D70ALL;
  return result;
}

double vl_par_ver_458(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *&result = 0x3E8000000C8;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  return result;
}

double vl_par_ver_461(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  result = *(&v3[16] + 12);
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  return result;
}

double vl_par_ver_46311(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  *(a1 + 140) = 1;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 124) = 0;
  *(a1 + 44) = 64;
  return result;
}

double vl_par_ver_46312(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  *(a1 + 140) = 1;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 124) = 1;
  *(a1 + 44) = 64;
  return result;
}

double vl_par_ver_4633(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  a1[22] = 0xF424000000020;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  a1[17] = *(&v3[16] + 12);
  *(a1 + 140) = 1;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 44) = 8;
  *(a1 + 33) = 0;
  *(a1 + 27) = 0;
  *(a1 + 22) = 3009;
  *(a1 + 29) = 1;
  return result;
}

double vl_par_ver_46411(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3011;
  a1[13] = 384;
  *(a1 + 29) = 0;
  return result;
}

double vl_par_ver_46414(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3011;
  *(a1 + 29) = 0;
  *&result = 0x100000001;
  *(a1 + 62) = xmmword_271103860;
  return result;
}

double vl_par_ver_46415(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3012;
  a1[13] = 384;
  *(a1 + 29) = 0;
  return result;
}

double vl_par_ver_46416(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3011;
  *(a1 + 26) = 384;
  *(a1 + 27) = 0;
  *(a1 + 29) = 0;
  *&result = 0x12000000180;
  a1[125] = 0x12000000180;
  *(a1 + 248) = 1;
  *(a1 + 40) = 0;
  return result;
}

double vl_par_ver_46417(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3011;
  *(a1 + 26) = 384;
  *(a1 + 27) = 0;
  *(a1 + 29) = 0;
  *&result = 0xD800000180;
  a1[125] = 0xD800000180;
  *(a1 + 248) = 1;
  *(a1 + 40) = 0;
  return result;
}

double vl_par_ver_46418(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3011;
  a1[13] = 512;
  *(a1 + 29) = 0;
  return result;
}

double vl_par_ver_46419(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3022;
  a1[13] = 384;
  *(a1 + 29) = 0;
  return result;
}

double vl_par_ver_46420(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 44) = 40;
  a1[70] = 0xFD00000001;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 22) = 3024;
  a1[13] = 384;
  *(a1 + 29) = 0;
  return result;
}

double vl_par_ver_4643(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  *(a1 + 44) = 40;
  *(a1 + 138) = 0;
  a1[70] = 0xFD00000000;
  result = 2.00000047;
  a1[80] = 0x400000003ECCCCCDLL;
  return result;
}

float vl_par_ver_46430(uint64_t a1)
{
  vl_par_ver_4643(a1);
  *(a1 + 604) = 1;
  *(a1 + 632) = 0x40000000;
  *(a1 + 612) = 9;
  *(a1 + 592) = 1;
  *(a1 + 516) = 1065353216;
  *(a1 + 372) = 0x3D0EFA353C8EFA35;
  *(a1 + 624) = 0x3FA1DF46A0000000;
  *(a1 + 428) = 0x3D0EFA353C8EFA35;
  *(a1 + 176) = 16;
  result = *(a1 + 440) + *(a1 + 440);
  *(a1 + 440) = result;
  *(a1 + 160) = 0xA00000000;
  return result;
}

double vl_par_ver_46435(uint64_t a1)
{
  vl_par_ver_4643(a1);
  *(a1 + 604) = 1;
  *(a1 + 632) = 0x40000000;
  *(a1 + 592) = 1;
  *(a1 + 516) = 0x23F800000;
  *(a1 + 372) = 0x3D5677503C8EFA35;
  *(a1 + 428) = 0x3D5677503C8EFA35;
  *(a1 + 440) = *(a1 + 440) + *(a1 + 440);
  *(a1 + 612) = 4;
  *(a1 + 156) = 101;
  *(a1 + 164) = 10;
  *(a1 + 400) = 995522384;
  *(a1 + 504) = 0x40000000;
  *(a1 + 176) = 176;
  *(a1 + 624) = 0x3FAACEEA00000000;
  result = -0.0078125;
  *(a1 + 640) = 0xBF80000000000000;
  *(a1 + 296) = 1069547520;
  return result;
}

double vl_par_ver_46436(uint64_t a1)
{
  vl_par_ver_4643(a1);
  *(a1 + 604) = 1;
  *(a1 + 632) = 0x40000000;
  *(a1 + 592) = 1;
  *(a1 + 516) = 0x23F800000;
  *(a1 + 372) = 0x3D5677503C8EFA35;
  *(a1 + 428) = 0x3D5677503C8EFA35;
  *(a1 + 440) = *(a1 + 440) + *(a1 + 440);
  *(a1 + 612) = 4;
  *(a1 + 156) = 101;
  *(a1 + 164) = 10;
  *(a1 + 400) = 987133776;
  *(a1 + 504) = 1077936128;
  *(a1 + 176) = 176;
  *(a1 + 624) = 0x3FAACEEA00000000;
  result = -0.0078125;
  *(a1 + 640) = 0xBF80000000000000;
  *(a1 + 296) = 1069547520;
  return result;
}

double vl_par_ver_4644(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  *(a1 + 44) = 40;
  *(a1 + 138) = 0;
  a1[70] = 0xFD00000000;
  result = 2.00000047;
  a1[80] = 0x400000003F333333;
  return result;
}

double vl_par_ver_465(void *a1)
{
  vl_par_default(v3);
  memcpy(a1, v3, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 64) = 1069547520;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  a1[22] = 0xF424000000028;
  a1[23] = 0x3F7EB8523C23D70ALL;
  a1[70] = 0xFC00000001;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7EB852;
  *(a1 + 59) = 1;
  result = 0.0000976562877;
  *(a1 + 15) = xmmword_2711038F0;
  return result;
}

double vl_par_ver_4662(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  a1[70] = 0xFD00000001;
  *(a1 + 59) = 1;
  a1[30] = 0x3F19999A3F5EB852;
  *(a1 + 62) = 1128792064;
  *(a1 + 138) = 0;
  result = 2.00000047;
  a1[80] = 0x400000003F666666;
  *(a1 + 44) = 8;
  return result;
}

double vl_par_ver_471(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 29) = 1;
  *(a1 + 44) = 40;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7EB852;
  *&result = 0xFD00000001;
  a1[70] = 0xFD00000001;
  *(a1 + 22) = 3010;
  *(a1 + 162) = 1;
  *(a1 + 164) = 1;
  return result;
}

void *vl_par_ver_472(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 29) = 1;
  *(a1 + 44) = 40;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7EB852;
  a1[70] = 0xFD00000001;
  *(a1 + 22) = 3010;
  *(a1 + 162) = 1;
  slam_tracker_vo_par_ver(70, __src);
  return memcpy(a1 + 84, __src, 0x130uLL);
}

void *vl_par_ver_474(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 29) = 1;
  *(a1 + 44) = 40;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7EB852;
  a1[70] = 0xFD00000001;
  *(a1 + 22) = 3010;
  *(a1 + 162) = 1;
  slam_tracker_vo_par_ver(70, __src);
  memcpy(a1 + 84, __src, 0x130uLL);
  a1[82] = 0x7D000000001;
  slam_tracker_vo_par_ver(71, __src);
  return memcpy(a1 + 84, __src, 0x130uLL);
}

double vl_par_ver_4751(void *a1)
{
  memset(v3, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v3, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v3[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 29) = 1;
  *(a1 + 44) = 40;
  *(a1 + 138) = 1;
  a1[80] = 0x400000003F7EB852;
  a1[70] = 0xFD00000001;
  *(a1 + 22) = 3010;
  *(a1 + 162) = 1;
  slam_tracker_vo_par_ver(70, __src);
  memcpy(a1 + 84, __src, 0x130uLL);
  *&result = 0x7D000000001;
  a1[82] = 0x7D000000001;
  *(a1 + 22) = 3011;
  *(a1 + 162) = 0;
  *(a1 + 244) = 1;
  *(a1 + 247) = 4;
  *(a1 + 138) = 0;
  *(a1 + 160) = 1063675494;
  return result;
}

double vl_par_ver_709(void *a1)
{
  memset(v3, 0, 276);
  memset(v4, 0, 276);
  vl_par_default(__src);
  memcpy(a1, __src, 0x3F0uLL);
  *(a1 + 75) = 1;
  *(a1 + 500) = 0x40C0000000000001;
  *(a1 + 130) = 0;
  *(a1 + 252) = 0x3FC0000041000000;
  *(a1 + 80) = 1103626240;
  *(a1 + 22) = xmmword_2711038C0;
  a1[39] = 0x780000001ELL;
  a1[60] = 0x43C800007F800000;
  *(a1 + 122) = 1142292480;
  *(a1 + 436) = 0x41F0000040000000;
  a1[50] = 0x400000003A8EFA35;
  *(a1 + 412) = 0xF00000001;
  *(a1 + 48) = 1065353216;
  *a1 = 0x100000002;
  *(a1 + 152) = 0;
  *(a1 + 37) = xmmword_2711038E0;
  a1[78] = 0x3FB657184AE74487;
  a1[80] = 0x7FC000003F3B0F28;
  *(a1 + 141) = 252;
  *(a1 + 39) = 104;
  *(a1 + 40) = 1088421888;
  *(a1 + 196) = 0x3F7FFFEF00000004;
  a1[22] = 0xF424000000020;
  a1[23] = 0x3F7EB8523C23D70ALL;
  *(a1 + 204) = xmmword_271103870;
  *(a1 + 220) = 0x3E8000000C8;
  *(a1 + 57) = 0x40000000;
  *(a1 + 22) = 808;
  lbl_par_ver(v4, 808);
  *(a1 + 33) = 1;
  a1[17] = *(&v4[16] + 12);
  *(a1 + 27) = 0;
  *(a1 + 22) = 3008;
  *(a1 + 29) = 1;
  *(a1 + 44) = 8;
  a1[70] = 0xFD00000001;
  *(a1 + 160) = 1063675494;
  lbl_par_ver(v3, 3008);
  *(a1 + 33) = 1;
  result = *(&v3[16] + 12);
  a1[17] = *(&v3[16] + 12);
  return result;
}

void rowl_setup(int *a1, unsigned int a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 1)
  {
    bzero(a4, 4 * a2);
    v13 = a1;
    v14 = a2;
    do
    {
      v15 = *v13++;
      ++*&a4[4 * v15];
      --v14;
    }

    while (v14);
    if (a2 != 1)
    {
      v16 = a4 + 4;
      v17 = *a4;
      v18 = a2 - 1;
      do
      {
        v17 += *v16;
        *v16++ = v17;
        --v18;
      }

      while (v18);
    }

    v19 = 0;
    do
    {
      *(a3 + 4 * --*&a4[4 * a1[v19]]) = v19;
      ++v19;
    }

    while (a2 != v19);
    v20 = 0;
    if (a2 < 8)
    {
      goto LABEL_14;
    }

    if ((a5 - a6) < 0x20)
    {
      goto LABEL_14;
    }

    v20 = a2 & 0x7FFFFFF8;
    v21 = (a6 + 16);
    v22 = (a5 + 16);
    *&v23 = -1;
    *(&v23 + 1) = -1;
    v24 = v20;
    do
    {
      *(v21 - 1) = v23;
      *v21 = v23;
      v21 += 2;
      *(v22 - 1) = v23;
      *v22 = v23;
      v22 += 2;
      v24 -= 8;
    }

    while (v24);
    if (v20 != a2)
    {
LABEL_14:
      v25 = a2 - v20;
      v26 = 4 * v20;
      v27 = (a5 + 4 * v20);
      v28 = (a6 + v26);
      do
      {
        *v28++ = -1;
        *v27++ = -1;
        --v25;
      }

      while (v25);
    }

    v29 = 0;
    v30 = a3 - 4;
    do
    {
      v31 = v29++;
      LODWORD(v32) = a2;
      if (v29 < a2)
      {
        LODWORD(v32) = *&a4[4 * v29];
      }

      v33 = *&a4[4 * v31];
      if (v32 > v33)
      {
        v32 = v32;
        v34 = v32 - 1;
        v35 = (a3 + 4 * v34);
        if (v31)
        {
          v36 = v31 - 1;
          v37 = (v30 + 4 * v32);
          v38 = v34 + 1;
          do
          {
            v39 = v35;
            v40 = v36;
            if (v38 != v32)
            {
              v40 = v37[1];
              v39 = v37;
            }

            --v32;
            *(a5 + 4 * *v39) = v40;
            --v37;
          }

          while (v32 > v33);
        }

        else
        {
          v41 = (v30 + 4 * v32);
          v42 = v34 + 1;
          do
          {
            if (v42 == v32)
            {
              LODWORD(v43) = -1;
              v44 = v35;
              v45 = a5;
            }

            else
            {
              *(a5 + 4 * *v41) = v41[1];
              v43 = *v41;
              v44 = (a5 + 4 * v43);
              v45 = a6;
            }

            --v32;
            *(v45 + 4 * *v44) = v43;
            --v41;
          }

          while (v32 > v33);
        }
      }
    }

    while (v29 != a2);
  }
}

void *cholskyf_create(uint64_t a1, int a2, int a3)
{
  v6 = a3 - a2;
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x1090040B0206AFAuLL);
  v8 = malloc_type_malloc(8 * a2, 0x100004052888210uLL);
  v7[1] = &v8[a2];
  v7[2] = v8;
  *(v7 + 6) = a2;
  *(v7 + 10) = v6;
  *(v7 + 11) = 1;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v12 < *(a1 + 4 * v10) + v10)
      {
        v13 = v12;
        v14 = ((v9 + v12) << 32) + 0x100000000;
        do
        {
          v8[a2 + v13] = v11;
          v8[v13] = v10;
          v11 += v14 >> 32;
          ++v13;
          v14 += 0x100000000;
        }

        while (v13 < *(a1 + 4 * v10) + v10);
        v12 = v13;
      }

      ++v10;
      --v9;
    }

    while (v10 != a2);
  }

  v15 = v11 + v6 * a3;
  v16 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  *v7 = v16;
  v7[4] = &v16[4 * v11];
  *(v7 + 7) = v15;
  if (v11 >= 0x7FFFFFFF)
  {
    __assert_rtn("cholskyf_create", "cholsky.c", 631, "cnt < INT32_MAX");
  }

  return v7;
}

void factorizef(uint64_t *a1, float *a2, uint64_t a3, float *a4, int *a5, uint64_t a6, float a7)
{
  v7 = *(a1 + 6);
  v8 = v7;
  v9 = a1[4];
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 10);
  if (!*(a1 + 11))
  {
    v148 = *(a1 + 10);
    v150 = a4;
    v153 = a2;
    v42 = malloc_type_malloc(16 * v7, 0x100004052888210uLL);
    v43 = &v42[4 * v7];
    v44 = &v43[4 * v7];
    v45 = v44 + 4 * v7;
    v151 = v43;
    rowl_setup(v12, v7, v42, v43, v44, v45);
    v46 = v153;
    if (v7 < 1)
    {
LABEL_81:
      free(v42);
      a4 = v150;
      v13 = v148;
      if (!*(a1 + 10))
      {
        return;
      }

      goto LABEL_82;
    }

    v155 = 0;
    v47 = 0;
    v48 = v11;
    v152 = v42;
    while (1)
    {
      v49 = v47;
      v50 = v12[v47];
      v51 = *(v10 + 4 * v49);
      v52 = *v46++;
      v53 = v52 + a7;
      v54 = v52 + a7;
      v55 = (v11 + 4 * v51 + 4 * (v49 - v50));
      *v55 = v52 + a7;
      if (v49 > v50)
      {
        v56 = v155 + v50;
        v57 = (v48 + 4 * (v155 + v51));
        v54 = v53;
        do
        {
          v58 = *v57++;
          v54 = v54 - (v58 * v58);
          *v55 = v54;
          v28 = __CFADD__(v56++, 1);
        }

        while (!v28);
      }

      v59 = v53 * 0.000000001;
      if (v54 > v59)
      {
        v59 = v54;
      }

      *v55 = sqrtf(v59);
      v60 = a5[1];
      if (v60 == 1)
      {
        v61 = *(a6 + 4 * v49);
        if (v61 == 1)
        {
          v62 = -1;
          v63 = -1;
          a5 += 2;
          v64 = *(v45 + 4 * v49);
          if (v64 != -1)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v63 = a5[2];
          v62 = a5[3] + v63;
          v61 = 1;
          a5 += 2;
          v64 = *(v45 + 4 * v49);
          if (v64 != -1)
          {
LABEL_39:
            v65 = v11 - 4 * v50 + 4 * v51;
            v66 = a5;
            do
            {
              v67 = 0.0;
              if (v64 < v63 || v64 >= v62)
              {
                v69 = 0.0;
              }

              else
              {
                v68 = *v46++;
                v69 = v68;
              }

              v70 = v12[v64];
              v71 = *(v10 + 4 * v64);
              v72 = (v11 + 4 * v71 + 4 * (v49 - v70));
              *v72 = v69;
              if (v70 <= v50)
              {
                LODWORD(v73) = v50;
              }

              else
              {
                LODWORD(v73) = v70;
              }

              v74 = v73 + 3;
              if (v49 > v73 + 3)
              {
                v75 = 0;
                if (v70 <= v50)
                {
                  v76 = v50;
                }

                else
                {
                  v76 = v70;
                }

                v77 = v155 + v76;
                v78 = 0.0;
                v79 = 0.0;
                v80 = 0.0;
                do
                {
                  v80 = v80 + (*(v11 + 4 * v76 + 4 * v71 - 4 * v70 + 4 * v75) * *(v65 + 4 * v76 + 4 * v75));
                  v81 = v75;
                  v79 = v79 + (v72[v77 + 1 + v75] * v55[v77 + 1 + v75]);
                  v78 = v78 + (v72[v77 + 2 + v75] * v55[v77 + 2 + v75]);
                  v67 = v67 + (v72[v74 - v49] * v55[v74 - v49]);
                  v75 += 4;
                  v74 = v76 + v81 + 7;
                }

                while (v76 + v75 + 3 < v49);
                LODWORD(v73) = v76 + v75;
                v67 = ((v80 + v79) + v78) + v67;
              }

              v82 = v69 - v67;
              *v72 = v82;
              v73 = v73;
              if (v49 > v73)
              {
                v83 = v11 - 4 * v70 + 4 * v71;
                do
                {
                  v82 = v82 - (*(v83 + 4 * v73) * *(v65 + 4 * v73));
                  *v72 = v82;
                  ++v73;
                }

                while (v49 != v73);
              }

              *v72 = v82 / *v55;
              if (v62 == -1 || v64 + 1 < v62)
              {
                a5 = v66;
              }

              else
              {
                a5 = v66 + 2;
                if (++v61 == *(a6 + 4 * v49))
                {
                  v62 = -1;
                  v63 = -1;
                }

                else
                {
                  v63 = v66[2];
                  v62 = v66[3] + v63;
                }
              }

              v64 = *(v45 + 4 * v64);
              v66 = a5;
            }

            while (v64 != -1);
          }
        }
      }

      else
      {
        v61 = 0;
        v63 = *a5;
        v62 = v60 + *a5;
        v64 = *(v45 + 4 * v49);
        if (v64 != -1)
        {
          goto LABEL_39;
        }
      }

      v47 = v49 + 1;
      v42 = v152;
      if (v49 + 1 < v7)
      {
        v84 = v49 + 2;
        v85 = v7;
        if (v84 < v7)
        {
          v85 = *&v151[4 * v84];
        }

        v86 = *&v151[4 * v47];
        if (v85 > v86)
        {
          v87 = v85;
          do
          {
            --v87;
            v88 = *&v152[4 * v87];
            v89 = *(v44 + 4 * v88);
            v90 = *(v45 + 4 * v89);
            for (i = v90 == -1; v90 < v88 && v90 != -1; i = v90 == -1)
            {
              LODWORD(v89) = v90;
              *(v44 + 4 * v88) = v90;
              v90 = *(v45 + 4 * v90);
            }

            *(v45 + 4 * v88) = v90;
            if (!i)
            {
              *(v44 + 4 * v90) = v88;
              LODWORD(v89) = *(v44 + 4 * v88);
            }

            *(v45 + 4 * v89) = v88;
          }

          while (v87 > v86);
        }
      }

      --v155;
      v48 += 4;
      if (v47 == v7)
      {
        goto LABEL_81;
      }
    }
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = *a1;
    do
    {
      v18 = v12[v15];
      v19 = *(v10 + 4 * v15);
      v20 = v11 + 4 * v19;
      v21 = *a2++;
      v22 = v21;
      v23 = v21;
      v24 = v15 - v18;
      *(v20 + 4 * (v15 - v18)) = v21;
      if (v15 > v18)
      {
        v25 = v14 + v18;
        v26 = (v17 + 4 * (v14 + v19));
        v23 = v22;
        do
        {
          v27 = *v26++;
          v23 = v23 - (v27 * v27);
          *(v20 + 4 * v24) = v23;
          v28 = __CFADD__(v25++, 1);
        }

        while (!v28);
      }

      v29 = v22 * 0.000000001;
      if (v23 > v29)
      {
        v29 = v23;
      }

      *(v20 + 4 * v24) = sqrtf(v29);
      v30 = v15 + 1;
      if (v15 + 1 < v7)
      {
        v31 = v11 - 4 * v18 + 4 * v19;
        v32 = v16;
        do
        {
          v33 = v12[v32];
          v34 = v15 - v33;
          if (v15 < v33)
          {
            break;
          }

          v35 = 0.0;
          if (v32 - v15 < *(a3 + 4 * v15))
          {
            v36 = *a2++;
            v35 = v36;
          }

          v37 = *(v10 + 4 * v32);
          v38 = v11 + 4 * v37;
          *(v38 + 4 * v34) = v35;
          if (v15 > v33)
          {
            v39 = 4 * (v14 + v37);
            do
            {
              v35 = v35 - (*(v17 + v39) * *(v31 + 4 * v33));
              *(v38 + 4 * v34) = v35;
              ++v33;
              v39 += 4;
            }

            while (v15 != v33);
          }

          *(v38 + 4 * v34) = v35 / *(v20 + 4 * v24);
          ++v32;
        }

        while (v32 != v7);
      }

      ++v16;
      --v14;
      v17 += 4;
      ++v15;
    }

    while (v30 != v7);
  }

  if (!v13)
  {
    return;
  }

LABEL_82:
  v94 = v13 + v7;
  if (v7 >= 1)
  {
    if (v13 < 1)
    {
      return;
    }

    v95 = 0;
    v96 = 0;
    v97 = 4 * v94;
    v98 = v11;
    v99 = v9;
    do
    {
      v100 = *(v10 + 4 * v96);
      v101 = v11 + 4 * v100;
      v102 = v12[v96];
      v103 = v96 - v102;
      if (v96 <= v102)
      {
        v114 = v99;
        v115 = v7;
        do
        {
          v116 = *a4++;
          *v114 = v116;
          *v114 = v116 / *(v101 + 4 * v103);
          ++v115;
          v114 = (v114 + v97);
        }

        while (v115 < v94);
      }

      else
      {
        v104 = &v9[v96];
        v105 = v95 + v102;
        v106 = (v98 + 4 * (v95 + v100));
        v107 = v99;
        v108 = v7;
        do
        {
          v109 = (v108 - v7) * v94;
          v110 = *a4;
          v104[v109] = *a4;
          v111 = v106;
          v112 = v105;
          do
          {
            v113 = *v111++;
            v110 = v110 - (v107[v112] * v113);
            v104[v109] = v110;
            v28 = __CFADD__(v112++, 1);
          }

          while (!v28);
          ++a4;
          v104[v109] = v110 / *(v101 + 4 * v103);
          ++v108;
          v107 = (v107 + v97);
        }

        while (v108 < v94);
      }

      ++v96;
      ++v99;
      --v95;
      v98 += 4;
    }

    while (v96 != v7);
  }

  if (v13 >= 1)
  {
    v117 = v7 + 1;
    v118 = 4 * v94;
    v119 = 0x200000000 - (v7 << 32);
    v120 = 0x100000000 - (v7 << 32);
    v121 = &v9[(v117 - v7) * v94];
    v122 = v9;
    for (j = v7; ; ++j)
    {
      v124 = &a4[j - v8];
      v125 = &v9[(j - v8) * v94 + j];
      v126 = *v124;
      *v125 = *v124;
      v127 = v126;
      if (j >= 1)
      {
        v128 = j;
        v129 = v122;
        v127 = v126;
        do
        {
          v130 = *v129++;
          v127 = v127 - (v130 * v130);
          *v125 = v127;
          --v128;
        }

        while (v128);
      }

      v131 = v126 * 0.000000001;
      if (v127 > v131)
      {
        v131 = v127;
      }

      *v125 = sqrtf(v131);
      if (j + 1 >= v94)
      {
        return;
      }

      a4 = v124 + 1;
      v132 = v121;
      v133 = v117;
      do
      {
        v134 = &v9[j + (v133 - v8) * v94];
        v135 = *a4;
        *v134 = *a4;
        if (j < 4)
        {
          LODWORD(v136) = 0;
          v147 = v135 - 0.0;
          *v134 = v147;
          if (j <= 0)
          {
            goto LABEL_106;
          }

LABEL_113:
          v136 = v136;
          do
          {
            v147 = v147 - (v132[v136] * v122[v136]);
            *v134 = v147;
            ++v136;
          }

          while (v136 < j);
          goto LABEL_106;
        }

        v136 = 0;
        v137 = 0.0;
        v138 = v132;
        v139 = v120;
        v140 = v119;
        v141 = 0.0;
        v142 = v122;
        v143 = 0.0;
        v144 = 0.0;
        do
        {
          v144 = v144 + (*v138 * *v142);
          v143 = v143 + (*(v134 + (v139 >> 30)) * *(v125 + (v139 >> 30)));
          v141 = v141 + (*(v134 + (v140 >> 30)) * *(v125 + (v140 >> 30)));
          v145 = v142[3];
          v146 = v136 + 7;
          v136 += 4;
          v142 += 4;
          v137 = v137 + (v138[3] * v145);
          v140 += 0x400000000;
          v139 += 0x400000000;
          v138 += 4;
        }

        while (v146 < j);
        v147 = v135 - (((v144 + v143) + v141) + v137);
        *v134 = v147;
        if (j > v136)
        {
          goto LABEL_113;
        }

LABEL_106:
        *v134 = v147 / *v125;
        ++v133;
        ++a4;
        v132 = (v132 + v118);
      }

      while (v94 != v133);
      ++v117;
      v122 = (v122 + v118);
      v119 -= 0x100000000;
      v120 -= 0x100000000;
      v121 = (v121 + v118);
    }
  }
}

void cholskyf_solve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v104 = *(a1 + 40);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v104 + v6;
  v10 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v11 = *a1;
  v12 = *(a1 + 32);
  if (v6 >= 1)
  {
    v13 = 0;
    v14 = *a1;
    do
    {
      v16 = *(a3 + 4 * v13);
      v10[v13] = v16;
      v17 = v7[v13];
      if (v13 > v17)
      {
        do
        {
          v18 = *v14++;
          v16 = v16 - (v18 * v10[v17]);
          v10[v13] = v16;
          ++v17;
        }

        while (v13 != v17);
      }

      v15 = *v14++;
      v10[v13++] = v16 / v15;
    }

    while (v13 != v6);
  }

  v19 = 4 * v9;
  if (v104 >= 1)
  {
    v20 = v6;
    v21 = v12;
    do
    {
      v22 = *(a3 + 4 * v20);
      v10[v20] = v22;
      if (v20 >= 1)
      {
        v23 = v20;
        v24 = v10;
        do
        {
          v25 = *v21++;
          v26 = v25;
          v27 = *v24++;
          v22 = v22 - (v26 * v27);
          v10[v20] = v22;
          --v23;
        }

        while (v23);
      }

      v10[v20++] = v22 / *v21;
      v21 += v9 - v20 + 1;
    }

    while (v9 > v20);
    v28 = 0;
    v29 = v104 + v6;
    v30 = a2 + 4 * v29;
    v31 = &v12[v29 - 1 + v9 * v104];
    do
    {
      v32 = v29--;
      v33 = v10[v29];
      *(a2 + 4 * v29) = v33;
      if (v32 < v9)
      {
        v34 = v31;
        v35 = v28;
        do
        {
          v33 = v33 - (*v34 * *(v30 + 4 * v35));
          *(a2 + 4 * v29) = v33;
          v34 = (v34 + v19);
          ++v35;
        }

        while (v35);
      }

      *(a2 + 4 * v29) = v33 / v12[v29 + (v29 - v6) * v9];
      --v28;
      v31 += v19 ^ 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v29 > v6);
  }

  if (!*(a1 + 44))
  {
    v103 = v12;
    v48 = malloc_type_malloc(16 * v6, 0x100004052888210uLL);
    if (v6 < 1)
    {
LABEL_74:
      free(v48);
      goto LABEL_75;
    }

    v101 = 4 * v6;
    v102 = v48;
    v100 = &v48[v101];
    v49 = &v48[v101 + v101];
    v50 = &v49[v101];
    bzero(&v48[v101], 4 * v6);
    v51 = v7;
    v52 = v6;
    do
    {
      v53 = *v51++;
      ++*&v100[4 * v53];
      --v52;
    }

    while (v52);
    v48 = v102;
    if (v6 != 1)
    {
      v54 = &v102[4 * v6];
      v57 = *v54;
      v55 = v54 + 1;
      v56 = v57;
      v58 = v6 - 1;
      do
      {
        v56 += *v55;
        *v55++ = v56;
        --v58;
      }

      while (v58);
    }

    for (i = 0; i != v6; ++i)
    {
      *&v102[4 * --*&v100[4 * v7[i]]] = i;
    }

    if (v6 < 8)
    {
      v60 = 0;
    }

    else
    {
      v60 = 0;
      if ((-4 * v6) >= 0x20)
      {
        v60 = v6 & 0x7FFFFFF8;
        v61 = &v102[12 * v6 + 16];
        v62 = &v102[8 * v6 + 16];
        *&v63 = -1;
        *(&v63 + 1) = -1;
        v64 = v60;
        do
        {
          *(v61 - 1) = v63;
          *v61 = v63;
          v61 += 32;
          *(v62 - 1) = v63;
          *v62 = v63;
          v62 += 32;
          v64 -= 8;
        }

        while (v64);
        if (v60 == v6)
        {
LABEL_49:
          if (v6 >= 8)
          {
            v69 = v6 & 0x7FFFFFF8;
            v70 = &v102[8 * v6 + 16];
            v71 = &v102[12 * v6 + 16];
            v72 = xmmword_271103910;
            v73 = xmmword_2711038E0;
            v74 = xmmword_271103920;
            v75.i64[0] = -1;
            v75.i64[1] = -1;
            v76.i64[0] = 0x300000003;
            v76.i64[1] = 0x300000003;
            v77.i64[0] = 0x100000001;
            v77.i64[1] = 0x100000001;
            v78.i64[0] = 0x500000005;
            v78.i64[1] = 0x500000005;
            v79 = vdupq_n_s64(8uLL);
            v80.i64[0] = 0x800000008;
            v80.i64[1] = 0x800000008;
            v81 = v69;
            do
            {
              v70[-1] = vaddq_s32(v74, v75);
              *v70 = vaddq_s32(v74, v76);
              v82 = vuzp1q_s32(v73, v72);
              v71[-1] = vaddq_s32(v82, v77);
              *v71 = vaddq_s32(v82, v78);
              v72 = vaddq_s64(v72, v79);
              v73 = vaddq_s64(v73, v79);
              v74 = vaddq_s32(v74, v80);
              v70 += 2;
              v71 += 2;
              v81 -= 8;
            }

            while (v81);
            if (v69 == v6)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v69 = 0;
          }

          v83 = 4 * v69;
          v84 = &v102[12 * v6 + 4 * v69];
          v85 = v6 - v69;
          v86 = v69 + 1;
          v87 = &v102[8 * v6 + v83];
          do
          {
            *v87 = v86 - 2;
            v87 += 4;
            *v84 = v86;
            v84 += 4;
            ++v86;
            --v85;
          }

          while (v85);
LABEL_56:
          *&v50[v101 - 4] = -1;
          v88 = &v103[v101 / 4 - 1];
          v89 = v6;
          v90 = v6 - 1;
          v91 = v10[v90];
          *(a2 + 4 * v90) = v91;
          j = *&v50[4 * v90];
          if (j != -1)
          {
            goto LABEL_60;
          }

          while (1)
          {
            v93 = *&v100[4 * v90];
            LODWORD(v94) = v6;
            if (v89 < v6)
            {
              LODWORD(v94) = *&v100[4 * v89];
            }

            if (v94 > v93)
            {
              v94 = v94;
              do
              {
                v95 = *&v102[4 * v94 - 4];
                v96 = *&v49[4 * v95];
                v97 = *&v50[4 * v95];
                if (v96 != -1)
                {
                  *&v50[4 * v96] = v97;
                }

                if (v97 != -1)
                {
                  *&v49[4 * v97] = *&v49[4 * v95];
                }

                --v94;
              }

              while (v94 > v93);
            }

            if (v104 >= 1)
            {
              v98 = v88;
              v99 = v6;
              do
              {
                v91 = v91 - (*v98 * *(a2 + 4 * v99));
                *(a2 + 4 * v90) = v91;
                ++v99;
                v98 = (v98 + v19);
              }

              while (v99 < v9);
            }

            *(a2 + 4 * v90) = v91 / v11[*(v8 + 4 * v90) + v90 - v7[v90]];
            v88 -= 4;
            v41 = v89 <= 1;
            v89 = v90;
            if (v41)
            {
              break;
            }

            --v90;
            v91 = v10[v89 - 1];
            *(a2 + 4 * (v89 - 1)) = v91;
            for (j = *&v50[4 * v89 - 4]; j != -1; j = *&v50[4 * j])
            {
LABEL_60:
              v91 = v91 - (v11[*(v8 + 4 * j) + v90 - v7[j]] * *(a2 + 4 * j));
              *(a2 + 4 * v90) = v91;
            }
          }

          goto LABEL_74;
        }
      }
    }

    v65 = v6 - v60;
    v66 = 4 * v60;
    v67 = &v102[8 * v6 + 4 * v60];
    v68 = &v102[12 * v6 + v66];
    do
    {
      *v68 = -1;
      v68 += 4;
      *v67 = -1;
      v67 += 4;
      --v65;
    }

    while (v65);
    goto LABEL_49;
  }

  if (v6 >= 1)
  {
    v36 = a2 + 4 * v6;
    v37 = v8 + 4 * v6;
    v38 = &v7[v6];
    v39 = &v12[v6 - 1];
    v40 = v6;
    do
    {
      v42 = v40 - 1;
      v43 = v10[v40 - 1];
      *(a2 + 4 * (v40 - 1)) = v43;
      if (v40 < v6)
      {
        v44 = 0;
        do
        {
          v45 = v38[v44];
          if (v40 <= v45)
          {
            break;
          }

          v43 = v43 - (v11[*(v37 + 4 * v44) + v42 - v45] * *(v36 + 4 * v44));
          *(a2 + 4 * v42) = v43;
          ++v44;
        }

        while (v6 > v40 + v44);
      }

      if (v104 >= 1)
      {
        v46 = v39;
        v47 = v6;
        do
        {
          v43 = v43 - (*v46 * *(a2 + 4 * v47));
          *(a2 + 4 * v42) = v43;
          ++v47;
          v46 = (v46 + v19);
        }

        while (v47 < v9);
      }

      *(a2 + 4 * v42) = v43 / v11[*(v8 + 4 * v42) + v42 - v7[v42]];
      v36 -= 4;
      v37 -= 4;
      --v38;
      v39 -= 4;
      v41 = v40-- <= 1;
    }

    while (!v41);
  }

LABEL_75:

  free(v10);
}

void lbl_par_ver(uint64_t a1, int a2)
{
  *(a1 + 232) = xmmword_271103930;
  *(a1 + 12) = 256;
  *(a1 + 224) = 0x3BA3D70A00000004;
  *(a1 + 216) = 0x177000000008;
  *(a1 + 4) = 3;
  *(a1 + 256) = 0;
  *(a1 + 248) = 0;
  memset_pattern16((a1 + 16), &unk_271103980, 0xC8uLL);
  *(a1 + 16) = 1149239296;
  *(a1 + 268) = 0x3E800000BE800000;
  *a1 = a2;
  if (a2 <= 1002)
  {
    if (a2 <= 806)
    {
      switch(a2)
      {
        case 1:
        case 2:
        case 3:
          log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/lbl/lbl_par.c", 58, "lbl_par_ver", "Deprecate lbl version %d", a2);
          abort();
        case 4:
          v4 = 100;
          goto LABEL_59;
        case 5:
          *(a1 + 236) = 100;
          goto LABEL_48;
        case 6:
          *(a1 + 236) = 100;
          goto LABEL_61;
        case 7:
          goto LABEL_51;
        case 33:
          *(a1 + 236) = 103;
          goto LABEL_78;
        case 34:
          v4 = 104;
LABEL_59:
          *(a1 + 236) = v4;
          *(a1 + 16) = 0xBF8000003F000000;
          goto LABEL_78;
        case 35:
          *(a1 + 236) = 105;
          *(a1 + 216) = 32;
          goto LABEL_57;
        case 36:
          v8 = 3001;
          goto LABEL_64;
        case 37:
          *(a1 + 236) = 3001;
          *(a1 + 16) = 0xBF8000003F000000;
          *(a1 + 224) = 0x3C03126FFFFFFFFFLL;
          v9 = xmmword_271103970;
          goto LABEL_43;
        case 38:
          *(a1 + 236) = 3001;
          *(a1 + 16) = 0xBF8000003F000000;
          *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
          v9 = xmmword_271103940;
LABEL_43:
          *(a1 + 252) = v9;
          v10 = 0x177000000020;
          goto LABEL_73;
        case 39:
          *(a1 + 236) = 3100;
          *(a1 + 16) = 0xBF8000003F000000;
          *(a1 + 12) = 64;
          *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
          *(a1 + 252) = xmmword_271103940;
          *(a1 + 216) = 0x177000000020;
          return;
        case 40:
          v8 = 3002;
LABEL_64:
          *(a1 + 236) = v8;
          *(a1 + 16) = 0xBF8000003F000000;
          *(a1 + 216) = 32;
          goto LABEL_74;
        default:
          goto LABEL_80;
      }
    }

    if (a2 > 999)
    {
      if (a2 == 1000)
      {
        *(a1 + 236) = 100;
        *(a1 + 224) = -1;
        *(a1 + 216) = 1;
      }

      else
      {
        *(a1 + 236) = 100;
        *(a1 + 224) = -1;
        if (a2 == 1001)
        {
          *(a1 + 16) = xmmword_271103960;
          *(a1 + 32) = -1082130432;
        }

        else
        {
          *(a1 + 16) = xmmword_271103950;
        }
      }

      goto LABEL_78;
    }

    if (a2 == 807)
    {
      *(a1 + 236) = 104;
      *(a1 + 224) = 0x3B83126FFFFFFFFFLL;
      *(a1 + 252) = 0xC00000001;
      *(a1 + 264) = 1;
      *(a1 + 216) = 0x5DC00000001;
      goto LABEL_78;
    }

    if (a2 == 808)
    {
      *(a1 + 236) = 104;
      *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
      *(a1 + 216) = 0x7D000000001;
      *(a1 + 252) = xmmword_271103940;
      goto LABEL_78;
    }

LABEL_80:
    log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/lbl/lbl_par.c", 349, "lbl_par_ver", "Unknown lbl version %d", a2);
    abort();
  }

  if (a2 <= 3002)
  {
    if (a2 > 1999)
    {
      if (a2 > 2099)
      {
        if (a2 == 2100)
        {
          v6 = 100;
        }

        else
        {
          if (a2 != 2101)
          {
            goto LABEL_80;
          }

          v6 = 104;
        }

        *(a1 + 236) = v6;
        *(a1 + 224) = -1;
        goto LABEL_70;
      }

      if (a2 == 2000)
      {
        log_msg(2, 0, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/lbl/lbl_par.c", 206, "lbl_par_ver", "Please just use version 1000 with input_type=2");
        v5 = 100;
      }

      else
      {
        if (a2 != 2001)
        {
          goto LABEL_80;
        }

        log_msg(2, 0, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/lbl/lbl_par.c", 212, "lbl_par_ver", "Please just use version 3004 with input_type=2");
        v5 = 104;
      }

LABEL_55:
      *(a1 + 236) = v5;
      *(a1 + 224) = -1;
      goto LABEL_78;
    }

    if (a2 <= 1004)
    {
      if (a2 == 1003)
      {
        *(a1 + 236) = 100;
        *(a1 + 224) = -1;
LABEL_48:
        v11 = 2000;
      }

      else
      {
        *(a1 + 236) = 100;
        *(a1 + 224) = -1;
LABEL_61:
        v11 = 2001;
      }

      *(a1 + 244) = v11;
      goto LABEL_78;
    }

    if (a2 != 1005)
    {
      if (a2 == 1006)
      {
        *(a1 + 236) = 100;
        *(a1 + 224) = -1;
        *(a1 + 4) = 2;
        goto LABEL_78;
      }

      goto LABEL_80;
    }

    *(a1 + 224) = -1;
LABEL_51:
    *(a1 + 236) = 0xBB800000064;
LABEL_57:
    *(a1 + 12) = 128;
    return;
  }

  if (a2 > 3006)
  {
    if (a2 <= 3008)
    {
      if (a2 == 3007)
      {
        *(a1 + 236) = 3001;
        *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
        *(a1 + 252) = xmmword_271103940;
        v10 = 0x5DC00000020;
LABEL_73:
        *(a1 + 216) = v10;
        goto LABEL_74;
      }

      v7 = 3001;
      goto LABEL_66;
    }

    if (a2 != 3009)
    {
      if (a2 != 3010)
      {
        if (a2 != 3011)
        {
          goto LABEL_80;
        }

        *(a1 + 236) = 3003;
        *(a1 + 224) = 0x3BA3D70A00000004;
        goto LABEL_67;
      }

      v7 = 3002;
LABEL_66:
      *(a1 + 236) = v7;
      *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
LABEL_67:
      *(a1 + 252) = xmmword_271103940;
      *(a1 + 216) = 0x7D000000020;
      goto LABEL_68;
    }

    *(a1 + 236) = 104;
    *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
    *(a1 + 252) = xmmword_271103940;
    *(a1 + 216) = 0x7D000000020;
LABEL_70:
    *(a1 + 4) = 1;
    goto LABEL_78;
  }

  if (a2 > 3004)
  {
    if (a2 != 3005)
    {
      *(a1 + 236) = 3001;
      *(a1 + 224) = -1;
      *(a1 + 216) = 32;
LABEL_68:
      *(a1 + 4) = 1;
LABEL_74:
      *(a1 + 12) = 64;
      return;
    }

    *(a1 + 236) = 105;
    *(a1 + 224) = 0x3BA3D70AFFFFFFFFLL;
    *(a1 + 252) = xmmword_271103940;
    *(a1 + 216) = 0x7D000000020;
    goto LABEL_57;
  }

  if (a2 == 3003)
  {
    v5 = 103;
    goto LABEL_55;
  }

  *(a1 + 236) = 104;
  *(a1 + 224) = -1;
  *(a1 + 216) = 1;
  *(a1 + 4) = 1;
LABEL_78:
  *(a1 + 12) = 256;
}

BOOL cstr_escape(uint64_t a1, uint64_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  if (!a4)
  {
    a4 = "\r\n\";
  }

  v9 = strlen(a4);
  v10 = 0;
  v11 = a2 - 1;
  *(a1 + a2 - 1) = 0;
  if (a2 == 1)
  {
    goto LABEL_36;
  }

  v12 = 0;
  if (!v8)
  {
    goto LABEL_37;
  }

  v13 = a2 - 2;
  v12 = 0;
  if (!v9)
  {
    v19 = v8 - 1;
    if (v8 - 1 >= v13)
    {
      v19 = a2 - 2;
    }

    v20 = v19 + 1;
    if (v19 + 1 >= 8 && (a1 - __s) >= 0x20)
    {
      if (v20 < 0x20)
      {
        v12 = 0;
        goto LABEL_30;
      }

      v12 = v20 & 0xFFFFFFFFFFFFFFE0;
      v21 = __s + 16;
      v22 = (a1 + 16);
      v23 = v20 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 32;
        v22 += 2;
        v23 -= 32;
      }

      while (v23);
      if (v20 == v12)
      {
        goto LABEL_35;
      }

      if ((v20 & 0x18) != 0)
      {
LABEL_30:
        v25 = v12;
        v12 = v20 & 0xFFFFFFFFFFFFFFF8;
        v26 = &__s[v25];
        v27 = (a1 + v25);
        v28 = v25 - (v20 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v29 = *v26;
          v26 += 8;
          *v27++ = v29;
          v28 += 8;
        }

        while (v28);
        if (v20 == v12)
        {
          goto LABEL_35;
        }
      }
    }

    v30 = v19 - v12 + 1;
    v31 = (a1 + v12);
    v32 = &__s[v12];
    do
    {
      v33 = *v32++;
      *v31++ = v33;
      --v30;
    }

    while (v30);
LABEL_35:
    v10 = v19 + 1;
LABEL_36:
    v12 = v10;
    goto LABEL_37;
  }

  v10 = 0;
  while (2)
  {
    v14 = __s[v10];
    v15 = v9;
    v16 = a4;
    while (1)
    {
      v17 = *v16++;
      if (v14 == v17)
      {
        break;
      }

      if (!--v15)
      {
        *(a1 + v12++) = v14;
        if (++v10 >= v8)
        {
          goto LABEL_37;
        }

        goto LABEL_18;
      }
    }

    if (v14 == 13 || v14 == 10)
    {
      *(a1 + v12++) = 95;
      if (++v10 >= v8)
      {
        break;
      }
    }

    else
    {
      if (v12 >= v13)
      {
        break;
      }

      v18 = (a1 + v12);
      *v18 = 92;
      v12 += 2;
      v18[1] = __s[v10++];
      if (v10 >= v8)
      {
        break;
      }
    }

LABEL_18:
    if (v12 < v11)
    {
      continue;
    }

    break;
  }

LABEL_37:
  if (v12 < v11)
  {
    *(a1 + v12++) = 0;
  }

  return v10 != v8 || v12 > v11;
}

os_log_t __vl_os_log_block_invoke()
{
  result = os_log_create("com.apple.3dv.vl", "vl");
  vl_os_log_log = result;
  return result;
}

uint64_t g_ps_cyl_z(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v708 = v12;
  v709 = v21;
  v707 = v22;
  v24 = v23;
  v26 = v25;
  v718 = v27;
  v719 = v28;
  v700 = v29;
  v30 = a11;
  v883 = *MEMORY[0x277D85DE8];
  v31 = malloc_type_calloc(v19, 1uLL, 0xBC5C61DFuLL);
  v831 = 0;
  v830 = 0;
  v832 = 0;
  if (v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = v16;
  }

  v716 = v33;
  if (a10 >= 1)
  {
    v34 = v31;
    v35 = 0;
    v36 = -INFINITY;
    v37 = INFINITY;
    do
    {
      v38 = v14 + 24 * v35;
      v39 = *(v38 + 12);
      if (v39 >= 1)
      {
        v40 = *(v38 + 8);
        if (v40 >= 1)
        {
          v41 = 0;
          v42 = (a9 + 24 * v35);
          v43 = *v38;
          v44 = *(v38 + 16);
          v45 = *v42;
          v46 = 4 * v42[2];
          v47 = 4 * v44;
          do
          {
            v48 = v43;
            v49 = v45;
            v50 = v40;
            do
            {
              if (v37 >= (*v48 - *v49))
              {
                v37 = *v48 - *v49;
              }

              if (v36 <= (*v48 + *v49))
              {
                v36 = *v48 + *v49;
              }

              ++v49;
              ++v48;
              --v50;
            }

            while (v50);
            ++v41;
            v45 = (v45 + v46);
            v43 = (v43 + v47);
          }

          while (v41 != v39);
        }
      }

      ++v35;
    }

    while (v35 != a10);
    if (v37 <= v36)
    {
      *v32.i32 = (1 << *(a11 + 12));
      v51 = *(a11 + 24);
      v52 = v36 - v37;
      v53 = v37 + v36;
      v821 = vdiv_f32(*(a11 + 4), vdup_lane_s32(v32, 0));
      v54 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A004074A90200uLL);
      v55 = (v52 / v821.f32[1]);
      v56 = ((v24 + v24) / v821.f32[0]) + 1;
      if (v56 <= v55 + 1)
      {
        v56 = v55 + 1;
      }

      v57 = vcvtps_s32_f32(log2f(v56));
      v58 = ((1 << v57) + 1);
      v54[1] = vmla_n_f32(*v716, 0x3F0000003F000000, -v58 * v821.f32[0]);
      v54[2].f32[0] = (vmuls_lane_f32(v58, v821, 1) * -0.5) + (v53 * 0.5);
      *(v54 + 20) = v821;
      v54[3].i32[1] = v57;
      v54[4].i32[0] = v51;
      v59 = v54[5];
      v692 = v34;
      v803 = v20;
      if (v59)
      {
        v60 = (*&v59 - 1);
        v54[5] = v60;
        v61 = *(*&v54[6] + 8 * *&v60);
        bzero(v61, 16 * v51 + 2432);
      }

      else
      {
        v61 = malloc_type_calloc(1uLL, 16 * v51 + 2432, 0x4F78416AuLL);
      }

      v62 = v54[4].i32[0];
      v61[2] = v61 + 304;
      v62 *= 2;
      v63 = v61 + v62 + 2432;
      v61[40] = v63;
      v64 = &v63[v62];
      v61[78] = v64;
      v65 = &v64[v62];
      v61[116] = v65;
      v66 = &v65[v62];
      v61[154] = v66;
      v67 = &v66[v62];
      v61[192] = v67;
      v68 = &v67[v62];
      v61[230] = v68;
      v61[268] = &v68[v62];
      *v54 = v61;
      v69 = v54[3].i32[1] - *(a11 + 12);
      if (v69 != 31)
      {
        v80 = 0;
        v81 = v69 & ~(v69 >> 31);
        v82 = 1 << (v69 & ~(v69 >> 31));
        v83 = vneg_f32(__PAIR64__(v719.n128_u32[0], LODWORD(v718)));
        if (v82 <= 1)
        {
          v82 = 1;
        }

        v812 = v82;
        do
        {
          for (i = 0; i != v812; ++i)
          {
            v85.f32[0] = v80 + 0.5;
            v85.f32[1] = i + 0.5;
            v822 = vmla_n_f32(v54[1], vmul_n_f32(v85, (1 << (v54[3].i32[1] - v81))), v54[2].f32[1]);
            v86 = ((v822.f32[1] - v716->f32[1]) * (v822.f32[1] - v716->f32[1])) + ((v822.f32[0] - v716->f32[0]) * (v822.f32[0] - v716->f32[0]));
            v87 = v86 > (v24 * v24) || v86 < (v26 * v26);
            if (!v87)
            {
              for (j = 0; j != a10; ++j)
              {
                v89 = (v14 + 24 * j);
                v90 = v89[1];
                v91 = vcvt_s32_f32(vrndm_f32(vmul_f32(vsub_f32(v822, vmla_f32(*v16, 0x3F0000003F000000, v83)), vdiv_f32(vcvt_f32_s32(v90), __PAIR64__(v719.n128_u32[0], LODWORD(v718))))));
                v92 = v91.u32[0];
                if ((v91.i32[0] & 0x80000000) == 0)
                {
                  v93 = vcgt_s32(v90, v91);
                  if (v93.i8[0] & 1) != 0 && (v91.i32[1] & 0x80000000) == 0 && (v93.i8[4])
                  {
                    v91.i32[0] = *(*v89 + 4 * v89[2] * v91.u32[1] + 4 * v91.u32[0]);
                    v94 = *(*(a9 + 24 * j) + 4 * *(a9 + 24 * j + 16) * v91.u32[1] + 4 * v92);
                    v95 = v54[2].f32[0];
                    v96 = v54[3].f32[0];
                    v97 = (((*v91.i32 - v94) - v95) / v96) >> (v54[3].i8[4] - v81);
                    v98 = (((*v91.i32 + v94) - v95) / v96) >> (v54[3].i8[4] - v81);
                    if (v97 <= v98)
                    {
                      v99 = v98 + 1;
                      do
                      {
                        octnode_insert(v54, *v54, v81, v80, i, v97++);
                      }

                      while (v99 != v97);
                    }
                  }
                }
              }
            }
          }

          ++v80;
        }

        while (v80 != v812);
      }

      if (v803 < 1)
      {
        v697 = 0;
        ptr = 0;
        v688 = 0;
        v30 = a11;
        v78 = v692;
        v74.f32[0] = v718;
        v73 = v719;
        v79 = *(a11 + 12);
        if (v79 < 0)
        {
          goto LABEL_526;
        }
      }

      else
      {
        v70 = 0;
        ptr = 0;
        v71 = 0;
        v72 = v803;
        v30 = a11;
        v74.f32[0] = v718;
        v73 = v719;
        v697 = v803;
        do
        {
          v75 = v71 + 1;
          if (v71 >= v70)
          {
            v76 = 2 * v70;
            if (!v70)
            {
              v76 = 64;
            }

            if (v76 <= v71)
            {
              v70 = v71 + 1;
            }

            else
            {
              v70 = v76;
            }

            if (v70)
            {
              v77 = malloc_type_realloc(ptr, 4 * v70, 0x100004052888210uLL);
              v72 = v803;
              v74.f32[0] = v718;
              v73 = v719;
              ptr = v77;
            }
          }

          ptr[v71] = v71;
          ++v71;
        }

        while (v72 != v75);
        v688 = v70;
        v78 = v692;
        v79 = *(a11 + 12);
        if (v79 < 0)
        {
          goto LABEL_526;
        }
      }

      v705 = a12 - 8;
      v100 = v54[3].i32[1];
      v696 = v100 - v79;
      v101 = v24 * v24;
      v102 = v26 * v26;
      v74.i32[1] = v73.n128_u32[0];
      v717 = v74;
      v715 = (v14 + 16);
      v73.n128_u64[0] = vneg_f32(v74);
      v741 = v73.n128_u64[0];
      v103 = v73.n128_f32[1];
      v104 = 0.5;
      v690 = v26 * v26;
      v691 = v24 * v24;
      v689 = v73.n128_f32[1];
      while (1)
      {
        v105 = v697;
        if (v697 < 1)
        {
          v697 = 0;
        }

        else
        {
          v106 = 0;
          if (v696 == v100 - *(v30 + 12))
          {
            v107 = -1;
          }

          else
          {
            v107 = v696 - 1;
          }

          do
          {
            v112 = ptr[v106];
            if (v700)
            {
              v108 = *(v700 + 2 * v112);
            }

            else
            {
              v108 = 1;
            }

            v109 = v708 + 8 * v112;
            if (v709)
            {
              v110 = (v709 + 8 * v112);
            }

            else
            {
              v110 = 0;
            }

            if (v112 <= 0)
            {
              v111 = -(-v112 & 0x7FF);
            }

            else
            {
              v111 = v112 & 0x7FF;
            }

            v73.n128_u32[0] = *v109;
            v78[v112] = compute_score(v54, *v54, v108, (v707 + 12 * v112), v110, v30, v696, v111, v73, *(v109 + 4), v107) ^ 1;
            ++v106;
          }

          while (v697 != v106);
          v697 = 0;
          v113 = ptr;
          v114 = v105;
          do
          {
            v116 = *v113++;
            v115 = v116;
            if (!v78[v116])
            {
              ptr[v697++] = v115;
            }

            --v114;
          }

          while (v114);
        }

        v117 = v688;
        v118 = v697;
        if (v697 <= v688)
        {
          v121 = v697 - v105;
          if (v697 <= v105)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v119 = 2 * v688;
          if (!v688)
          {
            v119 = 64;
          }

          if (v119 <= v697)
          {
            v117 = v697;
          }

          else
          {
            v117 = v119;
          }

          if (v117)
          {
            v120 = malloc_type_realloc(ptr, 4 * v117, 0x100004052888210uLL);
            v118 = v697;
            ptr = v120;
          }

          v121 = v118 - v105;
          if (v118 <= v105)
          {
            goto LABEL_92;
          }
        }

        bzero(&ptr[v105], 4 * v121);
LABEL_92:
        integrate_score_to_leafs(*v54, 0, v696, v30);
        v830 = 0;
        v122 = *(v30 + 16);
        get_level(*v54, v696, &v830);
        v124 = v830;
        if (v830 >= 1)
        {
          v125 = v831;
          v126 = v54[4].u32[0];
          v127 = v831;
          v128 = v830;
          if (v126 <= 1)
          {
            do
            {
              v142 = *v127++;
              v143 = *(v142 + 16);
              *(v142 + 24) = 0;
              LOWORD(v123) = *v143;
              v123 = LODWORD(v123);
              *(v142 + 32) = v123;
              --v128;
            }

            while (v128);
          }

          else
          {
            v129 = 0;
            v130 = v126 - 1;
            do
            {
              v131 = v125[v129];
              v132 = *(v131 + 16);
              v134 = (v132 + 1);
              v133 = *v132;
              v135 = v130;
              v136 = v132;
              v137 = (v132 + 1);
              do
              {
                v139 = *v137;
                v137 += 2;
                v138 = v139;
                v140 = v133 >= v139;
                if (v133 <= v139)
                {
                  v133 = v138;
                }

                if (!v140)
                {
                  v136 = v134;
                }

                v134 = v137;
                --v135;
              }

              while (v135);
              v141 = (v136 - v132) >> 1;
              *(v131 + 24) = v141;
              LOWORD(v123) = v132[v141];
              v123 = LODWORD(v123);
              *(v131 + 32) = v123;
              ++v129;
            }

            while (v129 != v124);
          }

          v144 = 0;
          v145 = 0;
          v146 = *(v30 + 36) * 32.0;
          while (2)
          {
            v147 = v125[v144];
            v148 = v147[8];
            if (v148 < v146)
            {
              goto LABEL_106;
            }

            v149 = *v54;
            v150 = *v147;
            v151 = *(v147 + 1);
            v153 = *(v147 + 2);
            v152 = *(v147 + 3);
            v154 = v151 - 1;
            if (v151 < 1)
            {
LABEL_121:
              if (v151 >= -1)
              {
                v155 = **&v149;
                v156 = LOBYTE(v150) + ~**&v149;
                goto LABEL_123;
              }
            }

            else
            {
              v155 = **&v149;
              v156 = LOBYTE(v150) + ~**&v149;
              if ((v153 & 0x80000000) == 0 && v154 >> v156 <= 1 && (v152 & 0x80000000) == 0)
              {
                v157 = v153 >> v156 > 1 || v152 >> v156 > 1;
                if (!v157)
                {
                  v158 = *v54;
                  if (v155 == LODWORD(v150))
                  {
LABEL_120:
                    LOWORD(v148) = *(*(*&v158 + 16) + 2 * *(*&v158 + 24));
                    HIWORD(v160) = 16243;
                    v148 = LODWORD(v148) * 0.95;
                    LOWORD(v160) = *(*(v147 + 2) + 2 * *(v147 + 6));
                    if (v148 > v160)
                    {
                      goto LABEL_106;
                    }
                  }

                  else
                  {
                    v158 = *v54;
                    while (1)
                    {
                      v159 = *(*&v158 + 296);
                      if (!v159)
                      {
                        break;
                      }

                      v158 = (v159 + 304 * ((v154 >> (LOBYTE(v150) + ~v155)) & 1 | (2 * ((v153 >> (LOBYTE(v150) + ~v155)) & 1)) & 0xFFFFFFFB | (4 * ((v152 >> (LOBYTE(v150) + ~v155)) & 1))));
                      v155 = **&v158;
                      if (**&v158 == LODWORD(v150))
                      {
                        goto LABEL_120;
                      }
                    }
                  }

                  goto LABEL_121;
                }
              }

LABEL_123:
              if ((v153 & 0x80000000) == 0 && (v151 + 1) >> v156 <= 1 && (v152 & 0x80000000) == 0 && v153 >> v156 <= 1 && v152 >> v156 <= 1)
              {
                v162 = *v54;
                if (v155 == LODWORD(v150))
                {
LABEL_134:
                  LOWORD(v148) = *(*(*&v162 + 16) + 2 * *(*&v162 + 24));
                  HIWORD(v165) = 16243;
                  v148 = LODWORD(v148) * 0.95;
                  LOWORD(v165) = *(*(v147 + 2) + 2 * *(v147 + 6));
                  if (v148 > v165)
                  {
                    goto LABEL_106;
                  }
                }

                else
                {
                  LOBYTE(v163) = v155;
                  v162 = *v54;
                  while (1)
                  {
                    v164 = *(*&v162 + 296);
                    if (!v164)
                    {
                      break;
                    }

                    v162 = (v164 + 304 * (((v151 + 1) >> (LOBYTE(v150) + ~v163)) & 1 | (2 * ((v153 >> (LOBYTE(v150) + ~v163)) & 1)) & 0xFFFFFFFB | (4 * ((v152 >> (LOBYTE(v150) + ~v163)) & 1))));
                    v163 = **&v162;
                    if (**&v162 == LODWORD(v150))
                    {
                      goto LABEL_134;
                    }
                  }
                }
              }

              if ((v151 & 0x80000000) == 0)
              {
                v166 = v151 >> v156;
                if (v153 >= 1 && v166 <= 1 && (v152 & 0x80000000) == 0 && (v153 - 1) >> v156 <= 1 && v152 >> v156 <= 1)
                {
                  v167 = *v54;
                  if (v155 == LODWORD(v150))
                  {
LABEL_145:
                    LOWORD(v148) = *(*(*&v167 + 16) + 2 * *(*&v167 + 24));
                    HIWORD(v170) = 16243;
                    v148 = LODWORD(v148) * 0.95;
                    LOWORD(v170) = *(*(v147 + 2) + 2 * *(v147 + 6));
                    if (v148 > v170)
                    {
                      goto LABEL_106;
                    }
                  }

                  else
                  {
                    LOBYTE(v168) = v155;
                    v167 = *v54;
                    while (1)
                    {
                      v169 = *(*&v167 + 296);
                      if (!v169)
                      {
                        break;
                      }

                      v167 = (v169 + 304 * ((v151 >> (LOBYTE(v150) + ~v168)) & 1 | (2 * (((v153 - 1) >> (LOBYTE(v150) + ~v168)) & 1)) & 0xFFFFFFFB | (4 * ((v152 >> (LOBYTE(v150) + ~v168)) & 1))));
                      v168 = **&v167;
                      if (**&v167 == LODWORD(v150))
                      {
                        goto LABEL_145;
                      }
                    }
                  }
                }

                if (v153 >= -1 && v166 <= 1 && (v152 & 0x80000000) == 0)
                {
                  v171 = v153 + 1;
                  if (v171 >> v156 <= 1 && v152 >> v156 <= 1)
                  {
                    if (v155 == LODWORD(v150))
                    {
LABEL_154:
                      LOWORD(v148) = *(*(*&v149 + 16) + 2 * *(*&v149 + 24));
                      HIWORD(v173) = 16243;
                      LOWORD(v173) = *(*(v147 + 2) + 2 * *(v147 + 6));
                      if ((LODWORD(v148) * 0.95) > v173)
                      {
                        goto LABEL_106;
                      }
                    }

                    else
                    {
                      while (1)
                      {
                        v172 = *(*&v149 + 296);
                        if (!v172)
                        {
                          break;
                        }

                        v149 = (v172 + 304 * ((v151 >> (LOBYTE(v150) + ~v155)) & 1 | (2 * ((v171 >> (LOBYTE(v150) + ~v155)) & 1)) & 0xFFFFFFFB | (4 * ((v152 >> (LOBYTE(v150) + ~v155)) & 1))));
                        v155 = **&v149;
                        if (**&v149 == LODWORD(v150))
                        {
                          goto LABEL_154;
                        }
                      }
                    }
                  }
                }
              }
            }

            v125[v145++] = v147;
LABEL_106:
            if (++v144 == v124)
            {
              goto LABEL_159;
            }

            continue;
          }
        }

        v145 = 0;
LABEL_159:
        if (v145 > v832)
        {
          v174 = 32;
          if (v832)
          {
            v174 = 2 * v832;
          }

          if (v174 <= v145)
          {
            v175 = v145;
          }

          else
          {
            v175 = v174;
          }

          if (v175)
          {
            v831 = malloc_type_realloc(v831, 8 * v175, 0x2004093837F09uLL);
          }

          v832 = v175;
        }

        if (v145 > v124)
        {
          bzero(v831 + 8 * v124, 8 * (v145 - v124));
        }

        v688 = v117;
        v830 = v145;
        v176 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
        if (v145)
        {
          v177 = 0;
          v178 = 1;
          v179 = v831;
          v180 = v831;
          v181 = 32;
          while (1)
          {
            v182 = v177;
            while (1)
            {
              if (!v178)
              {
                --v182;
                v183 = &v176[16 * v182];
                v145 = *(v183 + 1);
                v180 = &v179[8 * *v183];
              }

              if (v145 > 15)
              {
                break;
              }

              if (v145 > 1)
              {
                v184 = 0;
                v185 = v180 + 8;
                for (k = 1; k != v145; ++k)
                {
                  v187 = v184;
                  do
                  {
                    v188 = *&v180[8 * v187];
                    v189 = *&v185[8 * v187];
                    if (*(v188 + 32) >= *(v189 + 32))
                    {
                      break;
                    }

                    *&v185[8 * v187] = v188;
                    *&v180[8 * v187] = v189;
                    v190 = v187-- + 1;
                  }

                  while (v190 > 1);
                  ++v184;
                }
              }

              v178 = 0;
              v145 = 0;
              if (v182 < 1)
              {
                goto LABEL_236;
              }
            }

            if (v145 > 0x27)
            {
              break;
            }

            v191 = v145 >> 1;
            v192 = *(*&v180[8 * (v145 >> 1)] + 32);
            v193 = *v180;
            v194 = *(*v180 + 32);
            v195 = v145 - 1;
            v196 = *(*&v180[8 * v145 - 8] + 32);
            if (v196 >= v192)
            {
              v197 = v145 >> 1;
            }

            else
            {
              v197 = v145 - 1;
            }

            if (v196 >= v194)
            {
              v195 = 0;
            }

            else
            {
              v197 = 0;
            }

            if (v196 >= v192)
            {
              v191 = v195;
            }

            if (v192 >= v194)
            {
              v191 = v197;
            }

LABEL_224:
            v216 = 0;
            v217 = 0;
            *v180 = *&v180[8 * v191];
            *&v180[8 * v191] = v193;
            for (m = 1; m != v145; ++m)
            {
              v219 = *&v180[8 * m];
              if ((*(*v180 + 32) - *(v219 + 32)) <= 0.0)
              {
                ++v217;
                *&v180[8 * m] = *&v180[8 * v217];
                *&v180[8 * v217] = v219;
                if ((*(*v180 + 32) - *(*&v180[8 * m] + 32)) == 0.0)
                {
                  ++v216;
                  *&v180[8 * v217] = *&v180[8 * v216];
                  *&v180[8 * v216] = v219;
                }
              }
            }

            v220 = 8 * v217 - 8 * v216;
            v221 = v216;
            do
            {
              v222 = *&v180[v220];
              *&v180[v220] = *&v180[8 * v221];
              *&v180[8 * v221] = v222;
              v220 += 8;
              v157 = v221-- <= 0;
            }

            while (!v157);
            v177 = v182 + 1;
            if (v182 + 1 >= v181)
            {
              v223 = 2 * v181;
              v176 = malloc_type_realloc(v176, 32 * v181, 0x100004000313F17uLL);
              v179 = v831;
              v181 = v223;
            }

            v224 = &v176[16 * v182];
            *v224 = v217 + ((v180 - v179) >> 3) + 1;
            *(v224 + 1) = v145 + ~v217;
            v145 = v217 - v216;
            v178 = v217 != v216;
            if (v182 < 0 && !v145)
            {
              goto LABEL_236;
            }
          }

          v198 = 0;
          v199 = 0;
          v200 = 26;
          if (v145 <= 0x7D0)
          {
            v200 = 8;
          }

          v201 = 3;
          if (v145 > 0x7D0)
          {
            v201 = 9;
          }

          while (2)
          {
            v202 = (v145 - 1 + v198) / v200;
            v203 = *(*&v180[8 * v202] + 32);
            v204 = *(*&v180[8 * (v198 / v200)] + 32);
            v205 = (2 * v145 - 2 + v198) / v200;
            v206 = *(*&v180[8 * v205] + 32);
            if (v203 >= v204)
            {
              if (v206 < v204)
              {
                goto LABEL_208;
              }

              if (v206 < v203)
              {
                goto LABEL_210;
              }
            }

            else if (v206 >= v203)
            {
              if (v206 < v204)
              {
LABEL_210:
                *(&v839 + v199) = v205;
LABEL_202:
                ++v199;
                v198 += 3 * v145 - 3;
                if (v201 != v199)
                {
                  continue;
                }

                while (2)
                {
                  v207 = v201;
                  v201 /= 3uLL;
                  v208 = &v839;
                  v209 = &v840;
                  v210 = v201;
LABEL_215:
                  v211 = *(v209 - 2);
                  v212 = *(v209 - 1);
                  v213 = *(*&v180[8 * v212] + 32);
                  v214 = *(*&v180[8 * v211] + 32);
                  v215 = *(*&v180[8 * *v209] + 32);
                  if (v213 >= v214)
                  {
                    if (v215 < v214)
                    {
                      goto LABEL_220;
                    }

                    if (v215 < v213)
                    {
                      goto LABEL_222;
                    }
                  }

                  else if (v215 >= v213)
                  {
                    if (v215 < v214)
                    {
LABEL_222:
                      *v208 = *v209;
LABEL_214:
                      v209 = (v209 + 24);
                      v208 = (v208 + 8);
                      if (!--v210)
                      {
                        if (v207 < 9)
                        {
                          v191 = v839;
                          v193 = *v180;
                          goto LABEL_224;
                        }

                        continue;
                      }

                      goto LABEL_215;
                    }

LABEL_220:
                    *v208 = v211;
                    goto LABEL_214;
                  }

                  break;
                }

                *v208 = v212;
                goto LABEL_214;
              }

LABEL_208:
              *(&v839 + v199) = v198 / v200;
              goto LABEL_202;
            }

            break;
          }

          *(&v839 + v199) = v202;
          goto LABEL_202;
        }

LABEL_236:
        free(v176);
        v225 = v830;
        v30 = a11;
        v78 = v692;
        v226 = v707;
        if (v830 > v122)
        {
          if (v832 < v122)
          {
            v227 = 32;
            if (v832)
            {
              v227 = 2 * v832;
            }

            if (v227 <= v122)
            {
              v228 = v122;
            }

            else
            {
              v228 = v227;
            }

            if (v228)
            {
              v229 = malloc_type_realloc(v831, 8 * v228, 0x2004093837F09uLL);
              v226 = v707;
              v831 = v229;
            }

            v832 = v228;
          }

          v830 = v122;
          v225 = v122;
        }

        v687 = *(v705 + 104 * *(a11 + 52));
        if (v225 < 1)
        {
          v231 = 0;
          v698 = 0;
          v699 = 0;
          goto LABEL_462;
        }

        v230 = 0;
        v698 = 0;
        v699 = 0;
        v694 = 0;
        v695 = 0;
        v693 = 0;
        v231 = 0;
        v232 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              v704 = v230;
              v233 = *(v831 + v230);
              v837 = 0u;
              v838 = 0u;
              v835 = 0u;
              v836 = 0u;
              v833 = 0u;
              v834 = 0u;
              v234 = *(v705 + 104 * *(v30 + 52));
              if (*(v233 + 8) >= v234)
              {
                break;
              }

              ++v230;
              if (v830 <= v704 + 1)
              {
                goto LABEL_462;
              }
            }

            v235 = *v233;
            v237 = v233[1];
            v236 = v233[2];
            v238 = v233[3];
            v239 = v54[3].i32[1];
            v240 = v54[1].f32[1];
            v819 = v54[1].f32[0];
            v241 = v54[2].f32[0];
            v242 = v54[2].f32[1];
            v243 = v54[3].f32[0];
            v244 = v697;
            if (v697 < 1)
            {
              v703 = v232;
              v324 = 0;
              goto LABEL_353;
            }

            v804 = v54[3].i32[1];
            v808 = *v233;
            v245 = 0;
            v246 = 0;
            v247 = ptr;
            do
            {
              v254 = *v247++;
              v253 = v254;
              v255 = -v254 & 0x7FF;
              v256 = v254 & 0x7FF;
              if (v254 <= 0)
              {
                v257 = -v255;
              }

              else
              {
                v257 = v256;
              }

              if ((*&v233[2 * (v257 >> 6) + 10] >> v257))
              {
                v258 = (v226 + 12 * v253);
                v259 = (1 << (v54[3].i32[1] - *v233));
                v260 = v54[2].f32[1];
                v261 = (v260 * v259) * 0.5;
                v264 = vmul_n_f32(vadd_f32(vcvt_f32_s32(*(v233 + 1)), 0x3F0000003F000000), v259);
                v262 = vsub_f32(*v258, vmla_n_f32(v54[1], v264, v260));
                v263 = sqrtf(COERCE_FLOAT(vmul_f32(v262, v262).i32[1]) + (v262.f32[0] * v262.f32[0]));
                v264.f32[0] = v261 * 1.4142;
                if (v263 >= (v261 * 1.4142))
                {
                  v265 = v54[3].f32[0];
                  v266 = v258[1].f32[0] - (v54[2].f32[0] + (((v233[3] + 0.5) * v259) * v265));
                  v267 = (v265 * v259) * 0.5;
                  if ((v267 + v266) <= 0.0)
                  {
                    v268 = v261;
                  }

                  else
                  {
                    v268 = -v261;
                  }

                  v269 = (v267 + v266) / (v263 + (v268 * 1.4142));
                  v270 = -v269;
                  if (v269 >= 0.0)
                  {
                    v270 = v269;
                  }

                  v271 = v270 < 1.0;
                  if (v270 >= 1.0)
                  {
                    v270 = 1.0 / v270;
                  }

                  v272 = v270 + (((v270 * v270) * (((((v270 * v270) * -0.046496) + 0.15931) * (v270 * v270)) + -0.32762)) * v270);
                  if (!v271)
                  {
                    v272 = 1.5708 - v272;
                  }

                  v273 = v266 - v267;
                  v274 = -v272;
                  if (v269 >= 0.0)
                  {
                    v274 = v272;
                  }

                  if (v273 <= 0.0)
                  {
                    v261 = -v261;
                  }

                  v275 = v273 / (v263 + (v261 * 1.4142));
                  v276 = -v275;
                  if (v275 >= 0.0)
                  {
                    v276 = v275;
                  }

                  v277 = v276 < 1.0;
                  if (v276 >= 1.0)
                  {
                    v276 = 1.0 / v276;
                  }

                  v278 = v276 + (((v276 * v276) * (((((v276 * v276) * -0.046496) + 0.15931) * (v276 * v276)) + -0.32762)) * v276);
                  if (!v277)
                  {
                    v278 = 1.5708 - v278;
                  }

                  v87 = v275 < 0.0;
                  v279 = -v278;
                  if (!v87)
                  {
                    v279 = v278;
                  }

                  v280 = vcltz_f32(v262);
                  v281 = vbsl_s8(v280, vneg_f32(v262), v262);
                  v282 = *v281.i32 < *&v281.i32[1];
                  if (*v281.i32 >= *&v281.i32[1])
                  {
                    v283 = *&v281.i32[1];
                  }

                  else
                  {
                    v283 = *v281.i32;
                  }

                  if (*v281.i32 <= *&v281.i32[1])
                  {
                    v281.i32[0] = v281.i32[1];
                  }

                  v284 = v283 / *v281.i32;
                  v285 = v284 + (((v284 * v284) * (((((v284 * v284) * -0.046496) + 0.15931) * (v284 * v284)) + -0.32762)) * v284);
                  if (v282)
                  {
                    v285 = 1.5708 - v285;
                  }

                  if (v280.i8[0])
                  {
                    v285 = 3.1416 - v285;
                  }

                  if (v280.i8[4])
                  {
                    v285 = -v285;
                  }

                  v286 = v708 + 8 * v253;
                  v287 = *(v286 + 4);
                  v288 = (v709 + 8 * v253);
                  if (!v709)
                  {
                    v288 = 0;
                  }

                  v289 = *(a11 + 28);
                  v290 = v289 + v274;
                  if ((v279 - v289) <= v287 && v290 >= v287)
                  {
                    v292 = v264.f32[0] / v263;
                    v264.f32[0] = v285 - v292;
                    v293.f32[0] = v292 + v285;
                    if (!v288 || ((v294 = *v288, v295 = v288[1], v296 = (v264.f32[0] - *v288) + ((__PAIR64__(((v264.f32[0] - *v288) * 0.159154943), v264.f32[0] - *v288) - COERCE_UNSIGNED_INT(0.0)) >> 32) * -6.28318531, v296 > 0.0) ? (v297 = v295 <= v296) : (v297 = 1), !v297 || ((v298 = (v293.f32[0] - v294) + ((__PAIR64__(((v293.f32[0] - v294) * 0.159154943), v293.f32[0] - v294) - COERCE_UNSIGNED_INT(0.0)) >> 32) * -6.28318531, v298 > 0.0) ? (v299 = v295 <= v298) : (v299 = 1), !v299 || (v300.f32[0] = v294 + (v295 * 0.5), v300.i32[1] = v293.i32[0], v301 = vsub_f32(v300, vdup_lane_s32(v264, 0)), v302 = vcvtq_f64_f32(v301), v303 = vadd_s32(vmovn_s64(vcvtq_s64_f64(vmulq_f64(v302, vdupq_n_s64(0x3FC45F306DC9C883uLL)))), vcltz_f32(v301)), v304.i64[0] = v303.i32[0], v304.i64[1] = v303.i32[1], v305 = vmlaq_f64(v302, vdupq_n_s64(0xC01921FB54442D18), vcvtq_f64_s64(v304)), (vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_laneq_s64(v305, 1), v305))).u8[0] & 1) == 0))))
                    {
                      v306 = *(a11 + 24);
                      v293.i32[1] = v264.i32[0];
                      v307 = vld1_dup_f32(v286);
                      v308 = vmul_f32(vsub_f32(v293, v307), vdup_n_s32(0x3E22F983u));
                      v309 = vcvt_s32_f32(vmul_n_f32(vsub_f32(v308, vcvt_f32_s32(vadd_s32(vcltz_f32(v308), vcvt_s32_f32(v308)))), v306));
                      v310 = vmin_s32(vdup_n_s32(v306 - 1), v309);
                      v251 = vbsl_s8(vdup_lane_s32(vcgt_s32(vdup_lane_s32(v310, 1), v309), 0), v310, vrev64_s32(v310));
                      v311 = v251.i32[1] - v251.i32[0];
                      if (v251.i32[1] - v251.i32[0] < 0)
                      {
                        v311 = v251.i32[0] - v251.i32[1];
                      }

                      v312 = v233[6];
                      if (v311 >= *(a11 + 24) / 2)
                      {
                        if (v251.i32[1] > v312 && v312 > v251.i32[0])
                        {
                          goto LABEL_257;
                        }
                      }

                      else if (v251.i32[0] > v312 || v312 > v251.i32[1])
                      {
                        goto LABEL_257;
                      }

                      v252 = v245 + 1;
                      v823 = v245 + 1;
                      if (v245 >= v695)
                      {
                        v315 = 2 * v695;
                        if (!v695)
                        {
                          v315 = 21;
                        }

                        if (v315 <= v245)
                        {
                          v315 = v245 + 1;
                        }

                        if (v315)
                        {
                          v695 = v315;
                          v813 = v246;
                          v701 = v232;
                          v799 = v245;
                          v316 = malloc_type_realloc(v698, 12 * v315, 0x10000403E1C8BA9uLL);
                          v252 = v823;
                          v245 = v799;
                          v232 = v701;
                          v226 = v707;
                          v698 = v316;
                          v246 = v813;
                        }

                        else
                        {
                          v695 = 0;
                        }
                      }

                      v317 = *v258;
                      v318 = &v698[3 * v245];
                      v318[1].i32[0] = v258[1].i32[0];
                      *v318 = v317;
                      v319 = v246 + 1;
                      if (v246 >= v694)
                      {
                        v320 = 2 * v694;
                        if (!v694)
                        {
                          v320 = 32;
                        }

                        if (v320 <= v246)
                        {
                          v320 = v246 + 1;
                        }

                        if (v320)
                        {
                          v694 = v320;
                          v814 = v246;
                          v702 = v232;
                          v321 = malloc_type_realloc(v699, 8 * v320, 0x100004000313F17uLL);
                          v252 = v823;
                          v232 = v702;
                          v226 = v707;
                          v699 = v321;
                          v246 = v814;
                        }

                        else
                        {
                          v694 = 0;
                        }
                      }

                      *&v699[2 * v246] = *v286;
                      v322 = v232 + 1;
                      if (v232 >= v693)
                      {
                        v323 = 2 * v693;
                        if (!v693)
                        {
                          v323 = 64;
                        }

                        if (v323 <= v232)
                        {
                          v323 = v232 + 1;
                        }

                        if (v323)
                        {
                          v693 = v323;
                          v248 = v231;
                          v249 = v232;
                          v250 = malloc_type_realloc(v248, 4 * v323, 0x100004052888210uLL);
                          v252 = v823;
                          v232 = v249;
                          v226 = v707;
                          v231 = v250;
                        }

                        else
                        {
                          v693 = 0;
                        }
                      }

                      if (v700)
                      {
                        v251.i16[0] = *(v700 + 2 * v253);
                        *v251.i32 = v251.u32[0];
                      }

                      else
                      {
                        v251.i32[0] = 1.0;
                      }

                      *(v231 + v232) = v251.i32[0];
                      v232 = v322;
                      v246 = v319;
                      v245 = v252;
                    }
                  }
                }
              }

LABEL_257:
              --v244;
            }

            while (v244);
            v703 = v232;
            v30 = a11;
            v234 = *(v705 + 104 * *(a11 + 52));
            v324 = v246;
            LOBYTE(v235) = LOBYTE(v808);
            LOBYTE(v239) = v804;
LABEL_353:
            v325 = (1 << (v239 - LOBYTE(v235)));
            v326 = v819 + (((v237 + 0.5) * v325) * v242);
            v327 = v240 + (((v236 + 0.5) * v325) * v242);
            v328 = v241 + (((v238 + 0.5) * v325) * v243);
            v329 = (v233[6] + 0.5) / v54[4].i32[0];
            v330 = (v329 + v329) * 3.14159265;
            v331 = *v30 * 32.0;
            if (((*(v30 + 36) * 0.5) * 32.0) > v234)
            {
              v234 = (*(v30 + 36) * 0.5) * 32.0;
            }

            v710 = v234;
            v730 = v327;
            v731 = v326;
            v729 = v328;
            v332 = v330;
            v714 = malloc_type_calloc(v324, 1uLL, 0x917297E5uLL);
            v333 = __sincos_stret(v332);
            v334 = 0;
            cosval = v333.__cosval;
            sinval = v333.__sinval;
            v736 = v333.__cosval * 0.0 + v333.__sinval * 0.0;
            v737 = -(v333.__sinval - v333.__cosval * 0.0 * 0.0);
            v738 = 0.0;
            v734 = v333.__sinval * 0.0 - v333.__cosval * 0.0;
            v735 = v333.__cosval + v333.__sinval * 0.0 * 0.0;
            v711 = v331 * 3.0;
            v335 = v324;
            v733 = -0.0;
            v732 = 1.0;
            v713 = v324;
            while (2)
            {
              v712 = v334;
              v336 = 0;
              while (2)
              {
                v849 = 0;
                v847 = 0u;
                v848 = 0u;
                v845 = 0u;
                v846 = 0u;
                v843 = 0u;
                v844 = 0u;
                v841 = 0u;
                v842 = 0u;
                v840 = 0u;
                v839 = 0u;
                if (v335 < 1)
                {
                  v781 = NAN;
                }

                else
                {
                  v338 = v335;
                  v339 = 0;
                  v340 = cosval;
                  v728 = -v340;
                  v341 = v737;
                  v727 = -v341;
                  v342 = v736;
                  v726 = -v342;
                  v343 = sinval;
                  v725 = -v343;
                  v344 = v735;
                  v724 = -v344;
                  v345 = v734;
                  v723 = -v345;
                  v346 = v733;
                  v722 = -v346;
                  v347 = v738;
                  v721 = -v347;
                  v348 = v732;
                  v720 = -v348;
                  v349 = 0.0;
                  v350 = v699 + 1;
                  v351 = v698 + 1;
                  v352 = v714;
                  v353 = v231;
                  v354 = 0.0;
                  v355 = 0.0;
                  v356 = 0.0;
                  v357 = 0.0;
                  v358 = 0.0;
                  v359 = 0.0;
                  *&v360 = 0.0;
                  *&v361 = 0.0;
                  *&v362 = 0.0;
                  *&v363 = 0.0;
                  *&v364 = 0.0;
                  *&v365 = 0.0;
                  *&v366 = 0.0;
                  *&v367 = 0.0;
                  *&v368 = 0.0;
                  *&v369 = 0.0;
                  *&v370 = 0.0;
                  *&v371 = 0.0;
                  *&v372 = 0.0;
                  *&v373 = 0.0;
                  v815 = 0.0;
                  v809 = 0.0;
                  v805 = 0.0;
                  v774 = 0.0;
                  v772 = 0.0;
                  v800 = 0.0;
                  v796 = 0.0;
                  v793 = 0.0;
                  v791 = 0.0;
                  v771 = 0.0;
                  v770 = 0.0;
                  v789 = 0.0;
                  v787 = 0.0;
                  v785 = 0.0;
                  v783 = 0.0;
                  v769 = 0.0;
                  v768 = 0.0;
                  v778 = 0uLL;
                  v776 = 0.0;
                  do
                  {
                    if (!*v352++)
                    {
                      v767 = v349;
                      v766 = v354;
                      v765 = v355;
                      v764 = v356;
                      v763 = v357;
                      v762 = v358;
                      v761 = v359;
                      v760 = *&v360;
                      v759 = *&v361;
                      v758 = *&v362;
                      v757 = *&v363;
                      v756 = *&v364;
                      v755 = *&v365;
                      v754 = *&v366;
                      v753 = *&v367;
                      v752 = *&v368;
                      v751 = *&v369;
                      v750 = *&v370;
                      v749 = *&v371;
                      v748 = *&v372;
                      v825 = *&v373;
                      if (v231)
                      {
                        v374 = *v353;
                      }

                      else
                      {
                        v374 = 1.0;
                      }

                      v375 = *(v350 - 1);
                      v745 = *v350;
                      v376 = *(v351 - 1) - v731;
                      v377 = *v351 - v730;
                      v378 = v351[1] - v729;
                      v379 = sinval * v377 + cosval * v376 + v733 * v378;
                      v380 = v735 * v377 + v737 * v376 + v738 * v378;
                      v381 = v734 * v377 + v736 * v376 + v732 * v378;
                      v382 = atan2f(v380, v379);
                      v383 = (v380 * v380) + (v379 * v379);
                      v384 = sqrtf(v383);
                      v385 = atanf(v381 / v384);
                      v386 = v374;
                      v747 = ((v375 - v382) + 3.14159265 + ((((v375 - v382) + 3.14159265) * 0.159154943) - ((v375 - v382) + 3.14159265 < 0.0)) * -6.28318531 + -3.14159265) * v374;
                      v387 = (v381 * v381) + (v384 * v384);
                      v388 = -v381 / v387;
                      v389 = v374 * (-v380 / v383);
                      v390 = v374 * ((v379 / v384) * v388);
                      v391 = v374 * (v379 / v383);
                      v392 = v374 * ((v380 / v384) * v388);
                      v393 = ((v390 * v728) + 0.0) + (v392 * v727);
                      v746 = v745 - v385;
                      v394 = ((v390 * v725) + 0.0) + (v392 * v724);
                      v395 = ((v389 * 0.0) + 0.0) + (v391 * v381);
                      v396 = ((v390 * v722) + 0.0) + (v392 * v721);
                      v397 = ((v390 * 0.0) + 0.0) + (v392 * v381);
                      v398 = ((v390 * v380) + 0.0) - (v392 * v379);
                      v399 = v374 * (v384 / v387);
                      v400 = ((0.0 - (v389 * v381)) + (v391 * 0.0)) + ((v374 * 0.0) * v379);
                      v401 = ((0.0 - (v390 * v381)) + (v392 * 0.0)) + (v399 * v379);
                      v402 = (((v389 * v728) + 0.0) + (v391 * v727)) + ((v374 * 0.0) * v726);
                      v403 = (((v389 * v725) + 0.0) + (v391 * v724)) + ((v374 * 0.0) * v723);
                      v404 = (((v389 * v722) + 0.0) + (v391 * v721)) + ((v374 * 0.0) * v720);
                      v405 = (((v389 * v380) + 0.0) - (v391 * v379)) + ((v374 * 0.0) * 0.0);
                      v406 = v395 - ((v374 * 0.0) * v380);
                      v407 = v397 - (v399 * v380);
                      v408 = v393 + (v399 * v726);
                      v409 = v394 + (v399 * v723);
                      v410 = v396 + (v399 * v720);
                      v411 = v398 + (v399 * 0.0);
                      *&v778 = *&v778 + (((v402 * v402) + 0.0) + (v408 * v408));
                      v412 = ((v403 * v402) + 0.0) + (v409 * v408);
                      *(&v778 + 1) = *(&v778 + 1) + v412;
                      v783 = v783 + v412;
                      v785 = v785 + (((v403 * v403) + 0.0) + (v409 * v409));
                      v413 = ((v404 * v402) + 0.0) + (v410 * v408);
                      *(&v778 + 2) = *(&v778 + 2) + v413;
                      v791 = v791 + v413;
                      v414 = ((v404 * v403) + 0.0) + (v410 * v409);
                      v787 = v787 + v414;
                      v793 = v793 + v414;
                      v796 = v796 + (((v404 * v404) + 0.0) + (v410 * v410));
                      v415 = ((v405 * v402) + 0.0) + (v411 * v408);
                      *(&v778 + 3) = *(&v778 + 3) + v415;
                      v805 = v805 + v415;
                      v416 = ((v405 * v403) + 0.0) + (v411 * v409);
                      v789 = v789 + v416;
                      v809 = v809 + v416;
                      v417 = ((v405 * v404) + 0.0) + (v411 * v410);
                      v800 = v800 + v417;
                      v815 = v815 + v417;
                      *&v824 = v825 + (((v405 * v405) + 0.0) + (v411 * v411));
                      v418 = v400;
                      v419 = (v400 * v402) + 0.0;
                      v420 = v401;
                      v421 = v419 + (v401 * v408);
                      v744 = v408;
                      *&v422 = v768 + v421;
                      *&v423 = v750 + v421;
                      v424 = ((v418 * v403) + 0.0) + (v401 * v409);
                      *&v425 = v770 + v424;
                      v426 = v386;
                      *&v427 = v751 + v424;
                      v428 = ((v418 * v404) + 0.0) + (v401 * v410);
                      *&v429 = v772 + v428;
                      *&v430 = v752 + v428;
                      v742 = v405;
                      v431 = ((v418 * v405) + 0.0) + (v401 * (v398 + (v399 * 0.0)));
                      v432 = v398 + (v399 * 0.0);
                      v743 = v432;
                      *&v433 = v748 + v431;
                      *&v434 = v753 + v431;
                      *&v435 = v754 + (((v418 * v418) + 0.0) + (v401 * v401));
                      v436 = v406;
                      v437 = v407;
                      v438 = ((v406 * v402) + 0.0) + (v407 * v744);
                      *&v439 = v769 + v438;
                      *&v440 = v756 + v438;
                      v441 = ((v436 * v403) + 0.0) + (v407 * v409);
                      *&v442 = v771 + v441;
                      *&v443 = v757 + v441;
                      v444 = ((v436 * v404) + 0.0) + (v407 * v410);
                      *&v445 = v774 + v444;
                      *&v446 = v758 + v444;
                      v447 = ((v436 * v742) + 0.0) + (v407 * v432);
                      *&v448 = v749 + v447;
                      *&v449 = v759 + v447;
                      v450 = ((v436 * v418) + 0.0) + (v437 * v420);
                      v451 = v420;
                      *&v452 = v755 + v450;
                      *&v453 = v760 + v450;
                      v359 = v761 + (((v436 * v436) + 0.0) + (v437 * v437));
                      v454 = v426 * v746;
                      v455 = v747;
                      v358 = (v762 + (v402 * v455)) + (v744 * v454);
                      v357 = (v763 + (v403 * v455)) + (v409 * v454);
                      v356 = (v764 + (v404 * v455)) + (v410 * v454);
                      v355 = (v765 + (v742 * v455)) + (v743 * v454);
                      v354 = (v766 + (v418 * v455)) + (v451 * v454);
                      v349 = (v767 + (v436 * v455)) + (v437 * v454);
                      v776 = v776 + ((v454 * v454) + (v455 * v455));
                      v839 = v778;
                      v768 = *&v422;
                      *&v840 = __PAIR64__(v439, v422);
                      v769 = *&v439;
                      *(&v840 + 1) = __PAIR64__(LODWORD(v785), LODWORD(v783));
                      *&v841 = __PAIR64__(LODWORD(v789), LODWORD(v787));
                      v770 = *&v425;
                      *(&v841 + 1) = __PAIR64__(v442, v425);
                      v771 = *&v442;
                      *&v842 = __PAIR64__(LODWORD(v793), LODWORD(v791));
                      *(&v842 + 1) = __PAIR64__(LODWORD(v800), LODWORD(v796));
                      v772 = *&v429;
                      *&v843 = __PAIR64__(v445, v429);
                      v774 = *&v445;
                      *(&v843 + 1) = __PAIR64__(LODWORD(v809), LODWORD(v805));
                      *&v844 = __PAIR64__(v824, LODWORD(v815));
                      v373 = v824;
                      v372 = v433;
                      *(&v844 + 1) = __PAIR64__(v448, v433);
                      v371 = v448;
                      v370 = v423;
                      *&v845 = __PAIR64__(v427, v423);
                      v369 = v427;
                      v368 = v430;
                      *(&v845 + 1) = __PAIR64__(v434, v430);
                      v367 = v434;
                      v366 = v435;
                      *&v846 = __PAIR64__(v452, v435);
                      v365 = v452;
                      v364 = v440;
                      *(&v846 + 1) = __PAIR64__(v443, v440);
                      v363 = v443;
                      v362 = v446;
                      *&v847 = __PAIR64__(v449, v446);
                      v361 = v449;
                      v360 = v453;
                      *(&v847 + 1) = __PAIR64__(LODWORD(v359), v453);
                      *&v848 = __PAIR64__(LODWORD(v357), LODWORD(v358));
                      *(&v848 + 1) = __PAIR64__(LODWORD(v355), LODWORD(v356));
                      v849 = __PAIR64__(LODWORD(v349), LODWORD(v354));
                      ++v339;
                    }

                    ++v353;
                    v351 += 3;
                    v350 += 2;
                    --v338;
                  }

                  while (v338);
                  v781 = v776 / v339;
                  v335 = v713;
                }

                v457 = 0;
                v458 = &v839;
                v459 = 2;
                v460 = &v862;
                do
                {
                  v461 = *v458;
                  *v460 = *v458;
                  v462 = &v460[v457];
                  if (v457)
                  {
                    v463 = &v460[-v457];
                    v464 = -v457;
                    do
                    {
                      v461 = v461 - (v460[v464] * v460[v464]);
                      *v460 = v461;
                      v140 = __CFADD__(v464++, 1);
                    }

                    while (!v140);
                    *v460 = sqrtf(v461);
                    v465 = v457 + 1;
                    v466 = v458 + 1;
                    if (v457 <= 4)
                    {
                      v467 = v462 + 1;
                      v468 = v459;
                      do
                      {
                        v469 = *v466;
                        *v467 = *v466;
                        v470 = &v467[-v457];
                        v471 = v469 - (*v470 * *v463);
                        *v467 = v471;
                        if (v457 != 1)
                        {
                          v471 = v471 - (v470[1] * v463[1]);
                          *v467 = v471;
                          if (v457 != 2)
                          {
                            v471 = v471 - (v470[2] * v463[2]);
                            *v467 = v471;
                            if (v457 != 3)
                            {
                              v471 = v471 - (v470[3] * v463[3]);
                              *v467 = v471;
                            }
                          }
                        }

                        *v467 = v471 / *v460;
                        v467 += v468;
                        ++v466;
                        ++v468;
                      }

                      while (v468 != 7);
                    }
                  }

                  else
                  {
                    *v460 = sqrtf(v461);
                    v472 = v460 + 1;
                    v466 = v458 + 1;
                    v473 = v459;
                    do
                    {
                      v474 = *v466++;
                      *v472 = v474;
                      *v472 = v474 / *v460;
                      v472 += v473++;
                    }

                    while (v473 != 7);
                    v465 = 1;
                  }

                  v460 = v462 + 2;
                  v458 = &v466[v465];
                  ++v459;
                  v457 = v465;
                }

                while (v465 != 6);
                v856 = *&v848 / v862;
                v857 = (*(&v848 + 1) - (v863 * (*&v848 / v862))) / v864;
                v475 = ((*(&v848 + 2) - (v865 * (*&v848 / v862))) - (v866 * v857)) / v867;
                v858 = v475;
                v859 = (((*(&v848 + 3) - (v868 * (*&v848 / v862))) - (v869 * v857)) - (v870 * v475)) / v871;
                v476 = ((((*&v849 - (v872 * (*&v848 / v862))) - (v873 * v857)) - (v874 * v475)) - (v875 * v859)) / v876;
                v860 = v476;
                v861 = (((((*(&v849 + 1) - (v877 * (*&v848 / v862))) - (v878 * v857)) - (v879 * v475)) - (v880 * v859)) - (v881 * v476)) / v882;
                v855 = v861 / v882;
                v854 = (v476 - (v881 * (v861 / v882))) / v876;
                v477 = ((v859 - (v875 * v854)) - (v880 * (v861 / v882))) / v871;
                v478 = (((v475 - (v870 * v477)) - (v874 * v854)) - (v879 * (v861 / v882))) / v867;
                v853 = v477;
                v852 = v478;
                v479 = ((((v857 - (v866 * v478)) - (v869 * v477)) - (v873 * v854)) - (v878 * (v861 / v882))) / v864;
                v480 = ((((((*&v848 / v862) - (v863 * v479)) - (v865 * v478)) - (v868 * v477)) - (v872 * v854)) - (v877 * (v861 / v882))) / v862;
                v851 = v479;
                v850 = v480;
                v777 = v477;
                v779 = v854;
                v481 = v854;
                v780 = v861 / v882;
                v482 = (v861 / v882);
                v483 = __sincos_stret(v477);
                v484 = __sincos_stret(v481);
                v485 = __sincos_stret(v482);
                v486 = v480;
                v487 = v479;
                if (v335 >= 1)
                {
                  v488 = 0;
                  v773 = v480;
                  v826 = v731 + v480;
                  v775 = v479;
                  v816 = v730 + v479;
                  v489 = v484.__sinval * v483.__cosval * v485.__sinval - v483.__sinval * v485.__cosval;
                  v490 = v485.__sinval * v483.__sinval + v484.__sinval * v483.__cosval * v485.__cosval;
                  v491 = v485.__cosval * v483.__cosval + v484.__sinval * v483.__sinval * v485.__sinval;
                  v492 = v484.__sinval * v483.__sinval * v485.__cosval - v483.__cosval * v485.__sinval;
                  v810 = cosval * (v484.__cosval * v483.__cosval) + 0.0 + v737 * (v484.__cosval * v483.__sinval) - v736 * v484.__sinval;
                  v801 = cosval * v489 + 0.0 + v737 * v491 + v736 * (v485.__sinval * v484.__cosval);
                  v797 = sinval * (v484.__cosval * v483.__cosval) + 0.0 + v735 * (v484.__cosval * v483.__sinval) - v734 * v484.__sinval;
                  v794 = v733 * (v484.__cosval * v483.__cosval) + 0.0 + v738 * (v484.__cosval * v483.__sinval) - v732 * v484.__sinval;
                  v792 = sinval * v489 + 0.0 + v735 * v491 + v734 * (v485.__sinval * v484.__cosval);
                  v788 = v733 * v489 + 0.0 + v738 * v491 + v732 * (v485.__sinval * v484.__cosval);
                  v806 = v729 + v478;
                  v790 = cosval * v490 + 0.0 + v737 * v492 + v736 * (v485.__cosval * v484.__cosval);
                  v786 = sinval * v490 + 0.0 + v735 * v492 + v734 * (v485.__cosval * v484.__cosval);
                  v784 = v733 * v490 + 0.0 + v738 * v492 + v732 * (v485.__cosval * v484.__cosval);
                  v493 = v699 + 1;
                  v494 = v698 + 1;
                  v495 = 0.0;
                  v496 = v714;
                  v497 = v231;
                  v782 = v478;
                  do
                  {
                    if (!*v496++)
                    {
                      if (v231)
                      {
                        v498 = *v497;
                      }

                      else
                      {
                        v498 = 1.0;
                      }

                      v500 = *(v493 - 1);
                      v499 = *v493;
                      v501 = *(v494 - 1) - v826;
                      v502 = *v494 - v816;
                      v503 = v494[1] - v806;
                      v504 = v797 * v502 + v810 * v501 + v794 * v503;
                      v505 = v792 * v502 + v801 * v501 + v788 * v503;
                      v506 = v786 * v502 + v790 * v501 + v784 * v503;
                      v507 = atan2f(v505, v504);
                      v508 = atanf(v506 / sqrtf((v505 * v505) + (v504 * v504)));
                      v509 = ((v500 - v507) + 3.14159265 + ((((v500 - v507) + 3.14159265) * 0.159154943) - ((v500 - v507) + 3.14159265 < 0.0)) * -6.28318531 + -3.14159265) * v498;
                      v495 = v495 + (((v498 * (v499 - v508)) * (v498 * (v499 - v508))) + (v509 * v509));
                      ++v488;
                      v478 = v782;
                    }

                    ++v497;
                    v494 += 3;
                    v493 += 2;
                    --v335;
                  }

                  while (v335);
                  v337 = v495 / v488;
                  v335 = v713;
                  v487 = v775;
                  v486 = v773;
                  if (v337 < v781)
                  {
LABEL_358:
                    ++v336;
                    v736 = v790;
                    v737 = v801;
                    cosval = v810;
                    sinval = v797;
                    v734 = v786;
                    v735 = v792;
                    v738 = v788;
                    v732 = v784;
                    v733 = v794;
                    v730 = v816;
                    v731 = v826;
                    v729 = v806;
                    v781 = v337;
                    if (v336 == 4)
                    {
                      goto LABEL_402;
                    }

                    continue;
                  }
                }

                break;
              }

              v511 = v486 * 0.5;
              v512 = v487 * 0.5;
              v850 = v486 * 0.5;
              v851 = v487 * 0.5;
              v513 = v478 * 0.5;
              v852 = v513;
              v853 = v777 * 0.5;
              v854 = v779 * 0.5;
              v855 = v780 * 0.5;
              v514 = __sincos_stret((v777 * 0.5));
              v515 = __sincos_stret((v779 * 0.5));
              v516 = __sincos_stret((v780 * 0.5));
              if (v335 < 1)
              {
                v566 = sqrtf(v781);
                v541 = v712;
                if (v566 <= v711 || v712 >= 0x12)
                {
                  v566 = v711;
                }

                v817 = v566;
LABEL_430:
                v546 = 0.0;
                v104 = 0.5;
                if (v817 == v711)
                {
                  break;
                }

                goto LABEL_431;
              }

              v517 = 0;
              v826 = v731 + v511;
              v816 = v730 + v512;
              v806 = v729 + v513;
              v518 = v515.__sinval * v514.__cosval * v516.__sinval - v514.__sinval * v516.__cosval;
              v519 = v516.__sinval * v514.__sinval + v515.__sinval * v514.__cosval * v516.__cosval;
              v520 = v516.__cosval * v514.__cosval + v515.__sinval * v514.__sinval * v516.__sinval;
              v521 = v515.__sinval * v514.__sinval * v516.__cosval - v514.__cosval * v516.__sinval;
              v810 = cosval * (v515.__cosval * v514.__cosval) + 0.0 + v737 * (v515.__cosval * v514.__sinval) - v736 * v515.__sinval;
              v801 = cosval * v518 + 0.0 + v737 * v520 + v736 * (v516.__sinval * v515.__cosval);
              v790 = cosval * v519 + 0.0 + v737 * v521 + v736 * (v516.__cosval * v515.__cosval);
              v797 = sinval * (v515.__cosval * v514.__cosval) + 0.0 + v735 * (v515.__cosval * v514.__sinval) - v734 * v515.__sinval;
              v792 = sinval * v518 + 0.0 + v735 * v520 + v734 * (v516.__sinval * v515.__cosval);
              v786 = sinval * v519 + 0.0 + v735 * v521 + v734 * (v516.__cosval * v515.__cosval);
              v794 = v733 * (v515.__cosval * v514.__cosval) + 0.0 + v738 * (v515.__cosval * v514.__sinval) - v732 * v515.__sinval;
              v788 = v733 * v518 + 0.0 + v738 * v520 + v732 * (v516.__sinval * v515.__cosval);
              v784 = v733 * v519 + 0.0 + v738 * v521 + v732 * (v516.__cosval * v515.__cosval);
              v522 = v699 + 1;
              v523 = v698 + 1;
              v524 = 0.0;
              v525 = v714;
              v526 = v231;
              do
              {
                if (!*v525++)
                {
                  if (v231)
                  {
                    v527 = *v526;
                  }

                  else
                  {
                    v527 = 1.0;
                  }

                  v528 = *(v522 - 1);
                  v529 = *v522;
                  v530 = *(v523 - 1) - v826;
                  v531 = *v523 - v816;
                  v532 = v523[1] - v806;
                  v533 = v797 * v531 + v810 * v530 + v794 * v532;
                  v534 = v792 * v531 + v801 * v530 + v788 * v532;
                  v535 = v786 * v531 + v790 * v530 + v784 * v532;
                  v536 = atan2f(v534, v533);
                  v537 = atanf(v535 / sqrtf((v534 * v534) + (v533 * v533)));
                  v538 = ((v528 - v536) + 3.14159265 + ((((v528 - v536) + 3.14159265) * 0.159154943) - ((v528 - v536) + 3.14159265 < 0.0)) * -6.28318531 + -3.14159265) * v527;
                  v524 = v524 + (((v527 * (v529 - v537)) * (v527 * (v529 - v537))) + (v538 * v538));
                  ++v517;
                }

                ++v526;
                v523 += 3;
                v522 += 2;
                --v335;
              }

              while (v335);
              v337 = v524 / v517;
              v335 = v713;
              if (v337 < v781)
              {
                goto LABEL_358;
              }

LABEL_402:
              v540 = sqrtf(v781);
              v541 = v712;
              if (v540 <= v711 || v712 >= 0x12)
              {
                v540 = v711;
              }

              v817 = v540;
              if (v335 < 1)
              {
                goto LABEL_430;
              }

              v827 = v540 * v540;
              v543 = 1;
              v545 = v699 + 1;
              v544 = v698 + 1;
              v546 = 0.0;
              v547 = v335;
              v548 = v714;
              v549 = v231;
              do
              {
                if (v231)
                {
                  v550 = *v549;
                }

                else
                {
                  v550 = 1.0;
                }

                v551 = *v548;
                v553 = *(v545 - 1);
                v552 = *v545;
                v554 = *(v544 - 1) - v731;
                v555 = *v544 - v730;
                v556 = v544[1] - v729;
                v557 = sinval * v555 + cosval * v554 + v733 * v556;
                v558 = v735 * v555 + v737 * v554 + v738 * v556;
                v559 = v734 * v555 + v736 * v554 + v732 * v556;
                v560 = atan2f(v558, v557);
                v561 = atanf(v559 / sqrtf((v558 * v558) + (v557 * v557)));
                v562 = ((v553 - v560) + 3.14159265 + ((((v553 - v560) + 3.14159265) * 0.159154943) - ((v553 - v560) + 3.14159265 < 0.0)) * -6.28318531 + -3.14159265) * v550;
                v563 = ((v550 * (v552 - v561)) * (v550 * (v552 - v561))) + (v562 * v562);
                v564 = v563 > v827;
                *v548 = v564;
                v565 = 1.0;
                if (v563 > v827)
                {
                  v565 = 0.0;
                }

                if (v551 != v564)
                {
                  v543 = 0;
                }

                if (v231 && v563 <= v827)
                {
                  v565 = *v549;
                }

                ++v549;
                v546 = v546 + v565;
                ++v548;
                v545 += 2;
                v544 += 3;
                --v547;
              }

              while (v547);
              v104 = 0.5;
              v541 = v712;
              v335 = v713;
              if (v817 == v711 && v543 != 0)
              {
                break;
              }

LABEL_431:
              if (v546 >= v710)
              {
                v334 = v541 + 1;
                if (v334 != 20)
                {
                  continue;
                }
              }

              break;
            }

            *&v833 = cosval;
            *(&v833 + 1) = v737;
            *&v834 = v736;
            *(&v834 + 1) = sinval;
            *&v835 = v735;
            *(&v835 + 1) = v734;
            *&v836 = v733;
            *(&v836 + 1) = v738;
            *&v837 = v732;
            *(&v837 + 1) = v731;
            *&v838 = v730;
            *(&v838 + 1) = v729;
            free(v714);
            v30 = a11;
            LODWORD(v568) = *(a11 + 52);
            v102 = v690;
            v101 = v691;
            v103 = v689;
            if (v546 <= *(v705 + 104 * v568))
            {
              v78 = v692;
              goto LABEL_444;
            }

            v569 = *&v837;
            v78 = v692;
            if (v569 > cosf(*(a11 + 32)))
            {
              break;
            }

LABEL_444:
            v226 = v707;
            v232 = v703;
            v230 = v704 + 1;
            if (v830 <= v704 + 1)
            {
              goto LABEL_462;
            }
          }

          if (v568 < 1)
          {
LABEL_451:
            v599 = (a12 - 104 + 104 * v568);
            v600 = v836;
            v599[2] = v835;
            v599[3] = v600;
            v601 = v838;
            v599[4] = v837;
            v599[5] = v601;
            v602 = v834;
            *v599 = v833;
            v599[1] = v602;
            LODWORD(v599) = *(a11 + 52);
            *(v705 + 104 * v599) = v546;
            if (v599 > 1)
            {
              v603 = (a12 + 104);
              v604 = 2;
              v605 = 1;
              do
              {
                v606 = v603;
                v607 = v604;
                do
                {
                  if (*(v606 - 2) >= v606[24])
                  {
                    break;
                  }

                  v608 = *(v606 + 4);
                  v609 = *(v606 + 5);
                  v610 = *(v606 + 2);
                  v842 = *(v606 + 3);
                  v843 = v608;
                  v844 = v609;
                  *&v845 = *(v606 + 12);
                  v611 = *(v606 + 1);
                  v839 = *v606;
                  v840 = v611;
                  v841 = v610;
                  v612 = *(v606 - 22);
                  *v606 = *(v606 - 26);
                  *(v606 + 1) = v612;
                  v613 = *(v606 - 18);
                  *(v606 + 12) = *(v606 - 1);
                  v614 = *(v606 - 6);
                  *(v606 + 4) = *(v606 - 10);
                  *(v606 + 5) = v614;
                  v615 = *(v606 - 14);
                  *(v606 + 2) = v613;
                  *(v606 + 3) = v615;
                  v616 = v839;
                  v617 = v840;
                  *(v606 - 18) = v841;
                  *(v606 - 22) = v617;
                  *(v606 - 26) = v616;
                  v618 = v842;
                  v619 = v843;
                  v620 = v844;
                  *(v606 - 1) = v845;
                  *(v606 - 6) = v620;
                  *(v606 - 10) = v619;
                  *(v606 - 14) = v618;
                  v606 -= 26;
                  --v607;
                }

                while (v607 > 1);
                ++v605;
                ++v604;
                v603 = (v603 + 104);
              }

              while (*(a11 + 52) > v605);
            }
          }

          else
          {
            v570 = 0;
            v571 = a12;
            while (1)
            {
              v572 = (*(&v837 + 1) - *(v571 + 72)) * (*(&v837 + 1) - *(v571 + 72)) + 0.0;
              v573 = v572 + (*&v838 - *(v571 + 80)) * (*&v838 - *(v571 + 80));
              v574 = v573 + (*(&v838 + 1) - *(v571 + 88)) * (*(&v838 + 1) - *(v571 + 88));
              v575 = sqrtf(v574);
              v576 = g_coords_angle_diff(&v833, v571);
              if (v575 < *(a11 + 44))
              {
                v577 = v576;
                if (*(a11 + 48) > v577)
                {
                  break;
                }
              }

              ++v570;
              v568 = *(a11 + 52);
              v571 += 104;
              if (v570 >= v568)
              {
                goto LABEL_451;
              }
            }

            if (*(v571 + 96) <= v546)
            {
              v578 = v834;
              *v571 = v833;
              *(v571 + 16) = v578;
              v579 = v838;
              *(v571 + 64) = v837;
              *(v571 + 80) = v579;
              v580 = v836;
              *(v571 + 32) = v835;
              *(v571 + 48) = v580;
              *(v571 + 96) = v546;
              if (*(a11 + 52) >= 2)
              {
                v581 = (a12 + 104);
                v582 = 2;
                v583 = 1;
                do
                {
                  v584 = v581;
                  v585 = v582;
                  do
                  {
                    if (*(v584 - 2) >= v584[24])
                    {
                      break;
                    }

                    v586 = *(v584 + 4);
                    v587 = *(v584 + 5);
                    v588 = *(v584 + 2);
                    v842 = *(v584 + 3);
                    v843 = v586;
                    v844 = v587;
                    *&v845 = *(v584 + 12);
                    v589 = *(v584 + 1);
                    v839 = *v584;
                    v840 = v589;
                    v841 = v588;
                    v590 = *(v584 - 22);
                    *v584 = *(v584 - 26);
                    *(v584 + 1) = v590;
                    v591 = *(v584 - 18);
                    *(v584 + 12) = *(v584 - 1);
                    v592 = *(v584 - 6);
                    *(v584 + 4) = *(v584 - 10);
                    *(v584 + 5) = v592;
                    v593 = *(v584 - 14);
                    *(v584 + 2) = v591;
                    *(v584 + 3) = v593;
                    v594 = v839;
                    v595 = v840;
                    *(v584 - 18) = v841;
                    *(v584 - 22) = v595;
                    *(v584 - 26) = v594;
                    v596 = v842;
                    v597 = v843;
                    v598 = v844;
                    *(v584 - 1) = v845;
                    *(v584 - 6) = v598;
                    *(v584 - 10) = v597;
                    *(v584 - 14) = v596;
                    v584 -= 26;
                    --v585;
                  }

                  while (v585 > 1);
                  ++v583;
                  ++v582;
                  v581 = (v581 + 104);
                }

                while (*(a11 + 52) > v583);
              }
            }
          }

          if (*(a12 + 96) >= (*(a11 + 40) * 32.0))
          {
            break;
          }

          v226 = v707;
          v232 = v703;
          v230 = v704 + 1;
        }

        while (v830 > v704 + 1);
LABEL_462:
        free(v698);
        free(v699);
        free(v231);
        v73.n128_u32[0] = *(v705 + 104 * *(v30 + 52));
        if ((v687 / v73.n128_f32[0]) < 0.98 && *(a12 + 96) < (*(v30 + 40) * 32.0))
        {
          v621 = v830;
          if (v830 < 1)
          {
            v622 = 0;
          }

          else
          {
            v622 = 0;
            v623 = v831;
            v624 = v831;
            v625 = v830;
            do
            {
              if (*(*v624 + 32) > v73.n128_f32[0])
              {
                v623[v622++] = *v624;
              }

              v624 += 8;
              --v625;
            }

            while (v625);
          }

          if (v622 <= v832)
          {
            v628 = v622 - v621;
            if (v622 <= v621)
            {
              goto LABEL_479;
            }
          }

          else
          {
            v626 = 32;
            if (v832)
            {
              v626 = 2 * v832;
            }

            if (v626 <= v622)
            {
              v627 = v622;
            }

            else
            {
              v627 = v626;
            }

            if (v627)
            {
              v831 = malloc_type_realloc(v831, 8 * v627, 0x2004093837F09uLL);
            }

            v832 = v627;
            v628 = v622 - v621;
            if (v622 <= v621)
            {
LABEL_479:
              v830 = v622;
              if (v696 < v54[3].i32[1])
              {
                goto LABEL_483;
              }

              goto LABEL_61;
            }
          }

          bzero(v831 + 8 * v621, 8 * v628);
          v830 = v622;
          if (v696 < v54[3].i32[1])
          {
LABEL_483:
            deactivate_tree(v54[4].u32[0], *v54);
            if (v622 < 1)
            {
              remove_inactive_nodes(v54, *v54);
            }

            else
            {
              v629 = 0;
              v630 = v831;
              do
              {
                octnode_insert(v54, *v54, *v630[v629], v630[v629][1], v630[v629][2], v630[v629][3]);
                ++v629;
              }

              while (v622 != v629);
              remove_inactive_nodes(v54, *v54);
              v632 = 0;
              v634 = v718;
              v633 = v719.n128_f32[0];
              v635 = v741;
              v798 = v622;
              v795 = v630;
              do
              {
                v636 = 0;
                v802 = v632;
                v637 = v630[v632];
                v638 = 1;
                do
                {
                  v639 = 0;
                  v807 = v638;
                  v811 = v636;
                  v818 = v636;
                  v640 = 1;
                  do
                  {
                    v820 = v640;
                    v641 = 2 * v637[3];
                    v642 = vorr_s8(vadd_s32(*(v637 + 1), *(v637 + 1)), __PAIR64__(v639, v818));
                    v73.n128_u64[0] = vmul_n_f32(vadd_f32(vcvt_f32_s32(v642), 0x3F0000003F000000), (1 << (v54[3].i32[1] + ~*v637)));
                    *&v631 = vmla_n_f32(v54[1], v73.n128_u64[0], COERCE_FLOAT(*(&v54[2] + 4)));
                    HIDWORD(v643) = HIDWORD(v716);
                    v644 = *(&v631 + 1);
                    v73.n128_f32[0] = ((*(&v631 + 1) - v716->f32[1]) * (*(&v631 + 1) - v716->f32[1])) + ((*&v631 - v716->f32[0]) * (*&v631 - v716->f32[0]));
                    v645 = v642.i32[1];
                    v646 = v642.i32[0];
                    if (v73.n128_f32[0] <= v101 && v73.n128_f32[0] >= v102)
                    {
                      v648 = v715;
                      v649 = (a9 + 16);
                      v650 = a10;
                      v651 = v717;
                      v828 = v631;
                      do
                      {
                        v652 = *(v648 - 1);
                        v73.n128_u64[0] = vcvt_s32_f32(vrndm_f32(vmul_f32(vsub_f32(*&v631, vmla_f32(*v16, 0x3F0000003F000000, v635)), vdiv_f32(vcvt_f32_s32(v652), v651))));
                        v653 = v73.n128_u32[0];
                        if ((v73.n128_u32[0] & 0x80000000) == 0)
                        {
                          v654 = vcgt_s32(v652, v73.n128_u64[0]);
                          if (v654.i8[0] & 1) != 0 && (v73.n128_u32[1] & 0x80000000) == 0 && (v654.i8[4])
                          {
                            v73.n128_u32[0] = *(*(v648 - 2) + 4 * *v648 * v73.n128_u32[1] + 4 * v73.n128_u32[0]);
                            v655 = *(*(v649 - 2) + 4 * *v649 * v73.n128_u32[1] + 4 * v653);
                            v656 = v54[2].f32[0];
                            v657 = v54[3].f32[0];
                            if ((((v73.n128_f32[0] - v655) - v656) / v657) >> (v54[3].i8[4] - (*v637 + 1)) <= v641 && v641 <= (((v73.n128_f32[0] + v655) - v656) / v657) >> (v54[3].i8[4] - (*v637 + 1)))
                            {
                              octnode_insert(v54, *v54, *v637 + 1, v646, v645, v641);
                              v631 = v828;
                              v635 = v741;
                              v651 = v717;
                            }
                          }
                        }

                        v649 += 3;
                        v648 += 3;
                        --v650;
                      }

                      while (v650);
                      v659 = v54[2].f32[1];
                      v646 = v811 | (2 * v637[1]);
                      v645 = v639 | (2 * v637[2]);
                      v641 = 2 * v637[3];
                      v643 = (1 << (v54[3].i32[1] + ~*v637));
                      *&v631 = v54[1].f32[0] + (((v646 + v104) * v643) * v659);
                      v644 = v54[1].f32[1] + (((v645 + v104) * v643) * v659);
                      v73.n128_f32[0] = ((v644 - v716->f32[1]) * (v644 - v716->f32[1])) + ((*&v631 - v716->f32[0]) * (*&v631 - v716->f32[0]));
                      v634 = v718;
                      v633 = v719.n128_f32[0];
                    }

                    if (v73.n128_f32[0] <= v101 && v73.n128_f32[0] >= v102)
                    {
                      v661 = v715;
                      v662 = (a9 + 16);
                      v663 = a10;
                      v829 = v631;
                      do
                      {
                        v664 = *(v661 - 2);
                        LODWORD(v643) = vcvtms_s32_f32((*&v631 - (v16->f32[0] + (v635.f32[0] * v104))) * (v664 / v634));
                        if ((v643 & 0x80000000) == 0 && v664 > v643)
                        {
                          v665 = *(v661 - 1);
                          LODWORD(v664) = vcvtms_s32_f32((v644 - (v16->f32[1] + (v103 * v104))) * (v665 / v633));
                          if ((v664 & 0x80000000) == 0 && v665 > v664)
                          {
                            v666 = *(*(v661 - 2) + 4 * *v661 * v664 + 4 * v643);
                            v667 = *(*(v662 - 2) + 4 * *v662 * v664 + 4 * v643);
                            v668 = v54[2].f32[0];
                            v669 = v54[3].f32[0];
                            v643 = ((((v666 - v667) - v668) / v669) >> (v54[3].i8[4] - (*v637 + 1)));
                            if (v643 <= (v641 | 1) && v641 < (((v666 + v667) - v668) / v669) >> (v54[3].i8[4] - (*v637 + 1)))
                            {
                              octnode_insert(v54, *v54, *v637 + 1, v646, v645, v641 | 1);
                              v631 = v829;
                              v635 = v741;
                              v634 = v718;
                              v633 = v719.n128_f32[0];
                            }
                          }
                        }

                        v662 += 3;
                        v661 += 3;
                        --v663;
                      }

                      while (v663);
                    }

                    v640 = 0;
                    v639 = 1;
                  }

                  while ((v820 & 1) != 0);
                  v638 = 0;
                  v636 = 1;
                }

                while ((v807 & 1) != 0);
                v632 = v802 + 1;
                v630 = v795;
              }

              while (v802 + 1 != v798);
            }
          }

LABEL_61:
          v100 = v54[3].i32[1];
          v157 = v696++ < v100;
          v30 = a11;
          v78 = v692;
          if (v157)
          {
            continue;
          }
        }

LABEL_526:
        v671 = *v54;
        if (*(v30 + 56))
        {
          *(v30 + 56) = mem_usage(v54, *v54);
        }

        otree_free_children(v671);
        free(*v54);
        if (*&v54[5] >= 1)
        {
          v672 = 0;
          do
          {
            free(*(*&v54[6] + 8 * v672++));
          }

          while (v672 < *&v54[5]);
        }

        free(*&v54[6]);
        free(v54);
        free(v78);
        free(v831);
        free(ptr);
        break;
      }
    }
  }

  v673 = *(v30 + 52);
  if (v673 < 1)
  {
    return 0;
  }

  v674 = *(v30 + 36) * 32.0;
  if (v673 == 1)
  {
    v675 = 0;
    LODWORD(result) = 0;
LABEL_543:
    v684 = v673 - v675;
    v685 = (a12 + 104 * v675 + 96);
    do
    {
      v686 = *v685;
      v685 += 26;
      if (v686 < v674)
      {
        result = result;
      }

      else
      {
        result = (result + 1);
      }

      --v684;
    }

    while (v684);
    return result;
  }

  v677 = 0;
  v678 = 0;
  v675 = v673 & 0x7FFFFFFE;
  v679 = (a12 + 200);
  v680 = v675;
  do
  {
    v681 = *(v679 - 26);
    v682 = *v679;
    v679 += 52;
    v683 = v682;
    if (v681 >= v674)
    {
      ++v677;
    }

    if (v683 >= v674)
    {
      ++v678;
    }

    v680 -= 2;
  }

  while (v680);
  result = (v678 + v677);
  if (v675 != v673)
  {
    goto LABEL_543;
  }

  return result;
}