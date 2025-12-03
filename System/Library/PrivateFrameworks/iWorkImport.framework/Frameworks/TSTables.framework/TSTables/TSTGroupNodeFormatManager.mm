@interface TSTGroupNodeFormatManager
- (BOOL)mergedFormatChangedByAddingRowUID:(const TSKUIDStruct *)d andCellValue:(id)value groupBy:(id)by;
- (BOOL)mergedFormatChangedByRemovingRowUID:(const TSKUIDStruct *)d groupBy:(id)by;
- (TSTGroupNodeFormatManager)initWithArchive:(const void *)archive;
- (TSTGroupNodeFormatManager)initWithCellValue:(id)value;
- (void)encodeToArchive:(void *)archive forGroupBy:(id)by backwardCompat:(BOOL)compat;
- (void)p_recalculateMergedFormatWithGroupBy:(id)by;
- (void)reset;
- (void)unpackAfterUnarchiveForGroupBy:(id)by;
- (void)updateWithDocumentRoot:(id)root;
@end

@implementation TSTGroupNodeFormatManager

- (TSTGroupNodeFormatManager)initWithCellValue:(id)value
{
  valueCopy = value;
  v78.receiver = self;
  v78.super_class = TSTGroupNodeFormatManager;
  v5 = [(TSTGroupNodeFormatManager *)&v78 init];
  v10 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  if (valueCopy)
  {
    v15 = objc_msgSend_valueType(valueCopy, v6, v7, v8, v9);
    if ((v15 - 9) < 2)
    {
      goto LABEL_10;
    }

    if (v15 != 2)
    {
      if (v15)
      {
LABEL_11:
        v22 = objc_msgSend_tsceValue(valueCopy, v11, v12, v13, v14);
        v27 = v22;
        if (v22)
        {
          objc_msgSend_format(v22, v23, v24, v25, v26);
          formatState = v77._formatState;

          if (formatState == 1)
          {
            v33 = objc_msgSend_tsceValue(valueCopy, v29, v30, v31, v32);
            v38 = v33;
            if (v33)
            {
              objc_msgSend_format(v33, v34, v35, v36, v37);
            }

            else
            {
              memset(&v77, 0, sizeof(v77));
            }

            v39 = TSCEFormat::tskFormat(&v77, v34, v35, v36, v37);

            TSCEFormat::TSCEFormat(&v77, v39, 0);
            v44 = objc_msgSend_tsceValue(valueCopy, v40, v41, v42, v43);
            TSCEFormat::TSCEFormat(&v75, &v77);
            objc_msgSend_setFormat_(v44, v45, &v75, v46, v47);
            v52 = objc_msgSend_locale(valueCopy, v48, v49, v50, v51);
            v55 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v53, v44, v52, v54);

            valueCopy = v55;
          }
        }

        else
        {
        }

        goto LABEL_18;
      }

LABEL_10:
      v10->_noFormatMergingNeeded = 1;
      goto LABEL_11;
    }

    v16 = objc_msgSend_format(valueCopy, v11, v12, v13, v14);
    v21 = objc_msgSend_formatType(v16, v17, v18, v19, v20);

    if (v21 == 1)
    {
      goto LABEL_10;
    }

    v63 = objc_msgSend_tsceValue(valueCopy, v11, v12, v13, v14);
    TSCEFormat::TSCEFormat(&v76, 1);
    TSCEFormat::TSCEFormat(&v77, &v76);
    objc_msgSend_setFormat_(v63, v64, &v77, v65, v66);
    v71 = objc_msgSend_locale(valueCopy, v67, v68, v69, v70);
    v74 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v72, v63, v71, v73);

    v10->_noFormatMergingNeeded = 1;
    valueCopy = v74;
    if (v74)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5->_noFormatMergingNeeded = 1;
  }

  valueCopy = 0;
LABEL_18:
  objc_storeStrong(&v10->_cellValue, valueCopy);
  if (!v10->_noFormatMergingNeeded)
  {
    v60 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v56, v57, v58, v59);
    rowLookupKeysForFormat = v10->_rowLookupKeysForFormat;
    v10->_rowLookupKeysForFormat = v60;
  }

LABEL_20:

  return v10;
}

