void sub_1AF33095C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8E18();
    }

    objc_end_catch();
    JUMPOUT(0x1AF330850);
  }

  _Unwind_Resume(exception_object);
}

void VFXSetPerformanceStatisticsEnabled(int a1)
{
  if (qword_1ED739AE0 != -1)
  {
    sub_1AFDF8EE8();
  }

  if (byte_1EB658CD8 != a1)
  {
    byte_1EB658CD8 = a1;
    if (a1)
    {
      if (qword_1EB658D00 != -1)
      {
        sub_1AFDF8EFC();
      }
    }
  }
}

uint64_t sub_1AF332204()
{
  if (qword_1ED739AE0 != -1)
  {
    sub_1AFDF8EE8();
  }

  return byte_1EB658CD8;
}

void sub_1AF33223C()
{
  v0 = getenv("VFX_ENABLE_COLLECTION");
  if (v0 && !strcmp(v0, "YES"))
  {
    byte_1EB658CD8 = 1;
    if (qword_1EB658D00 != -1)
    {
      sub_1AFDF8EFC();
    }
  }
}

float32_t sub_1AF332294(uint64_t a1, _BYTE *a2, int a3)
{
  *a2 = 2;
  v3 = *(a1 + 328);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0 / v3;
  }

  v5 = &a2[52 * a3];
  v5->i32[1] = *(a1 + 4);
  v5->i32[2] = vcvtas_u32_f32(v4);
  v6.f64[0] = *(a1 + 104);
  v7 = *(a1 + 96);
  v5->f32[3] = v7;
  v8.f64[0] = *(a1 + 128) + *(a1 + 136) + *(a1 + 144);
  v8.f64[1] = *(a1 + 152);
  v6.f64[1] = *(a1 + 168);
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v6), *(a1 + 184));
  v5[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 112)), v8);
  v5[2] = v9;
  result = *(a1 + 288);
  v5[3].f32[1] = result;
  v5[3].i32[0] = *(a1 + 280);
  a2[1] = a3;
  return result;
}

void sub_1AF332334(uint64_t a1)
{
  if (qword_1EB658CE0 != -1)
  {
    sub_1AFDF8F10();
  }

  os_unfair_lock_lock(&dword_1EB658CE8);
  sub_1AF332294(a1, &_vfxPerformanceData, (byte_1EB6C2C5D & 1) == 0);

  os_unfair_lock_unlock(&dword_1EB658CE8);
}

void VFXGetPerformanceStatistics(_OWORD *a1@<X8>)
{
  if (qword_1EB658CE0 != -1)
  {
    sub_1AFDF8F24();
  }

  os_unfair_lock_lock(&dword_1EB658CE8);
  v2 = unk_1EB6C2CAC;
  a1[4] = xmmword_1EB6C2C9C;
  a1[5] = v2;
  *(a1 + 92) = unk_1EB6C2CB8;
  v3 = unk_1EB6C2C6C;
  *a1 = _vfxPerformanceData;
  a1[1] = v3;
  v4 = unk_1EB6C2C8C;
  a1[2] = xmmword_1EB6C2C7C;
  a1[3] = v4;

  os_unfair_lock_unlock(&dword_1EB658CE8);
}

void *VFXGetPerformanceStatisticsAsPlist()
{
  memset(v3, 0, 108);
  VFXGetPerformanceStatistics(v3);
  return sub_1AF33248C(v3, BYTE1(v3[0]), v0, v1);
}

void *sub_1AF33248C(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v7 = &a1[52 * v4];
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v8, *(v7 + 2), v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, @"vfx.fps");
  v13 = *(v7 + 1);
  v12 = v7 + 4;
  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v14, v13, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v17, v16, @"vfx.primcnt");
  LODWORD(v18) = v12[2];
  v22 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, v21, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v22, @"vfx.frmtime");
  LODWORD(v24) = v12[3];
  v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v25, v26, v27, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v29, v28, @"vfx.phytime");
  LODWORD(v30) = v12[4];
  v34 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v31, v32, v33, v30);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v35, v34, @"vfx.vfxCoreTime");
  LODWORD(v36) = v12[5];
  v40 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v37, v38, v39, v36);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v41, v40, @"vfx.animtime");
  LODWORD(v42) = v12[8];
  v46 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v43, v44, v45, v42);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"vfx.clientTime");
  LODWORD(v48) = v12[6];
  v52 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v49, v50, v51, v48);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v52, @"vfx.rendertime");
  LODWORD(v54) = v12[7];
  v58 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v55, v56, v57, v54);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v59, v58, @"vfx.consttime");
  LODWORD(v60) = v12[9];
  v64 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, v63, v60);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v65, v64, @"vfx.cpuidletime");
  LODWORD(v66) = v12[10];
  v70 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v67, v68, v69, v66);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v71, v70, @"vfx.cawaittime");
  if (*a1 < 2u)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v72, &unk_1F25D47A8, @"vfx.shaderCompilationTime");
    objc_msgSend_setObject_forKeyedSubscript_(v6, v82, &unk_1F25D47A8, @"vfx.shaderGenerationCount");
  }

  else
  {
    LODWORD(v75) = v12[12];
    v76 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v72, v73, v74, v75);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v77, v76, @"vfx.shaderCompilationTime");
    v80 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v78, v12[11], v79);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v81, v80, @"vfx.shaderGenerationCount");
  }

  v83 = sub_1AF332728();
  v86 = objc_msgSend_objectForKeyedSubscript_(v83, v84, @"Device Utilization %", v85);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v87, v86, @"vfx.deviceutil");
  v90 = objc_msgSend_objectForKeyedSubscript_(v83, v88, @"Renderer Utilization %", v89);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v91, v90, @"vfx.rendererutil");
  v94 = objc_msgSend_objectForKeyedSubscript_(v83, v92, @"Tiler Utilization %", v93);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v95, v94, @"vfx.tilerutil");

  return v6;
}

uint64_t sub_1AF332728()
{
  v3 = CACurrentMediaTime();
  if (v3 - *&qword_1EB636660 > 1.0)
  {
    v4 = dword_1EB658CEC;
    if (!dword_1EB658CEC)
    {
      existing = 0;
      v5 = *MEMORY[0x1E696CD60];
      v6 = IOServiceMatching("IOAcceleratorES");
      if (!IOServiceGetMatchingServices(v5, v6, &existing))
      {
        dword_1EB658CEC = IOIteratorNext(existing);
      }

      IOObjectRelease(existing);
      v4 = dword_1EB658CEC;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v4, @"PerformanceStatistics", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      if (qword_1EB658CF0)
      {
        CFRelease(qword_1EB658CF0);
      }

      qword_1EB658CF0 = v8;
    }

    qword_1EB636660 = *&v3;
  }

  return objc_msgSend_copy(qword_1EB658CF0, v0, v1, v2);
}

uint64_t _VFXStartCollectingPerformanceStatisticsForPid(int a1)
{
  v18 = a1;
  v1 = CSSymbolicatorCreateWithPid();
  v3 = v2;
  if (CSIsNull())
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x4012000000;
  v13 = sub_1AF3329E8;
  v14 = nullsub_189;
  v15 = "";
  v16 = 0;
  v17 = 0;
  CSSymbolicatorForeachSymbolWithMangledNameAtTime();
  v5 = v11[6];
  v6 = v11[7];
  if (CSIsNull() || (CSSymbolicatorGetTask(), (mapped_memory_cache_for_task = create_mapped_memory_cache_for_task()) == 0))
  {
    CSRelease();
    v4 = 0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ED73AAB0, memory_order_acquire) & 1) == 0)
    {
      sub_1AFDF8F38();
    }

    v19 = &v18;
    v8 = sub_1AF333280(qword_1ED73AAB8, &v18);
    v8[3] = v1;
    v8[4] = v3;
    v8[5] = v5;
    v8[6] = v6;
    v4 = 1;
    v8[7] = mapped_memory_cache_for_task;
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_1AF3329CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1AF3329E8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_1AF3329F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  return result;
}

uint64_t _VFXStopCollectingPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&qword_1ED73AAB0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF8F80();
  }

  sub_1AF3334C0(v3, qword_1ED73AAB8);
  v1 = sub_1AF33376C(v3, &v4);
  if (v1)
  {
    destroy_mapped_memory_cache();
    v1[5] = 0;
    v1[6] = 0;
    v1[7] = 0;
    CSRelease();
    v1[3] = 0;
    v1[4] = 0;
    sub_1AF145C50(v3, v1);
  }

  sub_1AF144AE4(v3);
  return 1;
}

uint64_t *_VFXGetPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&qword_1ED73AAB0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF8F80();
  }

  sub_1AF3334C0(v3, qword_1ED73AAB8);
  v1 = sub_1AF33376C(v3, &v4);
  if (v1)
  {
    if (CSSymbolGetRange())
    {
      clear_mapped_memory();
      v1 = 0;
      mapped_memory_read();
    }

    else
    {
      v1 = 0;
    }
  }

  sub_1AF144AE4(v3);
  return v1;
}

void sub_1AF332BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AF144AE4(va);
  _Unwind_Resume(a1);
}

void *_VFXGetCollectedShadersForPid()
{
  v66 = *MEMORY[0x1E69E9840];
  CSSymbolicatorCreateWithPid();
  if (CSIsNull())
  {
    v2 = &unk_1F25D47B8;
  }

  else
  {
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x4012000000;
    v64[3] = sub_1AF3329E8;
    v64[4] = nullsub_189;
    v64[5] = "";
    v64[6] = 0;
    v64[7] = 0;
    v59 = MEMORY[0x1E69E9820];
    v60 = 3221225472;
    v61 = sub_1AF333234;
    v62 = &unk_1E7A7F220;
    v63 = v64;
    CSSymbolicatorForeachSymbolWithMangledNameAtTime();
    if (CSIsNull())
    {
      CSRelease();
      v2 = &unk_1F25D47E0;
    }

    else
    {
      CSSymbolicatorGetTask();
      if (create_mapped_memory_cache_for_task())
      {
        if (CSSymbolGetRange())
        {
          clear_mapped_memory();
          v58 = 0;
          v2 = &unk_1F25D4858;
          mapped_memory_read();
        }

        else
        {
          v2 = &unk_1F25D4830;
        }
      }

      else
      {
        CSRelease();
        v2 = &unk_1F25D4808;
      }
    }

    _Block_object_dispose(v64, 8);
  }

  v53 = v2;
  if (objc_msgSend_valueForKey_(v2, v0, @"containerPath", v1))
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4, v5);
    v10 = objc_msgSend_temporaryDirectory(v6, v7, v8, v9);
    v13 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"VFXShaderCache", v12);
    v17 = objc_msgSend_path(v13, v14, v15, v16);
    v53 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v18, v19, v20);
    v52 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v21, v22, v23);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v25 = objc_msgSend_contentsOfDirectoryAtPath_error_(v52, v24, v17, 0);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v54, v65, 16);
    if (v29)
    {
      v30 = *v55;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v54 + 1) + 8 * i);
          if (objc_msgSend_hasPrefix_(v32, v27, @"commonProfile_", v28))
          {
            v34 = objc_msgSend_pathExtension(v32, v27, v33, v28);
            if (objc_msgSend_isEqualToString_(v34, v35, @"metal", v36))
            {
              v37 = objc_msgSend_stringByAppendingPathComponent_(v17, v27, v32, v28);
              v39 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x1E696AEC0], v38, v37, 4, 0);
              v42 = objc_msgSend_substringFromIndex_(v32, v40, 14, v41);
              v46 = objc_msgSend_stringByDeletingPathExtension(v42, v43, v44, v45);
              if (v39)
              {
                v28 = v46;
                if (v46)
                {
                  objc_msgSend_setValue_forKey_(v53, v27, v39, v46);
                  v49 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v47, v37, v48);
                  objc_msgSend_removeItemAtURL_error_(v52, v50, v49, 0);
                }
              }
            }
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v54, v65, 16);
      }

      while (v29);
    }
  }

  return v53;
}

void sub_1AF333010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VFXGetShaderCollectionOutputURL(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v8 = objc_msgSend_temporaryDirectory(v4, v5, v6, v7);

  return objc_msgSend_URLByAppendingPathComponent_(v8, v9, @"VFXShaderCache", v10);
}

CFTypeRef VFXSetShaderCollectionEnabled(CFTypeRef result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (byte_1EB658CF8 != result)
  {
    byte_1EB658CF8 = result;
    if (result)
    {
      v26[3] = v4;
      v26[4] = v5;
      v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
      v10 = objc_msgSend_temporaryDirectory(v6, v7, v8, v9);
      v13 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"VFXShaderCache", v12);
      v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15, v16);
      v21 = objc_msgSend_path(v13, v18, v19, v20);
      if (objc_msgSend_fileExistsAtPath_(v17, v22, v21, v23))
      {
        objc_msgSend_removeItemAtURL_error_(v17, v24, v13, 0);
      }

      v26[0] = 0;
      if ((objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v17, v24, v13, 1, 0, v26) & 1) == 0)
      {
        v25 = sub_1AF0D5194();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF8FE0(v13, v26, v25);
        }

        v13 = 0;
      }

      return sub_1AF28A34C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF333168()
{
  if (byte_1EB658CF8)
  {
    v0 = 1;
  }

  else
  {
    if (qword_1ED737C00 != -1)
    {
      sub_1AFDF906C();
    }

    v0 = byte_1ED734620;
  }

  return v0 & 1;
}

uint64_t sub_1AF3331B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, a3, a4);
  result = objc_msgSend_BOOLForKey_(v4, v5, @"com.apple.vfx.traceResources", v6);
  byte_1ED734620 = result;
  return result;
}

char *sub_1AF3331EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v8 = objc_msgSend_temporaryDirectory(v4, v5, v6, v7);
  v12 = objc_msgSend_path(v8, v9, v10, v11);
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v12, v13, v14, v15);
  v20 = objc_msgSend_UTF8String(PathComponent, v17, v18, v19);
  result = strncpy(byte_1EB6C2B59, v20, 0x100uLL);
  result[256] = 0;
  return result;
}

uint64_t sub_1AF333234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  return result;
}

uint64_t *sub_1AF333280(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1AF3334C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1AF14505C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AF333538(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_1AF333538(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_1AF33376C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF333820(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_1AF332AF4, a2, a3);
}

double sub_1AF333840()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 40) = 1065353216;
  return result;
}

uint64_t sub_1AF333A9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  sub_1AF1C5A68(v5, *(*(a1 + 32) + 200));
  sub_1AF1C5C98(v5, *(*(a1 + 32) + 176));
  sub_1AF1C584C(v5, *(*(a1 + 32) + 180));
  sub_1AF1C59B4(v5, *(*(a1 + 32) + 184));
  sub_1AF1C5BF8(v5, *(*(a1 + 32) + 192));
  sub_1AF1C5900(v5, *(*(a1 + 32) + 188));
  sub_1AF1C5EB0(v5, *(*(a1 + 32) + 228));
  sub_1AF1C5F04(v5, *(*(a1 + 32) + 232));
  sub_1AF1C5DE8(v5, *(*(a1 + 32) + 208));
  sub_1AF1C5E4C(v5, *(*(a1 + 32) + 216));
  sub_1AF1C5FAC(v5, *(*(a1 + 32) + 236));
  sub_1AF1C5FC8(v5, *(*(a1 + 32) + 240), *(*(a1 + 32) + 248), *(*(a1 + 32) + 256), *(*(a1 + 32) + 264));
  sub_1AF1C5F58(v5, *(*(a1 + 32) + 224));
  v6 = *(*(a1 + 32) + 272);

  return sub_1AF1C6100(v5, v6);
}

uint64_t sub_1AF334190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C6100(v5, v6);
}

void sub_1AF3342EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C584C(v5, v6);
}

void sub_1AF334440(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C5900(v5, v6);
}

void sub_1AF33459C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C59B4(v5, v6);
}

uint64_t sub_1AF3346E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C5C98(v5, v6);
}

void sub_1AF33482C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C5A68(v5, v6);
}

uint64_t sub_1AF3349A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(*(a1 + 32) + 208);

  return sub_1AF1C5DE8(v5, v6);
}

uint64_t sub_1AF334AF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C5F58(v5, v6);
}

uint64_t sub_1AF334D9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C5E4C(v5, v6);
}

uint64_t sub_1AF334F80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  sub_1AF1C5FAC(v5, *(a1 + 40));
  v9 = objc_msgSend_modelRef(*(a1 + 32), v6, v7, v8);
  v10 = *(*(a1 + 32) + 240);
  v11 = *(*(a1 + 32) + 248);
  v12 = *(*(a1 + 32) + 256);
  v13 = *(*(a1 + 32) + 264);

  return sub_1AF1C5FC8(v9, v10, v11, v12, v13);
}

uint64_t sub_1AF335060(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = MEMORY[0x1E697A058];
      return *v1;
    }

    if (a1 == 3)
    {
      v1 = MEMORY[0x1E697A060];
      return *v1;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = MEMORY[0x1E697A068];
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = MEMORY[0x1E697A070];
      return *v1;
    }
  }

  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9080(v2);
  }

  return 0;
}

uint64_t sub_1AF33529C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C5F04(v5, v6);
}

uint64_t sub_1AF335358(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = MEMORY[0x1E6979578];
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = MEMORY[0x1E6979570];
      return *v1;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v1 = MEMORY[0x1E6979580];
        return *v1;
      case 3:
        v1 = MEMORY[0x1E6979560];
        return *v1;
      case 4:
        v1 = MEMORY[0x1E6979568];
        return *v1;
    }
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9080(v3);
  }

  return 0;
}

uint64_t sub_1AF3355C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C5EB0(v5, v6);
}

uint64_t sub_1AF335734(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1C5BF8(v5, v6);
}

uint64_t sub_1AF336414(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    sub_1AF1CEA20(a2);
    (*(a1 + 16))(a1, 0.0);

    return sub_1AF1CEA9C(a2);
  }

  else
  {
    v6 = *(a1 + 16);
    a3.n128_u64[0] = 0;

    return v6(a3);
  }
}

uint64_t sub_1AF336580(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(a1, a2, a3, a4);
  if (!sub_1AF16D234(v4))
  {
    return 0;
  }

  return sub_1AF1C3FAC(v4);
}

uint64_t sub_1AF336964(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_immediateMode(VFXTransaction, a2, a3, a4))
  {
    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  else
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF91C8(a1);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
    (*(*(a1 + 32) + 16))();
    return objc_msgSend_setImmediateMode_(VFXTransaction, v10, 0, v11);
  }
}

uint64_t sub_1AF3371F8(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 8));

  return objc_msgSend_start_(_TtC3VFX14VFXGazeTracker, v1, Weak, v3);
}

void sub_1AF33724C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stop(*(a1 + 32), a2, a3, a4);
  v5 = *(a1 + 32);
}

uint64_t sub_1AF337288(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3, a4);
  Weak = objc_loadWeak((*(a1 + 32) + 8));

  return objc_msgSend_postNotificationName_object_(v5, v6, @"kCFXWorldDidUpdateEnabledTriggersNotification", Weak);
}

void sub_1AF337C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1AF3450A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF337CB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v141 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = objc_msgSend_newSceneWithURL_(qword_1EB658D30, a2, a2, a4);
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"VFX export preview %.02f", v6, 0x3FE51EB860000000);
  v8 = *(a1 + 56);
  v11 = objc_msgSend_dataWithString_(VFXUSKData_helper, v9, v7, v10);
  objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(v8, v12, @"customLayerData", @"creator", v11);
  v15 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v13, *(a1 + 24), v14);
  v17 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v16, *(a1 + 56), v15, qword_1EB658E30);
  v20 = objc_msgSend_dataWithString_(VFXUSKData_helper, v18, *(a1 + 8), v19);
  objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(v17, v21, @"assetInfo", @"name", v20);
  v24 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v22, @"component", v23);
  v27 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v25, v24, v26);
  objc_msgSend_setMetadataWithKey_value_(v17, v28, @"kind", v27);
  v29 = *(a1 + 56);
  v32 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v30, *(a1 + 8), v31);
  v35 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v33, v32, v34);
  objc_msgSend_setMetadataWithKey_value_(v29, v36, @"defaultPrim", v35);
  v37 = *(a1 + 56);
  v40 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v38, @"Y", v39);
  v43 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v41, v40, v42);
  objc_msgSend_setMetadataWithKey_value_(v37, v44, @"upAxis", v43);
  v48 = objc_msgSend_worldRef(*a1, v45, v46, v47);
  v49 = sub_1AF1CFBAC(v48);
  v50 = *(a1 + 56);
  v54 = objc_msgSend_dataWithDouble_(VFXUSKData_helper, v51, v52, v53, v49);
  objc_msgSend_setMetadataWithKey_value_(v50, v55, @"metersPerUnit", v54);
  sub_1AF338F60(a1, v56, v57, v58);
  sub_1AF339204(a1, v59, v60, v61);
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v65 = objc_msgSend_rootNode(*a1, v62, v63, v64);
  v69 = objc_msgSend_childNodes(v65, v66, v67, v68);
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v135, v140, 16);
  if (v71)
  {
    v74 = v71;
    v75 = *v136;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v136 != v75)
        {
          objc_enumerationMutation(v69);
        }

        sub_1AF3392F8(a1, *(*(&v135 + 1) + 8 * i), v72, v73);
      }

      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v77, &v135, v140, 16);
    }

    while (v74);
  }

  sub_1AF339464(a1);
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v81 = objc_msgSend_rootNode(*a1, v78, v79, v80);
  v85 = objc_msgSend_childNodes(v81, v82, v83, v84);
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v131, v139, 16);
  if (v87)
  {
    v91 = v87;
    v92 = *v132;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v132 != v92)
        {
          objc_enumerationMutation(v85);
        }

        v94 = *(*(&v131 + 1) + 8 * j);
        v95 = sub_1AF339A70(a1, v88, v89, v90);
        sub_1AF339578(a1, v94, v95, 0, 0);
      }

      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v131, v139, 16);
    }

    while (v91);
  }

  sub_1AF339ADC(a1, v88, v89, v90);
  sub_1AF339BD0((a1 + 440), v96);
  sub_1AF339C58(a1, v97, v98, v99);
  if (*(a1 + 472) > 0.0)
  {
    objc_msgSend_startTime(*a1, v100, v101, v102);
    v107 = v106 / *(a1 + 504) + 0.0;
    v108 = v107;
    if (vabdd_f64(v107, v108) >= 0.001)
    {
      if (1.0 - (v107 - v108) < 0.001)
      {
        v107 = v108 + 1.0;
      }
    }

    else
    {
      v107 = v107;
    }

    objc_msgSend_endTime(*a1, v103, v104, v105);
    v113 = v112 / *(a1 + 504) + 0.0;
    v114 = v113;
    if (vabdd_f64(v113, v114) >= 0.001)
    {
      if (1.0 - (v113 - v114) < 0.001)
      {
        v113 = v114 + 1.0;
      }
    }

    else
    {
      v113 = v113;
    }

    v115 = *(a1 + 464);
    if (v115 == -1.0 || v115 > v107)
    {
      *(a1 + 464) = v107;
      v115 = v107;
    }

    v116 = *(a1 + 472);
    if (v116 == -1.0 || v116 < v113)
    {
      *(a1 + 472) = v113;
    }

    v117 = *(a1 + 56);
    v118 = objc_msgSend_dataWithDouble_(VFXUSKData_helper, v109, v110, v111, v115);
    objc_msgSend_setMetadataWithKey_value_(v117, v119, @"startTimeCode", v118);
    v120 = *(a1 + 56);
    v124 = objc_msgSend_dataWithDouble_(VFXUSKData_helper, v121, v122, v123, *(a1 + 472));
    objc_msgSend_setMetadataWithKey_value_(v120, v125, @"endTimeCode", v124);
  }

  v126 = *(a1 + 480);
  if (v126 >= 1)
  {
    v127 = *(a1 + 56);
    v128 = objc_msgSend_dataWithInt_(VFXUSKData_helper, v100, v126, v102);
    objc_msgSend_setMetadataWithKey_value_(v127, v129, @"timeCodesPerSecond", v128);
  }

  return *(a1 + 56);
}

