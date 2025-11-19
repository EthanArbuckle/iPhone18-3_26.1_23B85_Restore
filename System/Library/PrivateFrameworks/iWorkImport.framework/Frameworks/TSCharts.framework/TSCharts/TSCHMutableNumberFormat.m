@interface TSCHMutableNumberFormat
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_formatTypeAffectedPropertyKeys;
- (void)remapCustomFormatKeysWithOldToNewKeyMap:(id)a3;
- (void)setBase:(unsigned int)a3;
- (void)setBasePlaces:(unsigned int)a3;
- (void)setBaseUseMinusSign:(BOOL)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setDecimalPlaces:(unsigned int)a3;
- (void)setFormatType:(unsigned int)a3;
- (void)setFractionAccuracy:(char)a3;
- (void)setNegativeStyle:(unsigned __int8)a3;
- (void)setShowThousandsSeparator:(BOOL)a3;
- (void)setUseAccountingStyle:(BOOL)a3;
- (void)setValueType:(int)a3;
- (void)updateAfterPasteForDocumentRoot:(id)a3 pasteboardCustomFormatList:(id)a4;
- (void)updateCustomFormatKey:(id)a3;
- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)a3;
@end

@implementation TSCHMutableNumberFormat

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCHNumberFormat alloc];
  v9 = objc_msgSend_format(self, v5, v6, v7, v8);
  v14 = objc_msgSend_prefixString(self, v10, v11, v12, v13);
  v19 = objc_msgSend_suffixString(self, v15, v16, v17, v18);
  v24 = objc_msgSend_initWithTSKFormat_prefixString_suffixString_(v4, v20, v21, v22, v23, v9, v14, v19);

  return v24;
}

- (id)p_formatTypeAffectedPropertyKeys
{
  if (qword_280A47A40 != -1)
  {
    sub_2764A867C();
  }

  v3 = qword_280A47A38;

  return v3;
}

- (void)setFormatType:(unsigned int)a3
{
  v6 = *&a3;
  v150 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_formatType(self, a2, v3, v4, v5) != a3)
  {
    v8 = objc_opt_class();
    if ((objc_msgSend_supportsFormatType_(v8, v9, v10, v11, v12, v6) & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHMutableNumberFormat setFormatType:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 963, 0, "Unexpected format type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    objc_msgSend_p_formatTypeAffectedPropertyKeys(self, v13, v14, v15, v16);
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v32 = v145 = 0u;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, &v144, v149, 16);
    if (v38)
    {
      v42 = *v145;
      do
      {
        v43 = 0;
        do
        {
          if (*v145 != v42)
          {
            objc_enumerationMutation(v32);
          }

          objc_msgSend_willChangeValueForKey_(self, v37, v39, v40, v41, *(*(&v144 + 1) + 8 * v43++));
        }

        while (v38 != v43);
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v37, v39, v40, v41, &v144, v149, 16);
      }

      while (v38);
    }

    v48 = objc_msgSend_format(self, v44, v45, v46, v47);
    v53 = objc_msgSend_copy(v48, v49, v50, v51, v52);

    v54 = MEMORY[0x277D80680];
    v59 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v55, v56, v57, v58);
    v64 = objc_msgSend_defaultFormatWithFormatType_locale_(v54, v60, v61, v62, v63, v6, v59);

    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = sub_2762F7F00;
    v142[3] = &unk_27A6B96D8;
    v65 = v53;
    v143 = v65;
    v70 = objc_msgSend_formatByUpdatingIfTSCHNumericFormatWithBlock_(v64, v66, v67, v68, v69, v142);
    objc_msgSend_setFormat_(self, v71, v72, v73, v74, v70);
    if (objc_msgSend_isFraction(self, v75, v76, v77, v78))
    {
      v83 = objc_opt_class();
      v88 = objc_msgSend_defaultFractionAccuracy(v83, v84, v85, v86, v87);
      objc_msgSend_setFractionAccuracy_(self, v89, v90, v91, v92, v88);
    }

    if (objc_msgSend_isCurrency(self, v79, v80, v81, v82))
    {
      v97 = objc_opt_class();
      v102 = objc_msgSend_defaultCurrencyCode(v97, v98, v99, v100, v101);
      objc_msgSend_setCurrencyCode_(self, v103, v104, v105, v106, v102);

      v107 = MEMORY[0x277D81228];
      v112 = objc_msgSend_currencyCode(self, v108, v109, v110, v111);
      v117 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(v107, v113, v114, v115, v116, v112);
      objc_msgSend_setDecimalPlaces_(self, v118, v119, v120, v121, v117);
    }

    if ((objc_msgSend_isCurrency(self, v93, v94, v95, v96) & 1) != 0 || objc_msgSend_isPercentage(self, v122, v123, v124, v125))
    {
      objc_msgSend_setShowThousandsSeparator_(self, v122, v123, v124, v125, 1);
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v126 = v32;
    v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v127, v128, v129, v130, &v138, v148, 16);
    if (v132)
    {
      v136 = *v139;
      do
      {
        v137 = 0;
        do
        {
          if (*v139 != v136)
          {
            objc_enumerationMutation(v126);
          }

          objc_msgSend_didChangeValueForKey_(self, v131, v133, v134, v135, *(*(&v138 + 1) + 8 * v137++), v138);
        }

        while (v132 != v137);
        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v131, v133, v134, v135, &v138, v148, 16);
      }

      while (v132);
    }
  }
}

