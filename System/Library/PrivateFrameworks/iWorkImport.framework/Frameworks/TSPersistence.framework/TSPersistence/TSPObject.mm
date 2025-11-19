@interface TSPObject
+ (BOOL)tsp_isPerformingUpgrade;
+ (id)tsp_deserializeFromData:(id)a3 options:(id)a4 context:(id)a5 error:(id *)a6;
+ (id)tsp_deserializeFromURL:(id)a3 options:(id)a4 context:(id)a5 isCrossDocumentPaste:(BOOL)a6 isCrossAppPaste:(BOOL)a7 completion:(id)a8;
+ (unint64_t)tsp_estimatedByteSizeOfReferenceToObject:(id)a3;
+ (unint64_t)tsp_estimatedCostOfObject:(id)a3;
+ (void)performUpgradeUsingBlock:(id)a3;
- (BOOL)canModify;
- (BOOL)isComponentRoot;
- (BOOL)needsArchiving;
- (BOOL)tsp_hasSameUnknownFieldsAsObject:(id)a3;
- (BOOL)tsp_isInDocument;
- (BOOL)tsp_isPersisted;
- (NSString)tsp_publicLoggingDescription;
- (NSUUID)objectUUID;
- (TSPComponent)tsp_component;
- (TSPObject)init;
- (TSPObject)initWithContext:(id)a3;
- (TSPObjectContext)context;
- (TSPObjectDelegate)tsp_delegate;
- (TSUUUIDPath)objectUUIDPath;
- (id)initBaseObjectFromUnarchiver:(id)a3;
- (id)initBaseObjectWithContext:(id)a3;
- (id)initDocumentObjectWithContext:(id)a3;
- (id)newObjectUUIDWithOffset:(unint64_t)a3;
- (id)tsp_deepCopyWithContext:(id)a3 options:(id)a4 error:(id *)a5;
- (id)tsp_deepCopyWithContext:(id)a3 options:(id)a4 objectMap:(id *)a5 error:(id *)a6;
- (id)tsp_deepCopyWithOptions:(id)a3;
- (id)tsp_objectInfoWithDepth:(unint64_t)a3;
- (id)tsp_referencedData;
- (id)tsp_referencedObjectUUIDs;
- (id)tsp_referencedObjects;
- (id)tsp_serializeToDataWithOptions:(id)a3 completion:(id)a4;
- (id)tsp_serializeToDataWithOptions:(id)a3 dataReferences:(id *)a4 error:(id *)a5;
- (id)tsp_serializeToURL:(id)a3 options:(id)a4 completion:(id)a5;
- (id)tsp_writeObjectNSDataRepresentation:(id)a3 andData:(id)a4 toURL:(id)a5 options:(id)a6 completion:(id)a7;
- (int64_t)tsp_identifier;
- (void)dealloc;
- (void)didAddReferenceToData:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)performBlockIgnoringModifications:(id)a3;
- (void)resetObjectUUIDWithoutUpdatingObjectUUIDMap;
- (void)saveToArchiver:(id)a3;
- (void)setObjectUUID:(id)a3 updatingObjectUUIDMap:(BOOL)a4;
- (void)tsp_commonInitBaseObjectWithContext:(id)a3;
- (void)tsp_deepCopyWithContext:(id)a3 options:(id)a4 completion:(id)a5;
- (void)tsp_deepCopyWithOptions:(id)a3 completion:(id)a4;
- (void)wasAddedToDocumentWithContext:(id)a3 options:(unint64_t)a4;
- (void)willBeRemovedFromDocumentWithContext:(id)a3;
- (void)willModifyForUpgradeWithOptions:(unint64_t)a3;
- (void)willModifyToComponentRootObject:(id)a3;
- (void)willModifyWithOptions:(unint64_t)a3;
- (void)willRemoveReferenceToData:(id)a3;
@end

@implementation TSPObject

