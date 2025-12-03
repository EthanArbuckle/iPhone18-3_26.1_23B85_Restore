@interface TSPLazyReference
+ (id)referenceForObject:(id)object;
+ (id)weakReferenceForObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateObject:(id)object expectedObjectClass:(Class)class expectedObjectProtocol:(id)protocol delegate:(id)delegate shouldIgnoreFailure:(BOOL *)failure shouldUpdateObjectClass:(BOOL *)objectClass error:(id *)error;
- (NSString)description;
- (TSPComponent)component;
- (TSPLazyReference)initWithDelegate:(id)delegate identifier:(int64_t)identifier ownershipMode:(int64_t)mode allowUnknownObject:(BOOL)object objectClass:(Class)class objectProtocol:(id)protocol;
- (TSPLazyReference)initWithObject:(id)object ownershipMode:(int64_t)mode;
- (TSPLazyReferenceDelegate)delegate;
- (TSPObject)weakObject;
- (id)additionalDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectAndReturnError:(id *)error;
- (id)objectIfLoaded;
- (int64_t)ownershipMode;
- (int64_t)releaseObjectIfPossible;
- (void)addLoadObserver:(id)observer action:(SEL)action;
- (void)resetIdentifierFromCopy:(BOOL)copy;
- (void)retainObject:(id)object;
- (void)setIsExternal:(BOOL)external;
- (void)setKeepObjectInMemory:(BOOL)memory;
@end

@implementation TSPLazyReference

+ (id)referenceForObject:(id)object
{
  objectCopy = object;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithObject_(v5, v6, objectCopy);

  return v7;
}

+ (id)weakReferenceForObject:(id)object
{
  v3 = objc_msgSend_weakReferenceForObject_retainedUntilArchived_(self, a2, object, 0);

  return v3;
}

