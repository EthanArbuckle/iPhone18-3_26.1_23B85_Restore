uint64_t sub_260ECC640(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_280CCF568 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260ECD418(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_evaluationMetrics(a1, a2, a3);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v12 = objc_msgSend_evaluationMetrics(a1, v8, v9);
      v14 = objc_msgSend_featuresAtIndex_(v12, v13, v10);

      v16 = objc_msgSend_featureValueForName_(v14, v15, @"Identity_1");
      v19 = objc_msgSend_multiArrayValue(v16, v17, v18);
      v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0);

      objc_msgSend_doubleValue(v21, v22, v23);
      v11 = v11 + v24;

      ++v10;
    }

    while (v7 != v10);
  }

  v25 = MEMORY[0x277CCABB0];

  return objc_msgSend_numberWithDouble_(v25, v8, v9, v11 / v7);
}

id sub_260ECD52C(void *a1, uint64_t a2, void *a3)
{
  v56 = a3;
  v6 = objc_msgSend_evaluationMetrics(a1, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9 < 1)
  {
    v52 = 0;
  }

  else
  {
    v57 = 0;
    v12 = 0;
    v55 = v9;
    do
    {
      v13 = objc_msgSend_evaluationMetrics(a1, v10, v11);
      v15 = objc_msgSend_featuresAtIndex_(v13, v14, v12);

      v17 = objc_msgSend_featureValueForName_(v15, v16, @"Identity_0");
      v20 = v17;
      if (v17)
      {
        v21 = objc_msgSend_multiArrayValue(v17, v18, v19);
        v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 0);
        objc_msgSend_doubleValue(v23, v24, v25);
        v27 = v26;
        v30 = objc_msgSend_count(v21, v28, v29);

        v33 = objc_msgSend_count(v21, v31, v32);
        v35 = objc_msgSend_featuresAtIndex_(v56, v34, v12);
        v37 = objc_msgSend_featureValueForName_(v35, v36, @"label_input_0");
        v40 = v37;
        if (v37)
        {
          v41 = v27 + (v30 * v12);
          v42 = v41 + v33;
          if (v41 >= v42)
          {
            v42 = v27 + (v30 * v12);
          }

          v43 = a1;
          v44 = (v42 - v41);
          v45 = objc_msgSend_multiArrayValue(v37, v38, v39);
          v47 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 0);

          v50 = objc_msgSend_intValue(v47, v48, v49) == v44;
          a1 = v43;
          v9 = v55;
          if (v50)
          {
            v51 = v57 + 1;
          }

          else
          {
            v51 = v57;
          }

          v57 = v51;
        }
      }

      ++v12;
    }

    while (v9 != v12);
    v52 = v57;
  }

  v53 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, v52 / v9);

  return v53;
}

BOOL sub_260ECDD48(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_isAppStoreVendable(v2, v3, v4))
  {
    v9 = objc_msgSend_bundleIdentifier(v2, v5, v6);
    if (v9)
    {
      v10 = objc_msgSend_bundleIdentifier(v2, v7, v8);
      v13 = objc_msgSend_length(v10, v11, v12) != 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_260ECDE4C()
{
  qword_280CCF580 = objc_alloc_init(APOdmlAssetManagerCoordinator);

  return MEMORY[0x2821F96F8]();
}

void sub_260ECE07C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_respondToRefreshNotification(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x277CBEA60];
    v10 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v4, 0);
    v8 = objc_msgSend_arrayWithObjects_(v6, v7, v10, 0);
    objc_msgSend_refreshTrialClientForPlacementTypes_(v5, v9, v8);
  }
}

void sub_260ECE534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260ECE558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_trialClient(WeakRetained, v1, v2);
  objc_msgSend_refresh(v3, v4, v5);
}

void sub_260ECF438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260ECF7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260ECF9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_260ECFBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = APOdmlEspressoIOBufferController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_260ECFC4C(uint64_t a1, const char *a2, void *a3)
{
  v3 = objc_msgSend_bufferPointer(a3, a2, a3);
  if (v3)
  {

    free(v3);
  }

  else
  {
    v4 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_260ECB000, v4, OS_LOG_TYPE_ERROR, "Input buffer is released too early.", v5, 2u);
    }
  }
}

void *sub_260ECFE10(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_260ECFE88(result, a2);
  }

  return result;
}

void sub_260ECFE6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_260ECFE88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_260ECFEDC(a1, a2);
  }

  sub_260ECFEC4();
}

void sub_260ECFEDC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_260ECFFB4();
}

void sub_260ECFF24(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_260ECFF80(exception, a1);
  __cxa_throw(exception, off_279AC5E88, MEMORY[0x277D825F0]);
}

std::logic_error *sub_260ECFF80(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_260ECFFB4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

id sub_260ED06E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v33[0] = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v33, 1);
  v8 = objc_alloc(MEMORY[0x277CBFF48]);
  v28 = 0;
  v10 = objc_msgSend_initWithShape_dataType_error_(v8, v9, v7, 65600, &v28);
  v13 = v28;
  if (v13)
  {
    v14 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = v13;
      v16 = v15;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  else
  {
    if (objc_msgSend_unsignedLongValue(v5, v11, v12))
    {
      v21 = 0;
      do
      {
        LODWORD(v20) = *(a3 + 4 * v21);
        v22 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20);
        objc_msgSend_setObject_atIndexedSubscript_(v10, v23, v22, v21);

        ++v21;
      }

      while (v21 < objc_msgSend_unsignedLongValue(v5, v24, v25));
    }

    v17 = v10;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

id sub_260ED08B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v33[0] = &unk_28736F1B8;
  v33[1] = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v33, 2);
  v8 = objc_alloc(MEMORY[0x277CBFF48]);
  v28 = 0;
  v10 = objc_msgSend_initWithShape_dataType_error_(v8, v9, v7, 65600, &v28);
  v13 = v28;
  if (v13)
  {
    v14 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = v13;
      v16 = v15;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  else
  {
    if (objc_msgSend_unsignedLongValue(v5, v11, v12))
    {
      v21 = 0;
      do
      {
        LODWORD(v20) = *(a3 + 4 * v21);
        v22 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20);
        objc_msgSend_setObject_atIndexedSubscript_(v10, v23, v22, v21);

        ++v21;
      }

      while (v21 < objc_msgSend_unsignedLongValue(v5, v24, v25));
    }

    v17 = v10;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

id sub_260ED0A80(uint64_t a1, uint64_t a2, void *a3)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_numberWithUnsignedInteger_(v4, v8, v7);
  v35[0] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v35, 1);
  v12 = objc_alloc(MEMORY[0x277CBFF48]);
  v30 = 0;
  v14 = objc_msgSend_initWithShape_dataType_error_(v12, v13, v11, 65600, &v30);
  v17 = v30;
  if (v17)
  {
    v18 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = v17;
      v20 = v19;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    if (objc_msgSend_count(v3, v15, v16))
    {
      v23 = 0;
      do
      {
        v24 = objc_msgSend_objectAtIndexedSubscript_(v3, v22, v23);
        objc_msgSend_setObject_atIndexedSubscript_(v14, v25, v24, v23);

        ++v23;
      }

      while (v23 < objc_msgSend_count(v3, v26, v27));
    }

    v21 = v14;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

id sub_260ED0C64(uint64_t a1, uint64_t a2, void *a3)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_numberWithUnsignedInteger_(v4, v8, v7);
  v35[0] = &unk_28736F1B8;
  v35[1] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v35, 2);
  v12 = objc_alloc(MEMORY[0x277CBFF48]);
  v30 = 0;
  v14 = objc_msgSend_initWithShape_dataType_error_(v12, v13, v11, 65600, &v30);
  v17 = v30;
  if (v17)
  {
    v18 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = v17;
      v20 = v19;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    if (objc_msgSend_count(v3, v15, v16))
    {
      v23 = 0;
      do
      {
        v24 = objc_msgSend_objectAtIndexedSubscript_(v3, v22, v23);
        objc_msgSend_setObject_atIndexedSubscript_(v14, v25, v24, v23);

        ++v23;
      }

      while (v23 < objc_msgSend_count(v3, v26, v27));
    }

    v21 = v14;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

id sub_260ED0E50(uint64_t a1, uint64_t a2, void *a3)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  v7 = objc_msgSend_doubleValuesCount(v3, v5, v6);
  v9 = objc_msgSend_initWithUnsignedLong_(v4, v8, v7);
  v38[0] = &unk_28736F1B8;
  v38[1] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v38, 2);
  v12 = objc_alloc(MEMORY[0x277CBFF48]);
  v33 = 0;
  v14 = objc_msgSend_initWithShape_dataType_error_(v12, v13, v11, 65600, &v33);
  v17 = v33;
  if (v17)
  {
    v18 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412546;
      v35 = v19;
      v36 = 2112;
      v37 = v17;
      v20 = v19;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    if (objc_msgSend_doubleValuesCount(v3, v15, v16))
    {
      v22 = 0;
      do
      {
        v23 = objc_alloc(MEMORY[0x277CCABB0]);
        objc_msgSend_doubleValueAtIndex_(v3, v24, v22);
        v27 = objc_msgSend_initWithDouble_(v23, v25, v26);
        objc_msgSend_setObject_atIndexedSubscript_(v14, v28, v27, v22);

        ++v22;
      }

      while (v22 < objc_msgSend_doubleValuesCount(v3, v29, v30));
    }

    v21 = v14;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

id sub_260ED1054(uint64_t a1, uint64_t a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  v7 = objc_msgSend_doubleValuesCount(v3, v5, v6);
  v9 = objc_msgSend_initWithUnsignedLong_(v4, v8, v7);
  v38[0] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v38, 1);
  v12 = objc_alloc(MEMORY[0x277CBFF48]);
  v33 = 0;
  v14 = objc_msgSend_initWithShape_dataType_error_(v12, v13, v11, 65600, &v33);
  v17 = v33;
  if (v17)
  {
    v18 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412546;
      v35 = v19;
      v36 = 2112;
      v37 = v17;
      v20 = v19;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    if (objc_msgSend_doubleValuesCount(v3, v15, v16))
    {
      v22 = 0;
      do
      {
        v23 = objc_alloc(MEMORY[0x277CCABB0]);
        objc_msgSend_doubleValueAtIndex_(v3, v24, v22);
        v27 = objc_msgSend_initWithDouble_(v23, v25, v26);
        objc_msgSend_setObject_atIndexedSubscript_(v14, v28, v27, v22);

        ++v22;
      }

      while (v22 < objc_msgSend_doubleValuesCount(v3, v29, v30));
    }

    v21 = v14;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

id sub_260ED1250(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  if (objc_msgSend_count(a1, v5, v6) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(a1, v7, v9);
      objc_msgSend_addObject_(v4, v11, v10);

      ++v9;
    }

    while (v9 < objc_msgSend_count(a1, v12, v13));
  }

  v14 = objc_msgSend_copy(v4, v7, v8);

  return v14;
}

void sub_260ED157C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_dictionary(a2, a2, a3);
  (*(v4 + 16))(v4, v5, a3);
}