- (TSPObject)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObject init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 59, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObject init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectDelegate)tsp_delegate
{
  if ((*&self->_flags & 8) != 0)
  {
    WeakRetained = objc_msgSend_contextForTransientObjects(TSPObjectContext, a2, v2);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  return WeakRetained;
}

- (TSPObjectContext)context
{
  if ((*&self->_flags & 8) != 0)
  {
    v6 = objc_msgSend_contextForTransientObjects(TSPObjectContext, a2, v2);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_msgSend_context(WeakRetained, v4, v5);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSPObject;
  [(TSPObject *)&v2 dealloc];
}

- (TSPObject)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPObject;
  v5 = [(TSPObject *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_tsp_commonInitBaseObjectWithContext_(v5, v6, v4);
  }

  return v7;
}

- (id)initBaseObjectWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPObject;
  v5 = [(TSPObject *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_tsp_commonInitBaseObjectWithContext_(v5, v6, v4);
  }

  return v7;
}

- (void)tsp_commonInitBaseObjectWithContext:(id)a3
{
  obj = a3;
  v6 = objc_msgSend_contextForTransientObjects(TSPObjectContext, v4, v5);

  if (v6 == obj)
  {
    *&self->_flags |= 8u;
    atomic_store(1uLL, &self->_modifyObjectToken);
    v15 = objc_opt_class();
    if (!objc_msgSend_needsObjectUUID(v15, v16, v17))
    {
      goto LABEL_7;
    }

    v14 = objc_alloc_init(MEMORY[0x277CCAD78]);
  }

  else
  {
    objc_storeWeak(&self->_delegate, obj);
    atomic_store(objc_msgSend_modifyObjectTokenForNewObject(obj, v7, v8), &self->_modifyObjectToken);
    v9 = objc_opt_class();
    if (!objc_msgSend_needsObjectUUID(v9, v10, v11))
    {
      goto LABEL_7;
    }

    v14 = objc_msgSend_newObjectUUIDForObject_uuidNamespace_offset_ignoringBaseUUIDForObjectUUID_requireDeterministicUUID_(obj, v12, self, 0, 0, 0, 0);
  }

  UUID = self->_UUID;
  self->_UUID = v14;

LABEL_7:
  __dmb(0xBu);
  objc_msgSend_commonInit(self, v12, v13);
}

- (id)initDocumentObjectWithContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_initWithContext_(self, v5, v4);
  if (v7)
  {
    objc_msgSend_setDocumentObject_(v4, v6, v7);
  }

  return v7;
}

- (void)performBlockIgnoringModifications:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ((*&self->_flags & 8) != 0)
    {
      v4[2]();
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      objc_msgSend_beginIgnoringModificationsForObject_(WeakRetained, v6, self);
      v8[2]();
      objc_msgSend_endIgnoringModificationsForObject_(WeakRetained, v7, self);
    }

    v4 = v8;
  }
}

+ (void)performUpgradeUsingBlock:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v14 = v3;
    v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5);
    v9 = objc_msgSend_threadDictionary(v6, v7, v8);

    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"TSPObjectIsPerformingUpgrade");
    objc_msgSend_setObject_forKeyedSubscript_(v9, v12, MEMORY[0x277CBEC38], @"TSPObjectIsPerformingUpgrade");
    v14[2]();
    if (v11)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9, v13, v11, @"TSPObjectIsPerformingUpgrade");
    }

    else
    {
      objc_msgSend_removeObjectForKey_(v9, v13, @"TSPObjectIsPerformingUpgrade");
    }

    v3 = v14;
  }
}

+ (BOOL)tsp_isPerformingUpgrade
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TSPObjectIsPerformingUpgrade");
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  return v11;
}

- (void)willModifyWithOptions:(unint64_t)a3
{
  if ((*&self->_flags & 8) == 0)
  {
    if ((*&self->_flags & 7) != 0)
    {
      if ((objc_msgSend_tsp_isRunningFinalizeHandlersForUpgrade(MEMORY[0x277CCACC8], a2, a3) & 1) != 0 || objc_msgSend_tsp_isPerformingUpgrade(TSPObject, v5, v6))
      {

        objc_msgSend_willModifyForUpgradeWithOptions_(self, v5, a3);
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      objc_msgSend_willModifyObject_options_(WeakRetained, v8, self, a3);

      unknownContent = self->_unknownContent;

      MEMORY[0x2821F9670](unknownContent, sel_willModifyObject, v9);
    }
  }
}

- (void)willModifyForUpgradeWithOptions:(unint64_t)a3
{
  if ((*&self->_flags & 8) == 0)
  {
    v3 = a3;
    v5 = *&self->_flags & 7;
    if ((*&self->_flags & 7) != 0)
    {
      v6 = a3 | 3;
    }

    else
    {
      v6 = a3;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_msgSend_willModifyObject_options_(WeakRetained, v7, self, v6);
    if (v5)
    {
      if (!WeakRetained)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPObject willModifyForUpgradeWithOptions:]");
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 243, 0, "Delegate should not be nil while unarchiving.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      }

      if ((v3 & 2) == 0 && v5 == 1)
      {
        v17 = objc_msgSend_fileFormatVersion(WeakRetained, v8, v9);
        if (v17 == UnsafePointer() && (objc_msgSend_tsp_isPerformingUpgrade(TSPObject, v18, v19) & 1) == 0)
        {
          v21 = MEMORY[0x277D81150];
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPObject willModifyForUpgradeWithOptions:]");
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = atomic_load(&self->_identifier);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v22, v24, 247, 0, "Object [%{public}@-%llu] was modified during read unexpectedly. The file format version of the document is the latest.", v26, v27);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        }
      }
    }

    else
    {
      unknownContent = self->_unknownContent;
      self->_unknownContent = 0;
    }
  }
}

