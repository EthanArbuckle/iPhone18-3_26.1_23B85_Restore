@interface TSPUnarchiver
+ (id)stringForSelector:(SEL)a3 objectClass:(Class)a4;
- (BOOL)hasDocumentVersionUUID;
- (BOOL)isCrossAppPaste;
- (BOOL)isCrossDocumentPaste;
- (Class)objectClass;
- (NSUUID)objectUUID;
- (TSPObjectContext)context;
- (TSPObjectDelegate)objectDelegate;
- (TSPUnarchiver)initWithMessageType:(unsigned int)a3 unarchiveClass:(Class)a4 message:()unique_ptr<google:(std:(int64_t)a6 :()unique_ptr<TSP:(std:(unint64_t)a8 :(id)a9 default_delete<TSP:(BOOL)a10 :(id)a11 IdentifierMap<BOOL>>>)a7 :(id)a12 IdentifierMap<BOOL> default_delete<google:(id)a13 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:;
- (TSPUnarchiverDelegate)delegate;
- (const)p_messageWithDescriptor:(const void *)a3;
- (id).cxx_construct;
- (id)readDataReferenceMessage:(const void *)a3;
- (id)readRepeatedWeakObjectUUIDPathReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (id)readRepeatedWeakObjectUUIDPathReferenceMessage:(const void *)a3 referenceMessage:(void *)a4 delegate:(id)a5;
- (id)readRepeatedWeakObjectUUIDReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (id)readRepeatedWeakObjectUUIDReferenceMessage:(const void *)a3 referenceMessage:(void *)a4 delegate:(id)a5;
- (id)readSparseWeakObjectUUIDPathReferenceArrayMessage:(const void *)a3;
- (id)readSparseWeakObjectUUIDReferenceArrayMessage:(const void *)a3;
- (id)readWeakObjectUUIDPathReferenceMessage:(const void *)a3;
- (id)readWeakObjectUUIDPathReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (id)readWeakObjectUUIDReferenceMessage:(const void *)a3;
- (id)readWeakObjectUUIDReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (unint64_t)fileFormatVersion;
- (unint64_t)readVersion;
- (unsigned)sourceType;
- (void)addFinalizeHandler:(id)a3;
- (void)dealloc;
- (void)filterIdentifiers:(const void *)a3;
- (void)readLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readLazyReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 validateStrongReferences:(BOOL)a5 allowUnknownObject:(BOOL)a6 class:(Class)a7 protocol:(id)a8 validateClass:(BOOL)a9 selector:(SEL)a10 delegate:(id)a11 completion:(id)a12;
- (void)readReferenceMessage1:(const void *)a3 class:(Class)a4 protocol:(id)a5 message2:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9;
- (void)readReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 repeatedMessage:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9;
- (void)readReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readRepeatedLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readRepeatedLazyReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readRepeatedLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 validateStrongReferences:(BOOL)a5 allowUnknownObject:(BOOL)a6 class:(Class)a7 protocol:(id)a8 validateClass:(BOOL)a9 selector:(SEL)a10 delegate:(id)a11 completion:(id)a12;
- (void)readRepeatedReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readRepeatedReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readRepeatedUnknownLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 completion:(id)a5;
- (void)readRepeatedUnownedReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readRepeatedUnownedReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readRepeatedWeakLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readRepeatedWeakLazyReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readRepeatedWeakReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readRepeatedWeakReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readSparseReferenceArrayMessage:(const void *)a3 completion:(id)a4;
- (void)readSparseReferenceArrayMessage:(const void *)a3 isWeak:(BOOL)a4 class:(Class)a5 protocol:(id)a6 validateClass:(BOOL)a7 selector:(SEL)a8 completion:(id)a9;
- (void)readSparseWeakReferenceArrayMessage:(const void *)a3 completion:(id)a4;
- (void)readUnknownLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 completion:(id)a5;
- (void)readUnownedReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readUnownedReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readWeakLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readWeakLazyReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readWeakReferenceMessage1:(const void *)a3 class:(Class)a4 protocol:(id)a5 message2:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9;
- (void)readWeakReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6;
- (void)readWeakReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 repeatedMessage:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9;
- (void)readWeakReferenceMessage:(const void *)a3 completion:(id)a4;
- (void)readWeakReferenceToObjectUUID:(id)a3 delegate:(id)a4 class:(Class)a5 protocol:(id)a6 selector:(SEL)a7 completion:(id)a8;
- (void)validateReferenceToObjectIdentifier:(int64_t)a3 objectClass:(Class)a4 isWeak:(BOOL *)a5 validateStrongReferences:(BOOL)a6 selector:(SEL)a7 weakSelector:(SEL)a8;
@end

@implementation TSPUnarchiver

- (void)dealloc
{
  v3 = *(self + 19);
  if (v3)
  {
    v4 = sub_2769E22E8(v3);
    MEMORY[0x277C9F670](v4, 0x1081C40B6D36AFBLL);
  }

  v5.receiver = self;
  v5.super_class = TSPUnarchiver;
  [(TSPUnarchiver *)&v5 dealloc];
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(self + 7);
  v5 = objc_msgSend_context(WeakRetained, v3, v4);

  return v5;
}

- (Class)objectClass
{
  v3 = (self + 8);
  v4 = atomic_load(self + 1);
  if (!v4)
  {
    atomic_compare_exchange_strong(v3, &v4, *(self + 21));
    if (!v4)
    {
      v4 = objc_msgSend_classForUnarchiver_(*(self + 21), a2, self);
      atomic_store(v4, self + 1);
    }
  }

  if (!v4 && *(self + 21) && UnsafePointer != -1)
  {
    sub_276BD1290();
    v4 = 0;
  }

  return v4;
}

- (const)p_messageWithDescriptor:(const void *)a3
{
  Message = *(self + 2);
  v6 = *(self + 19);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  v8 = v7 > 0;
  if (Message)
  {
    v9 = v7 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_12:
    if (Message)
    {
      goto LABEL_13;
    }

LABEL_17:
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    if (a3)
    {
      v20 = *(a3 + 1);
      if (v20[23] < 0)
      {
        v20 = *v20;
      }
    }

    else
    {
      v20 = "NULL";
    }

    v21 = *(self + 3);
    if (v8)
    {
      v22 = sub_2769B2558(*(self + 19), v18);
      v24 = objc_msgSend_initWithFormat_(v19, v23, @"Invalid field scope for object with identifier %llu. Expected message type is %s. Field path is %@.", v21, v20, v22);
    }

    else
    {
      v22 = @"empty";
      v24 = objc_msgSend_initWithFormat_(v19, v18, @"Invalid field scope for object with identifier %llu. Expected message type is %s. Field path is %@.", v21, v20, @"empty");
    }

    v26 = v24;
    if (v8)
    {
    }

    v27 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v25, @"TSPInvalidUnarchiverFieldScope", v26, 0);
    objc_exception_throw(v27);
  }

  v10 = 0;
  v11 = 4 * v7;
  do
  {
    v12 = *(*(*(self + 19) + 24) + v10);
    v13 = (*(*Message + 152))(Message, a2);
    (*(*Message + 152))(Message);
    v15 = v14;
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v13, v12);
    if (!FieldByNumber)
    {
      FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v15, v12);
      if (!FieldByNumber)
      {
        v8 = 1;
        goto LABEL_17;
      }
    }

    v10 += 4;
    Message = google::protobuf::Reflection::GetMessage(v15, Message, FieldByNumber, 0);
  }

  while (v11 != v10);
  v8 = 1;
LABEL_13:
  if (a3 && (*(*Message + 152))(Message) != a3)
  {
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = *(a3 + 1);
    if (*(v29 + 23) < 0)
    {
      v29 = *v29;
    }

    v30 = *(self + 3);
    v32 = *((*(*Message + 152))(Message) + 8);
    if (*(v32 + 23) < 0)
    {
      v32 = *v32;
    }

    if (v8)
    {
      v33 = sub_2769B2558(*(self + 19), v31);
      v35 = objc_msgSend_initWithFormat_(v28, v34, @"Wrong message type while unarchiving object with identifier %llu. Expected %s, but is actually %s. Field path is %@.", v30, v29, v32, v33);
    }

    else
    {
      v33 = @"empty";
      v35 = objc_msgSend_initWithFormat_(v28, v31, @"Wrong message type while unarchiving object with identifier %llu. Expected %s, but is actually %s. Field path is %@.", v30, v29, v32, @"empty");
    }

    v37 = v35;
    if (v8)
    {
    }

    v38 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v36, @"TSPUnexpectedProtocolBuffersMessageType", v37, 0);
    objc_exception_throw(v38);
  }

  return Message;
}