uint64_t sub_260ED16E4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_dictionary(a2, a2, a3);
  v5 = (*(v3 + 16))(v3, v4);

  return v5;
}

void sub_260ED1734(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_dictionary(a2, a2, a3);
  (*(v4 + 16))(v4, v5, a3);
}

uint64_t sub_260ED18EC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_eventBody(a2, a2, a3);
  v5 = (*(v3 + 16))(v3, v4);

  return v5;
}

uint64_t sub_260ED19E4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_dictionary(a2, a2, a3);
  v6 = (*(v4 + 16))(v4, v5, a3);

  return v6;
}

uint64_t sub_260ED1AF0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_eventBody(a2, a2, a3);
  v6 = (*(v4 + 16))(v4, v5, a3);

  return v6;
}

void sub_260ED1CF4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_state(v3, v4, v5))
  {
    v6 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v13 = objc_msgSend_streamName(v9, v11, v12);
      v16 = objc_msgSend_error(v3, v14, v15);
      v19 = objc_msgSend_code(v16, v17, v18);
      v22 = objc_msgSend_error(v3, v20, v21);
      v25 = objc_msgSend_localizedDescription(v22, v23, v24);
      v27 = 138478595;
      v28 = v8;
      v29 = 2114;
      v30 = v13;
      v31 = 2048;
      v32 = v19;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "[%{private}@] Stream %{public}@ failed with error %ld: %{public}@", &v27, 0x2Au);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

BOOL sub_260ED1E60(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_eventBody(a2, a2, a3);
  (*(v4 + 16))(v4, v5, *(*(a1 + 40) + 8) + 24);

  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

uint64_t sub_260ED2C54(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_260ED2CC8;
  v5[3] = &unk_279AC6160;
  v5[4] = v2;
  return objc_msgSend_loadPersistentStoresWithCompletionHandler_(v3, a2, v5);
}

void sub_260ED2CC8(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v9;
    v13 = objc_msgSend_options(v5, v11, v12);
    v51 = 138478083;
    v52 = v9;
    v53 = 2113;
    v54 = v13;
    _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@] NSPersistentStoreDescription: %{private}@", &v51, 0x16u);
  }

  v14 = OdmlLogForCategory(4uLL);
  v15 = v14;
  if (v6)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v51 = 138478083;
      v52 = v17;
      v53 = 2112;
      v54 = v6;
      v18 = v17;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to load Core Data stack with error: %@", &v51, 0x16u);
    }

    v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"APOdmlFeatureStorageErrorDomain", 5002, 0);
    v21 = MEMORY[0x277CBEAC0];
    v22 = MEMORY[0x277CCABB0];
    v25 = objc_msgSend_numLaunchesAttempted(*(a1 + 32), v23, v24);
    v27 = objc_msgSend_numberWithInt_(v22, v26, v25);
    v29 = objc_msgSend_dictionaryWithObject_forKey_(v21, v28, v27, @"numberAttempts");

    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v30, v20, v29);
    v31 = *(a1 + 32);
    v32 = v6;
    v33 = *(v31 + 24);
    *(v31 + 24) = v32;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = objc_opt_class();
      v51 = 138477827;
      v52 = v35;
      v36 = v35;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_DEFAULT, "[%{private}@] Successfully loaded Core Data stack", &v51, 0xCu);
    }

    v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, @"APOdmlFeatureStorageErrorDomain", 5003, 0);
    v38 = MEMORY[0x277CBEAC0];
    v39 = MEMORY[0x277CCABB0];
    v41 = *(a1 + 32);
    v40 = (a1 + 32);
    v44 = objc_msgSend_numLaunchesAttempted(v41, v42, v43);
    v46 = objc_msgSend_numberWithInt_(v39, v45, v44);
    v29 = objc_msgSend_dictionaryWithObject_forKey_(v38, v47, v46, @"numberAttempts");

    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v48, v20, v29);
    v33 = *v40;
    objc_sync_enter(v33);
    objc_msgSend_setCoreDataIsInitialized_(*v40, v49, 1);
    objc_sync_exit(v33);
  }

  v50 = *MEMORY[0x277D85DE8];
}

unint64_t sub_260ED3158(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(a1, a2, a3);
  if (result >= 2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = arc4random_uniform(v5);
      result = objc_msgSend_exchangeObjectAtIndex_withObjectAtIndex_(a1, v8, v6, v6 + v7);
      ++v6;
      --v5;
    }

    while (v5 != 1);
  }

  return result;
}