- (BOOL)canModify
{
  v3 = self;
  v4 = objc_msgSend_context(self, a2, v2);
  LOBYTE(v3) = objc_msgSend_canModifyObject_(v4, v5, v3);

  return v3;
}

- (BOOL)isComponentRoot
{
  v4 = objc_msgSend_packageLocator(self, a2, v2);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = atomic_load(&self->_identifier);
    v5 = v6 == 1;
  }

  return v5;
}

- (void)willModifyToComponentRootObject:(id)a3
{
  v8 = a3;
  objc_msgSend_willModifyForUpgrade(self, v4, v5);
  objc_msgSend_willModifyForUpgrade(v8, v6, v7);
}

- (BOOL)tsp_isPersisted
{
  WeakRetained = objc_loadWeakRetained(&self->_component);
  if (WeakRetained)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*&self->_flags & 7) != 0;
  }

  return v4;
}

- (BOOL)tsp_hasSameUnknownFieldsAsObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v9 = objc_msgSend_tsp_unknownContent(self, v6, v7);
      v14 = objc_msgSend_tsp_unknownContent(v4, v10, v11);
      if (v9 == v14)
      {
        hasSameUnknownFieldsAsUnknownContent_messagePrototype = 1;
LABEL_16:

        goto LABEL_17;
      }

      v15 = objc_msgSend_context(self, v12, v13);
      v18 = v15;
      if (!v15)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPObject tsp_hasSameUnknownFieldsAsObject:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
        v31 = NSStringFromClass(v5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v30, 367, 0, "Cannot compare unknown fields for %{public}@ because context is not available.", v31);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
        hasSameUnknownFieldsAsUnknownContent_messagePrototype = 0;
LABEL_15:

        goto LABEL_16;
      }

      v20 = objc_msgSend_registry(v15, v16, v17);
      if (v20)
      {
        ClassName = object_getClassName(self);
        v23 = objc_msgSend_messageTypeForUnarchiveClassname_(v20, v22, ClassName);
        v26 = objc_msgSend_messagePrototypeForMessageType_(v20, v24, v23);
        if (v26)
        {
          hasSameUnknownFieldsAsUnknownContent_messagePrototype = objc_msgSend_unknownContent_hasSameUnknownFieldsAsUnknownContent_messagePrototype_(TSPUnknownContent, v25, v9, v14, v26);
LABEL_14:

          goto LABEL_15;
        }

        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPObject tsp_hasSameUnknownFieldsAsObject:]");
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
        v47 = NSStringFromClass(v5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v46, 380, 0, "Cannot compare unknown fields for %{public}@ because message with type %u is not registered.", v47, v23);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
      }

      else
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPObject tsp_hasSameUnknownFieldsAsObject:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
        v39 = NSStringFromClass(v5);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v38, 373, 0, "Cannot compare unknown fields for %{public}@ because context's registry is not set.", v39);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
      }

      hasSameUnknownFieldsAsUnknownContent_messagePrototype = 0;
      goto LABEL_14;
    }
  }

  hasSameUnknownFieldsAsUnknownContent_messagePrototype = 0;
LABEL_17:

  return hasSameUnknownFieldsAsUnknownContent_messagePrototype;
}