- (void)readReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 181, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 181, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v12, a3, 0, 1, 0, a4, v29, v27, a2, sel_readWeakReferenceMessage_class_protocol_completion_, v10);
}

- (void)readReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 188, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 188, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v24, a3, 0, 1, 0, v23, 0, v25, a2, sel_readWeakReferenceMessage_class_protocol_completion_, v26);
}

- (void)readWeakReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readWeakReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 195, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 195, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v12, a3, 1, 1, 0, a4, v29, v27, a2, sel_readWeakReferenceMessage_class_protocol_completion_, v10);
}

- (void)readWeakReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readWeakReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 202, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 202, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v24, a3, 1, 1, 0, v23, 0, v25, a2, sel_readWeakReferenceMessage_class_protocol_completion_, v26);
}

- (void)readUnownedReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readUnownedReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 209, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 209, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v12, a3, 0, 0, 0, a4, v29, v27, a2, sel_readWeakReferenceMessage_class_protocol_completion_, v10);
}

- (void)readUnownedReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readUnownedReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 216, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 216, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v24, a3, 0, 0, 0, v23, 0, v25, a2, sel_readWeakReferenceMessage_class_protocol_completion_, v26);
}

- (void)readRepeatedReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 237, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 237, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readRepeatedReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_completion_(self, v12, a3, 0, 1, 0, a4, v29, v27, a2, v10);
}

- (void)readRepeatedReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readRepeatedReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 244, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 244, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readRepeatedReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_completion_(self, v24, a3, 0, 1, 0, v23, 0, v25, a2, v26);
}

- (void)readRepeatedWeakReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedWeakReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 251, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 251, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readRepeatedReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_completion_(self, v12, a3, 1, 1, 0, a4, v29, v27, a2, v10);
}

- (void)readRepeatedWeakReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readRepeatedWeakReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 258, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 258, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readRepeatedReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_completion_(self, v24, a3, 1, 1, 0, v23, 0, v25, a2, v26);
}

- (void)readRepeatedUnownedReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedUnownedReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 265, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 265, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readRepeatedReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_completion_(self, v12, a3, 0, 0, 0, a4, v29, v27, a2, v10);
}

- (void)readRepeatedUnownedReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readRepeatedUnownedReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 272, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 272, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readRepeatedReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_completion_(self, v24, a3, 0, 0, 0, v23, 0, v25, a2, v26);
}

- (void)readLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readLazyReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 302, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 302, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v12, a3, 0, 1, 0, a4, v29, v27, a2, v14, v10);
}

- (void)readLazyReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readLazyReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 309, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 309, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v24, a3, 0, 1, 0, v23, 0, v25, a2, v10, v26);
}

- (void)readWeakLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readWeakLazyReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 316, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 316, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v12, a3, 1, 1, 0, a4, v29, v27, a2, v14, v10);
}

- (void)readWeakLazyReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readWeakLazyReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 323, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 323, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v24, a3, 1, 1, 0, v23, 0, v25, a2, v10, v26);
}

- (void)readLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 validateStrongReferences:(BOOL)a5 allowUnknownObject:(BOOL)a6 class:(Class)a7 protocol:(id)a8 validateClass:(BOOL)a9 selector:(SEL)a10 delegate:(id)a11 completion:(id)a12
{
  v101 = a6;
  v104 = a5;
  v15 = a8;
  v16 = a11;
  v19 = a12;
  v102 = v16;
  v103 = v15;
  if (!a9)
  {
    goto LABEL_19;
  }

  if (objc_opt_class() != a7)
  {
    v20 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(a7, v21, v20))
    {
      goto LABEL_19;
    }

    if (objc_opt_class() == a7)
    {
      v55 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPUnarchiver readLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      v58 = objc_opt_class();
      v29 = objc_msgSend_stringForSelector_objectClass_(v58, v59, a10, a7);
      v60 = v55;
      v34 = v57;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v61, v36, v57, 330, 0, "You should provide a more specific object reference wrapper class for the %{public}@ function.", v29);
    }

    else
    {
      v23 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(a7, v24, v23))
      {
        if (!v15)
        {
          goto LABEL_19;
        }

        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPUnarchiver readLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
        v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v28 = v26;
        v29 = NSStringFromProtocol(v15);
        v30 = objc_opt_class();
        v32 = objc_msgSend_stringForSelector_objectClass_(v30, v31, a10, a7);
        v33 = v25;
        v34 = v100;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v35, v28, v100, 330, 0, "You should not define any protocol (including %{public}@) when using object reference wrapper for the %{public}@ function.", v29, v32);

        v36 = v28;
      }

      else
      {
        v62 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPUnarchiver readLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v65 = objc_opt_class();
        v29 = objc_msgSend_stringForSelector_objectClass_(v65, v66, a10, a7);
        v67 = v62;
        v34 = v64;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v68, v36, v64, 330, 0, "You should provide a TSPObject or TSPObjectReferenceWrapper subclass for the %{public}@ function.", v29);
      }
    }

    goto LABEL_18;
  }

  if (v15)
  {
    if (&unk_2885E6538 != v15)
    {
      goto LABEL_19;
    }

    v37 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPUnarchiver readLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v40 = objc_opt_class();
    v29 = objc_msgSend_stringForSelector_objectClass_(v40, v41, a10, a7);
    v42 = v37;
    v34 = v39;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v43, v36, v39, 330, 0, "You should provide a more specific protocol for the %{public}@ function.", v29);
    goto LABEL_18;
  }

  v44 = objc_msgSend_sourceType(self, v17, v18);
  if ((v44 - 4) < 2)
  {
    goto LABEL_14;
  }

  if (v44 != 1)
  {
    if (v44 != 2)
    {
      goto LABEL_19;
    }

LABEL_14:
    v45 = objc_msgSend_objectClass(self, v17, v18);
    if (objc_msgSend_tsp_isInternalObjectContainerClass(v45, v46, v47))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v90 = objc_msgSend_delegate(self, v17, v18);
  if (objc_msgSend_packageIdentifier(v90, v91, v92) == 2)
  {
  }

  else
  {
    v95 = objc_msgSend_objectClass(self, v93, v94);
    isInternalObjectContainerClass = objc_msgSend_tsp_isInternalObjectContainerClass(v95, v96, v97);

    if ((isInternalObjectContainerClass & 1) == 0)
    {
LABEL_15:
      v48 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPUnarchiver readLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      v51 = objc_opt_class();
      v29 = objc_msgSend_stringForSelector_objectClass_(v51, v52, a10, a7);
      v53 = v48;
      v34 = v50;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v54, v36, v50, 330, 0, "You should provide a more specific object class for the %{public}@ function.", v29);
LABEL_18:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
    }
  }

LABEL_19:
  v71 = *(a3 + 3);
  v72 = v71 == 71 || v71 == 72;
  if (v72 && objc_msgSend_componentIdentifier(v16, v17, v18) != v71 && objc_msgSend_fileFormatVersion(self, v17, v73) >= 0x2000000000000)
  {
    v71 = 0;
  }

  v109[0] = a4 != 0;
  objc_msgSend_validateReferenceToObjectIdentifier_objectClass_isWeak_validateStrongReferences_selector_weakSelector_(self, v17, v71, a7, v109, v104, a10, sel_readWeakLazyReferenceMessage_class_protocol_completion_);
  if (a4 || !v109[0])
  {
    if (v109[0] != (a4 != 0))
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSPUnarchiver readLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v79, v76, v78, 352, 0, "Unexpected adjusted isWeak value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
    }
  }

  else
  {
    a4 = 1;
  }

  v82 = [TSPLazyReference alloc];
  WeakRetained = objc_loadWeakRetained(self + 8);
  v85 = objc_msgSend_initWithDelegate_identifier_ownershipMode_allowUnknownObject_objectClass_objectProtocol_(v82, v84, WeakRetained, v71, a4, v101, a7, v103);

  v108 = 1;
  objc_msgSend_unarchiver_didReadLazyReference_isExternal_(v102, v86, self, v85, &v108);
  objc_msgSend_setIsExternal_(v85, v87, v108);
  if ((v108 & 1) == 0)
  {
    v88 = v109[0];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = sub_2769B60DC;
    v106[3] = &unk_27A6E30E8;
    v107 = v85;
    LOBYTE(v99) = 0;
    objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v89, a3, v88, v104, 1, a7, v103, v99, a10, sel_readWeakLazyReferenceMessage_class_protocol_completion_, v106);
  }

  if (v19)
  {
    v19[2](v19, v85);
  }
}