void sub_260ED3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_260ED35D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_260ED35EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_value(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260ED39E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_value(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_260ED4114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_260ED4170(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = objc_msgSend_executeFetchRequest_error_(v3, a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_260ED4560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260ED45A0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(MEMORY[0x277CBE408], a2, @"Feature", *(a1 + 32));
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5);
  objc_msgSend_setCreatedAt_(v3, v7, v6);

  v10 = objc_msgSend_deploymentID(*(a1 + 40), v8, v9);
  objc_msgSend_setDeploymentID_(v3, v11, v10);
  v14 = objc_msgSend_experimentID(*(a1 + 40), v12, v13);
  objc_msgSend_setExperimentID_(v3, v15, v14);

  v18 = objc_msgSend_treatmentID(*(a1 + 40), v16, v17);
  objc_msgSend_setTreatmentID_(v3, v19, v18);

  objc_msgSend_setFeatureType_(v3, v20, *(a1 + 48));
  objc_msgSend_setValue_(v3, v21, *(a1 + 56));
  v22 = *(a1 + 32);
  v23 = *(*(a1 + 64) + 8);
  obj = *(v23 + 40);
  objc_msgSend_save_(v22, v24, &obj);
  objc_storeStrong((v23 + 40), obj);
}

void sub_260ED4B94(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v6 = objc_msgSend_createdAt(*(a1 + 32), v4, v5);
  objc_msgSend_timeIntervalSinceDate_(v9, v7, v6);
  *(*(*(a1 + 40) + 8) + 24) = v8;
}

void sub_260ED4C1C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_hasChanges(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    objc_msgSend_save_(v5, v4, &obj);
    objc_storeStrong((v6 + 40), obj);
  }
}

uint64_t sub_260ED4D68(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ED4DF8;
  block[3] = &unk_279AC6188;
  block[4] = a1;
  if (qword_280CCF608 != -1)
  {
    dispatch_once(&qword_280CCF608, block);
  }

  return byte_280CCF590;
}

void sub_260ED4DF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_environment(*(a1 + 32), a2, a3);
  v4 = objc_msgSend_objectForKeyedSubscript_(v5, v3, @"XCTestConfigurationFilePath");
  byte_280CCF590 = v4 != 0;
}

void sub_260ED6BC4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 48);
  v4 = objc_opt_class();
  v6 = objc_msgSend_translateFeatureKeyToDESKey_(v4, v5, v9);
  if (objc_msgSend_containsObject_(*(a1 + 32), v7, v6))
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v8, v6, v9);
  }
}

void sub_260ED88D4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_260EDAB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_260EDC520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260EDCD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = APOdmlEspressoFacade;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_260EDCE2C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_260EDCEA4(result, a2);
  }

  return result;
}

void sub_260EDCE88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_260EDCEA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_260EDCEE0(a1, a2);
  }

  sub_260ECFEC4();
}

void sub_260EDCEE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_260ECFFB4();
}

uint64_t sub_260EDCF28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_260ECFE88(result, a4);
  }

  return result;
}

void sub_260EDCF88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_260EDCFA4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_260EDCEA4(result, a2);
  }

  return result;
}

void sub_260EDD09C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_260EDE278(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = objc_msgSend_adamIDtoBundleID(v4, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v9, v6, v5);
}

__CFString *sub_260EDE728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Counterfactual";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Runtime";
  }
}

__CFString *sub_260EDE754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"SLP";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"SRP";
  }
}

__CFString *sub_260EDE780(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279AC62C0[a3];
  }
}

void APOdmlSimulateCrash(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = OdmlLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
  }

  v8 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v6, v7);
  isRunningTests = objc_msgSend_isRunningTests(v8, v9, v10);

  if (isRunningTests)
  {
    v12 = OdmlLogForCategory(0xAuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_ERROR, "SimCrash called; we should exit at this point. If you see this log outside of the Unit Tests, Please file a radar...", &v14, 2u);
    }
  }

  else
  {
    getpid();
    SimulateCrash();
    if (a3)
    {
      exit(1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ADOdmlResponseV2ReadFrom(_BYTE *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(ADFeature);
        objc_msgSend_addFeatures_(a1, v55, v54);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !ADFeatureReadFrom(v54, a2, v56))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        a1[20] |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v61, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v61[0] & 0x7F) << v33;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_34;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_34:
        a1[16] = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

id sub_260EE0660(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v7 = objc_msgSend_appUsageVector(a1, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_keyForType_(v8, v9, @"appUsageVector");
  objc_msgSend_setObject_forKey_(v4, v11, v7, v10);

  v14 = objc_msgSend_appDownloadVector(a1, v12, v13);
  v15 = objc_opt_class();
  v17 = objc_msgSend_keyForType_(v15, v16, @"appDownloadVector");
  objc_msgSend_setObject_forKey_(v4, v18, v14, v17);

  v21 = objc_msgSend_installedAppVector(a1, v19, v20);
  v22 = objc_opt_class();
  v24 = objc_msgSend_keyForType_(v22, v23, @"installedAppVector");
  objc_msgSend_setObject_forKey_(v4, v25, v21, v24);

  v28 = objc_msgSend_userQueryVector(a1, v26, v27);
  objc_msgSend_setObject_forKey_(v4, v29, v28, @"userQueryVector");

  v32 = objc_msgSend_copy(v4, v30, v31);

  return v32;
}

id sub_260EE07C4(void *a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  v4 = objc_msgSend_dictionaryRepresentation(a1, a2, a3);
  v12 = 0;
  v6 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v3, v5, v4, 1, &v12);
  v7 = v12;

  if (v7)
  {
    v8 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "Failed to archive training row data %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id sub_260EE08E4(void *a1, const char *a2, uint64_t a3)
{
  v92[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v7 = objc_msgSend_onDeviceFeatures(a1, v5, v6);
  objc_msgSend_setObject_forKey_(v4, v8, v7, @"OnDeviceFeatures");

  v9 = MEMORY[0x277CCAAC8];
  v10 = MEMORY[0x277CBEB98];
  v92[0] = objc_opt_class();
  v92[1] = objc_opt_class();
  v92[2] = objc_opt_class();
  v92[3] = objc_opt_class();
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v92, 4);
  v14 = objc_msgSend_setWithArray_(v10, v13, v12);
  v17 = objc_msgSend_serverResponse(a1, v15, v16);
  v87 = 0;
  v19 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v9, v18, v14, v17, &v87);
  v20 = v87;

  if (v20)
  {
    v23 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *buf = 138412546;
      v89 = v24;
      v90 = 2112;
      v91 = v20;
      v25 = v24;
      _os_log_impl(&dword_260ECB000, v23, OS_LOG_TYPE_ERROR, "[%@] Failed to unarchive server response: %@", buf, 0x16u);
    }
  }

  else
  {
    v23 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v21, v22);
    v28 = objc_msgSend_featureValues(v19, v26, v27);
    objc_msgSend_setValue_forKey_(v23, v29, v28, @"ServerResponse");

    v32 = objc_msgSend_adamID(a1, v30, v31);

    if (v32)
    {
      v35 = objc_msgSend_adamID(a1, v33, v34);
      objc_msgSend_setValue_forKey_(v23, v36, v35, @"AdamID");
    }

    v37 = MEMORY[0x277CCABB0];
    v38 = objc_msgSend_impressed(a1, v33, v34);
    v40 = objc_msgSend_numberWithBool_(v37, v39, v38);
    objc_msgSend_setValue_forKey_(v23, v41, v40, @"Impressed");

    v42 = MEMORY[0x277CCABB0];
    v45 = objc_msgSend_tapped(a1, v43, v44);
    v47 = objc_msgSend_numberWithBool_(v42, v46, v45);
    objc_msgSend_setValue_forKey_(v23, v48, v47, @"Tapped");

    v49 = MEMORY[0x277CCABB0];
    v52 = objc_msgSend_dupe(a1, v50, v51);
    v54 = objc_msgSend_numberWithBool_(v49, v53, v52);
    objc_msgSend_setValue_forKey_(v23, v55, v54, @"Dupe");

    v56 = MEMORY[0x277CCABB0];
    v59 = objc_msgSend_installed(a1, v57, v58);
    v61 = objc_msgSend_numberWithBool_(v56, v60, v59);
    objc_msgSend_setValue_forKey_(v23, v62, v61, @"AppInstalled");

    v63 = MEMORY[0x277CCABB0];
    if (objc_msgSend_hasErrorCode(a1, v64, v65))
    {
      objc_msgSend_errorCode(a1, v66, v67);
    }

    else
    {
      v68 = 0;
    }

    v69 = objc_msgSend_numberWithDouble_(v63, v66, v67, v68);
    objc_msgSend_setValue_forKey_(v23, v70, v69, @"rerankingErrorCode");

    v73 = objc_msgSend_recordID(a1, v71, v72);
    objc_msgSend_setValue_forKey_(v23, v74, v73, @"InstanceID");

    v75 = MEMORY[0x277CBEB38];
    v78 = objc_msgSend_adamID(a1, v76, v77);
    v80 = objc_msgSend_dictionaryWithObjectsAndKeys_(v75, v79, v23, v78, 0);

    objc_msgSend_setValue_forKey_(v4, v81, v80, @"AdRecords");
  }

  v84 = objc_msgSend_copy(v4, v82, v83);
  v85 = *MEMORY[0x277D85DE8];

  return v84;
}

id sub_260EE2D28(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, a3);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *sub_260EE2D90(void *a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  v6 = objc_msgSend_mlDictionaryForJSON(a1, a2, a3);
  v22 = 0;
  v8 = objc_msgSend_dataWithJSONObject_options_error_(v5, v7, v6, v4, &v22);
  v9 = v22;

  if (v9)
  {
    v10 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_localizedDescription(v9, v11, v12);
      v16 = objc_msgSend_mlDictionaryForJSON(a1, v14, v15);
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "There was an error serializing the following dictionary into JSON (%@):\n%@", buf, 0x16u);
    }
  }

  if (v8)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithData_encoding_(v17, v18, v8, 4);
  }

  else
  {
    v19 = @"{}";
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id sub_260EE2F10(void *a1, const char *a2, uint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v87, v95, 16);
  if (!v7)
  {
    goto LABEL_53;
  }

  v9 = v7;
  v10 = *v88;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v88 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v87 + 1) + 8 * v11);
      v13 = objc_msgSend_objectForKey_(v5, v8, v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_msgSend_stringValue(v12, v14, v15);
      }

      else
      {
        objc_opt_class();
        v17 = @"UNKNOWN_KEY";
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        v16 = v12;
      }

      v17 = v16;
