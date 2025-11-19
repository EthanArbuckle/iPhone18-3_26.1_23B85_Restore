@interface TSPDocumentRevision
+ (TSPDocumentRevision)revisionWithRevisionString:(id)a3;
+ (id)documentRevisionAtURL:(id)a3 passphrase:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)revisionString;
- (TSPDocumentRevision)init;
- (TSPDocumentRevision)initWithCoder:(id)a3;
- (TSPDocumentRevision)initWithRevisionString:(id)a3;
- (TSPDocumentRevision)initWithSequence:(int)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nextRevisionWithIdentifier:(id)a3;
- (int64_t)compareSequenceFromRevision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TSPDocumentRevision

- (TSPDocumentRevision)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentRevision init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 26, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDocumentRevision init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDocumentRevision)initWithSequence:(int)a3 identifier:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v23.receiver = self;
    v23.super_class = TSPDocumentRevision;
    v8 = [(TSPDocumentRevision *)&v23 init];
    v11 = v8;
    if (v8)
    {
      v8->_sequence = a3;
      v12 = objc_msgSend_copy(v7, v9, v10);
      identifier = v11->_identifier;
      v11->_identifier = v12;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPDocumentRevision initWithSequence:identifier:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 31, 0, "Document revision identifier should not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    v14 = 0;
  }

  return v14;
}

- (TSPDocumentRevision)initWithRevisionString:(id)a3
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_componentsSeparatedByString_(v4, v5, @"::");
  if (objc_msgSend_count(v6, v7, v8) == 2)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, 0);
    v14 = objc_msgSend_longLongValue(v11, v12, v13);

    if (v14 != v14)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPDocumentRevision initWithRevisionString:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 53, 0, "Revision string has invalid sequence: %{public}@", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v23 = objc_msgSend_objectAtIndexedSubscript_(v6, v15, 1);
    if (objc_msgSend_length(v23, v24, v25))
    {
      v26 = objc_alloc(MEMORY[0x277CCAD78]);
      v29 = objc_msgSend_initWithUUIDString_(v26, v27, v23);
      if (!v29)
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPDocumentRevision initWithRevisionString:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 66, 0, "Revision string has invalid identifier: %{public}@", v4);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
        v37 = objc_alloc(MEMORY[0x277CCAD78]);
        v40 = objc_msgSend_initWithUUIDString_(v37, v38, @"0d4664c7-0c82-4301-8c01-e2d4a551216e");
        if (!v40)
        {
          TSUSetCrashReporterInfo();
          v57 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSPDocumentRevision initWithRevisionString:]", "[TSPDocumentRevision initWithRevisionString:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm", 69);
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v59, v61, 69, 1, "Should be able to create UUID from base UUID string.");

          TSUCrashBreakpoint();
          abort();
        }

        v41 = objc_msgSend_tsu_UUIDWithNamespaceUUID_name_(MEMORY[0x277CCAD78], v39, v40, v23);

        v29 = v41;
        v43 = objc_msgSend_initWithSequence_identifier_(self, v42, v14, v41);
        goto LABEL_13;
      }
    }

    else
    {
      v63[0] = 0;
      v63[1] = 0;
      v53 = objc_alloc(MEMORY[0x277CCAD78]);
      v29 = objc_msgSend_initWithUUIDBytes_(v53, v54, v63);
    }

    v43 = objc_msgSend_initWithSequence_identifier_(self, v28, v14, v29);
LABEL_13:
    self = v43;

    v52 = self;
    goto LABEL_14;
  }

  if (objc_msgSend_length(v4, v9, v10))
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSPDocumentRevision initWithRevisionString:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 77, 0, "Revision string is in invalid format: %{public}@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
  }

  v52 = 0;
LABEL_14:

  v55 = *MEMORY[0x277D85DE8];
  return v52;
}

+ (TSPDocumentRevision)revisionWithRevisionString:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithRevisionString_(v5, v6, v4);

  return v7;
}

+ (id)documentRevisionAtURL:(id)a3 passphrase:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_documentRevisionAtURL_(TSPDocumentProperties, v9, v7);
  if (!v11)
  {
    v11 = objc_msgSend_documentRevisionAtURL_passphrase_error_(TSPObjectContext, v10, v7, v8, a5);
  }

  return v11;
}

- (NSString)revisionString
{
  v3 = MEMORY[0x277CCACA8];
  sequence = self->_sequence;
  v5 = objc_msgSend_UUIDString(self->_identifier, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%d%@%@", sequence, @"::", v5);

  return v7;
}

- (id)nextRevisionWithIdentifier:(id)a3
{
  v5 = a3;
  if (self->_sequence == 0x7FFFFFFF)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDocumentRevision nextRevisionWithIdentifier:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentRevision.mm");
    v12 = objc_msgSend_revisionString(self, v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v9, 109, 0, "Revision will overflow: %{public}@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v16 = objc_opt_class();
    objc_msgSend_revisionWithSequence_identifier_(v16, v17, 0x80000000, v5);
  }

  else
  {
    v18 = objc_opt_class();
    objc_msgSend_revisionWithSequence_identifier_(v18, v19, (self->_sequence + 1), v5);
  }
  v20 = ;

  return v20;
}

- (int64_t)compareSequenceFromRevision:(id)a3
{
  v4 = a3;
  sequence = self->_sequence;
  if (sequence <= objc_msgSend_sequence(v4, v6, v7))
  {
    v11 = self->_sequence;
    if (v11 >= objc_msgSend_sequence(v4, v8, v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_revisionString(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p %@>", v5, self, v8);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    sequence = self->_sequence;
    if (sequence == objc_msgSend_sequence(v5, v7, v8))
    {
      identifier = self->_identifier;
      v12 = objc_msgSend_identifier(v5, v9, v10);
      isEqual = objc_msgSend_isEqual_(identifier, v13, v12);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  sequence = self->_sequence;
  identifier = self->_identifier;

  return objc_msgSend_initWithSequence_identifier_(v7, v8, sequence, identifier);
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_msgSend_encodeInt32_forKey_(v7, v4, self->_sequence, @"sequence");
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_encodeObject_forKey_(v7, v5, identifier, @"identifier");
  }
}

- (TSPDocumentRevision)initWithCoder:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_decodeInt32ForKey_(v4, v5, @"sequence");
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"identifier");
  v11 = objc_msgSend_initWithSequence_identifier_(self, v10, v6, v9);

  return v11;
}

@end