- (TSPLazyReference)initWithDelegate:(id)delegate identifier:(int64_t)identifier ownershipMode:(int64_t)mode allowUnknownObject:(BOOL)object objectClass:(Class)class objectProtocol:(id)protocol
{
  objectCopy = object;
  delegateCopy = delegate;
  protocolCopy = protocol;
  if (!delegateCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPLazyReference initWithDelegate:identifier:ownershipMode:allowUnknownObject:objectClass:objectProtocol:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 78, 0, "invalid nil value for '%{public}s'", "delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v28.receiver = self;
  v28.super_class = TSPLazyReference;
  v23 = [(TSPLazyReference *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_delegate, delegateCopy);
    v24->_identifier = identifier;
    v24->_objectLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    if (mode < 3)
    {
      v25 = mode + 1;
    }

    else
    {
      v25 = 0;
    }

    if (objectCopy)
    {
      v25 |= 8u;
    }

    atomic_store(v25, &v24->_flags);
    v24->_objectClass = class;
    objc_storeStrong(&v24->_objectProtocol, protocol);
  }

  return v24;
}

- (TSPLazyReference)initWithObject:(id)object ownershipMode:(int64_t)mode
{
  objectCopy = object;
  v10 = objectCopy;
  if (objectCopy)
  {
    v11 = objc_msgSend_context(objectCopy, v8, v9);
    v14 = objc_msgSend_tsp_identifier(v10, v12, v13);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = objc_opt_class();
    v18 = objc_msgSend_initWithDelegate_identifier_ownershipMode_allowUnknownObject_objectClass_objectProtocol_(self, v17, v11, v14, mode, isKindOfClass & 1, v16, 0);

    if (v18)
    {
      if (mode != 1)
      {
        objc_storeStrong(v18 + 2, object);
      }

      objc_storeWeak(v18 + 3, v10);
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)objectAndReturnError:(id *)error
{
  os_unfair_lock_lock(&self->_objectLock);
  strongObject = self->_strongObject;
  if (strongObject)
  {
    WeakRetained = strongObject;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  }

  v7 = WeakRetained;
  objectClass = self->_objectClass;
  v9 = self->_objectProtocol;
  os_unfair_lock_unlock(&self->_objectLock);
  v37 = 0;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPLazyReference objectAndReturnError:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 164, 0, "Attempting to resolve lazy reference %{public}@ to object identifier %llu after delegate was deallocated. This indicates that the document associated with this lazy reference has already been closed and deallocated.", self, self->_identifier);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19);
    }

    v35 = 0;
    v36 = 0;
    v20 = objc_msgSend_readLazyReference_object_error_(v12, v11, self, &v36, &v35);
    v7 = v36;
    v21 = v35;
    v23 = v21;
    if (v20)
    {
      v34 = 0;
      v33 = v21;
      shouldUpdateObjectClass_error = objc_msgSend_validateObject_expectedObjectClass_expectedObjectProtocol_delegate_shouldIgnoreFailure_shouldUpdateObjectClass_error_(self, v22, v7, objectClass, v9, v12, &v37, &v34, &v33);
      v10 = v33;

      if ((shouldUpdateObjectClass_error & 1) == 0)
      {

        v7 = 0;
      }

      os_unfair_lock_lock(&self->_objectLock);
      v25 = atomic_load(&self->_flags);
      if ((v25 & 2) == 0)
      {
        v26 = atomic_load(&self->_flags);
        if ((v26 & 0x10) != 0)
        {
          objc_storeStrong(&self->_strongObject, v7);
        }
      }

      objc_storeWeak(&self->_weakObject, v7);
      if (!self->_objectClass || v34 == 1)
      {
        self->_objectClass = objc_opt_class();
      }

      os_unfair_lock_unlock(&self->_objectLock);
    }

    else
    {
      v27 = atomic_load(&self->_flags);
      if ((v27 & 2) == 0 && UnsafePointer != -1)
      {
        sub_276BD38C8();
      }

      v10 = v23;
    }

    if (!v7)
    {
      if ((v37 & 1) == 0)
      {
        v29 = atomic_load(&self->_flags);
        if ((v29 & 2) == 0)
        {
          v30 = objc_msgSend_tsp_ensureReadErrorWithError_(MEMORY[0x277CCA9B8], v28, v10);

          v10 = v30;
        }
      }

      if (error)
      {
        v31 = v10;
        v7 = 0;
        *error = v10;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)objectIfLoaded
{
  os_unfair_lock_lock(&self->_objectLock);
  strongObject = self->_strongObject;
  if (strongObject)
  {
    WeakRetained = strongObject;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  }

  v5 = WeakRetained;
  objectClass = self->_objectClass;
  v7 = self->_objectProtocol;
  os_unfair_lock_unlock(&self->_objectLock);
  if (!v5)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_msgSend_objectForIdentifier_(v8, v9, self->_identifier);
    v14 = 0;
    if (objc_msgSend_validateObject_expectedObjectClass_expectedObjectProtocol_delegate_shouldIgnoreFailure_shouldUpdateObjectClass_error_(self, v10, v5, objectClass, v7, v8, 0, &v14, 0))
    {
      if (v5)
      {
        os_unfair_lock_lock(&self->_objectLock);
        v11 = atomic_load(&self->_flags);
        if ((v11 & 2) == 0)
        {
          v12 = atomic_load(&self->_flags);
          if ((v12 & 0x10) != 0)
          {
            objc_storeStrong(&self->_strongObject, v5);
          }
        }

        objc_storeWeak(&self->_weakObject, v5);
        if (!self->_objectClass || v14 == 1)
        {
          self->_objectClass = objc_opt_class();
        }

        os_unfair_lock_unlock(&self->_objectLock);
      }
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)validateObject:(id)object expectedObjectClass:(Class)class expectedObjectProtocol:(id)protocol delegate:(id)delegate shouldIgnoreFailure:(BOOL *)failure shouldUpdateObjectClass:(BOOL *)objectClass error:(id *)error
{
  objectCopy = object;
  protocolCopy = protocol;
  delegateCopy = delegate;
  if (!objectCopy)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v21 = atomic_load(&self->_flags);
    if ((v21 & 8) == 0)
    {
      v22 = atomic_load(&self->_flags);
      if ((v22 & 2) == 0)
      {
        v81 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPLazyReference validateObject:expectedObjectClass:expectedObjectProtocol:delegate:shouldIgnoreFailure:shouldUpdateObjectClass:error:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
        if (!class)
        {
          class = objc_opt_class();
        }

        v26 = NSStringFromClass(class);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v27, v23, v25, 272, 0, "Object [%{public}@-%llu] resolved to an unknown object.", v26, self->_identifier);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      }

      v30 = atomic_load(&self->_flags);
      if ((v30 & 2) == 0 && (objc_msgSend_ignoreReferencesToUnknownObjects(delegateCopy, v18, v19) & 1) == 0)
      {
        v32 = MEMORY[0x277CCA9B8];
        v33 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v31, 7);
        v35 = objc_msgSend_tsp_errorWithError_hints_(v32, v34, v33, &unk_2885E59C8);
LABEL_43:
        v37 = 0;
        goto LABEL_44;
      }

LABEL_41:
      v35 = 0;
      v36 = 0;
      v37 = 0;
      isKindOfClass = 1;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!class || (objc_opt_isKindOfClass()) && (!protocolCopy || (objc_msgSend_conformsToProtocol_(objectCopy, v18, protocolCopy)))
  {
LABEL_15:
    v35 = 0;
    v36 = 0;
    isKindOfClass = 0;
LABEL_16:
    v37 = 1;
    goto LABEL_17;
  }

  v40 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(class, v41, v40))
  {
    v43 = objc_opt_class();
    if (objc_msgSend_allowUnarchivingObjectClass_(class, v44, v43))
    {
      v35 = 0;
      isKindOfClass = 0;
      v36 = 1;
      goto LABEL_16;
    }

    v79 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSPLazyReference validateObject:expectedObjectClass:expectedObjectProtocol:delegate:shouldIgnoreFailure:shouldUpdateObjectClass:error:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
    v55 = objc_opt_class();
    v80 = NSStringFromClass(v55);
    identifier = self->_identifier;
    if (!class)
    {
      class = objc_opt_class();
    }

    v49 = NSStringFromClass(class);
    v75 = identifier;
    v51 = v53;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v57, v53, v82, 294, 0, "Object [%{public}@-%llu] is not allowed by reference wrapper %{public}@.", v80, v75, v49);
  }

  else
  {
    v78 = MEMORY[0x277D81150];
    if (protocolCopy)
    {
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSPLazyReference validateObject:expectedObjectClass:expectedObjectProtocol:delegate:shouldIgnoreFailure:shouldUpdateObjectClass:error:]");
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
      v47 = objc_opt_class();
      v80 = NSStringFromClass(v47);
      v48 = self->_identifier;
      if (!class)
      {
        class = objc_opt_class();
      }

      v49 = NSStringFromClass(class);
      v50 = NSStringFromProtocol(protocolCopy);
      v74 = v48;
      v51 = v77;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v52, v77, v82, 296, 0, "Object [%{public}@-%llu] is not subclass of %{public}@ or does not conform to %{public}@.", v80, v74, v49, v50);
    }

    else
    {
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSPLazyReference validateObject:expectedObjectClass:expectedObjectProtocol:delegate:shouldIgnoreFailure:shouldUpdateObjectClass:error:]");
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
      v60 = objc_opt_class();
      v80 = NSStringFromClass(v60);
      v61 = self->_identifier;
      if (!class)
      {
        class = objc_opt_class();
      }

      v49 = NSStringFromClass(class);
      v76 = v61;
      v51 = v58;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v62, v58, v82, 298, 0, "Object [%{public}@-%llu] is not subclass of %{public}@.", v80, v76, v49);
    }
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
  v67 = atomic_load(&self->_flags);
  if ((v67 & 2) != 0)
  {
    goto LABEL_41;
  }

  v68 = objc_msgSend_component(self, v65, v66);
  v33 = v68;
  if (!v68 || objc_msgSend_packageIdentifier(v68, v69, v70) != 2)
  {
    v71 = MEMORY[0x277CCA9B8];
    v72 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v69, 0);
    v35 = objc_msgSend_tsp_errorWithError_hints_(v71, v73, v72, &unk_2885E59E0);

    goto LABEL_43;
  }

  v35 = 0;
  v37 = 1;
