uint64_t _MGSSetLazyFuncs(uint64_t a1, void *a2, pthread_mutex_t *a3)
{
  qword_1ED4ADF68 = a1;
  off_1ED4ADF58 = a2;
  qword_1ED4ADF60 = a3;
  pthread_mutex_lock(a3);
  v3 = qword_1ED4ADF68;
  *(qword_1ED4ADF68 + 208) = sub_1C393BAC0;
  v3[27] = sub_1C393C0A0;
  v3[28] = sub_1C3938DB4;
  v3[29] = sub_1C3938370;
  v3[30] = sub_1C39387B4;
  v3[31] = _MGSCopyLocalizedString;
  v3[32] = sub_1C393B9B0;
  v3[33] = sub_1C3938760;
  v3[34] = sub_1C393B1CC;
  v3[35] = j__objc_msgSend_processIdentifier;
  v3[36] = sub_1C393B528;
  v3[37] = sub_1C393B3B0;
  v3[38] = sub_1C3938E84;
  v3[39] = sub_1C393B41C;
  v3[40] = sub_1C393B070;
  v3[41] = sub_1C39382B4;
  v3[42] = sub_1C393C5E4;
  v3[43] = sub_1C393C95C;
  v3[44] = sub_1C393B488;
  v3[45] = sub_1C393C8A8;
  v3[46] = sub_1C3938750;
  v3[47] = sub_1C393C4AC;
  v3[48] = sub_1C393B4E4;
  v3[49] = j__objc_msgSend_start;
  v3[50] = sub_1C393C8F8;
  v3[51] = sub_1C393B62C;
  v4 = qword_1ED4ADF60;

  return pthread_mutex_unlock(v4);
}

void *sub_1C39382B4(int a1, int a2)
{
  pthread_mutex_lock(qword_1ED4ADF60);
  v4 = *(qword_1ED4ADF68 + 8 * a1);
  if (!v4)
  {
    v5 = &off_1E81B15E0[2 * a1];
    v6 = *v5;
    v7 = dlopen(*v5, 1);
    if (!v7 || (a2 != 3 ? (v12 = dlsym(v7, v5[1])) : (v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, v5[1], v9, v10), v12 = NSClassFromString(v11)), (v4 = v12) == 0))
    {
      sub_1C393D7BC(v5, v6);
    }
  }

  pthread_mutex_unlock(qword_1ED4ADF60);
  return v4;
}

id sub_1C3938370(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3052000000;
  v54 = sub_1C3938930;
  v55 = sub_1C39389EC;
  v56 = 0;
  v3 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_proxy(MobileGestaltHelperProxy, v4, v5, v6, v7);
  v13 = objc_msgSend_helper(v8, v9, v10, v11, v12);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_1C3938940;
  v51[3] = &unk_1E81B15C0;
  v51[4] = &buf;
  objc_msgSend_getServerAnswerForQuestion_reply_(v13, v14, a1, v51, v15);
  if (objc_msgSend_error(v8, v16, v17, v18, v19))
  {
    v24 = off_1ED4ADF58;
    if (off_1ED4ADF58)
    {
      v25 = objc_msgSend_error(v8, v20, v21, v22, v23);
      v24(v25);
    }
  }

  objc_msgSend_invalidate(v8, v20, v21, v22, v23);
  objc_autoreleasePoolPop(v3);
  v26 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);
  if (v26)
  {
    v33 = objc_msgSend_objectForKey_(v26, v27, @"answer", v28, v29);
    v34 = off_1ED4ADF58;
    if (off_1ED4ADF58)
    {
      v35 = objc_msgSend_objectForKey_(v26, v30, @"error", v31, v32);
      v40 = objc_msgSend_intValue(v35, v36, v37, v38, v39);
      v34(v40);
    }

    v41 = objc_msgSend_objectForKeyedSubscript_(v26, v30, @"logString", v31, v32);
    if (v41)
    {
      v42 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m", 47);
      if (v42)
      {
        v48 = v42 + 1;
      }

      else
      {
        v48 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m";
      }

      sub_1C3938818(v48, 87, @"%@", v43, v44, v45, v46, v47, v41);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v41;
        _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v33 = 0;
  }

  objc_autoreleasePoolPop(v2);
  v49 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_1C39385BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C3938760(uint64_t a1, uint64_t a2)
{
  v4 = [MGNotificationRegistration alloc];

  return MEMORY[0x1EEE66B58](v4, sel_initWithQueue_block_, a1, a2, v5);
}

id sub_1C39387B4(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a2, v6, v7);
  v12 = objc_msgSend_valueForEntitlement_(a1, v9, v8, v10, v11);
  objc_autoreleasePoolPop(v4);
  return v12;
}