void sub_1AF338188()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/USDKit.framework/USDKit", 2);
  if (v0 || (v0 = dlopen("../SharedFrameworks/USDKit.framework/USDKit", 2)) != 0)
  {
    v1 = v0;
    qword_1EB658D10 = NSClassFromString(&cfstr_Uskobjectpath.isa);
    qword_1EB658D08 = NSClassFromString(&cfstr_Usktoken.isa);
    qword_1EB658D18 = NSClassFromString(&cfstr_Uskdata.isa);
    qword_1EB658D30 = NSClassFromString(&cfstr_Uskscene.isa);
    v2 = dlsym(v1, "USKDataTypeResourcePath");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    qword_1EB658D38 = v3;
    v4 = dlsym(v1, "USKDataTypeInt");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    qword_1EB658D40 = v5;
    v6 = dlsym(v1, "USKDataTypeBool");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    qword_1EB658D48 = v7;
    v8 = dlsym(v1, "USKDataTypeDouble3");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    qword_1EB658D50 = v9;
    v10 = dlsym(v1, "USKDataTypeDouble4x4");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    qword_1EB658D58 = v11;
    v12 = dlsym(v1, "USKDataTypeDouble4x4Array");
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    qword_1EB658D60 = v13;
    v14 = dlsym(v1, "USKDataTypeFloat");
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    qword_1EB658D68 = v15;
    v16 = dlsym(v1, "USKDataTypeFloat2");
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    qword_1EB658D70 = v17;
    v18 = dlsym(v1, "USKDataTypeFloat3");
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    qword_1EB658D78 = v19;
    v20 = dlsym(v1, "USKDataTypeFloat4");
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    qword_1EB658D80 = v21;
    v22 = dlsym(v1, "USKDataTypeFloat2Array");
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    qword_1EB658D88 = v23;
    v24 = dlsym(v1, "USKDataTypeFloat3Array");
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    qword_1EB658D90 = v25;
    v26 = dlsym(v1, "USKDataTypeFloatArray");
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    qword_1EB658D98 = v27;
    v28 = dlsym(v1, "USKDataTypeIntArray");
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    qword_1EB658DA0 = v29;
    v30 = dlsym(v1, "USKDataTypeObjectPath");
    if (v30)
    {
      v31 = *v30;
    }

    else
    {
      v31 = 0;
    }

    qword_1EB658DA8 = v31;
    v32 = dlsym(v1, "USKDataTypeObjectPathArray");
    if (v32)
    {
      v33 = *v32;
    }

    else
    {
      v33 = 0;
    }

    qword_1EB658DB0 = v33;
    v34 = dlsym(v1, "USKDataTypeQuatf");
    if (v34)
    {
      v35 = *v34;
    }

    else
    {
      v35 = 0;
    }

    qword_1EB658DB8 = v35;
    v36 = dlsym(v1, "USKDataTypeQuatfArray");
    if (v36)
    {
      v37 = *v36;
    }

    else
    {
      v37 = 0;
    }

    qword_1EB658DC0 = v37;
    v38 = dlsym(v1, "USKDataTypeStringArray");
    if (v38)
    {
      v39 = *v38;
    }

    else
    {
      v39 = 0;
    }

    qword_1EB658DC8 = v39;
    v40 = dlsym(v1, "USKDataTypeToken");
    if (v40)
    {
      v41 = *v40;
    }

    else
    {
      v41 = 0;
    }

    qword_1EB658DD0 = v41;
    v42 = dlsym(v1, "USKDataTypeTokenArray");
    if (v42)
    {
      v43 = *v42;
    }

    else
    {
      v43 = 0;
    }

    qword_1EB658DD8 = v43;
    v44 = dlsym(v1, "USKNodeTypeCamera");
    if (v44)
    {
      v45 = *v44;
    }

    else
    {
      v45 = 0;
    }

    qword_1EB658DE0 = v45;
    v46 = dlsym(v1, "USKNodeTypeMaterial");
    if (v46)
    {
      v47 = *v46;
    }

    else
    {
      v47 = 0;
    }

    qword_1EB658DE8 = v47;
    v48 = dlsym(v1, "USKNodeTypeMesh");
    if (v48)
    {
      v49 = *v48;
    }

    else
    {
      v49 = 0;
    }

    qword_1EB658DF0 = v49;
    v50 = dlsym(v1, "USKNodeTypeMeshGroup");
    if (v50)
    {
      v51 = *v50;
    }

    else
    {
      v51 = 0;
    }

    qword_1EB658DF8 = v51;
    v52 = dlsym(v1, "USKNodeTypeScope");
    if (v52)
    {
      v53 = *v52;
    }

    else
    {
      v53 = 0;
    }

    qword_1EB658E00 = v53;
    v54 = dlsym(v1, "USKNodeTypeShader");
    if (v54)
    {
      v55 = *v54;
    }

    else
    {
      v55 = 0;
    }

    qword_1EB658E08 = v55;
    v56 = dlsym(v1, "USKNodeTypeSkeletalAnimation");
    if (v56)
    {
      v57 = *v56;
    }

    else
    {
      v57 = 0;
    }

    qword_1EB658E10 = v57;
    v58 = dlsym(v1, "USKNodeTypeSkeleton");
    if (v58)
    {
      v59 = *v58;
    }

    else
    {
      v59 = 0;
    }

    qword_1EB658E18 = v59;
    v60 = dlsym(v1, "USKNodeTypeSkeletonRoot");
    if (v60)
    {
      v61 = *v60;
    }

    else
    {
      v61 = 0;
    }

    qword_1EB658E20 = v61;
    v62 = dlsym(v1, "USKNodeTypeBlendShape");
    if (v62)
    {
      v63 = *v62;
    }

    else
    {
      v63 = 0;
    }

    qword_1EB658E28 = v63;
    v64 = dlsym(v1, "USKNodeTypeTransform");
    if (v64)
    {
      v65 = *v64;
    }

    else
    {
      v65 = 0;
    }

    qword_1EB658E30 = v65;
    v66 = dlsym(v1, "USKRoleTypeColor");
    if (v66)
    {
      v67 = *v66;
    }

    else
    {
      v67 = 0;
    }

    qword_1EB658E38 = v67;
    v68 = dlsym(v1, "USKRoleTypeNone");
    if (v68)
    {
      v69 = *v68;
    }

    else
    {
      v69 = 0;
    }

    qword_1EB658E40 = v69;
    v70 = dlsym(v1, "USKRoleTypeNormal");
    if (v70)
    {
      v71 = *v70;
    }

    else
    {
      v71 = 0;
    }

    qword_1EB658E48 = v71;
    v72 = dlsym(v1, "USKRoleTypePoint");
    if (v72)
    {
      v73 = *v72;
    }

    else
    {
      v73 = 0;
    }

    qword_1EB658E50 = v73;
    v74 = dlsym(v1, "USKRoleTypeVector");
    if (v74)
    {
      v75 = *v74;
    }

    else
    {
      v75 = 0;
    }

    qword_1EB658E58 = v75;
    v76 = dlsym(v1, "USKRoleTypeTextureCoordinate");
    if (v76)
    {
      v77 = *v76;
    }

    else
    {
      v77 = 0;
    }

    qword_1EB658E60 = v77;
    v78 = dlsym(v1, "USKSchemaTypeBindingAPI");
    if (v78)
    {
      v79 = *v78;
    }

    else
    {
      v79 = 0;
    }

    qword_1EB658E68 = v79;
    byte_1EB658D28 = 1;
  }

  else
  {
    v80 = sub_1AF0D5194();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF925C(v80);
    }
  }
}

uint64_t sub_1AF338864(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 16) = a5;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 88) = objc_msgSend_setWithCapacity_(MEMORY[0x1E695DFA8], a2, 8, a4);
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 416) = a1 + 424;
  *(a1 + 392) = a1 + 400;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 468) = 0u;
  *(a1 + 488) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 496) = xmmword_1AFE47B40;
  v7 = sub_1AF338AE8(a3, v6);
  *(a1 + 8) = v7;
  *(a1 + 24) = objc_msgSend_stringByAppendingString_(@"/", v8, v7, v9);
  return a1;
}

void sub_1AF338A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char **a21)
{
  *(v21 - 88) = a1;
  sub_1AF338EFC(a20, *a21);
  _Unwind_Resume(*(v21 - 88));
}

uint64_t sub_1AF338AE8(void *a1, const char *a2)
{
  v22 = 0;
  v3 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"[^A-Za-z0-9]", 1, &v22);
  v7 = objc_msgSend_length(a1, v4, v5, v6);
  v9 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v3, v8, a1, 0, 0, v7, @"_");
  v13 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v10, v11, v12);
  v16 = objc_msgSend_characterAtIndex_(v9, v14, 0, v15);
  if (objc_msgSend_characterIsMember_(v13, v17, v16, v18))
  {
    return objc_msgSend_stringByAppendingString_(@"_", v19, v9, v20);
  }

  return v9;
}

uint64_t sub_1AF338BA4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B271C6B0](*v2, 0x1080C406BDE4C18);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_1AF338C1C(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        sub_1AF112128(v4 + 64, *(v4 + 72));
        sub_1AF112128(v4 + 32, *(v4 + 40));
        v5 = *(v4 + 8);
        if (v5)
        {
          *(v4 + 16) = v5;
          operator delete(v5);
        }

        MEMORY[0x1B271C6B0](v4, 0x10A0C402AA64608);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v6 = a1[3];
  for (i = a1[4]; v6 != i; ++v6)
  {
    v8 = *v6;
    if (*v6)
    {
      sub_1AF112128(v8 + 72, *(v8 + 80));
      sub_1AF112128(v8 + 48, *(v8 + 56));
      sub_1AF112128(v8 + 24, *(v8 + 32));
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x1B271C6B0](v8, 0x10A0C400C584343);
    }
  }

  sub_1AF112128((a1 + 6), a1[7]);
  v10 = a1[3];
  if (v10)
  {
    a1[4] = v10;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    a1[1] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_1AF338D50(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AF338D50(a1, *a2);
    sub_1AF338D50(a1, a2[1]);
    sub_1AF338DAC((a2 + 4));

    operator delete(a2);
  }
}

void sub_1AF338DAC(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1AF338DF4(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1AF338DF4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF338E48(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF338E48(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1AF338E98(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AF338E98(a1, *a2);
    sub_1AF338E98(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_1AF338EFC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AF338EFC(a1, *a2);
    sub_1AF338EFC(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1AF338F60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = objc_msgSend_rootNode(*a1, a2, a3, a4);
  v9 = objc_msgSend_childNodes(v5, v6, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v41, v45, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v9);
        }

        sub_1AF339E50(a1, *(*(&v41 + 1) + 8 * i), v13, v14);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v41, v45, 16);
    }

    while (v15);
  }

  sub_1AF33A13C(a1 + 344, v12, v13, v14);
  v22 = *(a1 + 368);
  v23 = *(a1 + 376);
  if (v22 != v23)
  {
    do
    {
      v24 = *v22;
      v25 = **v22;
      v26 = (*v22)[1];
      if (v25 == v26)
      {
LABEL_13:
        if (v25 != v26)
        {
          v27 = *v25;
          do
          {
            v40 = *v25;
            if (v27 != v40)
            {
              sub_1AF33AEA0(a1 + 248, &v40);
            }

            ++v25;
          }

          while (v25 != v26);
        }
      }

      else
      {
        while (sub_1AF33A3C0(*v25, v19, v20, v21))
        {
          if (++v25 == v26)
          {
            v25 = *v24;
            v26 = v24[1];
            goto LABEL_13;
          }
        }
      }

      ++v22;
    }

    while (v22 != v23);
    v22 = *(a1 + 368);
    v23 = *(a1 + 376);
  }

  if (v22 != v23)
  {
    v28 = (a1 + 280);
    do
    {
      v29 = *(a1 + 272);
      if (v29 != v28)
      {
        v30 = *v22;
        do
        {
          if (*(v29[5] + 56) == v30)
          {
            v34 = **v30;
            if (v34)
            {
              v35 = v29[4];
              v36 = objc_msgSend_parentNode(v34, v19, v20, v21);
              if (v36)
              {
                v37 = v36;
                do
                {
                  if (v35)
                  {
                    v38 = v35;
                    while (1)
                    {
                      v38 = objc_msgSend_parentNode(v38, v19, v20, v21);
                      if (!v38)
                      {
                        break;
                      }

                      if (v37 == v38)
                      {
                        v39 = objc_msgSend_rootNode(*a1, v19, v20, v21);
                        if (v39 != v37 && sub_1AF33A3C0(v37, v19, v20, v21))
                        {
                          v30[12] = v37;
                        }

                        goto LABEL_25;
                      }
                    }
                  }

                  v37 = objc_msgSend_parentNode(v37, v19, v20, v21);
                }

                while (v37);
              }
            }
          }

LABEL_25:
          v31 = v29[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v29[2];
              v33 = *v32 == v29;
              v29 = v32;
            }

            while (!v33);
          }

          v29 = v32;
        }

        while (v32 != v28);
      }

      ++v22;
    }

    while (v22 != v23);
    v22 = *(a1 + 368);
    v23 = *(a1 + 376);
  }

  while (v22 != v23)
  {
    v40 = sub_1AF33A418(*v22, v19, v20, v21);
    if (v40)
    {
      sub_1AF33AEA0(a1 + 96, &v40);
    }

    ++v22;
  }
}

uint64_t sub_1AF339204(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_rootNode(*a1, a2, a3, a4, 0);
  v9 = objc_msgSend_childNodes(v5, v6, v7, v8);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (result)
  {
    v14 = result;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v9);
        }

        sub_1AF33AFDC(a1, *(*(&v18 + 1) + 8 * v16++), v12, v13);
      }

      while (v14 != v16);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, &v18, v22, 16);
      v14 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF3392F8(double *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_animationKeys(a2, a2, a3, a4))
  {
    v9 = objc_msgSend_animationKeys(a2, v6, v7, v8);
    if (objc_msgSend_count(v9, v10, v11, v12))
    {
      v13 = objc_msgSend_animationKeys(a2, v6, v7, v8);
      v17 = objc_msgSend_count(v13, v14, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        while (1)
        {
          v20 = objc_msgSend_animationKeys(a2, v6, v7, v8);
          v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, v19, v22);
          v26 = objc_msgSend_animationPlayerForKey_(a2, v24, v23, v25);
          if (v26)
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_9;
          }
        }

        v27 = objc_msgSend_animation(v26, v6, v7, v8);
        v31 = objc_msgSend_caAnimation(v27, v28, v29, v30);
        sub_1AF33B1F8(a1, v31);
      }
    }
  }

LABEL_9:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = objc_msgSend_childNodes(a2, v6, v7, v8, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v39, v43, 16);
  if (result)
  {
    v35 = result;
    v36 = *v40;
    do
    {
      v37 = 0;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v32);
        }

        sub_1AF3392F8(a1, *(*(&v39 + 1) + 8 * v37++));
      }

      while (v35 != v37);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, &v39, v43, 16);
      v35 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF339464(uint64_t result)
{
  v1 = *(result + 504);
  if (v1 == 0.0)
  {
    *(result + 504) = 0x3FA5555555555555;
    v1 = 0.0416666667;
  }

  v2 = *(result + 496);
  if (v2 >= 0.0)
  {
    v3 = 1.0 / v1 + 0.0;
    v4 = v3;
    if (vabdd_f64(v3, v4) >= 0.001)
    {
      if (1.0 - (v3 - v4) < 0.001)
      {
        v3 = v4 + 1.0;
      }
    }

    else
    {
      v3 = v3;
    }

    *(result + 480) = (v3 + 0.5);
    v5 = *(result + 488) / v1 + 0.0;
    v6 = v5;
    if (vabdd_f64(v5, v6) >= 0.001)
    {
      if (1.0 - (v5 - v6) < 0.001)
      {
        v5 = v6 + 1.0;
      }
    }

    else
    {
      v5 = v5;
    }

    *(result + 464) = v5;
    v7 = v2 / v1 + 0.0;
    v8 = v7;
    if (vabdd_f64(v7, v8) >= 0.001)
    {
      if (1.0 - (v7 - v8) < 0.001)
      {
        v7 = v8 + 1.0;
      }
    }

    else
    {
      v7 = v7;
    }

    *(result + 472) = v7;
  }

  return result;
}

uint64_t sub_1AF339578(uint64_t result, void *a2, char *a3, void ***a4, uint64_t a5)
{
  v8 = a2;
  v9 = result;
  v98 = *MEMORY[0x1E69E9840];
  v96[0] = a2;
  v10 = *(result + 256);
  if (v10)
  {
    v11 = result + 256;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != result + 256 && *(v11 + 32) <= a2)
    {
      return result;
    }
  }

  v15 = sub_1AF33A89C(result + 344, a2);
  if (v15 && v15[16])
  {
    a3 = v15[16];
  }

  v17 = sub_1AF33B47C(v9, a3, v8, v16);
  v23 = objc_msgSend_stringByAppendingPathComponent_(a3, v18, v17, v19);
  for (i = v9[46]; i != v9[47]; ++i)
  {
    v25 = *i;
    if (***i == v8)
    {
      goto LABEL_17;
    }
  }

  v25 = 0;
LABEL_17:
  v29 = (a4 | objc_msgSend_skinner(v8, v20, v21, v22)) == 0;
  for (j = v9[46]; j != v9[47]; j += 8)
  {
    if (*(*j + 96) == v8)
    {
      v36 = qword_1EB658E20;
      v37 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v26, v23, v28);
      v34 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v38, v9[7], v37, v36);
      v35 = 0;
      a5 = 1;
      if (!v34)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }
  }

  if (v25)
  {
    v34 = sub_1AF33B600(v25, v9[7], v23, v28);
    v35 = 1;
    a4 = v25;
    if (!v34)
    {
      goto LABEL_59;
    }

    goto LABEL_44;
  }

  if (objc_msgSend_model(v8, v26, v27, v28))
  {
    if (!v29)
    {
      v45 = v9[38];
      v44 = v9[39];
      if (v45 >= v44)
      {
        v47 = v9[37];
        v48 = (v45 - v47) >> 4;
        v49 = v48 + 1;
        if ((v48 + 1) >> 60)
        {
          sub_1AF10A1D0();
        }

        v50 = v44 - v47;
        if (v50 >> 3 > v49)
        {
          v49 = v50 >> 3;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF0)
        {
          v51 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v49;
        }

        if (v51)
        {
          sub_1AF33C820((v9 + 37), v51);
        }

        v87 = (16 * v48);
        *v87 = v8;
        v87[1] = a4;
        v46 = 16 * v48 + 16;
        v88 = v9[37];
        v89 = v9[38] - v88;
        v90 = 16 * v48 - v89;
        memcpy(v87 - v89, v88, v89);
        v91 = v9[37];
        v9[37] = v90;
        v9[38] = v46;
        v9[39] = 0;
        if (v91)
        {
          operator delete(v91);
        }
      }

      else
      {
        *v45 = v8;
        v45[1] = a4;
        v46 = (v45 + 2);
      }

      v9[38] = v46;
      if ((a5 & 1) == 0)
      {
        a5 = 0;
        goto LABEL_59;
      }

      v34 = sub_1AF33B978(v9, v8, v23, v17);
      v96[2] = v96;
      v35 = 0;
      sub_1AF33AD00((v9 + 40), v96)[5] = v34;
      a5 = 1;
      v8 = v96[0];
      if (!v34)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    v34 = sub_1AF33B978(v9, v8, v23, v17);
    a4 = 0;
  }

  else
  {
    if (objc_msgSend_camera(v8, v31, v32, v33))
    {
      v42 = objc_msgSend_camera(v8, v39, v40, v41);
      v43 = sub_1AF33BAC0(v9, v8, v23, v42);
    }

    else
    {
      v52 = qword_1EB658E30;
      v53 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v39, v23, v41);
      v43 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v54, v9[7], v53, v52);
    }

    v34 = v43;
  }

  v35 = 0;
  if (!v34)
  {
    goto LABEL_59;
  }

LABEL_44:
  if ((objc_msgSend_isHidden(v8, v31, v32, v33) & 1) != 0 || (objc_msgSend_opacity(v96[0], v55, v56, v57), v60 == 0.0))
  {
    v61 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v55, v34, @"visibility", qword_1EB658DD0, qword_1EB658E40);
    v64 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v62, @"invisible", v63);
    objc_msgSend_setTokenValue_(v61, v65, v64, v66);
  }

  v67 = objc_msgSend_animationKeys(v96[0], v55, v58, v59);
  v70 = v96[0];
  if (v67)
  {
    v71 = objc_msgSend_animationKeys(v96[0], v68, v96[0], v69);
    v75 = objc_msgSend_count(v71, v72, v73, v74);
    v70 = v96[0];
    if (v75)
    {
      v77 = v9[13];
      if (!v77)
      {
        goto LABEL_57;
      }

      v78 = v9 + 13;
      do
      {
        v79 = *(v77 + 32);
        v13 = v79 >= v96[0];
        v80 = v79 < v96[0];
        if (v13)
        {
          v78 = v77;
        }

        v77 = *(v77 + 8 * v80);
      }

      while (v77);
      if (v78 == v9 + 13 || v96[0] < v78[4])
      {
LABEL_57:
        sub_1AF33BD2C(v9, v34, v96[0], v76);
        v70 = v96[0];
      }
    }
  }

  sub_1AF33BDE0(v9, v34, v70, v35);
  v8 = v96[0];
LABEL_59:
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v81 = objc_msgSend_childNodes(v8, v31, v32, v33, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v92, v97, 16);
  v83 = result;
  if (result)
  {
    v84 = *v93;
    do
    {
      v85 = 0;
      do
      {
        if (*v93 != v84)
        {
          objc_enumerationMutation(v81);
        }

        sub_1AF339578(v9, *(*(&v92 + 1) + 8 * v85++), v23, a4, a5);
      }

      while (v83 != v85);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v86, &v92, v97, 16);
      v83 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF339A70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (!result)
  {
    v6 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), a2, @"Geom", a4);
    *(a1 + 32) = v6;
    v9 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v7, v6, v8);
    objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v10, *(a1 + 56), v9, qword_1EB658E00);
    return *(a1 + 32);
  }

  return result;
}

uint64_t sub_1AF339ADC(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_rootNode(*a1, a2, a3, a4, 0);
  v9 = objc_msgSend_childNodes(v5, v6, v7, v8);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (result)
  {
    v14 = result;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v9);
        }

        sub_1AF342BF4(a1, *(*(&v18 + 1) + 8 * v16++), v12, v13);
      }

      while (v14 != v16);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, &v18, v22, 16);
      v14 = result;
    }

    while (result);
  }

  return result;
}

uint64_t **sub_1AF339BD0(uint64_t **result, const char *a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5)
      {
        v6 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, v5, @"blendShapes", qword_1EB658DD8, qword_1EB658E40);
        result = objc_msgSend_setTokenArray_(v6, v7, *(v4 + 24), v8);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1AF339C58(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v5 = a1[37];
  v6 = a1[38];
  if (v5 != v6)
  {
    v7 = a1 + 35;
    v8 = a1 + 41;
    do
    {
      v9 = *v5;
      v10 = v5[1];
      v30 = *v5;
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v22 = *v7;
        if (!*v7)
        {
          goto LABEL_29;
        }

        v23 = a1 + 35;
        do
        {
          v24 = v22[4];
          v20 = v24 >= v9;
          v25 = v24 < v9;
          if (v20)
          {
            v23 = v22;
          }

          v22 = v22[v25];
        }

        while (v22);
        if (v23 == v7)
        {
          goto LABEL_29;
        }

        if (v9 < v23[4])
        {
          goto LABEL_29;
        }

        v31 = &v30;
        v11 = sub_1AF33A710((a1 + 34), &v30)[5];
        v10 = *(v11 + 56);
        if (!v10)
        {
          goto LABEL_29;
        }
      }

      v12 = *(v10 + 128);
      if (!v12)
      {
        v12 = sub_1AF339A70(a1, a2, a3, a4);
      }

      v13 = sub_1AF33B47C(a1, v12, v30, a4);
      v16 = objc_msgSend_stringByAppendingPathComponent_(v12, v14, v13, v15);
      v17 = a1[41];
      if (!v17)
      {
        goto LABEL_15;
      }

      v18 = a1 + 41;
      do
      {
        v19 = v17[4];
        v20 = v19 >= v30;
        v21 = v19 < v30;
        if (v20)
        {
          v18 = v17;
        }

        v17 = v17[v21];
      }

      while (v17);
      if (v18 != v8 && v30 >= v18[4])
      {
        v31 = &v30;
        a3 = sub_1AF33AD00((a1 + 40), &v30)[5];
        if (a3)
        {
LABEL_16:
          if (*(v10 + 128))
          {
            sub_1AF343810(a1, v30, a3, v10, v11);
          }
        }
      }

      else
      {
LABEL_15:
        a3 = sub_1AF33B978(a1, v30, v16, v13);
        if (a3)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      v5 += 2;
    }

    while (v5 != v6);
  }

  v26 = a1[46];
  v27 = a1[47];
  while (v26 != v27)
  {
    v28 = *v26;
    if (sub_1AF33A418(*v26, a2, a3, a4))
    {
      v29 = sub_1AF343A48(a1, v28, a3, a4);
      if (v29)
      {
        sub_1AF3443A8(v28, v29);
      }
    }

    ++v26;
  }
}