LABEL_44:

  v36 = 0;
LABEL_17:
  if (failure)
  {
    *failure = isKindOfClass & 1;
  }

  if (objectClass)
  {
    *objectClass = v36;
  }

  if (error)
  {
    v38 = v35;
    *error = v35;
  }

  return v37;
}

- (void)setKeepObjectInMemory:(BOOL)memory
{
  p_flags = &self->_flags;
  if (memory)
  {
    atomic_fetch_or(p_flags, 0x10u);
  }

  else
  {
    atomic_fetch_and(p_flags, 0xEFu);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToLazyReference = objc_msgSend_isEqualToLazyReference_(self, v5, equalCopy);
  }

  else
  {
    isEqualToLazyReference = 0;
  }

  return isEqualToLazyReference;
}

- (void)addLoadObserver:(id)observer action:(SEL)action
{
  observerCopy = observer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPLazyReference addLoadObserver:action:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 370, 0, "Attempting to add load observer for lazy reference %{public}@ to object identifier %llu after delegate was deallocated. This indicates that the document associated with this lazy reference has already been closed and deallocated.", self, self->_identifier);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_msgSend_addLoadObserver_action_forLazyReference_(WeakRetained, v6, observerCopy, action, self);
}

- (id)copyWithZone:(_NSZone *)zone
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_lock(&self->_objectLock);
  v7 = objc_msgSend_allocWithZone_(TSPLazyReference, v6, zone);
  v9 = objc_msgSend_initWithDelegate_identifier_ownershipMode_allowUnknownObject_objectClass_objectProtocol_(v7, v8, WeakRetained, self->_identifier, 0, 0, self->_objectClass, self->_objectProtocol);
  v10 = v9;
  if (v9)
  {
    v11 = atomic_load(&self->_flags);
    atomic_store(v11, (v9 + 32));
    v12 = objc_loadWeakRetained(&self->_component);
    objc_storeWeak(v10 + 7, v12);

    objc_storeStrong(v10 + 2, self->_strongObject);
    v13 = objc_loadWeakRetained(&self->_weakObject);
    objc_storeWeak(v10 + 3, v13);

    os_unfair_lock_unlock(&self->_objectLock);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_lazyReference_didCreateCopy_(WeakRetained, v14, self, v10);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_objectLock);
  }

  return v10;
}

