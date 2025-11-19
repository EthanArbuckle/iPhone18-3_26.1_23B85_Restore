@interface APOdmlValidator
+ (int64_t)permissionCheck:(id)a3 personalizedAdsEnabled:(BOOL)a4 trialKillswitch:(BOOL)a5;
@end

@implementation APOdmlValidator

+ (int64_t)permissionCheck:(id)a3 personalizedAdsEnabled:(BOOL)a4 trialKillswitch:(BOOL)a5
{
  v5 = a5;
  v111 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = OdmlLogForCategory(5uLL);
  v9 = os_signpost_id_generate(v8);

  v10 = OdmlLogForCategory(5uLL);
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134283521;
    v107 = objc_msgSend_count(v7, v13, v14);
    _os_signpost_emit_with_name_impl(&dword_260ECB000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Permission Check", "%{private}lu", buf, 0xCu);
  }

  if (!a4)
  {
    v26 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *buf = 138412290;
      v107 = v27;
      v28 = v27;
      _os_log_impl(&dword_260ECB000, v26, OS_LOG_TYPE_DEFAULT, "[%@] Cannot rerank if Personalized Ads is disabled.", buf, 0xCu);
    }

    v29 = OdmlLogForCategory(5uLL);
    v30 = v29;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      v33 = objc_msgSend_count(v7, v31, v32);
      *buf = 134283521;
      v107 = v33;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v30, OS_SIGNPOST_INTERVAL_END, v9, "Permission Check", "%{private}lu", buf, 0xCu);
    }

    v25 = &kAPOdmlPersonalizedAdsDisabled;
    goto LABEL_18;
  }

  if (v5)
  {
    v17 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138412290;
      v107 = v18;
      v19 = v18;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%@] Reranking is disabled on Trial.", buf, 0xCu);
    }

    v20 = OdmlLogForCategory(5uLL);
    v21 = v20;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v24 = objc_msgSend_count(v7, v22, v23);
      *buf = 134283521;
      v107 = v24;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v21, OS_SIGNPOST_INTERVAL_END, v9, "Permission Check", "%{private}lu", buf, 0xCu);
    }

    v25 = &kAPOdmlRerankingDisabledWithTrial;
    goto LABEL_18;
  }

  if (objc_msgSend_isInternalInstall(MEMORY[0x277CCAC38], v15, v16))
  {
    v38 = objc_msgSend_BOOLForKey_(APOdmlDefaults, v37, @"ODMLAllowListDisabled");
  }

  else
  {
    v38 = 0;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v7;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v102, v110, 16);
  if (!v40)
  {
    goto LABEL_37;
  }

  v43 = v40;
  v44 = *v103;
  spid = v9;
  v100 = v7;
  while (2)
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v103 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(*(&v102 + 1) + 8 * i);
      v47 = objc_msgSend_odmlResponse(v46, v41, v42, spid);

      if (!v47)
      {
        v73 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = objc_opt_class();
          *buf = 138412290;
          v107 = v74;
          v75 = v74;
          _os_log_impl(&dword_260ECB000, v73, OS_LOG_TYPE_DEFAULT, "[%@] ODML Response not found.", buf, 0xCu);
        }

        v76 = OdmlLogForCategory(5uLL);
        v77 = v76;
        v7 = v100;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
        {
          v80 = objc_msgSend_count(obj, v78, v79);
          *buf = 134283521;
          v107 = v80;
          _os_signpost_emit_with_name_impl(&dword_260ECB000, v77, OS_SIGNPOST_INTERVAL_END, spid, "Permission Check", "%{private}lu", buf, 0xCu);
        }

        v81 = &kAPOdmlRerankingResponseNotFound;
        goto LABEL_61;
      }

      v50 = objc_msgSend_odmlResponse(v46, v48, v49);
      v53 = objc_msgSend_odmlEnabled(v50, v51, v52);

      if ((v53 & 1) == 0)
      {
        v82 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = objc_opt_class();
          *buf = 138412290;
          v107 = v83;
          v84 = v83;
          _os_log_impl(&dword_260ECB000, v82, OS_LOG_TYPE_DEFAULT, "[%@] Reranking is disabled on the server.", buf, 0xCu);
        }

        v85 = OdmlLogForCategory(5uLL);
        v77 = v85;
        v7 = v100;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
        {
          v88 = objc_msgSend_count(obj, v86, v87);
          *buf = 134283521;
          v107 = v88;
          _os_signpost_emit_with_name_impl(&dword_260ECB000, v77, OS_SIGNPOST_INTERVAL_END, spid, "Permission Check", "%{private}lu", buf, 0xCu);
        }

        v81 = &kAPOdmlRerankingDisabledWithServer;
        goto LABEL_61;
      }

      if (!v38)
      {
        v59 = objc_msgSend_sharedInstance(APOdmlAllowList, v54, v55);
        v62 = objc_msgSend_adamID(v46, v60, v61);
        isAllowed = objc_msgSend_isAllowed_(v59, v63, v62);

        if (isAllowed)
        {
          continue;
        }

        v89 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v90 = objc_opt_class();
          v91 = v90;
          v94 = objc_msgSend_adamID(v46, v92, v93);
          *buf = 138412546;
          v107 = v90;
          v108 = 2112;
          v109 = v94;
          _os_log_impl(&dword_260ECB000, v89, OS_LOG_TYPE_DEFAULT, "[%@] Allowlist doesn't include %@.", buf, 0x16u);
        }

        v95 = OdmlLogForCategory(5uLL);
        v77 = v95;
        v7 = v100;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
        {
          v98 = objc_msgSend_count(obj, v96, v97);
          *buf = 134283521;
          v107 = v98;
          _os_signpost_emit_with_name_impl(&dword_260ECB000, v77, OS_SIGNPOST_INTERVAL_END, spid, "Permission Check", "%{private}lu", buf, 0xCu);
        }

        v81 = &kAPOdmlRerankingNotPermittedErrorCode;
LABEL_61:

        v34 = *v81;
        goto LABEL_19;
      }

      v56 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        *buf = 138412290;
        v107 = v57;
        v58 = v57;
        _os_log_impl(&dword_260ECB000, v56, OS_LOG_TYPE_DEFAULT, "[%@] Allowlist is disabled and thus allowlist check will be bypassed.", buf, 0xCu);
      }
    }

    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v102, v110, 16);
    v9 = spid;
    v7 = v100;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_37:

  v65 = OdmlLogForCategory(5uLL);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = objc_opt_class();
    *buf = 138412290;
    v107 = v66;
    v67 = v66;
    _os_log_impl(&dword_260ECB000, v65, OS_LOG_TYPE_DEFAULT, "[%@] Reranking permission is granted. Reranking will start soon.", buf, 0xCu);
  }

  v68 = OdmlLogForCategory(5uLL);
  v69 = v68;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
  {
    v72 = objc_msgSend_count(obj, v70, v71);
    *buf = 134283521;
    v107 = v72;
    _os_signpost_emit_with_name_impl(&dword_260ECB000, v69, OS_SIGNPOST_INTERVAL_END, v9, "Permission Check", "%{private}lu", buf, 0xCu);
  }

  v25 = &kAPOdmlRerankingPermitted;
LABEL_18:
  v34 = *v25;
LABEL_19:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

@end