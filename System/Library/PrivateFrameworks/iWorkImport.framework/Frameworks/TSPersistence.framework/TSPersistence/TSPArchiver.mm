@interface TSPArchiver
- (BOOL)isSavingCollaborativeDocument;
- (BOOL)isSavingDocumentAs;
- (BOOL)shouldSaveAlternates;
- (BOOL)updateMessageInfo:(void *)info withArchiver:(id)archiver;
- (TSPArchiver)initWithObject:(id)object flags:(char)flags;
- (id)alternateForVersion:(unint64_t)version;
- (id)calculateOrderedArchivableContent;
- (void)aggregateReferencesFromArchiver:(id)archiver;
- (void)archive;
- (void)cleanup;
- (void)serialize;
- (void)validateOrderedArchivableContent:(id)content;
@end

@implementation TSPArchiver

- (TSPArchiver)initWithObject:(id)object flags:(char)flags
{
  objectCopy = object;
  v31.receiver = self;
  v31.super_class = TSPArchiver;
  v9 = [(TSPArchiverBase *)&v31 initWithObject:objectCopy];
  if (v9)
  {
    v10 = objc_msgSend_objectUUID(objectCopy, v7, v8);
    objectUUID = v9->_objectUUID;
    v9->_objectUUID = v10;

    v14 = objc_msgSend_componentRootObject(objectCopy, v12, v13);
    explicitComponentRootObject = v9->_explicitComponentRootObject;
    v9->_explicitComponentRootObject = v14;

    if ((objc_msgSend_targetType(v9, v16, v17) & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      v20 = objc_msgSend_tsp_unknownContent(objectCopy, v18, v19);
      v23 = objc_msgSend_newUnknownContentSnapshot(v20, v21, v22);
      unknownContentSnapshot = v9->_unknownContentSnapshot;
      v9->_unknownContentSnapshot = v23;
    }

    v25 = dispatch_group_create();
    archiveGroup = v9->_archiveGroup;
    v9->_archiveGroup = v25;

    v27 = dispatch_group_create();
    serializeGroup = v9->_serializeGroup;
    v9->_serializeGroup = v27;

    atomic_store(flags, &v9->_flags);
    v29 = v9;
  }

  return v9;
}

- (BOOL)shouldSaveAlternates
{
  selfCopy = self;
  v4 = objc_msgSend_targetType(self, a2, v2);
  v7 = v4;
  if (v4 != 5 && v4)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    selfCopy = objc_msgSend_object(selfCopy, v5, v6);
    v10 = objc_msgSend_isCommandObject(selfCopy, v8, v9) ^ 1;
  }

  if (v7 == 5 || !v7)
  {
  }

  return v10;
}

- (id)alternateForVersion:(unint64_t)version
{
  v5 = objc_msgSend_minimumSupportedVersion(self, a2, version);
  if (v5 <= version)
  {
    v46 = v5;
    v8 = NSStringFromTSPVersion(version, v6);
    selfCopy = self;
    v10 = v8;
    v11 = selfCopy;
    v14 = objc_msgSend_object(selfCopy, v12, v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v19 = objc_msgSend_object(v11, v17, v18);
    v22 = objc_msgSend_tsp_identifier(v19, v20, v21);
    v45 = NSStringFromTSPVersion(v46, v23);
    TSUSetCrashReporterInfo();

    v24 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPArchiver alternateForVersion:]", "[TSPArchiver alternateForVersion:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 164, v10, v16, v22, v45);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    v30 = NSStringFromTSPVersion(version, v29);
    v33 = objc_msgSend_object(v11, v31, v32);
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v38 = objc_msgSend_object(v11, v36, v37);
    v41 = objc_msgSend_tsp_identifier(v38, v39, v40);
    v43 = NSStringFromTSPVersion(v46, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v44, v26, v28, 164, 1, "Version (%{public}@) of alternate message for object [%{public}@-%llu] should be less than the message version (%{public}@) unless it's defined for merging.", v30, v35, v41, v43);

    TSUCrashBreakpoint();
    abort();
  }

  return objc_msgSend_addAlternateArchiverForVersion_fieldPath_isDiffArchiver_diffReadVersion_message_(self, v6, version, 0, 0, 0, 0);
}