void sub_1C3938818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"libMobileGestalt %s:%d: %@", a1, a2, a3, 0);
  v11 = CFStringCreateWithFormatAndArguments(v9, 0, v10, &a9);
  Length = CFStringGetLength(v11);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v14 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v14)
  {
    if (CFStringGetCString(v11, v14, MaximumSizeForEncoding + 1, 0x8000100u) == 1 && off_1EC07CCD8 != 0)
    {
      off_1EC07CCD8(v14);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  free(v14);
}

id _MGSCopyLocalizedString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E696AAE8];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, a1, v11, v12);
  v17 = objc_msgSend_bundleWithPath_(v9, v14, v13, v15, v16);
  if (v17)
  {
    v22 = v17;
    v52 = a3;
    v23 = objc_msgSend_localizations(v17, v18, v19, v20, v21);
    if (v23)
    {
      v27 = v23;
      v28 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v24, @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", v25, v26);
      v32 = objc_msgSend_objectForKey_(v28, v29, @"AppleLanguages", v30, v31);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = objc_msgSend_objectForKey_(v28, v33, @"NSLanguages", v34, v35);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = objc_msgSend_preferredLocalizationsFromArray_forPreferences_(MEMORY[0x1E696AAE8], v24, v27, v32, v36);
        if (objc_msgSend_count(v37, v38, v39, v40, v41))
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v24, &v53, v57, 16);
          if (v42)
          {
            v43 = v42;
            v44 = *v54;
LABEL_9:
            v45 = 0;
            while (1)
            {
              if (*v54 != v44)
              {
                objc_enumerationMutation(v37);
              }

              v46 = *(*(&v53 + 1) + 8 * v45);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v48 = objc_msgSend_localizedStringForKey_value_table_localization_(v22, v47, a2, 0, a4, v46);
                if (v48)
                {
                  break;
                }
              }

              if (v43 == ++v45)
              {
                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v47, &v53, v57, 16);
                if (v43)
                {
                  goto LABEL_9;
                }

                goto LABEL_19;
              }
            }

            v49 = v48;
            if (v49)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

LABEL_19:
    v49 = objc_msgSend_localizedStringForKey_value_table_(v22, v24, a2, v52, a4);
  }

  else
  {
    v49 = 0;
  }

LABEL_20:
  objc_autoreleasePoolPop(v8);
  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

uint64_t sub_1C3938C38(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v19, v23, 16);
  if (v4)
  {
    v9 = v4;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 8), v5, v12, v7, v8);
        objc_msgSend__removeBlock_(v12, v14, v13, v15, v16);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v19, v23, 16);
    }

    while (v9);
  }

  result = objc_msgSend_removeAllObjects(*(*(a1 + 32) + 8), v5, v6, v7, v8);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3938DB4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_cancel(a1, a2, a3, a4, a5);
}

BOOL sub_1C3938E84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(qword_1ED4ADF68 + 752);
  if (!v5)
  {
    v5 = sub_1C39382B4(94, 3);
  }

  v9 = objc_msgSend_sharedConnection(v5, a2, a3, a4, a5);
  v10 = *(qword_1ED4ADF68 + 736);
  if (!v10)
  {
    v10 = sub_1C39382B4(92, 1);
  }

  return objc_msgSend_effectiveBoolValueForSetting_(v9, v6, *v10, v7, v8) == 2;
}

dispatch_queue_t sub_1C3938EF0()
{
  result = dispatch_queue_create("com.apple.MobileGestalt.observers", 0);
  qword_1ED4ADF50 = result;
  return result;
}

void sub_1C3938F1C(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (!qword_1ED4ADF40)
  {
    qword_1ED4ADF40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v2, *(a1 + 56), v3, v4);
  v7 = *(a1 + 32);
  v25[0] = v6;
  v25[1] = v7;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v25, 2, v9);
  *(*(*(a1 + 48) + 8) + 40) = objc_msgSend_objectForKey_(qword_1ED4ADF40, v11, v10, v12, v13);
  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v19 = [MGNotificationObserver alloc];
    *(*(*(a1 + 48) + 8) + 40) = objc_msgSend_initWithType_argument_(v19, v20, *(a1 + 56), *(a1 + 32), v21);
    objc_msgSend_setObject_forKey_(qword_1ED4ADF40, v22, *(*(*(a1 + 48) + 8) + 40), v10, v23);
  }

  objc_msgSend__addBlock_(*(*(*(a1 + 48) + 8) + 40), v16, *(a1 + 40), v17, v18);
  objc_autoreleasePoolPop(v5);
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C3939318(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = a2;
    _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IPC error %@", &v24, 0xCu);
  }

  objc_msgSend_setError_(*(a1 + 32), v4, 10, v5, v6);
  v11 = objc_msgSend_domain(a2, v7, v8, v9, v10);
  result = objc_msgSend_isEqual_(v11, v12, *MEMORY[0x1E696A250], v13, v14);
  if (result)
  {
    result = objc_msgSend_code(a2, v16, v17, v18, v19);
    if (result == 4097)
    {
      result = objc_msgSend_setError_(*(a1 + 32), v20, 11, v21, v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C39394B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3939594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C3939800(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_updateWatcher(*(a1 + 32), a2, a3, a4, a5);
  if (result)
  {
    v7 = *(*(*(a1 + 32) + 64) + 16);

    return v7();
  }

  return result;
}

uint64_t sub_1C3939ADC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_updateWatcher(*(a1 + 32), a2, a3, a4, a5);
  if (result)
  {
    v7 = *(*(*(a1 + 32) + 64) + 16);

    return v7();
  }

  return result;
}

void sub_1C3939BB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 48);
  if (v4)
  {

    dispatch_source_cancel(v4);
  }
}