- (TSPObject)weakObject
{
  os_unfair_lock_lock(&self->_objectLock);
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  os_unfair_lock_unlock(&self->_objectLock);

  return WeakRetained;
}

- (void)retainObject:(id)object
{
  obj = object;
  v4 = atomic_load(&self->_flags);
  if ((v4 & 8) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v16 = TSUDynamicCast();
    v19 = v16;
    if (v16)
    {
      v20 = objc_msgSend_object(v16, v17, v18);

      obj = v20;
    }

    v21 = atomic_load(&self->_flags);
    if ((~v21 & 3) == 0 || (v21 & 2) == 0)
    {
      objc_storeStrong(&self->_strongObject, obj);
    }

    objc_storeWeak(&self->_weakObject, obj);
    if (v19 || !self->_objectClass)
    {
      self->_objectClass = objc_opt_class();
    }
  }

  else
  {
    v6 = atomic_load(&self->_flags);
    if ((v6 & 2) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPLazyReference retainObject:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
      objectClass = self->_objectClass;
      if (!objectClass)
      {
        objectClass = objc_opt_class();
      }

      v12 = NSStringFromClass(objectClass);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 426, 0, "Object [%{public}@-%llu] resolved to an unknown object.", v12, self->_identifier);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }
}

- (int64_t)releaseObjectIfPossible
{
  os_unfair_lock_lock(&self->_objectLock);
  if (!self->_strongObject)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_component);

  if (!WeakRetained)
  {
    os_unfair_lock_unlock(&self->_objectLock);
    return 1;
  }

  v6 = atomic_load(&self->_flags);
  strongObject = self->_strongObject;
  if ((v6 & 2) != 0)
  {
    self->_strongObject = 0;

LABEL_10:
    os_unfair_lock_unlock(&self->_objectLock);
    return 0;
  }

  v8 = objc_msgSend_tsp_component(strongObject, v4, v5);
  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_component);

    if (v8 == v9)
    {
      v12 = 2;
    }

    else
    {
      v10 = atomic_load(&self->_flags);
      if ((v10 & 0x10) != 0)
      {
        v12 = 3;
      }

      else
      {
        v11 = self->_strongObject;
        self->_strongObject = 0;

        v12 = 0;
      }
    }

    os_unfair_lock_unlock(&self->_objectLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_objectLock);
    v13 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPLazyReference releaseObjectIfPossible]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 486, 0, "Strong lazy reference %{public}@ to object identifier %llu should never be archived when its referenced object is not archived as well.", self, self->_identifier);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    v12 = 1;
  }

  return v12;
}