- (void)archive
{
  v177 = *MEMORY[0x277D85DE8];
  v134 = objc_msgSend_object(self, a2, v2);
  v6 = objc_msgSend_targetType(self, v4, v5);
  v7 = MEMORY[0x277CCACC8];
  v171[0] = MEMORY[0x277D85DD0];
  v171[1] = 3221225472;
  v171[2] = sub_2769BC718;
  v171[3] = &unk_27A6E2898;
  v137 = v134;
  v172 = v137;
  selfCopy = self;
  objc_msgSend_tsp_performSynchronousArchiverOperationUsingBlock_(v7, v8, v171);
  objc_opt_class();
  if (!(objc_opt_isKindOfClass() & 1 | (v6 == 4)))
  {
    v11 = objc_msgSend_message(self, v9, v10);
    v12 = v11;
    if (!v11 || ((*(*v11 + 48))(v11) & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPArchiver archive]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      if (v12)
      {
        (*(*v12 + 16))(v169, v12);
        if (v170 >= 0)
        {
          v17 = v169;
        }

        else
        {
          v17 = v169[0];
        }
      }

      else
      {
        v17 = "NULL";
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v23 = objc_msgSend_tsp_identifier(v137, v20, v21);
      if (v12)
      {
        (*(*v12 + 56))(__p, v12);
        if (v168 >= 0)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v14, v16, 246, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu]: %{public}s", v17, v19, v23, __p);
        }

        else
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v14, v16, 246, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu]: %{public}s", v17, v19, v23, __p[0]);
        }
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v22, v14, v16, 246, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu]: %{public}s", v17, v19, v23, "");
      }

      if (v12)
      {
        if (v168 < 0)
        {
          operator delete(__p[0]);
        }

        if (v170 < 0)
        {
          operator delete(v169[0]);
        }
      }

      else
      {
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }
  }

  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = sub_2769BC764;
  v165 = sub_2769BC774;
  v166 = 0;
  v136 = objc_msgSend_messages(self->_unknownContentSnapshot, v9, v10);
  v135 = objc_msgSend_alternates(self, v27, v28);
  if (objc_msgSend_count(v136, v29, v30) || objc_msgSend_count(v135, v31, v32))
  {
    v35 = [TSPReferenceOrderedSet alloc];
    v37 = objc_msgSend_initWithCapacity_(v35, v36, 0);
    aggregatedStrongReferences = self->_aggregatedStrongReferences;
    self->_aggregatedStrongReferences = v37;

    v39 = [TSPReferenceOrderedSet alloc];
    v41 = objc_msgSend_initWithCapacity_(v39, v40, 0);
    aggregatedWeakReferences = self->_aggregatedWeakReferences;
    self->_aggregatedWeakReferences = v41;

    v43 = objc_alloc(MEMORY[0x277CCAA50]);
    v45 = objc_msgSend_initWithOptions_capacity_(v43, v44, 512, 0);
    aggregatedLazyReferences = self->_aggregatedLazyReferences;
    self->_aggregatedLazyReferences = v45;

    v47 = objc_alloc(MEMORY[0x277CCAA50]);
    v49 = objc_msgSend_initWithOptions_capacity_(v47, v48, 512, 0);
    aggregatedDataReferences = self->_aggregatedDataReferences;
    self->_aggregatedDataReferences = v49;

    v51 = [_TtC13TSPersistence23TSPMutableIdentifierSet alloc];
    v53 = objc_msgSend_initWithCapacity_(v51, v52, 0);
    aggregatedCountedDataReferences = self->_aggregatedCountedDataReferences;
    self->_aggregatedCountedDataReferences = v53;

    objc_msgSend_aggregateReferencesFromArchiver_(self, v55, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2769BC77C;
    aBlock[3] = &unk_27A6E3110;
    v158 = v137;
    selfCopy2 = self;
    v160 = &v161;
    v56 = _Block_copy(aBlock);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_2769BCAA8;
    v155[3] = &unk_27A6E3138;
    v133 = v56;
    v156 = v133;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v135, v57, v155);
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    obj = v136;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v151, v176, 16);
    if (v59)
    {
      v139 = *v152;
      do
      {
        v140 = v59;
        for (i = 0; i != v140; ++i)
        {
          if (*v152 != v139)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v151 + 1) + 8 * i);
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v141 = v62;
          v63 = objc_msgSend_objects(v62, v60, v61);
          v66 = objc_msgSend_references(v63, v64, v65);

          v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v147, v175, 16);
          if (v70)
          {
            v71 = *v148;
            do
            {
              for (j = 0; j != v70; ++j)
              {
                if (*v148 != v71)
                {
                  objc_enumerationMutation(v66);
                }

                v73 = *(*(&v147 + 1) + 8 * j);
                v75 = objc_msgSend_objectIfLoaded(v73, v68, v69);
                if (!v75)
                {
                  v75 = v73;
                }

                objc_msgSend_addItem_(self->_aggregatedStrongReferences, v74, v75);
                objc_msgSend_addObject_(self->_aggregatedLazyReferences, v76, v73);
              }

              v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v147, v175, 16);
            }

            while (v70);
          }

          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v79 = objc_msgSend_allData(v141, v77, v78);
          v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v143, v174, 16);
          if (v82)
          {
            v83 = *v144;
            do
            {
              for (k = 0; k != v82; ++k)
              {
                if (*v144 != v83)
                {
                  objc_enumerationMutation(v79);
                }

                v85 = *(*(&v143 + 1) + 8 * k);
                objc_msgSend_addObject_(self->_aggregatedDataReferences, v81, v85);
                v86 = self->_aggregatedCountedDataReferences;
                v89 = objc_msgSend_identifier(v85, v87, v88);
                objc_msgSend_incrementCountBy_forIdentifier_(v86, v90, 1, v89);
              }

              v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v143, v174, 16);
            }

            while (v82);
          }
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v151, v176, 16);
      }

      while (v59);
    }

    if (!objc_msgSend_count(self->_aggregatedStrongReferences, v91, v92))
    {
      v95 = self->_aggregatedStrongReferences;
      self->_aggregatedStrongReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedWeakReferences, v93, v94))
    {
      v98 = self->_aggregatedWeakReferences;
      self->_aggregatedWeakReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedLazyReferences, v96, v97))
    {
      v101 = self->_aggregatedLazyReferences;
      self->_aggregatedLazyReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedDataReferences, v99, v100))
    {
      v104 = self->_aggregatedDataReferences;
      self->_aggregatedDataReferences = 0;
    }

    if (!objc_msgSend_count(self->_aggregatedCountedDataReferences, v102, v103))
    {
      v105 = self->_aggregatedCountedDataReferences;
      self->_aggregatedCountedDataReferences = 0;
    }

    v106 = v158;
  }

  else
  {
    v107 = objc_msgSend_strongReferences(self, v33, v34);
    v108 = self->_aggregatedStrongReferences;
    self->_aggregatedStrongReferences = v107;

    v111 = objc_msgSend_weakReferences(self, v109, v110);
    v112 = self->_aggregatedWeakReferences;
    self->_aggregatedWeakReferences = v111;

    v115 = objc_msgSend_lazyReferences(self, v113, v114);
    v116 = self->_aggregatedLazyReferences;
    self->_aggregatedLazyReferences = v115;

    v119 = objc_msgSend_dataReferences(self, v117, v118);
    v120 = self->_aggregatedDataReferences;
    self->_aggregatedDataReferences = v119;

    v123 = objc_msgSend_countedDataReferences(self, v121, v122);
    v106 = self->_aggregatedCountedDataReferences;
    self->_aggregatedCountedDataReferences = v123;
  }

  v125 = self->_aggregatedStrongReferences;
  if (v125)
  {
    objc_msgSend_minusSet_(self->_aggregatedWeakReferences, v124, v125);
  }

  unknownContentSnapshot = self->_unknownContentSnapshot;
  if (unknownContentSnapshot)
  {
    v127 = v162[5];
    if (v127)
    {
      objc_msgSend_addRulesFromKnownFieldRuleProvider_(v127, v124, unknownContentSnapshot);
    }

    else
    {
      v128 = objc_msgSend_message(self, v124, unknownContentSnapshot);
      v130 = objc_msgSend_newKnownFieldVersionRequirementsMapForMessage_knownFieldRuleProvider_(TSPKnownFieldVersionRequirementsMap, v129, v128, self->_unknownContentSnapshot);
      v131 = v162[5];
      v162[5] = v130;
    }
  }

  objc_msgSend_saveToArchiver_(v162[5], v124, self);

  _Block_object_dispose(&v161, 8);
  v132 = *MEMORY[0x277D85DE8];
}

