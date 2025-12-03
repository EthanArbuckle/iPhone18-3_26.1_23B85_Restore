@interface TSCEFormulaOwnerWrapper
- (BOOL)isEqual:(id)equal;
- (TSCEFormulaOwnerWrapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)d;
- (id)description;
@end

@implementation TSCEFormulaOwnerWrapper

- (TSCEFormulaOwnerWrapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)d
{
  if (*d == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaOwnerWrapper initWithFormulaOwnerUID:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTranslationFlags.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 49, 0, "Requires a valid ownerUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v19.receiver = self;
  v19.super_class = TSCEFormulaOwnerWrapper;
  result = [(TSCEFormulaOwnerWrapper *)&v19 init];
  if (result)
  {
    result->_ownerUID = *d;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqualToTSCEFormulaOwnerWrapper = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToTSCEFormulaOwnerWrapper = objc_msgSend_isEqualToTSCEFormulaOwnerWrapper_(self, v6, v5, v7, v8);
  }

  else
  {
    isEqualToTSCEFormulaOwnerWrapper = 0;
  }

  return isEqualToTSCEFormulaOwnerWrapper;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCEFormulaOwnerWrapper;
  v4 = [(TSCEFormulaOwnerWrapper *)&v11 description];
  v5 = TSKUIDStruct::description(&self->_ownerUID);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@ %@", v7, v8, v4, v5);

  return v9;
}

@end