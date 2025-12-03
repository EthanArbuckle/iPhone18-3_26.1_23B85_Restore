@interface TSWPStoragePasteRules
- (_NSRange)srcLeadRange;
- (_NSRange)srcTrailRange;
- (id).cxx_construct;
- (void)addActionFlag:(unint64_t)flag;
- (void)applyParagraph:(unint64_t)paragraph toCharIndex:(unint64_t)index ioTransaction:(void *)transaction;
- (void)dealloc;
- (void)didPasteWithIOTransaction:(void *)transaction atDestRange:(_NSRange)range;
- (void)mapCharacterProperties:(id)properties toRange:(_NSRange)range ioTransaction:(void *)transaction;
- (void)mapCharacterPropertiesFromParagraph:(unint64_t)paragraph toRange:(_NSRange)range useParagraphProperties:(BOOL)properties ioTransaction:(void *)transaction;
- (void)setupFlagsForPastingSrcStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range srcStylesAmbiguous:(BOOL)ambiguous;
- (void)willPasteStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range srcStylesAmbiguous:(BOOL)ambiguous;
@end

@implementation TSWPStoragePasteRules

- (void)dealloc
{
  for (i = 0; i != 4; ++i)
  {
    v4 = (&self->super.isa + i * 56);
    parStyle = self->_paragraphInfo[i].parStyle;
    self->_paragraphInfo[i].parStyle = 0;

    columnStyle = self->_paragraphInfo[i].columnStyle;
    v4[9] = 0;

    section = self->_paragraphInfo[i].section;
    v4[8] = 0;

    listStyle = self->_paragraphInfo[i].listStyle;
    v4[10] = 0;

    dropCapStyle = self->_paragraphInfo[i].dropCapStyle;
    v4[13] = 0;
  }

  v10.receiver = self;
  v10.super_class = TSWPStoragePasteRules;
  [(TSWPStoragePasteRules *)&v10 dealloc];
}