- (void)aggregateReferencesFromArchiver:(id)archiver
{
  archiverCopy = archiver;
  aggregatedStrongReferences = self->_aggregatedStrongReferences;
  v32 = archiverCopy;
  v8 = objc_msgSend_strongReferences(archiverCopy, v6, v7);
  objc_msgSend_unionSet_(aggregatedStrongReferences, v9, v8);

  aggregatedWeakReferences = self->_aggregatedWeakReferences;
  v13 = objc_msgSend_weakReferences(v32, v11, v12);
  objc_msgSend_unionSet_(aggregatedWeakReferences, v14, v13);

  aggregatedLazyReferences = self->_aggregatedLazyReferences;
  v18 = objc_msgSend_lazyReferences(v32, v16, v17);
  objc_msgSend_unionHashTable_(aggregatedLazyReferences, v19, v18);

  aggregatedDataReferences = self->_aggregatedDataReferences;
  v23 = objc_msgSend_dataReferences(v32, v21, v22);
  objc_msgSend_unionHashTable_(aggregatedDataReferences, v24, v23);

  v27 = objc_msgSend_countedDataReferences(v32, v25, v26);
  v30 = objc_msgSend_makeIdentifierSet(v27, v28, v29);

  if (v30)
  {
    objc_msgSend_mergeWithIdentifierSet_(self->_aggregatedCountedDataReferences, v31, v30);
  }
}

- (BOOL)updateMessageInfo:(void *)info withArchiver:(id)archiver
{
  v190 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_message(archiver, a2, info);
  v173 = objc_msgSend_object(self, v8, v9);
  objc_opt_class();
  v174 = TSUDynamicCast();
  isDiff = objc_msgSend_isDiff(v174, v10, v11);
  if (isDiff)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend_messageType(archiver, v12, v13);
  }

  *(info + 4) |= 2u;
  *(info + 50) = v15;
  v16 = objc_msgSend_minimumSupportedVersion(archiver, v12, v13);
  v19 = v16;
  if (isDiff)
  {
    v20 = -1;
  }

  else
  {
    v20 = v16;
  }

  if (v20)
  {
    UnsafePointer(v20, info + 24);
  }

  if (v19)
  {
    v21 = isDiff;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == 1)
  {
    UnsafePointer(v19, info + 120);
  }

  if (isDiff)
  {
    Version = objc_msgSend_diffReadVersion(v174, v17, v18);
    if (Version)
    {
      UnsafePointer(Version, info + 168);
    }
  }

  v24 = objc_msgSend_fieldPath(v174, v17, v18);
  if (v24)
  {
    *(info + 4) |= 1u;
    v25 = *(info + 24);
    if (!v25)
    {
      v26 = *(info + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = sub_2769F4FE8(v26);
      *(info + 24) = v25;
    }

    sub_2769E26BC(v25, v24);
  }

  if (v7)
  {
    v27 = (*(*v7 + 72))(v7);
    if (v27 > 0x4000000)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPArchiver updateMessageInfo:withArchiver:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v36 = objc_msgSend_tsp_identifier(v173, v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v37, v29, v31, 563, 0, "Message for object [%{public}@-%llu] is larger than the %zu bytes size limit.", v33, v36, 0x4000000);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
      objc_msgSend_fail(self, v40, v41);
      v42 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    LODWORD(v27) = 0;
  }

  *(info + 4) |= 4u;
  *(info + 51) = v27;
  v185 = 0;
  v186 = &v185;
  v187 = 0x2020000000;
  v188 = 0;
  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 0;
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = sub_2769BDB2C;
  v180[3] = &unk_27A6E3160;
  v180[5] = &v181;
  v180[6] = info;
  v180[4] = &v185;
  objc_msgSend_enumerateFieldRulesUsingBlock_(archiver, v23, v180);
  v45 = v186[3];
  if (v45)
  {
    if (v7)
    {
      sub_276ACFD98(v45, v7, 0);
    }

    else
    {
      v46 = MEMORY[0x277D81150];
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSPArchiver updateMessageInfo:withArchiver:]");
      v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      v167 = objc_msgSend_object(self, v48, v49);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v54 = objc_msgSend_object(self, v52, v53);
      v57 = objc_msgSend_tsp_identifier(v54, v55, v56);
      v59 = NSStringFromTSPVersion(v20, v58);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v60, v171, v169, 509, 0, "All unknown field rules of alternate archiver for object [%{public}@-%llu] version %{public}@ will be ignored because the message was not initialized.", v51, v57, v59);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    }

    v63 = v186[3];
    if (v63)
    {
      v64 = sub_2769C1374(v63, v43);
      MEMORY[0x277C9F670](v64, 0x1060C4094AFC76ALL);
    }
  }

  if (v182[3])
  {
    if (isDiff)
    {
      v65 = objc_msgSend_parentArchiver(v174, v43, v44);
      v68 = objc_msgSend_message(v65, v66, v67);

      if (v68)
      {
        sub_276ACFD98(v182[3], v68, 1);
      }

      else
      {
        v91 = MEMORY[0x277D81150];
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "[TSPArchiver updateMessageInfo:withArchiver:]");
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
        v97 = objc_msgSend_object(self, v95, v96);
        v98 = objc_opt_class();
        v99 = NSStringFromClass(v98);
        v102 = objc_msgSend_object(self, v100, v101);
        v105 = objc_msgSend_tsp_identifier(v102, v103, v104);
        v107 = NSStringFromTSPVersion(0xFFFFFFFFFFFFFFFFLL, v106);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v108, v92, v94, 524, 0, "All known field rules of alternate archiver for object [%{public}@-%llu] version %{public}@ will be ignored because the parent message was not initialized.", v99, v105, v107);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110);
      }
    }

    else
    {
      v71 = MEMORY[0x277D81150];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSPArchiver updateMessageInfo:withArchiver:]");
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
      v77 = objc_msgSend_object(self, v75, v76);
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);
      v82 = objc_msgSend_object(self, v80, v81);
      v85 = objc_msgSend_tsp_identifier(v82, v83, v84);
      v87 = NSStringFromTSPVersion(v19, v86);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v88, v72, v74, 520, 0, "All known field rules of alternate archiver for object [%{public}@-%llu] version %{public}@ will be ignored because the rules were set in a non-diff archive.", v79, v85, v87);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90);
    }

    v111 = v182[3];
    if (v111)
    {
      v112 = sub_2769C1374(v111, v70);
      MEMORY[0x277C9F670](v112, 0x1060C4094AFC76ALL);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769BDE7C;
  aBlock[3] = &unk_27A6E31A0;
  aBlock[4] = info;
  v172 = _Block_copy(aBlock);
  v115 = objc_msgSend_strongReferences(archiver, v113, v114);
  v172[2](v172, v115);

  v118 = objc_msgSend_countedDataReferences(archiver, v116, v117);
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v121 = objc_msgSend_dataReferences(archiver, v119, v120);
  v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, &v175, v189, 16);
  if (v125)
  {
    v126 = *v176;
    do
    {
      for (i = 0; i != v125; ++i)
      {
        if (*v176 != v126)
        {
          objc_enumerationMutation(v121);
        }

        v128 = *(*(&v175 + 1) + 8 * i);
        v129 = objc_msgSend_identifier(v128, v123, v124);
        v131 = objc_msgSend_countForIdentifier_default_(v118, v130, v129, 0);
        v132 = v131;
        if (v131 < 1)
        {
          if (v128)
          {
            v138 = objc_opt_class();
            v137 = NSStringFromClass(v138);
          }

          else
          {
            v137 = @"Nil";
          }

          v139 = objc_msgSend_filename(v128, v123, v124);
          v142 = objc_msgSend_anonymousUniqueIdentifier(v128, v140, v141);
          v145 = objc_msgSend_UUIDString(v142, v143, v144);
          v166 = objc_msgSend_digestString(v128, v146, v147);
          TSUSetCrashReporterInfo();

          if (v128)
          {
          }

          v149 = MEMORY[0x277D81150];
          v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "[TSPArchiver updateMessageInfo:withArchiver:]", "[TSPArchiver updateMessageInfo:withArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 556, v132, v137, v139, v145, v166);
          v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          if (v128)
          {
            v165 = objc_opt_class();
            v155 = NSStringFromClass(v165);
          }

          else
          {
            v155 = @"Nil";
          }

          v156 = objc_msgSend_filename(v128, v152, v153);
          v170 = objc_msgSend_anonymousUniqueIdentifier(v128, v157, v158);
          v161 = objc_msgSend_UUIDString(v170, v159, v160);
          v168 = objc_msgSend_digestString(v128, v162, v163);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v164, v150, v154, 556, 1, "Unexpected reference count %td for data <%{public}@: filename=%@, anonymousUniqueIdentifier=%{public}@, digestString=%@> ", v132, v155, v156, v161, v168);

          if (v128)
          {
          }

          TSUCrashBreakpoint();
          abort();
        }

        v133 = *(info + 24);
        v134 = v131 + 1;
        do
        {
          if (v133 == *(info + 25))
          {
            google::protobuf::RepeatedField<unsigned long long>::Reserve();
          }

          *(*(info + 13) + 8 * v133++) = v129;
          *(info + 24) = v133;
          --v134;
        }

        while (v134 > 1);
      }

      v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v123, &v175, v189, 16);
    }

    while (v125);
  }

  _Block_object_dispose(&v181, 8);
  _Block_object_dispose(&v185, 8);
  v42 = 1;
