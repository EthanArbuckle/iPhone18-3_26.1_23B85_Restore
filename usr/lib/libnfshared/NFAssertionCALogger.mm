@interface NFAssertionCALogger
+ (void)postAnalyticsDefaultAppSupression:(id)supression prepOnly:(BOOL)only;
@end

@implementation NFAssertionCALogger

+ (void)postAnalyticsDefaultAppSupression:(id)supression prepOnly:(BOOL)only
{
  supressionCopy = supression;
  if (supressionCopy)
  {
    v87 = supressionCopy;
    v8 = objc_msgSend_objectForKeyedSubscript_(supressionCopy, v7, @"PID");
    v9 = 0x277CCA000uLL;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    supressionCopy = v87;
    if (isKindOfClass)
    {
      v12 = objc_msgSend_objectForKeyedSubscript_(v87, v11, @"PID");
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v15 = 0x27DA9D000uLL;
      v16 = qword_27DA9DE48;
      if (!qword_27DA9DE48)
      {
        v17 = objc_opt_new();
        v18 = qword_27DA9DE48;
        qword_27DA9DE48 = v17;

        v16 = qword_27DA9DE48;
      }

      v19 = objc_msgSend_objectForKeyedSubscript_(v16, v14, v12);

      if (!v19)
      {
        v20 = objc_opt_new();
        objc_msgSend_setObject_forKeyedSubscript_(qword_27DA9DE48, v21, v20, v12);
      }

      objc_sync_exit(selfCopy);

      v23 = objc_msgSend_objectForKeyedSubscript_(v87, v22, @"startTime");
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if (v24)
      {
        v26 = selfCopy;
        objc_sync_enter(v26);
        v28 = objc_msgSend_objectForKeyedSubscript_(v87, v27, @"startTime");
        v30 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v29, v12);
        objc_msgSend_setObject_forKeyedSubscript_(v30, v31, v28, @"startTime");

        objc_sync_exit(v26);
      }

      v32 = objc_msgSend_objectForKeyedSubscript_(v87, v25, @"endTime");
      objc_opt_class();
      v33 = objc_opt_isKindOfClass();

      if (v33)
      {
        v35 = selfCopy;
        objc_sync_enter(v35);
        v37 = objc_msgSend_objectForKeyedSubscript_(v87, v36, @"endTime");
        v39 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v38, v12);
        objc_msgSend_setObject_forKeyedSubscript_(v39, v40, v37, @"endTime");

        objc_sync_exit(v35);
      }

      v41 = objc_msgSend_objectForKeyedSubscript_(v87, v34, @"assertionType");
      objc_opt_class();
      v42 = objc_opt_isKindOfClass();

      if (v42)
      {
        v43 = selfCopy;
        objc_sync_enter(v43);
        v45 = objc_msgSend_objectForKeyedSubscript_(v87, v44, @"assertionType");
        v47 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v46, v12);
        objc_msgSend_setObject_forKeyedSubscript_(v47, v48, v45, @"assertionType");

        objc_sync_exit(v43);
      }

      if (only)
      {
        goto LABEL_23;
      }

      v49 = selfCopy;
      objc_sync_enter(v49);
      v51 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v50, v12);
      v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, @"startTime");
      if (v53)
      {
        v55 = v53;
        v56 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v54, v12);
        v59 = objc_msgSend_objectForKeyedSubscript_(v56, v57, @"endTime");
        if (v59)
        {
          v60 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v58, v12);
          v62 = objc_msgSend_objectForKeyedSubscript_(v60, v61, @"endTime");
          v64 = objc_msgSend_objectForKeyedSubscript_(qword_27DA9DE48, v63, v12);
          v66 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"startTime");
          objc_msgSend_timeIntervalSinceDate_(v62, v67, v66);
          v69 = v68;

          v9 = 0x277CCA000;
          v15 = 0x27DA9D000;
        }

        else
        {
          v69 = 0.0;
        }

        if (v69 <= 0.0)
        {
          goto LABEL_22;
        }

        v71 = objc_msgSend_objectForKeyedSubscript_(*(v15 + 3656), v70, v12);
        v73 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"assertionType");

        if (!v73)
        {
          goto LABEL_22;
        }

        v74 = objc_msgSend_roundToSignificantDigit_forValue_(NFCALogger, v70, 4, (v69 * 1000.0));
        v75 = objc_alloc(MEMORY[0x277CBEAC0]);
        v77 = objc_msgSend_numberWithUnsignedInteger_(*(v9 + 2992), v76, v74);
        v79 = objc_msgSend_objectForKeyedSubscript_(*(v15 + 3656), v78, v12);
        v81 = objc_msgSend_objectForKeyedSubscript_(v79, v80, @"assertionType");
        v51 = objc_msgSend_initWithObjectsAndKeys_(v75, v82, v77, @"totalDuration", v81, @"assertionType", 0);

        v85 = objc_msgSend_sharedCALogger(NFCALogger, v83, v84);
        objc_msgSend_postCAEventFor_eventInput_(v85, v86, @"com.apple.nfcd.assertionSupressDefaultAppPresentment", v51);
      }

LABEL_22:
      objc_msgSend_removeObjectForKey_(*(v15 + 3656), v70, v12);
      objc_sync_exit(v49);

LABEL_23:
      supressionCopy = v87;
    }
  }
}

@end