- (void)reset
{
  if (!self->_noFormatMergingNeeded)
  {
    if (!self->_cellValue)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupNodeFormatManager reset]", v3, v4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 85, 0, "invalid nil value for '%{public}s'", "_cellValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    }

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
    rowLookupKeysForFormat = self->_rowLookupKeysForFormat;
    self->_rowLookupKeysForFormat = v17;

    v23 = objc_msgSend_tsceValue(self->_cellValue, v19, v20, v21, v22);
    v36._tskFormat = 0;
    v36._formatType = 0;
    v36._formatState = 0;
    *&v36._durationFormat = 1057;
    *(&v36._durationFormat + 2) = 1;
    *&v36._baseFormat.base = -50266102;
    v36._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v37, &v36);
    objc_msgSend_setFormat_(v23, v24, &v37, v25, v26);
    v31 = objc_msgSend_locale(self->_cellValue, v27, v28, v29, v30);
    v34 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v32, v23, v31, v33);
    cellValue = self->_cellValue;
    self->_cellValue = v34;
  }
}

- (void)p_recalculateMergedFormatWithGroupBy:(id)by
{
  byCopy = by;
  if (!self->_noFormatMergingNeeded)
  {
    if (objc_msgSend_count(self->_rowLookupKeysForFormat, v4, v5, v6, v7))
    {
      v222[0] = 0;
      v222[1] = v222;
      v222[2] = 0x2020000000;
      v223 = 1;
      v210._tskFormat = 0;
      *&v210._formatType = &v210;
      *&v210._durationFormat = 0x5012000000;
      *&v210._numberFormat.decimalPlaces = sub_2212D36F0;
      v211 = nullsub_34;
      v213 = 0;
      v214 = 0;
      v215 = 0;
      v216 = v216 & 0xC080 | 0x421;
      v217 = v217 & 0xF8 | 1;
      v218 = -50266102;
      v219 = -3;
      v220 &= 0xE0u;
      v221 = 0;
      rowLookupKeysForFormat = self->_rowLookupKeysForFormat;
      v209[0] = MEMORY[0x277D85DD0];
      v209[1] = 3221225472;
      v209[2] = sub_2212D3700;
      v209[3] = &unk_278462AD0;
      v209[4] = v222;
      v209[5] = &v210;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(rowLookupKeysForFormat, v9, v209, v11, v12);
      TSCEFormat::formatBySmashingConflicts((*&v210._formatType + 48), v14, v15, &v208);
      TSCEFormat::operator=(*&v210._formatType + 48, &v208);
      v20 = *(*&v210._formatType + 56);
      if (v20 == 274)
      {
        v44 = TSCEFormat::customFormat((*&v210._formatType + 48), v16, v17, v18, v19);
        v49 = objc_msgSend_tsceValue(self->_cellValue, v45, v46, v47, v48);
        v54 = objc_msgSend_number(v49, v50, v51, v52, v53);
        objc_msgSend_doubleRepresentation(v54, v55, v56, v57, v58);
        v24 = objc_msgSend_currencyCodeForValue_(v44, v59, v60, v61, v62);

        if (v24)
        {
LABEL_6:
          v25 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v21, v24, v22, v23);
LABEL_10:
          v63 = [TSCENumberValue alloc];
          v68 = objc_msgSend_tsceValue(self->_cellValue, v64, v65, v66, v67);
          v73 = objc_msgSend_number(v68, v69, v70, v71, v72);
          v208._tskFormat = objc_msgSend_decimalRepresentation(v73, v74, v75, v76, v77);
          *&v208._formatType = v78;
          v79 = objc_msgSend_initWithDecimal_format_baseUnit_(v63, v78, &v208, *&v210._formatType + 48, v25);

          v80 = v79;
          v85 = objc_msgSend_locale(self->_cellValue, v81, v82, v83, v84);
          v88 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v86, v80, v85, v87);
          cellValue = self->_cellValue;
          self->_cellValue = v88;

          v90 = v80;
LABEL_22:

          _Block_object_dispose(&v210, 8);
          _Block_object_dispose(v222, 8);
          goto LABEL_23;
        }
      }

      else
      {
        if (v20 != 257)
        {
          if (objc_msgSend_valueType(self->_cellValue, v16, v17, v18, v19) == 5 && (objc_msgSend_tsceValue(self->_cellValue, v91, v92, v93, v94), v95 = objc_claimAutoreleasedReturnValue(), objc_msgSend_number(v95, v96, v97, v98, v99), v100 = objc_claimAutoreleasedReturnValue(), v105 = objc_msgSend_dimension(v100, v101, v102, v103, v104), v100, v95, v105))
          {
            v106 = [TSCENumberValue alloc];
            v111 = objc_msgSend_tsceValue(self->_cellValue, v107, v108, v109, v110);
            v116 = objc_msgSend_number(v111, v112, v113, v114, v115);
            v208._tskFormat = objc_msgSend_decimalRepresentation(v116, v117, v118, v119, v120);
            *&v208._formatType = v121;
            v123 = objc_msgSend_initWithDecimal_format_(v106, v121, &v208, *&v210._formatType + 48, v122);

            v90 = v123;
            v80 = objc_msgSend_locale(self->_cellValue, v124, v125, v126, v127);
            v130 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v128, v90, v80, v129);
          }

          else
          {
            if (objc_msgSend_valueType(self->_cellValue, v91, v92, v93, v94) != 5 || (objc_msgSend_tsceValue(self->_cellValue, v131, v132, v133, v134), v135 = objc_claimAutoreleasedReturnValue(), objc_msgSend_number(v135, v136, v137, v138, v139), v140 = objc_claimAutoreleasedReturnValue(), v145 = objc_msgSend_dimension(v140, v141, v142, v143, v144), v140, v135, v145))
            {
              v24 = objc_msgSend_tsceValue(self->_cellValue, v131, v132, v133, v134);
              TSCEFormat::TSCEFormat(&v208, (*&v210._formatType + 48));
              objc_msgSend_setFormat_(v24, v146, &v208, v147, v148);
              v90 = objc_msgSend_locale(self->_cellValue, v149, v150, v151, v152);
              v155 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v153, v24, v90, v154);
              v80 = self->_cellValue;
              self->_cellValue = v155;
              goto LABEL_22;
            }

            v156 = objc_msgSend_tsceValue(self->_cellValue, v131, v132, v133, v134);
            v161 = objc_msgSend_number(v156, v157, v158, v159, v160);
            v166 = objc_msgSend_unit(v161, v162, v163, v164, v165);

            if (*(*&v210._formatType + 56) == 268)
            {
              v171 = TSCEFormat::durationFormat((*&v210._formatType + 48), v167, v168, v169, v170);
              v166 = sub_221387C78(BYTE1(v171) & 0x3F);
            }

            else
            {
              v172 = MEMORY[0x277D81150];
              v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "[TSTGroupNodeFormatManager p_recalculateMergedFormatWithGroupBy:]", v169, v170);
              v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v175, v176);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v178, v173, v177, 153, 0, "Expected duration format.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v179, v180, v181, v182);
            }

            v183 = [TSCENumberValue alloc];
            v188 = objc_msgSend_tsceValue(self->_cellValue, v184, v185, v186, v187);
            v193 = objc_msgSend_number(v188, v189, v190, v191, v192);
            v198 = objc_msgSend_rawDecimalValue(v193, v194, v195, v196, v197);
            v200 = objc_msgSend_initWithDecimal_format_baseUnit_(v183, v199, v198, *&v210._formatType + 48, v166);

            v90 = v200;
            v80 = objc_msgSend_locale(self->_cellValue, v201, v202, v203, v204);
            v130 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v205, v90, v80, v206);
          }

          v207 = self->_cellValue;
          self->_cellValue = v130;

          v24 = v90;
          goto LABEL_22;
        }

        TSCEFormat::numberFormat((*&v210._formatType + 48), v16, v17, v18, v19);
        v24 = TSUCurrencyCodeForIndex();
        if (v24)
        {
          goto LABEL_6;
        }
      }

      v25 = 0;
      goto LABEL_10;
    }

    v26 = objc_msgSend_tsceValue(self->_cellValue, v9, v10, v11, v12);
    v31 = objc_msgSend_copy(v26, v27, v28, v29, v30);

    v224._tskFormat = 0;
    v224._formatType = 0;
    v224._formatState = 0;
    *&v224._durationFormat = 1057;
    *(&v224._durationFormat + 2) = 1;
    *&v224._baseFormat.base = -50266102;
    v224._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v210, &v224);
    objc_msgSend_setFormat_(v31, v32, &v210, v33, v34);
    v39 = objc_msgSend_locale(self->_cellValue, v35, v36, v37, v38);
    v42 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v40, v31, v39, v41);
    v43 = self->_cellValue;
    self->_cellValue = v42;
  }

