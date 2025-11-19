@interface TSCH3DShaderEffect
+ (id)effect;
- (BOOL)isEqual:(id)a3;
- (Class)stateClass;
- (id)stateSharingID;
- (unint64_t)hash;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4 updateCurrentStates:(id)a5;
@end

@implementation TSCH3DShaderEffect

+ (id)effect
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (Class)stateClass
{
  v2 = objc_opt_class();

  return objc_msgSend_stateClass(v2, v3, v4, v5, v6);
}

- (id)stateSharingID
{
  v2 = objc_opt_class();

  return objc_msgSend_stateSharingID(v2, v3, v4, v5, v6);
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(v3, v5, v6, v7, v8, v4);

  return isMemberOfClass;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4, v5, v6);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4 updateCurrentStates:(id)a5
{
  v42 = a3;
  v9 = a4;
  v10 = a5;
  v16 = objc_msgSend_alwaysUploadData(self, v11, v12, v13, v14);
  if ((v16 & 1) == 0)
  {
    v20 = objc_msgSend_stateForStateInfo_createIfNil_(v9, v15, v17, v18, v19, self, 1);
    v26 = objc_msgSend_stateForStateInfo_createIfNil_(v10, v21, v22, v23, v24, self, 0);
    if (v26 && objc_msgSend_isEqual_(v20, v25, v27, v28, v29, v26))
    {
      if (byte_280A46430 == 1)
      {
        v30 = objc_opt_class();
        v31 = NSStringFromSelector(a2);
        NSLog(&cfstr_PShortCircuitU.isa, v30, self, v31, self);
      }

      goto LABEL_12;
    }
  }

  if (byte_280A46430 == 1)
  {
    v32 = objc_opt_class();
    v33 = NSStringFromSelector(a2);
    NSLog(&cfstr_PUploadingBy.isa, v32, self, v33, self);
  }

  objc_msgSend_uploadData_effectsStates_(self, v15, v17, v18, v19, v42, v9);
  if ((v16 & 1) == 0)
  {
    v20 = objc_msgSend_stateForStateInfo_createIfNil_(v9, v34, v35, v36, v37, self, 1);
    objc_msgSend_setState_forStateInfo_(v10, v38, v39, v40, v41, v20, self);
LABEL_12:
  }
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DShaderEffect injectCommonShaderInto:context:]", a4);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffect.mm");
  v14 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 96, 0, "Not overridden %s for %@", "[TSCH3DShaderEffect injectCommonShaderInto:context:]", v14);

  v23 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v23, v19, v20, v21, v22);
}

@end