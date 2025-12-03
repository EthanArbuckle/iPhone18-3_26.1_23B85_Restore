@interface TSPComponentWriter
- (BOOL)canSkipArchivingStronglyReferencedObject:(id)object fromComponentRootObject:(id)rootObject;
- (BOOL)isObjectExternalBecauseItAlreadyBelongsToAnotherComponent:(id)component parentObject:(id)object claimingComponent:(id *)claimingComponent claimingPackageIdentifier:(unsigned __int8 *)identifier claimingComponentWillBeCopied:(BOOL *)copied claimingComponentReadVersion:(unint64_t *)version;
- (BOOL)shouldDelayWritingObject:(id)object;
- (BOOL)shouldWriteObject:(id)object;
- (BOOL)validateObjectContextForObject:(id)object;
- (TSPComponentWriter)init;
- (TSPComponentWriter)initWithComponent:(id)component locator:(id)locator rootObject:(id)object delegate:(id)delegate mode:(int64_t)mode packageIdentifier:(unsigned __int8)identifier objectReferenceMapOrNil:(id)nil writeChannel:(id)self0 archiverManager:(id)self1;
- (id).cxx_construct;
- (void)acquireArchiverAccessLockAndWriteObjects:(id)objects parentObject:(id)object completion:(id)completion;
- (void)writeArchiver:(id)archiver forObjectIdentifier:(int64_t)identifier;
- (void)writeObject:(id)object archiver:(id)archiver parentObject:(id)parentObject completion:(id)completion;
- (void)writeWithArchiverAccessLockForObjects:(id)objects parentObject:(id)object completion:(id)completion;
- (void)writeWithCompletionQueue:(id)queue completion:(id)completion;
@end

@implementation TSPComponentWriter

