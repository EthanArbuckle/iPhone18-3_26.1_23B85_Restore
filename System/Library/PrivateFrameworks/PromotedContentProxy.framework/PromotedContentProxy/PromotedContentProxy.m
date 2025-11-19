void sub_260F10E78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v16 = objc_msgSend__userAgent(a1, v7, v8, v9, v10);
  v12 = objc_msgSend_composeUserAgentString_adIdentifier_maxRequestCount_(APProxyURLUtilities, v11, v16, v6, a4);

  objc_msgSend_setCustomUserAgent_(a1, v13, v12, v14, v15);
}

void sub_260F114C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_lock(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_lock(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_sessionDemultiplexerForIdentifier(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_removeObjectForKey_(v15, v16, *(a1 + 40), v17, v18);

  objc_msgSend__unregisterOldSessionIfRequired(*(a1 + 32), v19, v20, v21, v22);
  objc_msgSend_unlock(v6, v23, v24, v25, v26);
  v27 = APLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = *(a1 + 40);
    v30 = 138543362;
    v31 = v28;
    _os_log_impl(&dword_260F10000, v27, OS_LOG_TYPE_INFO, "Removed demultiplexer session '%{public}@'.", &v30, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_260F12BEC(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(APProxyProtocolProperties);
  v3 = qword_280E74670;
  qword_280E74670 = v2;

  v7 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v4, @"https://webproxy.advp.apple.com:443", v5, v6);
  v8 = [APProxySessionConfigurationProvider alloc];
  v12 = objc_msgSend_initWithDefaultProxyURL_(v8, v9, v7, v10, v11);
  v13 = *(a1 + 32);
  v36[0] = objc_opt_class();
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v36, 1, v15);
  objc_msgSend_addProtocolClasses_(v12, v17, v16, v18, v19);

  objc_msgSend_setProxySessionConfigurationProvider_(qword_280E74670, v20, v12, v21, v22);
  v23 = [APNSURLSessionDemultiplexerManager alloc];
  v27 = objc_msgSend_initWithProxySessionConfigProvider_(v23, v24, v12, v25, v26);
  objc_msgSend_setSessionDemultiplexerManager_(qword_280E74670, v28, v27, v29, v30);

  v31 = objc_alloc_init(APProxyURLCredentialService);
  objc_msgSend_setProxyURLCredentialService_(qword_280E74670, v32, v31, v33, v34);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_260F14F6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_URLSession_dataTask_didReceiveResponse_completionHandler_(v7, v6, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

void sub_260F150F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_URLSession_dataTask_didReceiveData_(v7, v6, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

uint64_t sub_260F15314(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_URLSession_task_didCompleteWithError_(v6, v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));

  v12 = *(a1 + 32);

  return objc_msgSend_invalidate(v12, v8, v9, v10, v11);
}

void sub_260F154FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler_(v7, v6, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
}

void sub_260F15740(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_URLSession_task_didReceiveChallenge_completionHandler_(v7, v6, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

id sub_260F15894(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    objc_msgSend_raise_format_(v7, v10, v8, @"%@ key cannot be nil", v11, v9);
  }

  v12 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v4, a1, 1, v5);
  v17 = objc_msgSend_queryItems(v12, v13, v14, v15, v16);

  v21 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v18, @"name = %@", v19, v20, v6);
  v25 = objc_msgSend_filteredArrayUsingPredicate_(v17, v22, v21, v23, v24);
  v30 = objc_msgSend_firstObject(v25, v26, v27, v28, v29);

  v35 = objc_msgSend_value(v30, v31, v32, v33, v34);

  return v35;
}

id sub_260F159B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = objc_opt_class();
    objc_msgSend_raise_format_(v7, v10, v8, @"%@ key cannot be nil", v11, v9);
  }

  v12 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v4, a1, 0, v5);
  v17 = objc_msgSend_queryItems(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v18, @"name != %@", v19, v20, v6);
  v25 = objc_msgSend_filteredArrayUsingPredicate_(v17, v22, v21, v23, v24);
  if (objc_msgSend_count(v25, v26, v27, v28, v29))
  {
    objc_msgSend_setQueryItems_(v12, v30, v25, v31, v32);
  }

  else
  {
    objc_msgSend_setQueryItems_(v12, v30, 0, v31, v32);
  }

  v37 = objc_msgSend_URL(v12, v33, v34, v35, v36);

  return v37;
}

