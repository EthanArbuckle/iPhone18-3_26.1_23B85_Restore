@interface NFReaderModeCardIngestionCALogger
+ (void)postAnalyticsReaderModeCardIngestionSession:(id)a3 prepOnly:(BOOL)a4;
@end

@implementation NFReaderModeCardIngestionCALogger

+ (void)postAnalyticsReaderModeCardIngestionSession:(id)a3 prepOnly:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    v65 = v5;
    v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"state");
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(v65, v9, @"state");
      v11 = qword_280AEEF98;
      qword_280AEEF98 = v10;
    }

    v12 = objc_msgSend_objectForKeyedSubscript_(v65, v9, @"spStatus");
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(v65, v14, @"spStatus");
      v16 = qword_280AEEF78;
      qword_280AEEF78 = v15;
    }

    v17 = objc_msgSend_objectForKeyedSubscript_(v65, v14, @"sessionStatus");
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if (v18)
    {
      v20 = objc_msgSend_objectForKeyedSubscript_(v65, v19, @"sessionStatus");
      v21 = qword_280AEEF80;
      qword_280AEEF80 = v20;
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(v65, v19, @"cardValidationStatus");
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v25 = objc_msgSend_objectForKeyedSubscript_(v65, v24, @"cardValidationStatus");
      v26 = qword_280AEEF88;
      qword_280AEEF88 = v25;
    }

    v27 = objc_msgSend_objectForKeyedSubscript_(v65, v24, @"technology");
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if (v28)
    {
      v30 = objc_msgSend_objectForKeyedSubscript_(v65, v29, @"technology");
      v31 = qword_280AEEF90;
      qword_280AEEF90 = v30;
    }

    v32 = objc_msgSend_objectForKeyedSubscript_(v65, v29, @"sessionStartTime");
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if (v33)
    {
      v35 = objc_msgSend_objectForKeyedSubscript_(v65, v34, @"sessionStartTime");
      v36 = qword_280AEEF68;
      qword_280AEEF68 = v35;
    }

    v37 = objc_msgSend_objectForKeyedSubscript_(v65, v34, @"sessionEndTime");
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();

    if (v38)
    {
      v40 = objc_msgSend_objectForKeyedSubscript_(v65, v39, @"sessionEndTime");
      v41 = qword_280AEEF70;
      qword_280AEEF70 = v40;
    }

    v5 = v65;
    if (!a4)
    {
      v42 = 0;
      if (qword_280AEEF68 && qword_280AEEF70)
      {
        objc_msgSend_timeIntervalSinceDate_(qword_280AEEF70, v39, qword_280AEEF68);
        v42 = (v43 * 1000.0);
      }

      v44 = objc_opt_new();
      v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v45, v42);
      objc_msgSend_setObject_forKeyedSubscript_(v44, v47, v46, @"duration");

      BatteryPercent = objc_msgSend_getBatteryPercent(NFCALogger, v48, v49);
      v52 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v51, BatteryPercent);
      objc_msgSend_setObject_forKeyedSubscript_(v44, v53, v52, @"currentBatteryLevel");

      if (qword_280AEEF98)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v54, qword_280AEEF98, @"state");
      }

      if (qword_280AEEF78)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v54, qword_280AEEF78, @"spStatus");
      }

      if (qword_280AEEF80)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v54, qword_280AEEF80, @"sessionStatus");
      }

      if (qword_280AEEF88)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v54, qword_280AEEF88, @"cardValidationStatus");
      }

      v55 = qword_280AEEF90;
      if (qword_280AEEF90)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v54, qword_280AEEF90, @"technology");
      }

      v56 = objc_msgSend_sharedCALogger(NFCALogger, v54, v55);
      objc_msgSend_postCAEventFor_eventInput_(v56, v57, @"com.apple.nfcd.cardIngestionSessionStateChangeEvent", v44);

      v58 = qword_280AEEF68;
      qword_280AEEF68 = 0;

      v59 = qword_280AEEF70;
      qword_280AEEF70 = 0;

      v60 = qword_280AEEF78;
      qword_280AEEF78 = 0;

      v61 = qword_280AEEF80;
      qword_280AEEF80 = 0;

      v62 = qword_280AEEF88;
      qword_280AEEF88 = 0;

      v63 = qword_280AEEF90;
      qword_280AEEF90 = 0;

      v64 = qword_280AEEF98;
      qword_280AEEF98 = 0;

      v5 = v65;
    }
  }
}

@end