uint64_t sub_1C3939CE0(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, a2, &v9, v13, 16);
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, &v9, v13, 16);
      v4 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C393A9BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 2) != 0)
  {
    MEMORY[0x1EEE66B58](a3, sel_invokeBlocks, a3, a4, a5);
  }
}

void sub_1C393AFCC(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1)
  {
    v6[6] = v1;
    v6[7] = v2;
    v4 = *(v3 + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1C393B058;
    v6[3] = &unk_1E81B1528;
    v5 = *(a1 + 40);
    v6[4] = v3;
    v6[5] = v5;
    dispatch_async(v4, v6);
  }
}

uint64_t sub_1C393B070(uint64_t a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_1C3938930;
  v36 = sub_1C39389EC;
  v37 = 0;
  v2 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_proxy(MobileGestaltHelperProxy, v3, v4, v5, v6);
  v12 = objc_msgSend_helper(v7, v8, v9, v10, v11);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1C393B1BC;
  v31[3] = &unk_1E81B1598;
  v31[4] = &v32;
  objc_msgSend_getSpringboardRegionOverride_reply_(v12, v13, a1, v31, v14);
  if (objc_msgSend_error(v7, v15, v16, v17, v18))
  {
    v23 = off_1ED4ADF58;
    if (off_1ED4ADF58)
    {
      v24 = objc_msgSend_error(v7, v19, v20, v21, v22);
      v23(v24);
    }
  }

  objc_msgSend_invalidate(v7, v19, v20, v21, v22);
  objc_autoreleasePoolPop(v2);
  v25 = v33[5];
  _Block_object_dispose(&v32, 8);
  return objc_msgSend_BOOLValue(v25, v26, v27, v28, v29);
}