uint64_t sub_1AF339E50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a2;
  if (objc_msgSend_skinner(a2, a2, a3, a4))
  {
    v9 = objc_msgSend_skinner(a2, v6, v7, v8);
    objc_msgSend_skeleton(v9, v10, v11, v12);
    operator new();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = objc_msgSend_childNodes(a2, v6, v7, v8, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v20, v25, 16);
  v16 = result;
  if (result)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v13);
        }

        sub_1AF339E50(a1, *(*(&v20 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, &v20, v25, 16);
      v16 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF33A13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    do
    {
      v7 = *v4;
      v8 = (*v4)[1];
      if ((*v4)[2] != v8)
      {
        if (!*v7)
        {
          *v7 = sub_1AF33A7E0(a1, *v4 + 8, a3, a4);
          v8 = v7[1];
        }

        v9 = sub_1AF33A89C(a1, *v8);
        if (!v9)
        {
          sub_1AF33A8FC();
        }

        v10 = v7[1];
        v11 = v7[2];
        while (v10 != v11)
        {
          v12 = *v10++;
          v32 = v12;
          sub_1AF33AEA0(a1 + 48, &v32);
        }

        sub_1AF33A998(v7, v9);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v13 = *(a1 + 24);
        v14 = *(a1 + 32);
        if (v13 != v14)
        {
          do
          {
            v15 = *v13;
            v31 = v15;
            if (v15 != v9)
            {
              v16 = v9[1];
              v17 = v16 - *v9;
              if (v16 != *v9)
              {
                v18 = 0;
                v19 = **v15;
                v20 = v17 >> 3;
                if (v20 <= 1)
                {
                  v20 = 1;
                }

                while (*(*v9 + 8 * v18) != v19)
                {
                  if (v20 == ++v18)
                  {
                    goto LABEL_25;
                  }
                }

                if (v18 != -1)
                {
                  v21 = *a1;
                  v22 = *(a1 + 8);
                  while (v21 != v22)
                  {
                    if ((*v21)[7] == v31)
                    {
                      sub_1AF33A998(*v21, v9);
                    }

                    ++v21;
                  }

                  sub_1AF141BD4(&v32, &v31);
                }
              }
            }

LABEL_25:
            ++v13;
          }

          while (v13 != v14);
          v23 = v32;
          v24 = v33;
          if (v32 != v33)
          {
            do
            {
              v25 = *v23;
              v27 = *(a1 + 24);
              v26 = *(a1 + 32);
              if (v27 != v26)
              {
                v28 = v26 - (v27 + 8);
                if (v26 != v27 + 8)
                {
                  memmove(*(a1 + 24), (v27 + 8), v26 - (v27 + 8));
                }

                *(a1 + 32) = v27 + v28;
              }

              if (v25)
              {
                sub_1AF112128(v25 + 72, *(v25 + 80));
                sub_1AF112128(v25 + 48, *(v25 + 56));
                sub_1AF112128(v25 + 24, *(v25 + 32));
                v29 = *v25;
                if (*v25)
                {
                  *(v25 + 8) = v29;
                  operator delete(v29);
                }

                MEMORY[0x1B271C6B0](v25, 0x10A0C400C584343);
              }

              ++v23;
            }

            while (v23 != v24);
            v23 = v32;
          }

          if (v23)
          {
            v33 = v23;
            operator delete(v23);
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  while (v4 != v5)
  {
    v30 = *v4++;
    sub_1AF33AA5C(v30);
  }
}

void sub_1AF33A3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF33A418(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = **a1;
  if (v4)
  {
    while (1)
    {
      v6 = objc_msgSend_animationKeys(v4, a2, a3, a4);
      if (objc_msgSend_count(v6, v7, v8, v9))
      {
        break;
      }

      v4 = objc_msgSend_parentNode(v4, v10, v11, v12);
      if (!v4)
      {

        return sub_1AF33AF6C(a1, a2, a3, a4);
      }
    }
  }

  return v4;
}

__n128 sub_1AF33A488(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v12[0] = a2;
  sub_1AF33A510(a1 + 8, v12);
  v12[2] = v12;
  v5 = sub_1AF33A62C(a1 + 32, v12);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[3];
  *(v5 + 5) = a3[2];
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = a3[4];
  v10 = a3[5];
  v11 = a3[7];
  *(v5 + 9) = a3[6];
  *(v5 + 10) = v11;
  *(v5 + 7) = result;
  *(v5 + 8) = v10;
  return result;
}

void sub_1AF33A510(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1AF33A5E4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AF33A5E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void *sub_1AF33A62C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33A710(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33A7E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 1) - *a2;
  if (!(v5 >> 3))
  {
    return 0;
  }

  if (v5 >> 3 == 1)
  {
    return *v4;
  }

  v7 = *v4;
  if (v5 < 9)
  {
    return *v4;
  }

  v9 = 1;
  do
  {
    if (v7)
    {
      v10 = *(v4 + 8 * v9);
      while (!v10)
      {
LABEL_13:
        result = objc_msgSend_parentNode(v7, a2, a3, a4);
        v7 = result;
        if (!result)
        {
          goto LABEL_16;
        }
      }

      result = v10;
      while (v7 != result)
      {
        result = objc_msgSend_parentNode(result, a2, a3, a4);
        if (!result)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      result = 0;
    }

LABEL_16:
    ++v9;
    v4 = *a2;
    v7 = result;
  }

  while (v9 < (*(a2 + 1) - *a2) >> 3);
  return result;
}

uint64_t *sub_1AF33A89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  while (v2 != v3)
  {
    result = *v2;
    v5 = **v2;
    v6 = (*v2)[1];
    v7 = v6 - v5;
    if (v6 != v5)
    {
      v8 = 0;
      v9 = v7 >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (*(v5 + 8 * v8) != a2)
      {
        if (v9 == ++v8)
        {
          goto LABEL_10;
        }
      }

      if (v8 != -1)
      {
        return result;
      }
    }

LABEL_10:
    ++v2;
  }

  return 0;
}

__n128 sub_1AF33A998(void *a1, uint64_t a2)
{
  a1[7] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; *(v8 + 8) = v13)
  {
    v5 = *v2++;
    v15 = v5;
    v16 = &v15;
    v6 = sub_1AF33A62C((a1 + 4), &v15);
    v7 = a1[7];
    v16 = &v15;
    v8 = sub_1AF33A62C(v7 + 72, &v15);
    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v11 = *(v6 + 6);
    *(v8 + 5) = *(v6 + 5);
    *(v8 + 6) = v11;
    *(v8 + 3) = v9;
    *(v8 + 4) = v10;
    result = *(v6 + 7);
    v13 = *(v6 + 8);
    v14 = *(v6 + 10);
    *(v8 + 9) = *(v6 + 9);
    *(v8 + 10) = v14;
    *(v8 + 7) = result;
  }

  return result;
}

void *sub_1AF33AA5C(void *result)
{
  v9[0] = 0;
  v1 = result[1];
  if (result[2] != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *v2[7];
      v5 = *(v2[7] + 8) - v4;
      if (v5)
      {
        v6 = 0;
        v7 = *(v1 + 8 * v3);
        v8 = v5 >> 3;
        if ((v5 >> 3) <= 1)
        {
          v8 = 1;
        }

        while (*(v4 + 8 * v6) != v7)
        {
          if (v8 == ++v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v6 = -1;
      }

      v9[2] = v9;
      result = sub_1AF33ADD0((v2 + 8), v9);
      result[5] = v6;
      v3 = v9[0] + 1;
      v9[0] = v3;
      v1 = v2[1];
    }

    while (v3 < (v2[2] - v1) >> 3);
  }

  return result;
}

uint64_t sub_1AF33AB28(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v44 = a2;
  sub_1AF33A510(a1, &v44);
  v8 = objc_msgSend_name(v44, v5, v6, v7);
  v10 = sub_1AF338AE8(v8, v9);
  v13 = objc_msgSend_stringByAppendingPathComponent_(a3, v11, v10, v12);
  v45 = &v44;
  sub_1AF33AD00(a1 + 24, &v44)[5] = v13;
  objc_msgSend_transform(v44, v14, v15, v16);
  v38 = vcvtq_f64_f32(*v18.f32);
  v39 = vcvt_hight_f64_f32(v17);
  v36 = vcvtq_f64_f32(*v19.f32);
  v37 = vcvtq_f64_f32(*v17.f32);
  v34 = vcvtq_f64_f32(*v20.f32);
  v35 = vcvt_hight_f64_f32(v18);
  v45 = &v44;
  v32 = vcvt_hight_f64_f32(v20);
  v33 = vcvt_hight_f64_f32(v19);
  v21 = sub_1AF33A62C(a1 + 48, &v44);
  v21[3] = v37;
  v21[4] = v39;
  v21[5] = v38;
  v21[6] = v35;
  v21[7] = v36;
  v21[8] = v33;
  v21[9] = v34;
  v21[10] = v32;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = objc_msgSend_childNodes(v44, v22, v23, v24);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v40, v46, 16);
  if (result)
  {
    v28 = result;
    v29 = *v41;
    do
    {
      v30 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v25);
        }

        sub_1AF33AB28(a1, *(*(&v40 + 1) + 8 * v30++), v13);
      }

      while (v28 != v30);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v31, &v40, v46, 16);
      v28 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF33AD00(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33ADD0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33AEA0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF33AF6C(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  v16 = v5;
  v17 = v4;
  v18 = v6;
  v19 = v7;
  v10 = 0;
  while (1)
  {
    v11 = objc_msgSend_animationKeys(*(v8 + 8 * v10), a2, a3, a4, v16, v17, v18, v19);
    if (objc_msgSend_count(v11, v12, v13, v14))
    {
      break;
    }

    ++v10;
    v8 = *a1;
    if (v10 >= (a1[1] - *a1) >> 3)
    {
      return 0;
    }
  }

  return *(*a1 + 8 * v10);
}

uint64_t sub_1AF33AFDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = a2;
  if (objc_msgSend_model(a2, a2, a3, a4) && objc_msgSend_morpher(a2, v6, v7, v8))
  {
    v9 = objc_msgSend_morpher(a2, v6, v7, v8);
    v13 = objc_msgSend_weights(v9, v10, v11, v12);
    objc_msgSend_count(v13, v14, v15, v16);
    operator new();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = objc_msgSend_childNodes(a2, v6, v7, v8, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v24, v29, 16);
  v20 = result;
  if (result)
  {
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v17);
        }

        sub_1AF33AFDC(a1, *(*(&v24 + 1) + 8 * v22++));
      }

      while (v20 != v22);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v23, &v24, v29, 16);
      v20 = result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_1AF33B1F8(double *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1AF33B408(a1, a2, v4, v5);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v10 = objc_msgSend_keyTimes(a2, v7, v8, v9);
      result = objc_msgSend_count(v10, v11, v12, v13);
      if (result >= 2)
      {
        v17 = objc_msgSend_count(v10, v14, v15, v16);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v10, v18, v17 - 1, v19);
        objc_msgSend_doubleValue(v20, v21, v22, v23);
        v25 = v24;
        v28 = objc_msgSend_objectAtIndexedSubscript_(v10, v26, 0, v27);
        result = objc_msgSend_doubleValue(v28, v29, v30, v31);
        v36 = v25 - v35;
        if (v36 >= 0.0001)
        {
          objc_msgSend_duration(a2, v32, v33, v34);
          v38 = v37 / v36;
          v41 = objc_msgSend_objectAtIndexedSubscript_(v10, v39, 0, v40);
          objc_msgSend_doubleValue(v41, v42, v43, v44);
          v46 = v45;
          objc_msgSend_beginTime(a2, v47, v48, v49);
          v54 = v53 + v46 * v38;
          v55 = a1[62];
          if (v55 >= 0.0)
          {
            v56 = a1[61];
            if (v56 > v54)
            {
              v56 = v54;
            }

            a1[61] = v56;
            if (v55 >= v54)
            {
              v54 = v55;
            }
          }

          else
          {
            a1[61] = v54;
          }

          a1[62] = v54;
          v57 = objc_msgSend_count(v10, v50, v51, v52);
          v60 = objc_msgSend_objectAtIndexedSubscript_(v10, v58, v57 - 1, v59);
          objc_msgSend_doubleValue(v60, v61, v62, v63);
          v65 = v64;
          objc_msgSend_beginTime(a2, v66, v67, v68);
          v73 = v72 + v65 * v38;
          v74 = a1[62];
          if (v74 >= 0.0)
          {
            v75 = a1[61];
            if (v75 > v73)
            {
              v75 = v73;
            }

            a1[61] = v75;
            if (v74 >= v73)
            {
              v73 = v74;
            }
          }

          else
          {
            a1[61] = v73;
          }

          a1[62] = v73;
          result = objc_msgSend_count(v10, v69, v70, v71);
          if (result >= 2)
          {
            v78 = objc_msgSend_objectAtIndexedSubscript_(v10, v76, 1, v77);
            objc_msgSend_doubleValue(v78, v79, v80, v81);
            v83 = v82;
            v86 = objc_msgSend_objectAtIndexedSubscript_(v10, v84, 0, v85);
            result = objc_msgSend_doubleValue(v86, v87, v88, v89);
            v91 = v38 * (v83 - v90);
            if (v91 > 0.001)
            {
              v92 = a1[63];
              if (v92 == 0.0 || v92 > v91)
              {
                a1[63] = v91;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AF33B408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animations(a2, a2, a3, a4);
  result = objc_msgSend_count(v6, v7, v8, v9);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v15 = objc_msgSend_animations(a2, v11, v12, v13);
      v18 = objc_msgSend_objectAtIndex_(v15, v16, i, v17);
      sub_1AF33B1F8(a1, v18);
      v22 = objc_msgSend_animations(a2, v19, v20, v21);
      result = objc_msgSend_count(v22, v23, v24, v25);
    }
  }

  return result;
}

void *sub_1AF33B47C(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_name(a3, a2, a3, a4);
  if (!v7 && (!objc_msgSend_model(a3, v8, v9, v10) || (v13 = objc_msgSend_model(a3, v8, v12, v10), (v7 = objc_msgSend_name(v13, v14, v15, v16)) == 0)) || (v11 = v7, !objc_msgSend_length(v7, v8, v9, v10)))
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = *(a1 + 240);
    *(a1 + 240) = v18 + 1;
    v19 = objc_msgSend_numberWithUnsignedLong_(v17, v8, v18, v10);
    v23 = objc_msgSend_stringValue(v19, v20, v21, v22);
    v11 = objc_msgSend_stringByAppendingString_(@"Node_", v24, v23, v25);
  }

  v26 = sub_1AF338AE8(v11, v8);
  v29 = objc_msgSend_stringByAppendingPathComponent_(a2, v27, v26, v28);
  v33 = objc_msgSend_UTF8String(v29, v30, v31, v32);
  sub_1AF13D250(&__p, v33);
  if (a1 + 72 != sub_1AF33C394(a1 + 64, &__p.__r_.__value_.__l.__data_))
  {
    v36 = objc_msgSend_stringByAppendingString_(v26, v34, @"_", v35);
    v37 = MEMORY[0x1E696AD98];
    v38 = *(a1 + 240);
    *(a1 + 240) = v38 + 1;
    v41 = objc_msgSend_numberWithUnsignedLong_(v37, v39, v38, v40);
    v45 = objc_msgSend_stringValue(v41, v42, v43, v44);
    v26 = objc_msgSend_stringByAppendingString_(v36, v46, v45, v47);
    v50 = objc_msgSend_stringByAppendingPathComponent_(a2, v48, v26, v49);
    v54 = objc_msgSend_UTF8String(v50, v51, v52, v53);
    sub_1AF2737B0(&__p, v54);
  }

  sub_1AF33C414(a1 + 64, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v26;
}

void sub_1AF33B5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF33B600(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 104);
  if (!v4)
  {
    *(a1 + 128) = a3;
    v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, (*(a1 + 8) - *a1) >> 3, a4);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    sub_1AF33C630(&v57, (*(a1 + 8) - *a1) >> 3);
    __p = 0;
    v55 = 0;
    v56 = 0;
    sub_1AF33C630(&__p, (*(a1 + 8) - *a1) >> 3);
    v10 = *a1;
    v11 = *(a1 + 8);
    if (*a1 != v11)
    {
      v12 = (a1 + 80);
      do
      {
        v53 = *v10;
        if (v53)
        {
          *&v52[0] = &v53;
          v13 = sub_1AF33AD00(a1 + 24, &v53);
          objc_msgSend_addObject_(v7, v14, v13[5], v15);
          *&v52[0] = &v53;
          v16 = sub_1AF33A62C(a1 + 48, &v53);
          sub_1AF33C6D0(&v57, v16 + 3);
          v20 = *v12;
          if (!*v12)
          {
            goto LABEL_13;
          }

          v21 = (a1 + 80);
          do
          {
            v22 = v20[4];
            v23 = v22 >= v53;
            v24 = v22 < v53;
            if (v23)
            {
              v21 = v20;
            }

            v20 = v20[v24];
          }

          while (v20);
          if (v21 != v12 && v53 >= v21[4])
          {
            *&v52[0] = &v53;
            v29 = sub_1AF33A62C(a1 + 72, &v53);
            sub_1AF33C6D0(&__p, v29 + 3);
          }

          else
          {
LABEL_13:
            objc_msgSend_worldTransform(v53, v17, v18, v19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            v52[0] = vcvtq_f64_f32(*v25.f32);
            v52[1] = vcvt_hight_f64_f32(v25);
            v52[2] = vcvtq_f64_f32(*v26.f32);
            v52[3] = vcvt_hight_f64_f32(v26);
            v52[4] = vcvtq_f64_f32(*v27.f32);
            v52[5] = vcvt_hight_f64_f32(v27);
            v52[6] = vcvtq_f64_f32(*v28.f32);
            v52[7] = vcvt_hight_f64_f32(v28);
            sub_1AF33C6D0(&__p, v52);
          }
        }

        ++v10;
      }

      while (v10 != v11);
    }

    v30 = *(a1 + 128);
    if (*(a1 + 96))
    {
      v32 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v8, v30, v9);
      v4 = 0;
    }

    else
    {
      v33 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v8, v30, v9);
      v4 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v34, a2, v33, qword_1EB658E20);
      v37 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 128), v35, @"Skeleton", v36);
      v32 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v38, v37, v39);
    }

    *(a1 + 112) = v32;
    v40 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v31, a2, v32, qword_1EB658E18);
    *(a1 + 104) = v40;
    v42 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v41, v40, @"joints", qword_1EB658DC8, qword_1EB658E40);
    objc_msgSend_setStringArray_(v42, v43, v7, v44);
    v46 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v45, *(a1 + 104), @"restTransforms", qword_1EB658D60, qword_1EB658E40);
    objc_msgSend_setDouble4x4Array_count_(v46, v47, v57, (v58 - v57) >> 7);
    v49 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v48, *(a1 + 104), @"bindTransforms", qword_1EB658D60, qword_1EB658E40);
    objc_msgSend_setDouble4x4Array_count_(v49, v50, __p, (v55 - __p) >> 7);
    if (!v4)
    {
      v4 = *(a1 + 104);
    }

    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }
  }

  return v4;
}

void sub_1AF33B934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AF33B978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v30[0] = a2;
  v6 = *(a1 + 424);
  if (v6)
  {
    v8 = a1 + 424;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != a1 + 424 && *(v8 + 32) <= a2)
    {
      v30[2] = v30;
      v12 = sub_1AF33A710(a1 + 416, v30);
      sub_1AF33C868(v12[5], *(a1 + 56), v4, v13);
      v4 = objc_msgSend_stringByAppendingPathComponent_(v4, v14, a4, v15);
      a2 = v30[0];
    }
  }

  if (!sub_1AF33C938(a1, a2, a3, a4))
  {
    return 0;
  }

  v18 = qword_1EB658DF0;
  v19 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v16, v4, v17);
  v21 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v20, *(a1 + 56), v19, v18);
  v25 = objc_msgSend_model(v30[0], v22, v23, v24);
  sub_1AF33C9D4(a1, v21, v4, v25);
  if (objc_msgSend_morpher(v30[0], v26, v27, v28))
  {
    sub_1AF33DC24(a1, v21, v4, v30[0]);
  }

  return v21;
}

uint64_t sub_1AF33BAC0(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v6 = qword_1EB658DE0;
  v7 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, a2, a3, a4);
  v9 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v8, *(a1 + 56), v7, v6);
  if (objc_msgSend_usesOrthographicProjection(a4, v10, v11, v12))
  {
    v14 = @"orthographic";
  }

  else
  {
    v14 = @"perspective";
  }

  v15 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v13, v9, @"projection", qword_1EB658DD0, qword_1EB658E40);
  v18 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v16, v14, v17);
  objc_msgSend_setTokenValue_(v15, v19, v18, v20);
  if ((objc_msgSend_usesOrthographicProjection(a4, v21, v22, v23) & 1) == 0)
  {
    objc_msgSend_fieldOfView(a4, v24, v25, v26);
    v28 = tan(v27 / 180.0 * 3.14159265 * 0.5);
    objc_msgSend_focalLength(a4, v29, v30, v31);
    *&v28 = v28 * v32 + v28 * v32;
    v34 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v33, v9, @"horizontalAperture", qword_1EB658D68, qword_1EB658E40);
    LODWORD(v35) = LODWORD(v28);
    objc_msgSend_setFloatValue_(v34, v36, v37, v38, v35);
    v40 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v39, v9, @"verticalAperture", qword_1EB658D68, qword_1EB658E40);
    LODWORD(v41) = LODWORD(v28);
    objc_msgSend_setFloatValue_(v40, v42, v43, v44, v41);
  }

  v45 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v24, v9, @"focalLength", qword_1EB658D68, qword_1EB658E40);
  objc_msgSend_focalLength(a4, v46, v47, v48);
  objc_msgSend_setFloatValue_(v45, v49, v50, v51);
  v53 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v52, v9, @"clippingRange", qword_1EB658D70, qword_1EB658E40);
  objc_msgSend_zNear(a4, v54, v55, v56);
  v89 = v57;
  objc_msgSend_zFar(a4, v58, v59, v60);
  objc_msgSend_setFloat2Value_(v53, v61, v62, v63, COERCE_DOUBLE(__PAIR64__(v64, v89)));
  if (objc_msgSend_depthOfField(a4, v65, v66, v67))
  {
    v69 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v68, v9, @"fStop", qword_1EB658D68, qword_1EB658E40);
    v73 = objc_msgSend_depthOfField(a4, v70, v71, v72);
    objc_msgSend_fStop(v73, v74, v75, v76);
    objc_msgSend_setFloatValue_(v69, v77, v78, v79);
    v81 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v80, v9, @"focusDistance", qword_1EB658D68, qword_1EB658E40);
    objc_msgSend_focusDistance(a4, v82, v83, v84);
    objc_msgSend_setFloatValue_(v81, v85, v86, v87);
  }

  return v9;
}

void *sub_1AF33BD2C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_animationKeys(a3, a2, a3, a4);
  result = objc_msgSend_count(v7, v8, v9, v10);
  if (result)
  {
    v15 = result;
    v16 = 0;
    while (1)
    {
      v17 = objc_msgSend_animationKeys(a3, v12, v13, v14);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, v16, v19);
      result = objc_msgSend_animationPlayerForKey_(a3, v21, v20, v22);
      if (result)
      {
        break;
      }

      if (v15 == ++v16)
      {
        return result;
      }
    }

    v23 = objc_msgSend_animation(result, v12, v13, v14);
    v27 = objc_msgSend_caAnimation(v23, v24, v25, v26);

    return sub_1AF341FE8(a1, a2, v27);
  }

  return result;
}

uint64_t sub_1AF33BDE0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  objc_msgSend_transform(a3, a2, a3, a4);
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v11, *MEMORY[0x1E69E9B18]), vceqq_f32(v12, *(MEMORY[0x1E69E9B18] + 16))), vandq_s8(vceqq_f32(v13, *(MEMORY[0x1E69E9B18] + 32)), vceqq_f32(v14, *(MEMORY[0x1E69E9B18] + 48))))) & 0x80000000) == 0)
  {
    if (objc_msgSend_count(*(a1 + 88), v8, v9, v10))
    {
      if ((objc_msgSend_containsObject_(*(a1 + 88), v8, @"xformOp:transform", v10) & 1) == 0)
      {
        objc_msgSend_position(a3, v8, v15, v10);
        if ((VFXVector3EqualToVector3(v16, 0) & 1) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v17, @"xformOp:translate", v19) & 1) == 0)
        {
          v20 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v17, a2, @"xformOp:translate", qword_1EB658D50, qword_1EB658E40);
          objc_msgSend_position(a3, v21, v22, v23);
          v146 = v24;
          objc_msgSend_position(a3, v25, v26, v27);
          v147 = vcvtq_f64_f32(__PAIR64__(v28, v146));
          objc_msgSend_position(a3, v29, v30, v31);
          v32.f64[0] = *&v32.f64[1];
          v151 = v147;
          v152 = v32;
          objc_msgSend_setDouble3Value_(v20, v33, &v151, v34);
          objc_msgSend_addObject_(*(a1 + 88), v35, @"xformOp:translate", v36);
        }

        objc_msgSend_orientation(a3, v17, v18, v19);
        v41 = vceqq_f32(v40, xmmword_1AFE201A0);
        v41.i32[0] = vminvq_u32(v41);
        if ((v41.i32[0] & 0x80000000) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v37, @"xformOp:orient", v39) & 1) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v37, @"xformOp:rotateXYZ", v39) & 1) == 0)
        {
          if (objc_msgSend_containsObject_(*(a1 + 88), v37, @"xformOp:rotateX", v39) & 1) != 0 || (objc_msgSend_containsObject_(*(a1 + 88), v42, @"xformOp:rotateY", v44) & 1) != 0 || (objc_msgSend_containsObject_(*(a1 + 88), v42, @"xformOp:rotateZ", v44))
          {
            objc_msgSend_eulerAngles(a3, v42, v43, v44);
            if (v48 != 0.0 && (objc_msgSend_containsObject_(*(a1 + 88), v45, @"xformOp:rotateX", v47) & 1) == 0)
            {
              v49 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v45, a2, @"xformOp:rotateX", qword_1EB658D68, qword_1EB658E40);
              objc_msgSend_eulerAngles(a3, v50, v51, v52);
              v54 = v53 / 3.14159265 * 180.0;
              *&v54 = v54;
              objc_msgSend_setFloatValue_(v49, v55, v56, v57, v54);
              objc_msgSend_addObject_(*(a1 + 88), v58, @"xformOp:rotateX", v59);
            }

            objc_msgSend_eulerAngles(a3, v45, v46, v47);
            LODWORD(v63) = HIDWORD(v63);
            if (*(&v63 + 1) != 0.0 && (objc_msgSend_containsObject_(*(a1 + 88), v60, @"xformOp:rotateY", v62, v63) & 1) == 0)
            {
              v64 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v60, a2, @"xformOp:rotateY", qword_1EB658D68, qword_1EB658E40);
              objc_msgSend_eulerAngles(a3, v65, v66, v67);
              v69 = v68 / 3.14159265 * 180.0;
              *&v69 = v69;
              objc_msgSend_setFloatValue_(v64, v70, v71, v72, v69);
              objc_msgSend_addObject_(*(a1 + 88), v73, @"xformOp:rotateY", v74);
            }

            objc_msgSend_eulerAngles(a3, v60, v61, v62, v63);
            v41.i32[0] = v41.i32[2];
            if (*&v41.i32[2] != 0.0 && (objc_msgSend_containsObject_(*(a1 + 88), v37, @"xformOp:rotateZ", v39, *v41.i64) & 1) == 0)
            {
              v75 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v37, a2, @"xformOp:rotateZ", qword_1EB658D68, qword_1EB658E40);
              objc_msgSend_eulerAngles(a3, v76, v77, v78);
              v80 = v79 / 3.14159265 * 180.0;
              *&v80 = v80;
              objc_msgSend_setFloatValue_(v75, v81, v82, v83, v80);
              objc_msgSend_addObject_(*(a1 + 88), v84, @"xformOp:rotateZ", v85);
            }
          }

          else
          {
            objc_msgSend_orientation(a3, v42, v43, v44);
            v148 = v98;
            v100 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v99, a2, @"xformOp:orient", qword_1EB658DB8, qword_1EB658E40);
            objc_msgSend_setQuatfValue_(v100, v101, v102, v103, v148);
            objc_msgSend_addObject_(*(a1 + 88), v104, @"xformOp:orient", v105);
          }
        }

        objc_msgSend_scale(a3, v37, v38, v39, *v41.i64);
        __asm { FMOV            V1.4S, #1.0 }

        v112 = vceqq_f32(v111, _Q1);
        v112.i32[3] = v112.i32[2];
        if ((vminvq_u32(v112) & 0x80000000) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v8, @"xformOp:scale", v10) & 1) == 0)
        {
          v113 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v8, a2, @"xformOp:scale", qword_1EB658D50, qword_1EB658E40);
          objc_msgSend_scale(a3, v114, v115, v116);
          v149 = v117;
          objc_msgSend_scale(a3, v118, v119, v120);
          v150 = vcvtq_f64_f32(__PAIR64__(v121, v149));
          objc_msgSend_scale(a3, v122, v123, v124);
          v125.f64[0] = *&v125.f64[1];
          v151 = v150;
          v152 = v125;
          objc_msgSend_setDouble3Value_(v113, v126, &v151, v127);
          objc_msgSend_addObject_(*(a1 + 88), v128, @"xformOp:scale", v129);
        }
      }
    }

    else if ((v4 & 1) == 0)
    {
      v86 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v8, a2, @"xformOp:transform", qword_1EB658D58, qword_1EB658E40);
      objc_msgSend_transform(a3, v87, v88, v89);
      v151 = vcvtq_f64_f32(*v90.f32);
      v152 = vcvt_hight_f64_f32(v90);
      v153 = vcvtq_f64_f32(*v91.f32);
      v154 = vcvt_hight_f64_f32(v91);
      v155 = vcvtq_f64_f32(*v92.f32);
      v156 = vcvt_hight_f64_f32(v92);
      v157 = vcvtq_f64_f32(*v93.f32);
      v158 = vcvt_hight_f64_f32(v93);
      objc_msgSend_setDouble4x4Value_(v86, v94, &v151, v95);
      objc_msgSend_addObject_(*(a1 + 88), v96, @"xformOp:transform", v97);
    }
  }

  v132 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, 8, v10);
  for (i = 0; i != 8; ++i)
  {
    v134 = off_1E7A7F330[i];
    if (objc_msgSend_containsObject_(*(a1 + 88), v130, v134, v131))
    {
      v136 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v130, v134, v131);
      objc_msgSend_addObject_(v132, v137, v136, v138);
    }
  }

  if (objc_msgSend_count(v132, v130, v135, v131))
  {
    v142 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v139, a2, @"xformOpOrder", qword_1EB658DD8, qword_1EB658E40);
    objc_msgSend_setTokenArray_(v142, v143, v132, v144);
  }

  return objc_msgSend_removeAllObjects(*(a1 + 88), v139, v140, v141);
}