- (void)readRepeatedLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedLazyReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 379, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 379, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readRepeatedLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v12, a3, 0, 1, 0, a4, v29, v27, a2, v14, v10);
}

- (void)readRepeatedLazyReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readRepeatedLazyReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 386, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 386, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readRepeatedLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v24, a3, 0, 1, 0, v23, 0, v25, a2, v10, v26);
}

- (void)readRepeatedWeakLazyReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v29 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedWeakLazyReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 393, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 393, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v27) = 1;
  objc_msgSend_readRepeatedLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v12, a3, 1, 1, 0, a4, v29, v27, a2, v14, v10);
}

- (void)readRepeatedWeakLazyReferenceMessage:(const void *)a3 completion:(id)a4
{
  v26 = a4;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v10 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v8, v9))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnarchiver readRepeatedWeakLazyReferenceMessage:completion:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 400, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 400, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = objc_opt_class();
  LOBYTE(v25) = 0;
  objc_msgSend_readRepeatedLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v24, a3, 1, 1, 0, v23, 0, v25, a2, v10, v26);
}

- (void)readRepeatedLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 validateStrongReferences:(BOOL)a5 allowUnknownObject:(BOOL)a6 class:(Class)a7 protocol:(id)a8 validateClass:(BOOL)a9 selector:(SEL)a10 delegate:(id)a11 completion:(id)a12
{
  v94 = a6;
  v98 = a5;
  v13 = a8;
  v96 = a11;
  v15 = a12;
  v95 = v13;
  if (!a9)
  {
    goto LABEL_19;
  }

  if (objc_opt_class() != a7)
  {
    v17 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(a7, v18, v17))
    {
      goto LABEL_19;
    }

    if (objc_opt_class() == a7)
    {
      v46 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPUnarchiver readRepeatedLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      v48 = objc_opt_class();
      v26 = objc_msgSend_stringForSelector_objectClass_(v48, v49, a10, a7);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v23, v25, 407, 0, "You should provide a more specific object reference wrapper class for the %{public}@ function.", v26);
    }

    else
    {
      v20 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(a7, v21, v20))
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPUnarchiver readRepeatedLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v26 = NSStringFromProtocol(v13);
        v27 = objc_opt_class();
        v29 = objc_msgSend_stringForSelector_objectClass_(v27, v28, a10, a7);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v30, v23, v25, 407, 0, "You should not define any protocol (including %{public}@) when using object reference wrapper for the %{public}@ function.", v26, v29);
      }

      else
      {
        v51 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPUnarchiver readRepeatedLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v53 = objc_opt_class();
        v26 = objc_msgSend_stringForSelector_objectClass_(v53, v54, a10, a7);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v23, v25, 407, 0, "You should provide a TSPObject or TSPObjectReferenceWrapper subclass for the %{public}@ function.", v26);
      }
    }

    goto LABEL_18;
  }

  if (v13)
  {
    if (&unk_2885E6538 != v13)
    {
      goto LABEL_19;
    }

    v31 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPUnarchiver readRepeatedLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v33 = objc_opt_class();
    v26 = objc_msgSend_stringForSelector_objectClass_(v33, v34, a10, a7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v23, v25, 407, 0, "You should provide a more specific protocol for the %{public}@ function.", v26);
    goto LABEL_18;
  }

  v36 = objc_msgSend_sourceType(self, v14, v16);
  if ((v36 - 4) < 2)
  {
    goto LABEL_14;
  }

  if (v36 != 1)
  {
    if (v36 != 2)
    {
      goto LABEL_19;
    }

LABEL_14:
    v38 = objc_msgSend_objectClass(self, v14, v37);
    if (objc_msgSend_tsp_isInternalObjectContainerClass(v38, v39, v40))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v83 = objc_msgSend_delegate(self, v14, v37);
  if (objc_msgSend_packageIdentifier(v83, v84, v85) == 2)
  {
  }

  else
  {
    v88 = objc_msgSend_objectClass(self, v86, v87);
    isInternalObjectContainerClass = objc_msgSend_tsp_isInternalObjectContainerClass(v88, v89, v90);

    if ((isInternalObjectContainerClass & 1) == 0)
    {
LABEL_15:
      v41 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPUnarchiver readRepeatedLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      v43 = objc_opt_class();
      v26 = objc_msgSend_stringForSelector_objectClass_(v43, v44, a10, a7);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v23, v25, 407, 0, "You should provide a more specific object class for the %{public}@ function.", v26);
LABEL_18:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
    }
  }

LABEL_19:
  v58 = *(a3 + 2);
  v93 = v15;
  if (v15)
  {
    v59 = [TSPLazyReferenceArray alloc];
    v61 = objc_msgSend_initWithCapacity_(v59, v60, v58);
  }

  else
  {
    v61 = 0;
  }

  if (v58 >= 1)
  {
    v62 = 8;
    do
    {
      v63 = *(*(*(a3 + 2) + v62) + 24);
      v107[0] = a4 != 0;
      objc_msgSend_validateReferenceToObjectIdentifier_objectClass_isWeak_validateStrongReferences_selector_weakSelector_(self, v14, v63, a7, v107, v98, a10, sel_readRepeatedWeakLazyReferenceMessage_class_protocol_completion_);
      if (a4 || !v107[0])
      {
        v65 = a4;
        if (v107[0] != (a4 != 0))
        {
          v66 = MEMORY[0x277D81150];
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSPUnarchiver readRepeatedLazyReferenceMessage:ownershipMode:validateStrongReferences:allowUnknownObject:class:protocol:validateClass:selector:delegate:completion:]");
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v70, v67, v69, 425, 0, "Unexpected adjusted isWeak value.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72);
          v65 = a4;
        }
      }

      else
      {
        v65 = 1;
      }

      v73 = [TSPLazyReference alloc];
      WeakRetained = objc_loadWeakRetained(self + 8);
      v75 = v73;
      v13 = v95;
      v77 = objc_msgSend_initWithDelegate_identifier_ownershipMode_allowUnknownObject_objectClass_objectProtocol_(v75, v76, WeakRetained, v63, v65, v94, a7, v95);

      v106 = 1;
      objc_msgSend_unarchiver_didReadLazyReference_isExternal_(v96, v78, self, v77, &v106);
      objc_msgSend_setIsExternal_(v77, v79, v106);
      if ((v106 & 1) == 0)
      {
        TSP::Reference::Reference(v103, 0);
        v104 |= 1u;
        v105 = v63;
        v81 = v107[0];
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = sub_2769B716C;
        v101[3] = &unk_27A6E30E8;
        v102 = v77;
        LOBYTE(v92) = 0;
        objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v82, v103, v81, v98, 1, a7, v95, v92, a10, sel_readRepeatedWeakLazyReferenceMessage_class_protocol_completion_, v101);

        TSP::Reference::~Reference(v103);
      }

      objc_msgSend_addObject_(v61, v80, v77);

      v62 += 8;
      --v58;
    }

    while (v58);
  }

  if (v93)
  {
    (v93)[2](v93, v61);
  }
}

- (id)readDataReferenceMessage:(const void *)a3
{
  WeakRetained = objc_loadWeakRetained(self + 9);
  v9 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v7, v8))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPUnarchiver readDataReferenceMessage:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 459, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 459, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v23 = *(a3 + 3);
  if (v23)
  {
    v24 = *(self + 22);
    if (!v24)
    {
      v25 = [_TtC13TSPersistence23TSPMutableIdentifierSet alloc];
      v27 = objc_msgSend_initWithCapacity_(v25, v26, 1);
      v28 = *(self + 22);
      *(self + 22) = v27;

      v24 = *(self + 22);
    }

    objc_msgSend_incrementCountBy_forIdentifier_(v24, v7, 1, v23);
  }

  v29 = *(self + 3);
  v30 = objc_msgSend_objectClass(self, v7, v10);
  v32 = objc_msgSend_dataForIdentifier_referencedByObjectIdentifier_objectClass_(v9, v31, v23, v29, v30);

  return v32;
}