id sub_260F15AD0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v11 = a4;
  if (v11)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = *MEMORY[0x277CBE660];
    v27 = objc_opt_class();
    objc_msgSend_raise_format_(v25, v28, v26, @"%@ key cannot be nil", v29, v27);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v30 = MEMORY[0x277CBEAD8];
  v31 = *MEMORY[0x277CBE660];
  v32 = objc_opt_class();
  objc_msgSend_raise_format_(v30, v33, v31, @"%@ value cannot be nil", v34, v32);
LABEL_3:
  if (objc_msgSend_length(v11, v7, v8, v9, v10))
  {
    v14 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v12, a1, 0, v13);
    v23 = objc_msgSend_queryItems(v14, v15, v16, v17, v18);
    if (v23)
    {
      v24 = objc_msgSend_queryItems(v14, v19, v20, v21, v22);
    }

    else
    {
      v24 = MEMORY[0x277CBEBF8];
    }

    v39 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v36, @"name != %@", v37, v38, v11);
    v43 = objc_msgSend_filteredArrayUsingPredicate_(v24, v40, v39, v41, v42);
    v46 = objc_msgSend_queryItemWithName_value_(MEMORY[0x277CCAD18], v44, v11, v6, v45);
    v50 = objc_msgSend_arrayByAddingObject_(v43, v47, v46, v48, v49);
    objc_msgSend_setQueryItems_(v14, v51, v50, v52, v53);

    v35 = objc_msgSend_URL(v14, v54, v55, v56, v57);
  }

  else
  {
    v35 = a1;
  }

  return v35;
}

uint64_t sub_260F15CB4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_setProperty_forKey_inRequest_(MEMORY[0x277CBAB98], a2, a3, @"maximumRequestCount", a1);
  }

  else
  {
    return MEMORY[0x2821F9670](MEMORY[0x277CBAB98], sel_removePropertyForKey_inRequest_, @"maximumRequestCount", a1, a1);
  }
}

uint64_t sub_260F15CE0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_setProperty_forKey_inRequest_(MEMORY[0x277CBAB98], a2, a3, @"adIdentifier", a1);
  }

  else
  {
    return MEMORY[0x2821F9670](MEMORY[0x277CBAB98], sel_removePropertyForKey_inRequest_, @"adIdentifier", a1, a1);
  }
}

void sub_260F15D0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277CBAB98];
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3, a4, a5);
  objc_msgSend_setProperty_forKey_inRequest_(v6, v7, v8, @"requestType", a1);
}

uint64_t sub_260F15DF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_propertyForKey_inRequest_(MEMORY[0x277CBAB98], a2, @"com.apple.ap.pc.proxy-is-recursive", a1, a5);
  v10 = objc_msgSend_BOOLValue(v5, v6, v7, v8, v9);

  return v10;
}

BOOL sub_260F15E48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_propertyForKey_inRequest_(MEMORY[0x277CBAB98], a2, @"com.apple.ap.pc.proxy-is-recursive", a1, a5);
  v6 = v5 != 0;

  return v6;
}

uint64_t sub_260F15E94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_propertyForKey_inRequest_(MEMORY[0x277CBAB98], a2, @"requestType", a1, a5);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_integerValue(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_260F15F14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_scheme(a1, a2, a3, a4, a5);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, @"http", v7, v8);

  return isEqualToString;
}

id sub_260F15F54(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a3)
  {
    case 0:
      v5 = off_279AC8C40;
      goto LABEL_7;
    case 1:
      v5 = off_279AC8C48;
      goto LABEL_7;
    case 2:
      v5 = off_279AC8C50;
LABEL_7:
      v6 = objc_msgSend_changeSchemeToString_(a1, a2, *v5, a4, a5);
      goto LABEL_9;
  }

  v6 = a1;
LABEL_9:

  return v6;
}

id sub_260F15FC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_absoluteString(a1, v9, v10, v11, v12);
    v18 = objc_msgSend_scheme(a1, v14, v15, v16, v17);
    v23 = objc_msgSend_length(v18, v19, v20, v21, v22);
    v27 = objc_msgSend_substringFromIndex_(v13, v24, v23, v25, v26);

    v28 = MEMORY[0x277CBEBC0];
    v32 = objc_msgSend_stringByAppendingString_(v4, v29, v27, v30, v31);
    v36 = objc_msgSend_URLWithString_(v28, v33, v32, v34, v35);
  }

  else
  {
    v36 = a1;
  }

  return v36;
}