- (void)addActionFlag:(unint64_t)flag
{
  if (objc_msgSend_lastFlag(self, a2, flag) >= 6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStoragePasteRules addActionFlag:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 164, 0, "addActionFlag: bad action flag count.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (objc_msgSend_lastFlag(self, v5, v6) <= 5)
  {
    self->_actionFlags[objc_msgSend_lastFlag(self, v14, v15)] = flag;
    v18 = objc_msgSend_lastFlag(self, v16, v17) + 1;

    MEMORY[0x2821F9670](self, sel_setLastFlag_, v18);
  }
}

- (void)applyParagraph:(unint64_t)paragraph toCharIndex:(unint64_t)index ioTransaction:(void *)transaction
{
  v9 = objc_msgSend_destStorage(self, a2, paragraph);
  v10 = self + 56 * paragraph;
  v12 = *(v10 + 7);
  v11 = v10 + 56;
  v60 = v9;
  hasObject_attributeArrayKind_range = objc_msgSend_hasObject_attributeArrayKind_range_(v9, v13, v12, 0, index, 1);

  if ((hasObject_attributeArrayKind_range & 1) == 0)
  {
    v61 = objc_msgSend_destStorage(self, v15, v16);
    objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v61, v17, *v11, index, 1, transaction);
  }

  v62 = objc_msgSend_destStorage(self, v15, v16);
  v19 = objc_msgSend_hasObject_attributeArrayKind_range_(v62, v18, *(v11 + 3), 2, index, 1);

  if ((v19 & 1) == 0)
  {
    v63 = objc_msgSend_destStorage(self, v20, v21);
    objc_msgSend_setListStyle_forCharRange_undoTransaction_(v63, v22, *(v11 + 3), index, 1, transaction);
  }

  v64 = objc_msgSend_destStorage(self, v20, v21);
  hasData_attributeArrayKind_range = objc_msgSend_hasData_attributeArrayKind_range_(v64, v23, *(v11 + 8), 1, index, 1);

  if ((hasData_attributeArrayKind_range & 1) == 0)
  {
    v65 = objc_msgSend_destStorage(self, v25, v26);
    objc_msgSend_setParagraphFlags_level_forCharRange_undoTransaction_(v65, v27, *(v11 + 17), *(v11 + 16), index, 1, transaction);
  }

  if ((objc_msgSend_flags(self, v25, v26) & 0x200) == 0)
  {
    v66 = objc_msgSend_destStorage(self, v28, v29);
    v31 = objc_msgSend_hasData_attributeArrayKind_range_(v66, v30, *(v11 + 9), 11, index, 0);

    if ((v31 & 1) == 0)
    {
      v67 = objc_msgSend_destStorage(self, v28, v29);
      objc_msgSend_setListStart_forCharRange_undoTransaction_(v67, v32, *(v11 + 9), index, 0, transaction);
    }
  }

  v68 = objc_msgSend_destStorage(self, v28, v29);
  v34 = objc_msgSend_hasData_attributeArrayKind_range_(v68, v33, *(v11 + 10), 18, index, 0);

  if ((v34 & 1) == 0)
  {
    v69 = objc_msgSend_destStorage(self, v35, v36);
    objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v69, v37, *(v11 + 10), index, 0, transaction);
  }

  v70 = objc_msgSend_destStorage(self, v35, v36);
  v40 = objc_msgSend_supportsColumnStyles(v70, v38, v39);

  if (v40)
  {
    if (paragraph)
    {
      if (objc_msgSend_sourceColumnStyleCount(self, v41, v42) >= 2)
      {
        v71 = objc_msgSend_destStorage(self, v41, v42);
        v44 = objc_msgSend_hasObject_attributeArrayKind_range_(v71, v43, *(v11 + 2), 9, index, 1);

        if ((v44 & 1) == 0)
        {
          v72 = objc_msgSend_destStorage(self, v41, v42);
          objc_msgSend_setColumnStyle_forCharRange_undoTransaction_(v72, v45, *(v11 + 2), index, 1, transaction);
LABEL_17:
        }
      }
    }

    else if (!index && objc_msgSend_sourceColumnStyleCount(self, v41, v42) >= 2)
    {
      v73 = objc_msgSend_destStorage(self, v41, v42);
      v47 = objc_msgSend_hasObject_attributeArrayKind_range_(v73, v46, *(v11 + 2), 9, 0, 1);

      if ((v47 & 1) == 0)
      {
        v72 = objc_msgSend_destStorage(self, v41, v42);
        objc_msgSend_setColumnStyle_forCharRange_undoTransaction_(v72, v59, *(v11 + 2), 0, 1, transaction);
        goto LABEL_17;
      }
    }
  }

  v74 = objc_msgSend_destStorage(self, v41, v42);
  v50 = objc_msgSend_supportsDropCaps(v74, v48, v49);

  if (v50)
  {
    v75 = objc_msgSend_destStorage(self, v51, v52);
    v54 = objc_msgSend_dropCapStyleAtCharIndex_(v75, v53, index);
    IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(22, v54, *(v11 + 6));

    if ((IsEquivalentToObject & 1) == 0)
    {
      v76 = objc_msgSend_destStorage(self, v56, v57);
      objc_msgSend_setDropCapStyle_forCharRange_undoTransaction_(v76, v58, *(v11 + 6), index, 1, transaction);
    }
  }
}

- (void)mapCharacterProperties:(id)properties toRange:(_NSRange)range ioTransaction:(void *)transaction
{
  range1 = range.length;
  location = range.location;
  propertiesCopy = properties;
  v8 = objc_msgSend_destStorage(self, v6, v7);
  v43 = objc_msgSend_stylesheet(v8, v9, v10);

  v13 = objc_msgSend_destStorage(self, v11, v12);
  v16 = objc_msgSend_length(v13, v14, v15);

  if (location + range1 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = location + range1;
  }

  if (location < v18)
  {
    v19 = location;
    do
    {
      v20 = objc_msgSend_propertyMapWithPropertyMap_(MEMORY[0x277D80AB8], v17, propertiesCopy);
      v23 = objc_msgSend_destStorage(self, v21, v22);
      v25 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v23, v24, v19, &v47);

      v48.location = location;
      v48.length = range1;
      v27 = NSIntersectionRange(v48, v47);
      if (v27.length)
      {
        v28 = objc_msgSend_destStorage(self, v27.length, v26);
        v30 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v28, v29, v19, 0);

        v32 = objc_msgSend_variationOfCharacterStyle_paragraphStyle_propertyMap_(v43, v31, v25, v30, v20);
        v35 = objc_msgSend_destStorage(self, v33, v34);
        hasObject_attributeArrayKind_range = objc_msgSend_hasObject_attributeArrayKind_range_(v35, v36, v32, 3, v27.location, v27.length);

        if ((hasObject_attributeArrayKind_range & 1) == 0)
        {
          v40 = objc_msgSend_destStorage(self, v38, v39);
          objc_msgSend_setCharacterStyle_range_undoTransaction_(v40, v41, v32, v27.location, v27.length, transaction);
        }
      }

      v19 = v47.length + v47.location;
    }

    while (v19 < v18);
  }
}

