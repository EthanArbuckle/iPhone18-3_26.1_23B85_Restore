void setSearchAdFilter(_:)(uint64_t a1)
{
  sub_264E43DC4(a1, v6);
  v1 = type metadata accessor for LegacySearchAdFilter();
  v2 = objc_allocWithZone(v1);
  sub_264E43DC4(v6, v2 + OBJC_IVAR___APSearchAdFilter_filter);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_264E43E4C(v6);
  swift_beginAccess();
  v4 = qword_2810C4360;
  qword_2810C4360 = v3;
}

uint64_t sub_264E43DC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264E43E4C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_264E43E98@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_2810C4360;
  *a1 = qword_2810C4360;

  return v2;
}

void sub_264E442D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264E442FC(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v7 && objc_msgSend_length(v7, v2, v3, v4, v5))
    {
      v8 = objc_alloc(MEMORY[0x277CE9650]);
      v12 = objc_msgSend_initWithIdentifier_(v8, v9, *(a1 + 32), v10, v11);
      v17 = objc_msgSend_capData(WeakRetained, v13, v14, v15, v16);
      objc_msgSend_addCapDataObject_ofKind_(v17, v18, v12, *(a1 + 56), v19);

      v20 = *(a1 + 40);
      if (v20)
      {
        v21 = *(v20 + 16);
LABEL_14:
        v21();
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = objc_opt_class();
      _os_log_impl(&dword_264E42000, v22, OS_LOG_TYPE_ERROR, "[%@] We received a nil data object.", &v33, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v26 = objc_msgSend_initWithAdCode_andDescription_(v23, v24, 16, @"We received a nil data object.", v25);
  }

  else
  {
    v27 = APLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412546;
      v34 = objc_opt_class();
      v35 = 2112;
      v36 = @"ERROR: we have lost ourselves";
      _os_log_impl(&dword_264E42000, v27, OS_LOG_TYPE_ERROR, "[%@] %@", &v33, 0x16u);
    }

    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v26 = objc_msgSend_initWithAdCode_andDescription_(v28, v29, 16, @"ERROR: we have lost ourselves", v30);
  }

  v12 = v26;
  v31 = *(a1 + 40);
  if (v31)
  {
    v21 = *(v31 + 16);
    goto LABEL_14;
  }

LABEL_15:

  v32 = *MEMORY[0x277D85DE8];
}

void sub_264E44688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264E446B4(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (*(a1 + 56))
  {
    if (WeakRetained)
    {
      v8 = *(a1 + 32);
      if (v8 && objc_msgSend_length(v8, v3, v4, v5, v6))
      {
        v9 = objc_alloc(MEMORY[0x277CE9650]);
        v13 = objc_msgSend_initWithIdentifier_(v9, v10, *(a1 + 32), v11, v12);
        objc_msgSend_setDownloadType_(v13, v14, *(a1 + 56), v15, v16);
        v21 = objc_msgSend_capData(v7, v17, v18, v19, v20);
        objc_msgSend_addCapDataObject_ofKind_(v21, v22, v13, 2, v23);

        v24 = *(a1 + 40);
        if (v24)
        {
          v25 = *(v24 + 16);
LABEL_19:
          v25();
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      v31 = APLogForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v39 = 138412290;
        v40 = objc_opt_class();
        _os_log_impl(&dword_264E42000, v31, OS_LOG_TYPE_ERROR, "[%@] We received a nil data object.", &v39, 0xCu);
      }

      v32 = objc_alloc(MEMORY[0x277CCA9B8]);
      v35 = @"We received a nil data object.";
    }

    else
    {
      v36 = APLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v39 = 138412546;
        v40 = objc_opt_class();
        v41 = 2112;
        v42 = @"ERROR: we have lost ourselves";
        _os_log_impl(&dword_264E42000, v36, OS_LOG_TYPE_ERROR, "[%@] %@", &v39, 0x16u);
      }

      v32 = objc_alloc(MEMORY[0x277CCA9B8]);
      v35 = @"ERROR: we have lost ourselves";
    }

    v30 = objc_msgSend_initWithAdCode_andDescription_(v32, v33, 16, v35, v34);
  }

  else
  {
    v26 = APLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v39 = 138412290;
      v40 = @"ERROR: We were passed a download type of None";
      _os_log_impl(&dword_264E42000, v26, OS_LOG_TYPE_ERROR, "%@", &v39, 0xCu);
    }

    v27 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = objc_msgSend_initWithAdCode_andDescription_(v27, v28, 15, @"ERROR: We were passed a download type of None", v29);
  }

  v13 = v30;
  v37 = *(a1 + 40);
  if (v37)
  {
    v25 = *(v37 + 16);
    goto LABEL_19;
  }

LABEL_20:

  v38 = *MEMORY[0x277D85DE8];
}

void sub_264E46074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264E460A0(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [ADResponseData alloc];
    v8 = objc_msgSend_adResponseInUse(*(a1 + 40), v4, v5, v6, v7);
    v12 = objc_msgSend_initWithDict_(v3, v9, v8, v10, v11);

    v13 = objc_alloc(MEMORY[0x277CE9650]);
    v18 = objc_msgSend_lineItem(v12, v14, v15, v16, v17);
    v22 = objc_msgSend_initWithIdentifier_(v13, v19, v18, v20, v21);

    v27 = objc_msgSend_capData(*(a1 + 32), v23, v24, v25, v26);
    objc_msgSend_addCapDataObject_ofKind_(v27, v28, v22, *(a1 + 64), v29);

    v30 = *(a1 + 48);
    if (v30)
    {
      (*(v30 + 16))(v30, 0);
    }
  }

  else
  {
    v31 = APLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 32);
      v38 = 138412546;
      v39 = objc_opt_class();
      v40 = 2112;
      v41 = @"ERROR: we have lost ourselves";
      _os_log_impl(&dword_264E42000, v31, OS_LOG_TYPE_ERROR, "[%@] %@", &v38, 0x16u);
    }

    v33 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = objc_msgSend_initWithAdCode_andDescription_(v33, v34, 16, @"ERROR: we have lost ourselves", v35);
    v36 = *(a1 + 48);
    if (v36)
    {
      (*(v36 + 16))(v36, v12);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_264E4643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264E46468(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 64))
  {
    if (WeakRetained)
    {
      v4 = objc_alloc(MEMORY[0x277CE9650]);
      v8 = objc_msgSend_initWithIdentifier_(v4, v5, *(a1 + 40), v6, v7);
      objc_msgSend_setDownloadType_(v8, v9, *(a1 + 64), v10, v11);
      v16 = objc_msgSend_capData(v3, v12, v13, v14, v15);
      objc_msgSend_addCapDataObject_ofKind_(v16, v17, v8, 2, v18);

      v19 = *(a1 + 48);
      if (v19)
      {
        v20 = *(v19 + 16);
LABEL_13:
        v20();
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v26 = APLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v33 = 138412546;
      v34 = objc_opt_class();
      v35 = 2112;
      v36 = @"ERROR: we have lost ourselves";
      _os_log_impl(&dword_264E42000, v26, OS_LOG_TYPE_ERROR, "[%@] %@", &v33, 0x16u);
    }

    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = objc_msgSend_initWithAdCode_andDescription_(v28, v29, 16, @"ERROR: we have lost ourselves", v30);
  }

  else
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = @"ERROR: We were passed a download type of None";
      _os_log_impl(&dword_264E42000, v21, OS_LOG_TYPE_ERROR, "%@", &v33, 0xCu);
    }

    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = objc_msgSend_initWithAdCode_andDescription_(v22, v23, 15, @"ERROR: We were passed a download type of None", v24);
  }

  v8 = v25;
  v31 = *(a1 + 48);
  if (v31)
  {
    v20 = *(v31 + 16);
    goto LABEL_13;
  }

LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
}

void sub_264E46908(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = objc_msgSend_sharedInstance(ADSearchAdsSettings, a2, a3, a4, a5);
  objc_msgSend_checkAndUpdateToroID(a1, v6, v7, v8, v9);
  v10 = a1;
  objc_sync_enter(v10);
  v15 = objc_msgSend_downloadData(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_count(v15, v16, v17, v18, v19);

  v25 = objc_msgSend_downloadData(v10, v21, v22, v23, v24);
  v30 = objc_msgSend_searchSettings(v64, v26, v27, v28, v29);
  v35 = objc_msgSend_maxClickCapElements(v30, v31, v32, v33, v34);
  v40 = objc_msgSend_searchSettings(v64, v36, v37, v38, v39);
  objc_msgSend_clickExpirationThresholdInSeconds(v40, v41, v42, v43, v44);
  v47 = objc_msgSend_filteredCapData_maxItems_expirationThresholdInSeconds_(v10, v45, v25, v35, v46);
  objc_msgSend_setDownloadData_(v10, v48, v47, v49, v50);

  v55 = objc_msgSend_downloadData(v10, v51, v52, v53, v54);
  v60 = objc_msgSend_count(v55, v56, v57, v58, v59);

  if (v20 != v60)
  {
    objc_msgSend_saveCapDataWithReason_(v10, v61, @"Download Data Cleanup", v62, v63);
  }

  objc_sync_exit(v10);
}

id sub_264E46A60(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_sharedInstance(ADSearchAdsSettings, a2, a3, a4, a5);
  objc_msgSend_checkAndUpdateToroID(a1, v7, v8, v9, v10);
  v11 = a1;
  objc_sync_enter(v11);
  v16 = objc_msgSend_frequencyCapData(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_count(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_frequencyCapData(v11, v22, v23, v24, v25);
  v31 = objc_msgSend_searchSettings(v6, v27, v28, v29, v30);
  v36 = objc_msgSend_maxFrequencyCapElements(v31, v32, v33, v34, v35);
  v41 = objc_msgSend_searchSettings(v6, v37, v38, v39, v40);
  objc_msgSend_frequencyCapExpirationInSeconds(v41, v42, v43, v44, v45);
  v48 = objc_msgSend_filteredCapData_maxItems_expirationThresholdInSeconds_(v11, v46, v26, v36, v47);
  objc_msgSend_setFrequencyCapData_(v11, v49, v48, v50, v51);

  v56 = objc_msgSend_frequencyCapData(v11, v52, v53, v54, v55);
  v61 = objc_msgSend_count(v56, v57, v58, v59, v60);

  if (v61 != v21)
  {
    objc_msgSend_saveCapDataWithReason_(v11, v62, @"Frequency Cap Cleanup", v64, v65);
  }

  v66 = objc_msgSend_frequencyCapData(v11, v62, v63, v64, v65);
  v70 = objc_msgSend_capDataJSON_(v11, v67, v66, v68, v69);

  objc_sync_exit(v11);

  return v70;
}

id sub_264E46BE4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_sharedInstance(ADSearchAdsSettings, a2, a3, a4, a5);
  objc_msgSend_checkAndUpdateToroID(a1, v7, v8, v9, v10);
  v11 = a1;
  objc_sync_enter(v11);
  v16 = objc_msgSend_clickCountData(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_count(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_clickCountData(v11, v22, v23, v24, v25);
  v31 = objc_msgSend_searchSettings(v6, v27, v28, v29, v30);
  v36 = objc_msgSend_maxClickCapElements(v31, v32, v33, v34, v35);
  v41 = objc_msgSend_searchSettings(v6, v37, v38, v39, v40);
  objc_msgSend_clickExpirationThresholdInSeconds(v41, v42, v43, v44, v45);
  v48 = objc_msgSend_filteredCapData_maxItems_expirationThresholdInSeconds_(v11, v46, v26, v36, v47);
  objc_msgSend_setClickCountData_(v11, v49, v48, v50, v51);

  v56 = objc_msgSend_clickCountData(v11, v52, v53, v54, v55);
  v61 = objc_msgSend_count(v56, v57, v58, v59, v60);

  if (v61 != v21)
  {
    objc_msgSend_saveCapDataWithReason_(v11, v62, @"Toro Click Cleanup", v64, v65);
  }

  v66 = objc_msgSend_clickCountData(v11, v62, v63, v64, v65);
  v70 = objc_msgSend_capDataJSON_(v11, v67, v66, v68, v69);

  objc_sync_exit(v11);

  return v70;
}

uint64_t sub_264E46E08(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_2810C45A8 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_264E473E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_msgSend_sharedInputModeController(MEMORY[0x277D75688], v1, v2, v3, v4);
  v10 = objc_msgSend_normalizedEnabledInputModeIdentifiers(v5, v6, v7, v8, v9);
  objc_msgSend_setUserKeyboards_(WeakRetained, v11, v10, v12, v13);
}

void sub_264E4780C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], a2, a3, a4, a5);
  v7 = objc_alloc_init(MEMORY[0x277CE9610]);
  v12 = objc_msgSend_clientSettings(*(a1 + 32), v8, v9, v10, v11);
  v17 = objc_msgSend_searchAdsSettingsParams(v12, v13, v14, v15, v16);
  objc_msgSend_setCurrentSettingParams_(v7, v18, v17, v19, v20);

  v25 = objc_msgSend_clientSettings(*(a1 + 32), v21, v22, v23, v24);
  v30 = objc_msgSend_searchLandingAdsSettingsParams(v25, v26, v27, v28, v29);
  objc_msgSend_setCurrentSearchLandingAdsSettingParams_(v7, v31, v30, v32, v33);

  v37 = objc_msgSend_idForClientType_(v6, v34, 0, v35, v36);
  objc_msgSend_setIAdIDString_(v7, v38, v37, v39, v40);

  v41 = *(a1 + 40);
  v46 = objc_msgSend_defaultToroServerURL(*(a1 + 32), v42, v43, v44, v45);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_264E4797C;
  v48[3] = &unk_279B88968;
  v48[4] = *(a1 + 32);
  v49 = *(a1 + 48);
  objc_msgSend_handleRequest_serverURL_responseHandler_(v41, v47, v7, v46, v48);
}

void sub_264E4797C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v39 = APLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v44 = 138412546;
      v45 = objc_opt_class();
      v46 = 2112;
      v47 = v10;
      v41 = v45;
      _os_log_impl(&dword_264E42000, v39, OS_LOG_TYPE_ERROR, "[%@]: ADClientSettingsRequest failed with error: %@.", &v44, 0x16u);
    }

    v42 = *(a1 + 40);
    if (v42)
    {
      v38 = *(v42 + 16);
      goto LABEL_15;
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CE9618]);
    v15 = objc_msgSend_initWithData_(v11, v12, v7, v13, v14);
    objc_msgSend_setClientSettings_(*(a1 + 32), v16, v15, v17, v18);

    v19 = APLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_msgSend_clientSettings(*(a1 + 32), v20, v21, v22, v23);
      v29 = objc_msgSend_AD_jsonString(v24, v25, v26, v27, v28);
      v44 = 138412290;
      v45 = v29;
      _os_log_impl(&dword_264E42000, v19, OS_LOG_TYPE_DEFAULT, "Received response for ADClientSettingsRequest: %@", &v44, 0xCu);
    }

    v30 = ADWriteDataToKeychain();
    if (v30)
    {
      v35 = v30;
      v36 = APLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v44 = 67109120;
        LODWORD(v45) = v35;
        _os_log_impl(&dword_264E42000, v36, OS_LOG_TYPE_ERROR, "Error saving Client Settings to keychain: %d", &v44, 8u);
      }
    }

    objc_msgSend_applyClientSettings(*(a1 + 32), v31, v32, v33, v34);
    v37 = *(a1 + 40);
    if (v37)
    {
      v38 = *(v37 + 16);
LABEL_15:
      v38();
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_264E49D6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v9 = objc_msgSend_AD_jsonDictionary(a2, a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void sub_264E4A1F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v9 = objc_msgSend_AD_jsonDictionary(a2, a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void sub_264E4A4D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OdmlLogForCategory();
  v12 = objc_msgSend_ident(*(a1 + 32), v8, v9, v10, v11);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_264E42000, v7, OS_SIGNPOST_INTERVAL_END, v13, "App Store Total Reranking", "", buf, 2u);
    }
  }

  v14 = APLogForCategory();
  v15 = v14;
  if (v6)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v47 = 0;
    v16 = "Reranking Failure; reporting ODMLSuccess FALSE to Figaro.";
    v17 = &v47;
    v18 = v15;
    v19 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v48 = 0;
    v16 = "Reranking Success; reporting ODMLSuccess TRUE to Figaro.";
    v17 = v48;
    v18 = v15;
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_264E42000, v18, v19, v16, v17, 2u);
LABEL_10:

  v24 = objc_msgSend_desRecordManager(*(a1 + 32), v20, v21, v22, v23);
  v29 = objc_msgSend_advertisements(*(a1 + 32), v25, v26, v27, v28);
  v34 = objc_msgSend_organics(*(a1 + 32), v30, v31, v32, v33);
  v39 = objc_msgSend_firstObject(v34, v35, v36, v37, v38);
  v44 = objc_msgSend_adamID(v39, v40, v41, v42, v43);
  objc_msgSend_createRecords_firstOrganicId_error_(v24, v45, v29, v44, v6);

  v46 = *(a1 + 40);
  if (v46)
  {
    (*(v46 + 16))(v46, v5, v6);
  }
}

