@interface TSPDocumentResourceRegistry
+ (id)sharedRegistry;
+ (void)setSharedRegistryMetadataURL:(id)l;
- (TSPDocumentResourceRegistry)init;
- (TSPDocumentResourceRegistry)initWithMetadataDictionary:(id)dictionary;
- (TSPDocumentResourceRegistry)initWithMetadataURL:(id)l;
- (id)documentResourceInfoForDigestString:(id)string locator:(id)locator;
- (id)documentResourceInfosForTags:(id)tags;
- (id)localStrategyProviderForDocumentResourceInfos:(id)infos;
@end

@implementation TSPDocumentResourceRegistry

+ (void)setSharedRegistryMetadataURL:(id)l
{
  if (qword_280A529E8 != l)
  {
    v3 = objc_msgSend_copy(l, a2, l);
    v4 = qword_280A529E8;
    qword_280A529E8 = v3;
  }

  qword_280A530B8 = 0;
}

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276B01540;
  block[3] = &unk_27A6E4768;
  block[4] = self;
  if (qword_280A530B8 != -1)
  {
    dispatch_once(&qword_280A530B8, block);
  }

  v2 = qword_280A52B28;

  return v2;
}

- (TSPDocumentResourceRegistry)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceRegistry init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 57, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDocumentResourceRegistry init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDocumentResourceRegistry)initWithMetadataURL:(id)l
{
  v8 = 0;
  v5 = objc_msgSend_tsu_propertyListWithContentsOfURL_options_error_(MEMORY[0x277CCAC58], a2, l, 0, &v8);
  if (v8)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD7064();
    }

    selfCopy = 0;
  }

  else
  {
    self = objc_msgSend_initWithMetadataDictionary_(self, v4, v5);
    selfCopy = self;
  }

  return selfCopy;
}

- (TSPDocumentResourceRegistry)initWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (objc_msgSend_count(dictionaryCopy, v5, v6))
  {
    v14.receiver = self;
    v14.super_class = TSPDocumentResourceRegistry;
    v9 = [(TSPDocumentResourceRegistry *)&v14 init];
    if (v9)
    {
      v10 = objc_msgSend_copy(dictionaryCopy, v7, v8);
      metadataDictionary = v9->_metadataDictionary;
      v9->_metadataDictionary = v10;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)documentResourceInfoForDigestString:(id)string locator:(id)locator
{
  v187 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  locatorCopy = locator;
  v8 = 0x277CBE000uLL;
  objc_opt_class();
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v9, @"Locators");
  v11 = TSUDynamicCast();

  if (!v11)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 92, 0, "Invalid digest to locator dictionary");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    v25 = 0;
    goto LABEL_83;
  }

  v14 = stringCopy;
  if (v14)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(v11, v13, v14);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v15;
    }

    else
    {
      if (v15)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 107, 0, "Invalid locator value for digest string %{public}@: Locator must be a string", v14);

        v8 = 0x277CBE000;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      }

      v17 = 0;
    }

    if (!locatorCopy)
    {
LABEL_27:
      v25 = 0;
      if (!v17 || !v14)
      {
        goto LABEL_82;
      }

      v71 = *(v8 + 2752);
      objc_opt_class();
      v73 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v72, @"Properties");
      v74 = TSUDynamicCast();

      if (!v74)
      {
        v84 = MEMORY[0x277D81150];
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v88, v85, v87, 151, 0, "Invalid digest to properties dictionary");

        v74 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90);
        v25 = 0;
LABEL_81:

        goto LABEL_82;
      }

      v76 = *MEMORY[0x277CBF3A8];
      v77 = *(MEMORY[0x277CBF3A8] + 8);
      v78 = objc_msgSend_objectForKeyedSubscript_(v74, v75, v14);
      objc_opt_class();
      v173 = v17;
      v174 = v78;
      v180 = locatorCopy;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v78)
        {
          v91 = v14;
          v92 = MEMORY[0x277D81150];
          v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v96, v93, v95, 213, 0, "Invalid properties value for digest string %{public}@: Properties must be an array", v91);

          v14 = v91;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98);
          v99 = 0;
          v78 = 0;
          goto LABEL_79;
        }

        v181 = v14;
        v127 = 0;
        v99 = 0;
        v100 = 0;