- (void)mapCharacterPropertiesFromParagraph:(unint64_t)paragraph toRange:(_NSRange)range useParagraphProperties:(BOOL)properties ioTransaction:(void *)transaction
{
  parStyle = self->_paragraphInfo[paragraph].parStyle;
  if (parStyle)
  {
    length = range.length;
    location = range.location;
    if (!properties || (objc_msgSend_propertyMap(parStyle, a2, paragraph), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], a2, paragraph);
    }

    v15 = v11;
    v12 = objc_msgSend_properties(TSWPCharacterStyle, a2, paragraph);
    objc_msgSend_filterWithProperties_(v15, v13, v12);
    objc_msgSend_mapCharacterProperties_toRange_ioTransaction_(self, v14, v15, location, length, transaction);
  }
}

- (void)setupFlagsForPastingSrcStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range srcStylesAmbiguous:(BOOL)ambiguous
{
  ambiguousCopy = ambiguous;
  length = range.length;
  location = range.location;
  storageCopy = storage;
  destStorageCopy = destStorage;
  objc_msgSend_setFlags_(self, v11, 0);
  objc_msgSend_setDestStorage_(self, v12, destStorageCopy);
  v15 = objc_msgSend_length(storageCopy, v13, v14);
  v17 = objc_msgSend_textRangeForParagraphAtCharIndex_(storageCopy, v16, 0);
  objc_msgSend_setSrcLeadRange_(self, v18, v17, v18);
  v20 = objc_msgSend_textRangeForParagraphAtCharIndex_(storageCopy, v19, v15);
  objc_msgSend_setSrcTrailRange_(self, v21, v20, v21);
  v23 = objc_msgSend_textRangeForParagraphAtCharIndex_(destStorageCopy, v22, location);
  v282 = v24;
  v25 = v23;
  v284 = location + length;
  v26 = objc_msgSend_textRangeForParagraphAtCharIndex_(destStorageCopy, v24, location + length);
  v280 = v27;
  v281 = v26;
  v29 = objc_msgSend_columnStyleCount(storageCopy, v27, v28);
  objc_msgSend_setSourceColumnStyleCount_(self, v30, v29);
  v33 = objc_msgSend_sectionCount(storageCopy, v31, v32);
  objc_msgSend_setSourceSectionCount_(self, v34, v33);
  if (length)
  {
    v37 = 0;
  }

  else if (objc_msgSend_isEmptyParagraphRange_ignoreAttachmentCharacters_outRange_(destStorageCopy, v35, location, 0, 1, 0))
  {
    v37 = 8;
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_msgSend_flags(self, v35, v36);
  objc_msgSend_setFlags_(self, v39, v38 | v37);
  if ((objc_msgSend_flags(self, v40, v41) & 8) == 0)
  {
    v43 = objc_msgSend_selectionWithRange_(TSWPSelection, v42, location, length);
    v45 = objc_msgSend_selectionContainsExclusivelyEmptyParagraphs_ignoreAttachmentCharacters_(destStorageCopy, v44, v43, 1);
    v48 = objc_msgSend_flags(self, v46, v47);
    v50 = 16;
    if (!v45)
    {
      v50 = 0;
    }

    objc_msgSend_setFlags_(self, v49, v48 | v50);
  }

  v283 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(storageCopy, v42, 0);
  objc_opt_class();
  v51 = TSUDynamicCast();
  v54 = objc_msgSend_wasGenmoji(v51, v52, v53);

  v57 = objc_msgSend_flags(self, v55, v56);
  if (v283)
  {
    v59 = v15 == 1;
  }

  else
  {
    v59 = 0;
  }

  v60 = 32;
  if (!v59)
  {
    v60 = 0;
  }

  objc_msgSend_setFlags_(self, v58, v57 | v60);
  v63 = objc_msgSend_flags(self, v61, v62);
  v66 = objc_msgSend_flags(self, v64, v65);
  v68 = 1024;
  if ((((v63 & 0x20) != 0) & v54) == 0)
  {
    v68 = 0;
  }

  objc_msgSend_setFlags_(self, v67, v66 | v68);
  v71 = objc_msgSend_flags(self, v69, v70);
  objc_msgSend_setFlags_(self, v72, v71 | (location == v25));
  v75 = objc_msgSend_srcLeadRange(self, v73, v74);
  v77 = v76;
  v79 = objc_msgSend_srcTrailRange(self, v76, v78);
  v81 = v80;
  v83 = objc_msgSend_flags(self, v80, v82);
  v85 = v77 == v81 && v75 == v79;
  v86 = 128;
  if (v85)
  {
    v86 = 0;
  }

  objc_msgSend_setFlags_(self, v84, v83 | v86);
  v89 = objc_msgSend_flags(self, v87, v88);
  v91 = v282 == v280 && v25 == v281;
  v92 = 4;
  if (v91)
  {
    v92 = 0;
  }

  objc_msgSend_setFlags_(self, v90, v89 | v92);
  if (v15)
  {
    v95 = objc_msgSend_characterAtIndex_(storageCopy, v93, v15 - 1);
    v96 = IsParagraphBreakingCharacter(v95);
  }

  else
  {
    v96 = 0;
  }

  v97 = objc_msgSend_flags(self, v93, v94);
  v99 = 64;
  if (!v96)
  {
    v99 = 0;
  }

  objc_msgSend_setFlags_(self, v98, v97 | v99);
  if (length)
  {
    v102 = objc_msgSend_characterAtIndex_(destStorageCopy, v100, v284 - 1);
    v103 = IsParagraphBreakingCharacter(v102);
  }

  else
  {
    v103 = 0;
  }

  v104 = objc_msgSend_flags(self, v100, v101);
  v106 = 2;
  if (!v103)
  {
    v106 = 0;
  }

  objc_msgSend_setFlags_(self, v105, v104 | v106);
  v109 = objc_msgSend_flags(self, v107, v108);
  v111 = 256;
  if (!ambiguousCopy)
  {
    v111 = 0;
  }

  objc_msgSend_setFlags_(self, v110, v109 | v111);
  v113 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(destStorageCopy, v112, v25, 0);
  v115 = objc_msgSend_previousCharacterIndex_(destStorageCopy, v114, v25);
  v117 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(destStorageCopy, v116, v115, 0);
  if (objc_msgSend_firstLabelType(v113, v118, v119) || objc_msgSend_firstLabelType(v117, v120, v121))
  {
    v122 = objc_msgSend_flags(self, v120, v121);
    objc_msgSend_setFlags_(self, v123, v122 | 0x200);
  }

  if ((objc_msgSend_flags(self, v120, v121) & 1) == 0)
  {
    v126 = location;
    while (v126 > v25)
    {
      v127 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(destStorageCopy, v124, --v126);
      isAnchored = objc_msgSend_isAnchored(v127, v128, v129);

      if ((isAnchored & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v131 = objc_msgSend_flags(self, v124, v125);
    objc_msgSend_setFlags_(self, v132, v131 | 1);
  }

LABEL_48:
  if ((objc_msgSend_flags(self, v124, v125) & 0x80) != 0 || (objc_msgSend_flags(self, v133, v134) & 4) != 0)
  {
    if ((objc_msgSend_flags(self, v133, v134) & 0x40) != 0)
    {
      v138 = (objc_msgSend_flags(self, v136, v137) & 2) == 0;
      objc_msgSend_setMapDestTrailingCharacterProperties_(self, v139, v138);
    }

    else
    {
      objc_msgSend_setMapDestTrailingCharacterProperties_(self, v136, 1);
    }
  }

  else
  {
    objc_msgSend_setMapDestTrailingCharacterProperties_(self, v133, 0);
  }

  v140 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(storageCopy, v135, 0, 0);
  parStyle = self->_paragraphInfo[0].parStyle;
  self->_paragraphInfo[0].parStyle = v140;

  v143 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(storageCopy, v142, 0, 0);
  columnStyle = self->_paragraphInfo[0].columnStyle;
  self->_paragraphInfo[0].columnStyle = v143;

  v146 = objc_msgSend_sectionAtCharIndex_effectiveRange_(storageCopy, v145, 0, 0);
  section = self->_paragraphInfo[0].section;
  self->_paragraphInfo[0].section = v146;

  v149 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(storageCopy, v148, 0, 0);
  listStyle = self->_paragraphInfo[0].listStyle;
  self->_paragraphInfo[0].listStyle = v149;

  v152 = objc_msgSend_paragraphLevelAtCharIndex_(storageCopy, v151, 0);
  if (v152 >= 0x10000)
  {
    v223 = MEMORY[0x277D81150];
    v224 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v226 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v225, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v223, v227, v224, v226, 359, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v228, v229);
    LOWORD(v152) = -1;
  }

  self->_paragraphInfo[0].parData.var0.var1.level = v152;
  self->_paragraphInfo[0].parData.var0.var1.flags = objc_msgSend_paragraphFlagsAtCharIndex_(storageCopy, v153, 0);
  v155 = objc_msgSend_listStartAtCharIndex_(storageCopy, v154, 0);
  if (HIDWORD(v155))
  {
    v230 = MEMORY[0x277D81150];
    v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v233 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v232, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v230, v234, v231, v233, 361, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v235, v236);
    LODWORD(v155) = -1;
  }

  self->_paragraphInfo[0].parStartData.var0.var0.listStart = v155;
  self->_paragraphInfo[0].parBidiData.var0.var0.listStart = objc_msgSend_writingDirectionForParagraphAtCharIndex_(storageCopy, v156, 0);
  v158 = objc_msgSend_dropCapStyleAtCharIndex_(storageCopy, v157, 0);
  dropCapStyle = self->_paragraphInfo[0].dropCapStyle;
  self->_paragraphInfo[0].dropCapStyle = v158;

  v161 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(storageCopy, v160, v15, 0);
  v162 = self->_paragraphInfo[1].parStyle;
  self->_paragraphInfo[1].parStyle = v161;

  v164 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(storageCopy, v163, v15, 0);
  v165 = self->_paragraphInfo[1].columnStyle;
  self->_paragraphInfo[1].columnStyle = v164;

  v167 = objc_msgSend_sectionAtCharIndex_effectiveRange_(storageCopy, v166, v15, 0);
  v168 = self->_paragraphInfo[1].section;
  self->_paragraphInfo[1].section = v167;

  v170 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(storageCopy, v169, v15, 0);
  v171 = self->_paragraphInfo[1].listStyle;
  self->_paragraphInfo[1].listStyle = v170;

  v173 = objc_msgSend_paragraphLevelAtCharIndex_(storageCopy, v172, v15);
  if (v173 >= 0x10000)
  {
    v237 = MEMORY[0x277D81150];
    v238 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v239, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v237, v241, v238, v240, 369, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v242, v243);
    LOWORD(v173) = -1;
  }

  self->_paragraphInfo[1].parData.var0.var1.level = v173;
  self->_paragraphInfo[1].parData.var0.var1.flags = objc_msgSend_paragraphFlagsAtCharIndex_(storageCopy, v174, v15);
  v176 = objc_msgSend_listStartAtCharIndex_(storageCopy, v175, v15);
  if (HIDWORD(v176))
  {
    v244 = MEMORY[0x277D81150];
    v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v244, v248, v245, v247, 371, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v249, v250);
    LODWORD(v176) = -1;
  }

  self->_paragraphInfo[1].parStartData.var0.var0.listStart = v176;
  self->_paragraphInfo[1].parBidiData.var0.var0.listStart = objc_msgSend_writingDirectionForParagraphAtCharIndex_(storageCopy, v177, v15);
  v179 = objc_msgSend_dropCapStyleAtCharIndex_(storageCopy, v178, v15);
  v180 = self->_paragraphInfo[1].dropCapStyle;
  self->_paragraphInfo[1].dropCapStyle = v179;

  v182 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(destStorageCopy, v181, location, 0);
  v183 = self->_paragraphInfo[2].parStyle;
  self->_paragraphInfo[2].parStyle = v182;

  v185 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(destStorageCopy, v184, location, 0);
  v186 = self->_paragraphInfo[2].columnStyle;
  self->_paragraphInfo[2].columnStyle = v185;

  v188 = objc_msgSend_sectionAtCharIndex_effectiveRange_(destStorageCopy, v187, location, 0);
  v189 = self->_paragraphInfo[2].section;
  self->_paragraphInfo[2].section = v188;

  v191 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(destStorageCopy, v190, location, 0);
  v192 = self->_paragraphInfo[2].listStyle;
  self->_paragraphInfo[2].listStyle = v191;

  v194 = objc_msgSend_paragraphLevelAtCharIndex_(destStorageCopy, v193, location);
  if (v194 >= 0x10000)
  {
    v251 = MEMORY[0x277D81150];
    v252 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v254 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v253, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v251, v255, v252, v254, 379, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v256, v257);
    LOWORD(v194) = -1;
  }

  self->_paragraphInfo[2].parData.var0.var1.level = v194;
  self->_paragraphInfo[2].parData.var0.var1.flags = objc_msgSend_paragraphFlagsAtCharIndex_(destStorageCopy, v195, location);
  v197 = objc_msgSend_listStartAtCharIndex_(destStorageCopy, v196, location);
  if (HIDWORD(v197))
  {
    v258 = MEMORY[0x277D81150];
    v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v261 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v258, v262, v259, v261, 381, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v263, v264);
    LODWORD(v197) = -1;
  }

  self->_paragraphInfo[2].parStartData.var0.var0.listStart = v197;
  self->_paragraphInfo[2].parBidiData.var0.var0.listStart = objc_msgSend_writingDirectionForParagraphAtCharIndex_(destStorageCopy, v198, location);
  v200 = objc_msgSend_dropCapStyleAtCharIndex_(destStorageCopy, v199, location);
  v201 = self->_paragraphInfo[2].dropCapStyle;
  self->_paragraphInfo[2].dropCapStyle = v200;

  v203 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(destStorageCopy, v202, v284, 0);
  v204 = self->_paragraphInfo[3].parStyle;
  self->_paragraphInfo[3].parStyle = v203;

  v206 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(destStorageCopy, v205, v284, 0);
  v207 = self->_paragraphInfo[3].columnStyle;
  self->_paragraphInfo[3].columnStyle = v206;

  v209 = objc_msgSend_sectionAtCharIndex_effectiveRange_(destStorageCopy, v208, v284, 0);
  v210 = self->_paragraphInfo[3].section;
  self->_paragraphInfo[3].section = v209;

  v212 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(destStorageCopy, v211, v284, 0);
  v213 = self->_paragraphInfo[3].listStyle;
  self->_paragraphInfo[3].listStyle = v212;

  v215 = objc_msgSend_paragraphLevelAtCharIndex_(destStorageCopy, v214, v284);
  if (v215 >= 0x10000)
  {
    v265 = MEMORY[0x277D81150];
    v266 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v216, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v268 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v267, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v265, v269, v266, v268, 389, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v270, v271);
    LOWORD(v215) = -1;
  }

  self->_paragraphInfo[3].parData.var0.var1.level = v215;
  self->_paragraphInfo[3].parData.var0.var1.flags = objc_msgSend_paragraphFlagsAtCharIndex_(destStorageCopy, v216, v284);
  v218 = objc_msgSend_listStartAtCharIndex_(destStorageCopy, v217, v284);
  if (HIDWORD(v218))
  {
    v272 = MEMORY[0x277D81150];
    v273 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v219, "[TSWPStoragePasteRules setupFlagsForPastingSrcStorage:intoDestStorage:atDestRange:srcStylesAmbiguous:]");
    v275 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v274, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStoragePasteRules.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v272, v276, v273, v275, 391, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v277, v278);
    LODWORD(v218) = -1;
  }

  self->_paragraphInfo[3].parStartData.var0.var0.listStart = v218;
  self->_paragraphInfo[3].parBidiData.var0.var0.listStart = objc_msgSend_writingDirectionForParagraphAtCharIndex_(destStorageCopy, v219, v284);
  v221 = objc_msgSend_dropCapStyleAtCharIndex_(destStorageCopy, v220, v284);
  v222 = self->_paragraphInfo[3].dropCapStyle;
  self->_paragraphInfo[3].dropCapStyle = v221;
}