void sub_264E4A848(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OdmlLogForCategory();
  v12 = objc_msgSend_ident(*(a1 + 32), v8, v9, v10, v11);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_264E42000, v7, OS_SIGNPOST_INTERVAL_END, v13, "App Store Total Reranking", "", buf, 2u);
    }
  }

  v14 = APLogForCategory();
  v15 = v14;
  if (v6)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v47 = 0;
    v16 = "Reranking Failure; reporting ODMLSuccess FALSE to Figaro.";
    v17 = &v47;
    v18 = v15;
    v19 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v48 = 0;
    v16 = "Reranking Success; reporting ODMLSuccess TRUE to Figaro.";
    v17 = v48;
    v18 = v15;
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_264E42000, v18, v19, v16, v17, 2u);
LABEL_10:

  v24 = objc_msgSend_desRecordManager(*(a1 + 32), v20, v21, v22, v23);
  v29 = objc_msgSend_advertisements(*(a1 + 32), v25, v26, v27, v28);
  v34 = objc_msgSend_organics(*(a1 + 32), v30, v31, v32, v33);
  v39 = objc_msgSend_firstObject(v34, v35, v36, v37, v38);
  v44 = objc_msgSend_adamID(v39, v40, v41, v42, v43);
  objc_msgSend_createRecords_firstOrganicId_error_(v24, v45, v29, v44, v6);

  v46 = *(a1 + 40);
  if (v46)
  {
    (*(v46 + 16))(v46, v5, v6 == 0);
  }
}

void sub_264E4B7BC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  objc_msgSend_checkAndUpdateToroID(a1, a2, a3, a4, a5);
  obj = a1;
  objc_sync_enter(obj);
  v13 = objc_msgSend_downloadData(obj, v9, v10, v11, v12);
  v18 = objc_msgSend_count(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_downloadData(obj, v19, v20, v21, v22);
  v26 = objc_msgSend_filteredCapData_maxItems_expirationThresholdInSeconds_(obj, v24, v23, a3, v25, a6);
  objc_msgSend_setDownloadData_(obj, v27, v26, v28, v29);

  v34 = objc_msgSend_downloadData(obj, v30, v31, v32, v33);
  v39 = objc_msgSend_count(v34, v35, v36, v37, v38);

  if (v18 != v39)
  {
    objc_msgSend_saveCapDataWithReason_(obj, v40, @"Download Data Cleanup", v41, v42);
  }

  objc_sync_exit(obj);
}

id sub_264E4B8D0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  objc_msgSend_checkAndUpdateToroID(a1, a2, a3, a4, a5);
  v9 = a1;
  objc_sync_enter(v9);
  v14 = objc_msgSend_frequencyCapData(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_count(v14, v15, v16, v17, v18);

  v24 = objc_msgSend_frequencyCapData(v9, v20, v21, v22, v23);
  v27 = objc_msgSend_filteredCapData_maxItems_expirationThresholdInSeconds_(v9, v25, v24, a3, v26, a6);
  objc_msgSend_setFrequencyCapData_(v9, v28, v27, v29, v30);

  v35 = objc_msgSend_frequencyCapData(v9, v31, v32, v33, v34);
  v40 = objc_msgSend_count(v35, v36, v37, v38, v39);

  if (v40 != v19)
  {
    objc_msgSend_saveCapDataWithReason_(v9, v41, @"Frequency Cap Cleanup", v43, v44);
  }

  v45 = MEMORY[0x277CBEB38];
  v46 = objc_msgSend_frequencyCapData(v9, v41, v42, v43, v44);
  v50 = objc_msgSend_capData_(v9, v47, v46, v48, v49);
  v54 = objc_msgSend_dictionaryWithDictionary_(v45, v51, v50, v52, v53);

  objc_sync_exit(v9);

  return v54;
}