- (TSPComponentWriter)initWithComponent:(id)component locator:(id)locator rootObject:(id)object delegate:(id)delegate mode:(int64_t)mode packageIdentifier:(unsigned __int8)identifier objectReferenceMapOrNil:(id)nil writeChannel:(id)self0 archiverManager:(id)self1
{
  componentCopy = component;
  locatorCopy = locator;
  objectCopy = object;
  delegateCopy = delegate;
  nilCopy = nil;
  channelCopy = channel;
  managerCopy = manager;
  v80 = objectCopy;
  if (!objectCopy)
  {
    TSUSetCrashReporterInfo();
    v71 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSPComponentWriter initWithComponent:locator:rootObject:delegate:mode:packageIdentifier:objectReferenceMapOrNil:writeChannel:archiverManager:]", "[TSPComponentWriter initWithComponent:locator:rootObject:delegate:mode:packageIdentifier:objectReferenceMapOrNil:writeChannel:archiverManager:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm", 110, "rootObject", managerCopy, channelCopy, nilCopy, 0);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v73, v75, 110, 1, "invalid nil value for '%{public}s'", "rootObject");

    TSUCrashBreakpoint();
    abort();
  }

  v83.receiver = self;
  v83.super_class = TSPComponentWriter;
  v20 = [(TSPComponentWriter *)&v83 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_component, component);
    v24 = objc_msgSend_copy(locatorCopy, v22, v23);
    locator = v21->_locator;
    v21->_locator = v24;

    objc_storeStrong(&v21->_rootObject, object);
    objc_storeWeak(&v21->_delegate, delegateCopy);
    v21->_mode = mode;
    v21->_packageIdentifier = identifier;
    objc_storeStrong(&v21->_objectReferenceMap, nil);
    objc_storeStrong(&v21->_writeChannel, channel);
    objc_storeStrong(&v21->_archiverManager, manager);
    v26 = dispatch_semaphore_create(0);
    delegateSemaphore = v21->_delegateSemaphore;
    v21->_delegateSemaphore = v26;

    v28 = [TSPReferenceOrderedSet alloc];
    v30 = objc_msgSend_initWithCapacity_(v28, v29, 1);
    archivedObjects = v21->_archivedObjects;
    v21->_archivedObjects = v30;

    v34 = objc_msgSend_newTspWeakObjectsMapTable(MEMORY[0x277CCAB00], v32, v33);
    archivedObjectsDictionary = v21->_archivedObjectsDictionary;
    v21->_archivedObjectsDictionary = v34;

    v36 = dispatch_group_create();
    writeGroup = v21->_writeGroup;
    v21->_writeGroup = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("TSPComponentWriter.Write", v38);
    writeQueue = v21->_writeQueue;
    v21->_writeQueue = v39;

    *&v21->_flags |= 1u;
    v41 = [TSPReferenceOrderedSet alloc];
    v43 = objc_msgSend_initWithCapacity_(v41, v42, 0);
    weakReferences = v21->_weakReferences;
    v21->_weakReferences = v43;

    v45 = objc_alloc(MEMORY[0x277CCAA50]);
    v47 = objc_msgSend_initWithOptions_capacity_(v45, v46, 512, 0);
    lazyReferences = v21->_lazyReferences;
    v21->_lazyReferences = v47;

    v49 = objc_alloc(MEMORY[0x277CCAA50]);
    v51 = objc_msgSend_initWithOptions_capacity_(v49, v50, 512, 0);
    dataReferences = v21->_dataReferences;
    v21->_dataReferences = v51;

    v53 = objc_opt_new();
    featureInfos = v21->_featureInfos;
    v21->_featureInfos = v53;

    v55 = [TSPReferenceOrderedSet alloc];
    v57 = objc_msgSend_initWithCapacity_(v55, v56, 0);
    externalReferences = v21->_externalReferences;
    v21->_externalReferences = v57;

    v61 = objc_msgSend_ambiguousReferences(componentCopy, v59, v60);
    componentAmbiguousReferences = v21->_componentAmbiguousReferences;
    v21->_componentAmbiguousReferences = v61;

    v63 = objc_alloc_init(MEMORY[0x277CCAB58]);
    ambiguousReferences = v21->_ambiguousReferences;
    v21->_ambiguousReferences = v63;

    if (objc_opt_respondsToSelector())
    {
      v65 = 8;
    }

    else
    {
      v65 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xF7 | v65;
    if (objc_opt_respondsToSelector())
    {
      v66 = 16;
    }

    else
    {
      v66 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xEF | v66;
    if (objc_opt_respondsToSelector())
    {
      v67 = 32;
    }

    else
    {
      v67 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xDF | v67;
    if (objc_opt_respondsToSelector())
    {
      v68 = 64;
    }

    else
    {
      v68 = 0;
    }

    *&v21->_flags = *&v21->_flags & 0xBF | v68;
    if (objc_opt_respondsToSelector())
    {
      v69 = 0x80;
    }

    else
    {
      v69 = 0;
    }

    *&v21->_flags = v69 & 0x80 | *&v21->_flags & 0x7F;
  }

  return v21;
}

- (TSPComponentWriter)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentWriter init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 160, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPComponentWriter init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)writeWithCompletionQueue:(id)queue completion:(id)completion
{
  v28[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  if (self->_rootObject)
  {
    v28[0] = self->_rootObject;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v28, 1);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276A9D0C0;
    v23[3] = &unk_27A6E55B0;
    v23[4] = self;
    v24 = queueCopy;
    v25 = completionCopy;
    objc_msgSend_acquireArchiverAccessLockAndWriteObjects_parentObject_completion_(self, v10, v9, 0, v23);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPComponentWriter writeWithCompletionQueue:completion:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    locator = self->_locator;
    v18 = objc_msgSend_identifier(self->_component, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v14, 167, 0, "Component [%{public}@-%llu] root object should not be nil. Make sure to have a strong reference to the root object before writing its component.", locator, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A9D074;
    block[3] = &unk_27A6E3480;
    v27 = completionCopy;
    dispatch_async(queueCopy, block);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldWriteObject:(id)object
{
  if (objc_msgSend_containsItem_(self->_archivedObjects, a2, object))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_shouldDelayWritingObject_(self, v5, object) ^ 1;
  }
}

- (void)acquireArchiverAccessLockAndWriteObjects:(id)objects parentObject:(id)object completion:(id)completion
{
  objectsCopy = objects;
  objectCopy = object;
  completionCopy = completion;
  dispatch_group_enter(self->_writeGroup);
  archiverManager = self->_archiverManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276A9D374;
  v16[3] = &unk_27A6E39F8;
  v16[4] = self;
  v17 = objectsCopy;
  v18 = objectCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = objectCopy;
  v14 = objectsCopy;
  objc_msgSend_performAsynchronousArchiverAccessUsingBlock_(archiverManager, v15, v16);
}

- (void)writeWithArchiverAccessLockForObjects:(id)objects parentObject:(id)object completion:(id)completion
{
  objectsCopy = objects;
  objectCopy = object;
  block = completion;
  if (objc_msgSend_count(objectsCopy, v10, v11))
  {
    v104 = objectCopy;
    v105 = objectsCopy;
    v106 = 0;
    sub_276A9DAC4(&self->_objectStack, &v104);
  }

  v97 = objectsCopy;
  for (i = self->_objectStack.__end_; i != self->_objectStack.__begin_; i = self->_objectStack.__end_)
  {
    v13 = objectCopy;
    v14 = *(i - 2);
    objectCopy = *(i - 3);

    v15 = *(i - 1);
    v19 = objc_msgSend_count(v14, v16, v17);
    if (v15 < v19)
    {
      do
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(v14, v18, v15);
        v23 = v20;
        LOBYTE(v104) = 0;
        if (self->_mode || v20 == self->_rootObject || (objc_msgSend_isComponentRoot(v20, v21, v22) & 1) == 0 && !objc_msgSend_isObjectExternal_archiverOrNil_parentObject_hasArchiverAccessLock_claimingComponent_isOwnedByDifferentPackage_isAmbiguousOwnership_(self, v21, v23, 0, objectCopy, 1, 0, 0, &v104))
        {
          if (objc_msgSend_shouldWriteObject_(self, v21, v23))
          {
            v30 = v15 + 1;
            *(i - 1) = v30;
            if (!v23)
            {
              break;
            }

            if (objc_msgSend_validateObjectContextForObject_(self, v36, v23))
            {
              v39 = objc_msgSend_allowedObjectTargetTypes(v23, v37, v38);
              v41 = v39;
              if (v39)
              {
                if (v39 == 31)
                {
                  goto LABEL_31;
                }

                if ((*&self->_flags & 4) == 0)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_delegate);
                  self->_objectTargetType = objc_msgSend_objectTargetTypeForComponentWriter_(WeakRetained, v43, self);

                  *&self->_flags |= 4u;
                }

                if ((self->_objectTargetType & ~v41) == 0)
                {
LABEL_31:
                  v34 = v97;
                  if (!objectCopy)
                  {
                    rootObject = self->_rootObject;
                    if (v23 == rootObject)
                    {
                      objectCopy = 0;
                    }

                    else
                    {
                      objectCopy = rootObject;
                    }
                  }

                  dispatch_group_enter(self->_writeGroup);
                  if (v23 == self->_rootObject)
                  {
                    Version = objc_msgSend_componentReadVersion(v23, v76, v77);
                    if (objc_msgSend_componentRequiresCurrentVersion(v23, v79, v80))
                    {
                      v81 = UnsafePointer();
                    }

                    else
                    {
                      v81 = 0;
                    }

                    if (Version <= v81)
                    {
                      v82 = v81;
                    }

                    else
                    {
                      v82 = Version;
                    }

                    self->_componentReadVersion = v82;
                  }

                  v83 = objc_msgSend_archiverForObject_hasArchiverAccessLock_(self->_archiverManager, v76, v23, 1);
                  v86 = objc_msgSend_serializeGroup(v83, v84, v85);
                  writeQueue = self->_writeQueue;
                  v99[0] = MEMORY[0x277D85DD0];
                  v99[1] = 3221225472;
                  v99[2] = sub_276A9DB18;
                  v99[3] = &unk_27A6E5E98;
                  v99[4] = self;
                  v96 = v23;
                  v100 = v96;
                  v101 = v83;
                  v88 = objectCopy;
                  v102 = v88;
                  v103 = block;
                  dispatch_group_notify(v86, writeQueue, v99);

                  if (v14 == v97)
                  {
                    v92 = objc_msgSend_count(v97, v89, v90);
                    if (v30 < v92)
                    {
                      do
                      {
                        archiverManager = self->_archiverManager;
                        v94 = objc_msgSend_objectAtIndexedSubscript_(v97, v91, v30);
                        objc_msgSend_archiveObjectWithLowPriority_(archiverManager, v95, v94);

                        ++v30;
                      }

                      while (v92 != v30);
                    }
                  }

                  v23 = v96;
                  objectCopy = v88;
LABEL_19:
                  v35 = block;
                  goto LABEL_24;
                }

                v61 = MEMORY[0x277D81150];
                v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSPComponentWriter writeWithArchiverAccessLockForObjects:parentObject:completion:]");
                v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
                v63 = v61;
                v64 = self->_rootObject;
                v65 = objc_opt_class();
                v51 = NSStringFromClass(v65);
                v68 = objc_msgSend_tsp_identifier(self->_rootObject, v66, v67);
                v69 = objc_opt_class();
                v56 = NSStringFromClass(v69);
                v72 = objc_msgSend_tsp_identifier(v23, v70, v71);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v73, v46, v48, 296, 0, "Component root object [%{public}@-%llu] cannot have a reference to object [%{public}@-%llu] because it does not support to be archived to %tu target type (allowed target types = %tu).", v51, v68, v56, v72, self->_objectTargetType, v41);
              }

              else
              {
                v45 = MEMORY[0x277D81150];
                v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSPComponentWriter writeWithArchiverAccessLockForObjects:parentObject:completion:]");
                v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
                v49 = self->_rootObject;
                v50 = objc_opt_class();
                v51 = NSStringFromClass(v50);
                v54 = objc_msgSend_tsp_identifier(self->_rootObject, v52, v53);
                v55 = objc_opt_class();
                v56 = NSStringFromClass(v55);
                v59 = objc_msgSend_tsp_identifier(v23, v57, v58);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v60, v46, v48, 288, 0, "Component root object [%{public}@-%llu] cannot have a reference to object [%{public}@-%llu] because it does not support to be archived to any target.", v51, v54, v56, v59);
              }

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
            }

            *&self->_flags &= ~1u;
            v35 = block;
            dispatch_group_notify(self->_writeGroup, self->_writeQueue, block);
            goto LABEL_21;
          }
        }

        else
        {
          if (!objc_msgSend_validateObjectContextForObject_(self, v21, v23))
          {
            *&self->_flags &= ~1u;
            v35 = block;
            dispatch_group_notify(self->_writeGroup, self->_writeQueue, block);

            v23 = v14;
LABEL_21:
            v34 = v97;
            goto LABEL_24;
          }

          objc_msgSend_addItem_(self->_externalReferences, v24, v23);
          if (v104 == 1)
          {
            ambiguousReferences = self->_ambiguousReferences;
            v28 = objc_msgSend_tsp_identifier(v23, v25, v26);
            objc_msgSend_addIndex_(ambiguousReferences, v29, v28);
          }
        }

        ++v15;
      }

      while (v19 != v15);
    }

    sub_276AA0014(&self->_objectStack, self->_objectStack.__end_ - 24);
  }

  v31 = objc_loadWeakRetained(&self->_delegate);
  v23 = objc_msgSend_componentWriterWantsDelayedObjects_(v31, v32, self);

  v34 = v97;
  if (v23)
  {
    objc_msgSend_writeWithArchiverAccessLockForObjects_parentObject_completion_(self, v33, v23, 0, block);
    goto LABEL_19;
  }

  v35 = block;
  if (block)
  {
    dispatch_group_notify(self->_writeGroup, self->_writeQueue, block);
  }