LABEL_11:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_mlDictionaryForJSON(v13, v18, v19);
LABEL_19:
        v28 = v20;
        objc_msgSend_setObject_forKey_(v4, v21, v20, v17);
LABEL_20:

        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_APOdml_arrayForJSON(v13, v22, v23);
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_APOdml_dataStringForJSON(v13, v24, v25);
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_absoluteString(v13, v26, v27);
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_26;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_doubleValue(v13, v30, v31);
        if (fabs(v32) == INFINITY)
        {
          v75 = OdmlLogForCategory(6uLL);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            v76 = objc_opt_class();
            *buf = 138412546;
            v92 = v13;
            v93 = 2112;
            v94 = v76;
            v77 = v76;
            _os_log_impl(&dword_260ECB000, v75, OS_LOG_TYPE_ERROR, "JSON array validation failed infinity check with the following value: %@ (%@).", buf, 0x16u);
          }

          objc_msgSend_setObject_forKey_(v4, v78, @"∞", v17);
          goto LABEL_53;
        }

LABEL_26:
        objc_msgSend_setObject_forKey_(v4, v29, v13, v17);
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v13;
        if (objc_msgSend_isUndefined(v28, v33, v34))
        {
          objc_msgSend_setObject_forKey_(v4, v35, @"UNDEFINED", v17);
          goto LABEL_20;
        }

        v85 = v28;
        if (objc_msgSend_type(v28, v35, v36) == 2)
        {
          v82 = MEMORY[0x277CCABB0];
          objc_msgSend_doubleValue(v28, v43, v44);
          v47 = objc_msgSend_numberWithDouble_(v82, v45, v46);
LABEL_34:
          v49 = v47;
          objc_msgSend_setObject_forKey_(v4, v48, v47, v17);

          v28 = v85;
          goto LABEL_20;
        }

        if (objc_msgSend_type(v28, v43, v44) == 5)
        {
          v83 = objc_msgSend_multiArrayValue(v28, v53, v54);
          v57 = objc_msgSend_arrayFromMultiarray(v83, v55, v56);
          goto LABEL_42;
        }

        if (objc_msgSend_type(v28, v53, v54) == 7)
        {
          v83 = objc_msgSend_sequenceValue(v28, v60, v61);
          v57 = objc_msgSend_stringValues(v83, v62, v63);
LABEL_42:
          v64 = objc_msgSend_APOdml_arrayForJSON(v57, v58, v59, v57);
          objc_msgSend_setObject_forKey_(v4, v65, v64, v17);

          v28 = v85;
        }

        else
        {
          if (objc_msgSend_type(v28, v60, v61) != 6)
          {
            if (objc_msgSend_type(v28, v66, v67) != 3)
            {
              goto LABEL_20;
            }

            v47 = objc_msgSend_stringValue(v28, v72, v73);
            goto LABEL_34;
          }

          v83 = objc_msgSend_dictionaryValue(v28, v66, v67);
          v70 = objc_msgSend_mlDictionaryForJSON(v83, v68, v69);
          objc_msgSend_setObject_forKey_(v4, v71, v70, v17);

          v28 = v85;
        }

        goto LABEL_20;
      }

      if (objc_opt_respondsToSelector())
      {
        v84 = objc_msgSend_dictionaryRepresentation(v13, v37, v38);
        v41 = objc_msgSend_mlDictionaryForJSON(v84, v39, v40);
        objc_msgSend_setObject_forKey_(v4, v42, v41, v17);
      }

      else
      {
        v50 = OdmlLogForCategory(6uLL);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          *buf = 138412546;
          v92 = v13;
          v93 = 2112;
          v94 = v51;
          v86 = v51;
          _os_log_impl(&dword_260ECB000, v50, OS_LOG_TYPE_ERROR, "WARNING: Unable to serialize the following object into JSON.\n%@ (%@)", buf, 0x16u);
        }

        objc_msgSend_setObject_forKey_(v4, v52, @"INVALID", v17);
      }

LABEL_21:

      ++v11;
    }

    while (v9 != v11);
    v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v87, v95, 16);
    v9 = v74;
    if (v74)
    {
      continue;
    }

    break;
  }

LABEL_53:

  v79 = *MEMORY[0x277D85DE8];

  return v4;
}

id sub_260EE37D4(void *a1, const char *a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v45, v53, 16);
  if (!v7)
  {
    goto LABEL_29;
  }

  v9 = v7;
  v10 = *v46;
  v11 = 0x277CBE000uLL;
  v12 = 0x277CBE000uLL;
  *&v8 = 138412546;
  v44 = v8;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v46 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v45 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_APOdml_arrayForJSON(v14, v15, v16);
LABEL_14:
        v27 = v17;
        objc_msgSend_addObject_(v4, v18, v17, v44);

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_mlDictionaryForJSON(v14, v19, v20);
        goto LABEL_14;
      }

      v21 = *(v11 + 2704);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_APOdml_dataStringForJSON(v14, v22, v23);
        goto LABEL_14;
      }

      v24 = *(v12 + 3008);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_absoluteString(v14, v25, v26);
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_doubleValue(v14, v30, v31);
        if (fabs(v32) == INFINITY)
        {
          v38 = OdmlLogForCategory(6uLL);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = objc_opt_class();
            *buf = v44;
            v50 = v14;
            v51 = 2112;
            v52 = v39;
            v40 = v39;
            _os_log_impl(&dword_260ECB000, v38, OS_LOG_TYPE_ERROR, "JSON array validation failed infinity check with the following value: %@ (%@).", buf, 0x16u);
          }

          objc_msgSend_addObject_(v4, v41, @"∞");
          goto LABEL_29;
        }

