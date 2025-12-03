@interface TSPDescriptionGenerator
+ (BOOL)dumpMessagesForDocumentURL:(id)l supportURL:(id)rL decryptionKey:(id)key toURL:(id)uRL;
+ (id)directoryForDocumentUUID:(id)d versionUUID:(id)iD;
- (BOOL)dumpComponentMessages:(id)messages printNewLine:(BOOL)line withPrinter:(void *)printer outputStream:(void *)stream;
- (BOOL)dumpMessagesToFilePath:(id)path;
- (TSPDescriptionGenerator)init;
- (TSPDescriptionGenerator)initWithContext:(id)context options:(unint64_t)options;
- (id).cxx_construct;
- (id)descriptionForIdentifier:(int64_t)identifier;
- (void)_messageAlternateMapFromArchivableContent:(id)content;
- (void)_strongReferencesFromArchiver:(id)archiver;
- (void)addArchiver:(id)archiver;
- (void)addComponent:(id)component;
- (void)addObject:(id)object;
- (void)addUUIDMapEntriesForComponent:(id)component;
- (void)processPackageMetadataMessage:(shared_ptr<google::protobuf::Message>)message;
@end

@implementation TSPDescriptionGenerator

+ (id)directoryForDocumentUUID:(id)d versionUUID:(id)iD
{
  v27[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v7 = MEMORY[0x277CCACA8];
  v8 = NSTemporaryDirectory();
  v27[0] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v27[1] = v10;
  v13 = objc_msgSend_UUIDString(dCopy, v11, v12);
  v16 = v13;
  v17 = @"UnknownDocumentUUID";
  if (v13)
  {
    v17 = v13;
  }

  v27[2] = v17;
  v18 = objc_msgSend_UUIDString(iDCopy, v14, v15);
  v20 = v18;
  v21 = @"UnknownVersionUUID";
  if (v18)
  {
    v21 = v18;
  }

  v27[3] = v21;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v27, 4);
  v24 = objc_msgSend_pathWithComponents_(v7, v23, v22);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (TSPDescriptionGenerator)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDescriptionGenerator init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDescriptionGenerator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 91, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDescriptionGenerator init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDescriptionGenerator)initWithContext:(id)context options:(unint64_t)options
{
  contextCopy = context;
  v39.receiver = self;
  v39.super_class = TSPDescriptionGenerator;
  v7 = [(TSPDescriptionGenerator *)&v39 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_context, contextCopy);
    v8->_options = options;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("TSPDescriptionGenerator.Access", v9);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objects = v8->_objects;
    v8->_objects = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uuidMap = v8->_uuidMap;
    v8->_uuidMap = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inverseUUIDMap = v8->_inverseUUIDMap;
    v8->_inverseUUIDMap = v16;

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_276A4CD98;
    v38[3] = &unk_27A6E4C80;
    v38[4] = v8;
    v20 = objc_msgSend_copy(v38, v18, v19);
    objectIdentifierForUUIDHandler = v8->_objectIdentifierForUUIDHandler;
    v8->_objectIdentifierForUUIDHandler = v20;

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_276A4CE2C;
    v37[3] = &unk_27A6E4CA0;
    v37[4] = v8;
    v24 = objc_msgSend_copy(v37, v22, v23);
    printerCustomPropertiesHandler = v8->_printerCustomPropertiesHandler;
    v8->_printerCustomPropertiesHandler = v24;

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_276A4D084;
    v36[3] = &unk_27A6E4CA0;
    v36[4] = v8;
    v28 = objc_msgSend_copy(v36, v26, v27);
    dataIdentifierHandler = v8->_dataIdentifierHandler;
    v8->_dataIdentifierHandler = v28;

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_276A4D334;
    v35[3] = &unk_27A6E4CC0;
    v35[4] = v8;
    v32 = objc_msgSend_copy(v35, v30, v31);
    digestHandler = v8->_digestHandler;
    v8->_digestHandler = v32;
  }

  return v8;
}