- (int64_t)ownershipMode
{
  if (!self->_identifier)
  {
    return 1;
  }

  v2 = atomic_load(&self->_flags);
  if ((~v2 & 3) != 0)
  {
    return (v2 >> 1) & 1;
  }

  else
  {
    return 2;
  }
}

- (void)setIsExternal:(BOOL)external
{
  p_flags = &self->_flags;
  if (external)
  {
    atomic_fetch_or(p_flags, 4u);
  }

  else
  {
    atomic_fetch_and(p_flags, 0xFBu);
  }
}

- (void)resetIdentifierFromCopy:(BOOL)copy
{
  copyCopy = copy;
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  v18 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_msgSend_tsp_identifier(WeakRetained, v6, v7);
    objc_msgSend_resetToIdentifier_(self, v9, v8);
  }

  else
  {
    if (copyCopy)
    {
      objc_msgSend_resetToIdentifier_(self, v6, 0);
    }

    v10 = atomic_load(&self->_flags);
    if ((v10 & 2) == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPLazyReference resetIdentifierFromCopy:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReference.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 536, 0, "You should not reset the lazy reference's identifier when its object isn't loaded in memory.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_additionalDescription(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p %@>", v5, self, v8);

  return v10;
}

- (id)additionalDescription
{
  os_unfair_lock_lock(&self->_objectLock);
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);
  if (WeakRetained)
  {
    v4 = objc_alloc(MEMORY[0x277CCAB68]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = v6;
    identifier = self->_identifier;
    v10 = atomic_load(&self->_flags);
    if ((v10 & 0x10) != 0)
    {
      v11 = objc_msgSend_initWithFormat_(v4, v7, @"loaded_object=[%@-%llu: %p] keep_in_memory=%@", v6, identifier, WeakRetained, @"YES");
    }

    else
    {
      v11 = objc_msgSend_initWithFormat_(v4, v7, @"loaded_object=[%@-%llu: %p] keep_in_memory=%@", v6, identifier, WeakRetained, @"NO");
    }

    v12 = v11;
LABEL_13:

    goto LABEL_14;
  }

  v14 = objc_alloc(MEMORY[0x277CCAB68]);
  objectClass = self->_objectClass;
  if (objectClass)
  {
    v8 = NSStringFromClass(self->_objectClass);
  }

  else
  {
    v8 = @"?";
  }

  v16 = self->_identifier;
  v17 = atomic_load(&self->_flags);
  if ((v17 & 0x10) != 0)
  {
    v18 = objc_msgSend_initWithFormat_(v14, v13, @"unloaded_object=[%@-%llu] keep_in_memory=%@", v8, self->_identifier, @"YES");
  }

  else
  {
    v18 = objc_msgSend_initWithFormat_(v14, v13, @"unloaded_object=[%@-%llu] keep_in_memory=%@", v8, self->_identifier, @"NO");
  }

  v12 = v18;
  if (objectClass)
  {
    goto LABEL_13;
  }

LABEL_14:
  os_unfair_lock_unlock(&self->_objectLock);
  v21 = objc_msgSend_ownershipMode(self, v19, v20);
  if (v21 <= 2)
  {
    objc_msgSend_appendString_(v12, v22, off_27A6E4750[v21]);
  }

  v23 = objc_loadWeakRetained(&self->_component);

  if (v23)
  {
    v24 = objc_loadWeakRetained(&self->_component);
    objc_msgSend_appendFormat_(v12, v25, @" component=%@", v24);
  }

  return v12;
}

- (TSPLazyReferenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSPComponent)component
{
  WeakRetained = objc_loadWeakRetained(&self->_component);

  return WeakRetained;
}

@end