uint64_t sub_1AF33C394(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1AF13D428((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_1AF13D428(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1AF33C414(uint64_t a1, void **a2)
{
  result = *sub_1AF33C494(a1, &v3, a2);
  if (!result)
  {
    sub_1AF33C51C();
  }

  return result;
}

void *sub_1AF33C494(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1AF13D428(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1AF13D428(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1AF33C5B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1AF33C5CC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1AF33C5CC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1AF33C630(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      sub_1AF33C7D8(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void sub_1AF33C6D0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = (v4 - *a1) >> 7;
    v14 = v13 + 1;
    if ((v13 + 1) >> 57)
    {
      sub_1AF10A1D0();
    }

    v15 = v5 - *a1;
    if (v15 >> 6 > v14)
    {
      v14 = v15 >> 6;
    }

    if (v15 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_1AF33C7D8(a1, v16);
    }

    v17 = (v13 << 7);
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    v17[2] = a2[2];
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    v17[6] = a2[6];
    v17[7] = v23;
    v17[4] = v21;
    v17[5] = v22;
    v12 = (v13 << 7) + 128;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy(v17 - v24, *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    v4[6] = a2[6];
    v4[7] = v11;
    v4[4] = v9;
    v4[5] = v10;
    v12 = (v4 + 8);
  }

  *(a1 + 8) = v12;
}

void sub_1AF33C7D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF33C820(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF33C868(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, a2, a3, a4);
  v9 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v8, a2, v7, qword_1EB658E20);
  v12 = objc_msgSend_stringByAppendingPathComponent_(a3, v10, @"Skeleton", v11);
  v15 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v13, v12, v14);
  *(a1 + 8) = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v16, a2, v15, qword_1EB658E18);
  v18 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v17, v9, @"skel:skeleton", qword_1EB658DA8, qword_1EB658E40);
  objc_msgSend_setObjectPath_(v18, v19, v15, v20);
  return v9;
}

uint64_t sub_1AF33C938(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_model(a2, a2, a3, a4);
  v8 = objc_msgSend_mesh(v4, v5, v6, v7);
  if (objc_msgSend_meshElementCount(v8, v9, v10, v11) < 1)
  {
    return 0;
  }

  v14 = 0;
  while (1)
  {
    v15 = objc_msgSend_meshElementAtIndex_(v8, v12, v14, v13);
    if (!objc_msgSend_primitiveType(v15, v16, v17, v18) || objc_msgSend_primitiveType(v15, v19, v20, v21) == 4)
    {
      break;
    }

    result = objc_msgSend_primitiveType(v15, v22, v23, v24);
    if (result == 1)
    {
      return result;
    }

    if (++v14 >= objc_msgSend_meshElementCount(v8, v26, v27, v28))
    {
      return 0;
    }
  }

  return 1;
}

void sub_1AF33C9D4(uint64_t a1, const char *a2, void *a3, void *a4)
{
  v455 = a3;
  v458 = a1;
  v485 = *MEMORY[0x1E69E9840];
  v463 = a2;
  v5 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, a2, @"subdivisionScheme", qword_1EB658DD0, qword_1EB658E40);
  v8 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v6, @"none", v7);
  objc_msgSend_setTokenValue_(v5, v9, v8, v10);
  v462 = a4;
  if (objc_msgSend_modelSourceChannels(a4, v11, v12, v13) && (v17 = objc_msgSend_modelSourceChannels(a4, v14, v15, v16), objc_msgSend_count(v17, v18, v19, v20) >= 2))
  {
    v21 = objc_msgSend_modelSourceChannels(a4, v14, v15, v16);
    v459 = objc_msgSend_count(v21, v22, v23, v24);
    v457 = 1;
  }

  else
  {
    v457 = 0;
    v459 = 1;
  }

  v464 = objc_msgSend_mesh(v462, v14, v15, v16);
  v28 = objc_msgSend_meshElementCount(v464, v25, v26, v27);
  if (v28 < 1)
  {
    v49 = 0;
    v479 = 0;
    v480 = 0;
    v481 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v464;
    do
    {
      v35 = objc_msgSend_meshElementAtIndex_(v34, v29, v33, v30);
      v39 = objc_msgSend_primitiveCount(v35, v36, v37, v38);
      if (objc_msgSend_primitiveType(v35, v40, v41, v42) == 1 && objc_msgSend_indexCount(v35, v43, v44, v45) >= 3)
      {
        v32 = v32 + 3 * objc_msgSend_indexCount(v35, v43, v44, v45) - 6;
      }

      else
      {
        v32 += objc_msgSend_indexCount(v35, v43, v44, v45);
      }

      v31 += v39;
      ++v33;
      v34 = v464;
      v28 = objc_msgSend_meshElementCount(v464, v46, v47, v48);
    }

    while (v33 < v28);
    v49 = v32;
    v479 = 0;
    v480 = 0;
    v481 = 0;
    if (v31)
    {
      sub_1AF17C384(&v479, v31);
    }
  }

  v454 = &v454;
  MEMORY[0x1EEE9AC00](v28, v29);
  v470 = &v454 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v54)
  {
    v55 = v459;
    v56 = v470;
    bzero(v470, 24 * ((24 * v459 - 24) / 0x18) + 24);
    do
    {
      sub_1AF17A60C(v56, v49);
      v56 += 3;
      --v55;
    }

    while (v55);
  }

  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  v57 = objc_msgSend_meshElements(v464, v50, v51, v52);
  v467 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v475, v484, 16);
  if (v467)
  {
    v468 = 0;
    v62 = *v476;
    v465 = v57;
    *&v466 = v62;
    do
    {
      for (i = 0; i != v467; ++i)
      {
        if (*v476 != v466)
        {
          objc_enumerationMutation(v465);
        }

        v63 = *(*(&v475 + 1) + 8 * i);
        if (objc_msgSend_data(v63, v59, v60, v61))
        {
          v64 = objc_msgSend_data(v63, v59, v60, v61);
          v68 = objc_msgSend_bytes(v64, v65, v66, v67);
          if (objc_msgSend_primitiveType(v63, v69, v70, v71) == 4)
          {
            v75 = 0;
            v76 = 4 * v468;
            while (objc_msgSend_primitiveCount(v63, v72, v73, v74) > v75)
            {
              v77 = objc_msgSend_bytesPerIndex(v63, v72, v73, v74);
              switch(v77)
              {
                case 1:
                  v81 = *v68;
                  break;
                case 4:
                  v81 = *v68;
                  break;
                case 2:
                  v81 = *v68;
                  break;
                default:
                  v81 = *v68;
                  break;
              }

              *&v479[4 * v75++ + v76] = v81;
              v68 += objc_msgSend_bytesPerIndex(v63, v78, v79, v80);
            }
          }

          v471.i64[0] = objc_msgSend_indicesChannelCount(v63, v72, v73, v74);
          if (objc_msgSend_hasInterleavedIndicesChannels(v63, v82, v83, v84))
          {
            v88 = v471.i64[0];
          }

          else
          {
            v88 = 1;
          }

          if (v471.i64[0])
          {
            v472.i64[0] = 0;
            do
            {
              hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(v63, v85, v86, v87);
              v93 = v472.i64[0];
              if ((hasInterleavedIndicesChannels & 1) == 0)
              {
                v94 = objc_msgSend_indexCount(v63, v90, v91, v92);
                v93 = v94 * v472.i64[0];
              }

              v95 = objc_msgSend_primitiveType(v63, v90, v91, v92);
              v99 = &v470[24 * v472.i64[0]];
              if (v95 == 1)
              {
                for (j = 2; j < objc_msgSend_indexCount(v63, v96, v97, v98); ++j)
                {
                  v101 = objc_msgSend_bytesPerIndex(v63, v85, v86, v87);
                  v105 = objc_msgSend_bytesPerIndex(v63, v102, v103, v104);
                  v109 = v101 * (2 * v88 + v93);
                  switch(v105)
                  {
                    case 1:
                      v110 = v68[v109];
                      break;
                    case 4:
                      v110 = *&v68[v109];
                      break;
                    case 2:
                      v110 = *&v68[v109];
                      break;
                    default:
                      v110 = v68[v109];
                      break;
                  }

                  v482.i32[0] = v110;
                  v111 = objc_msgSend_bytesPerIndex(v63, v106, v107, v108);
                  v115 = objc_msgSend_bytesPerIndex(v63, v112, v113, v114);
                  v119 = v111 * (v88 + v93);
                  switch(v115)
                  {
                    case 1:
                      v120 = v68[v119];
                      break;
                    case 4:
                      v120 = *&v68[v119];
                      break;
                    case 2:
                      v120 = *&v68[v119];
                      break;
                    default:
                      v120 = v68[v119];
                      break;
                  }

                  LODWORD(v473) = v120;
                  v121 = objc_msgSend_bytesPerIndex(v63, v116, v117, v118);
                  v125 = objc_msgSend_bytesPerIndex(v63, v122, v123, v124);
                  v126 = v121 * v93;
                  switch(v125)
                  {
                    case 1:
                      v127 = v68[v126];
                      break;
                    case 4:
                      v127 = *&v68[v126];
                      break;
                    case 2:
                      v127 = *&v68[v126];
                      break;
                    default:
                      v127 = v68[v126];
                      break;
                  }

                  v474 = v127;
                  if (j)
                  {
                    v128 = &v473;
                  }

                  else
                  {
                    v128 = &v474;
                  }

                  sub_1AF121C58(v99, v128);
                  if (j)
                  {
                    v129 = &v474;
                  }

                  else
                  {
                    v129 = &v473;
                  }

                  sub_1AF121C58(v99, v129);
                  sub_1AF121C58(v99, &v482);
                  v93 += v88;
                }
              }

              else
              {
                for (k = 0; k < objc_msgSend_indexCount(v63, v96, v97, v98); ++k)
                {
                  v131 = objc_msgSend_bytesPerIndex(v63, v85, v86, v87);
                  v135 = objc_msgSend_bytesPerIndex(v63, v132, v133, v134);
                  v136 = v131 * v93;
                  switch(v135)
                  {
                    case 1:
                      v137 = v68[v136];
                      break;
                    case 4:
                      v137 = *&v68[v136];
                      break;
                    case 2:
                      v137 = *&v68[v136];
                      break;
                    default:
                      v137 = v68[v136];
                      break;
                  }

                  v482.i32[0] = v137;
                  sub_1AF121C58(v99, &v482);
                  v93 += v88;
                }
              }

              ++v472.i64[0];
            }

            while (v472.i64[0] != v471.i64[0]);
          }

          v138 = objc_msgSend_primitiveCount(v63, v85, v86, v87);
          v468 += v138;
        }
      }

      v467 = objc_msgSend_countByEnumeratingWithState_objects_count_(v465, v59, &v475, v484, 16);
    }

    while (v467);
  }

  else
  {
    v468 = 0;
  }

  v139 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v59, v463, @"faceVertexCounts", qword_1EB658DA0, qword_1EB658E40);
  objc_msgSend_setIntArray_count_(v139, v140, v479, v468);
  v144 = 0;
  i = 0;
  v145 = 0;
  LODWORD(v465) = v457 ^ 1;
  v467 = @"kGeometrySourceSemanticPosition";
  v461 = @"kGeometrySourceSemanticNormal";
  v460 = @"kGeometrySourceSemanticColor";
  v456 = @"kGeometrySourceSemanticTexcoord";
  while (1)
  {
    v146 = objc_msgSend_meshSources(v464, v141, v142, v143);
    v150 = objc_msgSend_count(v146, v147, v148, v149);
    if (i >= v150)
    {
      break;
    }

    v154 = objc_msgSend_meshSources(v464, v151, v152, v153);
    v157 = objc_msgSend_objectAtIndexedSubscript_(v154, v155, i, v156);
    v161 = objc_msgSend_vectorCount(v157, v158, v159, v160);
    v165 = objc_msgSend_data(v157, v162, v163, v164);
    v169 = objc_msgSend_bytes(v165, v166, v167, v168);
    v173 = objc_msgSend_dataOffset(v157, v170, v171, v172);
    v177 = objc_msgSend_semantic(v157, v174, v175, v176);
    isEqualToString = objc_msgSend_isEqualToString_(v177, v178, v467, v179);
    v184 = isEqualToString;
    v185 = isEqualToString;
    if (((isEqualToString | v465) & 1) == 0)
    {
      if (i >= v459)
      {
        v185 = 0;
      }

      else
      {
        v186 = objc_msgSend_meshSourceChannels(v464, v181, v182, v183);
        v189 = objc_msgSend_objectAtIndexedSubscript_(v186, v187, i, v188);
        v185 = objc_msgSend_intValue(v189, v190, v191, v192) != 0;
      }
    }

    LODWORD(v468) = v145;
    v193 = v169 + v173;
    if (v184 & 1) != 0 || (v194 = objc_msgSend_semantic(v157, v181, v182, v183), (objc_msgSend_isEqualToString_(v194, v195, v461, v196)) || (v200 = objc_msgSend_semantic(v157, v197, v198, v199), objc_msgSend_isEqualToString_(v200, v201, v460, v202)))
    {
      v482 = 0uLL;
      v483.i64[0] = 0;
      sub_1AF179938(&v482, v161);
      v210 = v161;
      if (v161 >= 1)
      {
        do
        {
          *&v209 = *v193;
          DWORD2(v209) = *(v193 + 8);
          v473 = v209;
          sub_1AF1083F4(&v482, &v473);
          if (v184)
          {
            v214.i64[0] = *v193;
            v214.i32[2] = *(v193 + 8);
            if (v144)
            {
              v215 = v472;
              v215.i32[3] = 0;
              v214.i32[3] = 0;
              v216 = vminnmq_f32(v215, v214);
              v217 = v471;
              v217.i32[3] = 0;
              v471 = vmaxnmq_f32(v217, v214);
              v472 = v216;
              v144 = 1;
            }

            else
            {
              v144 = 1;
              v471 = v214;
              v472 = v214;
            }
          }

          v193 += objc_msgSend_dataStride(v157, v211, v212, v213);
          --v210;
        }

        while (v210);
      }

      *&v473 = objc_msgSend_semantic(v157, v206, v207, v208);
      v220 = sub_1AF33E508(&v473, v185, v218, v219);
      v221 = v185;
      v222 = qword_1EB658D90;
      v226 = objc_msgSend_semantic(v157, v223, v224, v225);
      v229 = objc_msgSend_isEqualToString_(v226, v227, v467, v228);
      v232 = &qword_1EB658E50;
      if ((v229 & 1) == 0)
      {
        v233 = objc_msgSend_isEqualToString_(v226, v230, v461, v231);
        v232 = &qword_1EB658E48;
        if ((v233 & 1) == 0)
        {
          v235 = objc_msgSend_isEqualToString_(v226, v230, v456, v234);
          v232 = &qword_1EB658E60;
          if ((v235 & 1) == 0)
          {
            v237 = objc_msgSend_isEqualToString_(v226, v230, v460, v236);
            v232 = &qword_1EB658E40;
            if (v237)
            {
              v232 = &qword_1EB658E38;
            }
          }
        }
      }

      v238 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v230, v463, v220, v222, *v232);
      objc_msgSend_setFloat3Array_count_(v238, v239, v482.i64[0], v161);
      if (v221)
      {
        if ((v184 & 1) == 0)
        {
          v243 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v240, @"faceVarying", v242);
          v246 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v244, v243, v245);
          objc_msgSend_setMetadataWithKey_value_(v238, v247, @"interpolation", v246);
        }

        *&v473 = objc_msgSend_semantic(v157, v240, v241, v242);
        v251 = sub_1AF33E5D0(&v473, v248, v249, v250);
        v256 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v252, v463, v251, qword_1EB658DA0, qword_1EB658E40);
        if (v457)
        {
          v257 = objc_msgSend_meshSourceChannels(v464, v253, v254, v255);
          v260 = objc_msgSend_objectAtIndexedSubscript_(v257, v258, i, v259);
          v264 = objc_msgSend_intValue(v260, v261, v262, v263);
        }

        else
        {
          v264 = 0;
        }

        objc_msgSend_setIntArray_count_(v256, v253, *&v470[24 * v264], (*&v470[24 * v264 + 8] - *&v470[24 * v264]) >> 2);
      }

      else
      {
        v265 = objc_msgSend_semantic(v157, v240, v241, v242);
        if (objc_msgSend_isEqualToString_(v265, v266, v460, v267))
        {
          v268 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v141, @"vertex", v143);
          v271 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v269, v268, v270);
          objc_msgSend_setMetadataWithKey_value_(v238, v272, @"interpolation", v271);
        }
      }

      if (v482.i64[0])
      {
        v482.i64[1] = v482.i64[0];
        operator delete(v482.i64[0]);
      }

LABEL_120:
      v145 = v468;
      goto LABEL_121;
    }

    v273 = objc_msgSend_semantic(v157, v203, v204, v205);
    if (!objc_msgSend_isEqualToString_(v273, v274, v456, v275))
    {
      goto LABEL_120;
    }

    v482 = 0uLL;
    v483.i64[0] = 0;
    sub_1AF33E688(&v482, v161);
    v280 = v161;
    if (v161 >= 1)
    {
      do
      {
        LODWORD(v279) = *v193;
        *(&v279 + 1) = 1.0 - *(v193 + 4);
        v281 = v482.i64[1];
        if (v482.i64[1] >= v483.i64[0])
        {
          v466 = v279;
          v283 = (v482.i64[1] - v482.i64[0]) >> 3;
          if ((v283 + 1) >> 61)
          {
            sub_1AF10A1D0();
          }

          v284 = (v483.i64[0] - v482.i64[0]) >> 2;
          if (v284 <= v283 + 1)
          {
            v284 = v283 + 1;
          }

          if (v483.i64[0] - v482.i64[0] >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v285 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v285 = v284;
          }

          if (v285)
          {
            sub_1AF1233A0(&v482, v285);
          }

          *(8 * v283) = v466;
          v282 = 8 * v283 + 8;
          v286 = (8 * v283 - (v482.i64[1] - v482.i64[0]));
          memcpy(v286, v482.i64[0], v482.i64[1] - v482.i64[0]);
          v287 = v482.i64[0];
          v482.i64[0] = v286;
          v482.i64[1] = v282;
          v483.i64[0] = 0;
          if (v287)
          {
            operator delete(v287);
          }
        }

        else
        {
          *v482.i64[1] = v279;
          v282 = v281 + 8;
        }

        v482.i64[1] = v282;
        v193 += objc_msgSend_dataStride(v157, v276, v277, v278);
        --v280;
      }

      while (v280);
    }

    *&v473 = objc_msgSend_semantic(v157, v276, v277, v278);
    v292 = sub_1AF33E508(&v473, 0, v288, v289);
    v293 = v468;
    if (v468 >= 1)
    {
      v294 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v290, v468, v291);
      v298 = objc_msgSend_stringValue(v294, v295, v296, v297);
      v292 = objc_msgSend_stringByAppendingString_(v292, v299, v298, v300);
    }

    v301 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v290, v463, v292, qword_1EB658D88, qword_1EB658E60);
    objc_msgSend_setFloat2Array_count_(v301, v302, v482.i64[0], v161);
    if (v185)
    {
      v305 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v303, @"faceVarying", v304);
      v308 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v306, v305, v307);
      objc_msgSend_setMetadataWithKey_value_(v301, v309, @"interpolation", v308);
      *&v473 = objc_msgSend_semantic(v157, v310, v311, v312);
      v316 = sub_1AF33E5D0(&v473, v313, v314, v315);
      v321 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v317, v463, v316, qword_1EB658DA0, qword_1EB658E40);
      if (v457)
      {
        v322 = objc_msgSend_meshSourceChannels(v464, v318, v319, v320);
        v325 = objc_msgSend_objectAtIndexedSubscript_(v322, v323, i, v324);
        v329 = objc_msgSend_intValue(v325, v326, v327, v328);
      }

      else
      {
        v329 = 0;
      }

      objc_msgSend_setIntArray_count_(v321, v318, *&v470[24 * v329], (*&v470[24 * v329 + 8] - *&v470[24 * v329]) >> 2);
    }

    else
    {
      v330 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v303, @"vertex", v304);
      v333 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v331, v330, v332);
      objc_msgSend_setMetadataWithKey_value_(v301, v334, @"interpolation", v333);
    }

    if (v482.i64[0])
    {
      v482.i64[1] = v482.i64[0];
      operator delete(v482.i64[0]);
    }

    v145 = v293 + 1;
LABEL_121:
    ++i;
  }

  if (v144)
  {
    v335 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v151, v463, @"extent", qword_1EB658D90, qword_1EB658E40);
    v482 = v472;
    v483 = v471;
    objc_msgSend_setFloat3Array_count_(v335, v336, &v482, 2);
  }

  if (objc_msgSend_meshElementCount(v464, v151, v152, v153) > 1)
  {
    v482 = 0uLL;
    v483.i64[0] = 0;
    v355 = MEMORY[0x1E695DFA8];
    v356 = objc_msgSend_meshElementCount(v464, v337, v338, v339);
    v362 = objc_msgSend_setWithCapacity_(v355, v357, v356, v358);
    v363 = 0;
    for (m = 0; m < objc_msgSend_meshElementCount(v464, v359, v360, v361); ++m)
    {
      v367 = objc_msgSend_meshElementAtIndex_(v464, v365, m, v366);
      v371 = objc_msgSend_materials(v462, v368, v369, v370);
      if (m >= objc_msgSend_count(v371, v372, v373, v374))
      {
        Material = objc_msgSend_firstMaterial(v462, v375, v376, v377);
      }

      else
      {
        v378 = objc_msgSend_materials(v462, v375, v376, v377);
        Material = objc_msgSend_objectAtIndex_(v378, v379, m, v380);
      }

      v385 = Material;
      if (Material)
      {
        v386 = sub_1AF33E728(v458, Material, v383, v384);
        v390 = objc_msgSend_stringValue(v386, v387, v388, v389);
        PathComponent = objc_msgSend_lastPathComponent(v390, v391, v392, v393);
        v397 = objc_msgSend_stringByAppendingPathComponent_(v455, v395, PathComponent, v396);
        v400 = objc_msgSend_stringByAppendingString_(v397, v398, @"_meshGroup", v399);
        if (objc_msgSend_containsObject_(v362, v401, v400, v402))
        {
          v405 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v403, m, v404);
          v409 = objc_msgSend_stringValue(v405, v406, v407, v408);
          v400 = objc_msgSend_stringByAppendingString_(v400, v410, v409, v411);
        }

        objc_msgSend_addObject_(v362, v403, v400, v404);
        v414 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v412, v400, v413);
        v416 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v415, *(v458 + 56), v414, qword_1EB658DF8);
        v418 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v417, v416, @"elementType", qword_1EB658DD0, qword_1EB658E40);
        v421 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v419, @"face", v420);
        objc_msgSend_setTokenValue_(v418, v422, v421, v423);
        v425 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v424, v416, @"familyName", qword_1EB658DD0, qword_1EB658E40);
        v428 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v426, @"materialBind", v427);
        objc_msgSend_setTokenValue_(v425, v429, v428, v430);
        sub_1AF121C28(&v482, 0);
        v434 = 0;
        v435 = v363;
        while (objc_msgSend_primitiveCount(v367, v431, v432, v433) > v434)
        {
          LODWORD(v473) = v435;
          sub_1AF121C58(&v482, &v473);
          ++v434;
          ++v435;
        }

        v437 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v436, v416, @"indices", qword_1EB658DA0, qword_1EB658E40);
        v438 = v482.i64[0];
        v442 = objc_msgSend_primitiveCount(v367, v439, v440, v441);
        objc_msgSend_setIntArray_count_(v437, v443, v438, v442);
        v445 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v444, v416, @"material:binding", qword_1EB658DA8, qword_1EB658E40);
        objc_msgSend_setObjectPath_(v445, v446, v386, v447);
        if (!m && objc_msgSend_isDoubleSided(v385, v382, v383, v384))
        {
          v448 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v382, v463, @"doubleSided", qword_1EB658D48, qword_1EB658E40);
          objc_msgSend_setBoolValue_(v448, v449, 1, v450);
        }
      }

      v363 += objc_msgSend_primitiveCount(v367, v382, v383, v384);
    }

    if (v482.i64[0])
    {
      v482.i64[1] = v482.i64[0];
      operator delete(v482.i64[0]);
    }
  }

  else
  {
    v342 = objc_msgSend_firstMaterial(v462, v337, v338, v339);
    if (v342)
    {
      v343 = sub_1AF33E728(v458, v342, v340, v341);
      v345 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v344, v463, @"material:binding", qword_1EB658DA8, qword_1EB658E40);
      objc_msgSend_setObjectPath_(v345, v346, v343, v347);
      if (objc_msgSend_isDoubleSided(v342, v348, v349, v350))
      {
        v352 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v351, v463, @"doubleSided", qword_1EB658D48, qword_1EB658E40);
        objc_msgSend_setBoolValue_(v352, v353, 1, v354);
      }
    }
  }

  if (v459)
  {
    v451 = &v470[24 * v459 - 24];
    v452 = -24 * v459;
    do
    {
      v453 = *v451;
      if (*v451)
      {
        *(v451 + 1) = v453;
        operator delete(v453);
      }

      v451 -= 24;
      v452 += 24;
    }

    while (v452);
  }

  if (v479)
  {
    v480 = v479;
    operator delete(v479);
  }
}