LABEL_54:

  v135 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)serialize
{
  v243 = *MEMORY[0x277D85DE8];
  if (self->_serializedData)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPArchiver serialize]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 571, 0, "Already serialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  }

  v209 = self->_featureInfos;
  if (objc_msgSend_count(v209, v9, v10))
  {
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v13 = v209;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v234, v242, 16);
    if (v17)
    {
      v18 = *v235;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v235 != v18)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_readVersion(*(*(&v234 + 1) + 8 * i), v15, v16);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v234, v242, 16);
      }

      while (v17);
    }
  }

  v210 = objc_msgSend_object(self, v11, v12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v210;
    v23 = objc_msgSend_serializedData(v20, v21, v22);
    serializedData = self->_serializedData;
    self->_serializedData = v23;

    goto LABEL_75;
  }

  sub_2769DEB38(v226, 0);
  v27 = objc_msgSend_tsp_identifier(v210, v25, v26);
  v227 |= 1u;
  v232 = v27;
  v203 = objc_msgSend_calculateOrderedArchivableContent(self, v28, v29);
  objc_msgSend_validateOrderedArchivableContent_(self, v30, v203);
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  obj = v203;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v222, v241, 16);
  if (!v34)
  {

    v36 = 0;
    v35 = 0;
    goto LABEL_58;
  }

  v35 = 0;
  v36 = 0;
  v37 = -1;
  v213 = *v223;
  do
  {
    v38 = 0;
    v206 = v34;
    do
    {
      if (*v223 != v213)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v222 + 1) + 8 * v38);
      v40 = v231;
      if (!v231)
      {
        v41 = v230;
LABEL_24:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v228, v41 + 1);
        v40 = v231;
        v41 = *v231;
        goto LABEL_25;
      }

      v41 = *v231;
      if (v229 < *v231)
      {
        v42 = &v231[2 * v229++];
        v43 = *(v42 + 1);
        goto LABEL_26;
      }

      if (v41 == v230)
      {
        goto LABEL_24;
      }

LABEL_25:
      *v40 = v41 + 1;
      v43 = sub_2769F4ED0(v228);
      v44 = &v231[2 * v229++];
      *(v44 + 1) = v43;