- (void)_strongReferencesFromArchiver:(id)archiver
{
  v3 = objc_msgSend_strongReferences(archiver, a2, archiver);
  if (objc_msgSend_count(v3, v4, v5))
  {
    operator new();
  }

  return 0;
}

- (void)_messageAlternateMapFromArchivableContent:(id)content
{
  v5 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  operator new();
}

- (void)addArchiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_msgSend_object(archiverCopy, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((self->_options & 4) == 0)
    {
      objc_msgSend_objectUUID(archiverCopy, v8, v9);
      objc_claimAutoreleasedReturnValue();
    }

    operator new();
  }
}

- (void)processPackageMetadataMessage:(shared_ptr<google::protobuf::Message>)message
{
  var0 = message.var0->var0;
  if (!self->_dataMap)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataMap = self->_dataMap;
    self->_dataMap = v5;
  }

  v7 = *(var0 + 14);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(var0[8] + v8);
      v10 = [TSPDigest alloc];
      v13 = objc_msgSend_initFromProtobufString_(v10, v11, *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL);
      if (v13)
      {
        v14 = self->_dataMap;
        v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v12, *(v9 + 112));
        objc_msgSend_setObject_forKeyedSubscript_(v14, v16, v13, v15);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((self->_options & 4) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_msgSend_objectUUID(objectCopy, v5, v6);
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A4E964;
    block[3] = &unk_27A6E29B0;
    v11 = objectCopy;
    selfCopy = self;
    v13 = v7;
    v9 = v7;
    dispatch_async(accessQueue, block);
  }
}

- (void)addComponent:(id)component
{
  componentCopy = component;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A4EB20;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = componentCopy;
  v6 = componentCopy;
  dispatch_async(accessQueue, v7);
}

- (void)addUUIDMapEntriesForComponent:(id)component
{
  componentCopy = component;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A4EC1C;
  v7[3] = &unk_27A6E2898;
  v8 = componentCopy;
  selfCopy = self;
  v6 = componentCopy;
  dispatch_async(accessQueue, v7);
}