void sub_1C393B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C393B1CC(_DWORD *a1, _DWORD *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (MGGetSInt32Answer() == 4)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3052000000;
    v54 = sub_1C3938930;
    v55 = sub_1C39389EC;
    v56 = 0;
    v6 = objc_autoreleasePoolPush();
    v11 = objc_msgSend_proxy(MobileGestaltHelperProxy, v7, v8, v9, v10);
    v16 = objc_msgSend_helper(v11, v12, v13, v14, v15);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_1C393B3A0;
    v50[3] = &unk_1E81B15C0;
    v50[4] = &v51;
    objc_msgSend_getAppleTVMode_(v16, v17, v50, v18, v19);
    if (objc_msgSend_error(v11, v20, v21, v22, v23))
    {
      v28 = off_1ED4ADF58;
      if (off_1ED4ADF58)
      {
        v29 = objc_msgSend_error(v11, v24, v25, v26, v27);
        v28(v29);
      }
    }

    objc_msgSend_invalidate(v11, v24, v25, v26, v27);
    objc_autoreleasePoolPop(v6);
    v30 = v52[5];
    _Block_object_dispose(&v51, 8);
    v31 = v30;
    v35 = objc_msgSend_objectForKeyedSubscript_(v30, v32, @"width", v33, v34);
    v39 = objc_msgSend_objectForKeyedSubscript_(v30, v36, @"height", v37, v38);
    v5 = 0;
    if (v35)
    {
      v44 = v39;
      if (v39)
      {
        *a1 = objc_msgSend_intValue(v35, v40, v41, v42, v43);
        *a2 = objc_msgSend_intValue(v44, v45, v46, v47, v48);
        v5 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_1C393B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1C393B3B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(qword_1ED4ADF68 + 752);
  if (!v5)
  {
    v5 = sub_1C39382B4(94, 3);
  }

  v9 = objc_msgSend_sharedConnection(v5, a2, a3, a4, a5);
  v10 = *(qword_1ED4ADF68 + 728);
  if (!v10)
  {
    v10 = sub_1C39382B4(91, 1);
  }

  return objc_msgSend_effectiveBoolValueForSetting_(v9, v6, *v10, v7, v8) == 2;
}

BOOL sub_1C393B41C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(qword_1ED4ADF68 + 752);
  if (!v5)
  {
    v5 = sub_1C39382B4(94, 3);
  }

  v9 = objc_msgSend_sharedConnection(v5, a2, a3, a4, a5);
  v10 = *(qword_1ED4ADF68 + 744);
  if (!v10)
  {
    v10 = sub_1C39382B4(93, 1);
  }

  return objc_msgSend_effectiveBoolValueForSetting_(v9, v6, *v10, v7, v8) == 2;
}

uint64_t sub_1C393B488()
{
  v0 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_proxy(MobileGestaltHelperProxy, v1, v2, v3, v4);
  v10 = objc_msgSend_proxyRebuildCache(v5, v6, v7, v8, v9);
  objc_msgSend_invalidate(v5, v11, v12, v13, v14);
  _MGClearInProcessCache();
  objc_autoreleasePoolPop(v0);
  return v10;
}

uint64_t sub_1C393B4E4()
{
  v0 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_proxy(MobileGestaltHelperProxy, v1, v2, v3, v4);
  v10 = objc_msgSend_proxySetCacheSentinel(v5, v6, v7, v8, v9);
  objc_autoreleasePoolPop(v0);
  return v10;
}

uint64_t sub_1C393B528()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v13 = 0;
  v1 = sub_1C393D990(&v13);
  if (v1)
  {
    v2 = v1;
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m";
    }

    sub_1C3938818(v9, 259, @"getSensorProvisioningState returned error %ld", v4, v5, v6, v7, v8, v2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v2;
      _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "getSensorProvisioningState returned error %ld", buf, 0xCu);
    }
  }

  v10 = v13;
  objc_autoreleasePoolPop(v0);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1C393B62C(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v41 = 0;
  v6 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v5, a1, 200, 0, &v41);
  if (v6)
  {
    v10 = v6;
    v40 = 0;
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, a2, v8, v9);
    objc_msgSend_writeToFile_options_error_(v10, v12, v11, 268435457, &v40);
    if (v40)
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m";
      v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m", 47);
      if (v14)
      {
        v13 = v14 + 1;
      }

      objc_msgSend_localizedDescription(v40, v15, v16, v17, v18);
      sub_1C3938818(v13, 288, @"Failed to persist file %s with reason: %@", v19, v20, v21, v22, v23, a2);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_msgSend_localizedDescription(v40, v24, v25, v26, v27);
        *buf = 136315394;
        v43 = a2;
        v44 = 2112;
        v45 = v28;
        v29 = MEMORY[0x1E69E9C10];
        v30 = "Failed to persist file %s with reason: %@";
        v31 = 22;
LABEL_12:
        _os_log_impl(&dword_1C3937000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v31);
      }
    }
  }

  else
  {
    v32 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m", 47);
    if (v32)
    {
      v38 = v32 + 1;
    }

    else
    {
      v38 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m";
    }

    sub_1C3938818(v38, 279, @"failed to write cache: %@", v33, v34, v35, v36, v37, v41);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v41;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "failed to write cache: %@";
      v31 = 12;
      goto LABEL_12;
    }
  }

  objc_autoreleasePoolPop(v4);
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C393B818(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C393B8C4(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_sharedClient(v5, v6, v7, v8, v9);
  if (v10)
  {
    result = objc_msgSend_crashreporterKey(v10, v11, v12, v13, v14);
    if (result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "Valid OTATaskAgentClient but failed to get CrashReporterID.";
      v18 = &v19;
LABEL_7:
      _os_log_impl(&dword_1C3937000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Failed to get OTATaskAgentClient for CrashReporterID.";
    v18 = buf;
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1C393B8C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1C3938930;
  v5 = qword_1EC07CCD0;
  v12 = sub_1C39389EC;
  v13 = qword_1EC07CCD0;
  if (!qword_1EC07CCD0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1C393C9C0;
    v7[3] = &unk_1E81B1C68;
    v7[4] = &v8;
    sub_1C393C9C0(v7, a2, a3, a4, a5);
    v5 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1C393B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C393B9B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EC07CCC0 != -1)
  {
    sub_1C393D898();
  }

  v6 = qword_1EC07CCB8;

  return objc_msgSend_copy(v6, a2, a3, a4, a5);
}

uint64_t sub_1C393B9F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C393B818(a1, a2, a3, a4, a5);
  qword_1EC07CCB8 = result;
  return result;
}

uint64_t sub_1C393BA14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C393B8C4(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_sharedClient(v5, v6, v7, v8, v9);
  if (v10)
  {
    result = objc_msgSend_awdKey(v10, v11, v12, v13, v14);
    if (result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "Valid OTATaskAgentClient but failed to get CrashReporterID.";
      v18 = &v19;
LABEL_7:
      _os_log_impl(&dword_1C3937000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Failed to get OTATaskAgentClient for AWDID.";
    v18 = buf;
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1C393BAC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EC07CCB0 != -1)
  {
    sub_1C393D8AC();
  }

  v6 = qword_1EC07CCA8;

  return objc_msgSend_copy(v6, a2, a3, a4, a5);
}

uint64_t sub_1C393BB04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C393BA14(a1, a2, a3, a4, a5);
  qword_1EC07CCA8 = result;
  return result;
}

SEL sub_1C393BB24(int a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v3 = @"baseProfile";
      }

      else
      {
        v3 = @"baseVersion";
      }

      return NSSelectorFromString(&v3->isa);
    }

    if (a1 == 7)
    {
      v3 = @"displayCSN";

      return NSSelectorFromString(&v3->isa);
    }

    if (a1 == 8)
    {
      v3 = @"CSN";

      return NSSelectorFromString(&v3->isa);
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v3 = @"MEID";
      }

      else
      {
        v3 = @"baseId";
      }

      return NSSelectorFromString(&v3->isa);
    }

    if (a1 == 1)
    {
      v3 = @"ICCID";

      return NSSelectorFromString(&v3->isa);
    }

    if (a1 == 2)
    {
      v3 = @"IMEI";

      return NSSelectorFromString(&v3->isa);
    }
  }

  v6 = v1;
  v7 = v2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Key not recognized", v5, 2u);
  }

  return 0;
}

