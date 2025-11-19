@interface TSWPMergeProperty
- (BOOL)isEqual:(id)a3;
- (TSWPMergeProperty)initWithMergeFieldType:(id)a3 stringValue:(id)a4;
- (id)description;
@end

@implementation TSWPMergeProperty

- (TSWPMergeProperty)initWithMergeFieldType:(id)a3 stringValue:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPMergeProperty initWithMergeFieldType:stringValue:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPMergeProperty.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 24, 0, "invalid nil value for '%{public}s'", "mergeFieldType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v26.receiver = self;
  v26.super_class = TSWPMergeProperty;
  v18 = [(TSWPMergeProperty *)&v26 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(v6, v16, v17);
    mergeFieldType = v18->_mergeFieldType;
    v18->_mergeFieldType = v19;

    v23 = objc_msgSend_copy(v8, v21, v22);
    stringValue = v18->_stringValue;
    v18->_stringValue = v23;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v8 = v5;
    if (v5)
    {
      mergeFieldType = self->_mergeFieldType;
      v10 = objc_msgSend_mergeFieldType(v5, v6, v7);
      if (objc_msgSend_isEqual_(mergeFieldType, v11, v10))
      {
        stringValue = self->_stringValue;
        v15 = objc_msgSend_stringValue(v8, v12, v13);
        v16 = stringValue;
        v17 = v15;
        v19 = v17;
        if (v16 == v17)
        {

          goto LABEL_11;
        }

        if (v16 && v17)
        {
          isEqualToString = objc_msgSend_isEqualToString_(v16, v18, v17);

          if ((isEqualToString & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_11:
          v21 = 1;
LABEL_15:

          goto LABEL_16;
        }
      }
    }

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  v21 = 1;
LABEL_16:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_descriptionWithObject_class_format_(v3, v5, self, v4, @" [fieldType: %@] [string: %@]", self->_mergeFieldType, self->_stringValue);;
  v9 = objc_msgSend_descriptionString(v6, v7, v8);

  return v9;
}

@end