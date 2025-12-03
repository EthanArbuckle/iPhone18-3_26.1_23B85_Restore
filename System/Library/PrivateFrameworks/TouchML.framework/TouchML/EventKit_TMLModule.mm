@interface EventKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation EventKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F197B34;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9068 != -1)
  {
    dispatch_once(&qword_2806D9068, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  objc_msgSend_defineConstants_(self, v5, v6, contextCopy);
  objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v7, v8, &unk_287F2B910, @"EKEventStore");
  objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v9, v10, &unk_287F2B930, @"EKEvent");
  objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v11, v12, &unk_287F2B950, @"EKAlarm");
  v15 = objc_msgSend_objectForKeyedSubscript_(contextCopy, v13, v14, @"EKAlarm");
  objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v17, &unk_287F2B970, @"withRelativeOffset");

  v22 = objc_msgSend_objectForKeyedSubscript_(contextCopy, v18, v19, @"EKAlarm");

  objc_msgSend_setObject_forKeyedSubscript_(v22, v20, v21, &unk_287F2B990, @"withAbsoluteDate");
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  v60 = objc_msgSend_dictionary(v3, v5, v6);
  v7 = *MEMORY[0x277CD4630];
  objc_msgSend_setObject_forKeyedSubscript_(v60, v8, v9, &unk_287F55358, *MEMORY[0x277CD4630]);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v10, v11, @"EKAuthorizationStatusNotDetermined", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v12, v13, &unk_287F55370, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v14, v15, @"EKAuthorizationStatusRestricted", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v16, v17, &unk_287F55388, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v18, v19, @"EKAuthorizationStatusDenied", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v20, v21, &unk_287F553A0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v22, v23, @"EKAuthorizationStatusAuthorized", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v24, v25, &unk_287F55358, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v26, v27, @"EKEventStatusNone", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v28, v29, &unk_287F55370, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v30, v31, @"EKEventStatusConfirmed", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v32, v33, &unk_287F55388, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v34, v35, @"EKEventStatusTentative", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v36, v37, &unk_287F553A0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v38, v39, @"EKEventStatusCanceled", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v40, v41, &unk_287F553B8, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v42, v43, @"EKEntityTypeEvent", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v44, v45, &unk_287F553D0, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v46, v47, @"EKEntityTypeReminder", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v48, v49, &unk_287F55358, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v50, v51, @"EKSpanThisEvent", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v52, v53, &unk_287F55370, v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v54, v55, @"EKSpanFutureEvents", v60);
  objc_msgSend_setObject_forKeyedSubscript_(v60, v56, v57, *MEMORY[0x277CC5948], v7);
  objc_msgSend_defineProperty_descriptor_(constantsCopy, v58, v59, @"EKEventStoreChangedNotification", v60);
}

@end