uint64_t sub_1C393BC9C(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v13) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Invalid equipmentInfo";
LABEL_13:
    v10 = 2;
    goto LABEL_14;
  }

  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v13) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Invalid CT selector";
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v13) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "EquipmentInfo doesn't respond to target selector";
    goto LABEL_13;
  }

  v7 = objc_msgSend_performSelector_(a1, v4, a2, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Target selector returned unexpected class %@";
      v10 = 12;
LABEL_14:
      _os_log_impl(&dword_1C3937000, v8, OS_LOG_TYPE_DEFAULT, v9, &v13, v10);
    }

LABEL_15:
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1C393BE38(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_meInfoList(a1, a2, a3, a4, a5, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v9)
  {
    v14 = v9;
    v15 = *v27;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v7);
      }

      v17 = *(*(&v26 + 1) + 8 * v16);
      v18 = objc_msgSend_slotId(v17, v10, v11, v12, v13);
      if (!v6 && v18 == 1)
      {
        break;
      }

      v23 = objc_msgSend_slotId(v17, v19, v20, v21, v22);
      if (v6 == 1 && v23 == 2)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v26, v30, 16);
        v17 = 0;
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  result = sub_1C393BC9C(v17, a3);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C393BF6C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = objc_msgSend_meInfoList(a1, a2, a3, a4, a5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      result = sub_1C393BC9C(*(*(&v16 + 1) + 8 * v11), a2);
      if (result)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v16, v20, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "All slots had nil at desired property", v15, 2u);
    }

    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

const void *sub_1C393C0A0(int a1, const char *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = sub_1C393BB24(a1);
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "getSelectorForKey failed. No selector found.", buf, 2u);
  }

  v26 = 0;
  v4 = objc_alloc_init(MEMORY[0x1E69650A0]);
  MobileEquipmentInfo = objc_msgSend_getMobileEquipmentInfo_(v4, v5, &v26, v6, v7);
  v12 = v26;
  if (v26)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v21 = 0;
      goto LABEL_9;
    }

    v17 = objc_msgSend_localizedDescription(v12, v13, v14, v15, v16);
    *buf = 138412290;
    v28 = v17;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "MobileEquipmentInfo failed with error %@";
    v20 = 12;
LABEL_7:
    _os_log_impl(&dword_1C3937000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 != 2)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "invalid index selected";
      v20 = 2;
      goto LABEL_7;
    }

    v24 = sub_1C393BF6C(MobileEquipmentInfo, v3, v9, v10, v11);
  }

  else
  {
    v24 = sub_1C393BE38(MobileEquipmentInfo, a2, v3, v10, v11);
  }

  v21 = v24;
  if (v24)
  {
    CFRetain(v24);
  }