void sub_1AF33DADC(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    v4 = v1[17] + 24 * v3 - 24;
    v5 = -24 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 -= 24;
      v5 += 24;
    }

    while (v5);
  }

  v7 = v1[35];
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1AF33DC24(uint64_t a1, char *a2, void *a3, void *a4)
{
  v4 = a4;
  *(&v281[1] + 4) = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_model(a4, a2, a3, a4);
  v9 = objc_msgSend_mesh(v5, v6, v7, v8);
  v13 = objc_msgSend_morpher(v4, v10, v11, v12);
  if (objc_msgSend_calculationMode(v13, v14, v15, v16))
  {
    v263 = 0uLL;
  }

  else
  {
    v20 = objc_msgSend_meshSources(v9, v17, v18, v19);
    result = objc_msgSend_count(v20, v21, v22, v23);
    if (result)
    {
      v263 = 0uLL;
      for (i = 0; i < result; ++i)
      {
        v26 = objc_msgSend_meshSources(v9, v17, v18, v19);
        v29 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, i, v28);
        v33 = objc_msgSend_semantic(v29, v30, v31, v32);
        if (objc_msgSend_isEqualToString_(v33, v34, @"kGeometrySourceSemanticPosition", v35))
        {
          *&v263 = v29;
        }

        else
        {
          v39 = objc_msgSend_semantic(v29, v36, v37, v38);
          isEqualToString = objc_msgSend_isEqualToString_(v39, v40, @"kGeometrySourceSemanticNormal", v41);
          v43 = *(&v263 + 1);
          if (isEqualToString)
          {
            v43 = v29;
          }

          *(&v263 + 1) = v43;
        }

        v44 = objc_msgSend_meshSources(v9, v36, v37, v38);
        result = objc_msgSend_count(v44, v45, v46, v47);
      }
    }

    else
    {
      v263 = 0uLL;
    }

    if (v263 == 0)
    {
      return result;
    }
  }

  v48 = MEMORY[0x1E695DF70];
  v49 = objc_msgSend_targets(v13, v17, v18, v19);
  v53 = objc_msgSend_count(v49, v50, v51, v52);
  v258 = objc_msgSend_arrayWithCapacity_(v48, v54, v53, v55);
  v56 = MEMORY[0x1E695DF70];
  v60 = objc_msgSend_targets(v13, v57, v58, v59);
  v64 = objc_msgSend_count(v60, v61, v62, v63);
  v257 = objc_msgSend_arrayWithCapacity_(v56, v65, v64, v66);
  v70 = objc_msgSend_targets(v13, v67, v68, v69);
  if (objc_msgSend_count(v70, v71, v72, v73))
  {
    v262 = 0;
    v264 = v4;
    do
    {
      v77 = objc_msgSend_targets(v13, v74, v75, v76);
      v80 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, v262, v79);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v138 = sub_1AF0D5194();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF92A0(v280, v80, v281, v138);
        }

        goto LABEL_74;
      }

      v83 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v81, v262, v82);
      v87 = objc_msgSend_stringValue(v83, v84, v85, v86);
      v90 = objc_msgSend_stringByAppendingString_(@"blendShape", v88, v87, v89);
      v93 = objc_msgSend_stringByAppendingPathComponent_(a3, v91, v90, v92);
      v96 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v94, v93, v95);
      v98 = sub_1AF341EE8(a1, v90, a3, v97);
      v101 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v99, v98, v100);
      objc_msgSend_addObject_(v258, v102, v101, v103);
      objc_msgSend_addObject_(v257, v104, v96, v105);
      v259 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v106, *(a1 + 56), v96, qword_1EB658E28);
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v277 = 0;
      v278 = 0;
      v279 = 0;
      v274 = 0;
      v275 = 0;
      v276 = 0;
      while (1)
      {
        v115 = objc_msgSend_meshSources(v80, v107, v108, v109);
        if (v112 >= objc_msgSend_count(v115, v116, v117, v118))
        {
          break;
        }

        v122 = objc_msgSend_meshSources(v80, v119, v120, v121);
        v125 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, v112, v124);
        v129 = objc_msgSend_semantic(v125, v126, v127, v128);
        if (objc_msgSend_isEqualToString_(v129, v130, @"kGeometrySourceSemanticPosition", v131))
        {
          v111 = objc_msgSend_vectorCount(v125, v132, v133, v134);
          sub_1AF179938(&v277, v111);
        }

        else
        {
          v135 = objc_msgSend_semantic(v125, v132, v133, v134);
          if (objc_msgSend_isEqualToString_(v135, v136, @"kGeometrySourceSemanticNormal", v137))
          {
            v110 = objc_msgSend_vectorCount(v125, v107, v108, v109);
            sub_1AF179938(&v274, v110);
            v113 = v125;
          }

          v125 = v114;
        }

        ++v112;
        v114 = v125;
      }

      if (v111 <= v110)
      {
        v142 = v110;
      }

      else
      {
        v142 = v111;
      }

      v271 = 0;
      v272 = 0;
      v273 = 0;
      sub_1AF17A60C(&v271, v142);
      if (v114)
      {
        v147 = (objc_msgSend_calculationMode(v13, v143, v144, v145) | v263) != 0;
        if (v113)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v147 = 0;
        if (v113)
        {
LABEL_33:
          v148 = (objc_msgSend_calculationMode(v13, v143, v144, v145) | *(&v263 + 1)) != 0;
          goto LABEL_36;
        }
      }

      v148 = 0;
LABEL_36:
      v270 = 0;
      if (v142 >= 1)
      {
        do
        {
          *&v146 = 0;
          v266 = v146;
          *&v146 = 0;
          v265 = v146;
          v267 = 0.0;
          *&v146 = 0;
          v268 = v146;
          if (v147)
          {
            v149 = objc_msgSend_data(v114, v143, v144, v145);
            v153 = objc_msgSend_bytes(v149, v150, v151, v152);
            v157 = objc_msgSend_dataOffset(v114, v154, v155, v156);
            v158 = v270;
            v162 = v153 + v157 + objc_msgSend_dataStride(v114, v159, v160, v161) * v158;
            *&v163 = *v162;
            v268 = v163;
            v267 = *(v162 + 8);
            if (!objc_msgSend_calculationMode(v13, v164, v165, v166))
            {
              v167 = objc_msgSend_data(v263, v143, v144, v145);
              v171 = objc_msgSend_bytes(v167, v168, v169, v170);
              v175 = objc_msgSend_dataOffset(v263, v172, v173, v174);
              v176 = v270;
              v180 = (v171 + v175 + objc_msgSend_dataStride(v263, v177, v178, v179) * v176);
              *(&v181 + 1) = *(&v268 + 1);
              *&v181 = vsub_f32(*&v268, *v180);
              v268 = v181;
              v267 = v267 - v180[1].f32[0];
            }

            v4 = v264;
          }

          if (v148)
          {
            v182 = objc_msgSend_data(v113, v143, v144, v145);
            v186 = objc_msgSend_bytes(v182, v183, v184, v185);
            v190 = objc_msgSend_dataOffset(v113, v187, v188, v189);
            v191 = v270;
            v195 = v186 + v190 + objc_msgSend_dataStride(v113, v192, v193, v194) * v191;
            *&v196 = *v195;
            v266 = v196;
            LODWORD(v196) = *(v195 + 8);
            v265 = v196;
            if (!objc_msgSend_calculationMode(v13, v197, v198, v199))
            {
              v200 = objc_msgSend_data(*(&v263 + 1), v143, v144, v145);
              v204 = objc_msgSend_bytes(v200, v201, v202, v203);
              v208 = objc_msgSend_dataOffset(*(&v263 + 1), v205, v206, v207);
              v209 = v270;
              v213 = (v204 + v208 + objc_msgSend_dataStride(*(&v263 + 1), v210, v211, v212) * v209);
              *(&v214 + 1) = *(&v266 + 1);
              *&v214 = vsub_f32(*&v266, *v213);
              v266 = v214;
              v215 = v265;
              *&v215 = *&v265 - v213[1].f32[0];
              v265 = v215;
            }

            v4 = v264;
          }

          if (*&v268 != 0.0 || (v216.i32[0] = vdup_lane_s32(*&v268, 1).u32[0], v216.i64[1] = v266, v216.f32[1] = v267, (vaddvq_s32(vbicq_s8(xmmword_1AFE20C60, vceqzq_f32(v216))) & 0xF) != 0) || (*(&v146 + 1) = *(&v265 + 1), *&v265 != 0.0))
          {
            if (v147)
            {
              v217 = v268;
              *(&v217 + 2) = v267;
              v269 = v217;
              sub_1AF1083F4(&v277, &v269);
            }

            if (v148)
            {
              v218 = v266;
              DWORD2(v218) = v265;
              v269 = v218;
              sub_1AF1083F4(&v274, &v269);
            }

            sub_1AF121C58(&v271, &v270);
          }

          v219 = ++v270;
        }

        while (v142 > v219);
      }

      if (v278 != v277)
      {
        v220 = objc_msgSend_semantic(v114, v143, v144, v145);
        v223 = objc_msgSend_isEqualToString_(v220, v221, @"kGeometrySourceSemanticPosition", v222);
        v225 = @"offsets";
        if ((v223 & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v220, v224, @"kGeometrySourceSemanticNormal", @"offsets"))
          {
            v226 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v224, v259, @"normalOffsets", qword_1EB658D90, qword_1EB658E58);
LABEL_60:
            objc_msgSend_setFloat3Array_count_(v226, v227, v277, (v278 - v277) >> 4);
            goto LABEL_61;
          }

          v225 = &stru_1F2575650;
        }

        v226 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v224, v259, v225, qword_1EB658D90, qword_1EB658E58);
        goto LABEL_60;
      }

LABEL_61:
      if (v275 != v274)
      {
        v228 = objc_msgSend_semantic(v113, v143, v144, v145);
        v231 = objc_msgSend_isEqualToString_(v228, v229, @"kGeometrySourceSemanticPosition", v230);
        v233 = @"offsets";
        if ((v231 & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v228, v232, @"kGeometrySourceSemanticNormal", @"offsets"))
          {
            v234 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v232, v259, @"normalOffsets", qword_1EB658D90, qword_1EB658E58);
LABEL_67:
            objc_msgSend_setFloat3Array_count_(v234, v235, v274, (v275 - v274) >> 4);
            goto LABEL_68;
          }

          v233 = &stru_1F2575650;
        }

        v234 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v232, v259, v233, qword_1EB658D90, qword_1EB658E58);
        goto LABEL_67;
      }

LABEL_68:
      v236 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v143, v259, @"pointIndices", qword_1EB658DA0, qword_1EB658E40);
      objc_msgSend_setIntArray_count_(v236, v237, v271, (v272 - v271) >> 2);
      if (v271)
      {
        v272 = v271;
        operator delete(v271);
      }

      if (v274)
      {
        v275 = v274;
        operator delete(v274);
      }

      if (v277)
      {
        v278 = v277;
        operator delete(v277);
      }

LABEL_74:
      v238 = objc_msgSend_targets(v13, v139, v140, v141);
      ++v262;
    }

    while (v262 < objc_msgSend_count(v238, v239, v240, v241));
  }

  v242 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v74, a2, @"skel:blendShapes", qword_1EB658DD8, qword_1EB658E40);
  objc_msgSend_setTokenArray_(v242, v243, v258, v244);
  v246 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v245, a2, @"skel:blendShapeTargets", qword_1EB658DB0, qword_1EB658E40);
  objc_msgSend_setObjectPathArray_(v246, v247, v257, v248);
  result = objc_msgSend_applyType_(a2, v249, qword_1EB658E68, v250);
  v251 = *(a1 + 424);
  if (v251)
  {
    v252 = a1 + 424;
    do
    {
      v253 = *(v251 + 32);
      v254 = v253 >= v4;
      v255 = v253 < v4;
      if (v254)
      {
        v252 = v251;
      }

      v251 = *(v251 + 8 * v255);
    }

    while (v251);
    if (v252 != a1 + 424 && *(v252 + 32) <= v4)
    {
      *(*(v252 + 40) + 24) = v258;
    }
  }

  return result;
}

void sub_1AF33E484(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 160);
  if (v4)
  {
    *(v1 - 152) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 136);
  if (v5)
  {
    *(v1 - 128) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_1AF33E508(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (objc_msgSend_isEqualToString_(*a1, a2, @"kGeometrySourceSemanticPosition", a4))
  {
    return @"points";
  }

  if (objc_msgSend_isEqualToString_(*a1, v6, @"kGeometrySourceSemanticNormal", v7))
  {
    v11 = @"normals";
    v12 = @"primvars:normals";
    v13 = v4 == 0;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(*a1, v9, @"kGeometrySourceSemanticTexcoord", v10))
    {
      return @"primvars:st";
    }

    isEqualToString = objc_msgSend_isEqualToString_(*a1, v14, @"kGeometrySourceSemanticColor", v15);
    v11 = &stru_1F2575650;
    v12 = @"primvars:displayColor";
    v13 = isEqualToString == 0;
  }

  if (v13)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

__CFString *sub_1AF33E5D0(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(*a1, a2, @"kGeometrySourceSemanticPosition", a4))
  {
    return @"faceVertexIndices";
  }

  if (objc_msgSend_isEqualToString_(*a1, v5, @"kGeometrySourceSemanticNormal", v6))
  {
    return @"primvars:normals:indices";
  }

  if (objc_msgSend_isEqualToString_(*a1, v8, @"kGeometrySourceSemanticTexcoord", v9))
  {
    return @"primvars:st:indices";
  }

  if (objc_msgSend_isEqualToString_(*a1, v10, @"kGeometrySourceSemanticColor", v11))
  {
    return @"primvars:displayColor:indices";
  }

  return &stru_1F2575650;
}

void *sub_1AF33E688(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1AF1233A0(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void *sub_1AF33E728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v215[2] = *MEMORY[0x1E69E9840];
  v210 = a2;
  v5 = *(a1 + 128);
  v204 = a1 + 120;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 128;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 128 && *(v6 + 32) <= a2)
  {
    __p.__r_.__value_.__r.__words[0] = &v210;
    return sub_1AF33AD00(v204, &v210)[5];
  }

  else
  {
LABEL_9:
    v10 = objc_msgSend_name(a2, a2, a3, a4);
    if (!v10 || (v14 = v10, !objc_msgSend_length(v10, v11, v12, v13)))
    {
      v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v11, *(v4 + 136), v13);
      v19 = objc_msgSend_stringValue(v15, v16, v17, v18);
      v14 = objc_msgSend_stringByAppendingString_(@"Material_", v20, v19, v21);
    }

    v22 = sub_1AF338AE8(v14, v11);
    v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
    sub_1AF13D250(&__p, v26);
    v30 = v4 + 152;
    if (v4 + 152 != sub_1AF33C394(v4 + 144, &__p.__r_.__value_.__l.__data_))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      sub_1AF340C28(&__str, size + 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(p_str, p_p, size);
      }

      *(&p_str->__r_.__value_.__l.__data_ + size) = 95;
      std::to_string(&v211, *(v4 + 160));
      if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v211;
      }

      else
      {
        v34 = v211.__r_.__value_.__r.__words[0];
      }

      if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v211.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&__str, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      *&v213[1] = *(&v36->__r_.__value_.__l + 2);
      v213[0] = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v211.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v30 != sub_1AF33C394(v4 + 144, v213))
      {
        v40 = 1;
        do
        {
          v41 = v4;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = __p.__r_.__value_.__l.__size_;
          }

          sub_1AF340C28(&__str, v42 + 4);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &__str;
          }

          else
          {
            v43 = __str.__r_.__value_.__r.__words[0];
          }

          if (v42)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v44 = &__p;
            }

            else
            {
              v44 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v43, v44, v42);
          }

          strcpy(v43 + v42, "_un_");
          std::to_string(&v211, v40);
          if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &v211;
          }

          else
          {
            v45 = v211.__r_.__value_.__r.__words[0];
          }

          if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = v211.__r_.__value_.__l.__size_;
          }

          v47 = std::string::append(&__str, v45, v46);
          v4 = v41;
          v48 = v47->__r_.__value_.__r.__words[0];
          v215[0] = v47->__r_.__value_.__l.__size_;
          *(v215 + 7) = *(&v47->__r_.__value_.__r.__words[1] + 7);
          v49 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v213[1]) < 0)
          {
            operator delete(*&v213[0]);
          }

          *&v213[0] = v48;
          *(&v213[0] + 1) = v215[0];
          *(v213 + 15) = *(v215 + 7);
          BYTE7(v213[1]) = v49;
          if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v211.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          ++v40;
        }

        while (v30 != sub_1AF33C394(v4 + 144, v213));
      }

      if ((SBYTE7(v213[1]) & 0x80u) == 0)
      {
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v38, v213, v39);
      }

      else
      {
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v38, *&v213[0], v39);
      }

      v22 = v50;
      if (SBYTE7(v213[1]) < 0)
      {
        operator delete(*&v213[0]);
      }
    }

    v51 = objc_msgSend_UTF8String(v22, v27, v28, v29);
    sub_1AF13D250(v213, v51);
    sub_1AF340CB4(v4 + 144, v213);
    if (SBYTE7(v213[1]) < 0)
    {
      operator delete(*&v213[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v55 = sub_1AF33F5F8(v4, v52, v53, v54);
    v58 = objc_msgSend_stringByAppendingPathComponent_(v55, v56, v22, v57);
    v61 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v59, v58, v60);
    v203 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v62, *(v4 + 56), v61, qword_1EB658DE8);
    v65 = objc_msgSend_stringByAppendingPathComponent_(v58, v63, @"surfaceShader", v64);
    v68 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v66, v65, v67);
    v70 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v69, *(v4 + 56), v68, qword_1EB658E08);
    v72 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v71, v70, @"info:id", qword_1EB658DD0, qword_1EB658E40);
    v75 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v73, @"UsdPreviewSurface", v74);
    objc_msgSend_setTokenValue_(v72, v76, v75, v77);
    objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v78, v70, @"outputs:surface", qword_1EB658DD0, qword_1EB658E40);
    v82 = objc_msgSend_emission(v210, v79, v80, v81);
    if (objc_msgSend_selfIllumination(v210, v83, v84, v85))
    {
      v89 = objc_msgSend_selfIllumination(v210, v86, v87, v88);
      objc_msgSend_contents(v89, v90, v91, v92);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!objc_msgSend_emission(v210, v93, v94, v95) || (v99 = objc_msgSend_emission(v210, v96, v97, v98), objc_msgSend_contents(v99, v100, v101, v102), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (v106 = objc_msgSend_emission(v210, v103, v104, v105), objc_msgSend_contents(v106, v107, v108, v109), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v82 = objc_msgSend_selfIllumination(v210, v96, v97, v98);
        }
      }
    }

    memset(v213, 0, 24);
    sub_1AF33F664(v213, 8uLL);
    v113 = objc_msgSend_normal(v210, v110, v111, v112);
    sub_1AF13D250(&__str, "rgb");
    sub_1AF341028(&__p, @"normal", v113, &qword_1EB658E48, &__str, 0);
    v117 = *(&v213[0] + 1);
    if (*(&v213[0] + 1) >= *&v213[1])
    {
      *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v206[0]);
      }
    }

    else
    {
      v118 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v117 = v118;
      v119 = *v206;
      *(v117 + 40) = v207;
      *(v117 + 24) = v119;
      v206[1] = 0;
      v207 = 0;
      v206[0] = 0;
      v120 = v209;
      *(v117 + 48) = v208;
      *(v117 + 64) = v120;
      *(&v213[0] + 1) = v117 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v121 = *(&v213[0] + 1);
    if (!objc_msgSend_shadingModel(v210, v114, v115, v116))
    {
      v125 = objc_msgSend_metalness(v210, v122, v123, v124);
      sub_1AF13D250(&__str, "r");
      sub_1AF341028(&__p, @"metallic", v125, &qword_1EB658E40, &__str, 0);
      v129 = *(&v213[0] + 1);
      if (*(&v213[0] + 1) >= *&v213[1])
      {
        *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
        if (SHIBYTE(v207) < 0)
        {
          operator delete(v206[0]);
        }
      }

      else
      {
        v130 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v129 = v130;
        v131 = *v206;
        *(v129 + 40) = v207;
        *(v129 + 24) = v131;
        v206[1] = 0;
        v207 = 0;
        v206[0] = 0;
        v132 = v209;
        *(v129 + 48) = v208;
        *(v129 + 64) = v132;
        *(&v213[0] + 1) = v129 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v134 = objc_msgSend_roughness(v210, v126, v127, v128);
      sub_1AF13D250(&__str, "r");
      sub_1AF341028(&__p, @"roughness", v134, &qword_1EB658E40, &__str, 0);
      v135 = *(&v213[0] + 1);
      if (*(&v213[0] + 1) >= *&v213[1])
      {
        *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
        if (SHIBYTE(v207) < 0)
        {
          operator delete(v206[0]);
        }
      }

      else
      {
        v136 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v135 = v136;
        v137 = *v206;
        *(v135 + 40) = v207;
        *(v135 + 24) = v137;
        v206[1] = 0;
        v207 = 0;
        v206[0] = 0;
        v138 = v209;
        *(v135 + 48) = v208;
        *(v135 + 64) = v138;
        *(&v213[0] + 1) = v135 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v139 = objc_msgSend_diffuse(v210, v122, v123, v124);
    sub_1AF13D250(&__str, "rgb");
    sub_1AF341028(&__p, @"diffuseColor", v139, &qword_1EB658E38, &__str, 0);
    v140 = *(&v213[0] + 1);
    if (*(&v213[0] + 1) >= *&v213[1])
    {
      *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v206[0]);
      }
    }

    else
    {
      v141 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v140 = v141;
      v142 = *v206;
      *(v140 + 40) = v207;
      *(v140 + 24) = v142;
      v206[1] = 0;
      v207 = 0;
      v206[0] = 0;
      v143 = v209;
      *(v140 + 48) = v208;
      *(v140 + 64) = v143;
      *(&v213[0] + 1) = v140 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_1AF13D250(&__str, "rgb");
    sub_1AF341028(&__p, @"emissiveColor", v82, &qword_1EB658E38, &__str, 0);
    v147 = *(&v213[0] + 1);
    if (*(&v213[0] + 1) >= *&v213[1])
    {
      *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v206[0]);
      }
    }

    else
    {
      v148 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v147 = v148;
      v149 = *v206;
      *(v147 + 40) = v207;
      *(v147 + 24) = v149;
      v206[1] = 0;
      v207 = 0;
      v206[0] = 0;
      v150 = v209;
      *(v147 + 48) = v208;
      *(v147 + 64) = v150;
      *(&v213[0] + 1) = v147 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v151 = objc_msgSend_transparent(v210, v144, v145, v146);
    sub_1AF13D250(&__str, "a");
    LODWORD(v152) = 1.0;
    v156 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v153, v154, v155, v152);
    sub_1AF341028(&__p, @"opacity", v151, &qword_1EB658E40, &__str, v156);
    v160 = *(&v213[0] + 1);
    if (*(&v213[0] + 1) >= *&v213[1])
    {
      *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v206[0]);
      }
    }

    else
    {
      v161 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v160 = v161;
      v162 = *v206;
      *(v160 + 40) = v207;
      *(v160 + 24) = v162;
      v206[1] = 0;
      v207 = 0;
      v206[0] = 0;
      v163 = v209;
      *(v160 + 48) = v208;
      *(v160 + 64) = v163;
      *(&v213[0] + 1) = v160 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v164 = objc_msgSend_ambientOcclusion(v210, v157, v158, v159);
    sub_1AF13D250(&__str, "r");
    sub_1AF341028(&__p, @"occlusion", v164, &qword_1EB658E40, &__str, 0);
    v168 = *(&v213[0] + 1);
    if (*(&v213[0] + 1) >= *&v213[1])
    {
      *(&v213[0] + 1) = sub_1AF340ED8(v213, &__p);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v206[0]);
      }
    }

    else
    {
      v169 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v213[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v168 = v169;
      v170 = *v206;
      *(v168 + 40) = v207;
      *(v168 + 24) = v170;
      v206[1] = 0;
      v207 = 0;
      v206[0] = 0;
      v171 = v209;
      *(v168 + 48) = v208;
      *(v168 + 64) = v171;
      *(&v213[0] + 1) = v168 + 80;
    }

    v199 = v121;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v172 = *(&v213[0] + 1);
    v173 = *&v213[0];
    if (*&v213[0] != *(&v213[0] + 1))
    {
      do
      {
        v174 = *(v173 + 8);
        if (v174 && objc_msgSend_contents(v174, v165, v166, v167))
        {
          *(v173 + 56) = sub_1AF33F740(v4, *(v173 + 8), v166, v167);
        }

        v173 += 80;
      }

      while (v173 != v172);
      v172 = *(&v213[0] + 1);
      v173 = *&v213[0];
    }

    v200 = v68;
    v201 = v58;
    v202 = v61;
    if (v172 != v173)
    {
      v175 = 0;
      do
      {
        v176 = v173 + 80 * v175;
        if (*(v176 + 56))
        {
          v177 = *(v176 + 64) == 0;
        }

        else
        {
          v177 = 0;
        }

        if (v177)
        {
          v179 = *v176;
          memset(&__p, 0, sizeof(__p));
          __str.__r_.__value_.__r.__words[0] = v173 + 80 * v175;
          sub_1AF141BD4(&__p, &__str);
          v178 = v175 + 1;
          v172 = *(&v213[0] + 1);
          v173 = *&v213[0];
          if (v175 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v213[0] + 1) - *&v213[0]) >> 4))
          {
            v181 = v70;
            v182 = 80 * v175;
            v183 = v175 + 1;
            do
            {
              v184 = v173 + v182;
              if (objc_msgSend_isEqualToString_(*(v176 + 56), v165, *(v173 + v182 + 136), v180, v199))
              {
                v185 = objc_msgSend_stringByAppendingString_(v179, v165, @"_", v180);
                v179 = objc_msgSend_stringByAppendingString_(v185, v186, *(v184 + 80), v187);
                __str.__r_.__value_.__r.__words[0] = v184 + 80;
                sub_1AF141BD4(&__p, &__str);
              }

              ++v183;
              v172 = *(&v213[0] + 1);
              v173 = *&v213[0];
              v182 += 80;
            }

            while (v183 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v213[0] + 1) - *&v213[0]) >> 4));
            v70 = v181;
          }

          v188 = *&__p.__r_.__value_.__l.__data_;
          v189 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            do
            {
              v190 = *v189++;
              *(v190 + 64) = v179;
            }

            while (v189 != *(&v188 + 1));
          }

          if (v188)
          {
            __p.__r_.__value_.__l.__size_ = v188;
            operator delete(v188);
            v172 = *(&v213[0] + 1);
            v173 = *&v213[0];
          }
        }

        else
        {
          v178 = v175 + 1;
        }

        v175 = v178;
      }

      while (v178 < 0xCCCCCCCCCCCCCCCDLL * ((v172 - v173) >> 4));
    }

    for (i = v202; v173 != v172; v173 += 80)
    {
      sub_1AF33FC84(v4, v173, v199 - 80, v201, v70, v203, v202);
    }

    v191 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v165, v203, @"outputs:surface", qword_1EB658DD0, qword_1EB658E40, v199);
    v214 = objc_msgSend_pathByAppendingPropertyComponent_(v200, v192, @"outputs:surface", v193);
    v195 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v194, &v214, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v191, v196, v195, v197);
    __str.__r_.__value_.__r.__words[0] = &v210;
    sub_1AF33AD00(v204, &v210)[5] = v202;
    __p.__r_.__value_.__r.__words[0] = v213;
    sub_1AF341E44(&__p);
  }

  return i;
}