- (unint64_t)fileFormatVersion
{
  WeakRetained = objc_loadWeakRetained(self + 9);
  v7 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v5, v6))
  {
    v9 = *(self + 2);
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPUnarchiver fileFormatVersion]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v14 = objc_opt_class();
    v17 = objc_msgSend_stringForSelector_objectClass_(v14, v15, a2, 0);
    if (v9)
    {
      v18 = *((*(*v9 + 152))(v9) + 8);
      if (v18[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 475, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, *v18, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 475, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, v18, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v21 = objc_msgSend_fileFormatVersion(v7, v5, v8);

  return v21;
}

- (unint64_t)readVersion
{
  WeakRetained = objc_loadWeakRetained(self + 9);
  v7 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v5, v6))
  {
    v9 = *(self + 2);
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPUnarchiver readVersion]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v14 = objc_opt_class();
    v17 = objc_msgSend_stringForSelector_objectClass_(v14, v15, a2, 0);
    if (v9)
    {
      v18 = *((*(*v9 + 152))(v9) + 8);
      if (v18[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 486, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, *v18, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 486, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, v18, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  Version = objc_msgSend_readVersion(v7, v5, v8);

  return Version;
}

- (void)addFinalizeHandler:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v9 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v7, v8))
  {
    v11 = *(self + 2);
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPUnarchiver addFinalizeHandler:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v16 = objc_opt_class();
    v19 = objc_msgSend_stringForSelector_objectClass_(v16, v17, a2, 0);
    if (v11)
    {
      v20 = *((*(*v11 + 152))(v11) + 8);
      if (v20[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 493, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, *v20, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v15, 493, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v19, v20, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  if (v5)
  {
    v23 = objc_msgSend_copy(v5, v7, v10);
    v25 = *(self + 17);
    v24 = *(self + 18);
    if (v25 >= v24)
    {
      v27 = *(self + 16);
      v28 = (v25 - v27) >> 3;
      if ((v28 + 1) >> 61)
      {
        sub_2769BA860();
      }

      v29 = v24 - v27;
      v30 = v29 >> 2;
      if (v29 >> 2 <= (v28 + 1))
      {
        v30 = v28 + 1;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v31 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      v36 = self + 128;
      if (v31)
      {
        sub_2769BB09C(self + 128, v31);
      }

      v32 = 0;
      v33 = (8 * v28);
      v35 = 0;
      *v33 = v23;
      v34 = 8 * v28 + 8;
      sub_2769BAFEC(self + 128, &v32);
      v26 = *(self + 17);
      sub_2769BB0E4(&v32);
    }

    else
    {
      *v25 = v23;
      v26 = v25 + 1;
      *(self + 17) = v26;
    }

    *(self + 17) = v26;
  }
}

- (BOOL)hasDocumentVersionUUID
{
  WeakRetained = objc_loadWeakRetained(self + 9);
  v7 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v5, v6))
  {
    v9 = *(self + 2);
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPUnarchiver hasDocumentVersionUUID]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v14 = objc_opt_class();
    v17 = objc_msgSend_stringForSelector_objectClass_(v14, v15, a2, 0);
    if (v9)
    {
      v18 = *((*(*v9 + 152))(v9) + 8);
      if (v18[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 502, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, *v18, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 502, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, v18, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  hasDocumentVersionUUID = objc_msgSend_hasDocumentVersionUUID(v7, v5, v8);

  return hasDocumentVersionUUID;
}

- (unsigned)sourceType
{
  WeakRetained = objc_loadWeakRetained(self + 9);
  v7 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v5, v6))
  {
    v9 = *(self + 2);
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPUnarchiver sourceType]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v14 = objc_opt_class();
    v17 = objc_msgSend_stringForSelector_objectClass_(v14, v15, a2, 0);
    if (v9)
    {
      v18 = *((*(*v9 + 152))(v9) + 8);
      if (v18[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 509, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, *v18, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 509, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v17, v18, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v21 = objc_msgSend_sourceType(v7, v5, v8);

  return v21;
}

- (id)readWeakObjectUUIDReferenceMessage:(const void *)a3
{
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = objc_msgSend_tsp_initWithMessage_(v4, v5, a3);

  return v6;
}

- (id)readWeakObjectUUIDReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v15 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v13, v14))
  {
    v16 = *(self + 2);
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPUnarchiver readWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
    v31 = a4;
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v21 = objc_opt_class();
    v24 = objc_msgSend_stringForSelector_objectClass_(v21, v22, a2, 0);
    if (v16)
    {
      v25 = *((*(*v16 + 152))(v16) + 8);
      if (v25[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v20, 522, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v24, *v25, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
        a4 = v31;
        goto LABEL_9;
      }
    }

    else
    {
      v25 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v20, 522, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v24, v25, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v28 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(self, v13, a3);
  objc_msgSend_readWeakReferenceToObjectUUID_delegate_class_protocol_selector_completion_(self, v29, v28, v15, a4, v10, a2, v11);

  return v28;
}

- (id)readWeakObjectUUIDPathReferenceMessage:(const void *)a3
{
  v4 = objc_alloc(MEMORY[0x277D81360]);
  v6 = objc_msgSend_initWithMessage_(v4, v5, a3);

  return v6;
}

- (id)readWeakObjectUUIDPathReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v15 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v13, v14))
  {
    v16 = *(self + 2);
    v17 = MEMORY[0x277D81150];
    v34 = v10;
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPUnarchiver readWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v21 = objc_opt_class();
    v24 = objc_msgSend_stringForSelector_objectClass_(v21, v22, a2, 0);
    if (v16)
    {
      v25 = *((*(*v16 + 152))(v16) + 8);
      if (v25[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v20, 535, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v24, *v25, *(self + 3), *(self + 41));
LABEL_8:

        v10 = v34;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
        goto LABEL_9;
      }
    }

    else
    {
      v25 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v20, 535, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v24, v25, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v28 = objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(self, v13, a3);
  v31 = objc_msgSend_lastUUID(v28, v29, v30);
  objc_msgSend_readWeakReferenceToObjectUUID_delegate_class_protocol_selector_completion_(self, v32, v31, v15, a4, v10, a2, v11);

  return v28;
}

- (void)readWeakReferenceToObjectUUID:(id)a3 delegate:(id)a4 class:(Class)a5 protocol:(id)a6 selector:(SEL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (objc_opt_class() != a5)
  {
    v20 = objc_opt_class();
    if ((objc_msgSend_isSubclassOfClass_(a5, v21, v20) & 1) == 0)
    {
      if (objc_opt_class() == a5)
      {
        v49 = MEMORY[0x277D81150];
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPUnarchiver readWeakReferenceToObjectUUID:delegate:class:protocol:selector:completion:]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v51 = objc_opt_class();
        v27 = objc_msgSend_stringForSelector_objectClass_(v51, v52, a7, a5);
        v53 = v49;
        v32 = v82;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v54, v82, v26, 543, 0, "You should provide a more specific object reference wrapper class for the %{public}@ function.", v27);
        goto LABEL_17;
      }

      v23 = objc_opt_class();
      if ((objc_msgSend_isSubclassOfClass_(a5, v24, v23) & 1) == 0)
      {
        v55 = MEMORY[0x277D81150];
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnarchiver readWeakReferenceToObjectUUID:delegate:class:protocol:selector:completion:]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v57 = objc_opt_class();
        v27 = objc_msgSend_stringForSelector_objectClass_(v57, v58, a7, a5);
        v59 = v55;
        v32 = v83;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v60, v83, v26, 543, 0, "You should provide a TSPObject or TSPObjectReferenceWrapper subclass for the %{public}@ function.", v27);
        goto LABEL_17;
      }

      if (v16)
      {
        v77 = MEMORY[0x277D81150];
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnarchiver readWeakReferenceToObjectUUID:delegate:class:protocol:selector:completion:]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v27 = NSStringFromProtocol(v16);
        v28 = objc_opt_class();
        v30 = objc_msgSend_stringForSelector_objectClass_(v28, v29, a7, a5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v31, v79, v26, 543, 0, "You should not define any protocol (including %{public}@) when using object reference wrapper for the %{public}@ function.", v27, v30);

        v32 = v79;
LABEL_17:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
        goto LABEL_18;
      }
    }

    goto LABEL_18;
  }

  if (!v16)
  {
    v39 = objc_msgSend_sourceType(self, v18, v19);
    if ((v39 - 4) >= 2)
    {
      if (v39 == 1)
      {
        v68 = objc_msgSend_delegate(self, v18, v40);
        if (objc_msgSend_packageIdentifier(v68, v69, v70) == 2)
        {

          goto LABEL_18;
        }

        v73 = objc_msgSend_objectClass(self, v71, v72);
        isInternalObjectContainerClass = objc_msgSend_tsp_isInternalObjectContainerClass(v73, v74, v75);

        if (isInternalObjectContainerClass)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (v39 != 2)
      {
        goto LABEL_18;
      }
    }

    v41 = objc_msgSend_objectClass(self, v18, v40);
    if (objc_msgSend_tsp_isInternalObjectContainerClass(v41, v42, v43))
    {
      goto LABEL_18;
    }

LABEL_14:
    v44 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnarchiver readWeakReferenceToObjectUUID:delegate:class:protocol:selector:completion:]");
    v78 = v44;
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v32 = v81;
    v46 = objc_opt_class();
    v27 = objc_msgSend_stringForSelector_objectClass_(v46, v47, a7, a5);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v48, v81, v26, 543, 0, "You should provide a more specific object class for the %{public}@ function.", v27);
    goto LABEL_17;
  }

  if (&unk_2885E6538 == v16)
  {
    v33 = MEMORY[0x277D81150];
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnarchiver readWeakReferenceToObjectUUID:delegate:class:protocol:selector:completion:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v35 = objc_opt_class();
    v27 = objc_msgSend_stringForSelector_objectClass_(v35, v36, a7, a5);
    v37 = v33;
    v32 = v80;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v38, v80, v26, 543, 0, "You should provide a more specific protocol for the %{public}@ function.", v27);
    goto LABEL_17;
  }

