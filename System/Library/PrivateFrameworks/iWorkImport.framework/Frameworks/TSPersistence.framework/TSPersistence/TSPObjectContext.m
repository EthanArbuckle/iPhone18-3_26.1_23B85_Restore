@interface TSPObjectContext
+ (BOOL)isNativeDirectoryFormatURL:(id)a3;
+ (BOOL)isTangierEditingDirectoryFormatURL:(id)a3;
+ (BOOL)isTangierEditingFormatURL:(id)a3;
+ (BOOL)validateCRCForDocumentAtURL:(id)a3 error:(id *)a4;
+ (TSPObjectContext)contextForTransientObjects;
+ (id)documentRevisionAtURL:(id)a3 passphrase:(id)a4 error:(id *)a5;
+ (id)downloadURLForDataWithDigest:(id)a3;
+ (id)releaseQueue;
+ (id)supportBundleURLForDocumentUUID:(id)a3 delegate:(id)a4;
+ (void)removeDefaultSupportDirectory;
- (BOOL)areExternalReferencesToDataAllowedAtURL:(id)a3;
- (BOOL)areNewExternalReferencesToDataAllowed;
- (BOOL)canModifyObject:(id)a3;
- (BOOL)canPerformUserActions;
- (BOOL)containsDataConformingToUTI:(id)a3;
- (BOOL)continueReadingDocumentObjectFromDatabasePackageURL:(id)a3 error:(id *)a4;
- (BOOL)copyIfAppropriateFromOriginalURL:(id)a3 toURL:(id)a4 cloneMode:(BOOL)a5 originalPackage:(id)a6 packageType:(int64_t)a7 inheritAttributes:(BOOL)a8;
- (BOOL)didFinishSuccessfullyReadingObjects:(id)a3 readCoordinator:(id)a4 finalizeHandlerQueue:(id)a5;
- (BOOL)endAddingLoadedObjects;
- (BOOL)hasCurrentFileFormatVersion;
- (BOOL)hasExternalReferenceOrMissingOrUnmaterializedRemoteData;
- (BOOL)hasMissingOrUnmaterializedRemoteData;
- (BOOL)ignoreDataLifecycleErrors;
- (BOOL)ignoreDocumentSupport;
- (BOOL)isDocumentSupportTemporary;
- (BOOL)isInCollaborationMode;
- (BOOL)isInReadOnlyMode;
- (BOOL)isObjectInDocument:(id)a3;
- (BOOL)isPasswordProtected;
- (BOOL)isResourceAccessTypeFinished:(int64_t)a3;
- (BOOL)readComponent:(id)a3 isWeakReference:(BOOL)a4 documentPackage:(id)a5 supportPackage:(id)a6 rootObject:(id *)a7 allObjects:(id *)a8 error:(id *)a9;
- (BOOL)readComponent:(id)a3 isWeakReference:(BOOL)a4 rootObject:(id *)a5 allObjects:(id *)a6 error:(id *)a7;
- (BOOL)readDocumentObjectFromDatabasePackageURL:(id)a3 error:(id *)a4;
- (BOOL)readDocumentObjectFromPackageURL:(id)a3 error:(id *)a4;
- (BOOL)readLazyReference:(id)a3 object:(id *)a4 error:(id *)a5;
- (BOOL)readWithReadCoordinator:(id)a3 finalizeHandlerQueue:(id)a4 rootObject:(id *)a5 error:(id *)a6 readCompletion:(id)a7;
- (BOOL)saveToURL:(id)a3 packageType:(int64_t)a4 encryptionKey:(id)a5 originalURL:(id)a6 error:(id *)a7;
- (BOOL)setDecryptionKey:(id)a3;
- (BOOL)setPassphrase:(id)a3;
- (BOOL)shouldLoadAllComponentsForDocumentURL:(id)a3;
- (BOOL)shouldUseCloneModeToWriteToURL:(id)a3 originalURL:(id)a4;
- (BOOL)updateDocumentUUIDPreserveOriginalDocumentSupport:(BOOL)a3 preserveShareUUID:(BOOL)a4 preserveStableDocumentUUID:(BOOL)a5 error:(id *)a6;
- (BOOL)writeToURL:(id)a3 encryptionKey:(id)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 originalPackage:(id)a4 supportURL:(id)a5 originalSupportPackage:(id)a6 encryptionKey:(id)a7 error:(id *)a8;
- (NSArray)allDataWithLastDigestMismatch;
- (NSArray)allErasedDataWithLastDigestMismatch;
- (NSData)keychainGenericItem;
- (NSFilePresenter)filePresenter;
- (NSSet)featureIdentifiers;
- (NSSet)unsupportedFeatureIdentifiers;
- (NSString)lastPasswordAttempted;
- (NSURL)documentURL;
- (NSURL)supportURL;
- (NSUUID)documentUUID;
- (NSUUID)versionUUID;
- (SFUCryptoKey)decryptionKey;
- (TSPDocumentProperties)documentProperties;
- (TSPDocumentRevision)documentRevision;
- (TSPObjectContext)init;
- (TSPObjectContext)initWithDelegate:(id)a3;
- (TSPObjectContext)initWithDelegate:(id)a3 registry:(id)a4 resourceContext:(id)a5 mode:(unsigned int)a6 isLoadingDocument:(BOOL)a7 shouldCreateInternalMetadataObject:(BOOL)a8;
- (TSPObjectContextDelegate)delegate;
- (TSPPackage)documentPackage;
- (TSPPackage)supportPackage;
- (id).cxx_construct;
- (id)UUIDsFromObjects:(id)a3;
- (id)allValidatedDataWithDigestMismatchCreatedPriorToVersion:(unint64_t)a3;
- (id)anonymousIdentifierForDigest:(id)a3;
- (id)baseUUIDForObjectUUID;
- (id)currentPackageDataWriter;
- (id)dataObserversConformingToProtocol:(id)a3;
- (id)dataWithContentsOfPackagePath:(id)a3;
- (id)dataWithDigest:(id)a3;
- (id)dataWithLegacyDataIdentifier:(int64_t)a3;
- (id)documentLoadValidationPolicy;
- (id)documentResourceDataForDigestString:(id)a3 locator:(id)a4 filename:(id)a5 canDownload:(BOOL)a6;
- (id)documentSaveValidationPolicy;
- (id)incrementDocumentRevisionWithIdentifier:(id)a3;
- (id)newObjectUUIDForObject:(id)a3 uuidNamespace:(unsigned __int8)a4 offset:(unint64_t)a5 ignoringBaseUUIDForObjectUUID:(BOOL)a6 requireDeterministicUUID:(BOOL)a7;
- (id)objectForIdentifier:(int64_t)a3;
- (id)objectUUIDMap:(id)a3 needsObjectForIdentifier:(int64_t)a4 componentIdentifier:(int64_t)a5 onlyIfLoaded:(BOOL)a6;
- (id)objectWithUUID:(id)a3;
- (id)objectWithUUIDIfAvailable:(id)a3;
- (id)objectWithUUIDIfAvailableAndLoaded:(id)a3;
- (id)objectWithUUIDPath:(id)a3;
- (id)objectsFromUUIDs:(id)a3;
- (id)performResourceAccessUsingQueue:(id)a3 block:(id)a4;
- (id)prepareSaveProgress;
- (id)supportDirectoryURLReturningIsBundleURL:(BOOL *)a3;
- (id)temporaryDirectory;
- (int64_t)aggregateReadabilityForDocumentResources;
- (int64_t)incrementLastObjectIdentifier:(int64_t)a3;
- (int64_t)packageType;
- (int64_t)preferredPackageType;
- (unint64_t)documentDataSize;
- (unint64_t)documentObjectSize;
- (unint64_t)documentReadVersion;
- (unint64_t)estimatedProgressTotalUnitCountForURL:(id)a3 packageType:(int64_t)a4 originalDocumentURL:(id)a5;
- (unint64_t)fileFormatVersion;
- (unint64_t)reservedDocumentDataSize;
- (unint64_t)sizeOfComponentsWithLocator:(id)a3;
- (void)addDataObserver:(id)a3;
- (void)addLoadObserver:(id)a3 action:(SEL)a4 forLazyReference:(id)a5;
- (void)addLoadObserver:(id)a3 action:(SEL)a4 forObjectIdentifier:(int64_t)a5 objectOrNil:(id)a6;
- (void)addLoadedObjectsAndEnqueueNotifications:(id)a3;
- (void)addObjectModifyDelegate:(id)a3;
- (void)applyDeferredInitialDataProperties;
- (void)beginAddingLoadedObjects;
- (void)beginAssertOnModify;
- (void)beginIgnoringModificationsForObject:(id)a3;
- (void)beginSaveToURL:(id)a3 updateType:(int64_t)a4 packageType:(int64_t)a5 documentUUID:(id)a6;
- (void)beginWriteOperation;
- (void)beginWriteWithOriginalURL:(id)a3 relativeURLForExternalData:(id)a4;
- (void)canPerformUserActionUsingBlock:(id)a3;
- (void)checkForDataWarnings;
- (void)createInternalMetadataIfNeeded;
- (void)dataInDocumentDidChangeForDataReferenceMap:(id)a3;
- (void)dealloc;
- (void)didEncounterValidationError:(id)a3 forData:(id)a4 timing:(int64_t)a5;
- (void)didMoveSupportToURL:(id)a3;
- (void)didMoveToURL:(id)a3;
- (void)didReadDocumentObject:(id)a3;
- (void)didReadSupportObject:(id)a3;
- (void)endAssertOnModify;
- (void)endIgnoringModificationsForObject:(id)a3;
- (void)ensureObject:(id)a3 isKnownWithIdentifier:(int64_t)a4;
- (void)enumerateAllDataUsingBlock:(id)a3;
- (void)enumerateDataInDocumentUsingBlock:(id)a3;
- (void)enumerateDocumentResourcesUsingBlock:(id)a3;
- (void)enumerateObjectProvidersUsingBlock:(id)a3;
- (void)handleFatalError:(id)a3 withReason:(id)a4;
- (void)logDocumentStatistics;
- (void)performBlockIgnoringDataLifecycleErrors:(id)a3;
- (void)performReadOperation:(id)a3;
- (void)performReadOperationOnKnownObjects:(id)a3;
- (void)performReadUsingAccessor:(id)a3;
- (void)performReadUsingAccessorImpl:(id)a3;
- (void)prepareForDocumentDumpWithDocumentPackage:(id)a3 supportPackage:(id)a4 documentRevision:(id)a5 passphrase:(id)a6;
- (void)prepareToReadSupportObjectExternalDataReferencesAllowed:(BOOL)a3 finalizeHandlerQueue:(id)a4 objects:(id *)a5 accessor:(id)a6;
- (void)presentPersistenceError:(id)a3;
- (void)registerAsynchronousObjectModifier:(id)a3;
- (void)registerObjectProvider:(id)a3;
- (void)removeDataObserver:(id)a3;
- (void)removeObjectModifyDelegate:(id)a3;
- (void)replaceDocumentObject:(id)a3;
- (void)requestAutosave;
- (void)requestAutosaveForExpensiveCalculation;
- (void)resetDocumentRevision;
- (void)resumeAsynchronousModifications;
- (void)resumeAutosaveWithReason:(id)a3;
- (void)resumeSaveAndAutosaveWithReason:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDocumentObject:(id)a3;
- (void)setDocumentProperties:(id)a3;
- (void)setDocumentRevision:(id)a3;
- (void)setLastObjectIdentifier:(int64_t)a3;
- (void)setPreferredPackageType:(int64_t)a3;
- (void)setProperties:(DataProperties *)a3 forData:(id)a4;
- (void)setSupportObject:(id)a3;
- (void)setSupportObjectImpl:(id)a3;
- (void)suspendAsynchronousModificationsForObjectTargetType:(unint64_t)a3;
- (void)suspendAutosaveWithReason:(id)a3;
- (void)suspendSaveAndAutosaveWithReason:(id)a3;
- (void)updateAdditionalResourceRequests;
- (void)waitForSaveToFinishIfNeeded;
- (void)willModifyObject:(id)a3 options:(unint64_t)a4;
@end

@implementation TSPObjectContext

+ (id)releaseQueue
{
  if (qword_280A523D8 != -1)
  {
    sub_276BD0BC4();
  }

  v3 = qword_280A523D0;

  return v3;
}

- (TSPObjectContext)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 321, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectContext init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectContext)initWithDelegate:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedRegistry(TSPRegistry, v5, v6);
  InternalMetadataObject = objc_msgSend_initWithDelegate_registry_resourceContext_mode_isLoadingDocument_shouldCreateInternalMetadataObject_(self, v8, v4, v7, 0, 0, 0, 1);

  return InternalMetadataObject;
}