- (BOOL)dumpMessagesToFilePath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A4F018;
  v8[3] = &unk_27A6E3818;
  v8[4] = self;
  v9 = pathCopy;
  v10 = &v11;
  v5 = pathCopy;
  objc_msgSend_performPrintOperationBlock_(self, v6, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (BOOL)dumpComponentMessages:(id)messages printNewLine:(BOOL)line withPrinter:(void *)printer outputStream:(void *)stream
{
  messagesCopy = messages;
  v13 = objc_msgSend_identifier(messagesCopy, v11, v12);
  v14 = v13;
  left = self->_messageMap.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_messageMap.__tree_.__end_node_;
    do
    {
      if (left->_components >= v13)
      {
        p_end_node = left;
      }

      left = *(&left->super.isa + (left->_components < v13));
    }

    while (left);
    if (p_end_node != &self->_messageMap.__tree_.__end_node_ && v13 >= p_end_node->_components)
    {
      sub_276A5279C(&p_end_node->_messageMap, &v79);
      v45 = v79;
      if (v80)
      {
        sub_2769C1430(v80);
      }

      if (line)
      {
        v46 = objc_alloc(MEMORY[0x277CCAB68]);
        v48 = objc_msgSend_initWithString_(v46, v47, @"\n");
      }

      else
      {
        v48 = objc_alloc_init(MEMORY[0x277CCAB68]);
      }

      v49 = v48;
      v50 = MEMORY[0x277CCACA8];
      v52 = *((*(*v45 + 152))(v45) + 8);
      if (*(v52 + 23) < 0)
      {
        v52 = *v52;
      }

      v53 = objc_msgSend_stringWithUTF8String_(v50, v51, v52);
      objc_msgSend_appendString_(v49, v54, v53);

      objc_msgSend_appendFormat_(v49, v55, @" id: %llu", v14);
      inverseUUIDMap = self->_inverseUUIDMap;
      v58 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v57, v14);
      v60 = objc_msgSend_objectForKeyedSubscript_(inverseUUIDMap, v59, v58);

      if (v60)
      {
        v63 = objc_msgSend_UUIDString(v60, v61, v62);
        objc_msgSend_appendFormat_(v49, v64, @" uuid: %@", v63);
      }

      v65 = objc_msgSend_locator(messagesCopy, v61, v62);
      objc_msgSend_appendFormat_(v49, v66, @" component: %@", v65);

      v69 = objc_msgSend_packageIdentifier(messagesCopy, v67, v68);
      v71 = sub_276AC69B4(v69, v70);
      objc_msgSend_appendFormat_(v49, v72, @" package: %@", v71);

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_276A4F70C;
      aBlock[3] = &unk_27A6E4D30;
      aBlock[4] = messagesCopy;
      v73 = _Block_copy(aBlock);
      v74 = v49;
      v77 = objc_msgSend_UTF8String(v74, v75, v76);
      sub_276A52F20(printer, v77, &p_end_node->_messageMap, stream, v73);
    }
  }

  if (line)
  {
    v17 = objc_alloc(MEMORY[0x277CCAB68]);
    v19 = objc_msgSend_initWithString_(v17, v18, @"\n");
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
  }

  v21 = v19;
  objc_msgSend_appendString_(v19, v20, @"MISSING_OR_CORRUPT_COMPONENT_ERROR");
  objc_msgSend_appendFormat_(v21, v22, @" id: %llu", v14);
  v23 = self->_inverseUUIDMap;
  v25 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v24, v14);
  v27 = objc_msgSend_objectForKeyedSubscript_(v23, v26, v25);

  if (v27)
  {
    v30 = objc_msgSend_UUIDString(v27, v28, v29);
    objc_msgSend_appendFormat_(v21, v31, @" uuid: %@", v30);
  }

  v32 = objc_msgSend_locator(messagesCopy, v28, v29);
  objc_msgSend_appendFormat_(v21, v33, @" component: %@", v32);

  v36 = objc_msgSend_packageIdentifier(messagesCopy, v34, v35);
  v38 = sub_276AC69B4(v36, v37);
  objc_msgSend_appendFormat_(v21, v39, @" package: %@", v38);

  v40 = v21;
  v43 = objc_msgSend_UTF8String(v40, v41, v42);
  sub_276A53164(printer, stream, v43);

  return 1;
}

