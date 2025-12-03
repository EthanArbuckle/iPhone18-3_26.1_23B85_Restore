@interface TSPAlternateArchiver
- (BOOL)isSavingCollaborativeDocument;
- (BOOL)isSavingDocumentAs;
- (TSPAlternateArchiver)initWithObject:(id)object;
- (TSPAlternateArchiver)initWithObject:(id)object version:(unint64_t)version fieldPath:(const void *)path isDiff:(BOOL)diff diffReadVersion:(unint64_t)readVersion parentArchiver:(id)archiver;
- (TSPArchiverBase)parentArchiver;
- (const)baseFieldPathAndReturnShouldDeleteReturnedValue:(BOOL *)value;
- (id).cxx_construct;
- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion fieldPath:(int *)path message:(const Message *)message;
- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion message:(const Message *)message;
- (id)parentAlternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion fieldPath:(int *)path message:(const Message *)message;
- (void)dealloc;
- (void)enumerateKnownFieldRulesUsingBlock:(id)block;
- (void)p_setPreserveNewerValueRuleForFieldPath:(int *)path fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message;
- (void)p_setPreserveNewerValueUntilModifiedRuleForFieldPath:(int *)path fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message;
- (void)removeFieldAtEndOfPath:(int *)path message:(const Message *)message;
- (void)setPreserveNewerValueRuleForField:(int)field fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message;
- (void)setPreserveNewerValueRuleForField:(int)field fileFormatVersion:(unint64_t)version message:(const Message *)message;
- (void)setPreserveNewerValueUntilModifiedRuleForField:(int)field fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message;
- (void)setPreserveNewerValueUntilModifiedRuleForField:(int)field fileFormatVersion:(unint64_t)version message:(const Message *)message;
@end

@implementation TSPAlternateArchiver

- (TSPAlternateArchiver)initWithObject:(id)object
{
  objectCopy = object;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPAlternateArchiver initWithObject:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 26, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPAlternateArchiver initWithObject:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (TSPAlternateArchiver)initWithObject:(id)object version:(unint64_t)version fieldPath:(const void *)path isDiff:(BOOL)diff diffReadVersion:(unint64_t)readVersion parentArchiver:(id)archiver
{
  objectCopy = object;
  archiverCopy = archiver;
  v20.receiver = self;
  v20.super_class = TSPAlternateArchiver;
  v16 = [(TSPArchiverBase *)&v20 initWithObject:objectCopy];
  v18 = v16;
  if (v16)
  {
    objc_msgSend_setMessageVersion_(v16, v17, version);
    if (path)
    {
      operator new();
    }

    v18->_isDiff = diff;
    v18->_diffReadVersion = readVersion;
    objc_storeWeak(&v18->_parentArchiver, archiverCopy);
  }

  return v18;
}

- (void)dealloc
{
  fieldPath = self->_fieldPath;
  if (fieldPath)
  {
    v4 = sub_2769E22E8(fieldPath);
    MEMORY[0x277C9F670](v4, 0x1081C40B6D36AFBLL);
  }

  v5.receiver = self;
  v5.super_class = TSPAlternateArchiver;
  [(TSPArchiverBase *)&v5 dealloc];
}

- (const)baseFieldPathAndReturnShouldDeleteReturnedValue:(BOOL *)value
{
  *value = 0;
  v4 = objc_msgSend_currentFieldPath(self, a2, value);
  fieldPath = self->_fieldPath;
  if (v4)
  {
    if (fieldPath)
    {
      operator new();
    }

    return v4;
  }

  return fieldPath;
}

- (void)setPreserveNewerValueRuleForField:(int)field fileFormatVersion:(unint64_t)version message:(const Message *)message
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = field;
  v6[1] = 0;
  objc_msgSend_p_setPreserveNewerValueRuleForFieldPath_fileFormatVersion_featureIdentifier_message_(self, a2, v6, version, 0, message);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPreserveNewerValueRuleForField:(int)field fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = field;
  v7[1] = 0;
  objc_msgSend_p_setPreserveNewerValueRuleForFieldPath_fileFormatVersion_featureIdentifier_message_(self, a2, v7, version, identifier, message);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)p_setPreserveNewerValueRuleForFieldPath:(int *)path fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message
{
  identifierCopy = identifier;
  if ((objc_msgSend_isDiff(self, v10, v11) & 1) == 0)
  {
    TSUSetCrashReporterInfo();
    v21 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPAlternateArchiver p_setPreserveNewerValueRuleForFieldPath:fileFormatVersion:featureIdentifier:message:]", "[TSPAlternateArchiver p_setPreserveNewerValueRuleForFieldPath:fileFormatVersion:featureIdentifier:message:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm", 93);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v23, v25, 93, 1, "Rule for preserving newer value for known field is not allowed for non-diff archives.");

    TSUCrashBreakpoint();
    abort();
  }

  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPAlternateArchiver p_setPreserveNewerValueRuleForFieldPath:fileFormatVersion:featureIdentifier:message:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 95, 0, "Mixing preserve newer value and preserve newer value until modified rules can cause unexpected data loss.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    flags = self->_flags;
  }

  *&self->_flags = flags | 1;
  objc_msgSend_setRule_forFieldPath_fileFormatVersion_featureIdentifier_message_(self, v12, 5, path, version, identifierCopy, message);
}