LABEL_18:
  v63 = objc_msgSend_objectIdentifierForUUID_(v15, v18, v14);
  v66 = objc_msgSend_copy(v17, v64, v65);
  v67 = v16;
  v84 = v63;
  v85 = _Block_copy(v66);
  v86 = 1;
  v87 = a5;
  v88 = v67;
  sub_2769B3C78(self + 10, &v84);
}

- (id)readRepeatedWeakObjectUUIDReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v10 = a5;
  v85 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  proto = v10;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 554, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        v10 = proto;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 554, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  if (objc_opt_class() != a4)
  {
    v29 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(a4, v30, v29))
    {
      goto LABEL_28;
    }

    if (objc_opt_class() == a4)
    {
      v54 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPUnarchiver readRepeatedWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      v56 = objc_opt_class();
      v38 = objc_msgSend_stringForSelector_objectClass_(v56, v57, a2, a4);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v35, v37, 556, 0, "You should provide a more specific object reference wrapper class for the %{public}@ function.", v38);
    }

    else
    {
      v32 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(a4, v33, v32))
      {
        if (!v10)
        {
          goto LABEL_28;
        }

        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v38 = NSStringFromProtocol(proto);
        v39 = objc_opt_class();
        v41 = objc_msgSend_stringForSelector_objectClass_(v39, v40, a2, a4);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v35, v37, 556, 0, "You should not define any protocol (including %{public}@) when using object reference wrapper for the %{public}@ function.", v38, v41);
      }

      else
      {
        v59 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v61 = objc_opt_class();
        v38 = objc_msgSend_stringForSelector_objectClass_(v61, v62, a2, a4);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v35, v37, 556, 0, "You should provide a TSPObject or TSPObjectReferenceWrapper subclass for the %{public}@ function.", v38);
      }
    }

    goto LABEL_27;
  }

  if (v10)
  {
    if (&unk_2885E6538 != v10)
    {
      goto LABEL_28;
    }

    v43 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v45 = objc_opt_class();
    v38 = objc_msgSend_stringForSelector_objectClass_(v45, v46, a2, a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v35, v37, 556, 0, "You should provide a more specific protocol for the %{public}@ function.", v38);
    goto LABEL_27;
  }

  v48 = objc_msgSend_sourceType(self, v27, v28);
  if ((v48 - 4) < 2 || v48 == 2)
  {
    v64 = objc_msgSend_objectClass(self, v27, v28);
    if (objc_msgSend_tsp_isInternalObjectContainerClass(v64, v65, v66))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v48 != 1)
  {
    goto LABEL_28;
  }

  v49 = objc_msgSend_delegate(self, v27, v28);
  if (objc_msgSend_packageIdentifier(v49, v50, v51) == 2)
  {

    goto LABEL_28;
  }

  v80 = objc_msgSend_objectClass(self, v52, v53);
  isInternalObjectContainerClass = objc_msgSend_tsp_isInternalObjectContainerClass(v80, v81, v82);

  if ((isInternalObjectContainerClass & 1) == 0)
  {
LABEL_26:
    v67 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDReferenceMessage:class:protocol:completion:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v69 = objc_opt_class();
    v38 = objc_msgSend_stringForSelector_objectClass_(v69, v70, a2, a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v35, v37, 556, 0, "You should provide a more specific object class for the %{public}@ function.", v38);
LABEL_27:

    v10 = proto;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
  }

LABEL_28:
  v74 = objc_msgSend_copy(v85, v27, v28);
  v75 = v10;
  v88 = 0;
  v89 = 0;
  __p = 0;
  v90 = _Block_copy(v74);
  v91 = 1;
  v92 = a4;
  v93 = v75;
  sub_2769B4EE4(self + 13, &__p);

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  v76 = (*(self + 14) - 56);
  sub_2769B4FA0(v76, *(a3 + 2));
  v78 = objc_msgSend_readRepeatedWeakObjectUUIDReferenceMessage_referenceMessage_delegate_(self, v77, a3, v76, v14);

  return v78;
}

- (id)readRepeatedWeakObjectUUIDReferenceMessage:(const void *)a3 referenceMessage:(void *)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = *(a3 + 2);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
  if (v8 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = objc_msgSend_tsp_initWithMessage_(v13, v14, *(*(a3 + 2) + v12));
      objc_msgSend_addObject_(v11, v16, v15);
      if (a4)
      {
        v19 = objc_msgSend_objectIdentifierForUUID_(v7, v17, v15);
        if (v19)
        {
          sub_2769B5040(a4, &v19);
        }
      }

      v12 += 8;
      --v8;
    }

    while (v8);
  }

  return v11;
}