LABEL_20:
        objc_msgSend_addObject_(v4, v29, v14, v44, v45);
        goto LABEL_15;
      }

      v33 = v12;
      v34 = OdmlLogForCategory(6uLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        *buf = v44;
        v50 = v14;
        v51 = 2112;
        v52 = v35;
        v36 = v35;
        _os_log_impl(&dword_260ECB000, v34, OS_LOG_TYPE_ERROR, "WARNING: Unable to serialize the following object into JSON.\n%@ (%@)", buf, 0x16u);
      }

      v12 = v33;
      v11 = 0x277CBE000;
LABEL_15:
      ++v13;
    }

    while (v9 != v13);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v28, &v45, v53, 16);
    v9 = v37;
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v42 = *MEMORY[0x277D85DE8];

  return v4;
}

__CFString *sub_260EE3BB0(void *a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  v6 = objc_msgSend_APOdml_arrayForJSON(a1, a2, a3);
  v22 = 0;
  v8 = objc_msgSend_dataWithJSONObject_options_error_(v5, v7, v6, v4, &v22);
  v9 = v22;

  if (v9)
  {
    v10 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_localizedDescription(v9, v11, v12);
      v16 = objc_msgSend_APOdml_arrayForJSON(a1, v14, v15);
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "There was an error serializing the following array into JSON (%@):\n%@", buf, 0x16u);
    }
  }

  if (v8)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithData_encoding_(v17, v18, v8, 4);
  }

  else
  {
    v19 = @"[]";
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void sub_260EE4CE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dictionary(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v5, *(a1 + 64));
  objc_msgSend_logModelInputWithAdamID_adamID_(APOdmlLogUtility, v7, v4, v6);

  v8 = *(a1 + 48);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 56), v9, *(a1 + 64));
  objc_msgSend_saveFeaturesFromResponse_(v8, v10, v11);
}

void sub_260EE6304(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(APOdmlDatabaseConfiguration, a2, a3);
  isDaemonProcess = objc_msgSend_isDaemonProcess(v4, v5, v6);

  if ((isDaemonProcess & 1) == 0)
  {
    v10 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, v8, v9);
    v12 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v10, v11, *(a1 + 32), *(a1 + 40));
    v15 = objc_msgSend_currentMLModel(v12, v13, v14);

    if (!v15)
    {
      v16 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "Unable to prewarm ML model", v17, 2u);
      }
    }
  }
}

BOOL sub_260EE68BC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCAB50], a2, a3);
  objc_msgSend_addCharactersInString_(v4, v5, @".");
  v8 = objc_msgSend_invertedSet(v4, v6, v7);
  v10 = objc_msgSend_rangeOfCharacterFromSet_(a1, v9, v8) == 0x7FFFFFFFFFFFFFFFLL;

  return v10;
}

uint64_t sub_260EE7FC8()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = qword_27FE60368;
  qword_27FE60368 = v0;

  objc_msgSend_setNumberStyle_(qword_27FE60368, v2, 1);
  v3 = qword_27FE60368;

  return MEMORY[0x2821F9670](v3, sel_setDecimalSeparator_, @".");
}

uint64_t sub_260EE85C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_280CCF570 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260EE96DC()
{
  qword_280CCF540 = objc_alloc_init(APOdmlAllowList);

  return MEMORY[0x2821F96F8]();
}

uint64_t ADFeatureReadFrom(char *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v87[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v87, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v87[0] & 0x7F) << v10;
        if ((v87[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v66 = PBReaderReadString();
          if (v66)
          {
            objc_msgSend_addStringValue_(a1, v65, v66);
          }

          goto LABEL_45;
        }

        if (v32 == 4)
        {
          v60 = PBReaderReadString();
          v61 = 32;
LABEL_35:
          v64 = *&a1[v61];
          *&a1[v61] = v60;

          goto LABEL_45;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v60 = PBReaderReadString();
          v61 = 48;
          goto LABEL_35;
        }

        if (v32 == 2)
        {
          if (v9 == 2)
          {
            v87[0] = 0;
            v87[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v36 = objc_msgSend_position(a2, v34, v35);
              if (v36 >= objc_msgSend_length(a2, v37, v38) || (objc_msgSend_hasError(a2, v39, v40) & 1) != 0)
              {
                break;
              }

              v88 = 0;
              v43 = objc_msgSend_position(a2, v41, v42) + 8;
              if (v43 >= objc_msgSend_position(a2, v44, v45) && (v48 = objc_msgSend_position(a2, v46, v47) + 8, v48 <= objc_msgSend_length(a2, v49, v50)))
              {
                v51 = objc_msgSend_data(a2, v46, v47);
                v54 = objc_msgSend_position(a2, v52, v53);
                objc_msgSend_getBytes_range_(v51, v55, &v88, v54, 8);

                v58 = objc_msgSend_position(a2, v56, v57);
                objc_msgSend_setPosition_(a2, v59, v58 + 8);
              }

              else
              {
                objc_msgSend__setError(a2, v46, v47);
              }

              PBRepeatedDoubleAdd();
            }

            PBReaderRecallMark();
          }

          else
          {
            v87[0] = 0;
            v67 = objc_msgSend_position(a2, v32, v9) + 8;
            if (v67 >= objc_msgSend_position(a2, v68, v69) && (v72 = objc_msgSend_position(a2, v70, v71) + 8, v72 <= objc_msgSend_length(a2, v73, v74)))
            {
              v75 = objc_msgSend_data(a2, v70, v71);
              v78 = objc_msgSend_position(a2, v76, v77);
              objc_msgSend_getBytes_range_(v75, v79, v87, v78, 8);

              v82 = objc_msgSend_position(a2, v80, v81);
              objc_msgSend_setPosition_(a2, v83, v82 + 8);
            }

            else
            {
              objc_msgSend__setError(a2, v70, v71);
            }

            PBRepeatedDoubleAdd();
          }

          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v84 = objc_msgSend_position(a2, v62, v63);
    }

    while (v84 < objc_msgSend_length(a2, v85, v86));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_260EEBA60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_260EEBE58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_260EEBE70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v10 = objc_msgSend_taskDeferred(*(a1 + 32), v8, v9);

  if (v10)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))();
    }

    *a4 = 1;
  }

  else
  {
    v14 = objc_msgSend_operationQueue(*(a1 + 32), v11, v12);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_260EEBF88;
    v16[3] = &unk_279AC63D0;
    v16[4] = *(a1 + 32);
    v17 = v7;
    v19 = a3;
    v18 = *(a1 + 40);
    objc_msgSend_addOperationWithBlock_(v14, v15, v16);
  }
}