LABEL_24:
}

- (void)writeObject:(id)object archiver:(id)archiver parentObject:(id)parentObject completion:(id)completion
{
  objectCopy = object;
  archiverCopy = archiver;
  parentObjectCopy = parentObject;
  completionCopy = completion;
  if (objc_msgSend_beginWrite(archiverCopy, v14, v15))
  {
    objc_msgSend_addItem_(self->_archivedObjects, v16, objectCopy);
    archivedObjectsDictionary = self->_archivedObjectsDictionary;
    v20 = objc_msgSend_tsp_identifier(objectCopy, v18, v19);
    objc_msgSend_tsp_setObject_forIdentifier_(archivedObjectsDictionary, v21, objectCopy, v20);
    mode = self->_mode;
    if (!mode)
    {
      objc_msgSend_validateExplicitComponentOwnershipForObject_archiverOrNil_parentObject_hasArchiverAccessLock_(self, v22, objectCopy, archiverCopy, parentObjectCopy, 0);
      mode = self->_mode;
    }

    if ((mode > 3 || mode == 1) && (objc_msgSend_aggregatedWeakReferences(archiverCopy, v22, v23), v48 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend_count(v48, v49, v50), v48, v51))
    {
      v52 = objc_msgSend_aggregatedStrongReferences(archiverCopy, v22, v23);
      v55 = objc_msgSend_count(v52, v53, v54);

      if (self->_mode == 1)
      {
        v58 = objc_msgSend_aggregatedWeakReferences(archiverCopy, v56, v57);
        v55 += objc_msgSend_count(v58, v59, v60);
      }

      v61 = [TSPReferenceOrderedSet alloc];
      v26 = objc_msgSend_initWithCapacity_(v61, v62, v55);
      v65 = objc_msgSend_aggregatedStrongReferences(archiverCopy, v63, v64);
      objc_msgSend_unionSet_(v26, v66, v65);

      if (self->_mode == 1)
      {
        v68 = objc_msgSend_aggregatedWeakReferences(archiverCopy, v25, v67);
        objc_msgSend_unionSet_(v26, v69, v68);
      }
    }

    else
    {
      v26 = objc_msgSend_aggregatedStrongReferences(archiverCopy, v22, v23);
    }

    objc_msgSend_addReferencesFromObject_archiver_(self->_objectReferenceMap, v25, objectCopy, archiverCopy);
    v29 = objc_msgSend_tsp_identifier(objectCopy, v27, v28);
    objc_msgSend_writeArchiver_forObjectIdentifier_(self, v30, archiverCopy, v29);
    objc_msgSend_cleanup(archiverCopy, v31, v32);
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_276A9DFEC;
    v79 = sub_276A9DFFC;
    v80 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = objc_msgSend_count(v26, v33, v34);
    if (v72[3])
    {
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_276A9E004;
      v70[3] = &unk_27A6E6458;
      v70[4] = self;
      v70[5] = &v75;
      v70[6] = &v71;
      objc_msgSend_enumerateItemsUsingBlock_(v26, v35, v70);
    }

    objc_msgSend_acquireArchiverAccessLockAndWriteObjects_parentObject_completion_(self, v35, v76[5], objectCopy, completionCopy);
    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v75, 8);
  }

  else
  {
    v75 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_msgSend_componentWriter_wantsComponentOfObject_componentReadVersion_(WeakRetained, v37, self, objectCopy, &v75);

    LOBYTE(v71) = 0;
    v40 = objc_msgSend_explicitComponentRootObject(archiverCopy, v38, v39);
    objc_msgSend_validateAmbiguousObjectOwnershipForObject_explicitComponentRootObject_parentObject_claimingComponent_claimingPackageIdentifier_claimingComponentWillBeCopied_claimingComponentReadVersion_isAmbiguousOwnership_(self, v41, objectCopy, v40, parentObjectCopy, v26, self->_packageIdentifier, 0, v75, &v71);

    if ((objc_msgSend_containsItem_(self->_archivedObjects, v42, objectCopy) & 1) == 0)
    {
      objc_msgSend_addItem_(self->_externalReferences, v43, objectCopy);
    }

    if (v71 == 1)
    {
      ambiguousReferences = self->_ambiguousReferences;
      v46 = objc_msgSend_tsp_identifier(objectCopy, v43, v44);
      objc_msgSend_addIndex_(ambiguousReferences, v47, v46);
    }

    objc_msgSend_acquireArchiverAccessLockAndWriteObjects_parentObject_completion_(self, v43, 0, 0, completionCopy);
  }
}