void sub_1AF33F470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  a16 = (v44 - 160);
  sub_1AF341E44(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF33F5F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 40);
  if (!result)
  {
    v6 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), a2, @"Materials", a4);
    *(a1 + 40) = v6;
    v9 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v7, v6, v8);
    objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v10, *(a1 + 56), v9, qword_1EB658E00);
    return *(a1 + 40);
  }

  return result;
}

void *sub_1AF33F664(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      sub_1AF340D58(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void sub_1AF33F72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AF340E44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF33F740(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_contents(a2, a2, a3, a4);
  v10 = *(a1 + 176);
  if (v10)
  {
    v11 = a1 + 176;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= v6;
      v14 = v12 < v6;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 176 && v6 >= *(v11 + 32))
    {
      v132 = objc_msgSend_contents(a2, v7, v8, v9);
      v133 = &v132;
      return sub_1AF33AD00(a1 + 168, &v132)[5];
    }
  }

  v132 = 0;
  objc_msgSend_contents(a2, v7, v8, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_msgSend_contents(a2, v15, v16, v17), objc_opt_class(), (objc_opt_isKindOfClass()) || objc_msgSend_contentsAbsoluteURL(a2, v15, v16, v17))
  {
    v18 = objc_msgSend_contentsAbsoluteURL(a2, v15, v16, v17);
    v19 = sub_1AF341548(v18);
    if (v19 || (v23 = objc_msgSend_contents(a2, v20, v21, v22), (v19 = sub_1AF341548(v23)) != 0))
    {
      v24 = v19;
      v25 = objc_msgSend_pathExtension(v19, v20, v21, v22);
      v29 = objc_msgSend_lowercaseString(v25, v26, v27, v28);
      PathComponent = objc_msgSend_lastPathComponent(v24, v30, v31, v32);
      v37 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v34, v35, v36);
      v39 = sub_1AF338AE8(v37, v38);
      v42 = objc_msgSend_stringByAppendingPathExtension_(v39, v40, v29, v41);
      LOBYTE(v133) = 0;
      v43 = sub_1AF3410FC(a1, v42, v24, &v133);
      if (v43 < 1)
      {
        v53 = @"textures";
        v56 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v44, v42, v45);
      }

      else
      {
        v46 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v44, v43, v45);
        v50 = objc_msgSend_stringValue(v46, v47, v48, v49);
        v53 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v51, v50, v52);
        v56 = objc_msgSend_stringByAppendingPathComponent_(v53, v54, v42, v55);
      }

      v59 = v56;
      if (v133 == 1)
      {
        v60 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v57, v56, v58);
        v64 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v61, v62, v63);
        v67 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v65, v53, v66);
        objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v64, v68, v67, 1, 0, &v132);
        objc_msgSend_copyItemAtPath_toPath_error_(v64, v69, v24, v60, &v132);
      }

      return v59;
    }
  }

  else
  {
    objc_msgSend_contents(a2, v15, v16, v17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"texgen_%lu.png", v22, *(a1 + 184));
      v59 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v71, v70, v72);
      v75 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v73, v59, v74);
      v131 = objc_msgSend_contents(a2, v76, v77, v78);
      v133 = &v131;
      sub_1AF33AD00(a1 + 168, &v131)[5] = v59;
      v82 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v79, v80, v81);
      v85 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v83, @"textures", v84);
      objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v82, v86, v85, 1, 0, &v132);
      v90 = objc_msgSend_contents(a2, v87, v88, v89);
      v93 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v91, v75, v92);
      objc_msgSend_writeToURL_(v90, v94, v93, v95);
      return v59;
    }
  }

  CFXImageRef = objc_msgSend_getCFXImageRef(a2, v20, v21, v22);
  v131 = CFXImageRef;
  if (!CFXImageRef)
  {
    return 0;
  }

  v97 = CFXImageRef;
  v98 = *(a1 + 200);
  if (v98)
  {
    v99 = a1 + 192;
    v100 = a1 + 200;
    do
    {
      v101 = *(v98 + 32);
      v13 = v101 >= v97;
      v102 = v101 < v97;
      if (v13)
      {
        v100 = v98;
      }

      v98 = *(v98 + 8 * v102);
    }

    while (v98);
    if (v100 != a1 + 200 && v97 >= *(v100 + 32))
    {
      v117 = MEMORY[0x1E696AEC0];
      v133 = &v131;
      v118 = sub_1AF341D08(v99, &v131);
      v121 = v118 + 5;
      if (*(v118 + 63) < 0)
      {
        v121 = *v121;
      }

      return objc_msgSend_stringWithUTF8String_(v117, v119, v121, v120);
    }
  }

  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v126 = sub_1AF34133C;
  v127 = &unk_1E7A7F2F0;
  v128 = a2;
  v129 = a1;
  v130 = v97;
  v103 = sub_1AF197210(v97, 0);
  if (!v103 && ((v114 = sub_1AF197458(v97)) == 0 || (v103 = CFRetain(v114)) == 0) || (v104 = v103, v105 = CGImageSourceCreateWithData(v103, 0), Type = CGImageSourceGetType(v105), v109 = objc_msgSend_typeWithIdentifier_(MEMORY[0x1E6982C40], v107, Type, v108), v113 = objc_msgSend_preferredFilenameExtension(v109, v110, v111, v112), v124[0] = MEMORY[0x1E69E9820], v124[1] = 3221225472, v124[2] = sub_1AF341490, v124[3] = &unk_1E7A7F310, v124[4] = v104, v59 = (v126)(v125, v113, v124), CFRelease(v104), CFRelease(v105), !v59))
  {
    v115 = sub_1AF196A24(v97);
    if (v115)
    {
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v123[2] = sub_1AF3414A0;
      v123[3] = &unk_1E7A7F310;
      v123[4] = v115;
      return (v126)(v125, @"png", v123);
    }

    return 0;
  }

  return v59;
}

void *sub_1AF33FC84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v367[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  if (!v8 || !objc_msgSend_contents(v8, a2, a3, a4))
  {
    return 0;
  }

  if (!*(a2 + 56))
  {
    v52 = objc_msgSend_stringByAppendingString_(@"inputs:", v15, *a2, v16);
    objc_msgSend_contents(*(a2 + 8), v53, v54, v55);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v60 = objc_msgSend_contents(*(a2 + 8), v57, v58, v59);
    if (isKindOfClass)
    {
      v360.n128_u64[0] = 0;
      v355 = 0.0;
      v356.n128_u64[0] = 0;
      v354.i64[0] = 0;
      objc_msgSend_getRed_green_blue_alpha_(v60, v61, &v360, &v356, &v354, &v355);
      *&v64 = v360.n128_f64[0];
      v65 = (a2 + 24);
      v66 = *(a2 + 47);
      if ((v66 & 0x80) != 0)
      {
        if (*(a2 + 32) == 1)
        {
          v170 = **v65;
          if (v170 == 103)
          {
            goto LABEL_58;
          }

          if (v170 == 114)
          {
            goto LABEL_35;
          }
        }

        if (*(a2 + 32) == 1)
        {
          v67 = **v65;
          goto LABEL_41;
        }
      }

      else if (v66 == 1)
      {
        v67 = *v65;
        if (v67 != 103)
        {
          if (v67 != 114)
          {
LABEL_41:
            if (v67 == 98)
            {
              v347 = *v354.i64;
              v171 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v62, a5, v52, qword_1EB658D68, *(a2 + 16), v355, v64);
              *&v175 = sub_1AF341DDC(a2);
              v176 = v347;
              goto LABEL_59;
            }

            goto LABEL_43;
          }

LABEL_35:
          v352 = v360.n128_f64[0];
          v171 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v62, a5, v52, qword_1EB658D68, *(a2 + 16), v355);
          *&v175 = sub_1AF341DDC(a2);
          v176 = v352;
LABEL_59:
          *&v175 = *&v175 * v176;
          goto LABEL_60;
        }

LABEL_58:
        v349 = v356.n128_f64[0];
        *&v63 = *v354.i64;
        v171 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v62, a5, v52, qword_1EB658D68, *(a2 + 16), v355, v64, v63);
        *&v175 = sub_1AF341DDC(a2);
        v176 = v349;
        goto LABEL_59;
      }

LABEL_43:
      if ((v66 & 0x80) != 0)
      {
        if (*(a2 + 32) != 1)
        {
LABEL_50:
          v348 = v356.n128_f64[0];
          v353 = v360.n128_f64[0];
          v179 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v62, a5, v52, qword_1EB658D78, *(a2 + 16), v355);
LABEL_120:
          objc_msgSend_setFloat3Value_(v179, v180, v181, v182, COERCE_DOUBLE(__PAIR64__(LODWORD(v348), LODWORD(v353))));
          return 0;
        }

        v65 = *v65;
      }

      else if (v66 != 1)
      {
        goto LABEL_50;
      }

      v177 = *(a2 + 16);
      if (*v65 != 97)
      {
        v348 = v356.n128_f64[0];
        v353 = v360.n128_f64[0];
        v179 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v62, a5, v52, qword_1EB658D78, v177, v355);
        goto LABEL_120;
      }

      v178 = v355;
      v171 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v62, a5, v52, qword_1EB658D68, v177);
      *&v175 = sub_1AF341DDC(a2) * v178;
LABEL_60:
      objc_msgSend_setFloatValue_(v171, v172, v173, v174, v175);
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v162 = objc_msgSend_contents(*(a2 + 8), v159, v160, v161);
    objc_msgSend_floatValue(v162, v163, v164, v165);
    v351 = v167;
    v168 = (a2 + 24);
    v169 = *(a2 + 47);
    if (v169 < 0)
    {
      if (*(a2 + 32) != 3)
      {
LABEL_57:
        v171 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v166, a5, v52, qword_1EB658D68, *(a2 + 16));
        *&v175 = *v351.i32 * sub_1AF341DDC(a2);
        goto LABEL_60;
      }

      v168 = *v168;
    }

    else if (v169 != 3)
    {
      goto LABEL_57;
    }

    v183 = *v168;
    v184 = *(v168 + 2);
    if (v183 == 26482 && v184 == 98)
    {
      v333 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v166, a5, v52, qword_1EB658D78, *(a2 + 16));
      objc_msgSend_setFloat3Value_(v333, v334, v335, v336, *vdupq_lane_s32(v351, 0).i64);
      return 0;
    }

    goto LABEL_57;
  }

  v346 = a5;
  v17 = objc_msgSend_stringByAppendingString_(*(a2 + 48), v15, @"_texCoordReader", v16);
  v20 = objc_msgSend_stringByAppendingPathComponent_(a4, v18, v17, v19);
  v350 = a1;
  v344 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v21, v20, v22);
  v24 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v23, *(a1 + 56), v344, qword_1EB658E08);
  v26 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v25, v24, @"info:id", qword_1EB658DD0, qword_1EB658E40);
  v29 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v27, @"UsdPrimvarReader_float2", v28);
  objc_msgSend_setTokenValue_(v26, v30, v29, v31);
  objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v32, v24, @"outputs:result", qword_1EB658D70, qword_1EB658E40);
  v34 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v33, v24, @"inputs:varname", qword_1EB658DD0, qword_1EB658E40);
  if (objc_msgSend_isEqualToString_(*a2, v35, *a3, v36))
  {
    v39 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v37, a6, @"inputs:frame:stPrimvarName", qword_1EB658DD0, qword_1EB658E40);
    v42 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v40, *(a2 + 48), v41);
    objc_msgSend_setTokenValue_(v39, v43, v42, v44);
    v367[0] = objc_msgSend_pathByAppendingPropertyComponent_(a7, v45, @"inputs:frame:stPrimvarName", v46);
    v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v47, v367, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v34, v49, v48, v50);
  }

  else if (!*(a3 + 56) || (objc_msgSend_isEqualToString_(*(a3 + 48), v37, *(a2 + 48), v38) & 1) == 0)
  {
    v68 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v37, *(a2 + 48), v38);
    objc_msgSend_setTokenValue_(v34, v69, v68, v70);
  }

  objc_msgSend_contentsTransform(*(a2 + 8), v37, v51, v38);
  v340 = v72;
  v342 = v71;
  v337 = v74;
  v338 = v73;
  if (!VFXMatrix4IsIdentity(v71, v72, v73, v74))
  {
    v81 = objc_msgSend_stringByAppendingString_(*(a2 + 64), v75, @"_transform2D", v76);
    v84 = objc_msgSend_stringByAppendingPathComponent_(a4, v82, v81, v83);
    v77 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v85, v84, v86);
    p_vtable = &OBJC_METACLASS___VFXAvoidOccluderConstraint.vtable;
    v88 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v87, *(a1 + 56), v77, qword_1EB658E08);
    v91 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v89, @"math", v90);
    v94 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v92, v91, v93);
    objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(v88, v95, @"sdrMetadata", @"role", v94);
    v97 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v96, v88, @"info:id", qword_1EB658DD0, qword_1EB658E40);
    v100 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v98, @"UsdTransform2d", v99);
    objc_msgSend_setTokenValue_(v97, v101, v100, v102);
    v104 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v103, v88, @"inputs:in", qword_1EB658D70, qword_1EB658E40);
    v366 = objc_msgSend_pathByAppendingPropertyComponent_(v344, v105, @"outputs:result", v106);
    v79 = 0x1E695D000uLL;
    v108 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v107, &v366, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v104, v109, v108, v110);
    v111 = 0;
    v112 = *MEMORY[0x1E69E9B18];
    v113 = *(MEMORY[0x1E69E9B18] + 16);
    v114 = vmulq_f32(v342, v342);
    *v114.i8 = vadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v115 = vmulq_f32(v340, v340);
    *v115.f32 = vadd_f32(*v115.f32, *&vextq_s8(v115, v115, 8uLL));
    v116 = vsqrt_f32(vadd_f32(vzip1_s32(*v114.i8, *v115.f32), vzip2_s32(*v114.i8, *v115.f32)));
    v117 = vmulq_f32(v338, v338);
    v118 = vadd_f32(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
    *v118.i32 = sqrtf(vaddv_f32(v118));
    *v115.f32 = v116;
    v115.i64[1] = __PAIR64__(1.0, v118.u32[0]);
    __asm { FMOV            V5.4S, #1.0 }

    v123 = vdivq_f32(_Q5, v115);
    v124 = *(MEMORY[0x1E69E9B18] + 32);
    v125 = *(MEMORY[0x1E69E9B18] + 48);
    v126 = vdupq_lane_s32(v116, 0);
    v127 = vdivq_f32(v340, vdupq_lane_s32(v116, 1));
    v128 = vdivq_f32(v338, vdupq_lane_s32(v118, 0));
    v129 = vzip1q_s32(v127, v125);
    v356 = v342;
    v357 = v340;
    v358 = v338;
    v359 = v337;
    do
    {
      *(&v360 + v111) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(*(&v356 + v111))), v113, v356.n128_u64[v111 / 8], 1), v124, *(&v356 + v111), 2), xmmword_1AFE47A00, *(&v356 + v111), 3);
      v111 += 16;
    }

    while (v111 != 64);
    v130 = 0;
    v135.i64[0] = 0;
    v135.i32[2] = 0;
    v131 = vdivq_f32(v342, v126);
    v132 = vzip1q_s32(v131, v128);
    v133.i64[0] = 0;
    v133.i64[1] = v123.u32[2];
    v134.i32[0] = 0;
    v134.i64[1] = 0;
    v134.i32[1] = v123.i32[1];
    v135.i32[3] = v123.i32[3];
    v356 = v360;
    v357 = v361;
    v358 = v362;
    v359 = v363;
    do
    {
      *(&v360 + v130) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v123.u32[0], COERCE_FLOAT(*(&v356 + v130))), v134, v356.n128_u64[v130 / 8], 1), v133, *(&v356 + v130), 2), v135, *(&v356 + v130), 3);
      v130 += 16;
    }

    while (v130 != 64);
    v136 = 0;
    v137 = vzip1q_s32(v132, v129);
    v138 = vzip2q_s32(v127, v125);
    v139 = vzip2q_s32(v131, v128);
    v140 = vzip1q_s32(v139, v138);
    v141 = vzip2q_s32(v132, v129);
    v142 = vzip2q_s32(v139, v138);
    v356 = v360;
    v357 = v361;
    v358 = v362;
    v359 = v363;
    v80 = &unk_1EB658000;
    do
    {
      *(&v360 + v136) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v137, COERCE_FLOAT(*(&v356 + v136))), v141, v356.n128_u64[v136 / 8], 1), v140, *(&v356 + v136), 2), v142, *(&v356 + v136), 3);
      v136 += 16;
    }

    while (v136 != 64);
    v143 = 0;
    v356 = v360;
    v357 = v361;
    v358 = v362;
    v359 = v363;
    do
    {
      *(&v360 + v143) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(*(&v356 + v143))), v113, v356.n128_u64[v143 / 8], 1), v124, *(&v356 + v143), 2), xmmword_1AFE21180, *(&v356 + v143), 3);
      v143 += 16;
    }

    while (v143 != 64);
    v144 = v363;
    v145 = vmulq_n_f32(v131, *v116.i32);
    v146 = vmulq_lane_f32(v127, v116, 1);
    v145.i32[1] = vnegq_f32(v145).i32[1];
    v146.f32[0] = -v146.f32[0];
    v144.n128_u32[1] = vnegq_f32(v363).u32[1];
    v356.n128_u32[2] = 0;
    v356.n128_u64[0] = 0;
    v354.i32[2] = 0;
    v354.i64[0] = 0;
    sub_1AF3041C0(&v360, &v356, &v354, v145, v146, vmulq_n_f32(v128, *v118.i32), v144);
    v148 = 0.0;
    v149 = 0.0;
    _Q2 = v360;
    v151 = vmulq_f32(_Q2, _Q2);
    v152 = vadd_f32(*v151.i8, *&vextq_s8(v151, v151, 8uLL));
    v152.f32[0] = vaddv_f32(v152);
    if (v152.f32[0] == 0.0)
    {
      goto LABEL_62;
    }

    v153 = v360.n128_f32[3];
    _KR00_8 = *(v360.n128_i64 + 4);
    __asm { FMLA            S1, S9, V2.S[3] }

    v156 = _S1 / v152.f32[0];
    v157 = (_S1 / v152.f32[0]);
    if (v157 <= 0.4999)
    {
      if (v157 >= -0.4999)
      {
        v186 = *&v151.i32[1];
        v187 = v151.i64[1];
        v339 = v360.n128_f32[0];
        v341 = *v151.i32;
        v345 = atan2f(((v360.n128_f32[0] * v360.n128_f32[3]) + (v360.n128_f32[1] * v360.n128_f32[2])) + ((v360.n128_f32[0] * v360.n128_f32[3]) + (v360.n128_f32[1] * v360.n128_f32[2])), *&v151.i32[3] + (*&v151.i32[2] + (-*v151.i32 - *&v151.i32[1])));
        v343 = asinf(v156 + v156);
        v152.f32[0] = atan2f(((*(&_KR00_8 + 1) * v153) + (v339 * *&_KR00_8)) + ((*(&_KR00_8 + 1) * v153) + (v339 * *&_KR00_8)), *(&v187 + 1) + ((v341 - v186) - *&v187));
        v148 = COERCE_DOUBLE(__PAIR64__(LODWORD(v343), LODWORD(v345)));
        v149 = v152.f32[0];
        goto LABEL_62;
      }

      v152.f32[0] = atan2f(v360.n128_f32[0], v360.n128_f32[3]);
      *&v148 = v152.f32[0] + v152.f32[0];
      v158 = &dword_1AFE21DB8;
    }

    else
    {
      v152.f32[0] = atan2f(v360.n128_f32[0], v360.n128_f32[3]);
      *&v148 = v152.f32[0] + v152.f32[0];
      v158 = &dword_1AFE21AFC;
    }

    HIDWORD(v148) = *v158;
    v149 = 0.0;
LABEL_62:
    v188 = v149;
    if (v149 != 0.0)
    {
      v189 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v147, v88, @"inputs:rotation", qword_1EB658D68, qword_1EB658E40, *&v152, v148);
      v190 = v188 / 3.14159265 * 180.0;
      *&v190 = v190;
      objc_msgSend_setFloatValue_(v189, v191, v192, v193, v190);
    }

    v194 = *v354.i64;
    if (*v354.i32 != 0.0 || (LODWORD(v194) = v354.i32[1], *&v354.i32[1] != 0.0))
    {
      v195 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v147, v88, @"inputs:scale", qword_1EB658D70, qword_1EB658E40, v194, *&v337);
      objc_msgSend_setFloat2Value_(v195, v196, v197, v198, *v354.i64);
    }

    v199 = v356.n128_f64[0];
    if (v356.n128_f32[0] != 0.0 || (LODWORD(v199) = v356.n128_u32[1], v356.n128_f32[1] != 0.0))
    {
      v200 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v147, v88, @"inputs:translation", qword_1EB658D70, qword_1EB658E40, v199, *&v337);
      objc_msgSend_setFloat2Value_(v200, v201, v202, v203, v356.n128_f64[0]);
    }

    objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v147, v88, @"outputs:result", qword_1EB658D70, qword_1EB658E40, v199, *&v337);
    goto LABEL_71;
  }

  v77 = v344;
  p_vtable = (&OBJC_METACLASS___VFXAvoidOccluderConstraint + 24);
  v79 = 0x1E695D000;
  v80 = &unk_1EB658000;
