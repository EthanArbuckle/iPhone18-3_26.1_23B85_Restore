@interface TSWPTOCInfo
- (BOOL)p_startingTOCIsRTLForEntries:(id)entries;
- (BOOL)textIsVertical;
- (NSArray)visibleTOCEntries;
- (NSSet)paragraphStylesShownInTOC;
- (id)containedStorageFormattedUsingParagraphStyle:(id)style;
- (id)containedStorageFormattedUsingParagraphStyles;
- (id)partitioner;
- (id)referencedStyles;
- (id)textualEquivalent;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)i_setTOCEntries:(id)entries;
- (void)i_setTOCSettings:(id)settings;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadTOCInfoMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)regenerateStorageContent;
- (void)resetStorageStyles;
- (void)saveTOCInfoMessage:(void *)message archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setTOCEntries:(id)entries;
- (void)setTOCSettings:(id)settings;
@end

@implementation TSWPTOCInfo

- (BOOL)textIsVertical
{
  v19.receiver = self;
  v19.super_class = TSWPTOCInfo;
  IsVerticalInStorage_atCharIndex = [(TSWPShapeInfo *)&v19 textIsVertical];
  objc_opt_class();
  v6 = objc_msgSend_owningAttachment(self, v4, v5);
  v7 = TSUDynamicCast();

  v12 = objc_msgSend_parentStorage(v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_documentRoot(self, v10, v11);
    CharIndex = objc_msgSend_findCharIndex(v7, v14, v15);
    IsVerticalInStorage_atCharIndex = objc_msgSend_textIsVerticalInStorage_atCharIndex_(v13, v17, v12, CharIndex);
  }

  return IsVerticalInStorage_atCharIndex;
}

- (id)partitioner
{
  v3 = objc_opt_class();
  if ((objc_msgSend_canPartitionInline(v3, v4, v5) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPTOCInfo partitioner]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 122, 0, "-partition must not be called if partitioning is not supported on this info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE658];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s: %s", "-partition must not be called if partitioning is not supported on this info", "[TSWPTOCInfo partitioner]");
    v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v24, v21, v23, 0);
    v26 = v25;

    objc_exception_throw(v25);
  }

  partitioner = self->_partitioner;
  if (!partitioner)
  {
    v8 = [TSWPTOCPartitioner alloc];
    v10 = objc_msgSend_initWithInfo_(v8, v9, self);
    v11 = self->_partitioner;
    self->_partitioner = v10;

    partitioner = self->_partitioner;
  }

  return partitioner;
}

- (void)setTOCEntries:(id)entries
{
  entriesCopy = entries;
  if ((objc_msgSend_isEqualToArray_(self->_tocEntries, v4, entriesCopy) & 1) == 0)
  {
    objc_msgSend_i_setTOCEntries_(self, v5, entriesCopy);
    objc_msgSend_regenerateStorageContent(self, v6, v7);
  }
}

- (void)i_setTOCEntries:(id)entries
{
  entriesCopy = entries;
  if ((objc_msgSend_isEqualToArray_(self->_tocEntries, v5, entriesCopy) & 1) == 0)
  {
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_tocEntries, entries);
  }
}

- (NSArray)visibleTOCEntries
{
  tocEntries = self->_tocEntries;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276E27C74;
  v5[3] = &unk_27A6F5838;
  v5[4] = self;
  v3 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(tocEntries, a2, v5);

  return v3;
}

- (void)setTOCSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_tocSettings != settingsCopy)
  {
    objc_msgSend_i_setTOCSettings_(self, v4, settingsCopy);
    objc_msgSend_regenerateStorageContent(self, v5, v6);
  }
}

- (void)i_setTOCSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_tocSettings != settingsCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_tocSettings, settings);
  }
}

- (NSSet)paragraphStylesShownInTOC
{
  v3 = objc_msgSend_tocSettings(self, a2, v2);
  v6 = objc_msgSend_paragraphStylesShownInTOC(v3, v4, v5);

  return v6;
}

- (id)containedStorageFormattedUsingParagraphStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_6;
  }

  v7 = objc_msgSend_textStorage(self, v4, v5);
  v10 = objc_msgSend_context(self, v8, v9);
  v12 = objc_msgSend_copyWithContext_(v7, v11, v10);

  v15 = objc_msgSend_paragraphCount(v12, v13, v14);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      objc_msgSend_setParagraphStyle_atParIndex_undoTransaction_(v12, v4, styleCopy, i, 0);
    }
  }

  if (!v12)
  {
LABEL_6:
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPTOCInfo containedStorageFormattedUsingParagraphStyle:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 191, 0, "invalid nil value for '%{public}s'", "textStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v12 = 0;
  }

  return v12;
}

- (id)containedStorageFormattedUsingParagraphStyles
{
  v4 = objc_msgSend_textStorage(self, a2, v2);
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(v4, v8, v7);

  v12 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], v10, v11);
  v38 = objc_msgSend_stylesheet(v4, v13, v14);
  v37 = objc_msgSend_defaultParagraphStyle(v38, v15, v16);
  v19 = objc_msgSend_paragraphCount(v4, v17, v18);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      objc_opt_class();
      v22 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v4, v21, i, 0);
      v23 = TSUDynamicCast();

      if (v23)
      {
        v27 = objc_msgSend_objectForKey_(v12, v24, v23);
        if (!v27)
        {
          v28 = objc_msgSend_propertyMap(v23, v25, v26);
          v31 = objc_msgSend_properties(TSWPParagraphStyle, v29, v30);
          v33 = objc_msgSend_propertyMapWithProperties_(v28, v32, v31);

          v27 = objc_msgSend_variationOfStyle_propertyMap_(v38, v34, v37, v33);
          objc_msgSend_setObject_forKey_(v12, v35, v27, v23);
        }

        objc_msgSend_setParagraphStyle_atParIndex_undoTransaction_(v9, v25, v27, i, 0);
      }
    }
  }

  return v9;
}

- (BOOL)p_startingTOCIsRTLForEntries:(id)entries
{
  entriesCopy = entries;
  objc_opt_class();
  v7 = objc_msgSend_owningAttachment(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    v11 = objc_msgSend_parentStorage(v8, v9, v10);
    v14 = objc_msgSend_firstObject(entriesCopy, v12, v13);
    v17 = v14;
    if (v11 && v14)
    {
      if (objc_msgSend_length(v11, v15, v16) < 2)
      {
        isWritingDirectionRightToLeftForParagraphAtParIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtParIndex_(v11, v18, 0);
      }

      else
      {
        v20 = objc_msgSend_paragraphIndex(v17, v18, v19);
        isWritingDirectionRightToLeftForParagraphAtParIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtParIndex_(v11, v21, v20);
      }

      isDirectionRightToLeft = isWritingDirectionRightToLeftForParagraphAtParIndex;
    }

    else if (v11)
    {
      v24 = objc_msgSend_documentRoot(v11, v15, v16);
      isDirectionRightToLeft = objc_msgSend_isDirectionRightToLeft(v24, v25, v26);
    }

    else
    {
      isDirectionRightToLeft = 0;
    }
  }

  else
  {
    isDirectionRightToLeft = 0;
  }

  return isDirectionRightToLeft;
}