- (id)readRepeatedWeakObjectUUIDPathReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 completion:(id)a6
{
  v10 = a5;
  v85 = a6;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v14 = WeakRetained;
  proto = v10;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v12, v13))
  {
    v15 = *(self + 2);
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPUnarchiver readRepeatedWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v20 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v20, v21, a2, 0);
    if (v15)
    {
      v24 = *((*(*v15 + 152))(v15) + 8);
      if (v24[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 592, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, *v24, *(self + 3), *(self + 41));
LABEL_8:

        v10 = proto;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        goto LABEL_9;
      }
    }

    else
    {
      v24 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 592, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v23, v24, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  if (objc_opt_class() != a4)
  {
    v29 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(a4, v30, v29))
    {
      goto LABEL_28;
    }

    if (objc_opt_class() == a4)
    {
      v54 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPUnarchiver readRepeatedWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
      v56 = objc_opt_class();
      v38 = objc_msgSend_stringForSelector_objectClass_(v56, v57, a2, a4);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v35, v37, 594, 0, "You should provide a more specific object reference wrapper class for the %{public}@ function.", v38);
    }

    else
    {
      v32 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(a4, v33, v32))
      {
        if (!v10)
        {
          goto LABEL_28;
        }

        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v38 = NSStringFromProtocol(proto);
        v39 = objc_opt_class();
        v41 = objc_msgSend_stringForSelector_objectClass_(v39, v40, a2, a4);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v35, v37, 594, 0, "You should not define any protocol (including %{public}@) when using object reference wrapper for the %{public}@ function.", v38, v41);
      }

      else
      {
        v59 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
        v61 = objc_opt_class();
        v38 = objc_msgSend_stringForSelector_objectClass_(v61, v62, a2, a4);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v35, v37, 594, 0, "You should provide a TSPObject or TSPObjectReferenceWrapper subclass for the %{public}@ function.", v38);
      }
    }

    goto LABEL_27;
  }

  if (v10)
  {
    if (&unk_2885E6538 != v10)
    {
      goto LABEL_28;
    }

    v43 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v45 = objc_opt_class();
    v38 = objc_msgSend_stringForSelector_objectClass_(v45, v46, a2, a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v35, v37, 594, 0, "You should provide a more specific protocol for the %{public}@ function.", v38);
    goto LABEL_27;
  }

  v48 = objc_msgSend_sourceType(self, v27, v28);
  if ((v48 - 4) < 2 || v48 == 2)
  {
    v64 = objc_msgSend_objectClass(self, v27, v28);
    if (objc_msgSend_tsp_isInternalObjectContainerClass(v64, v65, v66))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v48 != 1)
  {
    goto LABEL_28;
  }

  v49 = objc_msgSend_delegate(self, v27, v28);
  if (objc_msgSend_packageIdentifier(v49, v50, v51) == 2)
  {

    goto LABEL_28;
  }

  v80 = objc_msgSend_objectClass(self, v52, v53);
  isInternalObjectContainerClass = objc_msgSend_tsp_isInternalObjectContainerClass(v80, v81, v82);

  if ((isInternalObjectContainerClass & 1) == 0)
  {
LABEL_26:
    v67 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPUnarchiver readRepeatedWeakObjectUUIDPathReferenceMessage:class:protocol:completion:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v69 = objc_opt_class();
    v38 = objc_msgSend_stringForSelector_objectClass_(v69, v70, a2, a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v35, v37, 594, 0, "You should provide a more specific object class for the %{public}@ function.", v38);
LABEL_27:

    v10 = proto;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
  }

LABEL_28:
  v74 = objc_msgSend_copy(v85, v27, v28);
  v75 = v10;
  v88 = 0;
  v89 = 0;
  __p = 0;
  v90 = _Block_copy(v74);
  v91 = 1;
  v92 = a4;
  v93 = v75;
  sub_2769B4EE4(self + 13, &__p);

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  v76 = (*(self + 14) - 56);
  sub_2769B4FA0(v76, *(a3 + 2));
  v78 = objc_msgSend_readRepeatedWeakObjectUUIDPathReferenceMessage_referenceMessage_delegate_(self, v77, a3, v76, v14);

  return v78;
}

- (id)readRepeatedWeakObjectUUIDPathReferenceMessage:(const void *)a3 referenceMessage:(void *)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = *(a3 + 2);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
  if (v8 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = objc_alloc(MEMORY[0x277D81360]);
      v15 = objc_msgSend_initWithMessage_(v13, v14, *(*(a3 + 2) + v12));
      objc_msgSend_addObject_(v11, v16, v15);
      if (a4)
      {
        v19 = objc_msgSend_lastUUID(v15, v17, v18);
        v21 = objc_msgSend_objectIdentifierForUUID_(v7, v20, v19);

        v23 = v21;
        if (v21)
        {
          sub_2769B5040(a4, &v23);
        }
      }

      v12 += 8;
      --v8;
    }

    while (v8);
  }

  return v11;
}

- (TSPUnarchiver)initWithMessageType:(unsigned int)a3 unarchiveClass:(Class)a4 message:()unique_ptr<google:(std:(int64_t)a6 :()unique_ptr<TSP:(std:(unint64_t)a8 :(id)a9 default_delete<TSP:(BOOL)a10 :(id)a11 IdentifierMap<BOOL>>>)a7 :(id)a12 IdentifierMap<BOOL> default_delete<google:(id)a13 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:
{
  v18 = a9;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v30.receiver = self;
  v30.super_class = TSPUnarchiver;
  v22 = [(TSPUnarchiver *)&v30 init];
  v23 = v22;
  if (v22)
  {
    *(v22 + 41) = a3;
    objc_storeStrong(v22 + 21, a4);
    var0 = a5.__ptr_->var0;
    a5.__ptr_->var0 = 0;
    v25 = *(v23 + 2);
    *(v23 + 2) = var0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    *(v23 + 3) = a6;
    v26 = *a7.__ptr_;
    *a7.__ptr_ = 0;
    sub_2769BB138(v23 + 4, v26);
    *(v23 + 5) = a8;
    objc_storeStrong(v23 + 6, a9);
    *(v23 + 160) = a10;
    objc_storeWeak(v23 + 7, v19);
    objc_storeWeak(v23 + 8, v20);
    objc_storeWeak(v23 + 9, v21);
  }

  return v23;
}

- (NSUUID)objectUUID
{
  WeakRetained = objc_loadWeakRetained(self + 9);
  v7 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v5, v6))
  {
    v8 = *(self + 2);
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPUnarchiver objectUUID]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v13 = objc_opt_class();
    v16 = objc_msgSend_stringForSelector_objectClass_(v13, v14, a2, 0);
    if (v8)
    {
      v17 = *((*(*v8 + 152))(v8) + 8);
      if (v17[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v12, 662, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v16, *v17, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
        goto LABEL_9;
      }
    }

    else
    {
      v17 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v12, 662, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v16, v17, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v20 = objc_msgSend_UUIDForObjectIdentifier_(v7, v5, *(self + 3));

  return v20;
}

- (void)validateReferenceToObjectIdentifier:(int64_t)a3 objectClass:(Class)a4 isWeak:(BOOL *)a5 validateStrongReferences:(BOOL)a6 selector:(SEL)a7 weakSelector:(SEL)a8
{
  v34 = a3;
  if (!*a5)
  {
    v9 = a6;
    if (objc_msgSend_canValidateReferences(self, a2, a3))
    {
      if (a3)
      {
        if (v9)
        {
          v15 = *(self + 4);
          if (!v15 || !sub_2769ABC64(v15, &v34))
          {
            v16 = *(self + 2);
            v17 = MEMORY[0x277D81150];
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPUnarchiver validateReferenceToObjectIdentifier:objectClass:isWeak:validateStrongReferences:selector:weakSelector:]");
            v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
            v20 = a4;
            v32 = v19;
            if (!a4)
            {
              v20 = objc_opt_class();
            }

            v21 = NSStringFromClass(v20);
            v22 = v34;
            if (v16)
            {
              v23 = *((*(*v16 + 152))(v16) + 8);
              if (v23[23] < 0)
              {
                v23 = *v23;
              }
            }

            else
            {
              v23 = "NULL";
            }

            v24 = *(self + 3);
            v25 = *(self + 41);
            v26 = objc_opt_class();
            v28 = objc_msgSend_stringForSelector_objectClass_(v26, v27, a8, a4);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v29, v33, v32, 704, 0, "Object [%{public}@-%llu] is not strongly referenced from message [%{public}s-%llu] message type %u. Use %{public}@ instead.", v21, v22, v23, v24, v25, v28);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
            *a5 = 1;
          }
        }
      }
    }
  }
}

- (void)readUnknownLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 completion:(id)a5
{
  v28 = a5;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v12 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v10, v11))
  {
    v13 = *(self + 2);
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPUnarchiver readUnknownLazyReferenceMessage:ownershipMode:completion:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v18 = objc_opt_class();
    v21 = objc_msgSend_stringForSelector_objectClass_(v18, v19, a2, 0);
    if (v13)
    {
      v22 = *((*(*v13 + 152))(v13) + 8);
      if (v22[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v17, 720, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v21, *v22, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
        goto LABEL_9;
      }
    }

    else
    {
      v22 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v17, 720, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v21, v22, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v25 = objc_opt_class();
  LOBYTE(v27) = 0;
  objc_msgSend_readLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v26, a3, a4, 0, 1, v25, 0, v27, a2, v12, v28);
}

- (void)readRepeatedUnknownLazyReferenceMessage:(const void *)a3 ownershipMode:(int64_t)a4 completion:(id)a5
{
  v28 = a5;
  WeakRetained = objc_loadWeakRetained(self + 9);
  v12 = WeakRetained;
  if (!WeakRetained || objc_msgSend_didFinishResolvingReferences(WeakRetained, v10, v11))
  {
    v13 = *(self + 2);
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPUnarchiver readRepeatedUnknownLazyReferenceMessage:ownershipMode:completion:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver.mm");
    v18 = objc_opt_class();
    v21 = objc_msgSend_stringForSelector_objectClass_(v18, v19, a2, 0);
    if (v13)
    {
      v22 = *((*(*v13 + 152))(v13) + 8);
      if (v22[23] < 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v17, 727, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v21, *v22, *(self + 3), *(self + 41));
LABEL_8:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
        goto LABEL_9;
      }
    }

    else
    {
      v22 = "NULL";
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v17, 727, 0, "%{public}@ should not be nested inside the completion handler of another reference resolution function or inside finalize handlers for message [%{public}s-%llu] message type %u.", v21, v22, *(self + 3), *(self + 41));
    goto LABEL_8;
  }

LABEL_9:
  v25 = objc_opt_class();
  LOBYTE(v27) = 0;
  objc_msgSend_readRepeatedLazyReferenceMessage_ownershipMode_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_delegate_completion_(self, v26, a3, a4, 0, 1, v25, 0, v27, a2, v12, v28);
}