- (void)willPasteStorage:(id)storage intoDestStorage:(id)destStorage atDestRange:(_NSRange)range srcStylesAmbiguous:(BOOL)ambiguous
{
  ambiguousCopy = ambiguous;
  length = range.length;
  location = range.location;
  storageCopy = storage;
  destStorageCopy = destStorage;
  objc_msgSend_setupFlagsForPastingSrcStorage_intoDestStorage_atDestRange_srcStylesAmbiguous_(self, v12, storageCopy, destStorageCopy, location, length, ambiguousCopy);
  if ((objc_msgSend_flags(self, v13, v14) & 0x10) != 0)
  {
    if ((objc_msgSend_flags(self, v15, v16) & 0x20) != 0)
    {
LABEL_10:
      objc_msgSend_addActionFlag_(self, v21, 1);
      goto LABEL_17;
    }

LABEL_16:
    objc_msgSend_addActionFlag_(self, v21, 3);
    goto LABEL_17;
  }

  if ((objc_msgSend_flags(self, v15, v16) & 8) != 0)
  {
    if ((objc_msgSend_flags(self, v17, v18) & 0x20) != 0 && (objc_msgSend_flags(self, v21, v22) & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if ((objc_msgSend_flags(self, v17, v18) & 1) != 0 && (objc_msgSend_flags(self, v19, v20) & 0x80) == 0 || (objc_msgSend_flags(self, v19, v20) & 1) == 0 && (objc_msgSend_flags(self, v19, v25) & 0x80) == 0)
  {
    objc_msgSend_addActionFlag_(self, v19, 1);
    if ((objc_msgSend_flags(self, v26, v27) & 0x100) != 0)
    {
      objc_msgSend_addActionFlag_(self, v28, 6);
    }

    else
    {
      objc_msgSend_addActionFlag_(self, v28, 7);
    }

    goto LABEL_17;
  }

  if ((objc_msgSend_flags(self, v19, v25) & 1) != 0 && (objc_msgSend_flags(self, v34, v35) & 0x80) != 0)
  {
    objc_msgSend_addActionFlag_(self, v34, 3);
    objc_msgSend_srcTrailRange(self, v42, v43);
    if (v44)
    {
      objc_msgSend_addActionFlag_(self, v44, 4);
    }

    else
    {
      objc_msgSend_addActionFlag_(self, 0, 2);
    }

    if (objc_msgSend_mapDestTrailingCharacterProperties(self, v45, v46))
    {
      goto LABEL_38;
    }
  }

  else if ((objc_msgSend_flags(self, v34, v35) & 1) == 0 && (objc_msgSend_flags(self, v23, v24) & 0x80) != 0)
  {
    objc_msgSend_addActionFlag_(self, v23, 1);
    objc_msgSend_addActionFlag_(self, v36, 7);
    objc_msgSend_srcTrailRange(self, v37, v38);
    if (v39)
    {
      objc_msgSend_addActionFlag_(self, v39, 4);
    }

    else
    {
      objc_msgSend_addActionFlag_(self, 0, 2);
    }

    if (objc_msgSend_mapDestTrailingCharacterProperties(self, v40, v41))
    {
LABEL_38:
      objc_msgSend_addActionFlag_(self, v23, 5);
    }
  }

LABEL_17:
  if ((objc_msgSend_flags(self, v23, v24) & 0x200) != 0)
  {
    objc_msgSend_addActionFlag_(self, v29, 8);
  }

  if ((objc_msgSend_flags(self, v29, v30) & 0x40) != 0 && (objc_msgSend_flags(self, v31, v32) & 2) != 0)
  {
    objc_msgSend_addActionFlag_(self, v33, 2);
  }
}

- (void)didPasteWithIOTransaction:(void *)transaction atDestRange:(_NSRange)range
{
  self->_srcLeadRange.location += range.location;
  self->_srcTrailRange.location += range.location;
  v6 = 8;
  while (1)
  {
    v7 = *(&self->super.isa + v6);
    if (v7 > 4)
    {
      if (v7 > 6)
      {
        if (v7 != 7)
        {
          if (v7 == 8)
          {
            v14 = objc_msgSend_destStorage(self, a2, transaction);
            listStart = self->_paragraphInfo[2].parStartData.var0.var0.listStart;
            v18 = objc_msgSend_srcLeadRange(self, v16, v17);
            LOBYTE(listStart) = objc_msgSend_hasData_attributeArrayKind_range_(v14, v19, listStart, 11, v18, 1);

            if ((listStart & 1) == 0)
            {
              v20 = self->_paragraphInfo[2].parStartData.var0.var0.listStart;
              v21 = objc_msgSend_destStorage(self, a2, transaction);
              v24 = objc_msgSend_srcLeadRange(self, v22, v23);
              objc_msgSend_setListStart_forCharRange_undoTransaction_(v21, v25, v20, v24, 1, transaction);
            }
          }

          goto LABEL_22;
        }

        v44 = objc_msgSend_srcLeadRange(self, a2, transaction);
        selfCopy2 = self;
        v46 = 0;
        v43 = a2;
      }

      else
      {
        if (v7 != 5)
        {
          v10 = objc_msgSend_srcLeadRange(self, a2, transaction);
          objc_msgSend_mapCharacterPropertiesFromParagraph_toRange_useParagraphProperties_ioTransaction_(self, v11, 0, v10, v11, 1, transaction);
          goto LABEL_22;
        }

        v28 = objc_msgSend_destStorage(self, a2, transaction);
        v31 = objc_msgSend_srcTrailRange(self, v29, v30);
        v33 = objc_msgSend_textRangeForParagraphAtCharIndex_(v28, v32, &v32[v31]);
        v35 = v34;

        v38 = objc_msgSend_srcTrailRange(self, v36, v37);
        v40 = v39;
        v42 = objc_msgSend_srcTrailRange(self, v39, v41);
        v43 = (v33 + v35 - &a2[v42]);
        if ((v33 + v35) == &a2[v42])
        {
          goto LABEL_22;
        }

        v44 = &v40[v38];
        selfCopy2 = self;
        v46 = 3;
      }

      objc_msgSend_mapCharacterPropertiesFromParagraph_toRange_useParagraphProperties_ioTransaction_(selfCopy2, a2, v46, v44, v43, 0, transaction);
      goto LABEL_22;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v26 = objc_msgSend_srcLeadRange(self, a2, transaction);
        objc_msgSend_applyParagraph_toCharIndex_ioTransaction_(self, v27, 0, v26, transaction);
      }

      else
      {
        v12 = objc_msgSend_srcTrailRange(self, a2, transaction);
        objc_msgSend_applyParagraph_toCharIndex_ioTransaction_(self, v13, 1, v12, transaction);
      }

      goto LABEL_22;
    }

    if (v7 == 1)
    {
      v47 = objc_msgSend_srcLeadRange(self, a2, transaction);
      objc_msgSend_applyParagraph_toCharIndex_ioTransaction_(self, v48, 2, v47, transaction);
      goto LABEL_22;
    }

    if (v7 != 2)
    {
      break;
    }

    v8 = objc_msgSend_srcTrailRange(self, a2, transaction);
    objc_msgSend_applyParagraph_toCharIndex_ioTransaction_(self, v9, 3, &v9[v8], transaction);
LABEL_22:
    v6 += 8;
    if (v6 == 56)
    {
      return;
    }
  }

  if (v7)
  {
    goto LABEL_22;
  }
}

- (_NSRange)srcLeadRange
{
  length = self->_srcLeadRange.length;
  location = self->_srcLeadRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)srcTrailRange
{
  length = self->_srcTrailRange.length;
  location = self->_srcTrailRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id).cxx_construct
{
  for (i = 0; i != 224; i += 56)
  {
    v3 = self + i;
    *(v3 + 13) = 0;
    *(v3 + 56) = 0uLL;
    *(v3 + 72) = 0uLL;
    *(v3 + 84) = 0uLL;
  }

  return self;
}

@end