LABEL_71:
  v204 = objc_msgSend_stringByAppendingString_(*(a2 + 64), v75, @"_texture", v76, *&v337);
  v207 = objc_msgSend_stringByAppendingPathComponent_(a4, v205, v204, v206);
  v210 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v208, v207, v209);
  v212 = objc_msgSend_world_nodeAtPath_type_(p_vtable + 297, v211, *(v350 + 56), v210, qword_1EB658E08);
  v214 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v213, v212, @"info:id", v80[442], qword_1EB658E40);
  v217 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v215, @"UsdUVTexture", v216);
  objc_msgSend_setTokenValue_(v214, v218, v217, v219);
  if (objc_msgSend_isEqualToString_(*a2, v220, *a3, v221))
  {
    v223 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v222, v212, @"inputs:scale", qword_1EB658D80, qword_1EB658E40);
    objc_msgSend_setFloat4Value_(v223, v224, v225, v226, 2.00000048);
    v228 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v227, v212, @"inputs:bias", qword_1EB658D80, qword_1EB658E40);
    __asm { FMOV            V0.4S, #-1.0 }

    objc_msgSend_setFloat4Value_(v228, v230, v231, v232, *&_Q0);
  }

  v233 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v222, v212, @"inputs:file", qword_1EB658D38, qword_1EB658E40);
  objc_msgSend_setResourcePath_(v233, v234, *(a2 + 56), v235);
  if (v77)
  {
    v237 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v236, v212, @"inputs:st", qword_1EB658D70, qword_1EB658E40);
    v365 = objc_msgSend_pathByAppendingPropertyComponent_(v77, v238, @"outputs:result", v239);
    v241 = objc_msgSend_arrayWithObjects_count_(*(v79 + 3784), v240, &v365, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v237, v242, v241, v243);
  }

  v244 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v236, v212, @"inputs:wrapS", v80[442], qword_1EB658E40);
  v250 = objc_msgSend_wrapS(*(a2 + 8), v245, v246, v247) - 1;
  if (v250 > 3)
  {
    v251 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v248, @"repeat", v249);
  }

  else
  {
    v251 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v248, off_1E7A7F370[v250], v249);
  }

  objc_msgSend_setTokenValue_(v244, v252, v251, v253);
  v255 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v254, v212, @"inputs:wrapT", v80[442], qword_1EB658E40);
  v261 = objc_msgSend_wrapT(*(a2 + 8), v256, v257, v258) - 1;
  if (v261 > 3)
  {
    v262 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v259, @"repeat", v260);
  }

  else
  {
    v262 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v259, off_1E7A7F370[v261], v260);
  }

  objc_msgSend_setTokenValue_(v255, v263, v262, v264);
  if (objc_msgSend_minificationFilter(*(a2 + 8), v265, v266, v267))
  {
    v271 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v268, v212, @"inputs:minFilter", qword_1EB658DD0, qword_1EB658E40);
    v275 = objc_msgSend_minificationFilter(*(a2 + 8), v272, v273, v274);
    if (v275 == 1)
    {
      v278 = @"nearest";
    }

    else
    {
      v278 = &stru_1F2575650;
    }

    if (v275 == 2)
    {
      v279 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v276, @"linear", v277);
    }

    else
    {
      v279 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v276, v278, v277);
    }

    objc_msgSend_setTokenValue_(v271, v280, v279, v281);
  }

  if (objc_msgSend_magnificationFilter(*(a2 + 8), v268, v269, v270))
  {
    v284 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v282, v212, @"inputs:magFilter", qword_1EB658DD0, qword_1EB658E40);
    v288 = objc_msgSend_magnificationFilter(*(a2 + 8), v285, v286, v287);
    if (v288 == 1)
    {
      v291 = @"nearest";
    }

    else
    {
      v291 = &stru_1F2575650;
    }

    if (v288 == 2)
    {
      v292 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v289, @"linear", v290);
    }

    else
    {
      v292 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v289, v291, v290);
    }

    objc_msgSend_setTokenValue_(v284, v293, v292, v294);
  }

  if (*(a2 + 47) >= 0)
  {
    v295 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v282, a2 + 24, v283);
  }

  else
  {
    v295 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v282, *(a2 + 24), v283);
  }

  v299 = v295;
  v300 = *(a2 + 47);
  if ((v300 & 0x80u) != 0)
  {
    v300 = *(a2 + 32);
  }

  if (v300 == 1)
  {
    v301 = &qword_1EB658D68;
  }

  else
  {
    v301 = &qword_1EB658D78;
  }

  v302 = *v301;
  if (objc_msgSend_textureComponents(*(a2 + 8), v296, v297, v298) == 8)
  {
    v306 = qword_1EB658D68;
    v307 = 0x1E695D000;
    v308 = objc_msgSend_stringByAppendingString_(@"outputs:", v303, @"r", v305);
  }

  else
  {
    v307 = 0x1E695D000uLL;
    if (objc_msgSend_textureComponents(*(a2 + 8), v303, v304, v305) == 4)
    {
      v306 = qword_1EB658D68;
      v308 = objc_msgSend_stringByAppendingString_(@"outputs:", v310, @"g", v312);
    }

    else if (objc_msgSend_textureComponents(*(a2 + 8), v310, v311, v312) == 2)
    {
      v306 = qword_1EB658D68;
      v308 = objc_msgSend_stringByAppendingString_(@"outputs:", v313, @"b", v315);
    }

    else
    {
      v316 = objc_msgSend_textureComponents(*(a2 + 8), v313, v314, v315);
      if (v316 == 1)
      {
        v319 = @"a";
      }

      else
      {
        v319 = v299;
      }

      if (v316 == 1)
      {
        v306 = qword_1EB658D68;
      }

      else
      {
        v306 = v302;
      }

      v308 = objc_msgSend_stringByAppendingString_(@"outputs:", v317, v319, v318);
    }
  }

  v320 = v308;
  objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v309, v212, v308, v306, qword_1EB658E40);
  v323 = objc_msgSend_stringByAppendingString_(@"inputs:", v321, *a2, v322);
  v325 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v324, v346, v323, v306, *(a2 + 16));
  v364 = objc_msgSend_pathByAppendingPropertyComponent_(v210, v326, v320, v327);
  v329 = objc_msgSend_arrayWithObjects_count_(*(v307 + 3784), v328, &v364, 1);
  objc_msgSend_setConnectionWithTargetPaths_(v325, v330, v329, v331);
  return v210;
}

uint64_t sub_1AF340C28(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_1AF340CB4(uint64_t a1, void **a2)
{
  v2 = *sub_1AF33C494(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF340D58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF340DB0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = v6[4];
      *(a4 + 48) = v6[3];
      *(a4 + 64) = v9;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      v5 += 10;
    }
  }
}

uint64_t sub_1AF340E44(uint64_t a1)
{
  sub_1AF340E7C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF340E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 80;
      *(a1 + 16) = v2 - 80;
      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1AF340ED8(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1AF10A1D0();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1AF340D58(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[4];
  *(v7 + 48) = a2[3];
  *(v7 + 64) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = *(a1 + 8);
  v12 = 80 * v2 + *a1 - v11;
  sub_1AF340DB0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1AF340E44(&v17);
  return v16;
}

void sub_1AF341014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AF340E44(va);
  _Unwind_Resume(a1);
}

std::string *sub_1AF341028(std::string *a1, std::string::size_type a2, void *a3, std::string::size_type *a4, std::string *__str, std::string::size_type a6)
{
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__l.__size_ = 0;
  a1[2].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__r.__words[0] = @"st";
  a1->__r_.__value_.__r.__words[0] = a2;
  a1->__r_.__value_.__l.__size_ = a3;
  a1->__r_.__value_.__r.__words[2] = *a4;
  std::string::operator=(a1 + 1, __str);
  if (objc_msgSend_mappingChannel(a3, v9, v10, v11) >= 1)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = objc_msgSend_mappingChannel(a3, v12, v13, v14);
    v19 = objc_msgSend_numberWithInteger_(v15, v17, v16, v18);
    v23 = objc_msgSend_stringValue(v19, v20, v21, v22);
    a1[2].__r_.__value_.__r.__words[0] = objc_msgSend_stringByAppendingString_(@"st", v24, v23, v25);
  }

  a1[3].__r_.__value_.__r.__words[0] = a6;
  return a1;
}

void sub_1AF3410E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF3410FC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  *a4 = 1;
  v7 = objc_msgSend_UTF8String(a2, a2, a3, a4);
  sub_1AF13D250(v31, v7);
  v11 = objc_msgSend_UTF8String(a3, v8, v9, v10);
  sub_1AF13D250(__p, v11);
  v12 = sub_1AF33C394(a1 + 216, v31);
  v13 = v12;
  if (a1 + 224 == v12)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_1AF341604(&v26, __p);
    v33 = v31;
    v24 = (sub_1AF3418D0(a1 + 216, v31) + 56);
    if (v24 != &v26)
    {
      sub_1AF341A68(v24, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
    }

    v34 = &v26;
    sub_1AF338DF4(&v34);
    v16 = 0;
  }

  else
  {
    v14 = *(v12 + 56);
    v15 = *(v12 + 64) - v14;
    if (v15)
    {
      v16 = 0;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
      if ((v30 & 0x80u) == 0)
      {
        v18 = v30;
      }

      else
      {
        v18 = __p[1];
      }

      if ((v30 & 0x80u) == 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v17 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v17;
      }

      while (1)
      {
        v21 = *(v14 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v14 + 8);
        }

        if (v21 == v18)
        {
          v23 = v22 >= 0 ? v14 : *v14;
          if (!memcmp(v23, v19, v18))
          {
            break;
          }
        }

        ++v16;
        v14 += 24;
        if (v20 == v16)
        {
          goto LABEL_20;
        }
      }

      *a4 = 0;
    }

    else
    {
LABEL_20:
      sub_1AF341604((v13 + 56), __p);
      v16 = -1431655765 * ((*(v13 + 64) - *(v13 + 56)) >> 3) - 1;
    }
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  return v16;
}

void sub_1AF3412F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF34133C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v11 = objc_msgSend_stringByAppendingPathComponent_(*(v7 + 16), v9, @"textures", v10);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v8, v12, v11, 1, 0, 0);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"texgen_%lu", v14, *(v7 + 184));
  v18 = objc_msgSend_stringByAppendingPathExtension_(v15, v16, a2, v17);
  v21 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v19, v18, v20);
  v24 = objc_msgSend_stringByAppendingPathComponent_(*(v7 + 16), v22, v21, v23);
  v34 = objc_msgSend_contents(*(a1 + 32), v25, v26, v27);
  v35 = &v34;
  sub_1AF33AD00(v7 + 168, &v34)[5] = v21;
  v31 = objc_msgSend_UTF8String(v21, v28, v29, v30);
  v35 = (a1 + 48);
  v32 = sub_1AF341D08(v7 + 192, (a1 + 48));
  sub_1AF2737B0((v32 + 5), v31);
  if ((*(a3 + 16))(a3, v24))
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1AF3414A0(uint64_t a1, const __CFString *a2)
{
  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  v7 = objc_msgSend_identifier(*MEMORY[0x1E6982F28], v4, v5, v6);
  v8 = CGImageDestinationCreateWithURL(v3, v7, 1uLL, 0);
  CFRelease(v3);
  if (v8)
  {
    CGImageDestinationAddImage(v8, *(a1 + 32), 0);
    CGImageDestinationFinalize(v8);
    CFRelease(*(a1 + 32));
    v9 = v8;
  }

  else
  {
    v9 = *(a1 + 32);
  }

  CFRelease(v9);
  return v8 != 0;
}

void *sub_1AF341548(void *a1)
{
  v1 = a1;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3, v4);
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_query(v1, v8, v9, v10);
      if (!objc_msgSend_length(v11, v12, v13, v14))
      {
        v1 = objc_msgSend_path(v1, v15, v16, v17);
        v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19, v20);
        if (v1)
        {
LABEL_4:
          if (objc_msgSend_fileExistsAtPath_(v5, v6, v1, v7))
          {
            return v1;
          }
        }
      }
    }

    else
    {
      objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9, v10);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1AF341604(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1AF3416A4(a1, a2);
  }

  else
  {
    sub_1AF341644(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_1AF341644(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AF13D384(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1AF3416A4(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AF10A1D0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1AF3417E4(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1AF13D384(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AF34183C(&v17);
  return v11;
}

void sub_1AF3417D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AF34183C(va);
  _Unwind_Resume(a1);
}

void sub_1AF3417E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF34183C(uint64_t a1)
{
  sub_1AF341874(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF341874(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1AF3418D0(uint64_t a1, void **a2)
{
  v2 = *sub_1AF33C494(a1, &v4, a2);
  if (!v2)
  {
    sub_1AF341978();
  }

  return v2;
}

uint64_t sub_1AF341A1C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1AF338DAC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1AF341A68(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1AF341C08(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1AF341C48(a1, v10);
    }

    sub_1AF10A1D0();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1AF341C94(a1, (v6 + v12), a3, v11);
  }
}

void sub_1AF341C08(uint64_t a1)
{
  if (*a1)
  {
    sub_1AF338E48(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1AF341C48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AF3417E4(a1, a2);
  }

  sub_1AF10A1D0();
}

char *sub_1AF341C94(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1AF13D384(__dst, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(__dst + 2) = *(v6 + 2);
        *__dst = v7;
      }

      v6 = (v6 + 24);
      __dst += 24;
    }

    while (v6 != a3);
  }

  return __dst;
}

void *sub_1AF341D08(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float sub_1AF341DDC(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    return 1.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1.0;
  }

  v5 = *(a1 + 72);

  objc_msgSend_floatValue(v5, v2, v3, v4);
  return result;
}

void sub_1AF341E44(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF341E98(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF341E98(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

uint64_t sub_1AF341EE8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v7 = objc_msgSend_length(a3, a2, a3, a4);
  v11 = sub_1AF339A70(a1, v8, v9, v10);
  if (v7 > objc_msgSend_length(v11, v12, v13, v14))
  {
    v18 = sub_1AF339A70(a1, v15, v16, v17);
    v22 = sub_1AF339A70(a1, v19, v20, v21);
    v26 = objc_msgSend_length(v22, v23, v24, v25);
    v29 = objc_msgSend_substringToIndex_(v4, v27, v26, v28);
    if (objc_msgSend_isEqualToString_(v18, v30, v29, v31))
    {
      v33 = sub_1AF339A70(a1, v15, v32, v17);
      v37 = objc_msgSend_length(v33, v34, v35, v36);
      v4 = objc_msgSend_substringFromIndex_(v4, v38, v37, v39);
    }
  }

  v40 = objc_msgSend_stringByAppendingString_(v4, v15, @":", v17);
  v43 = objc_msgSend_stringByAppendingString_(v40, v41, a2, v42);
  if (objc_msgSend_characterAtIndex_(v43, v44, 0, v45) == 47)
  {
    v43 = objc_msgSend_substringFromIndex_(v43, v46, 1, v47);
  }

  return objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v43, v46, @"/", @":");
}

unint64_t sub_1AF341FE8(uint64_t a1, const char *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1AF342B78(a1, a2, a3, v6);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  v11 = objc_msgSend_keyTimes(a3, v8, v9, v10);
  result = objc_msgSend_count(v11, v12, v13, v14);
  if (!result)
  {
    return result;
  }

  v18 = objc_msgSend_count(v11, v15, v16, v17);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, v18 - 1, v20);
  objc_msgSend_doubleValue(v21, v22, v23, v24);
  v26 = v25;
  v29 = objc_msgSend_objectAtIndexedSubscript_(v11, v27, 0, v28);
  result = objc_msgSend_doubleValue(v29, v30, v31, v32);
  v37 = v26 - v36;
  if (v26 - v36 < 0.0001)
  {
    return result;
  }

  objc_msgSend_duration(a3, v33, v34, v35);
  v39 = v38;
  v43 = objc_msgSend_keyPath(a3, v40, v41, v42);
  v46 = objc_msgSend_componentsSeparatedByString_(v43, v44, @".", v45);
  v50 = objc_msgSend_count(v46, v47, v48, v49) - 1;
  v53 = objc_msgSend_objectAtIndex_(v46, v51, v50, v52);
  if (objc_msgSend_count(v46, v54, v55, v56) < 2)
  {
    v60 = 0;
    goto LABEL_21;
  }

  if (objc_msgSend_isEqualToString_(v53, v57, @"x", v58))
  {
    v60 = @"X";
  }

  else if (objc_msgSend_isEqualToString_(v53, v57, @"y", v58))
  {
    v60 = @"Y";
  }

  else if (objc_msgSend_isEqualToString_(v53, v57, @"z", v58))
  {
    v60 = @"Z";
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v53, v57, @"w", v58))
    {
      v60 = 0;
      if (!v50)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v60 = @"W";
  }

  v50 = objc_msgSend_count(v46, v57, v59, v58) - 2;
  v53 = objc_msgSend_objectAtIndex_(v46, v61, v50, v62);
  if (!v50)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (objc_msgSend_isEqualToString_(v53, v57, @"euler", v58))
  {
    v63 = objc_msgSend_objectAtIndex_(v46, v57, v50 - 1, v58);
    v66 = objc_msgSend_stringByAppendingString_(v63, v64, @".", v65);
    v53 = objc_msgSend_stringByAppendingString_(v66, v67, v53, v68);
  }

LABEL_21:
  v69 = v39 / v37;
  if (objc_msgSend_isEqualToString_(v53, v57, @"transform", v58))
  {
    if (objc_msgSend_count(v11, v70, v71, v72))
    {
      v75 = 0;
      do
      {
        v76 = objc_msgSend_objectAtIndexedSubscript_(v11, v73, v75, v74);
        objc_msgSend_doubleValue(v76, v77, v78, v79);
        v81 = v80;
        objc_msgSend_beginTime(a3, v82, v83, v84);
        v86 = v85 + v81 * v69;
        v90 = objc_msgSend_values(a3, v87, v88, v89);
        v93 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, v75, v92);
        objc_msgSend_VFXMatrix4Value(v93, v94, v95, v96);
        v378 = vcvtq_f64_f32(*v98.f32);
        v380 = vcvtq_f64_f32(*v97.f32);
        v375 = vcvtq_f64_f32(*v99.f32);
        v376 = vcvt_hight_f64_f32(v97);
        v373 = vcvt_hight_f64_f32(v99);
        v374 = vcvt_hight_f64_f32(v98);
        v371 = vcvt_hight_f64_f32(v100);
        v372 = vcvtq_f64_f32(*v100.f32);
        v102 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v101, a2, @"xformOp:transform", qword_1EB658D58, qword_1EB658E40);
        v385[0] = v380;
        v385[1] = v376;
        v385[2] = v378;
        v385[3] = v374;
        v385[4] = v375;
        v385[5] = v373;
        v385[6] = v372;
        v385[7] = v371;
        v105 = v86 / *(a1 + 504) + 0.0;
        v106 = v105;
        if (vabdd_f64(v105, v106) >= 0.001)
        {
          if (1.0 - (v105 - v106) < 0.001)
          {
            v105 = v106 + 1.0;
          }

          objc_msgSend_setDouble4x4Value_atTime_(v102, v103, v385, v104, v105);
        }

        else
        {
          objc_msgSend_setDouble4x4Value_atTime_(v102, v103, v385, v104, v105);
        }

        ++v75;
      }

      while (v75 < objc_msgSend_count(v11, v107, v108, v109));
    }

    return objc_msgSend_addObject_(*(a1 + 88), v73, @"xformOp:transform", v74);
  }

  if (objc_msgSend_isEqualToString_(v53, v70, @"position", v72))
  {
    if (!v60)
    {
      if (objc_msgSend_count(v11, v110, v111, v112))
      {
        v191 = 0;
        do
        {
          v192 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v191, v118);
          objc_msgSend_doubleValue(v192, v193, v194, v195);
          v197 = v196;
          objc_msgSend_beginTime(a3, v198, v199, v200);
          v202 = v201 + v197 * v69;
          v206 = objc_msgSend_values(a3, v203, v204, v205);
          v209 = objc_msgSend_objectAtIndexedSubscript_(v206, v207, v191, v208);
          objc_msgSend_VFXFloat3Value(v209, v210, v211, v212);
          v382 = v213;
          v215 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v214, a2, @"xformOp:translate", qword_1EB658D78, qword_1EB658E40);
          v219 = v202 / *(a1 + 504) + 0.0;
          v220 = v219;
          if (vabdd_f64(v219, v220) >= 0.001)
          {
            if (1.0 - (v219 - v220) < 0.001)
            {
              v219 = v220 + 1.0;
            }

            objc_msgSend_setFloat3Value_atTime_(v215, v216, v217, v218, v382, v219);
          }

          else
          {
            objc_msgSend_setFloat3Value_atTime_(v215, v216, v217, v218, v382, v219);
          }

          ++v191;
        }

        while (v191 < objc_msgSend_count(v11, v221, v222, v223));
      }

      v153 = *(a1 + 88);
      v154 = @"xformOp:translate";
      goto LABEL_62;
    }

    v113 = objc_msgSend_stringByAppendingString_(@"xformOp:translate", v110, v60, v112);
    if (objc_msgSend_count(v11, v114, v115, v116))
    {
      v119 = 0;
      do
      {
        v120 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v119, v118);
        objc_msgSend_doubleValue(v120, v121, v122, v123);
        v125 = v124;
        objc_msgSend_beginTime(a3, v126, v127, v128);
        v130 = v129 + v125 * v69;
        v134 = objc_msgSend_values(a3, v131, v132, v133);
        v137 = objc_msgSend_objectAtIndexedSubscript_(v134, v135, v119, v136);
        objc_msgSend_floatValue(v137, v138, v139, v140);
        v142 = v141;
        v144 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v143, a2, v113, qword_1EB658D68, qword_1EB658E40);
        v148 = v130 / *(a1 + 504) + 0.0;
        v149 = v148;
        if (vabdd_f64(v148, v149) >= 0.001)
        {
          if (1.0 - (v148 - v149) < 0.001)
          {
            v148 = v149 + 1.0;
          }
        }

        else
        {
          v148 = v148;
        }

        LODWORD(v149) = v142;
        objc_msgSend_setFloatValue_atTime_(v144, v145, v146, v147, v149, v148);
        ++v119;
      }

      while (v119 < objc_msgSend_count(v11, v150, v151, v152));
    }
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(v53, v110, @"orientation", v112) & 1) != 0 || objc_msgSend_isEqualToString_(v53, v155, @"quaternion", v157))
    {
      if (objc_msgSend_count(v11, v155, v156, v157))
      {
        v158 = 0;
        do
        {
          v159 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v158, v118);
          objc_msgSend_doubleValue(v159, v160, v161, v162);
          v164 = v163;
          objc_msgSend_beginTime(a3, v165, v166, v167);
          v169 = v168 + v164 * v69;
          v173 = objc_msgSend_values(a3, v170, v171, v172);
          v176 = objc_msgSend_objectAtIndexedSubscript_(v173, v174, v158, v175);
          objc_msgSend_VFXFloat4Value(v176, v177, v178, v179);
          v381 = v180;
          v182 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v181, a2, @"xformOp:orient", qword_1EB658DB8, qword_1EB658E40);
          v186 = v169 / *(a1 + 504) + 0.0;
          v187 = v186;
          if (vabdd_f64(v186, v187) >= 0.001)
          {
            if (1.0 - (v186 - v187) < 0.001)
            {
              v186 = v187 + 1.0;
            }

            objc_msgSend_setQuatfValue_atTime_(v182, v183, v184, v185, v381, v186);
          }

          else
          {
            objc_msgSend_setQuatfValue_atTime_(v182, v183, v184, v185, v381, v186);
          }

          ++v158;
        }

        while (v158 < objc_msgSend_count(v11, v188, v189, v190));
      }

      v153 = *(a1 + 88);
      v154 = @"xformOp:orient";
      goto LABEL_62;
    }

    if ((objc_msgSend_isEqualToString_(v53, v155, @"eulerAngles", v157) & 1) != 0 || objc_msgSend_isEqualToString_(v53, v224, @"rotation.euler", v226))
    {
      if (!v60)
      {
        if (objc_msgSend_count(v11, v224, v225, v226))
        {
          v265 = 0;
          v377 = vdupq_n_s64(0x4066800000000000uLL);
          v379 = vdupq_n_s64(0x400921FB54442D18uLL);
          do
          {
            v266 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v265, v118);
            objc_msgSend_doubleValue(v266, v267, v268, v269);
            v271 = v270;
            objc_msgSend_beginTime(a3, v272, v273, v274);
            v276 = v275 + v271 * v69;
            v280 = objc_msgSend_values(a3, v277, v278, v279);
            v283 = objc_msgSend_objectAtIndexedSubscript_(v280, v281, v265, v282);
            objc_msgSend_VFXFloat3Value(v283, v284, v285, v286);
            v383 = v287;
            v289 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v288, a2, @"xformOp:rotateXYZ", qword_1EB658D78, qword_1EB658E40);
            v293 = v276 / *(a1 + 504) + 0.0;
            v294 = v293;
            if (vabdd_f64(v293, v294) >= 0.001)
            {
              if (1.0 - (v293 - v294) < 0.001)
              {
                v293 = v294 + 1.0;
              }
            }

            else
            {
              v293 = v293;
            }

            objc_msgSend_setFloat3Value_atTime_(v289, v290, v291, v292, COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_f32(v383), v379), v377))), v293);
            ++v265;
          }

          while (v265 < objc_msgSend_count(v11, v295, v296, v297));
        }

        v153 = *(a1 + 88);
        v154 = @"xformOp:rotateXYZ";
        goto LABEL_62;
      }

      v113 = objc_msgSend_stringByAppendingString_(@"xformOp:rotate", v224, v60, v226);
      if (objc_msgSend_count(v11, v227, v228, v229))
      {
        v230 = 0;
        do
        {
          v231 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v230, v118);
          objc_msgSend_doubleValue(v231, v232, v233, v234);
          v236 = v235;
          objc_msgSend_beginTime(a3, v237, v238, v239);
          v241 = v240 + v236 * v69;
          v245 = objc_msgSend_values(a3, v242, v243, v244);
          v248 = objc_msgSend_objectAtIndexedSubscript_(v245, v246, v230, v247);
          objc_msgSend_floatValue(v248, v249, v250, v251);
          v253 = v252;
          v255 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v254, a2, v113, qword_1EB658D68, qword_1EB658E40);
          v259 = v241 / *(a1 + 504) + 0.0;
          v260 = v259;
          if (vabdd_f64(v259, v260) >= 0.001)
          {
            if (1.0 - (v259 - v260) < 0.001)
            {
              v259 = v260 + 1.0;
            }
          }

          else
          {
            v259 = v259;
          }

          v261 = v253 / 3.14159265 * 180.0;
          *&v261 = v261;
          objc_msgSend_setFloatValue_atTime_(v255, v256, v257, v258, v261, v259);
          ++v230;
        }

        while (v230 < objc_msgSend_count(v11, v262, v263, v264));
      }
    }

    else
    {
      result = objc_msgSend_isEqualToString_(v53, v224, @"scale", v226);
      if (!result)
      {
        return result;
      }

      if (!v60)
      {
        if (objc_msgSend_count(v11, v298, v299, v300))
        {
          v338 = 0;
          do
          {
            v339 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v338, v118);
            objc_msgSend_doubleValue(v339, v340, v341, v342);
            v344 = v343;
            objc_msgSend_beginTime(a3, v345, v346, v347);
            v349 = v348 + v344 * v69;
            v353 = objc_msgSend_values(a3, v350, v351, v352);
            v356 = objc_msgSend_objectAtIndexedSubscript_(v353, v354, v338, v355);
            objc_msgSend_VFXFloat3Value(v356, v357, v358, v359);
            v384 = v360;
            v362 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v361, a2, @"xformOp:scale", qword_1EB658D78, qword_1EB658E40);
            v366 = v349 / *(a1 + 504) + 0.0;
            v367 = v366;
            if (vabdd_f64(v366, v367) >= 0.001)
            {
              if (1.0 - (v366 - v367) < 0.001)
              {
                v366 = v367 + 1.0;
              }

              objc_msgSend_setFloat3Value_atTime_(v362, v363, v364, v365, v384, v366);
            }

            else
            {
              objc_msgSend_setFloat3Value_atTime_(v362, v363, v364, v365, v384, v366);
            }

            ++v338;
          }

          while (v338 < objc_msgSend_count(v11, v368, v369, v370));
        }

        v153 = *(a1 + 88);
        v154 = @"xformOp:scale";
        goto LABEL_62;
      }

      v113 = objc_msgSend_stringByAppendingString_(@"xformOp:scale", v298, v60, v300);
      if (objc_msgSend_count(v11, v301, v302, v303))
      {
        v304 = 0;
        do
        {
          v305 = objc_msgSend_objectAtIndexedSubscript_(v11, v117, v304, v118);
          objc_msgSend_doubleValue(v305, v306, v307, v308);
          v310 = v309;
          objc_msgSend_beginTime(a3, v311, v312, v313);
          v315 = v314 + v310 * v69;
          v319 = objc_msgSend_values(a3, v316, v317, v318);
          v322 = objc_msgSend_objectAtIndexedSubscript_(v319, v320, v304, v321);
          objc_msgSend_floatValue(v322, v323, v324, v325);
          v327 = v326;
          v329 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v328, a2, v113, qword_1EB658D68, qword_1EB658E40);
          v333 = v315 / *(a1 + 504) + 0.0;
          v334 = v333;
          if (vabdd_f64(v333, v334) >= 0.001)
          {
            if (1.0 - (v333 - v334) < 0.001)
            {
              v333 = v334 + 1.0;
            }
          }

          else
          {
            v333 = v333;
          }

          LODWORD(v334) = v327;
          objc_msgSend_setFloatValue_atTime_(v329, v330, v331, v332, v334, v333);
          ++v304;
        }

        while (v304 < objc_msgSend_count(v11, v335, v336, v337));
      }
    }
  }

  v153 = *(a1 + 88);
  v154 = v113;
