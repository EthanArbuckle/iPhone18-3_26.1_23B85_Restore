@interface TSPDatabaseReader
- (BOOL)validateObjectIdentifierForObject:(id)object;
- (Message)newDataMessageForDatabaseObject:(id)object;
- (Message)newImageDataMessageForDatabaseObject:(id)object;
- (TSPDatabaseReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate;
- (TSPDatabaseReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate database:(id)database databaseVersion:(unint64_t)version;
- (id).cxx_construct;
- (id)appRelativePathForOldDataArchive:(const void *)archive;
- (id)dataForIdentifier:(int64_t)identifier referencedByObjectIdentifier:(int64_t)objectIdentifier objectClass:(Class)class;
- (id)dataForOldDataArchive:(const void *)archive;
- (id)filenameFromOldDataArchive:(const void *)archive;
- (id)newUnarchiverWithDatabaseObject:(id)object;
- (id)objectUUIDMap;
- (void)beginReadingWithCompletionQueue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)didUnarchiveObject:(id)object withUnarchiver:(id)unarchiver;
- (void)enumerateDataAppRelativePathsUsingBlock:(id)block;
- (void)filterIdentifiers:(const void *)identifiers;
- (void)resolveReferences;
- (void)unarchiveObjectWithIdentifierAsync:(int64_t)async referencedByObjectIdentifier:(int64_t)identifier objectClass:(Class)class;
@end

@implementation TSPDatabaseReader

- (TSPDatabaseReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate
{
  componentCopy = component;
  queueCopy = queue;
  delegateCopy = delegate;
  v10 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDatabaseReader initWithComponent:finalizeHandlerQueue:delegate:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReader.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v12, v14, 47, 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s: %s", "Do not call method", "[TSPDatabaseReader initWithComponent:finalizeHandlerQueue:delegate:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (TSPDatabaseReader)initWithComponent:(id)component finalizeHandlerQueue:(id)queue delegate:(id)delegate database:(id)database databaseVersion:(unint64_t)version
{
  componentCopy = component;
  queueCopy = queue;
  delegateCopy = delegate;
  databaseCopy = database;
  v25.receiver = self;
  v25.super_class = TSPDatabaseReader;
  v16 = [(TSPReader *)&v25 initWithComponent:componentCopy finalizeHandlerQueue:queueCopy delegate:delegateCopy];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("TSPDatabaseReader.Read", v17);
    databaseQueue = v16->_databaseQueue;
    v16->_databaseQueue = v18;

    objc_storeStrong(&v16->_database, database);
    v16->_databaseVersion = version;
    v20 = objc_alloc(MEMORY[0x277CCAA50]);
    v22 = objc_msgSend_initWithOptions_capacity_(v20, v21, 512, 0);
    datas = v16->_datas;
    v16->_datas = v22;
  }

  return v16;
}

- (void)dealloc
{
  objc_msgSend_closeWithError_(self->_database, a2, 0);
  v3.receiver = self;
  v3.super_class = TSPDatabaseReader;
  [(TSPDatabaseReader *)&v3 dealloc];
}

- (void)beginReadingWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  objc_msgSend_unarchiveObjectWithIdentifierAsync_referencedByObjectIdentifier_objectClass_(self, v8, 1, 0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A7D6D0;
  block[3] = &unk_27A6E3480;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)unarchiveObjectWithIdentifierAsync:(int64_t)async referencedByObjectIdentifier:(int64_t)identifier objectClass:(Class)class
{
  v9 = objc_msgSend_completionGroup(self, a2, async);
  databaseQueue = self->_databaseQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276A7D79C;
  v11[3] = &unk_27A6E5B28;
  v11[4] = self;
  v11[5] = async;
  v11[6] = identifier;
  v11[7] = class;
  dispatch_group_async(v9, databaseQueue, v11);
}

- (id)dataForIdentifier:(int64_t)identifier referencedByObjectIdentifier:(int64_t)objectIdentifier objectClass:(Class)class
{
  v9 = objc_opt_class();
  if (v9 == class)
  {
    objectIdentifierCopy = 0;
  }

  else
  {
    objectIdentifierCopy = objectIdentifier;
  }

  if (v9 == class)
  {
    classCopy = 0;
  }

  else
  {
    classCopy = class;
  }

  v14.receiver = self;
  v14.super_class = TSPDatabaseReader;
  v12 = [(TSPReader *)&v14 dataForIdentifier:identifier referencedByObjectIdentifier:objectIdentifierCopy objectClass:classCopy];

  return v12;
}

- (id)newUnarchiverWithDatabaseObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_context(self, v5, v6);
  v10 = objc_msgSend_registry(v7, v8, v9);

  v13 = objc_msgSend_classType(objectCopy, v11, v12);
  v15 = v13;
  if ((v13 & 0xFFFFFFFB) == 0x2AF9)
  {
    v16 = objc_msgSend_newDataMessageForDatabaseObject_(self, v14, objectCopy);
    goto LABEL_5;
  }

  if (v13 == 11002)
  {
    v16 = objc_msgSend_newImageDataMessageForDatabaseObject_(self, v14, objectCopy);
LABEL_5:
    v19 = v16;
    if (v16)
    {
LABEL_6:
      v48 = v10;
      database = self->_database;
      v21 = objc_msgSend_identifier(objectCopy, v17, v18);
      v52 = 0;
      v23 = objc_msgSend_newRelationshipTargetsForSourceIdentifier_error_(database, v22, v21, &v52);
      v24 = v52;
      if (v23)
      {
        if (*(v23 + 16))
        {
          operator new();
        }

        sub_276A579A4(v23, *(v23 + 8));
        MEMORY[0x277C9F670](v23, 0x1020C4062D53EE8);
      }

      else if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD5BB0();
      }

      v32 = [TSPDatabaseUnarchiver alloc];
      v34 = objc_msgSend_unarchiveClassForMessageType_(v48, v33, v15);
      v51 = v19;
      v37 = objc_msgSend_identifier(objectCopy, v35, v36);
      v50 = 0;
      databaseVersion = self->_databaseVersion;
      v41 = objc_msgSend_delegate(self, v39, v40);
      v43 = objc_msgSend_lazyReferenceDelegateForReader_(v41, v42, self);
      v45 = objc_msgSend_initWithMessageType_unarchiveClass_message_identifier_strongReferences_databaseVersion_objectDelegate_lazyReferenceDelegate_delegate_(v32, v44, v15, v34, &v51, v37, &v50, databaseVersion, self, v43, self);

      sub_276A519D8(&v50);
      v46 = v51;
      v51 = 0;
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      v10 = v48;
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v25 = objc_msgSend_messagePrototypeForMessageType_(v10, v14, v13);
  if (v25)
  {
    v19 = (*(*v25 + 24))(v25);
    v49 = v10;
    v26 = self->_database;
    v53 = 0;
    v28 = objc_msgSend_parseArchive_forObject_error_(v26, v27, v19, objectCopy, &v53);
    v29 = v53;
    v31 = v29;
    if (v28)
    {

      v10 = v49;
      goto LABEL_6;
    }

    objc_msgSend_setError_(self, v30, v29);

    v10 = v49;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

LABEL_20:
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD5BD8();
  }

  v45 = 0;
LABEL_23:

  return v45;
}

- (void)didUnarchiveObject:(id)object withUnarchiver:(id)unarchiver
{
  objectCopy = object;
  unarchiverCopy = unarchiver;
  v9 = objc_msgSend_tsp_identifier(objectCopy, v7, v8);
  v10 = objc_opt_class();
  v13 = objc_msgSend_references(unarchiverCopy, v11, v12);
  v16 = *v13;
  v17 = *(v13 + 8);
  while (v16 != v17)
  {
    objc_msgSend_unarchiveObjectWithIdentifierAsync_referencedByObjectIdentifier_objectClass_(self, v14, *v16, v9, v10);
    v16 += 5;
  }

  v18 = objc_msgSend_repeatedReferences(unarchiverCopy, v14, v15);
  v20 = *v18;
  v21 = v18[1];
  while (v20 != v21)
  {
    v22 = *v20;
    v23 = v20[1];
    while (v22 != v23)
    {
      objc_msgSend_unarchiveObjectWithIdentifierAsync_referencedByObjectIdentifier_objectClass_(self, v19, *v22++, v9, v10);
    }

    v20 += 7;
  }
}

- (BOOL)validateObjectIdentifierForObject:(id)object
{
  objectCopy = object;
  if (objc_msgSend_tsp_identifier(objectCopy, v5, v6) == 3)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSPDatabaseReader;
    v7 = [(TSPReader *)&v9 validateObjectIdentifierForObject:objectCopy];
  }

  return v7;
}

- (void)resolveReferences
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276A7E14C;
  v2[3] = &unk_27A6E27F8;
  v2[4] = self;
  objc_msgSend_tsp_performSynchronousLegacyDocumentReferenceResolutionUsingBlock_(MEMORY[0x277CCACC8], a2, v2);
}

- (id)appRelativePathForOldDataArchive:(const void *)archive
{
  if (*(archive + 16))
  {
    v4 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerateDataAppRelativePathsUsingBlock:(id)block
{
  blockCopy = block;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A7E280;
  v7[3] = &unk_27A6E4C58;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(databaseQueue, v7);
}

- (Message)newDataMessageForDatabaseObject:(id)object
{
  objectCopy = object;
  sub_276AB8748(v12, 0);
  database = self->_database;
  v11 = 0;
  v7 = objc_msgSend_parseArchive_forObject_error_(database, v6, v12, objectCopy, &v11);
  v9 = v11;
  if (v7)
  {
    objc_msgSend_dataForOldDataArchive_(self, v8, v12);
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  objc_msgSend_setError_(self, v8, v9);
  sub_276AB881C(v12);

  return 0;
}

- (Message)newImageDataMessageForDatabaseObject:(id)object
{
  objectCopy = object;
  sub_276AB93EC(v12, 0);
  database = self->_database;
  v11 = 0;
  v7 = objc_msgSend_parseArchive_forObject_error_(database, v6, v12, objectCopy, &v11);
  v9 = v11;
  if (v7)
  {
    if (v13)
    {
      objc_msgSend_dataForOldDataArchive_(self, v8, v13);
    }

    else
    {
      objc_msgSend_dataForOldDataArchive_(self, v8, &unk_2812FDA50);
    }

    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  objc_msgSend_setError_(self, v8, v9);
  sub_276AB94B8(v12);

  return 0;
}

- (id)dataForOldDataArchive:(const void *)archive
{
  v5 = *(archive + 4);
  if ((v5 & 4) != 0)
  {
    v8 = objc_msgSend_delegate(self, a2, archive);
    v9 = *(archive + 5);
    if (!v9)
    {
      v9 = &TSP::_Reference_default_instance_;
    }

    v10 = v9[3];
    v11 = objc_msgSend_filenameFromOldDataArchive_(self, v7, archive);
    v6 = objc_msgSend_databaseReader_wantsDataForDatabaseObjectIdentifier_filename_(v8, v12, self, v10, v11);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v8 = objc_msgSend_delegate(self, a2, archive);
    v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v13, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    v15 = objc_msgSend_filenameFromOldDataArchive_(self, v14, archive);
    v6 = objc_msgSend_databaseReader_wantsDataForAppRelativePath_filename_(v8, v16, self, v11, v15);
  }

  if (v6)
  {
    objc_msgSend_addObject_(self->_datas, v17, v6);
  }

LABEL_10:

  return v6;
}

- (id)filenameFromOldDataArchive:(const void *)archive
{
  if ((*(archive + 16) & 2) != 0)
  {
    v4 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v4 = @"database_data";
  }

  return v4;
}

- (id)objectUUIDMap
{
  v3 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_objectUUIDMap(v3, v4, v5);

  return v6;
}

- (void)filterIdentifiers:(const void *)identifiers
{
  if ((objc_msgSend_tsp_isUnarchiverThread(MEMORY[0x277CCACC8], a2, identifiers) & 1) == 0)
  {
    TSUSetCrashReporterInfo();
    v30 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPDatabaseReader filterIdentifiers:]", "[TSPDatabaseReader filterIdentifiers:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReader.mm", 341);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v32, v34, 341, 1, "This method should only be called from the unarchiver thread.");

    TSUCrashBreakpoint();
    abort();
  }

  v7 = self->_databaseQueue;
  if (v7 != MEMORY[0x277D85CD0] || (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v5, v6) & 1) == 0)
  {
    dispatch_assert_queue_V2(v7);
  }

  database = self->_database;
  v36 = 0;
  v10 = objc_msgSend_filterIdentifiers_error_(database, v9, identifiers, &v36);
  v12 = v36;
  if (!v10)
  {
    objc_msgSend_setError_(self, v11, v12);
    v13 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDatabaseReader filterIdentifiers:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReader.mm");
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v22 = objc_msgSend_domain(v12, v20, v21);
    v25 = objc_msgSend_code(v12, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v26, v15, v17, 350, 0, "Failed to filter identifiers with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v19, v22, v25, v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 66) = 1065353216;
  return self;
}

@end