- (TSPObjectContext)initWithDelegate:(id)a3 registry:(id)a4 resourceContext:(id)a5 mode:(unsigned int)a6 isLoadingDocument:(BOOL)a7 shouldCreateInternalMetadataObject:(BOOL)a8
{
  v138 = a8;
  v13 = a3;
  v14 = a4;
  v16 = a5;
  if (!v14)
  {
    TSUSetCrashReporterInfo();
    v132 = MEMORY[0x277D81150];
    v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "[TSPObjectContext initWithDelegate:registry:resourceContext:mode:isLoadingDocument:shouldCreateInternalMetadataObject:]", "[TSPObjectContext initWithDelegate:registry:resourceContext:mode:isLoadingDocument:shouldCreateInternalMetadataObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 329);
    v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v132, v137, v134, v136, 329, 1, "Expected registry to be non-nil");

    TSUCrashBreakpoint();
    abort();
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPObjectContext initWithDelegate:registry:resourceContext:mode:isLoadingDocument:shouldCreateInternalMetadataObject:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 330, 0, "Invalid parameter not satisfying: %{public}s", "delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v139.receiver = self;
  v139.super_class = TSPObjectContext;
  v24 = [(TSPObjectContext *)&v139 init];
  v25 = v24;
  v26 = v24;
  if (v24)
  {
    v24->_dataObserversLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v27 = objc_alloc(MEMORY[0x277CCAA50]);
    v29 = objc_msgSend_initWithOptions_capacity_(v27, v28, 517, 0);
    dataObservers = v26->_dataObservers;
    v26->_dataObservers = v29;

    objc_msgSend_setDelegate_(v26, v31, v13);
    objc_storeStrong(&v25->_registry, a4);
    v26->_mode = a6;
    if (v16)
    {
      v32 = v16;
    }

    else
    {
      v32 = objc_opt_new();
    }

    resourceContext = v26->_resourceContext;
    v26->_resourceContext = v32;

    v34 = [TSPDataDownloadManager alloc];
    v36 = objc_msgSend_initWithContext_(v34, v35, v26);
    dataDownloadManager = v26->_dataDownloadManager;
    v26->_dataDownloadManager = v36;

    v38 = objc_alloc_init(TSPDownloadObserverManager);
    downloadObserverManager = v26->_downloadObserverManager;
    v26->_downloadObserverManager = v38;

    v40 = [TSPComponentManager alloc];
    v42 = objc_msgSend_initWithContext_(v40, v41, v26);
    componentManager = v26->_componentManager;
    v26->_componentManager = v42;

    v44 = [TSPDataManager alloc];
    v46 = objc_msgSend_initWithContext_(v44, v45, v26);
    dataManager = v26->_dataManager;
    v26->_dataManager = v46;

    v48 = [TSPSupportManager alloc];
    v50 = objc_msgSend_initWithContext_(v48, v49, v26);
    supportManager = v26->_supportManager;
    v26->_supportManager = v50;

    v52 = [TSPObjectUUIDMap alloc];
    v54 = objc_msgSend_initWithDelegate_(v52, v53, v26);
    objectUUIDMap = v26->_objectUUIDMap;
    v26->_objectUUIDMap = v54;

    v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deterministicObjectUUIDSetPerObject = v26->_deterministicObjectUUIDSetPerObject;
    v26->_deterministicObjectUUIDSetPerObject = v56;

    v58 = [TSPDataReferenceMap alloc];
    v60 = objc_msgSend_initWithDelegate_(v58, v59, v26);
    dataReferenceMap = v26->_dataReferenceMap;
    v26->_dataReferenceMap = v60;

    if (!a7)
    {
      objc_msgSend_markAsReady(v26->_dataReferenceMap, v62, v63);
    }

    v26->_documentPropertiesLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v64 = objc_alloc_init(TSPDocumentProperties);
    documentProperties = v26->_documentProperties;
    v26->_documentProperties = v64;

    v66 = [TSPDocumentRevision alloc];
    v69 = objc_msgSend_versionUUID(v26->_documentProperties, v67, v68);
    v71 = objc_msgSend_initWithSequence_identifier_(v66, v70, 0, v69);
    documentRevision = v26->_documentRevision;
    v26->_documentRevision = v71;

    v75 = objc_msgSend_newTspWeakObjectsMapTable(MEMORY[0x277CCAB00], v73, v74);
    objects = v26->_objects;
    v26->_objects = v75;

    v77 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v78 = dispatch_queue_create("TSPObjectContext.Objects", v77);
    objectsQueue = v26->_objectsQueue;
    v26->_objectsQueue = v78;

    v80 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v81 = dispatch_queue_create("TSPObjectContext.Write", v80);
    writeQueue = v26->_writeQueue;
    v26->_writeQueue = v81;

    v83 = objc_alloc_init(MEMORY[0x277CCAC60]);
    readLock = v26->_readLock;
    v26->_readLock = v83;

    v85 = MEMORY[0x277D85CD8];
    v86 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v87 = dispatch_queue_create("TSPObjectContext.DocumentState", v86);
    documentStateQueue = v26->_documentStateQueue;
    v26->_documentStateQueue = v87;

    v89 = dispatch_queue_attr_make_with_autorelease_frequency(v85, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v90 = dispatch_queue_create("TSPObjectContext.DataAttributes", v89);
    dataAttributesQueue = v26->_dataAttributesQueue;
    v26->_dataAttributesQueue = v90;

    v92 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v93 = dispatch_queue_create("TSPObjectContext.ResourceAccess", v92);
    resourceAccessQueue = v26->_resourceAccessQueue;
    v26->_resourceAccessQueue = v93;

    atomic_store(0x63uLL, &v25->_lastObjectIdentifier);
    atomic_store(1uLL, &v25->_modifyObjectToken);
    v95 = objc_alloc(MEMORY[0x277CCAA50]);
    v97 = objc_msgSend_initWithOptions_capacity_(v95, v96, 512, 0);
    objectModifyDelegates = v26->_objectModifyDelegates;
    v26->_objectModifyDelegates = v97;

    v99 = dispatch_group_create();
    pendingEndSaveGroup = v26->_pendingEndSaveGroup;
    v26->_pendingEndSaveGroup = v99;

    v101 = dispatch_group_create();
    outstandingReadsGroup = v26->_outstandingReadsGroup;
    v26->_outstandingReadsGroup = v101;

    v103 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v104 = dispatch_queue_create("TSPObjectContext.LoadObservers", v103);
    loadObserversQueue = v26->_loadObserversQueue;
    v26->_loadObserversQueue = v104;

    v106 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v107 = dispatch_queue_create("TSPObjectContext.RunLoadObservers", v106);
    runLoadObserversQueue = v26->_runLoadObserversQueue;
    v26->_runLoadObserversQueue = v107;

    v109 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v110 = dispatch_queue_create("TSPObjectContext.Notification", v109);
    notificationQueue = v26->_notificationQueue;
    v26->_notificationQueue = v110;

    v112 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v113 = dispatch_queue_create("TSPObjectContext.TemporaryDirectory", v112);
    temporaryDirectoryQueue = v26->_temporaryDirectoryQueue;
    v26->_temporaryDirectoryQueue = v113;

    v115 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v116 = dispatch_queue_create("TSPObjectContext.AsynchronousObjectModifiers", v115);
    asynchronousObjectModifierQueue = v26->_asynchronousObjectModifierQueue;
    v26->_asynchronousObjectModifierQueue = v116;

    v118 = objc_alloc(MEMORY[0x277CCAA50]);
    v120 = objc_msgSend_initWithOptions_capacity_(v118, v119, 517, 0);
    asynchronousObjectModifiers = v26->_asynchronousObjectModifiers;
    v26->_asynchronousObjectModifiers = v120;

    v26->_deferredInitialDataPropertiesBlocksLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v122 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferredInitialDataPropertiesBlocks = v26->_deferredInitialDataPropertiesBlocks;
    v26->_deferredInitialDataPropertiesBlocks = v122;

    if (v138)
    {
      objc_msgSend_createInternalMetadataIfNeeded(v26, v124, v125);
    }

    v126 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v124, v125);
    objectProviders = v26->_objectProviders;
    v26->_objectProviders = v126;

    v128 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v129 = dispatch_queue_create("TSPObjectContext.ObjectProviders", v128);
    objectProvidersQueue = v26->_objectProvidersQueue;
    v26->_objectProvidersQueue = v129;

    __dmb(0xBu);
  }

  return v26;
}

+ (BOOL)isNativeDirectoryFormatURL:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isValidPackageAtURL_(TSPDirectoryPackage, v4, v3))
  {
    isValidPackageAtURL = 1;
  }

  else
  {
    isValidPackageAtURL = objc_msgSend_isValidPackageAtURL_(TSPExpandedDirectoryPackage, v5, v3);
  }

  return isValidPackageAtURL;
}

+ (BOOL)isTangierEditingDirectoryFormatURL:(id)a3
{
  v3 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(a3, a2, @"index.db", 0);
  v5 = objc_msgSend_checkResourceIsReachableAndReturnError_(v3, v4, 0);

  return v5;
}

+ (BOOL)isTangierEditingFormatURL:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isTangierEditingDirectoryFormatURL_(a1, v5, v4))
  {
    isValidTangierEditingFormatAtURL = 1;
  }

  else
  {
    isValidTangierEditingFormatAtURL = objc_msgSend_isValidTangierEditingFormatAtURL_(TSPFilePackage, v6, v4);
  }

  return isValidTangierEditingFormatAtURL;
}

- (void)logDocumentStatistics
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  componentManager = self->_componentManager;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_276997A74;
  v24[3] = &unk_27A6E2848;
  v24[4] = v26;
  v24[5] = v25;
  objc_msgSend_enumerateComponents_(componentManager, v5, v24);
  objc_msgSend_allData(self->_dataManager, v6, v7);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v8 = v21 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v27, 16);
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        isExternalData = objc_msgSend_isExternalData(v15, v10, v11, v20);
        if (objc_msgSend_isInDocument(v15, v17, v18) && ((objc_msgSend_isApplicationData(v15, v10, v11) | isExternalData) & 1) == 0)
        {
          objc_msgSend_encodedLengthIfLocal(v15, v10, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v20, v27, 16);
    }

    while (v12);
  }

  if (UnsafePointer != -1)
  {
    sub_276BD0C64();
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  objc_autoreleasePoolPop(v3);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)createInternalMetadataIfNeeded
{
  if (!self->_documentMetadata)
  {
    v3 = [TSPDocumentMetadata alloc];
    v5 = objc_msgSend_initWithContext_(v3, v4, self);
    documentMetadata = self->_documentMetadata;
    self->_documentMetadata = v5;

    objc_msgSend_applyDeferredInitialDataProperties(self, v7, v8);
  }

  if (!self->_supportMetadata)
  {
    v9 = [TSPSupportMetadata alloc];
    v11 = objc_msgSend_initWithContext_(v9, v10, self);
    supportMetadata = self->_supportMetadata;
    self->_supportMetadata = v11;
  }
}

- (void)applyDeferredInitialDataProperties
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_documentMetadata)
  {
    os_unfair_lock_lock(&self->_deferredInitialDataPropertiesBlocksLock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_deferredInitialDataPropertiesBlocks;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v12 + 1) + 8 * v7) + 16))(*(*(&v12 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v12, v16, 16);
      }

      while (v5);
    }

    objc_msgSend_removeAllObjects(self->_deferredInitialDataPropertiesBlocks, v9, v10, v12);
    os_unfair_lock_unlock(&self->_deferredInitialDataPropertiesBlocksLock);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  objc_msgSend_closeFromDealloc_(self, a2, 1);
  supportManager = self->_supportManager;
  self->_supportManager = 0;

  documentMetadata = self->_documentMetadata;
  self->_documentMetadata = 0;

  supportMetadata = self->_supportMetadata;
  self->_supportMetadata = 0;

  documentObjectContainer = self->_documentObjectContainer;
  self->_documentObjectContainer = 0;

  supportObjectContainer = self->_supportObjectContainer;
  self->_supportObjectContainer = 0;

  objc_msgSend_tearDown(self->_componentManager, v8, v9);
  supportObject = self->_supportObject;
  self->_supportObject = 0;

  documentObject = self->_documentObject;
  self->_documentObject = 0;

  componentManager = self->_componentManager;
  self->_componentManager = 0;

  documentPackage = self->_documentPackage;
  self->_documentPackage = 0;

  supportPackage = self->_supportPackage;
  self->_supportPackage = 0;

  dataManager = self->_dataManager;
  self->_dataManager = 0;

  decryptionKey = self->_decryptionKey;
  self->_decryptionKey = 0;

  v17.receiver = self;
  v17.super_class = TSPObjectContext;
  [(TSPObjectContext *)&v17 dealloc];
}

- (void)handleFatalError:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectContext handleFatalError:withReason:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 860, 0, "invalid nil value for '%{public}s'", "error");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v19 = objc_msgSend_domain(v5, v17, v18);
  v22 = objc_msgSend_code(v5, v20, v21);
  isRecoverable = objc_msgSend_tsp_isRecoverable(v5, v23, v24);
  v28 = objc_msgSend_tsp_hintsDescription(v5, v26, v27);
  v29 = v28;
  if (isRecoverable)
  {
    v30 = @"recoverable=YES, ";
  }

  else
  {
    v30 = &stru_2885C9BB8;
  }

  v52 = v28;
  v50 = v22;
  v51 = v30;
  TSUSetCrashReporterInfo();

  v31 = MEMORY[0x277D81150];
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSPObjectContext handleFatalError:withReason:]", "[TSPObjectContext handleFatalError:withReason:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 861, v7, v16, v19, v50, v51, v52, v5);
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v40 = objc_msgSend_domain(v5, v38, v39);
  v43 = objc_msgSend_code(v5, v41, v42);
  v54 = objc_msgSend_tsp_isRecoverable(v5, v44, v45);
  v53 = objc_msgSend_tsp_hintsDescription(v5, v46, v47);
  if (v54)
  {
    v49 = @"recoverable=YES, ";
  }

  else
  {
    v49 = &stru_2885C9BB8;
  }

  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v48, v33, v35, 861, 1, "TSP Fatal Error with reason %{public}@ for error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v7, v37, v40, v43, v49, v53, v5);

  TSUCrashBreakpoint();
  abort();
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != obj)
  {
    if ((objc_msgSend_conformsToProtocol_(WeakRetained, v4, &unk_28860A9F8) & 1) != 0 || objc_msgSend_conformsToProtocol_(WeakRetained, v6, &unk_28860AA58))
    {
      objc_msgSend_removeDataObserver_(self, v6, WeakRetained);
    }

    objc_storeWeak(&self->_delegate, obj);
    if ((objc_msgSend_conformsToProtocol_(obj, v7, &unk_28860A9F8) & 1) != 0 || objc_msgSend_conformsToProtocol_(obj, v8, &unk_28860AA58))
    {
      objc_msgSend_addDataObserver_(self, v8, obj);
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFD | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFB | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFF7 | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFEF | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 32;
    }

    else
    {
      v13 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFDF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 64;
    }

    else
    {
      v14 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFBF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 128;
    }

    else
    {
      v15 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFF7F | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFEFF | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 512;
    }

    else
    {
      v17 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFDFF | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 1024;
    }

    else
    {
      v18 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFBFF | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 2048;
    }

    else
    {
      v19 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 4096;
    }

    else
    {
      v20 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFEFFF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 0x2000;
    }

    else
    {
      v21 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFDFFF | v21);
    if (objc_opt_respondsToSelector())
    {
      v22 = 0x4000;
    }

    else
    {
      v22 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFBFFF | v22);
    if (objc_opt_respondsToSelector())
    {
      v23 = 0x8000;
    }

    else
    {
      v23 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFF7FFF | v23);
    if (objc_opt_respondsToSelector())
    {
      v24 = 0x10000;
    }

    else
    {
      v24 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFEFFFF | v24);
    if (objc_opt_respondsToSelector())
    {
      v25 = 0x20000;
    }

    else
    {
      v25 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFDFFFF | v25);
    if (objc_opt_respondsToSelector())
    {
      v26 = 0x40000;
    }

    else
    {
      v26 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFBFFFF | v26);
    if (objc_opt_respondsToSelector())
    {
      v27 = 0x100000;
    }

    else
    {
      v27 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFEFFFFF | v27);
  }
}

- (void)beginWriteOperation
{
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276998958;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

- (void)performReadOperation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    dispatch_suspend(self->_writeQueue);
    objc_msgSend_lock(self->_readLock, v5, v6);
    v7 = objc_autoreleasePoolPush();
    v10[2]();
    objc_autoreleasePoolPop(v7);
    objc_msgSend_unlock(self->_readLock, v8, v9);
    dispatch_resume(self->_writeQueue);
    v4 = v10;
  }
}

- (void)setProperties:(DataProperties *)a3 forData:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3321888768;
  aBlock[2] = sub_276998BD4;
  aBlock[3] = &unk_2885BF0D0;
  v21 = self;
  v7 = v6;
  v20 = v7;
  var0 = a3->var0;
  v8 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v23 = v8;
  v24 = var2;
  v25 = var3;
  var4 = a3->var4;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (self->_documentMetadata)
  {
    (*(v11 + 2))(v11);
  }

  else
  {
    os_unfair_lock_lock(&self->_deferredInitialDataPropertiesBlocksLock);
    deferredInitialDataPropertiesBlocks = self->_deferredInitialDataPropertiesBlocks;
    v16 = objc_msgSend_copy(v12, v14, v15);
    v17 = _Block_copy(v16);
    objc_msgSend_addObject_(deferredInitialDataPropertiesBlocks, v18, v17);

    os_unfair_lock_unlock(&self->_deferredInitialDataPropertiesBlocksLock);
  }
}

- (id)prepareSaveProgress
{
  if (self->_nextSaveProgress)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext prepareSaveProgress]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 1005, 0, "Next progress was already created.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], a2, 100);
  nextSaveProgress = self->_nextSaveProgress;
  self->_nextSaveProgress = v10;

  v12 = self->_nextSaveProgress;

  return v12;
}