- (id)initBaseObjectFromUnarchiver:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = TSPObject;
  v7 = [(TSPObject *)&v44 init];
  if (v7)
  {
    atomic_store(objc_msgSend_objectIdentifier(v4, v5, v6), &v7->_identifier);
    v10 = objc_msgSend_sourceType(v4, v8, v9);
    if (v10 >= 8)
    {
      TSUSetCrashReporterInfo();
      v38 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSPObject initBaseObjectFromUnarchiver:]", "[TSPObject initBaseObjectFromUnarchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm", 401);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v40, v42, 401, 1, "Unarchiver source type is expected to be 3-bits in size.");

      TSUCrashBreakpoint();
      abort();
    }

    *&v7->_flags = *&v7->_flags & 0xF8 | v10;
    v13 = objc_msgSend_unknownContent(v4, v11, v12);
    unknownContent = v7->_unknownContent;
    v7->_unknownContent = v13;

    v17 = objc_msgSend_objectDelegate(v4, v15, v16);
    objc_storeWeak(&v7->_delegate, v17);
    v20 = objc_msgSend_objectUUID(v4, v18, v19);
    UUID = v7->_UUID;
    v7->_UUID = v20;

    v22 = objc_opt_class();
    if (objc_msgSend_needsObjectUUID(v22, v23, v24) && !v7->_UUID)
    {
      objc_msgSend_willModifyForUpgradeWithOptions_(v7, v25, 2);
      if (!v17)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPObject initBaseObjectFromUnarchiver:]");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 415, 0, "Attempting to make an object UUID for unarchived object without a delegate.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      }

      v35 = objc_msgSend_newObjectUUIDForObject_uuidNamespace_offset_ignoringBaseUUIDForObjectUUID_requireDeterministicUUID_(v17, v27, v7, 0, 0, 0, 0);
      v36 = v7->_UUID;
      v7->_UUID = v35;
    }

    __dmb(0xBu);
    objc_msgSend_commonInit(v7, v25, v26);
  }

  return v7;
}

- (void)loadFromUnarchiver:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObject loadFromUnarchiver:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 427, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPObject loadFromUnarchiver:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)saveToArchiver:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObject saveToArchiver:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 431, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPObject saveToArchiver:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (NSUUID)objectUUID
{
  __dmb(0xBu);
  if (!self->_UUID)
  {
    v3 = objc_opt_class();
    if (objc_msgSend_needsObjectUUID(v3, v4, v5))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObject objectUUID]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = atomic_load(&self->_identifier);
      v16 = objc_msgSend_context(self, v14, v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v17, v8, v10, 452, 0, "UUID should have been initialized for object [%{public}@-%llu]. context=%{public}p", v12, v13, v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }
  }

  UUID = self->_UUID;

  return UUID;
}

- (void)setObjectUUID:(id)a3 updatingObjectUUIDMap:(BOOL)a4
{
  v4 = a4;
  v41 = a3;
  __dmb(0xBu);
  v7 = self->_UUID;
  if ((objc_msgSend_isEqual_(v7, v8, v41) & 1) == 0)
  {
    if ((*&self->_flags & 8) != 0)
    {
      v23 = objc_msgSend_copy(v41, v9, v10);
      UUID = self->_UUID;
      self->_UUID = v23;

      __dmb(0xBu);
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = WeakRetained;
    if (v4 && !objc_msgSend_canSetObjectUUIDForObject_(WeakRetained, v12, self))
    {
      v33 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPObject setObjectUUID:updatingObjectUUIDMap:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
      v35 = objc_opt_class();
      v30 = NSStringFromClass(v35);
      v36 = atomic_load(&self->_identifier);
      v37 = NSStringFromSelector(a2);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v26, v28, 480, 0, "Cannot change the UUID for object [%{public}@-%llu]. %{public}@ call will be ignored.", v30, v36, v37);
    }

    else
    {
      if (v41)
      {
        objc_msgSend_willModify(self, v12, v13);
        v17 = objc_msgSend_copy(v41, v15, v16);
        v18 = self->_UUID;
        self->_UUID = v17;

        __dmb(0xBu);
        if (v4)
        {
          v21 = objc_msgSend_objectUUIDMap(v14, v19, v20);
          objc_msgSend_object_didChangeUUIDToValue_fromValue_(v21, v22, self, v41, v7);
        }

        goto LABEL_12;
      }

      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPObject setObjectUUID:updatingObjectUUIDMap:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = atomic_load(&self->_identifier);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v26, v28, 477, 0, "UUID should not be set to nil for object [%{public}@-%llu].", v30, v31);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
LABEL_12:
  }

LABEL_13:
}