id sub_264E4BA2C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  objc_msgSend_checkAndUpdateToroID(a1, a2, a3, a4, a5);
  v9 = a1;
  objc_sync_enter(v9);
  v14 = objc_msgSend_clickCountData(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_count(v14, v15, v16, v17, v18);

  v24 = objc_msgSend_clickCountData(v9, v20, v21, v22, v23);
  v27 = objc_msgSend_filteredCapData_maxItems_expirationThresholdInSeconds_(v9, v25, v24, a3, v26, a6);
  objc_msgSend_setClickCountData_(v9, v28, v27, v29, v30);

  v35 = objc_msgSend_clickCountData(v9, v31, v32, v33, v34);
  v40 = objc_msgSend_count(v35, v36, v37, v38, v39);

  if (v40 != v19)
  {
    objc_msgSend_saveCapDataWithReason_(v9, v41, @"Landing Click Cleanup", v43, v44);
  }

  v45 = MEMORY[0x277CBEB38];
  v46 = objc_msgSend_clickCountData(v9, v41, v42, v43, v44);
  v50 = objc_msgSend_capData_(v9, v47, v46, v48, v49);
  v54 = objc_msgSend_dictionaryWithDictionary_(v45, v51, v50, v52, v53);

  objc_sync_exit(v9);

  return v54;
}

void sub_264E4C574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264E4C5B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[2] & 1) == 0)
  {
    *(WeakRetained + 16) = 1;
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264E42000, v3, OS_LOG_TYPE_DEFAULT, "A notification was received to update to the current user. Waiting 1 second for the DSID to update.", buf, 2u);
    }

    v4 = dispatch_time(0, 1000000000);
    v5 = v2[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_264E4C6C8;
    block[3] = &unk_279B889E0;
    v7 = v2;
    dispatch_after(v4, v5, block);
  }
}

uint64_t sub_264E4C6C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_startUpdatingIDs(*(a1 + 32), a2, a3, a4, a5);
  *(*(a1 + 32) + 16) = 0;
  return result;
}

void sub_264E4C6F8(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D42CD0]);
  v8 = objc_msgSend_initWithPlacementType_assetManagerType_(v2, v3, 0, 0, v4);
  objc_msgSend_setOdmlSettings_(*(a1 + 32), v5, v8, v6, v7);
}

void sub_264E4D948(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v117[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = objc_alloc_init(ADSearchObject);
  objc_msgSend_setSponsoredSearchRequestData_(v13, v14, v12, v15, v16);

  objc_msgSend_setRoutingInfoData_(v13, v17, v11, v18, v19);
  objc_msgSend_setDeviceRequestID_(v13, v20, v10, v21, v22);

  objc_msgSend_setError_(v13, v23, v9, v24, v25);
  v30 = objc_msgSend_featureFlagsProvider(*(a1 + 32), v26, v27, v28, v29);
  LODWORD(v11) = objc_msgSend_odcaP1(v30, v31, v32, v33, v34);

  if (v11)
  {
    v39 = APLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *v107 = 0;
      _os_log_impl(&dword_264E42000, v39, OS_LOG_TYPE_DEFAULT, "ToroID suppression is enabled for ADSearchSession", v107, 2u);
    }
  }

  else
  {
    v39 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], v35, v36, v37, v38);
    v43 = objc_msgSend_idForClientType_(v39, v40, 4, v41, v42);
    objc_msgSend_setUserTargetingID_(v13, v44, v43, v45, v46);
  }

  v51 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v47, v48, v49, v50);
  v56 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], v52, v53, v54, v55);
  v61 = objc_msgSend_activeDSIDRecord(v56, v57, v58, v59, v60);

  isProtoU13state = objc_msgSend_isProtoU13state(v51, v62, v63, v64, v65);
  if (objc_msgSend_isRestrictedRegion(v51, v67, v68, v69, v70))
  {
    v75 = APLogForCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *v107 = 0;
      _os_log_impl(&dword_264E42000, v75, OS_LOG_TYPE_DEFAULT, "This is a no services region. No ad requests allowed to server.", v107, 2u);
    }

    v76 = MEMORY[0x277CCA9B8];
    v77 = *MEMORY[0x277CE95B0];
    v116 = *MEMORY[0x277CCA450];
    v117[0] = @"This is a no services region. No search request to be made.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v78, v117, &v116, 1);
  }

  else if (objc_msgSend_accountIsU13(v61, v71, v72, v73, v74))
  {
    v79 = APLogForCategory();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *v107 = 0;
      _os_log_impl(&dword_264E42000, v79, OS_LOG_TYPE_DEFAULT, "This is a U13 user. No ad requests allowed to server.", v107, 2u);
    }

    v76 = MEMORY[0x277CCA9B8];
    v77 = *MEMORY[0x277CE95B0];
    v114 = *MEMORY[0x277CCA450];
    v115 = @"This is a U13 account. No search request to be made.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v80, &v115, &v114, 1);
  }

  else
  {
    if (!isProtoU13state)
    {
      goto LABEL_18;
    }

    v81 = APLogForCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *v107 = 0;
      _os_log_impl(&dword_264E42000, v81, OS_LOG_TYPE_DEFAULT, "This is a Proto U13 user. No ad requests allowed to server.", v107, 2u);
    }

    v76 = MEMORY[0x277CCA9B8];
    v77 = *MEMORY[0x277CE95B0];
    v112 = *MEMORY[0x277CCA450];
    v113 = @"This is a Proto U13 user. No search request to be made.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, &v113, &v112, 1);
  }
  v83 = ;
  v85 = objc_msgSend_errorWithDomain_code_userInfo_(v76, v84, v77, 2, v83);
  objc_msgSend_setError_(v13, v86, v85, v87, v88);

LABEL_18:
  v89 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
  v110 = @"SearchTime";
  v94 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v90, v91, v92, v93, v89);
  v111 = v94;
  v96 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v95, &v111, &v110, 1);
  AnalyticsSendEvent();

  if (v89 > 0.5)
  {
    v108 = @"ResponseTime";
    v101 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v97, v98, v99, v100, v89);
    v109 = v101;
    v103 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v102, &v109, &v108, 1);

    CreateDiagnosticReport();
  }

  v104 = *(a1 + 40);
  if (v104)
  {
    v105 = objc_msgSend_error(v13, v97, v98, v99, v100);
    (*(v104 + 16))(v104, v13, v105);
  }

  v106 = *MEMORY[0x277D85DE8];
}

void sub_264E4DF48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = objc_msgSend_sharedInstance(ADSearchAdsSettings, a2, a3, a4, a5);
  v10 = objc_msgSend_sharedInstance(MEMORY[0x277CE96B8], v6, v7, v8, v9);
  v11 = objc_opt_class();
  v16 = objc_msgSend_defaultToroServerURL(v21, v12, v13, v14, v15);
  v19 = objc_msgSend_serverURLForMessageClass_serverURL_(v10, v17, v11, v16, v18);

  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))(v20, v19);
  }
}