- (void)beginSaveToURL:(id)a3 updateType:(int64_t)a4 packageType:(int64_t)a5 documentUUID:(id)a6
{
  v33 = a3;
  v11 = a6;
  if (UnsafePointer != -1)
  {
    sub_276BD0CDC();
  }

  if (self->_saveOperationState)
  {
    TSUSetCrashReporterInfo();
    v27 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPObjectContext beginSaveToURL:updateType:packageType:documentUUID:]", "[TSPObjectContext beginSaveToURL:updateType:packageType:documentUUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 1017);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v29, v31, 1017, 1, "Didn't finish previous save");

    TSUCrashBreakpoint();
    abort();
  }

  if (!v33 && a4 >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPObjectContext beginSaveToURL:updateType:packageType:documentUUID:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1020, 0, "URL should have been defined");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = [TSPDocumentSaveOperationState alloc];
  updated = objc_msgSend_initWithURL_updateType_packageType_(v19, v20, v33, a4, a5);
  saveOperationState = self->_saveOperationState;
  self->_saveOperationState = updated;

  v24 = self->_saveOperationState;
  if (v24)
  {
    objc_msgSend_setSampleID_(v24, v23, 0);
    objc_msgSend_setDocumentUUID_(self->_saveOperationState, v25, v11);
    objc_msgSend_setProgress_(self->_saveOperationState, v26, self->_nextSaveProgress);
  }

  else if (UnsafePointer != -1)
  {
    sub_276BD0CF0();
  }
}

- (void)beginWriteWithOriginalURL:(id)a3 relativeURLForExternalData:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = a4;
  if (UnsafePointer != -1)
  {
    sub_276BD0D04();
  }

  objc_msgSend_beginWriteOperation(self, v7, v8);
  saveOperationState = self->_saveOperationState;
  if (!saveOperationState)
  {
    v12 = [TSPDocumentSaveOperationState alloc];
    v15 = objc_msgSend_packageType(self, v13, v14);
    updated = objc_msgSend_initWithURL_updateType_packageType_(v12, v16, 0, 0, v15);
    v18 = self->_saveOperationState;
    self->_saveOperationState = updated;

    objc_msgSend_setProgress_(self->_saveOperationState, v19, self->_nextSaveProgress);
    saveOperationState = self->_saveOperationState;
  }

  objc_msgSend_setRelativeURLForExternalData_(saveOperationState, v10, v9);
  objc_msgSend_suspendAsynchronousModificationsForObjectTargetType_(self, v20, 1);
  objc_msgSend_setShouldResumeAsynchronousModifications_(self->_saveOperationState, v21, 1);
  objc_msgSend_updateModifyObjectToken(self, v22, v23);
  documentStateQueue = self->_documentStateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769997D8;
  block[3] = &unk_27A6E2898;
  block[4] = self;
  v25 = v6;
  v58 = v25;
  dispatch_barrier_sync(documentStateQueue, block);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_276997288;
  v55 = sub_276997298;
  v56 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_27699A468;
  v50[3] = &unk_27A6E28C0;
  v50[4] = self;
  v50[5] = &v51;
  objc_msgSend_performReadOperationOnDataAttributes_(self, v26, v50);
  objc_msgSend_setDataAttributesSnapshot_(self->_packageWriteCoordinator, v27, v52[5]);
  objc_msgSend_setDataAttributesSnapshot_(self->_supportWriteCoordinator, v28, v52[5]);
  v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v32 = objc_msgSend_allData(self->_dataManager, v30, v31, 0);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v46, v59, 16);
  if (v36)
  {
    v37 = *v47;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = objc_msgSend_digest(*(*(&v46 + 1) + 8 * i), v34, v35);
        objc_msgSend_addObject_(v29, v40, v39);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v46, v59, 16);
    }

    while (v36);
  }

  objc_msgSend_setKnownDataDigestsForAutosave_(self->_documentMetadata, v41, v29);
  objc_msgSend_setKnownDataDigestsForAutosave_(self->_supportMetadata, v42, v29);
  objc_msgSend_suspendLoadingModifiedFlushedComponentsAndWait(self, v43, v44);

  _Block_object_dispose(&v51, 8);
  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeToURL:(id)a3 encryptionKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_saveOperationState)
  {
    TSUSetCrashReporterInfo();
    v25 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPObjectContext writeToURL:encryptionKey:error:]", "[TSPObjectContext writeToURL:encryptionKey:error:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 1255);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v27, v29, 1255, 1, "You should not call this method before |-beginWriteWithOriginalURL:|");

    TSUCrashBreakpoint();
    abort();
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_276997288;
  v40 = sub_276997298;
  v41 = 0;
  v10 = MEMORY[0x277CCACC8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_27699A7EC;
  v31[3] = &unk_27A6E2938;
  v31[4] = self;
  v34 = &v42;
  v11 = v8;
  v32 = v11;
  v12 = v9;
  v33 = v12;
  v35 = &v36;
  objc_msgSend_tsp_performSynchronousOperationWithReadFileAccessUsingBlock_(v10, v13, v31);
  v15 = *(v43 + 24);
  if (a5 && (v43[3] & 1) == 0)
  {
    v16 = v37[5];
    if (!v16)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPObjectContext writeToURL:encryptionKey:error:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 1315, 0, "invalid nil value for '%{public}s'", "error");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      v16 = v37[5];
    }

    *a5 = v16;
    v15 = *(v43 + 24);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v15 & 1;
}

- (BOOL)writeToURL:(id)a3 originalPackage:(id)a4 supportURL:(id)a5 originalSupportPackage:(id)a6 encryptionKey:(id)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  TSUSetCrashReporterInfo();
  v17 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPObjectContext writeToURL:originalPackage:supportURL:originalSupportPackage:encryptionKey:error:]", "[TSPObjectContext writeToURL:originalPackage:supportURL:originalSupportPackage:encryptionKey:error:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 1325);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 1325, 1, "Should not be saving in QuickLook.");

  TSUCrashBreakpoint();
  abort();
}

- (id)currentPackageDataWriter
{
  v7 = objc_msgSend_documentPackageWriter(self->_saveOperationState, a2, v2);
  if (!v7 || objc_msgSend_didEndWriteOperation(self->_saveOperationState, v5, v6))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext currentPackageDataWriter]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    v12 = NSStringFromSelector(a2);
    v13 = NSStringFromSelector(sel_writeToURL_encryptionKey_error_);
    v14 = NSStringFromSelector(sel_endWriteWithSuccess_error_);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v11, 1592, 0, "%{public}@ should only be called between %{public}@ and %{public}@", v12, v13, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  return v7;
}

- (BOOL)saveToURL:(id)a3 packageType:(int64_t)a4 encryptionKey:(id)a5 originalURL:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  objc_msgSend_beginSaveToURL_updateType_packageType_(self, v15, v12, 2, a4);
  objc_msgSend_beginWriteWithOriginalURL_(self, v16, v14);
  v18 = objc_msgSend_writeToURL_encryptionKey_error_(self, v17, v12, v13, a7);
  v20 = objc_msgSend_endWriteWithSuccess_error_(self, v19, v18, a7);
  LOBYTE(a7) = v20;
  objc_msgSend_endSaveWithSuccess_(self, v21, v20);

  return a7;
}

- (void)suspendAutosaveWithReason:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_suspendAutosaveWithReason_(WeakRetained, v5, v16);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext suspendAutosaveWithReason:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    if (WeakRetained)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 1831, 0, "Attempt to suspend object context autosave when the delegate does not support it. Autosave will not be suspended. delegate=<%{public}@: %{public}p>", v12, WeakRetained);
    }

    else
    {
      v12 = @"Nil";
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v7, v10, 1831, 0, "Attempt to suspend object context autosave when the delegate does not support it. Autosave will not be suspended. delegate=<%{public}@: %{public}p>", @"Nil", 0);
    }

    if (WeakRetained)
    {
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (void)resumeAutosaveWithReason:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_resumeAutosaveWithReason_(WeakRetained, v5, v16);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext resumeAutosaveWithReason:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    if (WeakRetained)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 1841, 0, "Attempt to resume object context autosave when the delegate does not support it. delegate=<%{public}@: %{public}p>", v12, WeakRetained);
    }

    else
    {
      v12 = @"Nil";
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v7, v10, 1841, 0, "Attempt to resume object context autosave when the delegate does not support it. delegate=<%{public}@: %{public}p>", @"Nil", 0);
    }

    if (WeakRetained)
    {
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (void)suspendSaveAndAutosaveWithReason:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_suspendSaveAndAutosaveWithReason_(WeakRetained, v5, v16);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext suspendSaveAndAutosaveWithReason:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    if (WeakRetained)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 1851, 0, "Attempt to suspend object context save and autosave when the delegate does not support it. Autosave will not be suspended. delegate=<%{public}@: %{public}p>", v12, WeakRetained);
    }

    else
    {
      v12 = @"Nil";
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v7, v10, 1851, 0, "Attempt to suspend object context save and autosave when the delegate does not support it. Autosave will not be suspended. delegate=<%{public}@: %{public}p>", @"Nil", 0);
    }

    if (WeakRetained)
    {
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (void)resumeSaveAndAutosaveWithReason:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_resumeSaveAndAutosaveWithReason_(WeakRetained, v5, v16);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext resumeSaveAndAutosaveWithReason:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    if (WeakRetained)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 1861, 0, "Attempt to resume object context save and autosave when the delegate does not support it. delegate=<%{public}@: %{public}p>", v12, WeakRetained);
    }

    else
    {
      v12 = @"Nil";
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v7, v10, 1861, 0, "Attempt to resume object context save and autosave when the delegate does not support it. delegate=<%{public}@: %{public}p>", @"Nil", 0);
    }

    if (WeakRetained)
    {
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (void)requestAutosave
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_requestAutosave(WeakRetained, v2, v3);
  }

  else
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSPObjectContext requestAutosave]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1871, 0, "Attempt to request object context autosave when the delegate does not support it.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }
}

- (void)requestAutosaveForExpensiveCalculation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_requestAutosaveForExpensiveCalculation(WeakRetained, v2, v3);
  }
}

- (void)replaceDocumentObject:(id)a3
{
  v4 = a3;
  documentStateQueue = self->_documentStateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_27699C8E8;
  v7[3] = &unk_27A6E2898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_barrier_sync(documentStateQueue, v7);
}

- (void)beginAssertOnModify
{
  atomic_fetch_add(&self->_modifyObjectCount, 1u);
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v15 = objc_msgSend_threadDictionary(v3, v4, v5);

  v7 = objc_msgSend_objectForKeyedSubscript_(v15, v6, @"TSPAssertOnModifyCount");
  v8 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_longLongValue(v7, v9, v10);
  v13 = objc_msgSend_numberWithLongLong_(v8, v12, v11 + 1);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v14, v13, @"TSPAssertOnModifyCount");
}

- (void)endAssertOnModify
{
  if (atomic_fetch_add(&self->_modifyObjectCount, 0xFFFFFFFF) <= 0)
  {
    v3 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext endAssertOnModify]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v6, v20, v5, 1906, 0, "Unbalanced calls to -beginAssertOnModify and -endAssertOnModify");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  }

  v9 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v21 = objc_msgSend_threadDictionary(v9, v10, v11);

  v13 = objc_msgSend_objectForKeyedSubscript_(v21, v12, @"TSPAssertOnModifyCount");
  v16 = objc_msgSend_longLongValue(v13, v14, v15);
  if (v16 == 1)
  {
    objc_msgSend_removeObjectForKey_(v21, v17, @"TSPAssertOnModifyCount");
  }

  else
  {
    v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v17, v16 - 1);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v19, v18, @"TSPAssertOnModifyCount");
  }
}

- (BOOL)setDecryptionKey:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  objc_storeStrong(&self->_decryptionKey, a3);
  os_unfair_lock_unlock(&self->_documentPropertiesLock);
  v8 = objc_msgSend_passwordVerifier(self, v6, v7);

  if (!v8)
  {
    if (objc_msgSend_isPasswordProtected(self, v9, v10))
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPObjectContext setDecryptionKey:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1926, 0, "We think we are encrypted but we don't have a password verifier set so we are about to make a verifier for the password given to setPassphrase:, which is likely not what we want to do here.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    if (!v5)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPObjectContext setDecryptionKey:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1927, 0, "About to attempt to generate a passphrase verifier for a nil key which will fail");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = objc_msgSend_generatePassphraseVerifierForKey_verifierVersion_(MEMORY[0x277D810F8], v11, v5, *MEMORY[0x277D81518]);
    passwordVerifier = self->_passwordVerifier;
    self->_passwordVerifier = v26;
  }

  v28 = MEMORY[0x277D810F8];
  v29 = objc_msgSend_passwordVerifier(self, v9, v10);
  LOBYTE(v28) = objc_msgSend_checkKey_againstPassphraseVerifier_(v28, v30, v5, v29);

  return v28;
}

- (BOOL)setPassphrase:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_passwordVerifier(self, v5, v6);
  v8 = *MEMORY[0x277D81398];

  v11 = MEMORY[0x277D810F8];
  if (v7)
  {
    v12 = objc_msgSend_passwordVerifier(self, v9, v10);
    v14 = objc_msgSend_saltFromVerifier_saltLength_(v11, v13, v12, v8);

    v15 = MEMORY[0x277D810F8];
    v18 = objc_msgSend_passwordVerifier(self, v16, v17);
    v20 = objc_msgSend_iterationCountFromPassphraseVerifier_(v15, v19, v18);
  }

  else
  {
    v21 = objc_msgSend_generateRandomSaltWithLength_(MEMORY[0x277D810F8], v9, v8);
    v20 = *MEMORY[0x277D813A0];
    v14 = v21;
  }

  v22 = objc_alloc(MEMORY[0x277D810F0]);
  inited = objc_msgSend_initAes128KeyFromPassphrase_iterationCount_saltData_(v22, v23, v4, v20, v14);
  v26 = objc_msgSend_setDecryptionKey_(self, v25, inited);

  return v26;
}

- (NSString)lastPasswordAttempted
{
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  v5 = objc_msgSend_passphrase(self->_decryptionKey, v3, v4);
  os_unfair_lock_unlock(&self->_documentPropertiesLock);

  return v5;
}

- (NSData)keychainGenericItem
{
  v3 = objc_msgSend_documentUUID(self, a2, v2);
  v5 = objc_msgSend_keychainGenericItemForDocumentUUID_(TSPDocumentProperties, v4, v3);

  return v5;
}

- (TSPDocumentProperties)documentProperties
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276997288;
  v9 = sub_276997298;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_27699D21C;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDocumentProperties:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  documentProperties = self->_documentProperties;
  self->_documentProperties = v4;

  os_unfair_lock_unlock(&self->_documentPropertiesLock);
}