- (void)resetObjectUUIDWithoutUpdatingObjectUUIDMap
{
  v4 = objc_opt_new();
  objc_msgSend_setObjectUUID_updatingObjectUUIDMap_(self, v3, v4, 0);
}

- (void)didAddReferenceToData:(id)a3
{
  v42 = a3;
  if (v42)
  {
    v6 = objc_msgSend_null(TSPData, v4, v5);

    if (v6 != v42)
    {
      v9 = objc_msgSend_context(self, v7, v8);
      v12 = v9;
      if (v9 && (objc_msgSend_ignoreDataLifecycleNotifications(v9, v10, v11) & 1) == 0)
      {
        v15 = objc_msgSend_tsp_identifier(self, v13, v14);
        v18 = objc_msgSend_context(v42, v16, v17);
        v21 = v18;
        if (v18 == v12)
        {
          objc_msgSend_ensureObject_isKnownWithIdentifier_(v12, v19, self, v15);
          v34 = objc_msgSend_dataReferenceMap(v12, v32, v33);
          v37 = objc_msgSend_identifier(v42, v35, v36);
          isPersisted = objc_msgSend_tsp_isPersisted(self, v38, v39);
          objc_msgSend_objectIdentifier_didAddReferenceToDataIdentifier_isObjectPersisted_(v34, v41, v15, v37, isPersisted);
        }

        else if (v18 && (objc_msgSend_ignoreDataLifecycleErrors(v12, v19, v20) & 1) == 0)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPObject didAddReferenceToData:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v26, 514, 0, "Object [%{public}@-%llu: %p] on context %p cannot add reference to data %@ on a different context %p.", v28, v15, self, v12, v42, v21);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        }
      }
    }
  }
}

- (void)willRemoveReferenceToData:(id)a3
{
  v40 = a3;
  if (v40)
  {
    v6 = objc_msgSend_null(TSPData, v4, v5);

    if (v6 != v40)
    {
      v9 = objc_msgSend_context(self, v7, v8);
      v12 = v9;
      if (v9 && (objc_msgSend_ignoreDataLifecycleNotifications(v9, v10, v11) & 1) == 0)
      {
        v15 = objc_msgSend_tsp_identifier(self, v13, v14);
        v18 = objc_msgSend_context(v40, v16, v17);
        v21 = v18;
        if (v18 == v12)
        {
          v32 = objc_msgSend_dataReferenceMap(v12, v19, v20);
          v35 = objc_msgSend_identifier(v40, v33, v34);
          isPersisted = objc_msgSend_tsp_isPersisted(self, v36, v37);
          objc_msgSend_objectIdentifier_willRemoveReferenceToDataIdentifier_isObjectPersisted_(v32, v39, v15, v35, isPersisted);
        }

        else if (v18 && (objc_msgSend_ignoreDataLifecycleErrors(v12, v19, v20) & 1) == 0)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPObject willRemoveReferenceToData:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject.mm");
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v26, 534, 0, "Object [%{public}@-%llu: %p] on context %p cannot remove reference to data %@ on a different context %p.", v28, v15, self, v12, v40, v21);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        }
      }
    }
  }
}

- (NSString)tsp_publicLoggingDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_tsp_component(self, v4, v5);
  v9 = objc_msgSend_locator(v6, v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v14 = objc_msgSend_tsp_identifier(self, v12, v13);
  v16 = objc_msgSend_initWithFormat_(v3, v15, @"[%@-%@-%llu]", v9, v11, v14);

  return v16;
}

- (int64_t)tsp_identifier
{
  result = atomic_load(&self->_identifier);
  if ((*&self->_flags & 8) == 0 && !result)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_msgSend_newObjectIdentifier(WeakRetained, v5, v6);

    result = 0;
    atomic_compare_exchange_strong(&self->_identifier, &result, v7);
    if (!result)
    {
      return atomic_load(&self->_identifier);
    }
  }

  return result;
}