- (void)writeArchiver:(id)archiver forObjectIdentifier:(int64_t)identifier
{
  v90 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v9 = archiverCopy;
  if (*&self->_flags)
  {
    if (objc_msgSend_success(archiverCopy, v7, v8))
    {
      v12 = objc_msgSend_objectUUID(v9, v10, v11);
      v15 = v12 != 0;
      v82 = v12;
      if (v12)
      {
        componentObjectUUIDMap = self->_componentObjectUUIDMap;
        if (!componentObjectUUIDMap)
        {
          v17 = objc_alloc_init(TSPMutableComponentObjectUUIDMap);
          v18 = self->_componentObjectUUIDMap;
          self->_componentObjectUUIDMap = v17;

          componentObjectUUIDMap = self->_componentObjectUUIDMap;
        }

        v20 = objc_msgSend_setObjectUUID_forIdentifier_(componentObjectUUIDMap, v13, v82, identifier);
        if (v82 != v20 && (objc_msgSend_isEqual_(v82, v19, v20) & 1) == 0)
        {
          v69 = MEMORY[0x277D81150];
          v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]");
          v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
          v75 = objc_msgSend_locator(self->_component, v73, v74);
          v78 = objc_msgSend_identifier(self->_component, v76, v77);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v79, v70, v72, 521, 0, "Archived two objects with the same identifier %llu in component [%{public}@-%llu] with different UUIDs: %{public}@ and %{public}@", identifier, v75, v78, v20, v82);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
          *&self->_flags &= ~1u;

LABEL_25:
          goto LABEL_26;
        }
      }

      v22 = objc_msgSend_aggregatedCountedDataReferences(v9, v13, v14);
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = sub_276A9E83C;
      v87[3] = &unk_27A6E6480;
      v87[4] = self;
      v87[5] = identifier;
      v88 = v15;
      objc_msgSend_enumerateIdentifiersUsingBlock_(v22, v23, v87);
      objc_msgSend_aggregatedDataReferences(v9, v24, v25);
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v26 = v84 = 0u;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v83, v89, 16);
      if (v30)
      {
        v31 = *v84;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v84 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = objc_msgSend_identifier(*(*(&v83 + 1) + 8 * i), v28, v29);
            v35 = objc_msgSend_countForIdentifier_default_(v22, v34, v33, 0);
            if (v35 <= 0)
            {
              v61 = MEMORY[0x277D81150];
              v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]");
              v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 545, 0, "Counted data references didn't include reference for data identifier %llu. count=%td", v33, v35);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
              *&self->_flags &= ~1u;
              v51 = v26;
              goto LABEL_24;
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v83, v89, 16);
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      objc_msgSend_unionHashTable_(self->_dataReferences, v36, v26);
      weakReferences = self->_weakReferences;
      v40 = objc_msgSend_aggregatedWeakReferences(v9, v38, v39);
      objc_msgSend_unionSet_(weakReferences, v41, v40);

      lazyReferences = self->_lazyReferences;
      v45 = objc_msgSend_aggregatedLazyReferences(v9, v43, v44);
      objc_msgSend_unionHashTable_(lazyReferences, v46, v45);

      v51 = objc_msgSend_featureInfos(v9, v47, v48);
      if (v51)
      {
        objc_msgSend_unionSet_(self->_featureInfos, v49, v51);
      }

      v53 = objc_msgSend_serializedData(v9, v49, v50);
      if (!v53)
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]");
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 561, 0, "Archiver hasn't been serialized");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
      }

      objc_msgSend_writeData_(self->_writeChannel, v52, v53);

