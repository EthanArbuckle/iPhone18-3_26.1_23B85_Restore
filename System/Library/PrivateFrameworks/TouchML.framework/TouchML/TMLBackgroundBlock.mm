@interface TMLBackgroundBlock
+ (id)executeFunction:(id)function argument:(id)argument;
+ (id)sharedVM;
+ (void)handleException:(id)exception;
+ (void)initializeJSContext:(id)context;
@end

@implementation TMLBackgroundBlock

+ (void)initializeJSContext:(id)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1980E4;
  block[3] = &unk_279DC5818;
  block[4] = self;
  v3 = qword_2806D9078;
  contextCopy = context;
  if (v3 != -1)
  {
    dispatch_once(&qword_2806D9078, block);
  }

  objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v4, v6, &unk_287F2B9B0, @"background");
}

+ (id)sharedVM
{
  if (qword_2806D9088 != -1)
  {
    sub_26F200B8C();
  }

  v3 = qword_2806D9080;

  return v3;
}

+ (id)executeFunction:(id)function argument:(id)argument
{
  v40[1] = *MEMORY[0x277D85DE8];
  argumentCopy = argument;
  v7 = MEMORY[0x277CD4640];
  functionCopy = function;
  v9 = [v7 alloc];
  v12 = objc_msgSend_sharedVM(self, v10, v11);
  v15 = objc_msgSend_initWithVirtualMachine_(v9, v13, v14, v12);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_26F1986B8;
  v39[3] = &unk_279DC58A8;
  v39[4] = self;
  objc_msgSend_setExceptionHandler_(v15, v16, COERCE_DOUBLE(3221225472), v39);
  v19 = objc_msgSend_globalObject(v15, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v20, v21, &unk_287F2B9F0, @"nslog");
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, v23, @"var _tmlResult=%@ _tmlResult", functionCopy);;

  v27 = objc_msgSend_evaluateScript_(v15, v25, v26, v24);

  v30 = argumentCopy;
  if (!argumentCopy)
  {
    v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29);
  }

  v40[0] = v30;
  v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v29, v40, 1);
  v34 = objc_msgSend_callWithArguments_(v27, v32, v33, v31);

  if (!argumentCopy)
  {
  }

  v37 = objc_msgSend_convertJsValue_toType_(TMLJSEnvironment, v35, v36, v34, 16);

  return v37;
}

+ (void)handleException:(id)exception
{
  v44[1] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v6 = objc_msgSend_objectForKeyedSubscript_(exceptionCopy, v4, v5, @"stack");
  v9 = objc_msgSend_toString(v6, v7, v8);
  v12 = objc_msgSend_componentsSeparatedByString_(v9, v10, v11, @"\n");
  v15 = objc_msgSend_mutableCopy(v12, v13, v14);

  if (v15)
  {
    v18 = objc_msgSend_firstObject(v15, v16, v17);
    v19 = MEMORY[0x277CCACA8];
    v22 = objc_msgSend_objectForKeyedSubscript_(exceptionCopy, v20, v21, @"line");
    v25 = objc_msgSend_toString(v22, v23, v24);
    v28 = objc_msgSend_stringWithFormat_(v19, v26, v27, @"%@:#%@", v18, v25);
    objc_msgSend_replaceObjectAtIndex_withObject_(v15, v29, v30, 0, v28);
  }

  v31 = objc_alloc(MEMORY[0x277CBEAD8]);
  v34 = objc_msgSend_toString(exceptionCopy, v32, v33);
  v43 = @"stack";
  v44[0] = v15;
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v36, v44, &v43, 1);
  v40 = objc_msgSend_initWithName_reason_userInfo_(v31, v38, v39, @"TMLJSException", v34, v37);

  objc_msgSend_raiseException_(TMLExceptionHandler, v41, v42, v40);
}

@end