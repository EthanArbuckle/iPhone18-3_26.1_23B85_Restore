@interface SPRInspector
+ (BOOL)seIsProductionSigned;
+ (NSString)seid;
+ (id)getSPRInspectorAndReturnError:(id *)error;
- (BOOL)removeMuirfieldWithForce:(BOOL)force error:(id *)error;
- (BOOL)removeMuirfieldWithForce:(BOOL)force session:(id)session seid:(id)seid error:(id *)error;
- (NSArray)applicationRecords;
- (id)getMemoryInfoAndReturnError:(id *)error;
- (id)getMemoryInfoWithSession:(id)session seid:(id)seid isProduction:(BOOL)production error:(id *)error;
@end

@implementation SPRInspector

+ (id)getSPRInspectorAndReturnError:(id *)error
{
  v4 = [SPRInspector alloc];
  v8 = objc_msgSend_initWithConnector_(v4, v5, &unk_287B2DC60, v6, v7);
  v12 = objc_msgSend_connectAndReturnError_(v8, v9, error, v10, v11);

  return v12;
}

- (NSArray)applicationRecords
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26A93BCB8;
  v16 = sub_26A93BCC8;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26A93BEC4;
  v11[3] = &unk_279CA5478;
  v11[4] = self;
  v4 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v11, v2, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26A93BF30;
  v10[3] = &unk_279CA54A0;
  v10[4] = &v12;
  objc_msgSend_copyApplicationRecords_(v4, v5, v10, v6, v7);

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

+ (NSString)seid
{
  v5 = objc_msgSend_sharedHardwareManager(MEMORY[0x277D2C848], a2, v2, v3, v4);
  HwSupport = objc_msgSend_getHwSupport(v5, v6, v7, v8, v9);

  if (HwSupport == 2)
  {
    v30 = 0;
    v15 = objc_msgSend_embeddedSecureElementWithError_(MEMORY[0x277D2C870], v11, &v30, v13, v14);
    v16 = v30;
    v21 = objc_msgSend_serialNumber(v15, v17, v18, v19, v20);

    if (v16)
    {
      v26 = objc_msgSend_inspector(MEMORY[0x277D498B8], v22, v23, v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_26AA7E0A4();
      }

      v27 = 0;
    }

    else
    {
      if (!v21)
      {
        v28 = objc_msgSend_inspector(MEMORY[0x277D498B8], v22, v23, v24, v25);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_26AA7E118();
        }
      }

      v27 = v21;
    }
  }

  else
  {
    v16 = objc_msgSend_inspector(MEMORY[0x277D498B8], v11, v12, v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E064();
    }

    v27 = 0;
  }

  return v27;
}

+ (BOOL)seIsProductionSigned
{
  v5 = objc_msgSend_sharedHardwareManager(MEMORY[0x277D2C848], a2, v2, v3, v4);
  HwSupport = objc_msgSend_getHwSupport(v5, v6, v7, v8, v9);

  if (HwSupport != 2)
  {
    v16 = objc_msgSend_inspector(MEMORY[0x277D498B8], v11, v12, v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E064();
    }

    goto LABEL_8;
  }

  v28 = 0;
  v15 = objc_msgSend_embeddedSecureElementWithError_(MEMORY[0x277D2C870], v11, &v28, v13, v14);
  v16 = v28;
  isProductionSigned = objc_msgSend_isProductionSigned(v15, v17, v18, v19, v20);

  if (v16)
  {
    v26 = objc_msgSend_inspector(MEMORY[0x277D498B8], v22, v23, v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E0A4();
    }

LABEL_8:
    isProductionSigned = 0;
  }

  return isProductionSigned;
}

- (BOOL)removeMuirfieldWithForce:(BOOL)force error:(id *)error
{
  selfCopy = self;
  sub_26A954BD8(force);

  return 1;
}

- (BOOL)removeMuirfieldWithForce:(BOOL)force session:(id)session seid:(id)seid error:(id *)error
{
  v9 = sub_26AA7EB44();
  sessionCopy = session;
  selfCopy = self;
  sub_26A954F88(force, sessionCopy, v9);

  return 1;
}

- (id)getMemoryInfoAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_26A95558C();

  return v4;
}

- (id)getMemoryInfoWithSession:(id)session seid:(id)seid isProduction:(BOOL)production error:(id *)error
{
  v8 = sub_26AA7EB44();
  v10 = v9;
  sessionCopy = session;
  selfCopy = self;
  v13 = sub_26A955AD8(sessionCopy, v8, v10);

  return v13;
}

@end