LABEL_24:
      goto LABEL_25;
    }

    *&self->_flags &= ~1u;
  }

LABEL_26:

  v68 = *MEMORY[0x277D85DE8];
}

- (BOOL)canSkipArchivingStronglyReferencedObject:(id)object fromComponentRootObject:(id)rootObject
{
  selfCopy = self;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276A9EA60;
  v10[3] = &unk_27A6E64A8;
  v10[4] = selfCopy;
  v10[5] = &v11;
  objc_msgSend_componentWriter_canSkipArchivingStronglyReferencedObject_fromComponentRootObject_completion_(WeakRetained, v8, selfCopy, object, rootObject, v10);

  dispatch_semaphore_wait(selfCopy->_delegateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(selfCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return selfCopy;
}

- (BOOL)isObjectExternalBecauseItAlreadyBelongsToAnotherComponent:(id)component parentObject:(id)object claimingComponent:(id *)claimingComponent claimingPackageIdentifier:(unsigned __int8 *)identifier claimingComponentWillBeCopied:(BOOL *)copied claimingComponentReadVersion:(unint64_t *)version
{
  componentCopy = component;
  objectCopy = object;
  Version = 0;
  if (self->_packageIdentifier != 1 && (*&self->_flags & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v35 = 0;
    v34 = objc_msgSend_componentWriter_externalPackageDidWriteObject_claimingComponent_componentReadVersion_(WeakRetained, v33, self, componentCopy, &v35, &Version);
    v19 = v35;

    if (v34)
    {
      v28 = 0;
      v25 = 1;
      if (!claimingComponent)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v18 = v19;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_tsp_component(componentCopy, v15, v16);

  if (v19 == self->_component || (*&self->_flags & 0x20) == 0 || (v20 = objc_loadWeakRetained(&self->_delegate), v22 = objc_msgSend_componentWriter_object_belongsToCopiedComponent_(v20, v21, self, componentCopy, v19), v20, !v22))
  {
    v30 = 0;
    goto LABEL_17;
  }

  v25 = objc_msgSend_packageIdentifier(v19, v23, v24);
  Version = objc_msgSend_componentReadVersion(v19, v26, v27);
  v28 = 1;
  if (claimingComponent)
  {
LABEL_8:
    v29 = v19;
    *claimingComponent = v19;
  }

LABEL_9:
  if (identifier)
  {
    *identifier = v25;
  }

  if (copied)
  {
    *copied = v28;
  }

  if (version)
  {
    *version = Version;
  }

  v30 = 1;
LABEL_17:

  return v30;
}

- (BOOL)shouldDelayWritingObject:(id)object
{
  objectCopy = object;
  if ((*&self->_flags & 0x80000000) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    shouldDelayWritingObject = objc_msgSend_componentWriter_shouldDelayWritingObject_(WeakRetained, v7, self, objectCopy);
  }

  else
  {
    shouldDelayWritingObject = 0;
  }

  return shouldDelayWritingObject;
}

- (BOOL)validateObjectContextForObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_context(objectCopy, v5, v6);
  v10 = objc_msgSend_context(self->_rootObject, v8, v9);

  if (v7 != v10)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPComponentWriter validateObjectContextForObject:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    rootObject = self->_rootObject;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v19 = objc_msgSend_tsp_identifier(self->_rootObject, v17, v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v24 = objc_msgSend_tsp_identifier(objectCopy, v22, v23);
    v27 = objc_msgSend_context(objectCopy, v25, v26);
    v30 = objc_msgSend_context(self->_rootObject, v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v31, v36, v13, 687, 0, "Component root object [%{public}@-%llu] cannot have a reference to object [%{public}@-%llu] because it belongs to a different object context %p (expected object context: %p).", v16, v19, v21, v24, v27, v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  return v7 == v10;
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

@end