- (int64_t)packageType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_27699D348;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)shouldUseCloneModeToWriteToURL:(id)a3 originalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!objc_msgSend_tsu_volumeSupportsCloning(v6, v8, v9) || v7 && !objc_msgSend_tsu_isOnSameVolumeAs_(v6, v10, v7))
  {
    goto LABEL_10;
  }

  if ((*(&self->_flags + 2) & 0x10) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), shouldDisableCloneModeWithContext = objc_msgSend_shouldDisableCloneModeWithContext_(WeakRetained, v12, self), WeakRetained, !shouldDisableCloneModeWithContext))
  {
    v14 = 1;
    goto LABEL_11;
  }

  if (UnsafePointer != -1)
  {
    sub_276BD0E5C();
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)copyIfAppropriateFromOriginalURL:(id)a3 toURL:(id)a4 cloneMode:(BOOL)a5 originalPackage:(id)a6 packageType:(int64_t)a7 inheritAttributes:(BOOL)a8
{
  v8 = a8;
  v11 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v18 = v15;
  if (!v13)
  {
    goto LABEL_9;
  }

  WritableItemAtURL_permissionsOverride_resetCreationDate_error = 0;
  if (!v15 || a7 != 2 || !v11)
  {
    goto LABEL_19;
  }

  if (objc_msgSend_packageType(v15, v16, v17) != 2)
  {
LABEL_9:
    WritableItemAtURL_permissionsOverride_resetCreationDate_error = 0;
    goto LABEL_19;
  }

  v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v20, v21);
  v32 = 0;
  v24 = objc_msgSend_copyItemAtURL_toURL_error_(v22, v23, v13, v14, &v32);
  v25 = v32;
  if (v24)
  {
    if (v8)
    {
      v26 = 0;
    }

    else
    {
      v27 = objc_alloc(MEMORY[0x277CCABB0]);
      v26 = objc_msgSend_initWithUnsignedInteger_(v27, v28, 420);
    }

    v31 = 0;
    WritableItemAtURL_permissionsOverride_resetCreationDate_error = objc_msgSend_tsu_makeWritableItemAtURL_permissionsOverride_resetCreationDate_error_(v22, v29, v14, v26, !v8, &v31);
    v25 = v31;
    if ((WritableItemAtURL_permissionsOverride_resetCreationDate_error & 1) == 0 && UnsafePointer != -1)
    {
      sub_276BD0E98();
    }
  }

  else
  {
    if (UnsafePointer != -1)
    {
      sub_276BD0E70();
    }

    WritableItemAtURL_permissionsOverride_resetCreationDate_error = 0;
  }

LABEL_19:
  return WritableItemAtURL_permissionsOverride_resetCreationDate_error;
}

- (unint64_t)estimatedProgressTotalUnitCountForURL:(id)a3 packageType:(int64_t)a4 originalDocumentURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = ((a4 == 2) & objc_msgSend_shouldUseCloneModeToWriteToURL_originalURL_(self, v10, v8, v9)) == 0;
  v13 = 1;
  componentManager = self->_componentManager;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_27699D874;
  v20[3] = &unk_27A6E29D8;
  if (!v11)
  {
    v13 = 2;
  }

  v20[4] = &v21;
  v20[5] = v13;
  objc_msgSend_enumerateComponents_(componentManager, v12, v20);
  dataReferenceMap = self->_dataReferenceMap;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_27699D8E4;
  v19[3] = &unk_27A6E2A00;
  v19[4] = &v21;
  objc_msgSend_enumerateDataInDocumentUsingBlock_(dataReferenceMap, v16, v19);
  v17 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v17;
}

- (unint64_t)documentObjectSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  componentManager = self->_componentManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27699DA7C;
  v5[3] = &unk_27A6E2A28;
  v5[4] = &v6;
  objc_msgSend_enumerateComponents_(componentManager, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)sizeOfComponentsWithLocator:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  componentManager = self->_componentManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_27699DBE8;
  v10[3] = &unk_27A6E2A50;
  v11 = v4;
  v12 = &v13;
  v6 = v4;
  objc_msgSend_enumerateComponents_(componentManager, v7, v10);
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (unint64_t)documentDataSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataReferenceMap = self->_dataReferenceMap;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27699DD50;
  v5[3] = &unk_27A6E2A00;
  v5[4] = &v6;
  objc_msgSend_enumerateDataInDocumentUsingBlock_(dataReferenceMap, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)reservedDocumentDataSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataReferenceMap = self->_dataReferenceMap;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27699DE98;
  v5[3] = &unk_27A6E2A00;
  v5[4] = &v6;
  objc_msgSend_enumerateDataInDocumentUsingBlock_(dataReferenceMap, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)readDocumentObjectFromPackageURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_276997288;
  v19 = sub_276997298;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27699E0A8;
  v11[3] = &unk_27A6E2AA0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  objc_msgSend_performReadOperation_(self, v8, v11);
  v9 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

- (BOOL)readDocumentObjectFromDatabasePackageURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_276997288;
  v49 = sub_276997298;
  v50 = 0;
  v7 = objc_opt_class();
  if ((objc_msgSend_isTangierEditingDirectoryFormatURL_(v7, v8, v6) & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277D81350]);
    v14 = (v46 + 5);
    v44 = v46[5];
    v16 = objc_msgSend_initWithError_(v13, v15, &v44);
    objc_storeStrong(v14, v44);
    v20 = objc_msgSend_URL(v16, v17, v18);
    v21 = v52;
    *(v52 + 24) = v16 != 0;
    if (v16 && (v22 = (v46 + 5), v43 = v46[5], objc_msgSend_zipArchiveFromURL_options_error_(MEMORY[0x277D81380], v19, v6, 5, &v43), v23 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(v22, v43), v21 = v52, *(v52 + 24) = v23 != 0, v23))
    {
      if (UnsafePointer != -1)
      {
        sub_276BD0EE8();
      }

      v26 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_27699F314;
      v37[3] = &unk_27A6E2AF0;
      v27 = v20;
      v38 = v27;
      v39 = v26;
      v41 = &v51;
      v42 = &v45;
      v28 = v23;
      v40 = v28;
      v29 = v26;
      objc_msgSend_enumerateEntriesUsingBlock_(v28, v30, v37);

      v21 = v52;
      if (v52[3])
      {
        v32 = (v46 + 5);
        v36 = v46[5];
        v33 = objc_msgSend_continueReadingDocumentObjectFromDatabasePackageURL_error_(self, v31, v27, &v36);
        objc_storeStrong(v32, v36);
        v21 = v52;
        goto LABEL_12;
      }
    }

    else
    {
      v28 = 0;
    }

    v33 = 0;
LABEL_12:
    *(v21 + 24) = v33;

    v11 = *(v52 + 24);
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v10 = (v46 + 5);
  obj = v46[5];
  v11 = objc_msgSend_continueReadingDocumentObjectFromDatabasePackageURL_error_(self, v9, v6, &obj);
  objc_storeStrong(v10, obj);
  *(v52 + 24) = v11;
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((v11 & 1) == 0)
  {
    *a4 = objc_msgSend_tsp_ensureReadErrorWithError_(MEMORY[0x277CCA9B8], v12, v46[5]);
    v11 = *(v52 + 24);
  }

LABEL_15:
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  return v11 & 1;
}

- (BOOL)continueReadingDocumentObjectFromDatabasePackageURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_276997288;
  v25 = sub_276997298;
  v26 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_27699F63C;
  v16 = &unk_27A6E2B40;
  v17 = self;
  v19 = &v27;
  v7 = v6;
  v18 = v7;
  v20 = &v21;
  objc_msgSend_performReadOperation_(self, v8, &v13);
  if (*(v28 + 24) == 1)
  {
    objc_msgSend_willModifyForUpgrade(self->_documentObject, v9, v10, v13, v14, v15, v16, v17);
  }

  else if (a4)
  {
    *a4 = v22[5];
  }

  v11 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

- (BOOL)readWithReadCoordinator:(id)a3 finalizeHandlerQueue:(id)a4 rootObject:(id *)a5 error:(id *)a6 readCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v12)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = sub_276997288;
  v100 = sub_276997298;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = sub_276997288;
  v94 = sub_276997298;
  v95 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_276997288;
  v88 = sub_276997298;
  v89 = 0;
  v15 = dispatch_get_global_queue(0, 0);
  v16 = dispatch_semaphore_create(0);
  v73 = v15;
  if (objc_opt_respondsToSelector())
  {
    v19 = objc_msgSend_documentLoadValidationPolicy(v12, v17, v18);
    if (v19 && UnsafePointer != -1)
    {
      sub_276BD0F10();
    }
  }

  else
  {
    v19 = 0;
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_2769A0204;
  v78[3] = &unk_27A6E2B68;
  v80 = &v102;
  v81 = &v84;
  v82 = &v96;
  v83 = &v90;
  v21 = v16;
  v79 = v21;
  objc_msgSend_readRootObjectWithCompletionQueue_completion_(v12, v22, v15, v78);
  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  v77 = 1;
  if (v14)
  {
    v25 = v14[2](v14, *(v103 + 24), v97[5], v91[5], &v77);
    *(v103 + 24) = v25;
    if ((v25 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_12:
    if (v77 == 1)
    {
      v26 = objc_msgSend_tsp_identifier(v97[5], v23, v24);
      v28 = v97[5];
      if (v26 == 1)
      {
        objc_msgSend_didReadDocumentObject_(self, v27, v28);
      }

      else if (objc_msgSend_tsp_identifier(v97[5], v27, v28) == 3)
      {
        objc_msgSend_didReadSupportObject_(self, v23, v97[5]);
      }
    }

    if (objc_msgSend_timing(v19, v23, v24) == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          context = objc_msgSend_validateModel(v19, v31, v32);
          v35 = objc_msgSend_validateDataCRC(v19, v33, v34);
          v38 = objc_msgSend_validateDataDigest(v19, v36, v37);
          v41 = objc_msgSend_scanForOSLikeCorruption(v19, v39, v40);
          v42 = context;
          if (v35)
          {
            v42 = context | 2;
          }

          if (v38)
          {
            v42 |= 4uLL;
          }

          if (v41)
          {
            v43 = v42 | 8;
          }

          else
          {
            v43 = v42;
          }

          objc_initWeak(&location, self);
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = sub_2769A0380;
          v74[3] = &unk_27A6E2BB8;
          objc_copyWeak(&v75, &location);
          objc_msgSend_validateDocumentWithOptions_timing_completion_(v12, v44, v43, 2, v74);
          objc_destroyWeak(&v75);
          objc_destroyWeak(&location);
        }
      }

      else
      {
      }
    }

    if (v13)
    {
      contexta = objc_autoreleasePoolPush();
      objc_msgSend_beginAddingLoadedObjects(self, v45, v46);
      objc_msgSend_addLoadedObjectsAndEnqueueNotifications_(self, v47, v91[5]);
      if (!self->_documentMetadata)
      {
        v69 = MEMORY[0x277D81150];
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSPObjectContext readWithReadCoordinator:finalizeHandlerQueue:rootObject:error:readCompletion:]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v52, v49, v51, 2545, 0, "invalid nil value for '%{public}s'", "_documentMetadata");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
      }

      if (!self->_supportMetadata)
      {
        v70 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSPObjectContext readWithReadCoordinator:finalizeHandlerQueue:rootObject:error:readCompletion:]");
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v58, v55, v57, 2546, 0, "invalid nil value for '%{public}s'", "_supportMetadata");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
      }

      if (v91[5])
      {
        v61 = objc_alloc(MEMORY[0x277CBEA60]);
        v63 = objc_msgSend_initWithObjects_(v61, v62, v91[5], 0);
        Coordinator_finalizeHandlerQueue = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(self, v64, v63, v12, v13);
      }

      else
      {
        v63 = 0;
        Coordinator_finalizeHandlerQueue = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(self, v48, 0, v12, v13);
      }

      *(v103 + 24) = Coordinator_finalizeHandlerQueue;
      objc_msgSend_endAddingLoadedObjects(self, v66, v67);

      objc_autoreleasePoolPop(contexta);
    }

    goto LABEL_38;
  }

  if (v103[3])
  {
    goto LABEL_12;
  }

LABEL_38:
  if (a5)
  {
    *a5 = v97[5];
  }

  v20 = *(v103 + 24);
  if (a6 && (v103[3] & 1) == 0)
  {
    if (*a6)
    {
      v20 = 0;
    }

    else
    {
      *a6 = v85[5];
      v20 = *(v103 + 24);
    }
  }

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v90, 8);

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);
LABEL_46:

  return v20 & 1;
}

- (void)presentPersistenceError:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_presentPersistenceError_(WeakRetained, v5, v6);
  }
}

- (void)didEncounterValidationError:(id)a3 forData:(id)a4 timing:(int64_t)a5
{
  v11 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_didEncounterValidationError_forData_timing_(WeakRetained, v10, v11, v8, a5);
  }
}

- (BOOL)didFinishSuccessfullyReadingObjects:(id)a3 readCoordinator:(id)a4 finalizeHandlerQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v10 = [TSPReadCompletionInfo alloc];
  Coordinator_finalizeHandlerQueue = objc_msgSend_initWithObjects_readCoordinator_finalizeHandlerQueue_(v10, v11, v7, v8, v9);
  v13 = MEMORY[0x277CCACC8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2769A079C;
  v18[3] = &unk_27A6E2C00;
  v21 = &v22;
  v14 = v9;
  v19 = v14;
  v15 = v7;
  v20 = v15;
  objc_msgSend_tsp_runFinalizeHandlersForReadCompletionInfo_usingBlock_(v13, v16, Coordinator_finalizeHandlerQueue, v18);
  LOBYTE(v7) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v7;
}

- (id)objectForIdentifier:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      documentObject = self->_documentObject;
LABEL_5:
      v4 = documentObject;
      break;
    case 3:
      documentObject = self->_supportObject;
      goto LABEL_5;
    case 2:
      v4 = 0;
      break;
    case 61:
      documentObject = self->_documentObjectContainer;
      goto LABEL_5;
    case 62:
      documentObject = self->_supportObjectContainer;
      goto LABEL_5;
    case 71:
      documentObject = self->_documentMetadata;
      goto LABEL_5;
    case 72:
      documentObject = self->_supportMetadata;
      goto LABEL_5;
    default:
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = sub_276997288;
      v12 = sub_276997298;
      v13 = 0;
      objectsQueue = self->_objectsQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2769A0A94;
      block[3] = &unk_27A6E2C28;
      block[4] = self;
      block[5] = &v8;
      block[6] = a3;
      dispatch_sync(objectsQueue, block);
      v4 = v9[5];
      _Block_object_dispose(&v8, 8);

      break;
  }

  return v4;
}

- (void)ensureObject:(id)a3 isKnownWithIdentifier:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    objectsQueue = self->_objectsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769A0B94;
    block[3] = &unk_27A6E2C50;
    block[4] = self;
    v10 = v6;
    v11 = a4;
    dispatch_barrier_async(objectsQueue, block);
  }
}

- (void)performReadOperationOnKnownObjects:(id)a3
{
  v4 = a3;
  objectsQueue = self->_objectsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769A0C40;
  v7[3] = &unk_27A6E2C78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(objectsQueue, v7);
}

- (id)temporaryDirectory
{
  temporaryDirectoryQueue = self->_temporaryDirectoryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769A0D20;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(temporaryDirectoryQueue, block);
  v6 = objc_msgSend_URL(self->_temporaryDirectory, v4, v5);
  v9 = objc_msgSend_path(v6, v7, v8);

  return v9;
}