- (void)resetStorageStyles
{
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_theme(v4, v5, v6);
  v64 = objc_msgSend_defaultParagraphStyle(v7, v8, v9);

  v12 = objc_msgSend_documentRoot(self, v10, v11);
  v15 = objc_msgSend_theme(v12, v13, v14);
  v18 = objc_msgSend_defaultListStyle(v15, v16, v17);

  v23 = objc_msgSend_stylesheet(v64, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_textStorage(self, v21, v22);
    v27 = objc_msgSend_stylesheet(v24, v25, v26);

    if (v23 != v27)
    {
      v28 = objc_msgSend_textStorage(self, v21, v22);
      objc_msgSend_i_assignStylesheet_(v28, v29, v23);
    }
  }

  if (v64)
  {
    v30 = objc_msgSend_textStorage(self, v21, v22);
    v33 = objc_msgSend_documentRoot(self, v31, v32);
    v36 = objc_msgSend_theme(v33, v34, v35);
    v39 = objc_msgSend_defaultParagraphStyle(v36, v37, v38);
    v42 = objc_msgSend_textStorage(self, v40, v41);
    v45 = objc_msgSend_range(v42, v43, v44);
    objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v30, v46, v39, v45, v46, 0);
  }

  if (v18)
  {
    v47 = objc_msgSend_textStorage(self, v21, v22);
    v50 = objc_msgSend_documentRoot(self, v48, v49);
    v53 = objc_msgSend_theme(v50, v51, v52);
    v56 = objc_msgSend_defaultListStyle(v53, v54, v55);
    v59 = objc_msgSend_textStorage(self, v57, v58);
    v62 = objc_msgSend_range(v59, v60, v61);
    objc_msgSend_setListStyle_forCharRange_undoTransaction_(v47, v63, v56, v62, v63, 0);
  }
}

- (void)regenerateStorageContent
{
  v201 = *MEMORY[0x277D85DE8];
  if (self->_tocSettings)
  {
    v4 = self->_tocEntries != 0;
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  selfCopy = self;
  v7 = objc_msgSend_owningAttachment(self, v5, v6);
  v8 = TSUCheckedDynamicCast();

  v186 = v8;
  if (v8)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || (objc_msgSend_parentStorage(v8, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    objc_msgSend_resetStorageStyles(selfCopy, v9, v10);
    goto LABEL_57;
  }

  v185 = objc_msgSend_visibleTOCEntries(selfCopy, v9, v10);
  v195 = objc_msgSend_textStorage(selfCopy, v13, v14);
  v187 = objc_msgSend_p_startingTOCIsRTLForEntries_(selfCopy, v15, v185);
  v18 = objc_msgSend_range(v195, v16, v17);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v195, v19, v18, v19, &stru_28860A0F0, 0);
  v20 = MEMORY[0x277CBEB18];
  v23 = objc_msgSend_count(v185, v21, v22);
  v190 = objc_msgSend_arrayWithCapacity_(v20, v24, v23);
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = v185;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v196, v200, 16);
  if (v26)
  {
    v189 = *v197;
    do
    {
      v191 = v26;
      for (i = 0; i != v191; ++i)
      {
        if (*v197 != v189)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v196 + 1) + 8 * i);
        if (objc_msgSend_length(v195, v27, v28))
        {
          objc_msgSend_appendString_undoTransaction_(v195, v31, @"\n", 0);
        }

        v33 = objc_msgSend_tocSettings(selfCopy, v31, v32);
        v36 = objc_msgSend_indexedStyle(v30, v34, v35);
        v38 = objc_msgSend_entryStyleForParagraphStyle_(v33, v37, v36);

        v41 = objc_msgSend_heading(v30, v39, v40);
        appended = objc_msgSend_appendString_undoTransaction_(v195, v42, v41, 0);
        v45 = v44;

        v48 = objc_msgSend_intValueForProperty_(v38, v46, 136);
        if (v48)
        {
          v49 = objc_msgSend_appendString_undoTransaction_(v195, v47, @"\t", 0);
          v51 = v50;
          v52 = [TSWPTOCPageNumberAttachment alloc];
          v55 = objc_msgSend_context(selfCopy, v53, v54);
          v57 = objc_msgSend_initWithContext_(v52, v56, v55);

          v62 = objc_msgSend_pageNumber(v30, v58, v59);
          if (v62)
          {
            v63 = objc_msgSend_pageNumber(v30, v60, v61);
            v192 = objc_msgSend_numberFormat(v30, v64, v65);
            v2 = objc_msgSend_stringFromNumber_forFormatName_(TSWPItemNumbering, v66, v63, v192);
            objc_msgSend_setPageNumber_(v57, v67, v2);
          }

          else
          {
            objc_msgSend_setPageNumber_(v57, v60, &stru_28860A0F0);
          }

          if (v62)
          {
          }

          v71 = objc_msgSend_numberFormat(v30, v68, v69);
          objc_msgSend_setNumberFormat_(v57, v72, v71);

          v70 = v49 + v51;
          objc_msgSend_insertAttachmentOrFootnote_range_(v195, v73, v57, v70, 0);
        }

        else
        {
          v70 = appended + v45;
        }

        v74 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v47, v70, v48 != 0);
        objc_msgSend_addObject_(v190, v75, v74);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v196, v200, 16);
    }

    while (v26);
  }

  objc_msgSend_setPageNumberRanges_(selfCopy, v76, v190);
  if (!objc_msgSend_length(v195, v77, v78))
  {
    v81 = objc_msgSend_tocSettings(selfCopy, v79, v80);
    v84 = objc_msgSend_paragraphStylesShownInTOC(v81, v82, v83);
    v87 = objc_msgSend_count(v84, v85, v86) == 0;

    if (v87)
    {
      v101 = sub_276E32640(v88, v89, v90);
      v103 = objc_msgSend_localizedStringForKey_value_table_(v101, v102, @"The table of contents is empty because you haven\\U2019t selected paragraph styles to appear in it.", &stru_28860A0F0, @"TSText");
      objc_msgSend_appendString_undoTransaction_(v195, v104, v103, 0);
    }

    else
    {
      if (objc_msgSend_count(obj, v89, v90))
      {
        v93 = MEMORY[0x277D81150];
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "[TSWPTOCInfo regenerateStorageContent]");
        v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCInfo.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v97, v94, v96, 305, 0, "Unknown error generating content of table of contents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99);
        objc_msgSend_appendString_undoTransaction_(v195, v100, @" ", 0);
        goto LABEL_34;
      }

      v101 = sub_276E32640(0, v91, v92);
      v103 = objc_msgSend_localizedStringForKey_value_table_(v101, v105, @"The table of contents is empty because you aren\\U2019t using the paragraph styles set to appear in it.", &stru_28860A0F0, @"TSText");
      objc_msgSend_appendString_undoTransaction_(v195, v106, v103, 0);
    }
  }