- (void)setValueType:(int)a3
{
  v5 = TSUFormatTypeFromTSUNumberValueType();

  objc_msgSend_setFormatType_(self, v4, v6, v7, v8, v5);
}

- (void)setDecimalPlaces:(unsigned int)a3
{
  if ((objc_msgSend_supportsNumericProperties(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setDecimalPlaces:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1005, 0, "only supported for number format struct");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);
  if (a3 >= 0x1E)
  {
    v33 = 30;
  }

  else
  {
    v33 = a3;
  }

  if (a3 == 253)
  {
    v34 = 253;
  }

  else
  {
    v34 = v33;
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2762F8144;
  v43[3] = &unk_27A6B9688;
  v44 = v34;
  v38 = objc_msgSend_formatByUpdatingIfTSCHNumericFormatWithBlock_(v32, v35, COERCE_DOUBLE(3221225472), v36, v37, v43);
  objc_msgSend_setFormat_(self, v39, v40, v41, v42, v38);
}

- (void)setNegativeStyle:(unsigned __int8)a3
{
  v6 = a3;
  if ((objc_msgSend_supportsNumericProperties(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setNegativeStyle:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1022, 0, "only supported for number format struct");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (v6 == 4)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setNegativeStyle:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 1023, 0, "invalid negative style %lu", 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  v42 = objc_msgSend_format(self, v8, v9, v10, v11);
  v47 = objc_msgSend_copy(v42, v43, v44, v45, v46);
  if (v6 == 4)
  {
    LOBYTE(v6) = 0;
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_2762F8350;
  v56[3] = &unk_27A6B96F8;
  v57 = v6;
  v51 = objc_msgSend_formatByUpdatingIfTSCHNumericFormatWithBlock_(v47, v48, COERCE_DOUBLE(3221225472), v49, v50, v56);
  objc_msgSend_setFormat_(self, v52, v53, v54, v55, v51);
}

- (void)setShowThousandsSeparator:(BOOL)a3
{
  if ((objc_msgSend_supportsNumericProperties(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setShowThousandsSeparator:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1035, 0, "only supported for number format struct");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2762F84DC;
  v41[3] = &unk_27A6B96F8;
  v42 = a3;
  v36 = objc_msgSend_formatByUpdatingIfTSCHNumericFormatWithBlock_(v32, v33, COERCE_DOUBLE(3221225472), v34, v35, v41);
  objc_msgSend_setFormat_(self, v37, v38, v39, v40, v36);
}

- (void)setCurrencyCode:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHMutableNumberFormat setCurrencyCode:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1046, 0, "invalid nil value for '%{public}s'", "currencyCode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if ((objc_msgSend_supportsNumericProperties(self, v4, v6, v7, v8) & 1) == 0)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHMutableNumberFormat setCurrencyCode:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 1047, 0, "only supported for number format struct");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v43 = objc_msgSend_format(self, v24, v25, v26, v27);
  v48 = objc_msgSend_copy(v43, v44, v45, v46, v47);

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_2762F8724;
  v59[3] = &unk_27A6B96B0;
  v49 = v5;
  v60 = v49;
  v54 = objc_msgSend_formatByUpdatingIfCurrencyFormatWithBlock_(v48, v50, v51, v52, v53, v59);
  objc_msgSend_setFormat_(self, v55, v56, v57, v58, v54);
}

- (void)setUseAccountingStyle:(BOOL)a3
{
  if ((objc_msgSend_supportsNumericProperties(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setUseAccountingStyle:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1057, 0, "only supported for number format struct");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2762F88E4;
  v41[3] = &unk_27A6B9718;
  v42 = a3;
  v36 = objc_msgSend_formatByUpdatingIfCurrencyFormatWithBlock_(v32, v33, COERCE_DOUBLE(3221225472), v34, v35, v41);
  objc_msgSend_setFormat_(self, v37, v38, v39, v40, v36);
}

- (void)setFractionAccuracy:(char)a3
{
  if ((objc_msgSend_isFraction(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setFractionAccuracy:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1067, 0, "only supported for fraction");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2762F8A7C;
  v41[3] = &unk_27A6B9738;
  v42 = a3;
  v36 = objc_msgSend_formatByUpdatingIfFractionFormatWithBlock_(v32, v33, COERCE_DOUBLE(3221225472), v34, v35, v41);
  objc_msgSend_setFormat_(self, v37, v38, v39, v40, v36);
}

- (void)setBase:(unsigned int)a3
{
  if ((objc_msgSend_isBase(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setBase:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1077, 0, "only supported for base");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2762F8BF8;
  v41[3] = &unk_27A6B9758;
  v42 = a3;
  v36 = objc_msgSend_formatByUpdatingIfBaseFormatWithBlock_(v32, v33, COERCE_DOUBLE(3221225472), v34, v35, v41);
  objc_msgSend_setFormat_(self, v37, v38, v39, v40, v36);
}

- (void)setBasePlaces:(unsigned int)a3
{
  if ((objc_msgSend_isBase(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setBasePlaces:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1087, 0, "only supported for base");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2762F8D7C;
  v41[3] = &unk_27A6B9758;
  v42 = a3;
  v36 = objc_msgSend_formatByUpdatingIfBaseFormatWithBlock_(v32, v33, COERCE_DOUBLE(3221225472), v34, v35, v41);
  objc_msgSend_setFormat_(self, v37, v38, v39, v40, v36);
}

- (void)setBaseUseMinusSign:(BOOL)a3
{
  if ((objc_msgSend_isBase(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableNumberFormat setBaseUseMinusSign:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1097, 0, "only supported for base");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_format(self, v8, v9, v10, v11);
  v32 = objc_msgSend_copy(v27, v28, v29, v30, v31);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2762F8F00;
  v41[3] = &unk_27A6B9778;
  v42 = a3;
  v36 = objc_msgSend_formatByUpdatingIfBaseFormatWithBlock_(v32, v33, COERCE_DOUBLE(3221225472), v34, v35, v41);
  objc_msgSend_setFormat_(self, v37, v38, v39, v40, v36);
}

- (void)updateCustomFormatKey:(id)a3
{
  v48 = a3;
  v9 = objc_msgSend_customFormat(self, v4, v5, v6, v7);
  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x277D80650]);
    v18 = objc_msgSend_formatType(v9, v14, v15, v16, v17);
    v23 = objc_msgSend_customFormat(v9, v19, v20, v21, v22);
    v28 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v13, v24, v25, v26, v27, v18, v48, v23);
    objc_msgSend_setFormat_(self, v29, v30, v31, v32, v28);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHMutableNumberFormat updateCustomFormatKey:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 1108, 0, "invalid nil value for '%{public}s'", "customFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }
}

- (void)updateAfterPasteForDocumentRoot:(id)a3 pasteboardCustomFormatList:(id)a4
{
  v35 = a3;
  v6 = a4;
  if (objc_msgSend_isCustom(self, v7, v8, v9, v10))
  {
    v16 = objc_msgSend_customFormatListKey(self, v11, v12, v13, v14);
    if (v16)
    {
      v21 = objc_msgSend_customFormatForKey_documentRoot_fromPasteboardCustomFormatList_(TSCHNumberFormat, v15, v17, v18, v19, v16, v35, v6);
      if (v21)
      {
        v25 = objc_msgSend_customFormatList(v35, v20, v22, v23, v24);
        v30 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(v25, v26, v27, v28, v29, v21, v16, 1);

        objc_msgSend_updateCustomFormatKey_(self, v31, v32, v33, v34, v30);
      }
    }
  }
}

- (void)remapCustomFormatKeysWithOldToNewKeyMap:(id)a3
{
  v23 = a3;
  if (objc_msgSend_isCustom(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_customFormatListKey(self, v8, v9, v10, v11);
    if (v12)
    {
      objc_opt_class();
      v17 = objc_msgSend_objectForKeyedSubscript_(v23, v13, v14, v15, v16, v12);
      v18 = TSUCheckedDynamicCast();

      if (v18)
      {
        objc_msgSend_updateCustomFormatKey_(self, v19, v20, v21, v22, v18);
      }
    }
  }
}

- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)a3
{
  v44 = a3;
  v8 = objc_msgSend_format(self, v4, v5, v6, v7);
  v13 = objc_msgSend_asLegacyCustomFormat(v8, v9, v10, v11, v12);

  if (v13)
  {
    v18 = objc_msgSend_customFormatList(v44, v14, v15, v16, v17);
    v23 = objc_msgSend_legacyID(v13, v19, v20, v21, v22);
    v28 = objc_msgSend_upgradedCustomFormatKeyForLegacyID_(v18, v24, v25, v26, v27, v23);
    v29 = MEMORY[0x277D80650];
    v34 = objc_msgSend_formatType(v13, v30, v31, v32, v33);
    v39 = objc_msgSend_unpopulatedCustomFormatWrapperWithFormatType_customFormatKey_(v29, v35, v36, v37, v38, v34, v28);
    objc_msgSend_setFormat_(self, v40, v41, v42, v43, v39);
  }
}

@end