- (id)dataWithContentsOfPackagePath:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_276997288;
    v14 = sub_276997298;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2769A0EC8;
    v9[3] = &unk_27A6E28C0;
    v9[4] = self;
    v9[5] = &v10;
    objc_msgSend_performReadOperationOnDocumentState_(self, v4, v9);
    v7 = objc_msgSend_dataAtRelativePath_allowDecryption_error_(v11[5], v6, v5, 1, 0);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSURL)documentURL
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276997288;
  v9 = sub_276997298;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A0FF4;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSURL)supportURL
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276997288;
  v9 = sub_276997298;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A1148;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)didMoveToURL:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (UnsafePointer == -1)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext didMoveToURL:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2725, 0, "Invalid nil document URL.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    goto LABEL_9;
  }

  sub_276BD0F4C();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_2769A1374;
  v24 = &unk_27A6E2898;
  v25 = self;
  v7 = v6;
  v26 = v7;
  objc_msgSend_performAsynchronousWriteOperationOnDocumentState_(self, v8, &v21);
  if (objc_msgSend_areExternalReferencesSupported(self, v9, v10, v21, v22, v23, v24, v25) && (objc_msgSend_areExternalReferencesToDataAllowedAtURL_(self, v11, v7) & 1) == 0)
  {
    objc_msgSend_removeExternalReferences(self->_dataManager, v12, v13);
  }

LABEL_9:
}

- (void)didMoveSupportToURL:(id)a3
{
  v4 = a3;
  if (UnsafePointer != -1)
  {
    sub_276BD0F60();
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769A14C8;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  objc_msgSend_performAsynchronousWriteOperationOnDocumentState_(self, v6, v7);
}

+ (id)documentRevisionAtURL:(id)a3 passphrase:(id)a4 error:(id *)a5
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [TSPTemporaryFileCoordinatorDelegate alloc];
  v12 = objc_msgSend_initWithURL_(v10, v11, v8);
  v14 = objc_msgSend_newPackageWithURL_options_packageIdentifier_decryptionKey_fileCoordinatorDelegate_error_(TSPPackage, v13, v8, 0, 1, 0, v12, a5);
  v17 = v14;
  if (!v14)
  {
LABEL_18:
    a5 = 0;
    goto LABEL_19;
  }

  if (!objc_msgSend_isPasswordProtected(v14, v15, v16))
  {
LABEL_6:
    v23 = objc_opt_new();
    v24 = [a1 alloc];
    v26 = objc_msgSend_initWithDelegate_(v24, v25, v23);
    v27 = [TSPPackageReadCoordinator alloc];
    ValidationPolicy = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_(v27, v28, v26, v17, v8, 0, 0, 1, 0);
    v31 = objc_msgSend_readPackageMetadataWithError_(ValidationPolicy, v30, a5);
    objc_msgSend_tearDown(ValidationPolicy, v32, v33);
    objc_msgSend_close(v26, v34, v35);
    if (v31)
    {
      a5 = objc_msgSend_documentRevision(ValidationPolicy, v36, v37);
    }

    else
    {
      a5 = 0;
    }

    goto LABEL_19;
  }

  if (objc_msgSend_checkPassword_(v17, v18, v9))
  {
    v22 = objc_msgSend_keyFromPassword_(v17, v19, v9);
    if (v22)
    {
      objc_msgSend_didRetrieveDecryptionKey_(v17, v21, v22);

      goto LABEL_6;
    }

    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "+[TSPObjectContext documentRevisionAtURL:passphrase:error:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 2754, 0, "We should be able to create a decryption key for a password protected document.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
  }

  if (a5)
  {
    v45 = objc_msgSend_passwordHint(v17, v19, v20);
    v47 = v45;
    v48 = MEMORY[0x277CCA9B8];
    if (v45)
    {
      v53 = *MEMORY[0x277CCA498];
      v54[0] = v45;
      v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v54, &v53, 1);
      objc_msgSend_tsp_errorWithCode_userInfo_(v48, v50, 9, v49);
    }

    else
    {
      v49 = 0;
      objc_msgSend_tsp_errorWithCode_userInfo_(MEMORY[0x277CCA9B8], v46, 9, 0);
    }
    *a5 = ;
    if (v47)
    {
    }

    goto LABEL_18;
  }

LABEL_19:

  v51 = *MEMORY[0x277D85DE8];

  return a5;
}

- (TSPDocumentRevision)documentRevision
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276997288;
  v9 = sub_276997298;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A19A0;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDocumentRevision:(id)a3
{
  v4 = a3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_2769A1AA0;
  v14 = &unk_27A6E2898;
  v15 = self;
  v5 = v4;
  v16 = v5;
  objc_msgSend_performAsynchronousWriteOperationOnDocumentState_(self, v6, &v11);
  if ((*(&self->_flags + 2) & 4) != 0)
  {
    v9 = objc_msgSend_delegate(self, v7, v8, v11, v12, v13, v14, v15);
    objc_msgSend_contextDidUpdateDocumentRevision_(v9, v10, self);
  }
}

- (id)incrementDocumentRevisionWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_276997288;
  v16 = sub_276997298;
  v17 = 0;
  documentStateQueue = self->_documentStateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769A1CC8;
  block[3] = &unk_27A6E2C00;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_barrier_sync(documentStateQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)resetDocumentRevision
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2769A1DA0;
  v2[3] = &unk_27A6E27F8;
  v2[4] = self;
  objc_msgSend_performAsynchronousWriteOperationOnDocumentState_(self, a2, v2);
}

- (int64_t)preferredPackageType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A1EF0;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setPreferredPackageType:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2769A1F74;
  v3[3] = &unk_27A6E2CA0;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_performAsynchronousWriteOperationOnDocumentState_(self, a2, v3);
}

- (void)addDataObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataObserversLock);
  objc_msgSend_addObject_(self->_dataObservers, v5, v4);

  os_unfair_lock_unlock(&self->_dataObserversLock);
}

- (void)removeDataObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataObserversLock);
  objc_msgSend_removeObject_(self->_dataObservers, v5, v4);

  os_unfair_lock_unlock(&self->_dataObserversLock);
}

- (id)dataObserversConformingToProtocol:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_dataObserversLock);
  v7 = objc_msgSend_count(self->_dataObservers, v5, v6);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = objc_msgSend_initWithCapacity_(v8, v9, v7);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_dataObservers;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
    if (v14)
    {
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if (objc_msgSend_conformsToProtocol_(v17, v13, v4, v20))
          {
            objc_msgSend_addObject_(v10, v13, v17);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v20, v24, 16);
      }

      while (v14);
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_dataObserversLock);

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)ignoreDataLifecycleErrors
{
  v3 = atomic_load(&self->_ignoreDataLifecycleErrorsCount);
  if (v3 <= 0)
  {
    return objc_msgSend_ignoreDataLifecycleNotifications(self, a2, v2);
  }

  else
  {
    return 1;
  }
}

- (void)performBlockIgnoringDataLifecycleErrors:(id)a3
{
  p_ignoreDataLifecycleErrorsCount = &self->_ignoreDataLifecycleErrorsCount;
  atomic_fetch_add(&self->_ignoreDataLifecycleErrorsCount, 1u);
  (*(a3 + 2))(a3, a2);
  atomic_fetch_add(p_ignoreDataLifecycleErrorsCount, 0xFFFFFFFF);
}

+ (TSPObjectContext)contextForTransientObjects
{
  if (qword_280A52400 != -1)
  {
    sub_276BD0F74();
  }

  v3 = qword_280A523F8;

  return v3;
}

- (void)dataInDocumentDidChangeForDataReferenceMap:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = objc_msgSend_dataObserversConformingToProtocol_(self, v5, &unk_28860A9F8, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v13, v17, 16);
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_dataInDocumentUpdatedWithProvider_(*(*(&v13 + 1) + 8 * v11++), v8, v4);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v13, v17, 16);
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAllDataUsingBlock:(id)a3
{
  v12 = a3;
  dataManager = self->_dataManager;
  if (!dataManager)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPObjectContext enumerateAllDataUsingBlock:]", "[TSPObjectContext enumerateAllDataUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 3013, "_dataManager");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 3013, 1, "invalid nil value for '%{public}s'", "_dataManager");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_enumerateAllDataUsingBlock_(dataManager, v4, v12);
}

- (void)enumerateDataInDocumentUsingBlock:(id)a3
{
  v12 = a3;
  dataReferenceMap = self->_dataReferenceMap;
  if (!dataReferenceMap)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPObjectContext enumerateDataInDocumentUsingBlock:]", "[TSPObjectContext enumerateDataInDocumentUsingBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 3018, "_dataReferenceMap");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 3018, 1, "invalid nil value for '%{public}s'", "_dataReferenceMap");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_enumerateDataInDocumentUsingBlock_(dataReferenceMap, v4, v12);
}

- (void)setSupportObject:(id)a3
{
  v4 = a3;
  documentStateQueue = self->_documentStateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769A27A8;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(documentStateQueue, v7);
}

- (void)setSupportObjectImpl:(id)a3
{
  v5 = a3;
  if (self->_supportObject != v5)
  {
    v46 = v5;
    if (v5)
    {
      v8 = objc_msgSend_context(v5, v6, v7);

      if (v8 != self)
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectContext setSupportObjectImpl:]");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 3036, 0, "Support object should belong to object context %@.", self);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
      }
    }

    v16 = objc_msgSend_packageLocator(v46, v6, v7);

    if (v16)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPObjectContext setSupportObjectImpl:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 3037, 0, "Support object shouldn't have a package locator.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = objc_msgSend_tsp_component(v46, v17, v18);

    if (v26)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPObjectContext setSupportObjectImpl:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 3038, 0, "Support object shouldn't have been archived yet.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }

    objc_storeStrong(&self->_supportObject, a3);
    objc_msgSend_setTsp_identifier_(self->_supportObject, v35, 3);
    componentManager = self->_componentManager;
    if (v46)
    {
      supportURL = objc_msgSend_supportComponent(componentManager, v46, v36);
      objc_msgSend_setModified_forObject_(supportURL, v39, 1, v46);
    }

    else
    {
      v40 = objc_msgSend_supportComponent(componentManager, 0, v36);
      objc_msgSend_setModified_forObject_(v40, v41, 0, 0);

      v44 = objc_msgSend_supportComponent(self->_componentManager, v42, v43);
      objc_msgSend_setRootObject_(v44, v45, 0);

      supportURL = self->_supportURL;
      self->_supportURL = 0;
    }

    v5 = v46;
  }
}

- (void)didReadSupportObject:(id)a3
{
  v5 = a3;
  if (self->_supportObject)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPObjectContext didReadSupportObject:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 3055, 0, "expected nil value for '%{public}s'", "_supportObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (UnsafePointer != -1)
    {
      sub_276BD0F88();
    }

    v5 = 0;
  }

  supportObject = self->_supportObject;
  self->_supportObject = v5;
}

+ (void)removeDefaultSupportDirectory
{
  v5 = objc_msgSend_defaultSupportDirectoryURL(TSPSupportManager, a2, v2);
  if (UnsafePointer != -1)
  {
    sub_276BD0F9C();
  }

  v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4);
  v14 = 0;
  v8 = objc_msgSend_removeItemAtURL_error_(v6, v7, v5, &v14);
  v9 = v14;
  v12 = v9;
  if (v8)
  {
  }

  else
  {
    isNoSuchFileError = objc_msgSend_tsu_isNoSuchFileError(v9, v10, v11);

    if ((isNoSuchFileError & 1) == 0 && UnsafePointer != -1)
    {
      sub_276BD0FB0();
    }
  }
}

+ (id)supportBundleURLForDocumentUUID:(id)a3 delegate:(id)a4
{
  v4 = objc_msgSend_supportBundleURLForDocumentUUID_delegate_(TSPSupportManager, a2, a3, a4);

  return v4;
}

- (void)prepareToReadSupportObjectExternalDataReferencesAllowed:(BOOL)a3 finalizeHandlerQueue:(id)a4 objects:(id *)a5 accessor:(id)a6
{
  v10 = a4;
  v11 = a6;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_276997288;
  v77 = sub_276997298;
  v78 = 0;
  v14 = objc_msgSend_documentUUID(self->_documentProperties, v12, v13);
  v16 = objc_msgSend_supportBundleURLForDocumentUUID_delegate_(TSPSupportManager, v15, v14, self);
  supportURL = self->_supportURL;
  self->_supportURL = v16;

  objc_msgSend_updatePresentedItemURL_(self->_supportManager, v18, self->_supportURL);
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_276997288;
  v71 = sub_276997298;
  v72 = objc_msgSend_objectForIdentifier_(self, v19, 3);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v21 = v68[5];
  v66 = v21 != 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_276997288;
  v57 = sub_276997298;
  v58 = 0;
  if (v21)
  {
    goto LABEL_5;
  }

  v22 = v10;
  v23 = MEMORY[0x277CCA9E8];
  v24 = self->_supportURL;
  supportManager = self->_supportManager;
  v26 = v74;
  obj = v74[5];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2769A32D8;
  v42[3] = &unk_27A6E2CF0;
  v42[4] = self;
  v45 = &v73;
  v46 = &v59;
  v41 = v22;
  v43 = v22;
  v51 = a3;
  v27 = v11;
  v44 = v27;
  v47 = &v63;
  v48 = &v67;
  v49 = &v53;
  v50 = &v79;
  LOBYTE(supportManager) = objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v23, v28, v24, 1, 0, supportManager, &obj, v42);
  objc_storeStrong(v26 + 5, obj);
  if ((supportManager & 1) == 0)
  {
    *(v60 + 24) = 1;
  }

  v10 = v41;
  if (v64[3])
  {
LABEL_5:
    if ((v80[3] & 1) == 0)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPObjectContext prepareToReadSupportObjectExternalDataReferencesAllowed:finalizeHandlerQueue:objects:accessor:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 3157, 0, "Accessor should have been called.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    v36 = v68[5];
    if (self->_supportObject != v36)
    {
      objc_msgSend_didReadSupportObject_(self, v20, v36);
    }

    if (a5)
    {
      *a5 = v54[5];
    }
  }

  else
  {
    if ((v80[3] & 1) == 0)
    {
      (*(v27 + 2))(v27, *(v60 + 24), 0, 0, 0);
    }

    v37 = self->_supportURL;
    self->_supportURL = 0;

    supportPackage = self->_supportPackage;
    self->_supportPackage = 0;

    objc_msgSend_removeFilePresenter(self->_supportManager, v39, v40);
    if (v74[5] && UnsafePointer != -1)
    {
      sub_276BD0FD8();
    }
  }

  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
}