void sub_260EEBF88(uint64_t a1, const char *a2)
{
  objc_msgSend_runFeatureCalculator_(*(a1 + 32), a2, *(a1 + 40));
  v3 = *(a1 + 56);
  v6 = objc_msgSend_validFeatureCalculators(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) - 1;

  if (v3 == v9)
  {
    v12 = objc_msgSend_operationQueue(*(a1 + 32), v10, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_260EEC06C;
    v14[3] = &unk_279AC63A8;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    objc_msgSend_addOperationWithBlock_(v12, v13, v14);
  }
}

uint64_t sub_260EEC06C(uint64_t a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_calculatorErrors(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_count(v4, v5, v6);

  v8 = OdmlLogForCategory(3uLL);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = v11;
      v16 = objc_msgSend_calculatorErrors(v12, v14, v15);
      v21 = 138478083;
      v22 = v11;
      v23 = 2113;
      v24 = v16;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: Failed to calculate features with the following errors: %{private}@", &v21, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v21 = 138477827;
    v22 = objc_opt_class();
    v18 = v22;
    _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_DEFAULT, "[%{private}@] Successfully calculated all features.", &v21, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_260EEC5DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, a3);
  v7 = objc_msgSend_placementType(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_assetManagerType(*(a1 + 32), v8, v9);
  v15 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v11, v7, v10);

  v13 = objc_msgSend_doubleValueForFactor_(v15, v12, @"LookbackWindow");
  objc_msgSend_deleteExpiredFeaturesForName_lookbackWindow_(v15, v14, @"appUsageVector", v13);
}

id sub_260EEE380(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = OdmlLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);

  v8 = OdmlLogForCategory(5uLL);
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260ECB000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ML Model Loading", &unk_260EFF3C5, buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBFF38]);
  if (a4)
  {
    v13 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138412290;
      v31 = v14;
      v15 = v14;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Current model is explicitly asked to perform prediction on CPU only.", buf, 0xCu);
    }

    objc_msgSend_setComputeUnits_(v12, v16, 0);
  }

  v29 = 0;
  v17 = objc_msgSend_modelWithContentsOfURL_configuration_error_(MEMORY[0x277CBFF20], v11, v5, v12, &v29);
  v18 = v29;
  if (v18)
  {
    v19 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138412546;
      v31 = v20;
      v32 = 2112;
      v33 = v18;
      v21 = v20;
      _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "[%@] Error reading compiled MLModel from URL %@", buf, 0x16u);
    }

    v22 = OdmlLogForCategory(5uLL);
    v23 = v22;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v23, OS_SIGNPOST_INTERVAL_END, v7, "ML Model Loading", &unk_260EFF3C5, buf, 2u);
    }

    v24 = 0;
  }

  else
  {
    v25 = OdmlLogForCategory(5uLL);
    v26 = v25;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v26, OS_SIGNPOST_INTERVAL_END, v7, "ML Model Loading", &unk_260EFF3C5, buf, 2u);
    }

    v24 = v17;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_260EEEA00(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_workQueue(*(a1 + 32), a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_260EEEAB8;
  v7[3] = &unk_279AC68B0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  objc_msgSend_addOperationWithBlock_(v4, v6, v7);
}

void sub_260EEEAB8(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1 && (objc_msgSend_isEqualToDate_(*(a1 + 40), v2, *(v3 + 32)) & 1) != 0)
  {
    objc_sync_exit(obj);

    shouldDefer = objc_msgSend_shouldDefer(*(a1 + 32), v4, v5);
    v9 = *(a1 + 32);
    if (shouldDefer)
    {
      objc_msgSend_endBackgroundDeferralCheck(v9, v6, v7);
      objc_msgSend_deferTask(*(a1 + 32), v10, v11);
      v12 = *(a1 + 48);
      if (v12)
      {
        v13 = *(v12 + 16);

        v13();
      }
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);

      objc_msgSend__backgroundDeferralCheck_completion_(v9, v6, v15, v16);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }

    objc_sync_exit(obj);
  }
}

id OdmlLogForCategory(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    sub_260EF8100();
  }

  if (qword_280CCF598 != -1)
  {
    sub_260EF80EC();
  }

  v2 = qword_280CCF5A0[a1];

  return v2;
}

void sub_260EEEE84()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_260ECB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Initializing log categories.", v26, 2u);
  }

  v0 = os_log_create("com.apple.adplatforms", "AssetManager");
  v1 = qword_280CCF5A0[0];
  qword_280CCF5A0[0] = v0;

  v2 = os_log_create("com.apple.adplatforms", "Request");
  v3 = qword_280CCF5A8;
  qword_280CCF5A8 = v2;

  v4 = os_log_create("com.apple.adplatforms", "Vectors");
  v5 = qword_280CCF5B0;
  qword_280CCF5B0 = v4;

  v6 = os_log_create("com.apple.adplatforms", "FeatureCalculation");
  v7 = qword_280CCF5B8;
  qword_280CCF5B8 = v6;

  v8 = os_log_create("com.apple.adplatforms", "FeatureStorage");
  v9 = qword_280CCF5C0;
  qword_280CCF5C0 = v8;

  v10 = os_log_create("com.apple.adplatforms", "Response");
  v11 = qword_280CCF5C8;
  qword_280CCF5C8 = v10;

  v12 = os_log_create("com.apple.adplatforms", "Extensions");
  v13 = qword_280CCF5D0;
  qword_280CCF5D0 = v12;

  v14 = os_log_create("com.apple.adplatforms", "AllowList");
  v15 = qword_280CCF5D8;
  qword_280CCF5D8 = v14;

  v16 = os_log_create("com.apple.adplatforms", "Analytics");
  v17 = qword_280CCF5E0;
  qword_280CCF5E0 = v16;

  v18 = os_log_create("com.apple.adplatforms", "DODMLLogging");
  v19 = qword_280CCF5E8;
  qword_280CCF5E8 = v18;

  v20 = os_log_create("com.apple.adplatforms", "FatalError");
  v21 = qword_280CCF5F0;
  qword_280CCF5F0 = v20;

  v22 = os_log_create("com.apple.adplatforms", "APOdmlSearchResultsExtension");
  v23 = qword_280CCF5F8;
  qword_280CCF5F8 = v22;

  v24 = os_log_create("com.apple.adplatforms", "BiomeStorage");
  v25 = qword_280CCF600;
  qword_280CCF600 = v24;
}

uint64_t sub_260EF0150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260EF0168(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (objc_msgSend_state(v2, v3, v4) == 1)
  {
    v5 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_msgSend_error(v2, v6, v7);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "Failed to query TrainingRow data: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_260EF0240(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v9 = objc_msgSend_eventBody(v4, v6, v7);

  objc_msgSend_combineRecords_andSaveTo_(v5, v8, v9, *(*(*(a1 + 40) + 8) + 40));
}

void sub_260EF02C8(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v9 = a2;
  v7 = objc_opt_class();
  objc_msgSend_trainingRowsFromBiomeEvent_recordID_requiredFeatures_andSaveTo_(v7, v8, v6, v9, a1[5], *(*(a1[6] + 8) + 40));
}

void sub_260EF0830(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v8 = objc_msgSend_stringWithFormat_(v5, v7, @"_%ld", a3);
  v11 = objc_msgSend_stringByAppendingString_(v4, v9, v8);

  objc_msgSend_setRowID_(v6, v10, v11);
}

uint64_t sub_260EF09AC(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_isValidRow_(a2, a2, *(a1 + 32));
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 40);

    return MEMORY[0x2821F9670](v6, sel_addIndex_, a3);
  }

  return result;
}

uint64_t sub_260EF0E18(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_lastPathComponent(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id sub_260EF0EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBFF48];
  v4 = a3;
  v5 = [v3 alloc];
  v12 = 0;
  v7 = objc_msgSend_initWithShape_dataType_error_(v5, v6, &unk_28736F290, 65600, &v12);
  objc_msgSend_setObject_atIndexedSubscript_(v7, v8, v4, 0);

  v10 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v9, v7);

  return v10;
}