LABEL_26:
      isDiff = objc_msgSend_isDiff(v39, v32, v33);
      objc_opt_class();
      v46 = TSUDynamicCast();
      v49 = v46;
      if (!v46)
      {
        objc_opt_class();
        v72 = TSUDynamicCast();
        v57 = v72;
        if (!v72)
        {
          TSUSetCrashReporterInfo();
          v179 = MEMORY[0x277D81150];
          v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v180, "[TSPArchiver serialize]", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 639);
          v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v179, v184, v181, v183, 639, 1, "Unexpected archivable content class.");

          TSUCrashBreakpoint();
          goto LABEL_96;
        }

        v75 = objc_msgSend_messageInfo(v72, v73, v74);
        sub_2769E0D78(v43, v75);
        if (isDiff)
        {
          v77 = objc_msgSend_indexOfObject_(obj, v76, self);
          if (v77 >= 0xFFFFFFFF)
          {
            TSUSetCrashReporterInfo();
            v185 = MEMORY[0x277D81150];
            v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v186, "[TSPArchiver serialize]", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 646);
            v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v185, v190, v187, v189, 646, 1, "Base message is not defined in the archive info.");

            TSUCrashBreakpoint();
            goto LABEL_96;
          }

          *(v43 + 16) |= 8u;
          *(v43 + 208) = v77;
        }

        v78 = *(v43 + 204);
        if (v78 < 0x4000001)
        {
          v53 = __CFADD__(v35, v78);
          v35 += v78;
          if (v53)
          {
            goto LABEL_71;
          }

          goto LABEL_49;
        }

        v114 = MEMORY[0x277D81150];
        v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "[TSPArchiver serialize]");
        v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
        v118 = objc_opt_class();
        v119 = NSStringFromClass(v118);
        v122 = objc_msgSend_tsp_identifier(v210, v120, v121);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v123, v115, v117, 653, 0, "Unknown message for object [%{public}@-%llu] is larger than the %zu bytes size limit.", v119, v122, 0x4000000);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125);
LABEL_71:

LABEL_72:
        goto LABEL_73;
      }

      if (!((objc_msgSend_message(v46, v47, v48) != 0) | isDiff & 1))
      {
        v101 = MEMORY[0x277D81150];
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSPArchiver serialize]");
        v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
        v107 = objc_msgSend_messageVersion(v49, v105, v106);
        v109 = NSStringFromTSPVersion(v107, v108);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v110, v102, v104, 633, 0, "No message to serialize for version %{public}@", v109);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112);
        goto LABEL_72;
      }

      if (!objc_msgSend_updateMessageInfo_withArchiver_(self, v50, v43, v49))
      {
        goto LABEL_72;
      }

      v52 = *(v43 + 204);
      v53 = __CFADD__(v35, v52);
      v35 += v52;
      if (v53)
      {
        goto LABEL_72;
      }

      if (v49 != self)
      {
        objc_opt_class();
        v54 = TSUDynamicCast();
        v57 = v54;
        if (!isDiff)
        {
LABEL_49:

          goto LABEL_51;
        }

        v208 = v54;
        v58 = objc_msgSend_parentArchiver(v54, v55, v56);
        v207 = v58;
        if (v58)
        {
          v60 = objc_msgSend_indexOfObject_(obj, v59, v58);
          if (v60 < 0xFFFFFFFF)
          {
            *(v43 + 16) |= 8u;
            *(v43 + 208) = v60;
            v63 = objc_msgSend_fieldPathsToRemove(v208, v61, v62);
            v64 = (v43 + 144);
            if (v63 != v43 + 144)
            {
              v65 = *(v43 + 152);
              if (v65 >= 1)
              {
                v205 = v49;
                v66 = (*(v43 + 160) + 8);
                do
                {
                  sub_2769DFA50(*v66++);
                  --v65;
                }

                while (v65);
                *(v43 + 152) = 0;
                v64 = (v43 + 144);
                v49 = v205;
              }

              v67 = *(v63 + 8);
              if (v67)
              {
                v204 = *(v63 + 16);
                v68 = v64;
                v69 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v64, v67);
                sub_2769C14B0(v68, v69, (v204 + 8), v67, **(v43 + 160) - *(v43 + 152));
                v70 = *(v43 + 152) + v67;
                *(v43 + 152) = v70;
                v71 = *(v43 + 160);
                if (*v71 < v70)
                {
                  *v71 = v70;
                }
              }
            }

            v34 = v206;
            v57 = v208;
            goto LABEL_49;
          }

          TSUSetCrashReporterInfo();
          v197 = MEMORY[0x277D81150];
          v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, "[TSPArchiver serialize]", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 626);
          v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v197, v202, v199, v201, 626, 1, "Base message is not defined in the archive info.");

          TSUCrashBreakpoint();
        }

        else
        {
          TSUSetCrashReporterInfo();
          v191 = MEMORY[0x277D81150];
          v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v192, "[TSPArchiver serialize]", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 623);
          v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v191, v196, v193, v195, 623, 1, "Parent archiver should always be defined.");

          TSUCrashBreakpoint();
        }

LABEL_96:
        abort();
      }

      objc_msgSend_updateMessageInfo_(self->_unknownContentSnapshot, v51, v43);