LABEL_34:
  if (!objc_msgSend_count(obj, v79, v80))
  {
    objc_msgSend_resetStorageStyles(selfCopy, v107, v108);
  }

  if (v187 != objc_msgSend_isWritingDirectionRightToLeftForParagraphAtCharIndex_(v195, v107, 0))
  {
    v111 = objc_msgSend_range(v195, v109, v110);
    objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v195, v112, v187, v111, v112, 0);
  }

  v113 = 0;
  v193 = *MEMORY[0x277D813C0];
  v114 = MEMORY[0x277D81490];
  while (v113 < objc_msgSend_count(obj, v109, v110))
  {
    v117 = objc_msgSend_objectAtIndexedSubscript_(obj, v115, v113);
    v120 = objc_msgSend_tocSettings(selfCopy, v118, v119);
    v123 = objc_msgSend_indexedStyle(v117, v121, v122);
    v125 = objc_msgSend_entryStyleForParagraphStyle_(v120, v124, v123);

    objc_msgSend_setParagraphStyle_atParIndex_undoTransaction_(v195, v126, v125, v113, 0);
    v129 = objc_msgSend_indexedListStyle(v117, v127, v128);
    LOBYTE(v120) = v129 == 0;

    if ((v120 & 1) == 0)
    {
      v132 = objc_msgSend_indexedListStyle(v117, v130, v131);
      objc_msgSend_setListStyle_atParIndex_undoTransaction_(v195, v133, v132, v113, 0);

      v136 = objc_msgSend_indexedParagraphLevel(v117, v134, v135);
      objc_msgSend_setParagraphLevel_atParIndex_undoTransaction_(v195, v137, v136, v113, 0);
      if (objc_msgSend_indexedListStart(v117, v138, v139))
      {
        v140 = objc_msgSend_textRangeForParagraphAtIndex_(v195, v130, v113);
        v142 = v141;
        v144 = objc_msgSend_indexedListStart(v117, v141, v143);
        objc_msgSend_setListStart_forCharRange_undoTransaction_(v195, v145, v144, v140, v142, 0);
      }
    }

    if (objc_msgSend_intValueForProperty_(v125, v130, 136))
    {
      v147 = objc_msgSend_objectForProperty_(v125, v146, 137);
      v150 = objc_msgSend_null(MEMORY[0x277CBEB68], v148, v149);
      v151 = v147 == v150;

      if (!v151)
      {
        objc_opt_class();
        v153 = objc_msgSend_objectForProperty_(v125, v152, 137);
        v154 = TSUDynamicCast();

        v156 = objc_msgSend_objectAtIndexedSubscript_(v190, v155, v113);
        v159 = objc_msgSend_rangeValue(v156, v157, v158);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v195, v160, v154, v159, v160, 0);
      }
    }

    if (v187)
    {
      v161 = objc_msgSend_textRangeForParagraphAtIndex_(v195, v146, v113);
      v163 = v162;
      v164 = objc_msgSend_substringWithRange_(v195, v162, v161, v162);
      v167 = objc_msgSend_parentStorage(v186, v165, v166);
      if (objc_msgSend_length(v167, v168, v169) < 2)
      {
        v177 = 0;
      }

      else
      {
        v172 = objc_msgSend_parentStorage(v186, v170, v171);
        v175 = objc_msgSend_paragraphIndex(v117, v173, v174);
        v177 = objc_msgSend_languageAtParIndex_useStringTokenizer_useDocumentLanguage_(v172, v176, v175, 1, 1);
      }

      objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v195, v178, 1, v161, v163, 0);
      objc_msgSend_setLanguage_forCharRange_undoTransaction_(v195, v179, v177, v161, v163, 0);
      v182 = objc_msgSend_rangeOfString_(v164, v180, @"\t");
      v183 = v181;
      if ((v182 != *v114 || v181 != v114[1]) && objc_msgSend_characterDirectionForLanguage_(MEMORY[0x277CBEAF8], v181, v177) != 2)
      {
        objc_msgSend_setLanguage_forCharRange_undoTransaction_(v195, v184, v193, v182 + v161, v183, 0);
      }
    }

    ++v113;
  }

  objc_msgSend_invalidate(v186, v115, v116);