- (BOOL)readComponent:(id)a3 isWeakReference:(BOOL)a4 documentPackage:(id)a5 supportPackage:(id)a6 rootObject:(id *)a7 allObjects:(id *)a8 error:(id *)a9
{
  v123[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v91 = a5;
  v89 = a6;
  if (!a8)
  {
    v32 = objc_msgSend_identifier(v15, v16, v17);
    v34 = objc_msgSend_objectForIdentifier_(self, v33, v32);
    if (v34)
    {
      if (a7)
      {
        v34 = v34;
        *a7 = v34;
      }

      v35 = 1;
      goto LABEL_38;
    }
  }

  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v18 = [TSPFinalizeHandlerQueue alloc];
  v21 = objc_msgSend_identifier(v15, v19, v20);
  v90 = objc_msgSend_initWithRootObjectIdentifier_(v18, v22, v21);
  v25 = objc_msgSend_packageIdentifier(v15, v23, v24);
  if (v25)
  {
    if (v25 == 1)
    {
      v36 = [TSPPackageReadCoordinator alloc];
      ValidationPolicy = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_(v36, v37, self, self->_documentPackage, 0, v90, 0, (*&self->_flags >> 21) & 1, 0);
      v30 = v15;
      v31 = @"DocumentReadCoordinatorAllocation";
      goto LABEL_12;
    }

    if (v25 != 2)
    {
      v30 = v15;
      v38 = 0;
      v31 = 0;
      v87 = @"ReadCoordinatorAllocation";
      goto LABEL_17;
    }

    if (self->_supportPackage)
    {
      v27 = [TSPSupportPackageReadCoordinator alloc];
      ValidationPolicy = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_documentPackage_(v27, v28, self, self->_supportPackage, 0, v90, 0, (*&self->_flags >> 21) & 1, 0, v91);
      v30 = v15;
      v31 = @"SupportReadCoordinatorAllocation";
LABEL_12:
      v87 = v31;
      v38 = ValidationPolicy;
      goto LABEL_17;
    }

    v30 = v15;
    v38 = 0;
    v31 = @"MissingSupportPackage";
  }

  else
  {
    v30 = v15;
    v38 = 0;
    v31 = @"UnknownPackageIdentifier";
  }

  v87 = v31;
LABEL_17:
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_276997288;
  v117 = sub_276997298;
  v118 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = sub_276997288;
  v111 = sub_276997298;
  v112 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_276997288;
  v105 = sub_276997298;
  v106 = 0;
  v88 = v38;
  if (v38)
  {
    v39 = dispatch_get_global_queue(0, 0);
    v40 = dispatch_semaphore_create(0);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_2769A41F0;
    v92[3] = &unk_27A6E2D18;
    v96 = &v119;
    v41 = v38;
    v93 = v41;
    v97 = &v113;
    v98 = &v107;
    v99 = &v101;
    v100 = a4;
    v15 = v30;
    v94 = v30;
    v42 = v40;
    v95 = v42;
    objc_msgSend_readComponent_completionQueue_completion_(v41, v43, v94, v39, v92);
    dispatch_semaphore_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
    objc_msgSend_tearDown(v41, v44, v45);
    v47 = a8;
    if (*(v120 + 24) == 1)
    {
      v48 = objc_autoreleasePoolPush();
      objc_msgSend_beginAddingLoadedObjects(self, v49, v50);
      objc_msgSend_addLoadedObjectsAndEnqueueNotifications_(self, v51, v108[5]);
      if (v108[5])
      {
        v53 = objc_alloc(MEMORY[0x277CBEA60]);
        v55 = objc_msgSend_initWithObjects_(v53, v54, v108[5], 0);
        Coordinator_finalizeHandlerQueue = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(self, v56, v55, v41, v90);
      }

      else
      {
        v55 = 0;
        Coordinator_finalizeHandlerQueue = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(self, v52, 0, v41, v90);
      }

      *(v120 + 24) = Coordinator_finalizeHandlerQueue;
      objc_msgSend_endAddingLoadedObjects(self, v58, v59);

      objc_autoreleasePoolPop(v48);
      if (v120[3])
      {
        goto LABEL_27;
      }

      v78 = objc_msgSend_tsp_ensureReadErrorWithError_(MEMORY[0x277CCA9B8], v80, v102[5]);
      v79 = &unk_2885E5968;
    }

    else
    {
      v78 = objc_msgSend_tsp_ensureReadErrorWithError_(MEMORY[0x277CCA9B8], v46, v102[5]);
      v79 = &unk_2885E5980;
    }

    v81 = v102[5];
    v102[5] = v78;

    v83 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v82, v102[5], v79);
    v84 = v102[5];
    v102[5] = v83;

LABEL_27:
    goto LABEL_28;
  }

  v60 = MEMORY[0x277D81150];
  v15 = v30;
  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPObjectContext readComponent:isWeakReference:documentPackage:supportPackage:rootObject:allObjects:error:]");
  v61 = v47 = a8;
  v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
  v66 = objc_msgSend_locator(v15, v64, v65);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v61, v63, 3337, 0, "Failed to initialize read coordinator for component: %{public}@, errorHint=%{public}@", v66, v31);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
  v71 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v70, 0);
  v72 = v102[5];
  v102[5] = v71;

  v73 = MEMORY[0x277CCA9B8];
  v74 = v102[5];
  v123[0] = v87;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, v123, 1);
  v77 = objc_msgSend_tsp_errorWithError_hints_(v73, v76, v74, v39);
  v42 = v102[5];
  v102[5] = v77;
LABEL_28:

  if (a7)
  {
    *a7 = v114[5];
  }

  if (v47)
  {
    *v47 = v108[5];
  }

  v35 = *(v120 + 24);
  if (a9 && (v120[3] & 1) == 0)
  {
    if (*a9)
    {
      v35 = 0;
    }

    else
    {
      *a9 = v102[5];
      v35 = *(v120 + 24);
    }
  }

  _Block_object_dispose(&v101, 8);

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v113, 8);

  _Block_object_dispose(&v119, 8);
  v34 = 0;
LABEL_38:

  v85 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

- (BOOL)readComponent:(id)a3 isWeakReference:(BOOL)a4 rootObject:(id *)a5 allObjects:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v15 = v12;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_276997288;
  v64 = sub_276997298;
  v65 = 0;
  if (!a6)
  {
    v16 = objc_msgSend_rootObject(v12, v13, v14);
    v17 = v61[5];
    v61[5] = v16;

    if (!v61[5])
    {
      v18 = objc_msgSend_identifier(v15, v13, v14);
      v20 = objc_msgSend_objectForIdentifier_(self, v19, v18);
      v21 = v61[5];
      v61[5] = v20;
    }
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v22 = v61[5];
  v59 = v22 != 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_276997288;
  v54 = sub_276997298;
  v55 = 0;
  if (!v22)
  {
    if ((objc_msgSend_tsp_isUnarchiverThread(MEMORY[0x277CCACC8], v13, v14) & 1) != 0 || objc_msgSend_tsp_isArchiverThread(MEMORY[0x277CCACC8], v23, v24))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPObjectContext readComponent:isWeakReference:rootObject:allObjects:error:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 3379, 0, "Calling lazy loading API while inside of an archiver/unarchiver thread will cause a deadlock.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_276997288;
    v48 = sub_276997298;
    v49 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2769A475C;
    v36[3] = &unk_27A6E2D68;
    v36[4] = self;
    v38 = &v56;
    v42 = a4;
    v37 = v15;
    v39 = &v60;
    v43 = a6 != 0;
    v40 = &v50;
    v41 = &v44;
    objc_msgSend_performReadUsingAccessorImpl_(self, v32, v36);
    if ((v57[3] & 1) == 0)
    {
      if (a7)
      {
        v33 = v45[5];
        if (v33)
        {
          if (!*a7)
          {
            *a7 = v33;
          }
        }
      }
    }

    _Block_object_dispose(&v44, 8);
  }

  if (a5)
  {
    *a5 = v61[5];
  }

  if (a6)
  {
    *a6 = v51[5];
  }

  v34 = *(v57 + 24);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  return v34;
}

- (BOOL)readLazyReference:(id)a3 object:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v11 = objc_msgSend_tsp_identifier(v8, v9, v10);
  v13 = objc_msgSend_objectForIdentifier_(self, v12, v11);
  v14 = v13;
  if (v13)
  {
    if (a4)
    {
      v15 = v13;
      *a4 = v14;
    }

    v16 = 1;
  }

  else
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_276997288;
    v39 = sub_276997298;
    v40 = 0;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_2769A4CD8;
    v28 = &unk_27A6E2D90;
    v29 = self;
    v17 = v8;
    v30 = v17;
    v31 = &v41;
    v33 = v11;
    v34 = a4;
    v32 = &v35;
    objc_msgSend_performReadUsingAccessorImpl_(self, v18, &v25);
    if ((v42[3] & 1) == 0)
    {
      if (!objc_msgSend_ownershipMode(v17, v19, v20, v25, v26, v27, v28, v29))
      {
        v22 = objc_msgSend_tsp_ensureReadErrorWithError_(MEMORY[0x277CCA9B8], v21, v36[5]);
        v23 = v36[5];
        v36[5] = v22;
      }

      if (a5 && !*a5)
      {
        *a5 = v36[5];
      }
    }

    v16 = *(v42 + 24);

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);
  }

  return v16 & 1;
}

- (BOOL)areNewExternalReferencesToDataAllowed
{
  if ((*&self->_flags & 0x10) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v2 = objc_msgSend_areNewExternalReferencesToDataAllowed(WeakRetained, v4, v5);

  return v2;
}

- (BOOL)areExternalReferencesToDataAllowedAtURL:(id)a3
{
  v4 = a3;
  if ((*&self->_flags & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_msgSend_areExternalReferencesToDataAllowedAtURL_(WeakRetained, v7, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)performResourceAccessUsingQueue:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  resourceContext = self->_resourceContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2769A542C;
  v14[3] = &unk_27A6E2DB8;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v9 = v6;
  v10 = v7;
  v12 = objc_msgSend_performResourceAccessUsingQueue_block_(resourceContext, v11, 0, v14);

  return v12;
}

- (void)updateAdditionalResourceRequests
{
  v7 = objc_msgSend_delegate(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_additionalResourceRequestsForObjectContext_(v7, v4, self);
    if (v6)
    {
      objc_msgSend_addResourceRequests_(self->_resourceContext, v5, v6);
    }
  }
}

- (id)documentResourceDataForDigestString:(id)a3 locator:(id)a4 filename:(id)a5 canDownload:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v14 = a5;
  if (v6)
  {
    v15 = objc_msgSend_dataDownloadManager(self, v12, v13);
    v17 = objc_msgSend_documentResourceDataWithDigestString_locator_filename_(v15, v16, v10, v11, v14);
  }

  else
  {
    v18 = objc_msgSend_documentResourceRegistry(self->_resourceContext, v12, v13);
    v15 = objc_msgSend_documentResourceInfoForDigestString_locator_(v18, v19, v10, v11);

    if (v15)
    {
      v22 = objc_msgSend_dataManager(self, v20, v21);
      v17 = objc_msgSend_dataForDocumentResourceInfo_fromFileURL_(v22, v23, v15, 0);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (void)enumerateDocumentResourcesUsingBlock:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_documentResourceRegistry(self->_resourceContext, v5, v6);
  dataReferenceMap = self->_dataReferenceMap;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2769A5A18;
  v11[3] = &unk_27A6E2DE0;
  v11[4] = v7;
  v9 = v4;
  v12 = v9;
  objc_msgSend_enumerateDataInDocumentUsingBlock_(dataReferenceMap, v10, v11);
}

- (int64_t)aggregateReadabilityForDocumentResources
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A5C48;
  v4[3] = &unk_27A6E2E08;
  v4[4] = &v5;
  objc_msgSend_enumerateDocumentResourcesUsingBlock_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isResourceAccessTypeFinished:(int64_t)a3
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v35 = objc_msgSend_sharedManager(TSPResourceRequestManager, a2, a3);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = objc_msgSend_resourceContext(self, v5, v6);
    v10 = objc_msgSend_resourceRequests(v7, v8, v9);

    obj = v10;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v36, v40, 16);
    if (v13)
    {
      v14 = 0;
      v15 = *v37;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * v16);
          v18 = objc_msgSend_resourceAccessTypeForResourceRequest_(v35, v12, v17);
          if ((v18 & v14) == 0)
          {
            v19 = TSUProtocolCast();
            v22 = objc_msgSend_allResourcesInaccessible(v19, v20, v21, &unk_28860AAB8);

            if (UnsafePointer != -1)
            {
              sub_276BD108C();
            }

            v25 = objc_msgSend_progress(v17, v23, v24);
            if (objc_msgSend_isCancelled(v25, v26, v27))
            {
              isFinished = 0;
            }

            else
            {
              isFinished = objc_msgSend_isFinished(v25, v28, v29);
            }

            if (UnsafePointer != -1)
            {
              sub_276BD10B4();
            }

            if (((v22 | isFinished) & 1) == 0)
            {
              if (objc_msgSend_estimatedDownloadSize(v17, v28, v29))
              {
                v14 |= v18;
                if (UnsafePointer != -1)
                {
                  sub_276BD10DC();
                }
              }
            }
          }

          if ((a3 & ~v14) == 0)
          {
            if (UnsafePointer != -1)
            {
              sub_276BD1104();
            }

            v31 = 0;
            goto LABEL_29;
          }

          ++v16;
        }

        while (v13 != v16);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v36, v40, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if (UnsafePointer != -1)
    {
      sub_276BD112C();
    }

    v31 = 1;
LABEL_29:
  }

  else
  {
    v31 = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)isPasswordProtected
{
  v3 = objc_msgSend_documentPackage(self, a2, v2);
  isPasswordProtected = objc_msgSend_isPasswordProtected(v3, v4, v5);

  return isPasswordProtected;
}

- (SFUCryptoKey)decryptionKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276997288;
  v10 = sub_276997298;
  v11 = 0;
  documentStateQueue = self->_documentStateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769A6208;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(documentStateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)anonymousIdentifierForDigest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  v5 = self->_documentProperties;
  v8 = objc_msgSend_passphrase(self->_decryptionKey, v6, v7);
  os_unfair_lock_unlock(&self->_documentPropertiesLock);
  v10 = objc_msgSend_anonymousIdentifierWithDocumentProperties_passphrase_(v4, v9, v5, v8);

  return v10;
}

- (BOOL)isInCollaborationMode
{
  if ((*(&self->_flags + 2) & 1) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v2 = objc_msgSend_isInCollaborationMode(WeakRetained, v4, v5);

  return v2;
}

- (BOOL)isInReadOnlyMode
{
  if ((*(&self->_flags + 2) & 2) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  OnlyMode = objc_msgSend_isInReadOnlyMode(WeakRetained, v4, v5);

  return OnlyMode;
}

- (BOOL)containsDataConformingToUTI:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  dataReferenceMap = self->_dataReferenceMap;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2769A64B0;
  v9[3] = &unk_27A6E2E58;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  objc_msgSend_enumerateDataInDocumentUsingBlock_(dataReferenceMap, v7, v9);
  LOBYTE(dataReferenceMap) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return dataReferenceMap;
}

- (void)addObjectModifyDelegate:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_objectTargetType(v4, v5, v6);
    objc_msgSend_suspendAsynchronousModificationsForObjectTargetType_(self, v9, v8);
    objc_msgSend_updateModifyObjectToken(self, v10, v11);
    documentStateQueue = self->_documentStateQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2769A661C;
    v13[3] = &unk_27A6E2898;
    v13[4] = self;
    v14 = v7;
    dispatch_barrier_sync(documentStateQueue, v13);
  }
}

- (void)removeObjectModifyDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    documentStateQueue = self->_documentStateQueue;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = sub_2769A6728;
    v12 = &unk_27A6E2898;
    v13 = self;
    v14 = v4;
    dispatch_barrier_sync(documentStateQueue, &v9);
    objc_msgSend_resumeAsynchronousModifications(self, v7, v8, v9, v10, v11, v12, v13);
  }
}