- (void)setPreserveNewerValueUntilModifiedRuleForField:(int)field fileFormatVersion:(unint64_t)version message:(const Message *)message
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = field;
  v6[1] = 0;
  objc_msgSend_p_setPreserveNewerValueUntilModifiedRuleForFieldPath_fileFormatVersion_featureIdentifier_message_(self, a2, v6, version, 0, message);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPreserveNewerValueUntilModifiedRuleForField:(int)field fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = field;
  v7[1] = 0;
  objc_msgSend_p_setPreserveNewerValueUntilModifiedRuleForFieldPath_fileFormatVersion_featureIdentifier_message_(self, a2, v7, version, identifier, message);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)p_setPreserveNewerValueUntilModifiedRuleForFieldPath:(int *)path fileFormatVersion:(unint64_t)version featureIdentifier:(id)identifier message:(const Message *)message
{
  identifierCopy = identifier;
  if ((objc_msgSend_isDiff(self, v10, v11) & 1) == 0)
  {
    TSUSetCrashReporterInfo();
    v21 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPAlternateArchiver p_setPreserveNewerValueUntilModifiedRuleForFieldPath:fileFormatVersion:featureIdentifier:message:]", "[TSPAlternateArchiver p_setPreserveNewerValueUntilModifiedRuleForFieldPath:fileFormatVersion:featureIdentifier:message:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm", 118);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v23, v25, 118, 1, "Rule for preserving newer value for known field is not allowed for non-diff archives.");

    TSUCrashBreakpoint();
    abort();
  }

  flags = self->_flags;
  if (flags)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPAlternateArchiver p_setPreserveNewerValueUntilModifiedRuleForFieldPath:fileFormatVersion:featureIdentifier:message:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAlternateArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 120, 0, "Mixing preserve newer value and preserve newer value until modified rules can cause unexpected data loss.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    flags = self->_flags;
  }

  *&self->_flags = flags | 2;
  objc_msgSend_setRule_forFieldPath_fileFormatVersion_featureIdentifier_message_(self, v12, 4, path, version, identifierCopy, message);
}

- (void)removeFieldAtEndOfPath:(int *)path message:(const Message *)message
{
  objc_msgSend_validateMessage_(self, a2, message);
  if (!path || !*path)
  {
    return;
  }

  p_fieldPathsToRemove = &self->_fieldPathsToRemove;
  rep = self->_fieldPathsToRemove.rep_;
  if (!rep)
  {
    total_size = self->_fieldPathsToRemove.total_size_;
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&self->_fieldPathsToRemove, total_size + 1);
    rep = self->_fieldPathsToRemove.rep_;
    total_size = *rep;
    goto LABEL_9;
  }

  current_size = self->_fieldPathsToRemove.current_size_;
  total_size = *rep;
  if (current_size < *rep)
  {
    self->_fieldPathsToRemove.current_size_ = current_size + 1;
    v10 = *(rep + current_size + 1);
    goto LABEL_10;
  }

  if (total_size == self->_fieldPathsToRemove.total_size_)
  {
    goto LABEL_8;
  }