LABEL_9:
  if (v4)
  {
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_1C393C248(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v49 = 0;
  SubscriptionInfoWithError = objc_msgSend_getSubscriptionInfoWithError_(a1, a2, &v49, a4, a5);
  v12 = v49;
  if (!SubscriptionInfoWithError || v49)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_msgSend_localizedDescription(v12, v28, v29, v30, v31);
      *buf = 138412290;
      v52 = v32;
      v33 = MEMORY[0x1E69E9C10];
      v34 = "Failed to get subscription info with error %@";
      v35 = 12;
LABEL_23:
      _os_log_impl(&dword_1C3937000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
    }

LABEL_24:
    SIMStatus_error = 0;
    goto LABEL_25;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = objc_msgSend_subscriptions(SubscriptionInfoWithError, v8, v9, v10, v11, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v45, v50, 16);
  if (!v15)
  {
LABEL_21:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v52) = v5;
      v33 = MEMORY[0x1E69E9C10];
      v34 = "No subscription context found for slot %d";
      v35 = 8;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v20 = v15;
  v21 = *v46;
LABEL_5:
  v22 = 0;
  while (1)
  {
    if (*v46 != v21)
    {
      objc_enumerationMutation(v13);
    }

    v23 = *(*(&v45 + 1) + 8 * v22);
    v24 = objc_msgSend_slotID(v23, v16, v17, v18, v19);
    if (!v5 && v24 == 1)
    {
      break;
    }

    v27 = objc_msgSend_slotID(v23, v16, v25, v26, v19);
    if (v5 == 1 && v27 == 2)
    {
      break;
    }

    if (v20 == ++v22)
    {
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v45, v50, 16);
      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  if (!v23)
  {
    goto LABEL_21;
  }

  SIMStatus_error = objc_msgSend_getSIMStatus_error_(a1, v16, v23, &v49, v19);
  v37 = v49;
  if (v49 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v42 = objc_msgSend_localizedDescription(v37, v38, v39, v40, v41);
    *buf = 138412290;
    v52 = v42;
    _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "getSimStatus failed with error %@", buf, 0xCu);
  }

LABEL_25:
  v43 = *MEMORY[0x1E69E9840];
  return SIMStatus_error;
}

const void *sub_1C393C4AC(int a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v4 = objc_alloc_init(MEMORY[0x1E69650A0]);
  v9 = v4;
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      SIMTrayStatusOrError = sub_1C393C248(v4, a2, v6, v7, v8);
      goto LABEL_8;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  SIMTrayStatusOrError = objc_msgSend_getSIMTrayStatusOrError_(v4, v5, &v20, v7, v8);
  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1C393CB60(2);
      v16 = objc_msgSend_localizedDescription(v20, v12, v13, v14, v15);
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Query for %@ returned error %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:
  v17 = SIMTrayStatusOrError;
  if (SIMTrayStatusOrError)
  {
    CFRetain(SIMTrayStatusOrError);
  }

LABEL_10:
  if (v9)
  {
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

id sub_1C393C5E4(int a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v45 = 0;
  if (a1)
  {
    if (a1 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v48) = a1;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "Invalid index: %d";
        v32 = 8;
LABEL_22:
        _os_log_impl(&dword_1C3937000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
      }

LABEL_23:
      v33 = 0;
      v34 = 0;
      v7 = 0;
      goto LABEL_32;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = objc_alloc_init(MEMORY[0x1E69650A0]);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = MEMORY[0x1E69E9C10];
      v31 = "Failed to alloc telephony client.";
      v32 = 2;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v7 = v3;
  SubscriptionInfoWithError = objc_msgSend_getSubscriptionInfoWithError_(v3, v4, &v45, v5, v6);
  if (!SubscriptionInfoWithError)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v45;
      v35 = MEMORY[0x1E69E9C10];
      v36 = "Failed to retrieve subscription info: %@";
      v37 = 12;
LABEL_30:
      _os_log_impl(&dword_1C3937000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
    }

LABEL_31:
    v33 = 0;
    v34 = 0;
    goto LABEL_32;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = objc_msgSend_subscriptions(SubscriptionInfoWithError, v9, v10, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v46, 16);
  if (!v15)
  {
LABEL_28:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = MEMORY[0x1E69E9C10];
      v36 = "Failed to retrieve phone number.";
      v37 = 2;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v18 = v15;
  v19 = *v42;
LABEL_9:
  v20 = 0;
  while (1)
  {
    if (*v42 != v19)
    {
      objc_enumerationMutation(v13);
    }

    v21 = *(*(&v41 + 1) + 8 * v20);
    PhoneNumber_error = objc_msgSend_getPhoneNumber_error_(v7, v16, v21, 0, v17);
    if (PhoneNumber_error)
    {
      v25 = PhoneNumber_error;
      if (objc_msgSend_isPresent(PhoneNumber_error, v16, v23, v24, v17))
      {
        if (objc_msgSend_slotID(v21, v16, v26, v27, v17) == v2)
        {
          break;
        }
      }
    }

    if (v18 == ++v20)
    {
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v41, v46, 16);
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  v38 = objc_msgSend_number(v25, v16, v28, v29, v17);
  if (!v38)
  {
    goto LABEL_28;
  }

  v34 = v38;
  v33 = v38;
LABEL_32:

  v39 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t sub_1C393C8A8()
{
  v1 = *(qword_1ED4ADF68 + 768);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1C39382B4(96, 2);
  }

  return v1();
}

CFPropertyListRef sub_1C393C8F8()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = CFPreferencesCopyAppValue(@"StoreDemoMode", @"com.apple.demo-settings");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID())
    {
      return v2;
    }
  }

  return v0;
}

CFPropertyListRef sub_1C393C95C()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = CFPreferencesCopyAppValue(@"PressDemoMode", @"com.apple.demo-settings");
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID())
    {
      return v2;
    }
  }

  return v0;
}