LABEL_57:
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_willModify(self, v8, v9);
  objc_msgSend_pushMappingContext_(mapperCopy, v10, self);
  v28.receiver = self;
  v28.super_class = TSWPTOCInfo;
  [(TSWPShapeInfo *)&v28 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  v13 = objc_msgSend_tocSettings(self, v11, v12);
  objc_msgSend_adoptStylesheet_withMapper_(v13, v14, stylesheetCopy, mapperCopy);

  v17 = objc_msgSend_tocEntries(self, v15, v16);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_276E293AC;
  v25 = &unk_27A6F5860;
  v18 = stylesheetCopy;
  v26 = v18;
  v19 = mapperCopy;
  v27 = v19;
  objc_msgSend_enumerateObjectsUsingBlock_(v17, v20, &v22);

  objc_msgSend_popMappingContext_(v19, v21, self, v22, v23, v24, v25);
}

- (id)referencedStyles
{
  v3 = MEMORY[0x277D81258];
  v23.receiver = self;
  v23.super_class = TSWPTOCInfo;
  referencedStyles = [(TSWPTOCInfo *)&v23 referencedStyles];
  v6 = objc_msgSend_setWithSet_(v3, v5, referencedStyles);

  v9 = objc_msgSend_tocEntries(self, v7, v8);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_276E2952C;
  v22[3] = &unk_27A6F5888;
  v22[4] = v6;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v22);

  v13 = objc_msgSend_tocSettings(self, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_tocSettings(self, v14, v15);
    v19 = objc_msgSend_referencedStyles(v16, v17, v18);
    objc_msgSend_unionSet_(v6, v20, v19);
  }

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[116]);

  objc_msgSend_loadTOCInfoMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadTOCInfoMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(message + 9))
  {
    v7 = *(message + 9);
  }

  else
  {
    v7 = &TSWP::_ShapeInfoArchive_default_instance_;
  }

  v37.receiver = self;
  v37.super_class = TSWPTOCInfo;
  [(TSWPShapeInfo *)&v37 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(message + 8) >= 1)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_276E299E8;
    v36[3] = &unk_27A6F4740;
    v36[4] = self;
    v9 = unarchiverCopy;
    v10 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v9, v11, message + 24, v10, 0, v36);
  }

  if ((*(message + 16) & 2) != 0)
  {
    v20 = *(message + 10);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_276E299FC;
    v35[3] = &unk_27A6F58B0;
    v35[4] = self;
    v21 = unarchiverCopy;
    v22 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v23, v20, v22, 0, v35);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTOCInfo loadTOCInfoMessage:unarchiver:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 440, 0, "No TOC settings found while unarchiving TOC info.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v24 = *(message + 14);
  if (v24 >= 1)
  {
    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    v27 = objc_msgSend_initWithCapacity_(v25, v26, v24);
    v28 = 8;
    do
    {
      v29 = TSPNSRangeFromMessage();
      v31 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v30, v29, v30);
      objc_msgSend_addObject_(v27, v32, v31);

      v28 += 8;
      --v24;
    }

    while (v24);
    pageNumberRanges = self->_pageNumberRanges;
    self->_pageNumberRanges = v27;
  }

  self->_shouldSyncTOCSettingsWithTOCNavigator = *(message + 88) & ((*(message + 4) << 29) >> 31);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_276E29A10;
  v34[3] = &unk_27A6F46E8;
  v34[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v19, v34);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276E2A168, off_2812DC408[116]);

  objc_msgSend_saveTOCInfoMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveTOCInfoMessage:(void *)message archiver:(id)archiver
{
  v43 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_276E29F90;
  v38[3] = &unk_27A6F3E30;
  messageCopy = message;
  v7 = archiverCopy;
  v39 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v38);
  tocEntries = self->_tocEntries;
  if (tocEntries)
  {
    objc_msgSend_setStrongReferenceArray_message_(v7, v9, tocEntries, message + 24);
  }

  v11 = objc_msgSend_tocSettings(self, v9, tocEntries);
  v12 = v11 == 0;

  if (!v12)
  {
    v16 = objc_msgSend_tocSettings(self, v13, v14);
    *(message + 4) |= 2u;
    v17 = *(message + 10);
    if (!v17)
    {
      v18 = *(message + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277CA3250](v18);
      *(message + 10) = v17;
    }

    objc_msgSend_setStrongReference_message_(v7, v15, v16, v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = objc_msgSend_pageNumberRanges(self, v13, v14, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v42, 16);
  if (v23)
  {
    v24 = *v35;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_rangeValue(*(*(&v34 + 1) + 8 * i), v21, v22);
        v26 = *(message + 8);
        if (!v26)
        {
          goto LABEL_19;
        }

        v27 = *(message + 14);
        v28 = *v26;
        if (v27 < *v26)
        {
          *(message + 14) = v27 + 1;
          goto LABEL_21;
        }

        if (v28 == *(message + 15))
        {
LABEL_19:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 48));
          v26 = *(message + 8);
          v28 = *v26;
        }

        *v26 = v28 + 1;
        v29 = MEMORY[0x277CA3230](*(message + 6));
        v30 = *(message + 14);
        v31 = *(message + 8) + 8 * v30;
        *(message + 14) = v30 + 1;
        *(v31 + 8) = v29;
LABEL_21:
        TSPNSRangeCopyToMessage();
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v34, v42, 16);
    }

    while (v23);
  }

  shouldSyncTOCSettingsWithTOCNavigator = self->_shouldSyncTOCSettingsWithTOCNavigator;
  *(message + 4) |= 4u;
  *(message + 88) = shouldSyncTOCSettingsWithTOCNavigator;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v33, 5, message);
}

- (id)textualEquivalent
{
  v3 = objc_msgSend_textStorage(self, a2, v2);
  v6 = objc_msgSend_range(v3, v4, v5);
  v8 = objc_msgSend_nsAttributedSubstringFromRange_scale_(v3, v7, v6, v7, 1.0);

  return v8;
}

@end