LABEL_9:
  *rep = total_size + 1;
  v10 = sub_2769F4FE8(p_fieldPathsToRemove->arena_);
  v11 = p_fieldPathsToRemove->current_size_;
  v12 = p_fieldPathsToRemove->rep_ + 8 * v11;
  p_fieldPathsToRemove->current_size_ = v11 + 1;
  *(v12 + 8) = v10;
LABEL_10:
  v13 = *path;
  if (*path)
  {
    v14 = *(v10 + 16);
    v15 = path + 1;
    do
    {
      if (v14 == *(v10 + 20))
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve();
      }

      *(*(v10 + 24) + 4 * v14++) = v13;
      *(v10 + 16) = v14;
      v16 = *v15++;
      v13 = v16;
    }

    while (v16);
  }
}

- (id)parentAlternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion fieldPath:(int *)path message:(const Message *)message
{
  objc_msgSend_validateMessage_(self, a2, message);
  v18 = 0;
  v11 = objc_msgSend_baseFieldPathAndReturnShouldDeleteReturnedValue_(self, v10, &v18);
  WeakRetained = objc_loadWeakRetained(&self->_parentArchiver);
  v14 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_fieldPath_baseFieldPath_message_(WeakRetained, v13, version, formatVersion, path, v11, 0);

  if (v18 == 1 && v11 != 0)
  {
    v16 = sub_2769E22E8(v11);
    MEMORY[0x277C9F670](v16, 0x1081C40B6D36AFBLL);
  }

  return v14;
}

- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion message:(const Message *)message
{
  if (self->_isDiff)
  {
    v5 = objc_msgSend_parentAlternateDiffToMergeBeforeVersion_fileFormatVersion_fieldPath_message_(self, a2, version, formatVersion, 0, message);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSPAlternateArchiver;
    v5 = [(TSPArchiverBase *)&v7 alternateDiffToMergeBeforeVersion:version fileFormatVersion:formatVersion message:message];
  }

  return v5;
}

- (id)alternateDiffToMergeBeforeVersion:(unint64_t)version fileFormatVersion:(unint64_t)formatVersion fieldPath:(int *)path message:(const Message *)message
{
  if (self->_isDiff)
  {
    v6 = objc_msgSend_parentAlternateDiffToMergeBeforeVersion_fileFormatVersion_fieldPath_message_(self, a2, version, formatVersion, path, message);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSPAlternateArchiver;
    v6 = [(TSPArchiverBase *)&v8 alternateDiffToMergeBeforeVersion:version fileFormatVersion:formatVersion fieldPath:path message:message];
  }

  return v6;
}

- (BOOL)isSavingDocumentAs
{
  WeakRetained = objc_loadWeakRetained(&self->_parentArchiver);
  isSavingDocumentAs = objc_msgSend_isSavingDocumentAs(WeakRetained, v3, v4);

  return isSavingDocumentAs;
}

- (BOOL)isSavingCollaborativeDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_parentArchiver);
  isSavingCollaborativeDocument = objc_msgSend_isSavingCollaborativeDocument(WeakRetained, v3, v4);

  return isSavingCollaborativeDocument;
}

- (void)enumerateKnownFieldRulesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy && self->_isDiff)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2769C7638;
    v7[3] = &unk_27A6E3348;
    v7[4] = self;
    v8 = blockCopy;
    objc_msgSend_enumerateFieldRulesUsingBlock_(self, v6, v7);
  }
}

- (TSPArchiverBase)parentArchiver
{
  WeakRetained = objc_loadWeakRetained(&self->_parentArchiver);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  return self;
}

@end