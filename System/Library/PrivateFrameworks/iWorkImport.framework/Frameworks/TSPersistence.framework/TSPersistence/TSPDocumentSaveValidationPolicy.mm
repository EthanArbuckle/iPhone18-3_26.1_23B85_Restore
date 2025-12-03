@interface TSPDocumentSaveValidationPolicy
- (TSPDocumentSaveValidationPolicy)initWithValidateDataCRC:(BOOL)c validateDataDigest:(BOOL)digest scanForOSLikeCorruption:(BOOL)corruption corruptedDataFailToSaveMitigationPolicy:(int64_t)policy corruptedDataRemovalMitigationPolicy:(int64_t)mitigationPolicy updateDataModificationDate:(BOOL)date failToSaveIfUpdateDataModificationDateFails:(BOOL)fails;
- (id)description;
@end

@implementation TSPDocumentSaveValidationPolicy

- (TSPDocumentSaveValidationPolicy)initWithValidateDataCRC:(BOOL)c validateDataDigest:(BOOL)digest scanForOSLikeCorruption:(BOOL)corruption corruptedDataFailToSaveMitigationPolicy:(int64_t)policy corruptedDataRemovalMitigationPolicy:(int64_t)mitigationPolicy updateDataModificationDate:(BOOL)date failToSaveIfUpdateDataModificationDateFails:(BOOL)fails
{
  v33.receiver = self;
  v33.super_class = TSPDocumentSaveValidationPolicy;
  v15 = [(TSPDocumentSaveValidationPolicy *)&v33 init];
  v17 = v15;
  if (v15)
  {
    v15->_validateDataCRC = c;
    v15->_validateDataDigest = digest;
    v15->_scanForOSLikeCorruption = corruption;
    v15->_updateDataModificationDate = date;
    v15->_failToSaveIfUpdateDataModificationDateFails = fails;
    if (policy > 4)
    {
      v15->_corruptedDataFailToSaveMitigationPolicy = 0;
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPDocumentSaveValidationPolicy initWithValidateDataCRC:validateDataDigest:scanForOSLikeCorruption:corruptedDataFailToSaveMitigationPolicy:corruptedDataRemovalMitigationPolicy:updateDataModificationDate:failToSaveIfUpdateDataModificationDateFails:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentValidationPolicy.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 120, 0, "Invalid value for TSPDocumentCorruptedDataFailToSaveMitigationPolicy: %td", policy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }

    else
    {
      v15->_corruptedDataFailToSaveMitigationPolicy = policy;
    }

    if (mitigationPolicy > 6)
    {
      v17->_corruptedDataRemovalMitigationPolicy = 0;
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPDocumentSaveValidationPolicy initWithValidateDataCRC:validateDataDigest:scanForOSLikeCorruption:corruptedDataFailToSaveMitigationPolicy:corruptedDataRemovalMitigationPolicy:updateDataModificationDate:failToSaveIfUpdateDataModificationDateFails:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentValidationPolicy.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 127, 0, "Invalid value for TSPDocumentCorruptedDataRemovalMitigationPolicy: %td", mitigationPolicy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    else
    {
      v17->_corruptedDataRemovalMitigationPolicy = mitigationPolicy;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = @"NO";
  if (self->_validateDataCRC)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_validateDataDigest)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_scanForOSLikeCorruption)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  corruptedDataFailToSaveMitigationPolicy = self->_corruptedDataFailToSaveMitigationPolicy;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v15 = sub_276A794F8(corruptedDataFailToSaveMitigationPolicy, v14);
  v17 = sub_276A795C0(self->_corruptedDataRemovalMitigationPolicy, v16);
  if (self->_updateDataModificationDate)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (self->_failToSaveIfUpdateDataModificationDateFails)
  {
    v6 = @"YES";
  }

  v19 = v18;
  v21 = objc_msgSend_stringWithFormat_(v3, v20, @"<%@ validateDataCRC=%@, validateDataDigest=%@, scanForOSLikeCorruption=%@, corruptedDataFailToSaveMitigationPolicy=%@, corruptedDataRemovalMitigationPolicy=%@ updateDataModificationDate=%@ failToSaveIfUpdateDataModificationDateFails=%@>", v5, v13, v12, v11, v15, v17, v19, v6);

  return v21;
}

@end