LABEL_23:
}

- (BOOL)mergedFormatChangedByAddingRowUID:(const TSKUIDStruct *)d andCellValue:(id)value groupBy:(id)by
{
  valueCopy = value;
  byCopy = by;
  if (self->_noFormatMergingNeeded)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v18 = objc_msgSend_format(valueCopy, v9, v10, v11, v12);
    if (!v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupNodeFormatManager mergedFormatChangedByAddingRowUID:andCellValue:groupBy:]", v16, v17);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 178, 0, "invalid nil value for '%{public}s'", "format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v34 = objc_msgSend_objectForKey_(self->_rowLookupKeysForFormat, v15, v18, v16, v17);
    if (v34)
    {
      v14 = 0;
    }

    else
    {
      if (objc_msgSend_count(self->_rowLookupKeysForFormat, v30, v31, v32, v33))
      {
        v14 = 1;
      }

      else
      {
        v14 = objc_msgSend_isEqual_(self->_cellValue, v35, valueCopy, v36, v37) ^ 1;
      }

      v34 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_rowLookupKeysForFormat, v38, v34, v18, v39);
    }

    if (!byCopy)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTGroupNodeFormatManager mergedFormatChangedByAddingRowUID:andCellValue:groupBy:]", v32, v33);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v43, v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 187, 0, "invalid nil value for '%{public}s'", "groupBy");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }

    v51 = objc_msgSend_lookupKeyForRowUID_(byCopy, v30, d, v32, v33);
    objc_msgSend_addIndex_(v34, v52, v51, v53, v54);
    if (v14)
    {
      objc_msgSend_p_recalculateMergedFormatWithGroupBy_(self, v55, byCopy, v56, v57);
    }
  }

  return v14;
}