- (BOOL)needsArchiving
{
  WeakRetained = objc_loadWeakRetained(&self->_component);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_needsArchiving(WeakRetained, v3, v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (TSPComponent)tsp_component
{
  WeakRetained = objc_loadWeakRetained(&self->_component);

  return WeakRetained;
}

- (id)tsp_serializeToDataWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CCAC48]);
  v10 = objc_msgSend_initWithParent_userInfo_(v8, v9, 0, 0);
  objc_msgSend_setTotalUnitCount_(v10, v11, 1);
  v14 = objc_msgSend_context(self, v12, v13);
  v15 = [TSPObjectSerializationWriteAssistant alloc];
  v18 = objc_msgSend_documentUUID(v14, v16, v17);
  v21 = objc_msgSend_versionUUID(v14, v19, v20);
  v23 = objc_msgSend_initWithContext_documentUUID_versionUUID_(v15, v22, v14, v18, v21);

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_276A63E6C;
  v30[3] = &unk_27A6E5358;
  v24 = v10;
  v31 = v24;
  v25 = v7;
  v32 = v25;
  objc_msgSend_encodeObject_options_completion_(v23, v26, self, v6, v30);
  v27 = v32;
  v28 = v24;

  return v24;
}

- (id)tsp_serializeToDataWithOptions:(id)a3 dataReferences:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_276A64190;
  v36 = sub_276A641A0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_276A64190;
  v30 = sub_276A641A0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_276A64190;
  v24 = sub_276A641A0;
  v25 = 0;
  v9 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A641A8;
  v15[3] = &unk_27A6E5380;
  v17 = &v26;
  v18 = &v32;
  v19 = &v20;
  v10 = v9;
  v16 = v10;
  v12 = objc_msgSend_tsp_serializeToDataWithOptions_completion_(self, v11, v8, v15);
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v33[5];
  }

  if (a5)
  {
    *a5 = v21[5];
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v13;
}

- (id)tsp_writeObjectNSDataRepresentation:(id)a3 andData:(id)a4 toURL:(id)a5 options:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x277CCAC48]);
  v19 = objc_msgSend_count(v12, v17, v18);
  objc_msgSend_setTotalUnitCount_(v16, v20, v19 + 1);
  v21 = dispatch_get_global_queue(0, 0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_276A64434;
  v31[3] = &unk_27A6E53A8;
  v32 = v13;
  v33 = v11;
  v22 = v16;
  v34 = v22;
  v35 = v14;
  v36 = v12;
  v37 = v15;
  v23 = v15;
  v24 = v12;
  v25 = v14;
  v26 = v11;
  v27 = v13;
  dispatch_async(v21, v31);

  v28 = v37;
  v29 = v22;

  return v22;
}

- (id)tsp_serializeToURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*MEMORY[0x277D814B8] != -1)
  {
    sub_276BD5628();
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAC48]);
  objc_msgSend_setTotalUnitCount_(v11, v12, 2);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_276A64DD8;
  v22[3] = &unk_27A6E53D0;
  v22[4] = self;
  v13 = v8;
  v23 = v13;
  v14 = v9;
  v24 = v14;
  v15 = v10;
  v26 = v15;
  v16 = v11;
  v25 = v16;
  v19 = objc_msgSend_tsp_serializeToDataWithOptions_completion_(self, v17, 0, v22);
  if (v19)
  {
    objc_msgSend_addChild_withPendingUnitCount_(v16, v18, v19, 1);
  }

  v20 = v16;

  return v16;
}

+ (id)tsp_deserializeFromData:(id)a3 options:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [TSPObjectSerializationReadAssistant alloc];
  v14 = objc_msgSend_initWithContext_(v12, v13, v11);
  v16 = objc_msgSend_decodeObjectWithData_packageURL_options_error_(v14, v15, v9, 0, v10, a6);

  return v16;
}

+ (id)tsp_deserializeFromURL:(id)a3 options:(id)a4 context:(id)a5 isCrossDocumentPaste:(BOOL)a6 isCrossAppPaste:(BOOL)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = objc_alloc_init(MEMORY[0x277CCAC48]);
  objc_msgSend_setTotalUnitCount_(v17, v18, 2);
  v19 = dispatch_get_global_queue(0, 0);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276A651D0;
  v28[3] = &unk_27A6E53F8;
  v29 = v13;
  v20 = v17;
  v30 = v20;
  v31 = v15;
  v34 = a6;
  v35 = a7;
  v32 = v14;
  v33 = v16;
  v21 = v16;
  v22 = v14;
  v23 = v15;
  v24 = v13;
  dispatch_async(v19, v28);

  v25 = v33;
  v26 = v20;

  return v20;
}