LABEL_62:

  return objc_msgSend_addObject_(v153, v117, v154, v118);
}

unint64_t sub_1AF342B78(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_animations(a3, a2, a3, a4);
  result = objc_msgSend_count(v7, v8, v9, v10);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v16 = objc_msgSend_animations(a3, v12, v13, v14);
      v19 = objc_msgSend_objectAtIndex_(v16, v17, i, v18);
      sub_1AF341FE8(a1, a2, v19);
      v23 = objc_msgSend_animations(a3, v20, v21, v22);
      result = objc_msgSend_count(v23, v24, v25, v26);
    }
  }

  return result;
}

uint64_t sub_1AF342BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v90 = *MEMORY[0x1E69E9840];
  v88 = a2;
  v6 = *(a1 + 424);
  if (v6)
  {
    v7 = a1 + 424;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a1 + 424 && *(v7 + 32) <= a2)
    {
      if (objc_msgSend_animationKeys(a2, a2, a3, a4))
      {
        v11 = objc_msgSend_animationKeys(v4, a2, a3, a4);
        if (objc_msgSend_count(v11, v12, v13, v14))
        {
          v15 = objc_msgSend_animationKeys(v4, a2, a3, a4);
          v18 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17);
          v22 = sub_1AF342FF0(a1, v19, v20, v21);
          v24 = sub_1AF338AE8(v18, v23);
          v27 = objc_msgSend_stringByAppendingPathComponent_(v22, v25, v24, v26);
          v30 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v28, v27, v29);
          v32 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v31, *(a1 + 56), v30, qword_1EB658E10);
          v85 = &v88;
          v33 = sub_1AF33A710(a1 + 416, &v88);
          sub_1AF34305C(v33[5], v30, v32);
          v37 = objc_msgSend_animationKeys(v88, v34, v35, v36);
          v41 = objc_msgSend_count(v37, v38, v39, v40);
          v85 = 0;
          v86 = 0;
          v87 = 0;
          memset(v84, 0, sizeof(v84));
          sub_1AF3430D4(v84, v41);
          if (v41)
          {
            for (i = 0; i != v41; ++i)
            {
              v46 = objc_msgSend_animationKeys(v88, v42, v43, v44);
              v49 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, i, v48);
              v52 = objc_msgSend_animationPlayerForKey_(v88, v50, v49, v51);
              if (v52)
              {
                v53 = objc_msgSend_animation(v52, v42, v43, v44);
                v57 = objc_msgSend_caAnimation(v53, v54, v55, v56);
                sub_1AF34317C(a1, v32, v57, &v85, v84);
              }
            }
          }

          v58 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v42, v32, @"blendShapeWeights", qword_1EB658D98, qword_1EB658E40);
          __p = 0;
          v82 = 0;
          v83 = 0;
          sub_1AF121C28(&__p, v41);
          v60 = v85;
          if (v86 != v85)
          {
            v61 = 0;
            do
            {
              v62 = v60[v61];
              v63 = __p;
              if (v41)
              {
                v64 = v84[0];
                v65 = __p;
                v66 = v41;
                do
                {
                  v67 = *v64;
                  v64 += 3;
                  *v65++ = *(v67 + 4 * v61);
                  --v66;
                }

                while (v66);
              }

              v68 = v62 / *(a1 + 504) + 0.0;
              v69 = v68;
              if (vabdd_f64(v68, v69) >= 0.001)
              {
                if (1.0 - (v68 - v69) < 0.001)
                {
                  v68 = v69 + 1.0;
                }

                objc_msgSend_setFloatArray_count_atTime_(v58, v59, v63, (v82 - v63) >> 2, v68);
              }

              else
              {
                objc_msgSend_setFloatArray_count_atTime_(v58, v59, v63, (v82 - v63) >> 2, v68);
              }

              ++v61;
              v60 = v85;
            }

            while (v61 < (v86 - v85) >> 3);
          }

          if (__p)
          {
            v82 = __p;
            operator delete(__p);
          }

          __p = v84;
          sub_1AF179AF8(&__p);
          if (v85)
          {
            v86 = v85;
            operator delete(v85);
          }

          v4 = v88;
        }
      }
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v70 = objc_msgSend_childNodes(v4, a2, a3, a4, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v77, v89, 16);
  v73 = result;
  if (result)
  {
    v74 = *v78;
    do
    {
      v75 = 0;
      do
      {
        if (*v78 != v74)
        {
          objc_enumerationMutation(v70);
        }

        sub_1AF342BF4(a1, *(*(&v77 + 1) + 8 * v75++));
      }

      while (v73 != v75);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v76, &v77, v89, 16);
      v73 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF342F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *__p, char *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  __p = &a21;
  sub_1AF179AF8(&__p);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AF342FF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 48);
  if (!result)
  {
    v6 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), a2, @"Animations", a4);
    *(a1 + 48) = v6;
    v9 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v7, v6, v8);
    objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v10, *(a1 + 56), v9, qword_1EB658E00);
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_1AF34305C(uint64_t result, const char *a2, uint64_t a3)
{
  if (!*(result + 16))
  {
    v4 = result;
    v5 = *(result + 8);
    if (v5)
    {
      v7 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, v5, @"skel:animationSource", qword_1EB658DA8, qword_1EB658E40);
      result = objc_msgSend_setObjectPath_(v7, v8, a2, v9);
      *(v4 + 16) = a3;
    }
  }

  return result;
}

void sub_1AF3430D4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1AF3433C0(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

unint64_t sub_1AF34317C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1AF34361C(a1, a2, a3, a4, a5);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v14 = objc_msgSend_keyTimes(a3, v11, v12, v13);
      result = objc_msgSend_count(v14, v15, v16, v17);
      if (result)
      {
        v21 = objc_msgSend_count(v14, v18, v19, v20);
        v24 = objc_msgSend_objectAtIndexedSubscript_(v14, v22, v21 - 1, v23);
        objc_msgSend_doubleValue(v24, v25, v26, v27);
        v29 = v28;
        v32 = objc_msgSend_objectAtIndexedSubscript_(v14, v30, 0, v31);
        result = objc_msgSend_doubleValue(v32, v33, v34, v35);
        v40 = v29 - v39;
        if (v29 - v39 >= 0.0001)
        {
          objc_msgSend_duration(a3, v36, v37, v38);
          v42 = v41;
          v46 = objc_msgSend_keyPath(a3, v43, v44, v45);
          v49 = objc_msgSend_componentsSeparatedByString_(v46, v47, @".", v48);
          v53 = objc_msgSend_count(v49, v50, v51, v52);
          v56 = objc_msgSend_objectAtIndex_(v49, v54, v53 - 1, v55);
          result = objc_msgSend_length(v56, v57, v58, v59);
          if (result >= 9)
          {
            v62 = objc_msgSend_substringToIndex_(v56, v60, 7, v61);
            result = objc_msgSend_isEqualToString_(v62, v63, @"weights", v64);
            if (result)
            {
              v67 = objc_msgSend_substringFromIndex_(v56, v65, 8, v66);
              v71 = objc_msgSend_intValue(v67, v68, v69, v70);
              v75 = objc_msgSend_count(v14, v72, v73, v74);
              sub_1AF3436B0(a4, v75);
              v76 = (*a5 + 24 * v71);
              v80 = objc_msgSend_count(v14, v77, v78, v79);
              sub_1AF121C28(v76, v80);
              v84 = objc_msgSend_values(a3, v81, v82, v83);
              result = objc_msgSend_count(v14, v85, v86, v87);
              if (result)
              {
                v90 = 0;
                v91 = 24 * v71;
                v92 = v42 / v40;
                do
                {
                  v93 = objc_msgSend_objectAtIndexedSubscript_(v14, v88, v90, v89);
                  objc_msgSend_doubleValue(v93, v94, v95, v96);
                  v98 = v97;
                  objc_msgSend_beginTime(a3, v99, v100, v101);
                  *(*a4 + 8 * v90) = v102 + v98 * v92;
                  v105 = objc_msgSend_objectAtIndexedSubscript_(v84, v103, v90, v104);
                  objc_msgSend_floatValue(v105, v106, v107, v108);
                  *(*(*a5 + v91) + 4 * v90++) = v109;
                  result = objc_msgSend_count(v14, v110, v111, v112);
                }

                while (v90 < result);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1AF3433C0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AF10A1D0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1AF34352C(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1AF343584(v18);
  }
}

void sub_1AF34352C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF343584(uint64_t a1)
{
  sub_1AF3435BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF3435BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

unint64_t sub_1AF34361C(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_animations(a3, a2, a3, a4);
  result = objc_msgSend_count(v10, v11, v12, v13);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v19 = objc_msgSend_animations(a3, v15, v16, v17);
      v22 = objc_msgSend_objectAtIndex_(v19, v20, i, v21);
      sub_1AF34317C(a1, a2, v22, a4, a5);
      v26 = objc_msgSend_animations(a3, v23, v24, v25);
      result = objc_msgSend_count(v26, v27, v28, v29);
    }
  }

  return result;
}

void sub_1AF3436B0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1AF3436E0(a1, a2 - v2);
  }
}

void sub_1AF3436E0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1AF1233A0(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1AF343810(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = objc_msgSend_skinner(a2, a2, a3, a4);
    v13 = objc_msgSend_boneWeights(v9, v10, v11, v12);
    v17 = objc_msgSend_data(v13, v14, v15, v16);
    v21 = objc_msgSend_bytes(v17, v18, v19, v20);
    v25 = objc_msgSend_boneWeights(v9, v22, v23, v24);
    v29 = objc_msgSend_dataOffset(v25, v26, v27, v28);
    v33 = objc_msgSend_boneIndices(v9, v30, v31, v32);
    v37 = objc_msgSend_data(v33, v34, v35, v36);
    v41 = objc_msgSend_bytes(v37, v38, v39, v40);
    v45 = objc_msgSend_boneIndices(v9, v42, v43, v44);
    v49 = objc_msgSend_dataOffset(v45, v46, v47, v48);
    if (v21 && v41)
    {
      v53 = v49;
      v54 = objc_msgSend_boneWeights(v9, v50, v51, v52);
      v58 = objc_msgSend_vectorCount(v54, v55, v56, v57);
      v62 = objc_msgSend_boneWeights(v9, v59, v60, v61);
      v129 = objc_msgSend_componentsPerVector(v62, v63, v64, v65) * v58;
      v69 = objc_msgSend_boneWeights(v9, v66, v67, v68);
      v128 = objc_msgSend_componentsPerVector(v69, v70, v71, v72);
      v76 = objc_msgSend_boneIndices(v9, v73, v74, v75);
      v80 = objc_msgSend_vectorCount(v76, v77, v78, v79);
      v84 = objc_msgSend_boneIndices(v9, v81, v82, v83);
      v88 = objc_msgSend_componentsPerVector(v84, v85, v86, v87) * v80;
      v92 = objc_msgSend_boneIndices(v9, v89, v90, v91);
      v96 = objc_msgSend_componentsPerVector(v92, v93, v94, v95);
      v100 = objc_msgSend_boneIndices(v9, v97, v98, v99);
      v104 = v29;
      v105 = objc_msgSend_bytesPerComponent(v100, v101, v102, v103);
      objc_msgSend_baseGeometryBindTransform(v9, v106, v107, v108);
      v130 = vcvtq_f64_f32(*v109.f32);
      v131 = vcvt_hight_f64_f32(v109);
      v132 = vcvtq_f64_f32(*v110.f32);
      v133 = vcvt_hight_f64_f32(v110);
      v134 = vcvtq_f64_f32(*v111.f32);
      v135 = vcvt_hight_f64_f32(v111);
      v136 = vcvtq_f64_f32(*v112.f32);
      v137 = vcvt_hight_f64_f32(v112);
      sub_1AF3445E4(a5, a3, v21 + v104, v129, v128, (v41 + v53), v88, v96, v105, &v130);
      return;
    }

    v119 = objc_msgSend_skeleton(v9, v50, v51, v52);
    if (v119)
    {
      v123 = v119;
    }

    else
    {
      v123 = a2;
    }

    objc_msgSend_baseGeometryBindTransform(v9, v120, v121, v122);
    v130 = vcvtq_f64_f32(*v124.f32);
    v131 = vcvt_hight_f64_f32(v124);
    v132 = vcvtq_f64_f32(*v125.f32);
    v133 = vcvt_hight_f64_f32(v125);
    v134 = vcvtq_f64_f32(*v126.f32);
    v135 = vcvt_hight_f64_f32(v126);
    v136 = vcvtq_f64_f32(*v127.f32);
    v137 = vcvt_hight_f64_f32(v127);
    v117 = a4;
    v118 = v123;
  }

  else
  {
    if (!a4)
    {
      return;
    }

    objc_msgSend_worldTransform(a2, a2, a3, a4);
    v130 = vcvtq_f64_f32(*v113.f32);
    v131 = vcvt_hight_f64_f32(v113);
    v132 = vcvtq_f64_f32(*v114.f32);
    v133 = vcvt_hight_f64_f32(v114);
    v134 = vcvtq_f64_f32(*v115.f32);
    v135 = vcvt_hight_f64_f32(v115);
    v136 = vcvtq_f64_f32(*v116.f32);
    v137 = vcvt_hight_f64_f32(v116);
    v117 = a4;
    v118 = a2;
  }

  sub_1AF344414(v117, v118, a3, &v130);
}

char *sub_1AF343A48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF33A418(a2, a2, a3, a4);
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = objc_msgSend_animationKeys(result, v5, v6, v7);
  result = objc_msgSend_count(v9, v10, v11, v12);
  if (!result)
  {
    return result;
  }

  v231 = v8;
  v15 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v230 = _Q0;
  __asm { FMOV            V0.4S, #1.0 }

  v239 = _Q0;
  v229 = v9;
  while (2)
  {
    v232 = v15;
    v22 = objc_msgSend_objectAtIndex_(v9, v13, v15, v14);
    v25 = objc_msgSend_animationPlayerForKey_(v231, v23, v22, v24);
    v29 = objc_msgSend_animation(v25, v26, v27, v28);
    v253 = xmmword_1AFE47B50;
    v254 = v230;
    v256[0] = 0;
    v256[1] = 0;
    v255 = v256;
    v33 = objc_msgSend_caAnimation(v29, v30, v31, v32);
    sub_1AF344934(&v253, v33);
    v37 = objc_opt_new();
    v250 = 0;
    v251 = 0;
    v252 = 0;
    v38 = *a2;
    v39 = a2[1];
    while (v38 != v39)
    {
      v40 = *v38;
      v41 = objc_msgSend_name(*v38, v34, v35, v36);
      v45 = objc_msgSend_UTF8String(v41, v42, v43, v44);
      sub_1AF13D250(&__p, v45);
      v46 = sub_1AF33C394(&v255, &__p.__r_.__value_.__l.__data_);
      if (v256 == v46)
      {
        if (!objc_msgSend_identifier(v40, v34, v35, v36))
        {
          goto LABEL_14;
        }

        v47 = objc_msgSend_identifier(v40, v34, v35, v36);
        v51 = objc_msgSend_UTF8String(v47, v48, v49, v50);
        sub_1AF2737B0(&__p, v51);
        v46 = sub_1AF33C394(&v255, &__p.__r_.__value_.__l.__data_);
      }

      if (v46 != v256)
      {
        v52 = **a2;
        v53 = &stru_1F2575650;
        do
        {
          v54 = objc_msgSend_name(v40, v34, v35, v36);
          v56 = sub_1AF338AE8(v54, v55);
          v53 = objc_msgSend_stringByAppendingPathComponent_(v56, v57, v53, v58);
          if (v40 == v52)
          {
            break;
          }

          v40 = objc_msgSend_parentNode(v40, v34, v59, v36);
        }

        while (v40);
        objc_msgSend_addObject_(v37, v34, v53, v36);
        sub_1AF341604(&v250, &__p);
      }

LABEL_14:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v38;
    }

    v63 = objc_msgSend_count(v37, v34, v35, v36);
    if (v63)
    {
      v64 = sub_1AF342FF0(a1, v60, v61, v62);
      v66 = sub_1AF338AE8(v22, v65);
      v69 = objc_msgSend_stringByAppendingPathComponent_(v64, v67, v66, v68);
      v228 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v70, v69, v71);
      v72 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v228, *(a1 + 56), v228, qword_1EB658E10);
      v74 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v73, v72, @"joints", qword_1EB658DC8, qword_1EB658E40);
      objc_msgSend_setStringArray_(v74, v75, v37, v76);

      memset(&__p, 0, sizeof(__p));
      sub_1AF179938(&__p, 0xAAAAAAAAAAAAAAABLL * (v251 - v250));
      v246 = 0;
      v247 = 0;
      v248 = 0;
      sub_1AF179938(&v246, 0xAAAAAAAAAAAAAAABLL * (v251 - v250));
      v243 = 0;
      v244 = 0;
      v245 = 0;
      sub_1AF179938(&v243, 0xAAAAAAAAAAAAAAABLL * (v251 - v250));
      v77 = *(&v253 + 1) - *&v253;
      v78 = ((*(&v253 + 1) - *&v253) / *&v254 + 0.5);
      if ((v78 & 0x80000000) == 0)
      {
        v79 = 0;
        v80 = v78;
        v233 = v78 + 1;
        v234 = v72;
        v237 = v63;
        do
        {
          v81 = *&v253;
          sub_1AF1086DC(&__p, 0);
          sub_1AF1086DC(&v246, 0);
          sub_1AF1086DC(&v243, 0);
          v84 = v250;
          v83 = v251;
          v238 = v251;
          while (v84 != v83)
          {
            v242.n128_u32[2] = 0;
            v242.n128_u64[0] = 0;
            v240 = v239;
            v256[3] = v84;
            v85 = sub_1AF344E54(&v255, v84);
            v241 = xmmword_1AFE201A0;
            v242 = 0u;
            v240 = v239;
            v90 = *(v85 + 56);
            v89 = *(v85 + 64);
            while (v90 != v89)
            {
              v91 = *v90;
              v92 = objc_msgSend_keyTimes(*v90, v86, v87, v88);
              if (objc_msgSend_count(v92, v93, v94, v95))
              {
                v96 = objc_msgSend_keyPath(v91, v86, v87, v88);
                v99 = objc_msgSend_componentsSeparatedByString_(v96, v97, @".", v98);
                objc_msgSend_duration(v91, v100, v101, v102);
                v104 = v103;
                v108 = objc_msgSend_count(v92, v105, v106, v107);
                v111 = objc_msgSend_objectAtIndexedSubscript_(v92, v109, v108 - 1, v110);
                objc_msgSend_doubleValue(v111, v112, v113, v114);
                v116 = v115;
                v119 = objc_msgSend_objectAtIndexedSubscript_(v92, v117, 0, v118);
                objc_msgSend_doubleValue(v119, v120, v121, v122);
                v126 = 0;
                if (v116 - v127 >= 0.0001 && v104 >= 0.0001)
                {
                  objc_msgSend_beginTime(v91, v123, v124, v125);
                  if (objc_msgSend_count(v92, v128, v129, v130) <= v79)
                  {
                    v126 = objc_msgSend_count(v92, v131, v132, v133) - 1;
                  }

                  else
                  {
                    v134 = objc_msgSend_objectAtIndexedSubscript_(v92, v131, v79, v133);
                    objc_msgSend_doubleValue(v134, v135, v136, v137);
                    v126 = v79;
                  }
                }

                v138 = objc_msgSend_objectAtIndex_(v99, v123, 1, v125);
                if (objc_msgSend_isEqualToString_(v138, v139, @"transform", v140))
                {
                  v144 = objc_msgSend_keyTimes(v91, v141, v142, v143);
                  if (objc_msgSend_count(v144, v145, v146, v147))
                  {
                    v148 = objc_msgSend_values(v91, v86, v87, v88);
                    v151 = objc_msgSend_objectAtIndexedSubscript_(v148, v149, v126, v150);
                    objc_msgSend_VFXMatrix4Value(v151, v152, v153, v154);
                    sub_1AF3041C0(&v241, &v242, &v240, v155, v156, v157, v158);
                  }
                }

                else if ((objc_msgSend_isEqualToString_(v138, v141, @"position", v143) & 1) != 0 || objc_msgSend_isEqualToString_(v138, v159, @"translation", v161))
                {
                  v162 = objc_msgSend_keyTimes(v91, v159, v160, v161);
                  if (objc_msgSend_count(v162, v163, v164, v165))
                  {
                    v166 = objc_msgSend_values(v91, v86, v87, v88);
                    v169 = objc_msgSend_objectAtIndexedSubscript_(v166, v167, v126, v168);
                    objc_msgSend_VFXFloat3Value(v169, v170, v171, v172);
                    v242 = v173;
                  }
                }

                else if ((objc_msgSend_isEqualToString_(v138, v159, @"orientation", v161) & 1) != 0 || objc_msgSend_isEqualToString_(v138, v174, @"quaternion", v176))
                {
                  v177 = objc_msgSend_keyTimes(v91, v174, v175, v176);
                  if (objc_msgSend_count(v177, v178, v179, v180))
                  {
                    v181 = objc_msgSend_values(v91, v86, v87, v88);
                    v184 = objc_msgSend_objectAtIndexedSubscript_(v181, v182, v126, v183);
                    objc_msgSend_VFXFloat4Value(v184, v185, v186, v187);
                    v241 = v188;
                  }
                }

                else if (objc_msgSend_isEqualToString_(v138, v174, @"scale", v176))
                {
                  v189 = objc_msgSend_keyTimes(v91, v86, v87, v88);
                  if (objc_msgSend_count(v189, v190, v191, v192))
                  {
                    v193 = objc_msgSend_values(v91, v86, v87, v88);
                    if (v126 >= objc_msgSend_count(v193, v194, v195, v196))
                    {
                      v199 = objc_msgSend_objectAtIndexedSubscript_(v193, v197, 0, v198);
                    }

                    else
                    {
                      v199 = objc_msgSend_objectAtIndexedSubscript_(v193, v197, v126, v198);
                    }

                    objc_msgSend_VFXFloat3Value(v199, v200, v201, v202);
                    v240 = v203;
                  }
                }
              }

              ++v90;
            }

            sub_1AF1083F4(&__p, &v242);
            v63 = v237;
            v204 = v247;
            if (v247 >= v248)
            {
              v206 = (v247 - v246) >> 4;
              v207 = v206 + 1;
              if ((v206 + 1) >> 60)
              {
                sub_1AF10A1D0();
              }

              v208 = v248 - v246;
              if ((v248 - v246) >> 3 > v207)
              {
                v207 = v208 >> 3;
              }

              if (v208 >= 0x7FFFFFFFFFFFFFF0)
              {
                v209 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v209 = v207;
              }

              if (v209)
              {
                sub_1AF10A1E0(&v246, v209);
              }

              v210 = (16 * v206);
              *v210 = v241;
              i64 = 16 * v206 + 16;
              v211 = (16 * v206 - (v247 - v246));
              memcpy(v210 - (v247 - v246), v246, v247 - v246);
              v212 = v246;
              v246 = v211;
              v247 = i64;
              v248 = 0;
              if (v212)
              {
                operator delete(v212);
              }
            }

            else
            {
              *v247 = v241;
              i64 = v204[1].i64;
            }

            v247 = i64;
            sub_1AF1083F4(&v243, &v240);
            v84 += 3;
            v83 = v238;
          }

          v213 = (v77 * v79 / v80 + v81) / *(a1 + 504) + 0.0;
          v214 = v213;
          if (vabdd_f64(v213, v214) >= 0.001)
          {
            v215 = v234;
            if (1.0 - (v213 - v214) < 0.001)
            {
              v213 = v214 + 1.0;
            }

            v216 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v82, v234, @"translations", qword_1EB658D90, qword_1EB658E40);
          }

          else
          {
            v213 = v213;
            v215 = v234;
            v216 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v82, v234, @"translations", qword_1EB658D90, qword_1EB658E40);
          }

          objc_msgSend_setFloat3Array_count_atTime_(v216, v217, __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4, v213);
          v219 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v218, v215, @"rotations", qword_1EB658DC0, qword_1EB658E40);
          objc_msgSend_setQuatfArray_count_atTime_(v219, v220, v246, (v247 - v246) >> 4, v213);
          v222 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v221, v215, @"scales", qword_1EB658D90, qword_1EB658E40);
          objc_msgSend_setFloat3Array_count_atTime_(v222, v223, v243, (v244 - v243) >> 4, v213);
          ++v79;
        }

        while (v79 != v233);
      }

      if (v243)
      {
        v244 = v243;
        operator delete(v243);
      }

      if (v246)
      {
        v247 = v246;
        operator delete(v246);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
    }

    __p.__r_.__value_.__r.__words[0] = &v250;
    sub_1AF338DF4(&__p);
    sub_1AF345044(&v255, v256[0]);
    if (!v63)
    {
      v9 = v229;
      v227 = objc_msgSend_count(v229, v224, v225, v226);
      v15 = v232 + 1;
      if (v232 + 1 >= v227)
      {
        return 0;
      }

      continue;
    }

    return v228;
  }
}

void sub_1AF3442E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  a41 = (v46 - 248);
  sub_1AF338DF4(&a41);
  sub_1AF345044(v46 - 192, *(v46 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_1AF3443A8(uint64_t result, const char *a2)
{
  if (!*(result + 120))
  {
    v2 = result;
    v3 = *(result + 104);
    if (v3)
    {
      v5 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, v3, @"skel:animationSource", qword_1EB658DA8, qword_1EB658E40);
      result = objc_msgSend_setObjectPath_(v5, v6, a2, v7);
      *(v2 + 120) = a2;
    }
  }

  return result;
}