+ (id)stringForSelector:(SEL)a3 objectClass:(Class)a4
{
  if (sel_readReferenceMessage_completion_ == a3 || sel_readReferenceMessage_class_protocol_completion_ == a3)
  {
    v6 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v6, v8, @"TSPReadReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readRepeatedReferenceMessage_completion_ == a3 || sel_readRepeatedReferenceMessage_class_protocol_completion_ == a3)
  {
    v10 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v10, v11, @"TSPReadRepeatedReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadRepeatedReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readWeakReferenceMessage_completion_ == a3 || sel_readWeakReferenceMessage_class_protocol_completion_ == a3)
  {
    v13 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v13, v14, @"TSPReadWeakReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadWeakReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readRepeatedWeakReferenceMessage_completion_ == a3 || sel_readRepeatedWeakReferenceMessage_class_protocol_completion_ == a3)
  {
    v16 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v16, v17, @"TSPReadRepeatedWeakReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadRepeatedWeakReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readUnownedReferenceMessage_completion_ == a3 || sel_readUnownedReferenceMessage_class_protocol_completion_ == a3)
  {
    v18 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v18, v19, @"TSPReadUnownedReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadUnownedReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readRepeatedUnownedReferenceMessage_completion_ == a3 || sel_readRepeatedUnownedReferenceMessage_class_protocol_completion_ == a3)
  {
    v20 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v20, v21, @"TSPReadRepeatedUnownedReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadRepeatedUnownedReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readLazyReferenceMessage_completion_ == a3 || sel_readLazyReferenceMessage_class_protocol_completion_ == a3)
  {
    v22 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v22, v23, @"TSPReadLazyReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadLazyReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readRepeatedLazyReferenceMessage_completion_ == a3 || sel_readRepeatedLazyReferenceMessage_class_protocol_completion_ == a3)
  {
    v24 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v24, v25, @"TSPReadRepeatedLazyReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadRepeatedLazyReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else if (sel_readWeakLazyReferenceMessage_completion_ == a3 || sel_readWeakLazyReferenceMessage_class_protocol_completion_ == a3)
  {
    v26 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v26, v27, @"TSPReadWeakLazyReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadWeakLazyReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }

  else
  {
    if (sel_readRepeatedWeakLazyReferenceMessage_completion_ != a3 && sel_readRepeatedWeakLazyReferenceMessage_class_protocol_completion_ != a3)
    {
      v15 = NSStringFromSelector(a3);
      goto LABEL_63;
    }

    v28 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v7 = NSStringFromClass(a4);
      objc_msgSend_stringWithFormat_(v28, v29, @"TSPReadRepeatedWeakLazyReferenceMessage<%@>(unarchiver, message, completion)", v7);
    }

    else
    {
      v7 = @"ObjectClass";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"TSPReadRepeatedWeakLazyReferenceMessage<%@>(unarchiver, message, completion)", @"ObjectClass");
    }
  }
  v15 = ;
  if (a4)
  {
  }

LABEL_63:

  return v15;
}

- (TSPObjectDelegate)objectDelegate
{
  WeakRetained = objc_loadWeakRetained(self + 7);

  return WeakRetained;
}

- (TSPUnarchiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(self + 9);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 18) = 0;
  return self;
}

- (void)readReferenceMessage1:(const void *)a3 class:(Class)a4 protocol:(id)a5 message2:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9
{
  v14 = a8;
  v15 = a9;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_2769C5890;
  v31[4] = sub_2769C58A0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2769C58A8;
  v25[3] = &unk_27A6E32F8;
  v27 = v29;
  v16 = v15;
  v26 = v16;
  v28 = v31;
  objc_msgSend_readReferenceMessage_class_protocol_completion_(self, v17, a3, a4, a5, v25);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2769C5964;
  v21[3] = &unk_27A6E32F8;
  v23 = v29;
  v18 = v16;
  v22 = v18;
  v24 = v31;
  objc_msgSend_readReferenceMessage_class_protocol_completion_(self, v19, a6, a7, v14, v21);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

- (void)readWeakReferenceMessage1:(const void *)a3 class:(Class)a4 protocol:(id)a5 message2:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9
{
  v14 = a8;
  v15 = a9;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_2769C5890;
  v31[4] = sub_2769C58A0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2769C5C44;
  v25[3] = &unk_27A6E32F8;
  v27 = v29;
  v16 = v15;
  v26 = v16;
  v28 = v31;
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(self, v17, a3, a4, a5, v25);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2769C5D00;
  v21[3] = &unk_27A6E32F8;
  v23 = v29;
  v18 = v16;
  v22 = v18;
  v24 = v31;
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(self, v19, a6, a7, v14, v21);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

- (void)readReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 repeatedMessage:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9
{
  v15 = a8;
  v16 = a9;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_2769C5890;
  v31[4] = sub_2769C58A0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2769C5FE0;
  v25[3] = &unk_27A6E32F8;
  v27 = v29;
  v17 = v16;
  v26 = v17;
  v28 = v31;
  objc_msgSend_readReferenceMessage_class_protocol_completion_(self, v18, a3, a4, a5, v25);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2769C609C;
  v21[3] = &unk_27A6E3320;
  v23 = v29;
  v19 = v17;
  v22 = v19;
  v24 = v31;
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(self, v20, a6, a7, v15, v21);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

- (void)readWeakReferenceMessage:(const void *)a3 class:(Class)a4 protocol:(id)a5 repeatedMessage:(const void *)a6 class:(Class)a7 protocol:(id)a8 completion:(id)a9
{
  v15 = a8;
  v16 = a9;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_2769C5890;
  v31[4] = sub_2769C58A0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2769C637C;
  v25[3] = &unk_27A6E32F8;
  v27 = v29;
  v17 = v16;
  v26 = v17;
  v28 = v31;
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(self, v18, a3, a4, a5, v25);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2769C6438;
  v21[3] = &unk_27A6E3320;
  v23 = v29;
  v19 = v17;
  v22 = v19;
  v24 = v31;
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(self, v20, a6, a7, v15, v21);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

- (void)filterIdentifiers:(const void *)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnarchiver(PreUFFUpgrade) filterIdentifiers:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_PreUFFUpgrade.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 21, 0, "You should not need to filter identifiers when loading a UFF document.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (void)readSparseReferenceArrayMessage:(const void *)a3 completion:(id)a4
{
  v9 = a4;
  v7 = objc_opt_class();
  objc_msgSend_readSparseReferenceArrayMessage_isWeak_class_protocol_validateClass_selector_completion_(self, v8, a3, 0, v7, 0, 0, a2, v9);
}

- (void)readSparseWeakReferenceArrayMessage:(const void *)a3 completion:(id)a4
{
  v9 = a4;
  v7 = objc_opt_class();
  objc_msgSend_readSparseReferenceArrayMessage_isWeak_class_protocol_validateClass_selector_completion_(self, v8, a3, 1, v7, 0, 0, a2, v9);
}

- (void)readSparseReferenceArrayMessage:(const void *)a3 isWeak:(BOOL)a4 class:(Class)a5 protocol:(id)a6 validateClass:(BOOL)a7 selector:(SEL)a8 completion:(id)a9
{
  v9 = a7;
  v91 = a4;
  v10 = a6;
  v94 = a9;
  if (!v9)
  {
    goto LABEL_19;
  }

  if (objc_opt_class() != a5)
  {
    v13 = objc_opt_class();
    if ((objc_msgSend_isSubclassOfClass_(a5, v14, v13) & 1) == 0)
    {
      if (objc_opt_class() == a5)
      {
        v45 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPUnarchiver(SparseArray) readSparseReferenceArrayMessage:isWeak:class:protocol:validateClass:selector:completion:]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
        v47 = objc_opt_class();
        v23 = objc_msgSend_stringForSelector_objectClass_(v47, v48, a8, a5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v20, v22, 35, 0, "You should provide a more specific object reference wrapper class for the %{public}@ function.", v23);
        goto LABEL_18;
      }

      v16 = objc_opt_class();
      if ((objc_msgSend_isSubclassOfClass_(a5, v17, v16) & 1) == 0)
      {
        v50 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnarchiver(SparseArray) readSparseReferenceArrayMessage:isWeak:class:protocol:validateClass:selector:completion:]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
        v52 = objc_opt_class();
        v23 = objc_msgSend_stringForSelector_objectClass_(v52, v53, a8, a5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v20, v22, 35, 0, "You should provide a TSPObject or TSPObjectReferenceWrapper subclass for the %{public}@ function.", v23);
        goto LABEL_18;
      }

      if (v10)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnarchiver(SparseArray) readSparseReferenceArrayMessage:isWeak:class:protocol:validateClass:selector:completion:]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
        v23 = NSStringFromProtocol(v10);
        v24 = objc_opt_class();
        v26 = objc_msgSend_stringForSelector_objectClass_(v24, v25, a8, a5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v20, v22, 35, 0, "You should not define any protocol (including %{public}@) when using object reference wrapper for the %{public}@ function.", v23, v26);

LABEL_18:
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    v33 = objc_msgSend_sourceType(self, v11, v12);
    if ((v33 - 4) >= 2)
    {
      if (v33 == 1)
      {
        v81 = objc_msgSend_delegate(self, v34, v35);
        if (objc_msgSend_packageIdentifier(v81, v82, v83) == 2)
        {

          goto LABEL_19;
        }

        v86 = objc_msgSend_objectClass(self, v84, v85);
        isInternalObjectContainerClass = objc_msgSend_tsp_isInternalObjectContainerClass(v86, v87, v88);

        if (isInternalObjectContainerClass)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      if (v33 != 2)
      {
        goto LABEL_19;
      }
    }

    v36 = objc_msgSend_objectClass(self, v34, v35);
    if (objc_msgSend_tsp_isInternalObjectContainerClass(v36, v37, v38))
    {
      goto LABEL_19;
    }

LABEL_15:
    v40 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSPUnarchiver(SparseArray) readSparseReferenceArrayMessage:isWeak:class:protocol:validateClass:selector:completion:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
    v42 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v42, v43, a8, a5);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v20, v22, 35, 0, "You should provide a more specific object class for the %{public}@ function.", v23);
    goto LABEL_18;
  }

  if (&unk_2885E6538 == v10)
  {
    v28 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPUnarchiver(SparseArray) readSparseReferenceArrayMessage:isWeak:class:protocol:validateClass:selector:completion:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
    v30 = objc_opt_class();
    v23 = objc_msgSend_stringForSelector_objectClass_(v30, v31, a8, a5);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v20, v22, 35, 0, "You should provide a more specific protocol for the %{public}@ function.", v23);
    goto LABEL_18;
  }

LABEL_19:
  v57 = *(a3 + 12);
  v58 = objc_alloc(MEMORY[0x277CBEB18]);
  v62 = objc_msgSend_initWithCapacity_(v58, v59, v57);
  v63 = *(a3 + 8);
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = v63;
  if (v63 < 0 || v63 > v57)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSPUnarchiver(SparseArray) readSparseReferenceArrayMessage:isWeak:class:protocol:validateClass:selector:completion:]");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 44, 0, "Invalid sparse array count.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
  }

  if (v57)
  {
    v71 = 0;
    do
    {
      v72 = objc_msgSend_null(MEMORY[0x277CBEB68], v60, v61);
      objc_msgSend_addObject_(v62, v73, v72);

      if (v63 >= 1 && v71 < v63)
      {
        v74 = *(*(a3 + 5) + 8 * v71 + 8);
        v75 = v10;
        v76 = *(v74 + 32);
        v77 = *(v74 + 24);
        if (v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = &TSP::_Reference_default_instance_;
        }

        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = sub_276ACD060;
        v97[3] = &unk_27A6E6D88;
        v79 = v62;
        v101 = v76;
        v10 = v75;
        v98 = v79;
        v100 = v102;
        v99 = v94;
        LOBYTE(v90) = 0;
        objc_msgSend_readReferenceMessage_isWeak_validateStrongReferences_allowUnknownObject_class_protocol_validateClass_selector_weakSelector_completion_(self, v80, v78, v91, 1, 0, a5, v75, v90, a8, sel_readSparseWeakReferenceArrayMessage_class_protocol_completion_, v97);
      }

      ++v71;
    }

    while (v57 != v71);
  }

  _Block_object_dispose(v102, 8);
}

- (id)readSparseWeakObjectUUIDReferenceArrayMessage:(const void *)a3
{
  v4 = *(a3 + 12);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v5, v6, v4);
  if (v4)
  {
    v10 = v4;
    do
    {
      v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
      objc_msgSend_addObject_(v9, v12, v11);

      --v10;
    }

    while (v10);
  }

  v13 = *(a3 + 8);
  if ((v13 & 0x80000000) != 0 || v13 > v4)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPUnarchiver(SparseArray) readSparseWeakObjectUUIDReferenceArrayMessage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 80, 0, "Invalid sparse array count.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (v13 >= 1)
  {
    v21 = 8;
    do
    {
      v22 = *(*(a3 + 5) + v21);
      v23 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(v22 + 24))
      {
        v25 = objc_msgSend_tsp_initWithMessage_(v23, v24, *(v22 + 24));
      }

      else
      {
        v25 = objc_msgSend_tsp_initWithMessage_(v23, v24, &TSP::_UUID_default_instance_);
      }

      v27 = v25;
      objc_msgSend_setObject_atIndexedSubscript_(v9, v26, v25, *(v22 + 32));

      v21 += 8;
      --v13;
    }

    while (v13);
  }

  return v9;
}

- (id)readSparseWeakObjectUUIDPathReferenceArrayMessage:(const void *)a3
{
  v4 = *(a3 + 12);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v5, v6, v4);
  if (v4)
  {
    v10 = v4;
    do
    {
      v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
      objc_msgSend_addObject_(v9, v12, v11);

      --v10;
    }

    while (v10);
  }

  v13 = *(a3 + 8);
  if ((v13 & 0x80000000) != 0 || v13 > v4)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPUnarchiver(SparseArray) readSparseWeakObjectUUIDPathReferenceArrayMessage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnarchiver_SparseArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 99, 0, "Invalid sparse array count.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (v13 >= 1)
  {
    v21 = 8;
    do
    {
      v22 = *(*(a3 + 5) + v21);
      v23 = objc_alloc(MEMORY[0x277D81360]);
      if (*(v22 + 24))
      {
        v25 = objc_msgSend_initWithMessage_(v23, v24, *(v22 + 24));
      }

      else
      {
        v25 = objc_msgSend_initWithMessage_(v23, v24, &TSP::_UUIDPath_default_instance_);
      }

      v27 = v25;
      objc_msgSend_setObject_atIndexedSubscript_(v9, v26, v25, *(v22 + 32));

      v21 += 8;
      --v13;
    }

    while (v13);
  }

  return v9;
}

- (BOOL)isCrossDocumentPaste
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    isCrossDocumentPaste = objc_msgSend_isCrossDocumentPaste(v3, v4, v5);
  }

  else
  {
    isCrossDocumentPaste = 0;
  }

  return isCrossDocumentPaste;
}

- (BOOL)isCrossAppPaste
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    isCrossAppPaste = objc_msgSend_isCrossAppPaste(v3, v4, v5);
  }

  else
  {
    isCrossAppPaste = 0;
  }

  return isCrossAppPaste;
}

@end