+ (unint64_t)tsp_estimatedByteSizeOfReferenceToObject:(id)a3
{
  v3 = a3;
  TSP::Reference::Reference(v17, 0);
  v6 = objc_msgSend_tsp_identifier(v3, v4, v5);
  v18 |= 1u;
  v19 = v6;
  v10 = TSP::Reference::ByteSizeLong(v17, v7, v8, v9);
  v11 = TSUProtocolCast();
  v14 = v11;
  v15 = &v10->ptr_ + 1;
  if (v11)
  {
    v15 += objc_msgSend_estimatedByteSize(v11, v12, v13, &unk_28860AB18);
  }

  TSP::Reference::~Reference(v17);
  return v15;
}

+ (unint64_t)tsp_estimatedCostOfObject:(id)a3
{
  v3 = TSUProtocolCast();
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_estimatedCost(v3, v4, v5, &unk_28860AB18);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tsp_deepCopyWithContext:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (v12)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_276A7AB40;
    v29 = sub_276A7AB50;
    v30 = objc_msgSend_context(self, v10, v11);
    v13 = objc_opt_new();
    v14 = [TSPDeepCopyWriteAssistant alloc];
    v16 = objc_msgSend_initWithContext_objectMap_(v14, v15, v26[5], v13);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_276A7AB58;
    v19[3] = &unk_27A6E5A38;
    v20 = v8;
    v17 = v13;
    v21 = v17;
    v22 = v9;
    v24 = &v25;
    v23 = v12;
    objc_msgSend_encodeDeepCopyOfObject_options_completion_(v16, v18, self, v22, v19);

    _Block_object_dispose(&v25, 8);
  }
}

- (id)tsp_deepCopyWithContext:(id)a3 options:(id)a4 objectMap:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    v12 = objc_opt_new();
  }

  else
  {
    v12 = 0;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_276A7AB40;
  v60 = sub_276A7AB50;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_276A7AB40;
  v54 = sub_276A7AB50;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_276A7AB40;
  v48 = sub_276A7AB50;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_276A7AB40;
  v42 = sub_276A7AB50;
  v43 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = [TSPDeepCopyWriteAssistant alloc];
  v17 = objc_msgSend_context(self, v15, v16);
  v19 = objc_msgSend_initWithContext_objectMap_(v14, v18, v17, v12);

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_276A7B06C;
  v32[3] = &unk_27A6E5A60;
  v34 = &v56;
  v35 = &v50;
  v36 = &v44;
  v37 = &v38;
  v20 = v13;
  v33 = v20;
  objc_msgSend_encodeDeepCopyOfObject_options_completion_(v19, v21, self, v11, v32);
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);

  if (v39[5])
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v25 = [TSPDeepCopyReadAssistant alloc];
  v27 = objc_msgSend_initWithContext_objectMap_cachedMetadataObject_cachedDataMap_(v25, v26, v10, v12, v57[5], v45[5]);
  v28 = v51[5];
  v29 = (v39 + 5);
  obj = v39[5];
  v22 = objc_msgSend_decodeDeepCopySerializedData_options_error_(v27, v30, v28, v11, &obj);
  objc_storeStrong(v29, obj);

  if (a5)
  {
LABEL_6:
    v23 = v12;
    *a5 = v12;
  }

LABEL_7:
  if (a6)
  {
    *a6 = v39[5];
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v22;
}

- (id)tsp_deepCopyWithContext:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v10 = objc_msgSend_tsp_deepCopyWithContext_options_objectMap_error_(self, v9, v8, a4, 0, a5);

  return v10;
}

- (void)tsp_deepCopyWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_msgSend_context(self, v7, v8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276A7B2C8;
    v12[3] = &unk_27A6E41D0;
    v13 = v9;
    objc_msgSend_tsp_deepCopyWithContext_options_completion_(self, v11, v10, v6, v12);
  }
}

- (id)tsp_deepCopyWithOptions:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(self, v5, v6);
  v12 = 0;
  v9 = objc_msgSend_tsp_deepCopyWithContext_options_objectMap_error_(self, v8, v7, v4, 0, &v12);
  v10 = v12;

  if (v10 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD5B4C();
  }

  return v9;
}

- (id)tsp_objectInfoWithDepth:(unint64_t)a3
{
  v5 = [TSPObjectInfo alloc];
  v7 = objc_msgSend_initWithObject_referenceDepth_(v5, v6, self, a3);

  return v7;
}

- (id)tsp_referencedData
{
  v2 = objc_msgSend_tsp_objectInfoWithDepth_(self, a2, -1);
  v5 = objc_msgSend_referencedData(v2, v3, v4);

  return v5;
}