- (void)suspendAsynchronousModificationsForObjectTargetType:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_276997288;
  v21 = sub_276997298;
  v22 = 0;
  asynchronousObjectModifierQueue = self->_asynchronousObjectModifierQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769A6928;
  block[3] = &unk_27A6E2C28;
  block[4] = self;
  block[5] = &v17;
  block[6] = a3;
  dispatch_sync(asynchronousObjectModifierQueue, block);
  if (UnsafePointer != -1)
  {
    sub_276BD1154();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v18[5];
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v23, 16);
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_suspendAsynchronousModificationsForObjectTargetType_(*(*(&v12 + 1) + 8 * i), v7, a3, v12);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v23, 16);
    }

    while (v8);
  }

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)resumeAsynchronousModifications
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_276997288;
  v20 = sub_276997298;
  v21 = 0;
  asynchronousObjectModifierQueue = self->_asynchronousObjectModifierQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769A6D78;
  block[3] = &unk_27A6E2E30;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(asynchronousObjectModifierQueue, block);
  if (UnsafePointer != -1)
  {
    sub_276BD117C();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v17[5];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v22, 16);
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_resumeAsynchronousModifications(*(*(&v11 + 1) + 8 * i), v5, v6, v11);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v22, 16);
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerAsynchronousObjectModifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    asynchronousObjectModifierQueue = self->_asynchronousObjectModifierQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2769A6FBC;
    v7[3] = &unk_27A6E2898;
    v7[4] = self;
    v8 = v4;
    dispatch_async(asynchronousObjectModifierQueue, v7);
  }
}

- (BOOL)hasCurrentFileFormatVersion
{
  v3 = objc_msgSend_documentPackage(self, a2, v2);
  v6 = objc_msgSend_fileFormatVersion(v3, v4, v5);
  LOBYTE(v6) = v6 == UnsafePointer();

  return v6;
}

- (unint64_t)documentReadVersion
{
  v3 = objc_msgSend_documentPackage(self, a2, v2);
  Version = objc_msgSend_documentReadVersion(v3, v4, v5);

  return Version;
}

- (NSSet)featureIdentifiers
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_276997288;
  v13 = sub_276997298;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2769A7188;
  v8[3] = &unk_27A6E28C0;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v8);
  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_msgSend_set(MEMORY[0x277CBEB98], v2, v3);
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (NSSet)unsupportedFeatureIdentifiers
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_276997288;
  v13 = sub_276997298;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2769A72C0;
  v8[3] = &unk_27A6E28C0;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v8);
  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_msgSend_set(MEMORY[0x277CBEB98], v2, v3);
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)canPerformUserActions
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    CanPerformUserActions = objc_msgSend_contextCanPerformUserActions_(WeakRetained, v4, self);
  }

  else
  {
    CanPerformUserActions = 0;
  }

  return CanPerformUserActions;
}

- (void)canPerformUserActionUsingBlock:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_context_canPerformUserActionUsingBlock_(WeakRetained, v5, self, v5);
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

- (void)prepareForDocumentDumpWithDocumentPackage:(id)a3 supportPackage:(id)a4 documentRevision:(id)a5 passphrase:(id)a6
{
  v33 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_storeStrong(&self->_documentPackage, a3);
  objc_storeStrong(&self->_supportPackage, a4);
  v16 = objc_msgSend_documentProperties(v33, v14, v15);
  documentProperties = self->_documentProperties;
  self->_documentProperties = v16;

  objc_storeStrong(&self->_documentRevision, a5);
  if (v13)
  {
    v20 = objc_msgSend_passwordVerifier(v33, v18, v19);
    passwordVerifier = self->_passwordVerifier;
    self->_passwordVerifier = v20;

    v24 = objc_msgSend_passwordHint(v33, v22, v23);
    documentPasswordHint = self->_documentPasswordHint;
    self->_documentPasswordHint = v24;

    if ((objc_msgSend_setPassphrase_(self, v26, v13) & 1) == 0)
    {
      TSUSetCrashReporterInfo();
      v27 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPObjectContext prepareForDocumentDumpWithDocumentPackage:supportPackage:documentRevision:passphrase:]", "[TSPObjectContext prepareForDocumentDumpWithDocumentPackage:supportPackage:documentRevision:passphrase:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 3895);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v29, v31, 3895, 1, "Password should be correct here.");

      TSUCrashBreakpoint();
      abort();
    }
  }
}

+ (BOOL)validateCRCForDocumentAtURL:(id)a3 error:(id *)a4
{
  v5 = objc_msgSend_newPackageWithURL_options_packageIdentifier_decryptionKey_fileCoordinatorDelegate_error_(TSPPackage, a2, a3, 16, 1, 0, 0, a4);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_zipArchive(v5, v6, v7);
    if (objc_msgSend_validateCRCAndReturnError_(v9, v10, a4))
    {
      v13 = objc_msgSend_componentZipArchive(v8, v11, v12);
      v15 = v13;
      if (v13 == v9)
      {
        v16 = 1;
      }

      else
      {
        v16 = objc_msgSend_validateCRCAndReturnError_(v13, v14, a4);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)objectUUIDMap:(id)a3 needsObjectForIdentifier:(int64_t)a4 componentIdentifier:(int64_t)a5 onlyIfLoaded:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  if (a4)
  {
    if (v6)
    {
      v12 = objc_msgSend_objectForIdentifier_(self, v10, a4);
    }

    else
    {
      if (!a5)
      {
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPObjectContext objectUUIDMap:needsObjectForIdentifier:componentIdentifier:onlyIfLoaded:]");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 3944, 0, "Cannot read object without a component identifier.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      }

      v12 = objc_msgSend_readObjectIfNeededForIdentifier_isWeakReference_componentIdentifier_(self, v10, a4, 1, a5);
    }

    a4 = v12;
  }

  return a4;
}

- (void)waitForSaveToFinishIfNeeded
{
  v3 = objc_opt_class();
  pendingEndSaveGroup = self->_pendingEndSaveGroup;

  objc_msgSend_waitForPendingEndSaveGroup_(v3, v4, pendingEndSaveGroup);
}

- (NSFilePresenter)filePresenter
{
  if (*(&self->_flags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v2 = objc_msgSend_filePresenter(WeakRetained, v4, v5);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)performReadUsingAccessor:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769A7DE4;
  v7[3] = &unk_27A6E2EF8;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  objc_msgSend_performReadUsingAccessorImpl_(self, v6, v7);
}

- (void)performReadUsingAccessorImpl:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v5, v6);
  v10 = objc_msgSend_threadDictionary(v7, v8, v9);

  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"TSPIsPerformingRead");
  v15 = objc_msgSend_BOOLValue(v12, v13, v14);

  if (v15)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v10, v16, @"TSPDocumentURL");
    v20 = objc_msgSend_objectForKeyedSubscript_(v10, v19, @"TSPDocumentPackage");
    v22 = objc_msgSend_objectForKeyedSubscript_(v10, v21, @"TSPSupportURL");
    v24 = objc_msgSend_objectForKeyedSubscript_(v10, v23, @"TSPSupportPackage");
    v4[2](v4, v18, v20, v22, v24, 1);
  }

  else
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = sub_276997288;
    v69 = sub_276997298;
    v70 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = sub_276997288;
    v63 = sub_276997298;
    v64 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_276997288;
    v57 = sub_276997298;
    v58 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_276997288;
    v51 = sub_276997298;
    v52 = 0;
    if (objc_msgSend_tsp_isArchiverThread(MEMORY[0x277CCACC8], v16, v17))
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPObjectContext performReadUsingAccessorImpl:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 4031, 0, "Cannot perform a read operation from the archiver thread.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    do
    {
      objc_msgSend_waitForSaveToFinishIfNeeded(self, v25, v26);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_2769A86B0;
      v46[3] = &unk_27A6E2F20;
      v46[4] = self;
      v46[5] = &v71;
      v46[6] = &v65;
      v46[7] = &v59;
      v46[8] = &v53;
      v46[9] = &v47;
      objc_msgSend_performReadOperationOnDocumentState_(self, v34, v46);
    }

    while ((v72[3] & 1) != 0);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v25, MEMORY[0x277CBEC38], @"TSPIsPerformingRead");
    v36 = v66[5];
    if (v36)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v10, v35, v36, @"TSPDocumentURL");
    }

    v37 = v60[5];
    if (v37)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v10, v35, v37, @"TSPDocumentPackage");
    }

    v38 = v54[5];
    if (v38)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v10, v35, v38, @"TSPSupportURL");
    }

    v39 = v48[5];
    if (v39)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v10, v35, v39, @"TSPSupportPackage");
      v40 = v48[5];
    }

    else
    {
      v40 = 0;
    }

    v4[2](v4, v66[5], v60[5], v54[5], v40, 0);
    objc_msgSend_removeObjectForKey_(v10, v41, @"TSPIsPerformingRead");
    objc_msgSend_removeObjectForKey_(v10, v42, @"TSPDocumentURL");
    objc_msgSend_removeObjectForKey_(v10, v43, @"TSPDocumentPackage");
    objc_msgSend_removeObjectForKey_(v10, v44, @"TSPSupportURL");
    objc_msgSend_removeObjectForKey_(v10, v45, @"TSPSupportPackage");
    dispatch_group_leave(self->_outstandingReadsGroup);
    _Block_object_dispose(&v47, 8);

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v71, 8);
  }
}

- (void)beginIgnoringModificationsForObject:(id)a3
{
  v27 = a3;
  if (v27)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v3, v4);
    v8 = objc_msgSend_threadDictionary(v5, v6, v7);

    objc_opt_class();
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"TSPObjectsToIgnoreModifications");
    v11 = TSUCheckedDynamicCast();

    if (!v11)
    {
      v13 = objc_alloc(MEMORY[0x277CCAA50]);
      v11 = objc_msgSend_initWithOptions_capacity_(v13, v14, 517, 0);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v15, v11, @"TSPObjectsToIgnoreModifications");
    }

    if (objc_msgSend_containsObject_(v11, v12, v27))
    {
      v17 = objc_opt_class();
      v26 = NSStringFromClass(v17);
      TSUSetCrashReporterInfo();

      v18 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPObjectContext beginIgnoringModificationsForObject:]", "[TSPObjectContext beginIgnoringModificationsForObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 4107, v26);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v20, v22, 4107, 1, "Nested calls to [%{public}@ performBlockIgnoringModifications:] are not supported.", v24);

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_addObject_(v11, v16, v27);
  }
}

- (void)endIgnoringModificationsForObject:(id)a3
{
  v27 = a3;
  if (v27)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v3, v4);
    v8 = objc_msgSend_threadDictionary(v5, v6, v7);

    objc_opt_class();
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"TSPObjectsToIgnoreModifications");
    v11 = TSUCheckedDynamicCast();

    if (!objc_msgSend_containsObject_(v11, v12, v27))
    {
      v17 = objc_opt_class();
      v26 = NSStringFromClass(v17);
      TSUSetCrashReporterInfo();

      v18 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPObjectContext endIgnoringModificationsForObject:]", "[TSPObjectContext endIgnoringModificationsForObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 4126, v26);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v20, v22, 4126, 1, "Nested calls to [%{public}@ performBlockIgnoringModifications:] are not supported.", v24);

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_removeObject_(v11, v13, v27);
    if (!objc_msgSend_count(v11, v14, v15))
    {
      objc_msgSend_removeObjectForKey_(v8, v16, @"TSPObjectsToIgnoreModifications");
    }
  }
}

- (BOOL)canModifyObject:(id)a3
{
  if (!atomic_load(&self->_modifyObjectCount))
  {
    return 1;
  }

  v5 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v8 = objc_msgSend_threadDictionary(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"TSPAssertOnModifyCount");
  if (objc_msgSend_longLongValue(v10, v11, v12))
  {
    v15 = objc_msgSend_tsp_component(a3, v13, v14);
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)willModifyObject:(id)a3 options:(unint64_t)a4
{
  if ((a4 & 2) == 0)
  {
    if (atomic_load(&self->_modifyObjectCount))
    {
      v8 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
      v11 = objc_msgSend_threadDictionary(v8, v9, v10);
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"TSPAssertOnModifyCount");
      if (objc_msgSend_longLongValue(v13, v14, v15))
      {
        v18 = objc_msgSend_tsp_component(a3, v16, v17);

        if (v18)
        {
          v19 = MEMORY[0x277D81150];
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext willModifyObject:options:]");
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v27 = objc_msgSend_tsp_identifier(a3, v25, v26);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v28, v20, v22, 4137, 0, "Attempting to modify object [%{public}@-%llu] when context does not allow modifications", v24, v27);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        }
      }

      else
      {
      }
    }
  }

  v31 = objc_msgSend_tsp_modifyObjectToken(a3, a2, a3);
  v33 = atomic_load(&self->_modifyObjectToken);
  if (v31 != v33)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2769A8EC8;
    v34[3] = &unk_27A6E2F68;
    v34[4] = self;
    v34[5] = a3;
    v34[6] = a4;
    objc_msgSend_performReadOperationOnDocumentState_(self, v32, v34);
  }
}

- (id)supportDirectoryURLReturningIsBundleURL:(BOOL *)a3
{
  v12 = 0;
  flags = self->_flags;
  if ((*&flags & 0x200) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_msgSend_supportDirectoryURLReturningIsBundleURL_(WeakRetained, v7, &v12);

    if (!v5)
    {
      v12 = 0;
    }

    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((*&flags & 0x400) == 0)
    {
      v5 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }

LABEL_8:
      *a3 = v12;
      goto LABEL_9;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_msgSend_supportDirectoryURL(v9, v10, v11);

    if (a3)
    {
      goto LABEL_8;
    }
  }

LABEL_9:

  return v5;
}

- (void)registerObjectProvider:(id)a3
{
  v4 = a3;
  objectProvidersQueue = self->_objectProvidersQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769A939C;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(objectProvidersQueue, v7);
}

- (void)enumerateObjectProvidersUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPObjectContext enumerateObjectProvidersUsingBlock:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 4265, 0, "invalid nil value for '%{public}s'", "block");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_276997288;
  v24 = sub_276997298;
  v25 = 0;
  objectProvidersQueue = self->_objectProvidersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769A95C4;
  block[3] = &unk_27A6E28C0;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(objectProvidersQueue, block);
  v14 = v21[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2769A9640;
  v17[3] = &unk_27A6E2F90;
  v15 = v5;
  v18 = v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v14, v16, v17);

  _Block_object_dispose(&v20, 8);
}