uint64_t sub_260EF1028(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_280CCF578 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_260EF1454(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_listeningLock(*(a1 + 32), a2, a3);
  objc_msgSend_lock(v4, v5, v6);

  if (objc_msgSend_isListening(*(a1 + 32), v7, v8))
  {
    if (objc_msgSend_isListening(*(a1 + 32), v9, v10) && (objc_msgSend_listeningError(*(a1 + 32), v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      v33 = OdmlLogForCategory(4uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 32);
        *buf = 138477827;
        *&buf[4] = objc_opt_class();
        v35 = *&buf[4];
        _os_log_impl(&dword_260ECB000, v33, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer startListening call while server is listening, and did not have an error on previous attempt.", buf, 0xCu);
      }

      v38 = objc_msgSend_listeningLock(*(a1 + 32), v36, v37);
      objc_msgSend_unlock(v38, v39, v40);
    }

    else if (objc_msgSend_isListening(*(a1 + 32), v11, v12))
    {
      v16 = objc_msgSend_listeningError(*(a1 + 32), v14, v15);

      if (v16)
      {
        v17 = OdmlLogForCategory(4uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 138477827;
          *&buf[4] = objc_opt_class();
          v19 = *&buf[4];
          _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer startListening call while server is listening, but had an error on previous attempt.", buf, 0xCu);
        }

        v20 = *(a1 + 32);
        v23 = objc_msgSend_modelURL(v20, v21, v22);
        v25 = objc_msgSend_storeServerForModelURL_(v20, v24, v23);
        objc_msgSend_setStoreServer_(*(a1 + 32), v26, v25);

        objc_msgSend__startListening_(*(a1 + 32), v27, v41, MEMORY[0x277D85DD0], 3221225472, sub_260EF1798, &unk_279AC6188, *(a1 + 32), v42[0], v42[1], v42[2], v42[3], v42[4], *buf);
      }
    }
  }

  else
  {
    v28 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      *buf = 138477827;
      *&buf[4] = objc_opt_class();
      v30 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v28, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer startListening call while server is not listening; first attempt to launch the server.", buf, 0xCu);
    }

    objc_msgSend__startListening_(*(a1 + 32), v31, v42, v41[0], v41[1], v41[2], v41[3], v41[4], MEMORY[0x277D85DD0], 3221225472, sub_260EF1754, &unk_279AC6188, *(a1 + 32), *buf);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_260EF1754(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_listeningLock(*(a1 + 32), a2, a3);
  objc_msgSend_unlock(v5, v3, v4);
}

void sub_260EF1798(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_listeningLock(*(a1 + 32), a2, a3);
  objc_msgSend_unlock(v5, v3, v4);
}

void sub_260EF19E8(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v9;
    v13 = objc_msgSend_options(v5, v11, v12);
    v31 = 138478083;
    v32 = v9;
    v33 = 2113;
    v34 = v13;
    _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@] NSPersistentStoreDescription: %{private}@", &v31, 0x16u);
  }

  objc_msgSend_startListening(*(*(a1 + 32) + 16), v14, v15);
  v16 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v31 = 138477827;
    v32 = v18;
    v19 = v18;
    _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer began listening.", &v31, 0xCu);
  }

  objc_msgSend_setIsListening_(*(a1 + 32), v20, 1);
  objc_msgSend_setListeningError_(*(a1 + 32), v21, v6);
  if (v6)
  {
    v22 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v31 = 138478083;
      v32 = v24;
      v33 = 2112;
      v34 = v6;
      v25 = v24;
      _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "[%{private}@] StoreServer failed to initialize DB with error: %@", &v31, 0x16u);
    }

    v27 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v26, @"APOdmlFeatureStorageErrorDomain", 5011, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v28, v27, 0);
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    (*(v29 + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_260EF20E4(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = OdmlLogForCategory(5uLL);
  v5 = objc_msgSend_ident(*(a1 + 32), v3, v4);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v2))
    {
      LOWORD(v59) = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v2, OS_SIGNPOST_INTERVAL_END, v6, "GCD Overhead", &unk_260EFF3C5, &v59, 2u);
    }
  }

  if (objc_msgSend_count(*(a1 + 40), v7, v8))
  {
    objc_msgSend_setOriginalAds_(*(a1 + 32), v9, *(a1 + 40));
    v12 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11);
    objc_msgSend_setRerankingStartDate_(*(a1 + 32), v13, v12);

    v14 = *(a1 + 40);
    isPersonalizedAdsEnabled = objc_msgSend_isPersonalizedAdsEnabled(*(a1 + 32), v15, v16);
    v20 = objc_msgSend_assetManager(*(a1 + 32), v18, v19);
    v22 = objc_msgSend_BOOLeanValueForFactor_(v20, v21, @"KillSwitch");
    v25 = objc_msgSend_BOOLValue(v22, v23, v24);
    v27 = objc_msgSend_permissionCheck_personalizedAdsEnabled_trialKillswitch_(APOdmlValidator, v26, v14, isPersonalizedAdsEnabled, v25);

    if (!v27)
    {
      v29 = objc_msgSend_predictAndExplore_(*(a1 + 32), v28, *(a1 + 40));
      objc_msgSend_setRerankedAds_(*(a1 + 32), v30, v29);

      v31 = *(a1 + 32);
      v34 = objc_msgSend_rerankedAds(v31, v32, v33);
      LODWORD(v31) = objc_msgSend_sendRerankResponseIfAvailable_error_(v31, v35, v34, 0);

      if (v31)
      {
        v38 = objc_msgSend_rerankingStartDate(*(a1 + 32), v36, v37);
        v41 = objc_msgSend_date(MEMORY[0x277CBEAA8], v39, v40);
        objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v42, 0, 0, 0, v38, v41);
      }

      goto LABEL_18;
    }

    v49 = OdmlLogForCategory(5uLL);
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v27 == 2003)
    {
      if (v50)
      {
        v51 = *(a1 + 32);
        v52 = objc_opt_class();
        v59 = 138412290;
        v60 = v52;
        v53 = v52;
        v54 = "[%@] Reranking Error: Reranking not permitted.";
LABEL_16:
        _os_log_impl(&dword_260ECB000, v49, OS_LOG_TYPE_ERROR, v54, &v59, 0xCu);
      }
    }

    else if (v50)
    {
      v55 = *(a1 + 32);
      v56 = objc_opt_class();
      v59 = 138412290;
      v60 = v56;
      v53 = v56;
      v54 = "[%@] Reranking Error: Reranking not enabled.";
      goto LABEL_16;
    }

    objc_msgSend__handleError_(*(a1 + 32), v57, v27);
    goto LABEL_18;
  }

  v43 = OdmlLogForCategory(5uLL);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = *(a1 + 32);
    v45 = objc_opt_class();
    v46 = *(a1 + 40);
    v59 = 138412546;
    v60 = v45;
    v61 = 2112;
    v62 = v46;
    v47 = v45;
    _os_log_impl(&dword_260ECB000, v43, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: Rankable objects list %@ is empty or nil.", &v59, 0x16u);
  }

  objc_msgSend__handleError_(*(a1 + 32), v48, 2004);
LABEL_18:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_260EF2620(uint64_t a1, const char *a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_rerankedAds(*(a1 + 32), a2, a3);

  v7 = *(a1 + 32);
  if (!v4)
  {
    v18 = objc_msgSend_rerankerError(*(a1 + 32), v5, v6);

    if (v18)
    {
      v21 = *(a1 + 32);
      v22 = objc_msgSend_originalAds(v21, v19, v20);
      v25 = objc_msgSend_rerankerError(*(a1 + 32), v23, v24);
      LODWORD(v21) = objc_msgSend_sendRerankResponseIfAvailable_error_(v21, v26, v22, v25);

      if (v21)
      {
        v27 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 32);
          v29 = objc_opt_class();
          v30 = *(a1 + 32);
          v31 = v29;
          v34 = objc_msgSend_rerankerError(v30, v32, v33);
          *buf = 138412546;
          v50 = v29;
          v51 = 2048;
          v52 = objc_msgSend_code(v34, v35, v36);
          _os_log_impl(&dword_260ECB000, v27, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: %ld.", buf, 0x16u);
        }

        v39 = objc_msgSend_rerankerError(*(a1 + 32), v37, v38);
        v42 = objc_msgSend_rerankingStartDate(*(a1 + 32), v40, v41);
        v45 = objc_msgSend_date(MEMORY[0x277CBEAA8], v43, v44);
        objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v46, v39, 0, 0, v42, v45);
      }
    }

    goto LABEL_11;
  }

  v8 = objc_msgSend_rerankedAds(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_sendRerankResponseIfAvailable_error_(v7, v9, v8, 0);

  if (!v10)
  {
LABEL_11:
    v47 = *MEMORY[0x277D85DE8];
    return;
  }

  v48 = objc_msgSend_rerankingStartDate(*(a1 + 32), v11, v12);
  v15 = objc_msgSend_date(MEMORY[0x277CBEAA8], v13, v14);
  objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v16, 0, 0, 0, v48, v15);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_260EF28B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_rerankDispatchGroup(*(a1 + 32), a2, a3);
  v5 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  v6 = dispatch_group_wait(v4, v5);

  v7 = OdmlLogForCategory(5uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v16 = 138412290;
      v17 = objc_opt_class();
      v10 = v17;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_INFO, "[%@] Reranker failed to complete before SLA was reached", &v16, 0xCu);
    }

    objc_msgSend_rerankResponseTimeout(*(a1 + 32), v11, v12);
  }

  else
  {
    if (v8)
    {
      v13 = *(a1 + 32);
      v16 = 138412290;
      v17 = objc_opt_class();
      v14 = v17;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_INFO, "[%@] Reranker completed before SLA was reached", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_260EF3570()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.ap.reranking", attr);
  v2 = qword_280CCF530;
  qword_280CCF530 = v1;
}

void sub_260EF3638()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.ap.rerankingTimeout", attr);
  v2 = qword_280CCF538;
  qword_280CCF538 = v1;
}