void sub_264E4E150(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], a2, a3, a4, a5);
  v11 = objc_msgSend_featureFlagsProvider(*(a1 + 32), v7, v8, v9, v10);
  v16 = objc_msgSend_odcaP1(v11, v12, v13, v14, v15);

  if (v16)
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_264E42000, v20, OS_LOG_TYPE_DEFAULT, "ToroID suppression is enabled for ADSearchSession", &v27, 2u);
    }

    v21 = 0;
    v22 = 0;
  }

  else
  {
    v22 = objc_msgSend_idForClientType_(v6, v17, 4, v18, v19);
    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v23, *MEMORY[0x277CE95B0], 2, 0);
    }
  }

  v24 = APLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v22;
    _os_log_impl(&dword_264E42000, v24, OS_LOG_TYPE_DEFAULT, "requestUserTargetingIdentifier %@", &v27, 0xCu);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v22, v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_264E4E464(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sponsoredSearchRequestForLanguageLocale_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  v11 = objc_msgSend_sharedInstance(MEMORY[0x277CE96B8], v7, v8, v9, v10);
  v16 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v12, v13, v14, v15);
  v17 = objc_alloc(MEMORY[0x277CE96A0]);
  v22 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], v18, v19, v20, v21);
  v25 = objc_msgSend_initWithRoutingType_preferencesStore_(v17, v23, 0, v22, v24);
  v30 = objc_msgSend_payload(v25, v26, v27, v28, v29);

  v35 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], v31, v32, v33, v34);
  objc_msgSend_logIDs_(v35, v36, @"ADSponsoredSearchRequest Current IDs:", v37, v38);

  v39 = APLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 32);
    v41 = objc_opt_class();
    v42 = v41;
    v47 = objc_msgSend_AD_jsonString(v6, v43, v44, v45, v46);
    v75 = 138412546;
    v76 = v41;
    v77 = 2112;
    v78 = v47;
    _os_log_impl(&dword_264E42000, v39, OS_LOG_TYPE_DEFAULT, "[%@] Sending an ADSponsoredSearchRequest with Request: %@", &v75, 0x16u);
  }

  v51 = objc_msgSend_serializeMessage_(v11, v48, v6, v49, v50);
  v55 = objc_msgSend_base64EncodedStringWithOptions_(v51, v52, 0, v53, v54);
  isTest = objc_msgSend_isTest(v16, v56, v57, v58, v59);
  v65 = *(a1 + 48);
  if (isTest)
  {
    if (v65)
    {
      v66 = objc_msgSend_properties(v6, v61, v62, v63, v64);
      v71 = objc_msgSend_deviceRequestID(v66, v67, v68, v69, v70);
      (*(v65 + 16))(v65, v55, v30, v71, 0);
    }
  }

  else if (v65)
  {
    (*(v65 + 16))(v65, v55, v30, 0, 0);
  }

  v72 = APLogForCategory();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v75 = 138412290;
    v76 = v30;
    _os_log_impl(&dword_264E42000, v72, OS_LOG_TYPE_DEFAULT, "ADSponsoredSearchRequest RoutingInfo Blob: %@", &v75, 0xCu);
  }

  v73 = APLogForCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v75 = 138412290;
    v76 = v55;
    _os_log_impl(&dword_264E42000, v73, OS_LOG_TYPE_DEFAULT, "ADSponsoredSearchRequest SSR Blob:         %@", &v75, 0xCu);
  }

  v74 = *MEMORY[0x277D85DE8];
}

void sub_264E50808(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v4, v5, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_264E508D4;
  v15[3] = &unk_279B88990;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = v3;
  v17 = v9;
  v18 = v10;
  v11 = v3;
  objc_msgSend_addOperationWithBlock_(v8, v12, v15, v13, v14);
}

uint64_t sub_264E508D4(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = APLogForCategory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v3 = a1[5];
    v4 = objc_opt_class();
    v5 = a1[4];
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v6 = "[%@] An error was returned by StoreKit: %@";
    v7 = v2;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
  }

  else
  {
    v2 = APLogForCategory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = a1[5];
    v13 = 138412290;
    v14 = objc_opt_class();
    v6 = "[%@] Install Attribution Update succeeded";
    v7 = v2;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
  }

  _os_log_impl(&dword_264E42000, v7, v8, v6, &v13, v9);
LABEL_7:

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, a1[4]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SensitiveCategorySearchAdFilter.__allocating_init(categoriesFilter:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_264E5120C(a1, v2 + 16);
  return v2;
}