- (id)documentLoadValidationPolicy
{
  if ((*(&self->_flags + 1) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v2 = objc_msgSend_documentLoadValidationPolicy(WeakRetained, v4, v5);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)documentSaveValidationPolicy
{
  if ((*(&self->_flags + 1) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v2 = objc_msgSend_documentSaveValidationPolicy(WeakRetained, v4, v5);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)ignoreDocumentSupport
{
  if (self->_mode)
  {
    return 1;
  }

  if ((*(&self->_flags + 1) & 0x20) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v2 = objc_msgSend_ignoreDocumentSupport(WeakRetained, v4, v5);

  return v2;
}

- (BOOL)isDocumentSupportTemporary
{
  if ((*(&self->_flags + 1) & 0x40) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isDocumentSupportTemporary = objc_msgSend_isDocumentSupportTemporary(WeakRetained, v4, v5);

  return isDocumentSupportTemporary;
}

- (BOOL)shouldLoadAllComponentsForDocumentURL:(id)a3
{
  v4 = a3;
  if ((self->_mode & 0x10) != 0)
  {
    shouldLoadAllComponentsForContext_documentURL = 1;
  }

  else if ((*(&self->_flags + 1) & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    shouldLoadAllComponentsForContext_documentURL = objc_msgSend_shouldLoadAllComponentsForContext_documentURL_(WeakRetained, v7, self, v4);
  }

  else
  {
    shouldLoadAllComponentsForContext_documentURL = 0;
  }

  return shouldLoadAllComponentsForContext_documentURL;
}

- (void)setDocumentObject:(id)a3
{
  v48 = a3;
  v7 = objc_msgSend_context(v48, v5, v6);

  if (v7 != self)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPObjectContext setDocumentObject:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 4346, 0, "Document object should belong to object context %@.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_packageLocator(v48, v8, v9);

  if (v17)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPObjectContext setDocumentObject:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 4347, 0, "Document object shouldn't have a package locator.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = objc_msgSend_tsp_component(v48, v18, v19);

  if (v27)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPObjectContext setDocumentObject:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 4348, 0, "Document object shouldn't have been archived yet.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  if (self->_documentObject)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPObjectContext setDocumentObject:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 4358, 0, "Already have a document object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
  }

  else
  {
    objc_storeStrong(&self->_documentObject, a3);
    objc_msgSend_setTsp_identifier_(self->_documentObject, v43, 1);
    if (v48)
    {
      v46 = objc_msgSend_documentComponent(self->_componentManager, v44, v45);
      objc_msgSend_setModified_forObject_(v46, v47, 1, v48);
    }
  }
}

- (void)didReadDocumentObject:(id)a3
{
  v5 = a3;
  if (self->_documentObject)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPObjectContext didReadDocumentObject:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 4363, 0, "expected nil value for '%{public}s'", "_documentObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (UnsafePointer != -1)
    {
      sub_276BD11CC();
    }

    v5 = 0;
  }

  documentObject = self->_documentObject;
  self->_documentObject = v5;
}

- (TSPPackage)documentPackage
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276997288;
  v9 = sub_276997298;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A9E38;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (TSPPackage)supportPackage
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276997288;
  v9 = sub_276997298;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769A9F54;
  v4[3] = &unk_27A6E28C0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_performReadOperationOnDocumentState_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSUUID)documentUUID
{
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  v5 = objc_msgSend_documentUUID(self->_documentProperties, v3, v4);
  os_unfair_lock_unlock(&self->_documentPropertiesLock);

  return v5;
}

- (BOOL)updateDocumentUUIDPreserveOriginalDocumentSupport:(BOOL)a3 preserveShareUUID:(BOOL)a4 preserveStableDocumentUUID:(BOOL)a5 error:(id *)a6
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_276997288;
  v27 = sub_276997298;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_276997288;
  v21 = sub_276997298;
  v22 = 0;
  writeQueue = self->_writeQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2769AA16C;
  v13[3] = &unk_27A6E2FB8;
  v14 = a4;
  v15 = a5;
  v13[4] = self;
  v13[5] = &v29;
  v16 = a3;
  v13[7] = &v17;
  v13[8] = a6;
  v13[6] = &v23;
  dispatch_sync(writeQueue, v13);
  objc_msgSend_willModify(v24[5], v7, v8);
  objc_msgSend_willModify(v18[5], v9, v10);
  v11 = *(v30 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v11;
}

- (NSUUID)versionUUID
{
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  v5 = objc_msgSend_versionUUID(self->_documentProperties, v3, v4);
  os_unfair_lock_unlock(&self->_documentPropertiesLock);

  return v5;
}

- (id)baseUUIDForObjectUUID
{
  if ((*&self->_flags & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v2 = objc_msgSend_baseUUIDForObjectUUID(WeakRetained, v4, v5);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setLastObjectIdentifier:(int64_t)a3
{
  do
  {
    v3 = atomic_load(&self->_lastObjectIdentifier);
    if (v3 >= a3)
    {
      break;
    }

    v4 = v3;
    atomic_compare_exchange_strong(&self->_lastObjectIdentifier, &v4, a3);
  }

  while (v4 != v3);
}

- (int64_t)incrementLastObjectIdentifier:(int64_t)a3
{
  if (a3 >= 1)
  {
    return atomic_fetch_add(&self->_lastObjectIdentifier, a3) + a3;
  }

  if (a3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext incrementLastObjectIdentifier:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 4489, 0, "Don't increment by a negative value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return atomic_load(&self->_lastObjectIdentifier);
}

- (id)newObjectUUIDForObject:(id)a3 uuidNamespace:(unsigned __int8)a4 offset:(unint64_t)a5 ignoringBaseUUIDForObjectUUID:(BOOL)a6 requireDeterministicUUID:(BOOL)a7
{
  v9 = a4;
  v67 = a3;
  if (!a6)
  {
    v13 = objc_msgSend_baseUUIDForObjectUUID(self, v11, v12);
    if (v13)
    {
      v14 = objc_msgSend_tsp_identifier(v67, v11, v12);
      v15 = v9 <= 1 ? 1 : v9;
      v16 = sub_2769DD85C(v13, v15, v14, a5);

      if (v16)
      {
        goto LABEL_32;
      }
    }
  }

  v17 = objc_msgSend_tsp_currentReadCompletionInfo(MEMORY[0x277CCACC8], v11, v12);
  v20 = v17;
  if (!v17)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v21 = objc_msgSend_finalizeHandlerQueue(v17, v18, v19);
  v24 = objc_msgSend_currentObjectIdentifier(v21, v22, v23);

  v27 = objc_msgSend_readObjectWithIdentifier_(v20, v25, v24);
  if (!v27)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPObjectContext newObjectUUIDForObject:uuidNamespace:offset:ignoringBaseUUIDForObjectUUID:requireDeterministicUUID:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 4512, 0, "Object should have been in the map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  v35 = objc_opt_class();
  if (objc_msgSend_needsObjectUUID(v35, v36, v37))
  {
    objc_msgSend_objectUUID(v27, v38, v39);
  }

  else
  {
    objc_msgSend_documentUUID(self, v38, v39);
  }
  v41 = ;
  if (!v41)
  {
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSPObjectContext newObjectUUIDForObject:uuidNamespace:offset:ignoringBaseUUIDForObjectUUID:requireDeterministicUUID:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 4542, 0, "UUID should have been set.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
    v16 = 0;
    goto LABEL_29;
  }

  if (v9)
  {
    v42 = v9;
  }

  else
  {
    v42 = 2;
  }

  v45 = objc_msgSend_objectForKeyedSubscript_(self->_deterministicObjectUUIDSetPerObject, v40, v41);
  if (!v45)
  {
    v45 = objc_alloc_init(TSPObjectContextDeterministicUUIDSet);
    objc_msgSend_setObject_forKeyedSubscript_(self->_deterministicObjectUUIDSetPerObject, v46, v45, v41);
  }

  v48 = objc_msgSend_tsp_identifier(v67, v43, v44);
  v49 = 1000;
  while (!objc_msgSend_addEntryForIdentifier_offset_(v45, v47, v48, a5))
  {
LABEL_24:
    ++a5;
    if (!--v49)
    {
      goto LABEL_25;
    }
  }

  v16 = sub_2769DD85C(v41, v42, v48, a5);
  if (objc_msgSend_hasObjectUUID_(self->_objectUUIDMap, v50, v16))
  {

    goto LABEL_24;
  }

  if (!v16)
  {
LABEL_25:
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSPObjectContext newObjectUUIDForObject:uuidNamespace:offset:ignoringBaseUUIDForObjectUUID:requireDeterministicUUID:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 4540, 0, "Failed to generate deterministic UUID due to collisions.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
    v16 = 0;
  }

LABEL_29:
  if (!v16)
  {
LABEL_30:
    if (!a7)
    {
      v16 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }
  }

LABEL_32:

  return v16;
}

- (BOOL)isObjectInDocument:(id)a3
{
  v4 = a3;
  objectUUIDMap = self->_objectUUIDMap;
  v8 = objc_msgSend_tsp_identifier(v4, v6, v7);
  LOBYTE(objectUUIDMap) = objc_msgSend_isObjectIdentifierInDocument_(objectUUIDMap, v9, v8);

  return objectUUIDMap;
}

- (unint64_t)fileFormatVersion
{
  os_unfair_lock_lock(&self->_documentPropertiesLock);
  v5 = objc_msgSend_fileFormatVersion(self->_documentProperties, v3, v4);
  os_unfair_lock_unlock(&self->_documentPropertiesLock);
  return v5;
}

- (void)beginAddingLoadedObjects
{
  if (!atomic_fetch_add(&self->_runLoadObserversQueueSuspendCount, 1uLL))
  {
    dispatch_suspend(self->_runLoadObserversQueue);
  }
}

- (BOOL)endAddingLoadedObjects
{
  add = atomic_fetch_add(&self->_runLoadObserversQueueSuspendCount, 0xFFFFFFFFFFFFFFFFLL);
  if (add == 1)
  {
    dispatch_resume(self->_runLoadObserversQueue);
    dispatch_sync(self->_runLoadObserversQueue, &unk_2885BF600);
  }

  return add == 1;
}

- (void)addLoadedObjectsAndEnqueueNotifications:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = atomic_load(&self->_runLoadObserversQueueSuspendCount);
    if (v6 <= 0)
    {
      TSUSetCrashReporterInfo();
      v8 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPObjectContext addLoadedObjectsAndEnqueueNotifications:]", "[TSPObjectContext addLoadedObjectsAndEnqueueNotifications:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 4609);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 4609, 1, "Adding loaded objects before suspending the queue.");

      TSUCrashBreakpoint();
      abort();
    }

    objectsQueue = self->_objectsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769AAC94;
    block[3] = &unk_27A6E2898;
    block[4] = self;
    v15 = v4;
    dispatch_barrier_sync(objectsQueue, block);
  }
}

- (void)addLoadObserver:(id)a3 action:(SEL)a4 forObjectIdentifier:(int64_t)a5 objectOrNil:(id)a6
{
  v10 = a3;
  v11 = a6;
  loadObserversQueue = self->_loadObserversQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769AB0F0;
  block[3] = &unk_27A6E3008;
  v16 = v10;
  v17 = self;
  v19 = a4;
  v20 = a5;
  v18 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_barrier_async(loadObserversQueue, block);
}

- (void)addLoadObserver:(id)a3 action:(SEL)a4 forLazyReference:(id)a5
{
  v17 = a3;
  v8 = a5;
  v11 = objc_msgSend_weakObject(v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_tsp_identifier(v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_tsp_identifier(v8, v12, v13);
  }

  objc_msgSend_addLoadObserver_action_forObjectIdentifier_objectOrNil_(self, v16, v17, a4, v15, v14);
}

- (TSPObjectContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 88) = 1065353216;
  return self;
}

- (id)objectWithUUID:(id)a3
{
  v3 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(self, a2, a3, 0, 1, 0);

  return v3;
}

- (id)objectWithUUIDIfAvailable:(id)a3
{
  v3 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(self, a2, a3, 0, 0, 0);

  return v3;
}

- (id)objectWithUUIDIfAvailableAndLoaded:(id)a3
{
  v3 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(self, a2, a3, 1, 0, 0);

  return v3;
}

- (id)objectWithUUIDPath:(id)a3
{
  v4 = objc_msgSend_lastUUID(a3, a2, a3);
  v6 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(self, v5, v4, 0, 1, 0);

  return v6;
}

- (id)objectsFromUUIDs:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276ADFA48;
  v5[3] = &unk_27A6E6FA8;
  v5[4] = self;
  v3 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(a3, a2, v5);

  return v3;
}

- (id)UUIDsFromObjects:(id)a3
{
  v3 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(a3, a2, &unk_2885C5828);

  return v3;
}

- (id)dataWithDigest:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dataManager(self, v5, v6);
  v9 = objc_msgSend_dataForDigest_(v7, v8, v4);

  return v9;
}

+ (id)downloadURLForDataWithDigest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  objc_msgSend_setScheme_(v4, v5, @"iwres");
  v8 = objc_msgSend_digestString(v3, v6, v7);
  v11 = objc_msgSend_URLHostAllowedCharacterSet(MEMORY[0x277CCA900], v9, v10);
  v13 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v8, v12, v11);
  objc_msgSend_setHost_(v4, v14, v13);

  v17 = objc_msgSend_URL(v4, v15, v16);

  return v17;
}

- (BOOL)hasMissingOrUnmaterializedRemoteData
{
  v3 = objc_msgSend_dataManager(self, a2, v2);
  hasIncompleteDataIncludeUnmaterialized_includeMissing_includeExternalReference = objc_msgSend_hasIncompleteDataIncludeUnmaterialized_includeMissing_includeExternalReference_(v3, v4, 1, 1, 0);

  return hasIncompleteDataIncludeUnmaterialized_includeMissing_includeExternalReference;
}

- (BOOL)hasExternalReferenceOrMissingOrUnmaterializedRemoteData
{
  v3 = objc_msgSend_dataManager(self, a2, v2);
  hasIncompleteDataIncludeUnmaterialized_includeMissing_includeExternalReference = objc_msgSend_hasIncompleteDataIncludeUnmaterialized_includeMissing_includeExternalReference_(v3, v4, 1, 1, 1);

  return hasIncompleteDataIncludeUnmaterialized_includeMissing_includeExternalReference;
}

- (id)dataWithLegacyDataIdentifier:(int64_t)a3
{
  v4 = objc_msgSend_dataManager(self, a2, a3);
  v6 = objc_msgSend_dataForIdentifier_(v4, v5, a3);

  return v6;
}

- (void)checkForDataWarnings
{
  v13 = objc_msgSend_delegate(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_dataManager(self, v4, v5);
    v9 = objc_msgSend_dataWarnings(v6, v7, v8);

    if (objc_msgSend_count(v9, v10, v11))
    {
      objc_msgSend_addPersistenceWarnings_(v13, v12, v9);
    }
  }
}

- (NSArray)allDataWithLastDigestMismatch
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_dataManager(self, v4, v5, 0);
  v9 = objc_msgSend_allData(v6, v7, v8);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = objc_msgSend_lastMismatchedDigest(v16, v11, v12);
        v18 = v17 == 0;

        if (!v18)
        {
          objc_msgSend_addObject_(v3, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v21, v25, 16);
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)allErasedDataWithLastDigestMismatch
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_dataManager(self, v4, v5, 0);
  v9 = objc_msgSend_allData(v6, v7, v8);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if ((objc_msgSend_isReadable(v16, v11, v12) & 1) == 0)
        {
          v17 = objc_msgSend_lastMismatchedDigestString(v16, v11, v12);
          v18 = v17 == 0;

          if (!v18)
          {
            objc_msgSend_addObject_(v3, v11, v16);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v21, v25, 16);
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)allValidatedDataWithDigestMismatchCreatedPriorToVersion:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_documentMetadata(self, a2, a3);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext(DataValidation) allValidatedDataWithDigestMismatchCreatedPriorToVersion:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext_DataValidation.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 55, 0, "invalid nil value for '%{public}s'", "documentMetadata");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = objc_msgSend_dataManager(self, v15, v16);
  v20 = objc_msgSend_allData(v17, v18, v19);

  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v34, 16);
  if (v24)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_lastValidationResult(v27, v22, v23) == 2 && objc_msgSend_isReadable(v27, v22, v23) && objc_msgSend_creationVersionWithDocumentMetadata_(v27, v22, v6) < a3)
        {
          objc_msgSend_addObject_(v14, v22, v27);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v30, v34, 16);
    }

    while (v24);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

@end