LABEL_51:
      v81 = objc_msgSend_messageVersion(v39, v79, v80);
      if (v37 >= v81)
      {
        v37 = v81;
      }

      v36 |= isDiff;
      ++v38;
    }

    while (v38 != v34);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v222, v241, 16);
  }

  while (v34);

  if (v37 == -1)
  {
LABEL_58:
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSPArchiver serialize]");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v91, v86, v88, 670, 0, "Archiver for object [%{public}@-%llu] doesn't have a message with version less than the max.", v90, v232);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93);
  }

  if (v36)
  {
    v227 |= 2u;
    v233 = 1;
  }

  v94 = sub_2769DF300(v226, v82, v83, v84);
  v97 = v94;
  if (HIDWORD(v94))
  {
    v166 = MEMORY[0x277D81150];
    v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TSPArchiver serialize]");
    v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v170, v167, v169, 679, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172);
    goto LABEL_73;
  }

  v98 = (v94 + 5 + v35);
  if (__CFADD__(v94 + 5, v35))
  {
LABEL_73:
    objc_msgSend_fail(self, v98, v96);
    goto LABEL_74;
  }

  sub_276A0160C(v221, v98);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v239, v221, 1);
  v99 = v240;
  if (v239[0] <= v240)
  {
    v99 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(v239, v240);
  }

  if (v97 > 0x7F)
  {
    *v99 = v97 | 0x80;
    v113 = v97 >> 7;
    if (v97 >> 14)
    {
      v100 = v99 + 2;
      do
      {
        *(v100 - 1) = v113 | 0x80;
        v128 = v113 >> 7;
        ++v100;
        v129 = v113 >> 14;
        v113 >>= 7;
      }

      while (v129);
      *(v100 - 1) = v128;
    }

    else
    {
      v99[1] = v113;
      v100 = v99 + 2;
    }
  }

  else
  {
    *v99 = v97;
    v100 = v99 + 1;
  }

  v240 = v100;
  v240 = (*(v226[0] + 96))(v226);
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v214 = obj;
  v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v130, &v217, v238, 16);
  if (v131)
  {
    v132 = *v218;
    do
    {
      for (j = 0; j != v131; ++j)
      {
        if (*v218 != v132)
        {
          objc_enumerationMutation(v214);
        }

        v134 = *(*(&v217 + 1) + 8 * j);
        objc_opt_class();
        v135 = TSUDynamicCast();
        v138 = v135;
        if (v135)
        {
          v139 = objc_msgSend_message(v135, v136, v137);
          if (v139)
          {
            v240 = (*(*v139 + 96))(v139, v240, v239);
            objc_msgSend_releaseMessage(v138, v142, v143);
          }

          else if ((objc_msgSend_isDiff(v134, v140, v141) & 1) == 0)
          {
            v150 = MEMORY[0x277D81150];
            v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "[TSPArchiver serialize]");
            v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            v156 = objc_msgSend_messageVersion(v138, v154, v155);
            v158 = NSStringFromTSPVersion(v156, v157);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v159, v151, v153, 702, 0, "No message to serialize for version %{public}@", v158);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161);
          }
        }

        else
        {
          objc_opt_class();
          v144 = TSUDynamicCast();
          v147 = v144;
          if (!v144)
          {
            TSUSetCrashReporterInfo();
            v173 = MEMORY[0x277D81150];
            v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "[TSPArchiver serialize]", "[TSPArchiver serialize]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 706);
            v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v176, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v173, v178, v175, v177, 706, 1, "Unexpected archivable content class.");

            TSUCrashBreakpoint();
            goto LABEL_96;
          }

          v148 = objc_msgSend_messageData(v144, v145, v146);
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = sub_2769BF1EC;
          applier[3] = &unk_27A6E30C0;
          applier[4] = v239;
          dispatch_data_apply(v148, applier);
        }
      }

      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v162, &v217, v238, 16);
    }

    while (v131);
  }

  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v239);
  v164 = sub_276A016D0(v221, v163);
  v165 = self->_serializedData;
  self->_serializedData = v164;

  sub_276A01610(v221);
LABEL_74:

  sub_2769DED20(v226);
LABEL_75:
  v215.receiver = self;
  v215.super_class = TSPArchiver;
  [(TSPArchiverBase *)&v215 cleanup];
  unknownContentSnapshot = self->_unknownContentSnapshot;
  self->_unknownContentSnapshot = 0;

  v127 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  featureInfos = self->_featureInfos;
  self->_featureInfos = 0;

  aggregatedStrongReferences = self->_aggregatedStrongReferences;
  self->_aggregatedStrongReferences = 0;

  aggregatedWeakReferences = self->_aggregatedWeakReferences;
  self->_aggregatedWeakReferences = 0;

  aggregatedLazyReferences = self->_aggregatedLazyReferences;
  self->_aggregatedLazyReferences = 0;

  aggregatedDataReferences = self->_aggregatedDataReferences;
  self->_aggregatedDataReferences = 0;

  aggregatedCountedDataReferences = self->_aggregatedCountedDataReferences;
  self->_aggregatedCountedDataReferences = 0;

  serializedData = self->_serializedData;
  self->_serializedData = 0;
}

- (id)calculateOrderedArchivableContent
{
  v4 = objc_msgSend_alternates(self, a2, v2);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = objc_msgSend_count(v4, v5, v6);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2769BF57C;
  v29[3] = &unk_27A6E31C8;
  v29[4] = &v30;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v7, v29);
  v10 = objc_msgSend_messages(self->_unknownContentSnapshot, v8, v9);
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = v31[3];
  v15 = objc_msgSend_count(v10, v13, v14);
  v17 = objc_msgSend_initWithCapacity_(v11, v16, v12 + v15 + 1);
  objc_msgSend_addObject_(v17, v18, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_2769BF6CC;
  v27 = &unk_27A6E31F0;
  v19 = v17;
  v28 = v19;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v20, &v24);
  if (v10)
  {
    objc_msgSend_addObjectsFromArray_(v19, v21, v10, v24, v25, v26, v27);
  }

  v22 = objc_msgSend_sortedArrayUsingComparator_(v19, v21, &unk_2885BF6C0, v24, v25, v26, v27);

  _Block_object_dispose(&v30, 8);

  return v22;
}