Class sub_1C393C9C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if (!qword_1EC07CCC8)
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = sub_1C393CAEC;
    v12[4] = &unk_1E81B1CA0;
    v12[5] = v12;
    v13 = xmmword_1E81B1C88;
    v14 = 0;
    qword_1EC07CCC8 = _sl_dlopen();
  }

  if (!qword_1EC07CCC8)
  {
    sub_1C393D928(v12, a2, a3, a4, a5);
  }

  if (v12[0])
  {
    free(v12[0]);
  }

  result = objc_getClass("OTATaskingAgentClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1C393D8C0(result, v7, v8, v9, v10);
  }

  qword_1EC07CCD0 = *(*(*(a1 + 32) + 8) + 40);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C393CAEC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EC07CCC8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1C393CB60(int a1)
{
  v1 = @"MGS_SIM_NULL_STATUS";
  if (a1 == 2)
  {
    v1 = @"MGS_SIM_TRAY_STATUS";
  }

  if (a1 == 1)
  {
    v2 = @"MGS_SIM_STATUS";
  }

  else
  {
    v2 = v1;
  }

  CFRetain(v2);
  return v2;
}

os_log_t sub_1C393CBB0()
{
  result = os_log_create("com.apple.BiometricKit", "Library-MesaFactory");
  qword_1EC07CCF0 = result;
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1C393D088(&v1);
      result = v1;
    }

    else
    {
      result = 0;
    }
  }

  qword_1EC07CCE8 = result;
  return result;
}

uint64_t sub_1C393CC1C(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v8 = a5 + 8;
  if (a5 >= 0xFFFFFFFFFFFFFFF8)
  {
    sub_1C393D1C4(a5 >= 0xFFFFFFFFFFFFFFF8, &outputStructCnt);
    return outputStructCnt;
  }

  v15 = malloc_type_malloc(a5 + 8, 0x85702932uLL);
  if (!v15)
  {
    sub_1C393D0E8();
    return outputStructCnt;
  }

  v16 = v15;
  *v15 = 19778;
  v15[1] = a2;
  v15[2] = 1;
  v15[3] = a3;
  if (a5)
  {
    memmove(v15 + 4, a4, a5);
  }

  if (a7)
  {
    outputStructCnt = *a7;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
    *a7 = outputStructCnt;
  }

  else
  {
    outputStructCnt = 0;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
  }

  free(v16);
  return v17;
}

uint64_t sub_1C393CD50()
{
  v0 = sub_1C393CC1C(dword_1EC07CCE4, 2, 1, 0, 0, 0, 0);
  v1 = v0;
  if (v0)
  {
    sub_1C393D2C4();
  }

  return v1;
}

uint64_t sub_1C393CDA8()
{
  v2 = 0;
  v1 = 4;
  if (sub_1C393CC1C(dword_1EC07CCE4, 16, 0, 0, 0, &v2, &v1))
  {
    sub_1C393D3A0();
  }

  else if (v1 != 4)
  {
    sub_1C393D47C(&v2);
  }

  return v2;
}

uint64_t sub_1C393CE20()
{
  if (!dword_1EC07CCE4)
  {
    v0 = *MEMORY[0x1E696CD68];
    v1 = IOServiceMatching("AppleBiometricServices");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (!MatchingService)
    {
      sub_1C393D640();
      return v6;
    }

    v3 = MatchingService;
    if (IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &dword_1EC07CCE4))
    {
      sub_1C393D55C();
      return v5;
    }

    IOObjectRelease(v3);
  }

  if (!sub_1C393CDA8())
  {
    sub_1C393CD50();
  }

  return 0;
}