LABEL_76:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v154 = [TSPDocumentResourceInfo alloc];
          v14 = v181;
          v25 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v154, v155, v181, v17, v78, v100, v99, v127, v76, v77);

LABEL_80:
          locatorCopy = v180;
          goto LABEL_81;
        }

        v156 = MEMORY[0x277D81150];
        v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        v160 = v159 = v78;
        v14 = v181;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v156, v161, v157, v160, 218, 0, "Invalid file extension for digest string %{public}@: File extension must be a string", v181);

        v78 = v159;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163);

LABEL_79:
        v25 = 0;
        v17 = v173;
        goto LABEL_80;
      }

      v82 = objc_msgSend_count(v78, v79, v80);
      v172 = v82;
      if (v82)
      {
        v171 = objc_msgSend_objectAtIndexedSubscript_(v78, v81, 0);
        if (v82 != 1)
        {
          objc_opt_class();
          v129 = objc_msgSend_objectAtIndexedSubscript_(v78, v128, 1);
          v130 = TSUDynamicCast();

          if (v130)
          {
            v100 = objc_msgSend_unsignedLongLongValue(v130, v131, v132);
          }

          else
          {
            v100 = 0;
          }

          v82 = v172;
          if (v172 < 3)
          {
            v83 = 0;
            v101 = objc_msgSend_conformsToProtocol_(0, v166, &unk_2885F09F8);
          }

          else
          {
            v83 = objc_msgSend_objectAtIndexedSubscript_(v78, v166, 2);
            v101 = objc_msgSend_conformsToProtocol_(v83, v167, &unk_2885F09F8);
          }

          goto LABEL_39;
        }

        v83 = 0;
      }

      else
      {
        v83 = 0;
        v171 = 0;
      }

      v100 = 0;
      v101 = objc_msgSend_conformsToProtocol_(0, v81, &unk_2885F09F8);