- (id)tsp_referencedObjects
{
  v2 = objc_msgSend_tsp_objectInfoWithDepth_(self, a2, -1);
  v5 = objc_msgSend_referencedObjects(v2, v3, v4);

  return v5;
}

- (id)tsp_referencedObjectUUIDs
{
  v2 = objc_msgSend_tsp_objectInfoWithDepth_(self, a2, -1);
  v5 = objc_msgSend_referencedObjectUUIDs(v2, v3, v4);

  return v5;
}

- (BOOL)tsp_isInDocument
{
  v3 = self;
  v4 = objc_msgSend_tsp_delegate(self, a2, v2);
  LOBYTE(v3) = objc_msgSend_isObjectInDocument_(v4, v5, v3);

  return v3;
}

- (TSUUUIDPath)objectUUIDPath
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  if (objc_msgSend_needsObjectUUID(v3, v4, v5))
  {
    v8 = objc_msgSend_objectUUID(self, v6, v7);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277D81360]);
      v28[0] = v8;
      v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v28, 1);
      v13 = objc_msgSend_initWithArray_(v9, v12, v11);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObject(Collaboration) objectUUIDPath]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject_Collaboration.mm");
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v22 = objc_msgSend_tsp_identifier(self, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v23, v15, v17, 30, 0, "Object [%{public}@-%llu] does not support object UUID. You should not try to get a UUID path from it.", v19, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    v13 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)wasAddedToDocumentWithContext:(id)a3 options:(unint64_t)a4
{
  v35 = a3;
  v8 = objc_msgSend_context(self, v6, v7);

  if (v8 != v35)
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v34 = objc_msgSend_tsp_identifier(self, v21, v22);
    TSUSetCrashReporterInfo();

    v23 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPObject(Collaboration) wasAddedToDocumentWithContext:options:]", "[TSPObject(Collaboration) wasAddedToDocumentWithContext:options:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject_Collaboration.mm", 36, v20, v34, self);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject_Collaboration.mm");
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v32 = objc_msgSend_tsp_identifier(self, v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v33, v25, v27, 36, 1, "Object [%{public}@-%llu] was added to an unexpected object context. Object Description: %@", v29, v32, self);

    TSUCrashBreakpoint();
    abort();
  }

  v9 = objc_opt_class();
  if (objc_msgSend_needsObjectUUID(v9, v10, v11))
  {
    v14 = objc_msgSend_tsp_delegate(self, v12, v13);
    v17 = objc_msgSend_objectUUIDMap(v14, v15, v16);
    objc_msgSend_objectWasAddedToDocument_options_(v17, v18, self, a4);
  }
}

- (void)willBeRemovedFromDocumentWithContext:(id)a3
{
  v30 = a3;
  v6 = objc_msgSend_context(self, v4, v5);

  if (v6 != v30)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPObject(Collaboration) willBeRemovedFromDocumentWithContext:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject_Collaboration.mm");
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v16 = objc_msgSend_tsp_identifier(self, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v17, v9, v11, 56, 0, "Object [%{public}@-%llu] will be removed from an unexpected object context. Object Description: %@", v13, v16, self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v20 = objc_opt_class();
  if (objc_msgSend_needsObjectUUID(v20, v21, v22))
  {
    v25 = objc_msgSend_tsp_delegate(self, v23, v24);
    v28 = objc_msgSend_objectUUIDMap(v25, v26, v27);
    objc_msgSend_objectWillBeRemovedFromDocument_(v28, v29, self);
  }
}

- (id)newObjectUUIDWithOffset:(unint64_t)a3
{
  v5 = objc_msgSend_tsp_delegate(self, a2, a3);
  v7 = objc_msgSend_newObjectUUIDForObject_uuidNamespace_offset_ignoringBaseUUIDForObjectUUID_requireDeterministicUUID_(v5, v6, self, 5, a3, 1, 1);

  if (!v7)
  {
    v12 = objc_msgSend_objectUUID(self, v8, v9);
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPObject(Collaboration) newObjectUUIDWithOffset:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObject_Collaboration.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 72, 0, "invalid nil value for '%{public}s'", "currentObjectUUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    v20 = objc_msgSend_tsp_identifier(self, v10, v11);
    v7 = sub_2769DD85C(v12, 6, v20, a3);
  }

  return v7;
}

@end