void sub_1C393CF84(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL sub_1C393CFA4@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_1C393CFC4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL sub_1C393CFE4@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

uint64_t sub_1C393D020@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

BOOL sub_1C393D03C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_1C393D088(void *a1)
{
  *v2 = 0;
  _os_log_error_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Couldn't create OS Log for 'com.apple.BiometricKit.Library-MesaFactory'!\n", v2, 2u);
  *a1 = qword_1EC07CCF0;
}

void sub_1C393D0E8()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393CFA4(qword_1EC07CCF0))
  {
    sub_1C393CEFC();
    sub_1C393CF3C();
    sub_1C393CF84(&dword_1C3937000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  sub_1C393D078();
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C393D1C4(uint64_t a1, _DWORD *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393D03C(qword_1EC07CCF0))
  {
    sub_1C393CF50();
    sub_1C393D014();
    sub_1C393CF3C();
    sub_1C393D004();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 1;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1C393D2C4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393CFA4(qword_1EC07CCF0))
  {
    sub_1C393CF1C();
    sub_1C393CF3C();
    sub_1C393CF84(&dword_1C3937000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C393D3A0()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393CFA4(qword_1EC07CCF0))
  {
    sub_1C393CF1C();
    sub_1C393CF3C();
    sub_1C393CF84(&dword_1C3937000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C393D47C(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393CFA4(qword_1EC07CCF0))
  {
    sub_1C393CEFC();
    sub_1C393CF3C();
    sub_1C393CF84(&dword_1C3937000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1C393D55C()
{
  sub_1C393CF64();
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393CFE4(qword_1EC07CCF0))
  {
    sub_1C393CEDC();
    sub_1C393CF3C();
    sub_1C393CFC4(&dword_1C3937000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  sub_1C393D030();
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C393D640()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EC07CCA0 != -1)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (sub_1C393CFA4(qword_1EC07CCF0))
  {
    sub_1C393CEFC();
    sub_1C393CF3C();
    sub_1C393CF84(&dword_1C3937000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  sub_1C393CF74(0x2BCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C393D720(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 67109378;
  v2[1] = a1;
  v3 = 2080;
  v4 = xpc_strerror();
  _os_log_error_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1C393D7BC(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m", 47);
  if (v4)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MobileGestaltSupport.m";
  }

  v11 = *(a1 + 8);
  sub_1C3938818(v10, 330, @"%s missing from %s\n", v5, v6, v7, v8, v9, v11);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = v11;
    v14 = 2080;
    v15 = a2;
    _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s missing from %s\n", buf, 0x16u);
  }

  __assert_rtn("_MGSLoadSymbol", "MobileGestaltSupport.m", 331, "0");
}

void sub_1C393D8C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4, a5);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "Class getOTATaskingAgentClientClass(void)_block_invoke", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v10, v9, @"MobileGestaltSupport.m", 33, @"Unable to find class %s", "OTATaskingAgentClient");
  __break(1u);
}

void sub_1C393D928(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "void *CrashReporterSupportLibrary(void)", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"MobileGestaltSupport.m", 32, @"%s", *a1);
  __break(1u);
}

uint64_t sub_1C393D990(char *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  sub_1C393D06C();
  if (!v4)
  {
    dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
  }

  if (qword_1EC07CCE8)
  {
    v2 = qword_1EC07CCE8;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = a1;
    _os_log_impl(&dword_1C3937000, v2, OS_LOG_TYPE_DEFAULT, "getSensorProvisioningState(%p)\n", &v22, 0xCu);
  }

  if (a1)
  {
    if (byte_1EC07CCF9 == 1)
    {
      v3 = 0;
      *a1 = dword_1EC07CC98;
    }

    else
    {
      v3 = sub_1C393CE20();
      if (v3)
      {
        sub_1C393D06C();
        if (!v4)
        {
          dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
        }

        v16 = sub_1C393D020(qword_1EC07CCF0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = 136316162;
          v23 = "err == 0 ";
          v24 = 2048;
          v25 = v3;
          sub_1C393D014();
          v26 = "";
          sub_1C393CF3C();
          v27 = 406;
          sub_1C393D004();
          _os_log_impl(v17, v18, v19, v20, v21, 0x30u);
        }
      }

      else
      {
        *a1 = sub_1C393CDA8();
      }
    }
  }

  else
  {
    v3 = 3758097090;
  }

  if (dword_1EC07CCE4)
  {
    IOServiceClose(dword_1EC07CCE4);
    dword_1EC07CCE4 = 0;
  }

  sub_1C393D06C();
  if (v3)
  {
    if (!v4)
    {
      dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
    }

    v5 = sub_1C393D020(qword_1EC07CCE8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v6 = *a1;
      }

      v22 = 67109376;
      LODWORD(v23) = v3;
      sub_1C393D05C();
      sub_1C393D004();
LABEL_28:
      _os_log_impl(v9, v10, v11, v12, v13, 0xEu);
    }
  }

  else
  {
    if (!v4)
    {
      dispatch_once(&qword_1EC07CCA0, &unk_1F42F4520);
    }

    v7 = sub_1C393D020(qword_1EC07CCE8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v8 = *a1;
      }

      v22 = 67109376;
      LODWORD(v23) = 0;
      sub_1C393D05C();
      v9 = &dword_1C3937000;
      v12 = "getSensorProvisioningState -> err:0x%x, state:%d\n";
      v13 = &v22;
      v10 = 0x1EC07C000;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_28;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}