LABEL_39:
      v181 = v14;
      v170 = v83;
      if (v101)
      {
        v168 = v100;
        v176 = stringCopy;
        v178 = v11;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v103 = v83;
        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, &v182, v186, 16);
        if (v105)
        {
          v106 = v105;
          v99 = 0;
          v107 = *v183;
          do
          {
            for (i = 0; i != v106; ++i)
            {
              if (*v183 != v107)
              {
                objc_enumerationMutation(v103);
              }

              v109 = *(*(&v182 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v99)
                {
                  objc_msgSend_addObject_(v99, v110, v109);
                }

                else
                {
                  v99 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v110, v109);
                }
              }

              else if (v109)
              {
                v111 = MEMORY[0x277D81150];
                v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
                v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v115, v112, v114, 188, 0, "Invalid tag value for digest string %{public}@: Tag must be a string", v181);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117);
              }
            }

            v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v110, &v182, v186, 16);
          }

          while (v106);
        }

        else
        {
          v99 = 0;
        }

        stringCopy = v176;
        v11 = v178;
        v100 = v168;
        v78 = v174;
        v82 = v172;
        v83 = v170;
      }

      else
      {
        if (v83)
        {
          v118 = MEMORY[0x277D81150];
          v119 = v83;
          v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
          v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
          v123 = v118;
          v82 = v172;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v123, v124, v120, v122, 192, 0, "Invalid tags value for digest string %{public}@: Tags must be an enumerable", v181);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126);
          v83 = v119;
        }

        v99 = 0;
      }

      if (v82 < 4)
      {
        v127 = 0;
        v78 = v171;
      }

      else
      {
        objc_opt_class();
        v134 = objc_msgSend_objectAtIndexedSubscript_(v78, v133, 3);
        v135 = TSUDynamicCast();

        if (v135 && objc_msgSend_count(v135, v136, v137) == 2)
        {
          v169 = v100;
          v138 = v74;
          objc_opt_class();
          v140 = objc_msgSend_objectAtIndexedSubscript_(v135, v139, 0);
          v141 = TSUDynamicCast();

          objc_opt_class();
          v143 = objc_msgSend_objectAtIndexedSubscript_(v135, v142, 1);
          v144 = TSUDynamicCast();

          if (v141 && v144)
          {
            v76 = objc_msgSend_intValue(v141, v145, v146);
            v77 = objc_msgSend_intValue(v144, v147, v148);
          }

          v74 = v138;
          v78 = v174;
          v100 = v169;
        }

        if (v172 == 4 || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(v78, v149, 4), v150 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v151 = objc_claimAutoreleasedReturnValue(), v150, !v151))
        {
          v127 = 0;
        }

        else
        {
          v127 = objc_msgSend_colorWithHexString_(MEMORY[0x277D81180], v152, v151);
        }

        v83 = v170;
        v78 = v171;
      }

      goto LABEL_76;
    }
  }

  else
  {
    v17 = 0;
    if (!locatorCopy)
    {
      goto LABEL_27;
    }
  }

  if (v17)
  {
    goto LABEL_27;
  }

  v33 = *(v8 + 2752);
  objc_opt_class();
  v35 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v34, @"Digest");
  v25 = TSUDynamicCast();

  if (v25)
  {
    v175 = stringCopy;
    v177 = v11;
    v179 = locatorCopy;
    v38 = objc_msgSend_lowercaseString(locatorCopy, v36, v37);
    v40 = objc_msgSend_objectForKeyedSubscript_(v25, v39, v38);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v40)
      {
        v54 = v14;
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        v59 = v58 = v8;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v60, v56, v59, 143, 0, "Invalid digest value for locator %{public}@: Digest must be a string", locatorCopy);

        v8 = v58;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
        v42 = v54;
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v42 = v14;
      }

      goto LABEL_26;
    }

    v42 = v40;

    v44 = objc_msgSend_objectForKeyedSubscript_(v177, v43, v42);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v44;
      if (v46)
      {
LABEL_24:

        locatorCopy = v179;
        v17 = v46;
LABEL_26:

        v14 = v42;
        stringCopy = v175;
        v11 = v177;
        goto LABEL_27;
      }
    }

    else if (v44)
    {
      v63 = MEMORY[0x277D81150];
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
      v65 = v64 = v8;
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v68, v65, v67, 135, 0, "Invalid locator value for digest string %{public}@: Locator must be a string", v42);

      v8 = v64;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
    }

    v46 = v38;
    goto LABEL_24;
  }

  v47 = MEMORY[0x277D81150];
  v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 117, 0, "Invalid locator to digest dictionary");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
  v17 = 0;
LABEL_82:

LABEL_83:
  v164 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)documentResourceInfosForTags:(id)tags
{
  v122 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  if (objc_msgSend_count(tagsCopy, v5, v6))
  {
    objc_opt_class();
    selfCopy = self;
    v8 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v7, @"Tags");
    v9 = TSUDynamicCast();

    v11 = v9;
    if (v9)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v94 = tagsCopy;
      v12 = tagsCopy;
      v98 = v9;
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v115, v121, 16);
      v15 = 0;
      if (v102)
      {
        v16 = 0x277CBE000uLL;
        v101 = *v116;
        v95 = v12;
        do
        {
          for (i = 0; i != v102; ++i)
          {
            if (*v116 != v101)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v115 + 1) + 8 * i);
            v19 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v18);
            v20 = *(v16 + 2656);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = objc_msgSend_lastObject(v19, v21, v22);
              if (objc_msgSend_conformsToProtocol_(v23, v24, &unk_2885F09F8))
              {
                obj = v19;
                v97 = i;
                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v99 = v23;
                v26 = v23;
                v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v111, v120, 16);
                if (v28)
                {
                  v29 = v28;
                  v30 = *v112;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      if (*v112 != v30)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v32 = *(*(&v111 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if (v15)
                        {
                          objc_msgSend_addObject_(v15, v33, v32);
                        }

                        else
                        {
                          v15 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v33, v32);
                        }
                      }

                      else if (v32)
                      {
                        v34 = MEMORY[0x277D81150];
                        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
                        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 259, 0, "Invalid locator value for tag %{public}@: Locator must be a string", v18);

                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
                      }
                    }

                    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v33, &v111, v120, 16);
                  }

                  while (v29);
                }

                i = v97;
                v11 = v98;
                v12 = v95;
                v16 = 0x277CBE000;
                v19 = obj;
                v23 = v99;
              }

              else if (v23)
              {
                v100 = v23;
                v52 = v11;
                v53 = i;
                v54 = MEMORY[0x277D81150];
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
                v55 = objc = v19;
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
                v58 = v57 = v12;
                v59 = v54;
                i = v53;
                v11 = v52;
                v23 = v100;
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v60, v55, v58, 263, 0, "Invalid locators value for tag %{public}@: Locators must be an array", v18);

                v12 = v57;
                v16 = 0x277CBE000;

                v19 = objc;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
              }
            }

            else if (v19)
            {
              v41 = i;
              v42 = MEMORY[0x277D81150];
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
              v43 = objb = v19;
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
              v45 = v16;
              v47 = v46 = v12;
              v48 = v42;
              i = v41;
              v11 = v98;
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v49, v43, v47, 266, 0, "Invalid properties value for tag %{public}@: Properties must be an array", v18);

              v12 = v46;
              v16 = v45;

              v19 = objb;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
            }
          }

          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v115, v121, 16);
        }

        while (v102);
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      obja = v15;
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v63, &v107, v119, 16);
      if (v64)
      {
        v66 = v64;
        v67 = 0;
        v68 = *v108;
        v69 = selfCopy;
        do
        {
          for (k = 0; k != v66; ++k)
          {
            if (*v108 != v68)
            {
              objc_enumerationMutation(obja);
            }

            v71 = *(*(&v107 + 1) + 8 * k);
            v73 = objc_msgSend_documentResourceInfoForDigestString_locator_(v69, v65, 0, v71);
            if (v73)
            {
              if (v67)
              {
                objc_msgSend_addObject_(v67, v72, v73);
              }

              else
              {
                v67 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v72, v73);
              }
            }

            else
            {
              v74 = MEMORY[0x277D81150];
              v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
              v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
              v78 = v74;
              v69 = selfCopy;
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v79, v75, v77, 281, 0, "Invalid locator %{public}@", v71);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
            }
          }

          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v65, &v107, v119, 16);
        }

        while (v66);
      }

      else
      {
        v67 = 0;
      }

      v82 = objc_msgSend_copy(v67, v90, v91);
      tagsCopy = v94;
      v11 = v98;
    }

    else
    {
      v83 = MEMORY[0x277D81150];
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
      v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v87, v84, v86, 238, 0, "Invalid tag to properties dictionary");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
      v82 = 0;
    }
  }

  else
  {
    v82 = 0;
  }

  v92 = *MEMORY[0x277D85DE8];

  return v82;
}

- (id)localStrategyProviderForDocumentResourceInfos:(id)infos
{
  v58 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v7 = objc_msgSend_count(infosCopy, v5, v6);
  if (v7)
  {
    v44 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v8, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v9, @"Tags");
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = infosCopy;
    obj = infosCopy;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v52, v57, 16);
    if (v45)
    {
      v43 = *v53;
      do
      {
        v14 = 0;
        do
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v52 + 1) + 8 * v14);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v46 = v15;
          v16 = objc_msgSend_tags(v15, v12, v13);
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v48, v56, 16);
          v47 = v14;
          if (v18)
          {
            v19 = v18;
            v20 = 0;
            v21 = *v49;
LABEL_9:
            v22 = 0;
            while (1)
            {
              if (*v49 != v21)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v48 + 1) + 8 * v22);
              objc_opt_class();
              v25 = objc_msgSend_objectForKeyedSubscript_(v10, v24, v23);
              v28 = objc_msgSend_firstObject(v25, v26, v27);
              v29 = TSUDynamicCast();

              v20 |= objc_msgSend_integerValue(v29, v30, v31);
              if (v20 == 3)
              {
                break;
              }

              if (v19 == ++v22)
              {
                v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v32, &v48, v56, 16);
                if (v19)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          else
          {
            v20 = 0;
          }

          v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v33, v20);
          objc_msgSend_setObject_forKeyedSubscript_(v44, v35, v34, v46);

          v14 = v47 + 1;
        }

        while (v47 + 1 != v45);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v52, v57, 16);
      }

      while (v45);
    }

    v38 = objc_msgSend_copy(v44, v36, v37);
    infosCopy = v41;
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

@end