- (id)descriptionForIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_276A4F828;
  v11 = sub_276A4F838;
  v12 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A4F840;
  block[3] = &unk_27A6E4D78;
  block[5] = &v7;
  block[6] = identifier;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (BOOL)dumpMessagesForDocumentURL:(id)l supportURL:(id)rL decryptionKey:(id)key toURL:(id)uRL
{
  v180 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  keyCopy = key;
  uRLCopy = uRL;
  v144 = lCopy;
  v10 = [TSPTemporaryFileCoordinatorDelegate alloc];
  v142 = objc_msgSend_initWithURL_(v10, v11, lCopy);
  if (rLCopy)
  {
    v13 = [TSPTemporaryFileCoordinatorDelegate alloc];
    v139 = objc_msgSend_initWithURL_(v13, v14, rLCopy);
  }

  else
  {
    v139 = 0;
  }

  v178 = 0;
  v15 = objc_msgSend_newPackageWithURL_options_packageIdentifier_decryptionKey_fileCoordinatorDelegate_error_(TSPPackage, v12, lCopy, 0, 1, keyCopy, v142, &v178);
  v16 = v178;
  v17 = v16;
  v153 = v15;
  if (v15)
  {

    if (!rLCopy)
    {
      v21 = 0;
      v152 = 0;
      goto LABEL_12;
    }

    v177 = 0;
    v19 = objc_msgSend_newPackageWithURL_options_packageIdentifier_decryptionKey_fileCoordinatorDelegate_error_(TSPPackage, v18, rLCopy, 0, 2, keyCopy, v139, &v177);
    v20 = v177;
    v17 = v20;
    v152 = v19;
    if (v19)
    {
      v21 = v20;
LABEL_12:
      v134 = objc_alloc_init(TSPTemporaryObjectContextDelegate);
      v22 = [TSPObjectContext alloc];
      v25 = objc_msgSend_sharedRegistry(TSPRegistry, v23, v24);
      InternalMetadataObject = objc_msgSend_initWithDelegate_registry_resourceContext_mode_isLoadingDocument_shouldCreateInternalMetadataObject_(v22, v26, v134, v25, 0, 6, 1, 0);

      v27 = [TSPPackageReadCoordinator alloc];
      v176 = v21;
      ValidationPolicy = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_(v27, v28, InternalMetadataObject, v153, lCopy, 0, 0, 1, 0);
      v141 = objc_msgSend_readPackageMetadataWithError_(ValidationPolicy, v29, &v176);
      v17 = v176;

      objc_msgSend_tearDown(ValidationPolicy, v30, v31);
      v143 = 0;
      if (!v141 || !v152)
      {
        v150 = 0;
LABEL_27:
        v62 = objc_msgSend_documentRevision(ValidationPolicy, v32, v33);
        v65 = objc_msgSend_passphrase(keyCopy, v63, v64);
        objc_msgSend_prepareForDocumentDumpWithDocumentPackage_supportPackage_documentRevision_passphrase_(InternalMetadataObject, v66, v153, v152, v62, v65);

        objc_msgSend_close(InternalMetadataObject, v67, v68);
        v137 = v141 != 0;
        if (v141)
        {
          v69 = [TSPDescriptionGenerator alloc];
          v149 = objc_msgSend_initWithContext_options_(v69, v70, InternalMetadataObject, 0);
          v136 = objc_msgSend_componentManager(InternalMetadataObject, v71, v72);
          v133 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v169 = 0;
          v170 = &v169;
          v171 = 0x3032000000;
          v172 = sub_276A4F828;
          v173 = sub_276A4F838;
          v174 = 0;
          v163 = 0;
          v164 = &v163;
          v165 = 0x3032000000;
          v166 = sub_276A4F828;
          v167 = sub_276A4F838;
          v168 = 0;
          objc_msgSend_loadFromPackage_metadata_(v136, v73, v153, v141);
          if (v143)
          {
            objc_msgSend_loadFromPackage_metadata_(v136, v74, v152, v143);
          }

          v162[0] = MEMORY[0x277D85DD0];
          v162[1] = 3221225472;
          v162[2] = sub_276A50824;
          v162[3] = &unk_27A6E4DA0;
          v162[6] = &v169;
          v162[7] = &v163;
          v162[4] = v133;
          v162[5] = v149;
          objc_msgSend_enumerateComponents_(v136, v74, v162);
          v76 = objc_msgSend_sortedArrayUsingComparator_(v133, v75, &unk_2885C4180);
          v135 = objc_msgSend_mutableCopy(v76, v77, v78);

          v80 = v164[5];
          if (v80)
          {
            objc_msgSend_insertObject_atIndex_(v135, v79, v80, 0);
          }

          v81 = v170[5];
          if (v81)
          {
            objc_msgSend_insertObject_atIndex_(v135, v79, v81, 0);
          }

          v82 = objc_msgSend_message(v141, v79, v81);
          v85 = objc_msgSend_tsp_identifier(v141, v83, v84);
          objc_msgSend_addMessage_withStrongReferencesMap_forObjectIdentifier_(v149, v86, v82, 0, v85);
          v87 = [TSPComponent alloc];
          v132 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(v87, v88, v136, 2, @"Metadata", 1);
          objc_msgSend_addObject_(v135, v89, v132);
          if (v143)
          {
            v92 = objc_msgSend_message(v143, v90, v91);
            objc_msgSend_addMessage_withStrongReferencesMap_forObjectIdentifier_(v149, v93, v92, 0, 99);
            v94 = [TSPComponent alloc];
            v96 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(v94, v95, v136, 99, @"Metadata", 2);
            objc_msgSend_addObject_(v135, v97, v96);
          }

          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          obj = v135;
          v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v98, &v158, v179, 16);
          if (v101)
          {
            v102 = *v159;
            do
            {
              v103 = 0;
              do
              {
                if (*v159 != v102)
                {
                  objc_enumerationMutation(obj);
                }

                v104 = *(*(&v158 + 1) + 8 * v103);
                v105 = objc_msgSend_packageIdentifier(v104, v99, v100);
                v106 = v153;
                if (v105 != 1)
                {
                  v106 = v152;
                }

                v107 = v106;
                v110 = objc_msgSend_packageIdentifier(v104, v108, v109);
                v111 = ValidationPolicy;
                if (v110 != 1)
                {
                  v111 = v150;
                }

                v112 = v111;

                v115 = objc_msgSend_locator(v104, v113, v114);
                v118 = objc_msgSend_compressionAlgorithm(v104, v116, v117);
                isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(v104, v119, v120);
                v157 = 0;
                isStoredOutsideObjectArchive_error = objc_msgSend_newReadChannelForComponentLocator_compressionAlgorithm_isStoredOutsideObjectArchive_error_(v107, v122, v115, v118, isStoredOutsideObjectArchive, &v157);
                v17 = v157;

                if (isStoredOutsideObjectArchive_error)
                {
                  v124 = [TSPDescriptionComponentReader alloc];
                  Channel_descriptionGenerator = objc_msgSend_initWithComponent_delegate_readChannel_descriptionGenerator_(v124, v125, v104, v112, isStoredOutsideObjectArchive_error, v149);
                  objc_msgSend_read(Channel_descriptionGenerator, v127, v128);
                }

                else if (*MEMORY[0x277D81408] != -1)
                {
                  sub_276BD4D60();
                }

                ++v103;
              }

              while (v101 != v103);
              v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v99, &v158, v179, 16);
            }

            while (v101);
          }

          v154[0] = MEMORY[0x277D85DD0];
          v154[1] = 3221225472;
          v154[2] = sub_276A509DC;
          v154[3] = &unk_27A6E29B0;
          v154[4] = v149;
          v155 = uRLCopy;
          v156 = obj;
          objc_msgSend_performPrintOperationBlock_(v149, v129, v154);

          _Block_object_dispose(&v163, 8);
          _Block_object_dispose(&v169, 8);
        }

        else if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD4D38();
        }

        goto LABEL_55;
      }

      v34 = [TSPPackageReadCoordinator alloc];
      v36 = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_(v34, v35, InternalMetadataObject, v152, rLCopy, 0, 0, 1, 0);
      v175 = v17;
      v38 = objc_msgSend_readPackageMetadataWithError_(v36, v37, &v175);
      v148 = v175;

      objc_msgSend_tearDown(v36, v39, v40);
      if (!v38)
      {
        v143 = 0;
        v43 = v141;
        v141 = 0;
LABEL_26:

        v150 = v36;
        v17 = v148;
        goto LABEL_27;
      }

      v43 = objc_msgSend_documentProperties(v153, v41, v42);
      v46 = objc_msgSend_documentProperties(v152, v44, v45);
      v49 = objc_msgSend_documentUUID(v46, v47, v48);
      v52 = objc_msgSend_documentUUID(v43, v50, v51);
      if (objc_msgSend_isEqual_(v49, v53, v52))
      {
        v56 = objc_msgSend_versionUUID(v46, v54, v55);
        v59 = objc_msgSend_versionUUID(v43, v57, v58);
        isEqual = objc_msgSend_isEqual_(v56, v60, v59);

        if (isEqual)
        {
          v143 = v38;
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
      }

      v143 = 0;
      v36 = 0;
      v152 = 0;
      goto LABEL_25;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD4D10();
    }

    v137 = 0;
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD4D88();
    }

    v137 = 0;
  }

LABEL_55:

  v130 = *MEMORY[0x277D85DE8];
  return v137;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end