- (void)validateOrderedArchivableContent:(id)content
{
  v336 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (objc_msgSend_count(contentCopy, v3, v4) >= 2)
  {
    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    obj = contentCopy;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v327, v335, 16);
    if (v6)
    {
      v326 = 0;
      v9 = -1;
      v322 = *v328;
      v321 = -1;
      do
      {
        v323 = v6;
        for (i = 0; i != v323; ++i)
        {
          if (*v328 != v322)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v327 + 1) + 8 * i);
          isDiff = objc_msgSend_isDiff(v11, v7, v8);
          v15 = v326;
          if (!(isDiff & 1 | ((v326 & 1) == 0)))
          {
            TSUSetCrashReporterInfo();
            v116 = MEMORY[0x277D81150];
            v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 843);
            v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v121, v118, v120, 843, 1, "Diff messages should be archived in the end.");

            TSUCrashBreakpoint();
            goto LABEL_48;
          }

          v326 |= isDiff;
          if ((isDiff | v15))
          {
            if ((objc_msgSend_isContentUnknown(v11, v13, v14) & 1) == 0)
            {
              objc_opt_class();
              v324 = TSUDynamicCast();
              if ((objc_msgSend_isDiff(v324, v16, v17) & 1) == 0)
              {
                v157 = objc_msgSend_object(self, v18, v19);
                v158 = objc_opt_class();
                v159 = NSStringFromClass(v158);
                v162 = objc_msgSend_object(self, v160, v161);
                v165 = objc_msgSend_tsp_identifier(v162, v163, v164);
                v168 = objc_msgSend_messageVersion(v11, v166, v167);
                NSStringFromTSPVersion(v168, v169);
                v310 = v304 = v165;
                TSUSetCrashReporterInfo();

                v170 = MEMORY[0x277D81150];
                v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v171, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 848, v159, v304, v310);
                v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                v177 = objc_msgSend_object(self, v175, v176);
                v178 = objc_opt_class();
                v179 = NSStringFromClass(v178);
                v182 = objc_msgSend_object(self, v180, v181);
                v185 = objc_msgSend_tsp_identifier(v182, v183, v184);
                v188 = objc_msgSend_messageVersion(v11, v186, v187);
                v190 = NSStringFromTSPVersion(v188, v189);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v170, v191, v172, v174, 848, 1, "Alternate for object [%{public}@-%llu] version %{public}@ should be a diff archiver.", v179, v185, v190);

                TSUCrashBreakpoint();
                goto LABEL_48;
              }

              v319 = objc_msgSend_parentArchiver(v324, v18, v19);
              if (!v319)
              {
                v122 = objc_msgSend_object(self, v20, v21);
                v123 = objc_opt_class();
                v124 = NSStringFromClass(v123);
                v127 = objc_msgSend_object(self, v125, v126);
                v130 = objc_msgSend_tsp_identifier(v127, v128, v129);
                v133 = objc_msgSend_messageVersion(v11, v131, v132);
                NSStringFromTSPVersion(v133, v134);
                v309 = v303 = v130;
                TSUSetCrashReporterInfo();

                v135 = MEMORY[0x277D81150];
                v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 851, v124, v303, v309);
                v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                v142 = objc_msgSend_object(self, v140, v141);
                v143 = objc_opt_class();
                v144 = NSStringFromClass(v143);
                v147 = objc_msgSend_object(self, v145, v146);
                v150 = objc_msgSend_tsp_identifier(v147, v148, v149);
                v153 = objc_msgSend_messageVersion(v11, v151, v152);
                v155 = NSStringFromTSPVersion(v153, v154);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v156, v137, v139, 851, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ should have a parent archiver.", v144, v150, v155);

                TSUCrashBreakpoint();
                goto LABEL_48;
              }

              v24 = objc_msgSend_message(v324, v20, v21);
              if (v24)
              {
                v27 = objc_msgSend_fieldPath(v324, v22, v23);
                if (v27)
                {
                  v28 = objc_msgSend_message(v319, v25, v26);
                  v29 = (*(*v28 + 152))(v28);
                  (*(*v28 + 152))(v28);
                  v32 = v29 != 0;
                  if (v29)
                  {
                    v33 = *(v27 + 16) < 1;
                  }

                  else
                  {
                    v33 = 1;
                  }

                  if (!v33)
                  {
                    v34 = v30;
                    v35 = *(v27 + 24);
                    v36 = *v35;
                    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v29, *v35);
                    if (!FieldByNumber)
                    {
                      FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v34, v36);
                    }

                    v38 = *(FieldByNumber + 48);
                    if (v38)
                    {
                      v331 = FieldByNumber;
                      v332 = google::protobuf::FieldDescriptor::TypeOnceInit;
                      if (atomic_load_explicit(v38, memory_order_acquire) != -1)
                      {
                        v334[0] = &v332;
                        v334[1] = &v331;
                        v333 = v334;
                        std::__call_once(v38, &v333, sub_2769C149C);
                      }
                    }

                    if (*(FieldByNumber + 56) == 11)
                    {
                      v29 = google::protobuf::FieldDescriptor::message_type(FieldByNumber);
                      if (v29)
                      {
                        operator new();
                      }
                    }

                    v32 = 0;
                    if (*(FieldByNumber + 60) == 3)
                    {
                      v76 = objc_msgSend_object(self, v30, v31);
                      v77 = objc_opt_class();
                      v78 = NSStringFromClass(v77);
                      v81 = objc_msgSend_object(self, v79, v80);
                      v84 = objc_msgSend_tsp_identifier(v81, v82, v83);
                      v87 = objc_msgSend_messageVersion(v11, v85, v86);
                      v89 = NSStringFromTSPVersion(v87, v88);
                      v90 = v89;
                      v91 = *(FieldByNumber + 8);
                      if (*(v91 + 23) < 0)
                      {
                        v91 = *v91;
                      }

                      v313 = v91;
                      v302 = v84;
                      v308 = v89;
                      TSUSetCrashReporterInfo();

                      v92 = MEMORY[0x277D81150];
                      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 883, v78, v302, v308, v313, v36);
                      v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                      v99 = objc_msgSend_object(self, v97, v98);
                      v100 = objc_opt_class();
                      v101 = NSStringFromClass(v100);
                      v104 = objc_msgSend_object(self, v102, v103);
                      v107 = objc_msgSend_tsp_identifier(v104, v105, v106);
                      v110 = objc_msgSend_messageVersion(v11, v108, v109);
                      v112 = NSStringFromTSPVersion(v110, v111);
                      v114 = v112;
                      v115 = *(FieldByNumber + 8);
                      if (*(v115 + 23) < 0)
                      {
                        v115 = *v115;
                      }

                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v113, v94, v96, 883, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ defined a field path within repeated field %{public}s (%d).", v101, v107, v112, v115, v36);

                      TSUCrashBreakpoint();
LABEL_48:
                      abort();
                    }
                  }

                  if (!v32)
                  {
                    v192 = objc_msgSend_object(self, v30, v31);
                    v193 = objc_opt_class();
                    v194 = NSStringFromClass(v193);
                    v197 = objc_msgSend_object(self, v195, v196);
                    v200 = objc_msgSend_tsp_identifier(v197, v198, v199);
                    v203 = objc_msgSend_messageVersion(v11, v201, v202);
                    NSStringFromTSPVersion(v203, v204);
                    v311 = v305 = v200;
                    TSUSetCrashReporterInfo();

                    v205 = MEMORY[0x277D81150];
                    v207 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v206, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 886, v194, v305, v311);
                    v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v208, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                    v212 = objc_msgSend_object(self, v210, v211);
                    v213 = objc_opt_class();
                    v214 = NSStringFromClass(v213);
                    v217 = objc_msgSend_object(self, v215, v216);
                    v220 = objc_msgSend_tsp_identifier(v217, v218, v219);
                    v223 = objc_msgSend_messageVersion(v11, v221, v222);
                    v225 = NSStringFromTSPVersion(v223, v224);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v205, v226, v207, v209, 886, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ defined an invalid field path.", v214, v220, v225);

                    TSUCrashBreakpoint();
                    goto LABEL_48;
                  }

                  if (v29 != (*(*v24 + 152))(v24))
                  {
                    v227 = objc_msgSend_object(self, v39, v40);
                    v228 = objc_opt_class();
                    v229 = NSStringFromClass(v228);
                    v232 = objc_msgSend_object(self, v230, v231);
                    v235 = objc_msgSend_tsp_identifier(v232, v233, v234);
                    v238 = objc_msgSend_messageVersion(v11, v236, v237);
                    v240 = NSStringFromTSPVersion(v238, v239);
                    v241 = *(v29 + 1);
                    if (*(v241 + 23) < 0)
                    {
                      v241 = *v241;
                    }

                    v242 = *((*(*v24 + 152))(v24) + 8);
                    if (*(v242 + 23) < 0)
                    {
                      v242 = *v242;
                    }

                    v314 = v242;
                    v306 = v235;
                    TSUSetCrashReporterInfo();

                    v243 = MEMORY[0x277D81150];
                    v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v244, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 887, v229, v306, v240, v241, v314);
                    v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                    v250 = objc_msgSend_object(self, v248, v249);
                    v251 = objc_opt_class();
                    v252 = NSStringFromClass(v251);
                    v255 = objc_msgSend_object(self, v253, v254);
                    v258 = objc_msgSend_tsp_identifier(v255, v256, v257);
                    v261 = objc_msgSend_messageVersion(v11, v259, v260);
                    v263 = NSStringFromTSPVersion(v261, v262);
                    v264 = *(v29 + 1);
                    if (*(v264 + 23) < 0)
                    {
                      v264 = *v264;
                    }

                    v266 = *((*(*v24 + 152))(v24) + 8);
                    if (*(v266 + 23) < 0)
                    {
                      v266 = *v266;
                    }

                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v243, v265, v245, v247, 887, 1, "Alternate diff for object [%{public}@-%llu] version %{public}@ has wrong message type: expected %{public}s, actual %{public}s", v252, v258, v263, v264, v266);

                    TSUCrashBreakpoint();
                    goto LABEL_48;
                  }
                }

                else
                {
                  v70 = objc_msgSend_messageType(v319, v25, v26);
                  if (v70 != objc_msgSend_messageType(v324, v71, v72))
                  {
                    v267 = objc_msgSend_object(self, v73, v74);
                    v268 = objc_opt_class();
                    v269 = NSStringFromClass(v268);
                    v272 = objc_msgSend_object(self, v270, v271);
                    v275 = objc_msgSend_tsp_identifier(v272, v273, v274);
                    v278 = objc_msgSend_messageVersion(v319, v276, v277);
                    NSStringFromTSPVersion(v278, v279);
                    v312 = v307 = v275;
                    TSUSetCrashReporterInfo();

                    v280 = MEMORY[0x277D81150];
                    v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v281, "[TSPArchiver validateOrderedArchivableContent:]", "[TSPArchiver validateOrderedArchivableContent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 889, v269, v307, v312);
                    v284 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
                    v287 = objc_msgSend_object(self, v285, v286);
                    v288 = objc_opt_class();
                    v289 = NSStringFromClass(v288);
                    v292 = objc_msgSend_object(self, v290, v291);
                    v295 = objc_msgSend_tsp_identifier(v292, v293, v294);
                    v298 = objc_msgSend_messageVersion(v319, v296, v297);
                    v300 = NSStringFromTSPVersion(v298, v299);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v280, v301, v282, v284, 889, 1, "All alternate diffs for object [%{public}@-%llu] version %{public}@ should have the same message type.", v289, v295, v300);

                    TSUCrashBreakpoint();
                    goto LABEL_48;
                  }
                }
              }
            }
          }

          else
          {
            v41 = objc_msgSend_messageVersion(v11, v13, v14);
            v44 = v41;
            if ((objc_msgSend_isContentUnknown(v11, v42, v43) & 1) == 0)
            {
              objc_opt_class();
              v45 = TSUDynamicCast();
              v44 = objc_msgSend_minimumSupportedVersion(v45, v46, v47);
            }

            if (v9 < v44)
            {
              v48 = MEMORY[0x277D81150];
              v320 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiver validateOrderedArchivableContent:]");
              v325 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
              v316 = objc_msgSend_object(self, v50, v51);
              v52 = objc_opt_class();
              v53 = NSStringFromClass(v52);
              v54 = v9;
              v57 = objc_msgSend_object(self, v55, v56);
              v60 = objc_msgSend_tsp_identifier(v57, v58, v59);
              v62 = NSStringFromTSPVersion(v321, v61);
              v64 = NSStringFromTSPVersion(v54, v63);
              v66 = NSStringFromTSPVersion(v44, v65);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v67, v320, v325, 896, 0, "Alternate for object [%{public}@-%llu] version %{public}@ has diffs that bring its minimum version to %{public}@, which is less than the minimum version of the next alternate (%{public}@).", v53, v60, v62, v64, v66);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
            }

            v9 = v44;
            v321 = v41;
          }
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v327, v335, 16);
      }

      while (v6);
    }
  }

  v75 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSavingDocumentAs
{
  if (objc_msgSend_targetType(self, a2, v2))
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiver isSavingDocumentAs]", "[TSPArchiver isSavingDocumentAs]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 907);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 907, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = atomic_load(&self->_flags);
  return (v4 >> 4) & 1;
}

- (BOOL)isSavingCollaborativeDocument
{
  if (objc_msgSend_targetType(self, a2, v2))
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiver isSavingCollaborativeDocument]", "[TSPArchiver isSavingCollaborativeDocument]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 912);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 912, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = atomic_load(&self->_flags);
  return (v4 >> 5) & 1;
}

@end