uint64_t sub_264E5120C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SensitiveCategorySearchAdFilter.filter(ads:)(unint64_t a1)
{
  v29 = sub_264E561F4();
  v2 = *(v29 - 8);
  v3 = v2[8];
  v4 = (MEMORY[0x28223BE20])();
  v28 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v20 - v6;
  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264E564C4())
  {
    v8 = 0;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 & 0xC000000000000001;
    v22 = *MEMORY[0x277CE9730];
    v21 = (v2 + 13);
    v9 = (v2 + 1);
    v23 = i;
    v24 = a1;
    while (1)
    {
      if (v26)
      {
        v10 = MEMORY[0x2667501C0](v8, a1);
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_15;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v30[6];
      sub_264E514BC(v30 + 2, v30[5]);
      sub_264E51500();
      v14 = v27;
      sub_264E562E4();

      v16 = v28;
      v15 = v29;
      (*v21)(v28, v22, v29);
      v17 = MEMORY[0x26674FF60](v14, v16);
      v2 = *v9;
      (*v9)(v16, v15);
      (v2)(v14, v15);
      if (v17)
      {
        v2 = &v31;
        sub_264E56464();
        v18 = *(v31 + 16);
        sub_264E56494();
        sub_264E564A4();
        sub_264E56474();
      }

      else
      {
      }

      a1 = v24;
      ++v8;
      if (v12 == v23)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_264E514BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264E51500()
{
  v1 = [v0 adData];
  v2 = [v1 adData];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = sub_264E56374();

  sub_264E56424();
  if (!*(v3 + 16) || (v4 = sub_264E54D30(v7), (v5 & 1) == 0))
  {

    sub_264E517E0(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_264E51834(*(v3 + 56) + 32 * v4, &v8);
  sub_264E517E0(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_264E51730(&v8);
    return MEMORY[0x277D84F90];
  }

  sub_264E51798(&qword_27FFB6ED0, &qword_264E57D08);
  if (swift_dynamicCast())
  {
    return v7[0];
  }

  return MEMORY[0x277D84F90];
}

uint64_t SensitiveCategorySearchAdFilter.__deallocating_deinit()
{
  sub_264E43E4C((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_264E51730(uint64_t a1)
{
  v2 = sub_264E51798(&qword_27FFB6EC8, &qword_264E57D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E51798(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264E51834(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int_optional __swiftcall DSIDRecordBirthYearSource.birthYear()()
{
  sub_264E51934();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 activeDSIDRecord];

  if (v1)
  {
    v2 = [v1 effectiveBirthYear];

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1 == 0;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

unint64_t sub_264E51934()
{
  result = qword_27FFB6ED8;
  if (!qword_27FFB6ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB6ED8);
  }

  return result;
}

uint64_t sub_264E51998()
{
  sub_264E51934();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 activeDSIDRecord];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 effectiveBirthYear];

  return v2;
}

uint64_t ADCoreSettingsStorefrontIDSource.storefrontID()()
{
  sub_264E51B30();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 iTunesStorefront];
  sub_264E56394();

  sub_264E562F4();
}

unint64_t sub_264E51B30()
{
  result = qword_27FFB6EE0;
  if (!qword_27FFB6EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB6EE0);
  }

  return result;
}

uint64_t sub_264E51B94()
{
  sub_264E51B30();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 iTunesStorefront];
  sub_264E56394();

  sub_264E562F4();
}

uint64_t static LegacySearchAdFilter.filter.getter()
{
  swift_beginAccess();
  v0 = qword_2810C4360;
  v1 = qword_2810C4360;
  return v0;
}

void static LegacySearchAdFilter.filter.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_2810C4360;
  qword_2810C4360 = a1;
}

void sub_264E51E00(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = qword_2810C4360;
  qword_2810C4360 = v1;
  v3 = v1;
}

uint64_t LegacySearchAdFilter.filter(ads:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___APSearchAdFilter_filter + 24);
  v4 = *(v1 + OBJC_IVAR___APSearchAdFilter_filter + 32);
  sub_264E514BC((v1 + OBJC_IVAR___APSearchAdFilter_filter), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

id LegacySearchAdFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacySearchAdFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_264E52098()
{
  result = qword_2810C4228[0];
  if (!qword_2810C4228[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_2810C4228);
  }

  return result;
}

id ClientIdentifierProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientIdentifierProvider.init()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_264E56344();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_264E56334();
  v5 = sub_264E56324();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_264E56314();
  v9 = sub_264E536C4(v4, v8, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t ClientIdentifierProvider.getIdentifiers(type:)()
{
  v2 = *(v0 + OBJC_IVAR___ADClientIdentifierProvider_lock);
  sub_264E560B4();

  sub_264E51798(&qword_27FFB6EF8, &qword_264E57E10);
  sub_264E560C4();

  return v3;
}

uint64_t sub_264E5231C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR___ADClientIdentifierProvider_identiferCache;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!*(v7 + 16) || (v8 = sub_264E54D74(a2), (v9 & 1) == 0))
  {
    swift_endAccess();
LABEL_17:
    v23 = *(a1 + OBJC_IVAR___ADClientIdentifierProvider_identifierRequester + 32);
    sub_264E514BC((a1 + OBJC_IVAR___ADClientIdentifierProvider_identifierRequester), *(a1 + OBJC_IVAR___ADClientIdentifierProvider_identifierRequester + 24));
    if (a2 >= 3)
    {
      goto LABEL_43;
    }

    v10 = sub_264E56304();
    swift_beginAccess();

    v24 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    sub_264E55498(v10, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v42;
    swift_endAccess();
    if (v10 >> 62)
    {
      goto LABEL_35;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();

  if ((sub_264E538DC(v11) & 1) == 0)
  {

    goto LABEL_17;
  }

  if (v10 >> 62)
  {
    goto LABEL_39;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_36:

    v38 = MEMORY[0x277D84F90];
LABEL_37:
    *a3 = v38;
    return result;
  }

  while (1)
  {
    v39 = a3;
    v43 = MEMORY[0x277D84F90];
    sub_264E56484();
    if (v12 < 0)
    {
      break;
    }

    a2 = 0;
    a3 = 0x27FFB6000;
    while (1)
    {
      v13 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2667501C0](a2, v10);
      }

      else
      {
        if (a2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(v10 + 8 * a2 + 32);
      }

      v15 = v14;
      v16 = type metadata accessor for ClientRotatingIdentifier();
      v17 = objc_allocWithZone(v16);
      v18 = sub_264E56254();
      v19 = &v17[OBJC_IVAR___ADClientRotatingIdentifier_value];
      *v19 = v18;
      v19[1] = v20;
      v21 = sub_264E56244();
      if (v21 >= 3)
      {
        goto LABEL_42;
      }

      *&v17[OBJC_IVAR___ADClientRotatingIdentifier_type] = v21;
      v40.receiver = v17;
      v40.super_class = v16;
      objc_msgSendSuper2(&v40, sel_init);

      sub_264E56464();
      v22 = *(v43 + 16);
      sub_264E56494();
      sub_264E564A4();
      sub_264E56474();
      ++a2;
      if (v13 == v12)
      {
LABEL_29:

        v38 = v43;
        a3 = v39;
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v26 = sub_264E564C4();
      if (!v26)
      {
        goto LABEL_36;
      }

LABEL_20:
      v43 = MEMORY[0x277D84F90];
      sub_264E56484();
      if (v26 < 0)
      {
        break;
      }

      a2 = 0;
      v39 = a3;
      a3 = 0x27FFB6000;
      while (1)
      {
        v27 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x2667501C0](a2, v10);
        }

        else
        {
          if (a2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v28 = *(v10 + 8 * a2 + 32);
        }

        v29 = v28;
        v30 = type metadata accessor for ClientRotatingIdentifier();
        v31 = objc_allocWithZone(v30);
        v32 = sub_264E56254();
        v33 = &v31[OBJC_IVAR___ADClientRotatingIdentifier_value];
        *v33 = v32;
        v33[1] = v34;
        v35 = sub_264E56244();
        if (v35 >= 3)
        {
          goto LABEL_42;
        }

        *&v31[OBJC_IVAR___ADClientRotatingIdentifier_type] = v35;
        v41.receiver = v31;
        v41.super_class = v30;
        objc_msgSendSuper2(&v41, sel_init);

        sub_264E56464();
        v36 = *(v43 + 16);
        sub_264E56494();
        sub_264E564A4();
        sub_264E56474();
        ++a2;
        if (v27 == v26)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    v12 = sub_264E564C4();
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_42:
  sub_264E564B4();
  __break(1u);
LABEL_43:
  v43 = a2;
  result = sub_264E56514();
  __break(1u);
  return result;
}

id ClientRotatingIdentifier.__allocating_init(rotatingIdentifier:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_264E53B58();

  return v4;
}

Swift::Void __swiftcall ClientIdentifierProvider.notificationReceived()()
{
  v1 = *(v0 + OBJC_IVAR___ADClientIdentifierProvider_lock);
  sub_264E560B4();

  sub_264E560C4();
}

uint64_t sub_264E52934(uint64_t a1)
{
  sub_264E563E4();
  sub_264E53D20();
  v2 = sub_264E563F4();
  sub_264E56354();

  v3 = OBJC_IVAR___ADClientIdentifierProvider_identiferCache;
  swift_beginAccess();
  v4 = *(a1 + v3);
  *(a1 + v3) = MEMORY[0x277D84F98];
}

uint64_t sub_264E52AE4()
{
  v1 = *(v0 + OBJC_IVAR___ADClientIdentifierProvider_lock);
  sub_264E560B4();

  sub_264E560C4();
}

uint64_t ClientRotatingIdentifier.value.getter()
{
  v1 = (v0 + OBJC_IVAR___ADClientRotatingIdentifier_value);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ClientRotatingIdentifier.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ADClientRotatingIdentifier_value);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ClientRotatingIdentifier.type.getter()
{
  v1 = OBJC_IVAR___ADClientRotatingIdentifier_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ClientRotatingIdentifier.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ADClientRotatingIdentifier_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ClientRotatingIdentifier.init(rotatingIdentifier:)(void *a1)
{
  v2 = sub_264E53B58();

  return v2;
}

id _s9SearchAds24ClientIdentifierProviderCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t ClientIdentifierType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_264E5303C()
{
  v1 = *v0;
  sub_264E56544();
  MEMORY[0x2667502D0](v1);
  return sub_264E56564();
}

uint64_t sub_264E530B0()
{
  v1 = *v0;
  sub_264E56544();
  MEMORY[0x2667502D0](v1);
  return sub_264E56564();
}

uint64_t *sub_264E530F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_264E5311C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264E531E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_264E51834(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_264E43E4C(v11);
  return v7;
}

unint64_t sub_264E531E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_264E532F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_264E56454();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_264E532F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_264E53340(a1, a2);
  sub_264E53470(&unk_2876A68B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_264E53340(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264E5355C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_264E56454();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_264E563B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264E5355C(v10, 0);
        result = sub_264E56434();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_264E53470(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_264E535D0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_264E5355C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_264E51798(&qword_27FFB6F30, ".*");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_264E535D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_264E51798(&qword_27FFB6F30, ".*");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_264E536C4(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_264E56094();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v21[3] = sub_264E56344();
  v21[4] = MEMORY[0x277CE9748];
  v21[0] = a1;
  v20[3] = sub_264E56324();
  v20[4] = MEMORY[0x277CE9740];
  v20[0] = a2;
  v9 = OBJC_IVAR___ADClientIdentifierProvider_lock;
  sub_264E56084();
  v10 = sub_264E560B4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&a3[v9] = sub_264E560A4();
  *&a3[OBJC_IVAR___ADClientIdentifierProvider_identiferCache] = MEMORY[0x277D84F98];
  sub_264E563E4();
  sub_264E53D20();
  v13 = sub_264E563F4();
  sub_264E56354();

  sub_264E43DC4(v21, &a3[OBJC_IVAR___ADClientIdentifierProvider_identifierRequester]);
  sub_264E43DC4(v20, &a3[OBJC_IVAR___ADClientIdentifierProvider_notificationReceiver]);
  v19.receiver = a3;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  sub_264E53D70();
  v15 = v14 + OBJC_IVAR___ADClientIdentifierProvider_notificationReceiver;
  swift_beginAccess();
  v16 = *(v15 + 32);
  sub_264E53DC4(v15, *(v15 + 24));
  v17 = v14;
  sub_264E562B4();
  swift_endAccess();

  sub_264E43E4C(v20);
  sub_264E43E4C(v21);
  return v17;
}

uint64_t sub_264E538DC(unint64_t a1)
{
  v2 = sub_264E56074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (a1 >> 62)
  {
    result = sub_264E564C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x2667501C0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  sub_264E56234();
  sub_264E56064();
  v13 = sub_264E56044();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  if (v13)
  {

    return 1;
  }

  else
  {
    v15 = sub_264E563E4();
    sub_264E53D20();
    v16 = sub_264E563F4();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      sub_264E56244();
      v19 = sub_264E561D4();
      v21 = sub_264E5311C(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_264E42000, v16, v15, "Client provider, %s Expired", v17, 0xCu);
      sub_264E43E4C(v18);
      MEMORY[0x266750940](v18, -1, -1);
      MEMORY[0x266750940](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

id sub_264E53B58()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264E56254();
  v3 = &v0[OBJC_IVAR___ADClientRotatingIdentifier_value];
  *v3 = v2;
  v3[1] = v4;
  v5 = sub_264E56244();
  if (v5 >= 3)
  {
    result = sub_264E564B4();
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR___ADClientRotatingIdentifier_type] = v5;
    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  return result;
}

unint64_t sub_264E53C30()
{
  result = qword_27FFB6F10;
  if (!qword_27FFB6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB6F10);
  }

  return result;
}

unint64_t sub_264E53D20()
{
  result = qword_2810C4220;
  if (!qword_2810C4220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810C4220);
  }

  return result;
}

unint64_t sub_264E53D70()
{
  result = qword_27FFB6F38;
  if (!qword_27FFB6F38)
  {
    type metadata accessor for ClientIdentifierProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB6F38);
  }

  return result;
}

uint64_t sub_264E53DC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t ADCoreSettings.storefrontID.getter()
{
  v1 = [v0 iTunesStorefront];
  sub_264E56394();

  sub_264E562F4();
}

uint64_t sub_264E53EB8()
{
  v1 = sub_264E51798(&qword_27FFB6F40, &qword_264E57FD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v54 - v3;
  v4 = sub_264E561C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E56074();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v0;
  v14 = [v0 adData];
  v15 = [v14 adResponseInUse];

  if (v15)
  {
    sub_264E56374();
  }

  else
  {
    sub_264E55AC8(MEMORY[0x277D84F90]);
  }

  v16 = objc_allocWithZone(ADResponseData);
  v17 = sub_264E56364();

  v18 = [v16 initWithDict_];

  v19 = [v18 lineItem];
  if (v19)
  {
    v20 = v19;
    v21 = sub_264E56394();
    v55 = v22;
    v56 = v21;
  }

  else
  {
    v55 = 0xE000000000000000;
    v56 = 0;
  }

  v23 = [v18 installAttribution];
  if (v23 && (v24 = v23, v25 = [v23 dictionaryRepresentation], v24, v25))
  {
    v54 = sub_264E56374();
  }

  else
  {
    v54 = 0;
  }

  [objc_allocWithZone(MEMORY[0x277CE4AC8]) init];
  v26 = sub_264E56224();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_264E56214();
  sub_264E56054();
  sub_264E56204();
  (*(v10 + 8))(v13, v9);
  v29 = [v58 instanceID];
  sub_264E56394();

  sub_264E561B4();
  sub_264E561A4();
  (*(v5 + 8))(v8, v4);
  v30 = [v18 impressionID];
  if (v30)
  {
    v31 = v30;
    sub_264E56394();
  }

  v32 = sub_264E56284();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  sub_264E56274();
  v35 = [v58 instanceID];
  sub_264E56394();

  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v36 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v37 = sub_264E56194();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_264E56184();
  v60 = v37;
  v61 = MEMORY[0x277CE9728];
  v59 = v40;
  v41 = sub_264E562A4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_264E56294();
  v60 = v41;
  v61 = MEMORY[0x277CE9738];
  v59 = v44;
  v45 = *MEMORY[0x277D42758];
  v46 = sub_264E560D4();
  v47 = *(v46 - 8);
  v48 = v57;
  (*(v47 + 104))(v57, v45, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v49 = sub_264E56114();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  v52 = sub_264E560E4();
  sub_264E54738(v52);

  return v52;
}

uint64_t static SearchObjectNativeAdTracker.endTracking(for:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    sub_264E56154();
    v3 = (v2 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_264E56144();
      sub_264E56134();

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id SearchObjectNativeAdTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchObjectNativeAdTracker.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchObjectNativeAdTracker();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchObjectNativeAdTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchObjectNativeAdTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_264E54738(uint64_t a1)
{
  v3 = sub_264E56174();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E562D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 adData];
  v14 = [v13 adResponseInUse];

  if (v14)
  {
    v44 = v9;
    v45 = a1;
    v46 = v8;
    v47 = v4;
    sub_264E56374();

    v15 = objc_allocWithZone(ADResponseData);
    v16 = sub_264E56364();

    v17 = [v15 initWithDict_];

    sub_264E55C04(MEMORY[0x277D84F90]);
    sub_264E562C4();
    sub_264E51798(&qword_27FFB6F48, &qword_264E57FD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264E57F90;
    *(inited + 32) = 0x64496D616461;
    *(inited + 40) = 0xE600000000000000;
    v19 = [v1 adamID];
    v20 = sub_264E56394();
    v22 = v21;

    v23 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    v24 = sub_264E55C04(inited);
    swift_setDeallocating();
    sub_264E55EB0(inited + 32);
    v25 = [v17 impressionID];
    if (v25)
    {
      v26 = v25;
      v27 = sub_264E56394();
      v29 = v28;

      v51 = v23;
      *&v50 = v27;
      *(&v50 + 1) = v29;
      sub_264E55F70(&v50, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v24;
      sub_264E555E4(v49, 0x6973736572706D69, 0xEC00000064496E6FLL, isUniquelyReferenced_nonNull_native);
      v24 = v48;
    }

    v31 = [v17 metadata];
    if (v31)
    {
      v32 = v31;
      v33 = sub_264E56394();
      v35 = v34;

      v51 = v23;
      *&v50 = v33;
      *(&v50 + 1) = v35;
      sub_264E55F70(&v50, v49);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v24;
      sub_264E555E4(v49, 0x617461646174656DLL, 0xE800000000000000, v36);
      v24 = v48;
    }

    v37 = v47;
    v38 = [v17 triggers];
    if (v38)
    {
      v39 = v38;
      sub_264E51798(&qword_27FFB6F60, &qword_264E57FE8);
      v40 = sub_264E563D4();

      v51 = sub_264E51798(&qword_27FFB6F68, &qword_264E57FF0);
      *&v50 = v40;
      sub_264E55F70(&v50, v49);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v24;
      sub_264E555E4(v49, 0x7372656767697274, 0xE800000000000000, v41);
    }

    sub_264E560F4();
    sub_264E55F18();
    v42 = v46;
    sub_264E56264();

    sub_264E56104();
    sub_264E514BC(&v50, v51);
    sub_264E56164();

    (*(v37 + 8))(v7, v3);
    (*(v44 + 8))(v12, v42);
    sub_264E43E4C(&v50);
  }
}

unint64_t sub_264E54C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_264E56504())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264E54D30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_264E56404();

  return sub_264E54E3C(a1, v5);
}

unint64_t sub_264E54D74(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_264E56534();

  return sub_264E54F04(a1, v4);
}

uint64_t sub_264E54DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_264E56544();
  sub_264E563A4();
  v7 = sub_264E56564();

  return a3(a1, a2, v7);
}

unint64_t sub_264E54E3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264E55FE8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266750190](v9, a1);
      sub_264E517E0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_264E54F04(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_264E54F70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_264E51798(&qword_27FFB6F88, &qword_264E58010);
  result = sub_264E564E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_264E56534();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_264E551E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_264E51798(&qword_27FFB6F70, &qword_264E57FF8);
  v36 = a2;
  result = sub_264E564E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_264E55F70(v25, v37);
      }

      else
      {
        sub_264E51834(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_264E56544();
      sub_264E563A4();
      result = sub_264E56564();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_264E55F70(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_264E55498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_264E54D74(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_264E54F70(v14, a3 & 1);
      v18 = *v4;
      result = sub_264E54D74(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_264E56524();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_264E557C8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

_OWORD *sub_264E555E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264E54DB8(a2, a3, sub_264E54C78);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_264E55924();
      v11 = v19;
      goto LABEL_8;
    }

    sub_264E551E0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_264E54DB8(a2, a3, sub_264E54C78);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_264E56524();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_264E43E4C(v23);

    return sub_264E55F70(a1, v23);
  }

  else
  {
    sub_264E5575C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_264E5575C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_264E55F70(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_264E557C8()
{
  v1 = v0;
  sub_264E51798(&qword_27FFB6F88, &qword_264E58010);
  v2 = *v0;
  v3 = sub_264E564D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264E55924()
{
  v1 = v0;
  sub_264E51798(&qword_27FFB6F70, &qword_264E57FF8);
  v2 = *v0;
  v3 = sub_264E564D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_264E51834(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_264E55F70(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_264E55AC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_264E51798(&qword_27FFB6F78, &qword_264E58000);
    v3 = sub_264E564F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_264E55F80(v4, v13, &qword_27FFB6F80, &qword_264E58008);
      result = sub_264E54D30(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_264E55F70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264E55C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_264E51798(&qword_27FFB6F70, &qword_264E57FF8);
    v3 = sub_264E564F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_264E55F80(v4, &v13, &qword_27FFB6F50, &qword_264E57FE0);
      v5 = v13;
      v6 = v14;
      result = sub_264E54DB8(v13, v14, sub_264E54C78);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_264E55F70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _s9SearchAds0A21ObjectNativeAdTrackerC13beginTracking7advertsySaySo18ADAppAdvertisementCG_tFZ_0(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_264E564C4();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  result = sub_264E56154();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1;
    do
    {
      if (v4)
      {
        v6 = MEMORY[0x2667501C0](v3, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      ++v3;
      sub_264E56144();
      sub_264E53EB8();
      v8 = [v7 instanceID];
      sub_264E56394();

      sub_264E56124();

      v1 = v5;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_264E55EB0(uint64_t a1)
{
  v2 = sub_264E51798(&qword_27FFB6F50, &qword_264E57FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264E55F18()
{
  result = qword_27FFB6F58;
  if (!qword_27FFB6F58)
  {
    sub_264E56174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB6F58);
  }

  return result;
}

_OWORD *sub_264E55F70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_264E55F80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_264E51798(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}