- (BOOL)mergedFormatChangedByRemovingRowUID:(const TSKUIDStruct *)d groupBy:(id)by
{
  v60 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v10 = byCopy;
  if (self->_noFormatMergingNeeded)
  {
    goto LABEL_16;
  }

  if (!byCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTGroupNodeFormatManager mergedFormatChangedByRemovingRowUID:groupBy:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 203, 0, "invalid nil value for '%{public}s'", "groupBy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_lookupKeyForRowUID_(v10, v7, d, v8, v9);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = objc_msgSend_allKeys(self->_rowLookupKeysForFormat, v23, v24, v25, v26);
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v55, v59, 16);
  if (!v32)
  {
LABEL_15:

LABEL_16:
    v50 = 0;
    goto LABEL_17;
  }

  v33 = *v56;
LABEL_6:
  v34 = 0;
  while (1)
  {
    if (*v56 != v33)
    {
      objc_enumerationMutation(v27);
    }

    v35 = *(*(&v55 + 1) + 8 * v34);
    v36 = objc_msgSend_objectForKeyedSubscript_(self->_rowLookupKeysForFormat, v29, v35, v30, v31);
    if (objc_msgSend_containsIndex_(v36, v37, v22, v38, v39))
    {
      break;
    }

    if (v32 == ++v34)
    {
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v55, v59, 16);
      if (v32)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  objc_msgSend_removeIndex_(v36, v40, v22, v41, v42);
  if (objc_msgSend_count(v36, v43, v44, v45, v46))
  {

    goto LABEL_15;
  }

  objc_msgSend_removeObjectForKey_(self->_rowLookupKeysForFormat, v47, v35, v48, v49);

  objc_msgSend_p_recalculateMergedFormatWithGroupBy_(self, v52, v10, v53, v54);
  v50 = 1;
LABEL_17:

  return v50;
}

- (void)updateWithDocumentRoot:(id)root
{
  rootCopy = root;
  v33 = rootCopy;
  if (rootCopy)
  {
    v9 = objc_msgSend_documentLocale(rootCopy, v5, v6, v7, v8);
    objc_msgSend_setLocale_(self->_cellValue, v10, v9, v11, v12);

    cellValue = self->_cellValue;
    v18 = objc_msgSend_customFormatList(v33, v14, v15, v16, v17);
    objc_msgSend_updateWithCustomFormatList_(cellValue, v19, v18, v20, v21);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNodeFormatManager updateWithDocumentRoot:]", v7, v8);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 232, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }
}

- (TSTGroupNodeFormatManager)initWithArchive:(const void *)archive
{
  if (*(archive + 16))
  {
    v12 = *(archive + 12);
    v13 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, archive, v3, v4);
    v7 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v14, v12, v13, v15);

    v8 = objc_msgSend_initWithCellValue_(self, v16, v7, v17, v18);
  }

  else
  {
    v7 = 0;
    v8 = objc_msgSend_initWithCellValue_(self, a2, 0, v3, v4);
  }

  v64 = v8;
  if (v8)
  {
    v19 = *(archive + 8);
    v20 = *(archive + 20);
    if (v20 < 1)
    {
      if (v19 != *(archive + 14))
      {
        v37 = MEMORY[0x277D81150];
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTGroupNodeFormatManager initWithArchive:]", v10, v11);
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v40, v41);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 269, 0, "Expected equal size arrays for the format dictionary.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
      }

      v48 = objc_opt_new();
      upgradeRowUidsForFormat = v64->_upgradeRowUidsForFormat;
      v64->_upgradeRowUidsForFormat = v48;

      if (v19 >= 1)
      {
        for (i = 0; i != v19; ++i)
        {
          v54 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v50, *(*(archive + 5) + 8 * i + 8), v51, v52);
          v57 = objc_opt_new();
          v58 = *(*(archive + 8) + 8 * i + 8);
          if (*(v58 + 24) >= 1)
          {
            v59 = 0;
            do
            {
              v60 = TSKUIDStruct::loadFromMessage(*(*(v58 + 32) + 8 * v59 + 8), v55);
              objc_msgSend_addUUID_(v57, v61, v60, v61, v62);
              ++v59;
              v58 = *(*(archive + 8) + 8 * i + 8);
            }

            while (v59 < *(v58 + 24));
          }

          objc_msgSend_setObject_forKey_(v64->_upgradeRowUidsForFormat, v55, v57, v54, v56);
        }
      }
    }

    else if (v19 == v20 || (v21 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTGroupNodeFormatManager initWithArchive:]", v10, v11), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 252, 0, "Expected equal size arrays for the format dictionary."), v26, v22, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31), v19 >= 1))
    {
      v32 = 8;
      do
      {
        v33 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v9, *(*(archive + 5) + v32), v10, v11);
        v34 = objc_opt_new();
        sub_22126A778(*(*(archive + 11) + v32), &v66);
        v65 = v34;
        TSUIndexSet::enumerateRangesUsingBlock();
        objc_msgSend_setObject_forKey_(v64->_rowLookupKeysForFormat, v35, v65, v33, v36);

        TSUIndexSet::~TSUIndexSet(&v66);
        v32 += 8;
        --v19;
      }

      while (v19);
    }
  }

  return v64;
}