void *get_espresso_buffer_shape@<X0>(void *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  espresso_buffer_unpack_tensor_shape();
  result = sub_260ECFE10(a1, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

float accuracy_in_batch(uint64_t *a1, void *a2)
{
  get_espresso_buffer_shape(&v20);
  v4 = 0.0;
  if ((v21 - v20) >= 9)
  {
    v5 = *v20;
    if (*v20)
    {
      v6 = 0;
      v7 = 0;
      v8 = v20[1];
      v9 = *a1;
      do
      {
        v10 = (v9 + 4 * v7 * v8);
        if (v8 >= 2)
        {
          v12 = v10 + 1;
          v13 = *v10;
          v14 = 4 * v8 - 4;
          v11 = (v9 + 4 * v7 * v8);
          v15 = v10 + 1;
          do
          {
            v16 = *v15++;
            v17 = v16;
            if (v13 < v16)
            {
              v13 = v17;
              v11 = v12;
            }

            v12 = v15;
            v14 -= 4;
          }

          while (v14);
        }

        else
        {
          v11 = (v9 + 4 * v7 * v8);
        }

        if (((v11 - v10) >> 2) == llroundf(*(*a2 + 4 * v7)))
        {
          ++v6;
        }

        ++v7;
      }

      while (v7 != v5);
      v18 = v6;
    }

    else
    {
      v18 = 0.0;
    }

    v4 = v18 / v5;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v4;
}

void print_espresso_buffer(char *a1@<X0>, float **a2@<X1>, std::string *a3@<X8>)
{
  get_espresso_buffer_shape(&v37);
  v6 = v37;
  v7 = 1;
  while (v6 != v38)
  {
    v8 = *v6++;
    v7 *= v8;
  }

  if (v7 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = v7;
  }

  v10 = *a2;
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  sub_260EF3CE0(&v34, v11);
  sub_260EF3D98(&v37, &v31);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v31;
  }

  else
  {
    v12 = v31.__r_.__value_.__r.__words[0];
  }

  sub_260EF3CE0(v32, v12);
  if ((v33 & 0x80u) == 0)
  {
    v13 = v32;
  }

  else
  {
    v13 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v14 = v33;
  }

  else
  {
    v14 = v32[1];
  }

  v15 = std::string::append(&v34, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v35, ": ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_260EF3CE0(v26, "[");
  if (v7 <= 5)
  {
    v19 = "]";
  }

  else
  {
    v19 = "...]";
  }

  sub_260EF3CE0(v24, v19);
  sub_260EF3E58(v10, &v10[v9], v26, v24, &v28);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v28;
  }

  else
  {
    v20 = v28.__r_.__value_.__r.__words[0];
  }

  sub_260EF3CE0(__p, v20);
  if ((v30 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v22 = v30;
  }

  else
  {
    v22 = __p[1];
  }

  v23 = std::string::append(&v36, v21, v22);
  *a3 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_260EF3BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v51 - 73) < 0)
  {
    operator delete(*(v51 - 96));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  v53 = *(v51 - 72);
  if (v53)
  {
    *(v51 - 64) = v53;
    operator delete(v53);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_260EF3CE0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_260EDCE14();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_260EF3D98(unint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_260EF3CE0(v7, "(");
  sub_260EF3CE0(__p, ")");
  sub_260EF4178(v3, v4, v7, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_260EF3E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_260EF3E58(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  sub_260EF3CE0(__p, ", ");
  std::to_string(&v26, *a1);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::insert(&v26, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  a5->__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&a5->__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  for (i = a1 + 1; i != a2; ++i)
  {
    std::to_string(&v25, *i);
    if ((v28 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::insert(&v25, 0, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a5, v20, size);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  std::string::append(a5, v23, v24);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_260EF3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *get_espresso_blob_shape@<X0>(void *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  espresso_network_query_blob_shape();
  result = sub_260ECFE10(a1, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *nd_shape_to_5d_shape@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[1] - *result;
  if (!v2)
  {
    *a2 = 1;
    goto LABEL_8;
  }

  *result;
  v3 = result[1];
  *a2 = *(v3 - 8);
  if ((v2 >> 3) <= 1)
  {
LABEL_8:
    a2[1] = 1;
    goto LABEL_9;
  }

  a2[1] = *(v3 - 16);
  if (v2 == 16)
  {
LABEL_9:
    a2[2] = 1;
    goto LABEL_10;
  }

  a2[2] = *(v3 - 24);
  if ((v2 >> 3) <= 3)
  {
LABEL_10:
    v4 = 1;
    a2[3] = 1;
    goto LABEL_11;
  }

  a2[3] = *(v3 - 32);
  if (v2 == 32)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 - 40);
  }

LABEL_11:
  a2[4] = v4;
  a2[5] = v2 >> 3;
  return result;
}

void sub_260EF4178(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  sub_260EF3CE0(__p, ", ");
  std::to_string(&v26, *a1);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::insert(&v26, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  a5->__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&a5->__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  for (i = a1 + 1; i != a2; ++i)
  {
    std::to_string(&v25, *i);
    if ((v28 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::insert(&v25, 0, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a5, v20, size);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  std::string::append(a5, v23, v24);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_260EF4300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_260EF5A3C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v12 = @"errorSource";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"APODMLDESPluginErrorDomain", 8034, v7);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id sub_260EF5B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v12 = @"errorSource";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"APODMLDESPluginErrorDomain", 8035, v7);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id sub_260EF5C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v12 = @"errorSource";
  v13[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v13, &v12, 1);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"APODMLDESPluginErrorDomain", 8036, v7);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id sub_260EF5D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"AppDownloadVector"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindADVInputFail;
LABEL_8:
    objc_msgSend_errorWithDomain_code_userInfo_(v6, v5, @"APODMLDESPluginErrorDomain", *v7, 0);
    v8 = LABEL_9:;
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v3, v5, @"AppInstalledVector"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindIAVInputFail;
    goto LABEL_8;
  }

  if ((objc_msgSend_isEqualToString_(v3, v5, @"AppUsageVector") & 1) != 0 || objc_msgSend_isEqualToString_(v3, v5, @"appUsageVector"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindAUVInputFail;
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v3, v5, @"DupeFirstOrganic"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindDupeFirstOrganicInputFail;
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v3, v5, @"Installed"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindInstalledInputFail;
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v3, v5, @"pTTRLogit"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindPTTRInputFail;
    goto LABEL_8;
  }

  if ((objc_msgSend_isEqualToString_(v3, v5, @"Tapped") & 1) != 0 || objc_msgSend_isEqualToString_(v3, v5, @"Tap"))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = &kAPODMLDESPluginBindLabelInputFail;
    goto LABEL_8;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"AppVector");
  v13 = MEMORY[0x277CCA9B8];
  if (isEqualToString)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"APODMLDESPluginErrorDomain", 8018, 0);
    goto LABEL_9;
  }

  v16 = @"errorSource";
  v17[0] = v3;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v17, &v16, 1);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"APODMLDESPluginErrorDomain", 8018, v14);

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}