- (void)unpackAfterUnarchiveForGroupBy:(id)by
{
  v32 = *MEMORY[0x277D85DE8];
  byCopy = by;
  upgradeRowUidsForFormat = self->_upgradeRowUidsForFormat;
  if (upgradeRowUidsForFormat)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = upgradeRowUidsForFormat;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v27, v31, 16);
    if (v10)
    {
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = objc_msgSend_objectForKey_(self->_upgradeRowUidsForFormat, v7, v13, v8, v9);
          v15 = objc_opt_new();
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = sub_2212D44EC;
          v24[3] = &unk_27845D8B0;
          v25 = byCopy;
          v16 = v15;
          v26 = v16;
          objc_msgSend_foreachUuid_(v14, v17, v24, v18, v19);
          objc_msgSend_setObject_forKey_(self->_rowLookupKeysForFormat, v20, v16, v13, v21);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v27, v31, 16);
      }

      while (v10);
    }

    v22 = self->_upgradeRowUidsForFormat;
    self->_upgradeRowUidsForFormat = 0;
  }
}

- (void)encodeToArchive:(void *)archive forGroupBy:(id)by backwardCompat:(BOOL)compat
{
  byCopy = by;
  rowLookupKeysForFormat = self->_rowLookupKeysForFormat;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2212D464C;
  v20[3] = &unk_278462B48;
  archiveCopy = archive;
  v10 = byCopy;
  v21 = v10;
  compatCopy = compat;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(rowLookupKeysForFormat, v11, v20, v12, v13);
  cellValue = self->_cellValue;
  if (cellValue)
  {
    *(archive + 4) |= 1u;
    v18 = *(archive + 12);
    if (!v18)
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v19);
      *(archive + 12) = v18;
    }

    objc_msgSend_encodeCellValueToArchive_(cellValue, v14, v18, v15, v16);
  }
}

@end