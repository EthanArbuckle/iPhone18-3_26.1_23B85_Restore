id TSWPShapePackageStringForPresetKind(void *a1)
{
  v1 = a1;
  v2 = sub_276DAD754();
  v4 = objc_msgSend_objectForKeyedSubscript_(v2, v3, v1);

  if (!v4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSString *TSWPShapePackageStringForPresetKind(__strong TSSPresetKind)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 124, 0, "Unexpected preset kind %{public}@ in TSWPShapeStylePackageStringForPresetKind()", v1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  return v4;
}

id sub_276DAD754()
{
  if (qword_280A58320 != -1)
  {
    sub_276F4F530();
  }

  v1 = qword_280A58318;

  return v1;
}

id sub_276DAD798(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, @"stickyComment"))
  {
    v4 = MEMORY[0x277D80B88];
LABEL_5:
    v6 = *v4;
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v1, v3, @"captions"))
  {
    v4 = MEMORY[0x277D80BB8];
    goto LABEL_5;
  }

  if (qword_280A58330 != -1)
  {
    sub_276F4F544();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_280A58328, v5, v1);
  if (!v6)
  {
    v6 = *MEMORY[0x277D80B78];
    if ((objc_msgSend_isEqualToString_(v1, v8, @"tableName") & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSSPresetKind TSWPShapePresetKindForPackageString(NSString *__strong)");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 148, 0, "Unknown package string %@.", v1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }
  }

LABEL_6:

  return v6;
}

void sub_276DAEDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSWPShapeInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276DAEF28(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_276DAF02C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276DAF13C(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_276DAF240(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276DAF770(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276DB10B8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_276DB1354(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_276DB1524(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276DB1A78(uint64_t a1, const char *a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D80B18];
  v7[0] = *MEMORY[0x277D80B50];
  v7[1] = v2;
  v8[0] = @"line";
  v8[1] = @"drawingline";
  v3 = *MEMORY[0x277D80B88];
  v7[2] = *MEMORY[0x277D80B40];
  v7[3] = v3;
  v8[2] = @"svgimport";
  v8[3] = @"shape";
  v4 = *MEMORY[0x277D80BC8];
  v7[4] = *MEMORY[0x277D80BB8];
  v7[5] = v4;
  v8[4] = @"textbox";
  v8[5] = @"fieldeditor";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v8, v7, 6);
  v6 = qword_280A58318;
  qword_280A58318 = v5;
}

void sub_276DB1B7C()
{
  v4 = sub_276DAD754();
  v2 = objc_msgSend_tsu_invertedCopy(v4, v0, v1);
  v3 = qword_280A58328;
  qword_280A58328 = v2;
}

void sub_276DB4724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSWPShapeRep;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276DB5510(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v79 = a3;
  if (objc_msgSend_containsProperty_(v79, v8, 32) && (!objc_msgSend_containsProperty_(v79, v9, 50) || a5))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = objc_msgSend_boxedObjectForProperty_(v79, v11, 32);
    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);
    if (objc_msgSend_isEqual_(v12, v16, v15))
    {

LABEL_9:
      objc_msgSend_willModifyForUpgrade(a1, v18, v19);
      v36 = objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35);
      objc_msgSend_setObject_forProperty_(v79, v37, v36, 50);

      objc_msgSend_removeValueForProperty_(v79, v38, 32);
      goto LABEL_27;
    }

    objc_msgSend_CGFloatValueForProperty_(v79, v17, 32);
    v21 = v20;

    if (v21 <= 0.0)
    {
      goto LABEL_9;
    }

    objc_msgSend_CGFloatValueForProperty_(v79, v18, 32);
    v23 = v22;
    objc_opt_class();
    v25 = objc_msgSend_boxedValueForProperty_(a1, v24, 17);
    v26 = TSUCheckedDynamicCast();

    v28 = objc_msgSend_boxedValueForProperty_(a1, v27, 48);
    v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30);

    if (v28 == v31)
    {
      objc_msgSend_clearColor(MEMORY[0x277D801F8], v32, v33);
    }

    else
    {
      objc_opt_class();
      TSUCheckedDynamicCast();
    }
    v39 = ;

    if ((isKindOfClass | a4))
    {
      if (!v39)
      {
        if (isKindOfClass)
        {
          v42 = MEMORY[0x277D81150];
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSSStyle(TSWPArchivingAdditions) p_upgradeOutlinesToStrokesInPropertyMap:forcingUpgradeForUnderspecifiedCharacterStyles:overridingCharacterStrokes:]");
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 145, 0, "Paragraph styles should always define a character fill.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
        }

        v39 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v40, v41);
      }

      v49 = (v26 == 0) & isKindOfClass;
      if (!v26)
      {
        v26 = &unk_2886280D8;
      }

      if (v49 == 1)
      {
        v50 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSSStyle(TSWPArchivingAdditions) p_upgradeOutlinesToStrokesInPropertyMap:forcingUpgradeForUnderspecifiedCharacterStyles:overridingCharacterStrokes:]");
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 149, 0, "Paragraph styles should always define a font size.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
        v26 = &unk_2886280D8;
      }
    }

    else if (!v39 || !v26)
    {
LABEL_26:

      goto LABEL_27;
    }

    objc_msgSend_willModifyForUpgrade(a1, v40, v41);
    v59 = objc_msgSend_clearColor(MEMORY[0x277D801F8], v57, v58);
    isEqual = objc_msgSend_isEqual_(v39, v60, v59);

    if (isEqual)
    {
      v64 = objc_msgSend_null(MEMORY[0x277CBEB68], v62, v63);
      objc_msgSend_setBoxedObject_forProperty_(v79, v65, v64, 50);
    }

    else
    {
      objc_msgSend_tsu_CGFloatValue(v26, v62, v63);
      v67 = v66;
      v68 = MEMORY[0x277D803C0];
      v71 = objc_msgSend_referenceColor(v39, v69, v70);
      v64 = objc_msgSend_strokeWithColor_width_(v68, v72, v71, v23 * v67 * 0.01);

      objc_msgSend_setObject_forProperty_(v79, v73, v64, 50);
    }

    objc_msgSend_removeValueForProperty_(v79, v74, 32);
    v77 = objc_msgSend_null(MEMORY[0x277CBEB68], v75, v76);
    objc_msgSend_setObject_forProperty_(v79, v78, v77, 48);

    goto LABEL_26;
  }

LABEL_27:
}

uint64_t sub_276DB59F8(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSSStyle(TSWPArchivingAdditions) upgradeOutlinesToStrokesForcingUpgradeForUnderspecifiedCharacterStyles:overridingCharacterStrokes:]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 183, 0, "Should only try to upgrade the stroke on a character or paragraph style.");

      result = objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v9, v10);
    }
  }

  v11 = *(a1 + *MEMORY[0x277D80AF0]);
  if (v11)
  {

    return MEMORY[0x2821F9670](a1, sel_p_upgradeOutlinesToStrokesInPropertyMap_forcingUpgradeForUnderspecifiedCharacterStyles_overridingCharacterStrokes_, v11);
  }

  return result;
}

void sub_276DB5B40(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  v13 = v10;
  v14 = *(a4 + 16);
  if ((v14 & 0x200000) != 0)
  {
    v219[0] = *(a4 + 176);
    if (objc_msgSend_validateFloatValue_forProperty_(v10, v11, v219, 34))
    {
      LODWORD(v15) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v11, 34, v15);
    }

    v14 = *(a4 + 16);
  }

  if ((v14 & 0x100000) != 0)
  {
    v219[0] = *(a4 + 172);
    if (objc_msgSend_validateIntValue_forProperty_(v13, v11, v219, 21))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v11, v219[0], 21);
    }
  }

  if (*(a4 + 21))
  {
    v219[0] = *(a4 + 216);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v11, v219, 22))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v11, v219[0] != 0, 22);
    }
  }

  v16 = *(a4 + 16);
  if ((v16 & 0x2000) != 0)
  {
    v219[0] = *(a4 + 156);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v11, v219, 19))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v11, v219[0] != 0, 19);
    }

    v16 = *(a4 + 16);
  }

  if ((v16 & 0x10) != 0)
  {
    if (v9)
    {
      v18 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v11, *(a4 + 88), v9);
      v17 = 1;
      goto LABEL_23;
    }

    v17 = 0;
    if ((v16 & 0x10000) == 0)
    {
LABEL_26:
      v20 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v17 = v9 != 0;
    if ((v16 & 0x10000) == 0)
    {
      goto LABEL_26;
    }
  }

  if (*(a4 + 159) != 1)
  {
    goto LABEL_26;
  }

  v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);
LABEL_23:
  v19 = v18;
  v20 = v19;
  if (!v19)
  {
LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  v218 = v19;
  v21 = objc_opt_class();
  v23 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v22, &v218, v21, 18);
  v24 = v218;

  if (v23)
  {
    objc_msgSend_setObject_forProperty_(v8, v25, v24, 18);
  }

LABEL_28:

  v28 = *(a4 + 16);
  if ((v28 & 0x4000) != 0)
  {
    v219[0] = *(a4 + 157);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v26, v219, 20))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v26, v219[0] != 0, 20);
    }

    v28 = *(a4 + 16);
  }

  if (v28)
  {
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = objc_msgSend_tsp_initWithProtobufString_(v30, v31, *(a4 + 56) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((v28 & 0x8000) == 0 || *(a4 + 158) != 1)
    {
      v33 = 0;
      goto LABEL_41;
    }

    v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27);
  }

  v32 = v29;
  v33 = v32;
  if (!v32)
  {
LABEL_41:
    v37 = 0;
    goto LABEL_42;
  }

  v217 = v32;
  v34 = objc_opt_class();
  v36 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v35, &v217, v34, 16);
  v37 = v217;

  if (v36)
  {
    objc_msgSend_setObject_forProperty_(v8, v38, v37, 16);
  }

LABEL_42:

  v41 = *(a4 + 16);
  if ((v41 & 0x1000) != 0)
  {
    v219[0] = *(a4 + 152);
    if (objc_msgSend_validateFloatValue_forProperty_(v13, v39, v219, 17))
    {
      LODWORD(v42) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v39, 17, v42);
    }

    v41 = *(a4 + 16);
  }

  if ((v41 & 0x400000) != 0)
  {
    v219[0] = *(a4 + 180);
    if (objc_msgSend_validateFloatValue_forProperty_(v13, v39, v219, 35))
    {
      LODWORD(v43) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v39, 35, v43);
    }

    v41 = *(a4 + 16);
  }

  if ((v41 & 2) != 0)
  {
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v44 = objc_msgSend_tsp_initWithProtobufString_(v45, v46, *(a4 + 64) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((v41 & 0x1000000) == 0 || *(a4 + 188) != 1)
    {
      v48 = 0;
      goto LABEL_59;
    }

    v44 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40);
  }

  v47 = v44;
  v48 = v47;
  if (!v47)
  {
LABEL_59:
    v52 = 0;
    goto LABEL_60;
  }

  v216 = v47;
  v49 = objc_opt_class();
  v51 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v50, &v216, v49, 39);
  v52 = v216;

  if (v51)
  {
    objc_msgSend_setObject_forProperty_(v8, v53, v52, 39);
  }

LABEL_60:

  v56 = *(a4 + 16);
  if ((v56 & 0x800000) != 0)
  {
    v219[0] = *(a4 + 184);
    if (objc_msgSend_validateIntValue_forProperty_(v13, v54, v219, 41))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v54, v219[0], 41);
    }

    v56 = *(a4 + 16);
  }

  v57 = !v17;
  if ((v56 & 0x20) == 0)
  {
    v57 = 1;
  }

  if (v57)
  {
    if ((v56 & 0x2000000) == 0 || *(a4 + 189) != 1)
    {
      v60 = 0;
      goto LABEL_75;
    }

    v58 = objc_msgSend_null(MEMORY[0x277CBEB68], v54, v55);
  }

  else
  {
    v58 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v54, *(a4 + 96), v9);
  }

  v59 = v58;
  v60 = v59;
  if (!v59)
  {
LABEL_75:
    v64 = 0;
    goto LABEL_76;
  }

  v215 = v59;
  v61 = objc_opt_class();
  v63 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v62, &v215, v61, 33);
  v64 = v215;

  if (v63)
  {
    objc_msgSend_setObject_forProperty_(v8, v65, v64, 33);
  }

LABEL_76:

  v68 = *(a4 + 16);
  if ((v68 & 0x10000000) != 0)
  {
    v219[0] = *(a4 + 192);
    if (objc_msgSend_validateFloatValue_forProperty_(v13, v66, v219, 32))
    {
      LODWORD(v69) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v66, 32, v69);
    }

    v68 = *(a4 + 16);
  }

  v70 = !v17;
  if ((v68 & 0x80) == 0)
  {
    v70 = 1;
  }

  if (v70)
  {
    if ((v68 & 0x8000000) == 0 || *(a4 + 191) != 1)
    {
      v73 = 0;
      goto LABEL_91;
    }

    v71 = objc_msgSend_null(MEMORY[0x277CBEB68], v66, v67);
  }

  else
  {
    v71 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v66, *(a4 + 112), v9);
  }

  v72 = v71;
  v73 = v72;
  if (!v72)
  {
LABEL_91:
    v77 = 0;
    goto LABEL_92;
  }

  v214 = v72;
  v74 = objc_opt_class();
  v76 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v75, &v214, v74, 29);
  v77 = v214;

  if (v76)
  {
    objc_msgSend_setObject_forProperty_(v8, v78, v77, 29);
  }

LABEL_92:

  v81 = *(a4 + 16);
  if ((v81 & 0x80000) != 0)
  {
    v219[0] = *(a4 + 168);
    if (objc_msgSend_validateIntValue_forProperty_(v13, v79, v219, 27))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v79, v219[0], 27);
    }

    v81 = *(a4 + 16);
  }

  if ((v81 & 0x20000000) != 0)
  {
    v219[0] = *(a4 + 196);
    if (objc_msgSend_validateFloatValue_forProperty_(v13, v79, v219, 28))
    {
      LODWORD(v82) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v79, 28, v82);
    }

    v81 = *(a4 + 16);
  }

  if ((v81 & 0x20000) != 0)
  {
    v219[0] = *(a4 + 160);
    if (objc_msgSend_validateIntValue_forProperty_(v13, v79, v219, 37))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v79, v219[0], 37);
    }

    v81 = *(a4 + 16);
  }

  v83 = !v17;
  if ((v81 & 0x100) == 0)
  {
    v83 = 1;
  }

  if (v83)
  {
    if ((v81 & 0x80000000) == 0 || *(a4 + 204) != 1)
    {
      v86 = 0;
      goto LABEL_115;
    }

    v84 = objc_msgSend_null(MEMORY[0x277CBEB68], v79, v80);
  }

  else
  {
    v84 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v79, *(a4 + 120), v9);
  }

  v85 = v84;
  v86 = v85;
  if (!v85)
  {
LABEL_115:
    v90 = 0;
    goto LABEL_116;
  }

  v213 = v85;
  v87 = objc_opt_class();
  v89 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v88, &v213, v87, 38);
  v90 = v213;

  if (v89)
  {
    objc_msgSend_setObject_forProperty_(v8, v91, v90, 38);
  }

LABEL_116:

  v94 = *(a4 + 16);
  if ((v94 & 0x40000000) != 0)
  {
    v219[0] = *(a4 + 200);
    if (objc_msgSend_validateFloatValue_forProperty_(v13, v92, v219, 36))
    {
      LODWORD(v95) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v92, 36, v95);
    }

    v94 = *(a4 + 16);
  }

  v96 = (v94 & 0x200) == 0;
  v97 = !v17;
  if (v96)
  {
    v97 = 1;
  }

  if (v97)
  {
    if ((*(a4 + 20) & 1) == 0 || *(a4 + 205) != 1)
    {
      v100 = 0;
      goto LABEL_132;
    }

    v98 = objc_msgSend_null(MEMORY[0x277CBEB68], v92, v93);
  }

  else
  {
    v98 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v92, *(a4 + 128), v9);
  }

  v99 = v98;
  v100 = v99;
  if (!v99)
  {
LABEL_132:
    v104 = 0;
    goto LABEL_133;
  }

  v212 = v99;
  v101 = objc_opt_class();
  v103 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v102, &v212, v101, 25);
  v104 = v212;

  if (v103)
  {
    objc_msgSend_setObject_forProperty_(v8, v105, v104, 25);
  }

LABEL_133:

  if ((*(a4 + 18) & 4) != 0)
  {
    v219[0] = *(a4 + 164);
    if (objc_msgSend_validateIntValue_forProperty_(v13, v106, v219, 23))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v106, v219[0], 23);
    }
  }

  v108 = *(a4 + 20);
  if ((v108 & 8) != 0)
  {
    v219[0] = *(a4 + 208);
    if (objc_msgSend_validateFloatValue_forProperty_(v13, v106, v219, 24))
    {
      LODWORD(v109) = v219[0];
      objc_msgSend_setFloatValue_forProperty_(v8, v106, 24, v109);
    }

    v108 = *(a4 + 20);
  }

  if ((v108 & 2) != 0)
  {
    v219[0] = *(a4 + 206);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v106, v219, 30))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v106, v219[0] != 0, 30);
    }

    v108 = *(a4 + 20);
  }

  if ((v108 & 4) != 0)
  {
    v219[0] = *(a4 + 207);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v106, v219, 26))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v106, v219[0] != 0, 26);
    }

    v108 = *(a4 + 20);
  }

  if ((v108 & 0x2000) != 0)
  {
    v219[0] = *(a4 + 224);
    if (objc_msgSend_validateIntValue_forProperty_(v13, v106, v219, 44))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v106, v219[0], 44);
    }
  }

  if ((*(a4 + 16) & 4) != 0)
  {
    v111 = objc_alloc(MEMORY[0x277CCACA8]);
    v110 = objc_msgSend_tsp_initWithProtobufString_(v111, v112, *(a4 + 72) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((*(a4 + 20) & 0x20) == 0 || *(a4 + 213) != 1)
    {
      v114 = 0;
      goto LABEL_160;
    }

    v110 = objc_msgSend_null(MEMORY[0x277CBEB68], v106, v107);
  }

  v113 = v110;
  v114 = v113;
  if (!v113)
  {
LABEL_160:
    v118 = 0;
    goto LABEL_161;
  }

  v211 = v113;
  v115 = objc_opt_class();
  v117 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v116, &v211, v115, 45);
  v118 = v211;

  if (v117)
  {
    objc_msgSend_setObject_forProperty_(v8, v119, v118, 45);
  }

LABEL_161:

  if ((*(a4 + 16) & 8) != 0)
  {
    v123 = objc_alloc(MEMORY[0x277CCACA8]);
    v122 = objc_msgSend_tsp_initWithProtobufString_(v123, v124, *(a4 + 80) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((*(a4 + 20) & 0x40) == 0 || *(a4 + 214) != 1)
    {
      v126 = 0;
      goto LABEL_170;
    }

    v122 = objc_msgSend_null(MEMORY[0x277CBEB68], v120, v121);
  }

  v125 = v122;
  v126 = v125;
  if (!v125)
  {
LABEL_170:
    v130 = 0;
    goto LABEL_171;
  }

  v210 = v125;
  v127 = objc_opt_class();
  v129 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v128, &v210, v127, 46);
  v130 = v210;

  if (v129)
  {
    objc_msgSend_setObject_forProperty_(v8, v131, v130, 46);
  }

LABEL_171:

  if ((*(a4 + 20) & 0x80) != 0)
  {
    v219[0] = *(a4 + 215);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v132, v219, 47))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v132, v219[0] != 0, 47);
    }
  }

  v134 = !v17;
  if ((*(a4 + 17) & 4) == 0)
  {
    v134 = 1;
  }

  if (v134)
  {
    if ((*(a4 + 21) & 4) == 0 || *(a4 + 218) != 1)
    {
      v137 = 0;
      goto LABEL_185;
    }

    v135 = objc_msgSend_null(MEMORY[0x277CBEB68], v132, v133);
  }

  else
  {
    v135 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v132, *(a4 + 136), v9);
  }

  v136 = v135;
  v137 = v136;
  if (!v136)
  {
LABEL_185:
    v141 = 0;
    goto LABEL_186;
  }

  v209 = v136;
  v138 = objc_opt_class();
  v140 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v139, &v209, v138, 50);
  v141 = v209;

  if (v140)
  {
    objc_msgSend_setObject_forProperty_(v8, v142, v141, 50);
  }

LABEL_186:

  v145 = !v17;
  if ((*(a4 + 17) & 8) == 0)
  {
    v145 = 1;
  }

  if (v145)
  {
    if ((*(a4 + 21) & 8) == 0 || *(a4 + 219) != 1)
    {
      v148 = 0;
      goto LABEL_197;
    }

    v146 = objc_msgSend_null(MEMORY[0x277CBEB68], v143, v144);
  }

  else
  {
    v146 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v143, *(a4 + 144), v9);
  }

  v147 = v146;
  v148 = v147;
  if (!v147)
  {
LABEL_197:
    v152 = 0;
    goto LABEL_198;
  }

  v208 = v147;
  v149 = objc_opt_class();
  v151 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v150, &v208, v149, 48);
  v152 = v208;

  if (v151)
  {
    objc_msgSend_setObject_forProperty_(v8, v153, v152, 48);
  }

LABEL_198:

  if ((*(a4 + 21) & 0x10) != 0)
  {
    v219[0] = *(a4 + 220);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v13, v154, v219, 49))
    {
      objc_msgSend_setIntValue_forProperty_(v8, v154, v219[0] != 0, 49);
    }
  }

  v156 = *(a4 + 16);
  v157 = !v17;
  if ((v156 & 0x40) == 0)
  {
    v157 = 1;
  }

  if (v157)
  {
    if ((v156 & 0x4000000) == 0 || *(a4 + 190) != 1)
    {
      v160 = 0;
      goto LABEL_212;
    }

    v158 = objc_msgSend_null(MEMORY[0x277CBEB68], v154, v155);
  }

  else
  {
    v158 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803A8], v154, *(a4 + 104), v9);
  }

  v159 = v158;
  v160 = v159;
  if (!v159)
  {
LABEL_212:
    v164 = 0;
    goto LABEL_213;
  }

  v207 = v159;
  v161 = objc_opt_class();
  v163 = objc_msgSend_validateObjectValue_withClass_forProperty_(v13, v162, &v207, v161, 40);
  v164 = v207;

  if (v163)
  {
    objc_msgSend_setObject_forProperty_(v8, v165, v164, 40);
  }

LABEL_213:

  if (*(a4 + 212) == 1)
  {
    v168 = objc_msgSend_null(MEMORY[0x277CBEB68], v166, v167);
    objc_msgSend_setObject_forProperty_(v8, v169, v168, 43);
LABEL_219:

    goto LABEL_220;
  }

  v170 = *(a4 + 40);
  if (v170)
  {
    v171 = a4;
    v198 = a1;
    v199 = v9;
    v200 = v8;
    v172 = objc_alloc(MEMORY[0x277CBEB18]);
    v168 = objc_msgSend_initWithCapacity_(v172, v173, v170);
    v174 = 0;
    v175 = *MEMORY[0x277CC48D8];
    v176 = *MEMORY[0x277CC48C8];
    do
    {
      v177 = *(*(v171 + 48) + 8 * v174 + 8);
      v178 = objc_alloc(MEMORY[0x277CCABB0]);
      v180 = objc_msgSend_initWithUnsignedInt_(v178, v179, *(v177 + 24));
      v181 = objc_alloc(MEMORY[0x277CCABB0]);
      v183 = objc_msgSend_initWithUnsignedInt_(v181, v182, *(v177 + 28));
      v184 = objc_alloc(MEMORY[0x277CBEAC0]);
      v186 = objc_msgSend_initWithObjectsAndKeys_(v184, v185, v180, v175, v183, v176, 0);
      objc_msgSend_addObject_(v168, v187, v186);

      ++v174;
    }

    while (v170 != v174);
    v8 = v200;
    objc_msgSend_setObject_forProperty_(v200, v188, v168, 43);

    a1 = v198;
    v9 = v199;
    goto LABEL_219;
  }

LABEL_220:
  if (v17 && objc_msgSend_fileFormatVersion(v9, v166, v167) < 0x4000100000007)
  {
    v189 = objc_opt_class();
    objc_msgSend_upgradeFontColorToIncludeCharacterFillInPropertyMap_forOwningTSPObject_(v189, v190, v8, a1);
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = sub_276DB6CB8;
    v205[3] = &unk_27A6F3708;
    v205[4] = a1;
    v206 = v8;
    objc_msgSend_addFinalizeHandler_(v9, v191, v205);
  }

  objc_opt_class();
  v193 = objc_msgSend_objectForProperty_(v8, v192, 18);
  v194 = TSUDynamicCast();

  v201[0] = MEMORY[0x277D85DD0];
  v201[1] = 3221225472;
  v201[2] = sub_276DB6CCC;
  v201[3] = &unk_27A6F4520;
  v195 = v8;
  v202 = v195;
  v203 = a1;
  v204 = v194;
  objc_msgSend_addFinalizeHandler_(v9, v196, v201);
  objc_msgSend_p_removeFontColorPropertyInPropertyMap_(a1, v197, v195);
}

void sub_276DB6CCC(void **a1, const char *a2)
{
  if (objc_msgSend_containsProperty_(a1[4], a2, 48))
  {
    v41 = objc_msgSend_objectForProperty_(a1[4], v3, 48);
    objc_opt_class();
    v4 = TSUDynamicCast();
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
    if ((objc_msgSend_isEqual_(v41, v8, v7) & 1) == 0)
    {
      v9 = objc_opt_class();
      isFillAdvanced = objc_msgSend_p_isFillAdvanced_(v9, v10, v4);

      if (!isFillAdvanced)
      {
LABEL_9:

        goto LABEL_10;
      }

      if (!v4)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSSStyle(TSWPArchivingAdditions) loadCharacterStylePropertiesIntoPropertyMap:fromArchive:unarchiver:]_block_invoke_2");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 254, 0, "invalid nil value for '%{public}s'", "fill");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        goto LABEL_9;
      }

      objc_msgSend_willModifyForUpgrade(a1[5], v12, v13);
      v7 = objc_msgSend_referenceColorForFontArchiving(v4, v14, v15);
      if (!v7)
      {
        v7 = a1[6];
        if (!v7)
        {
          objc_msgSend_removeValueForProperty_(a1[4], v16, 48);
          goto LABEL_9;
        }
      }

      v17 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v16, v7);
      objc_msgSend_setObject_forProperty_(a1[4], v18, v17, 48);
    }

    goto LABEL_9;
  }

LABEL_10:
  if (!objc_msgSend_containsProperty_(a1[4], v3, 50))
  {
    return;
  }

  v42 = objc_msgSend_objectForProperty_(a1[4], v19, 50);
  v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);
  if (objc_msgSend_isEqual_(v42, v23, v22))
  {
    goto LABEL_15;
  }

  v24 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(v42, v25, v24);

  if ((isMemberOfClass & 1) == 0)
  {
    objc_opt_class();
    v22 = TSUCheckedDynamicCast();
    if (v22)
    {
      objc_msgSend_willModifyForUpgrade(a1[5], v27, v28);
      v31 = objc_msgSend_stroke(MEMORY[0x277D80368], v29, v30);
      objc_msgSend_setPropertiesFromStroke_(v31, v32, v22);
      objc_msgSend_setObject_forProperty_(a1[4], v33, v31, 50);
    }

LABEL_15:
  }
}

void sub_276DB6FD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a3;
  v5 = a4;
  if (objc_msgSend_containsProperty_(v34, v6, 18) && (objc_msgSend_containsProperty_(v34, v7, 48) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(v5, v8, v9);
    v11 = objc_msgSend_objectForProperty_(v34, v10, 18);
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);

    if (v11 == v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSSStyle(TSWPArchivingAdditions) upgradeFontColorToIncludeCharacterFillInPropertyMap:forOwningTSPObject:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 311, 0, "Font color is only allowed to be NSNull on character styles.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }
    }

    else
    {
      objc_opt_class();
      v16 = TSUCheckedDynamicCast();
      if (v16)
      {
        v17 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v15, v16);
        objc_msgSend_setObject_forProperty_(v34, v18, v17, 48);
      }

      else
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSSStyle(TSWPArchivingAdditions) upgradeFontColorToIncludeCharacterFillInPropertyMap:forOwningTSPObject:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 314, 0, "invalid nil value for '%{public}s'", "existingFontColor");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      }
    }
  }
}

void sub_276DB7254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (objc_msgSend_containsProperty_(v5, v3, 18))
  {
    objc_msgSend_removeValueForProperty_(v5, v4, 18);
  }
}

void sub_276DB72C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v11 = objc_opt_class();
  v12 = *(a4 + 16);
  if ((v12 & 0x400000) != 0)
  {
    v158 = *(a4 + 136);
    v13 = objc_opt_class();
    if (objc_msgSend_validateIntValue_forProperty_(v13, v14, &v158, 97))
    {
      if (v158 == 4)
      {
        objc_msgSend_setIntValue_forProperty_(v7, v9, 15, 105);
      }

      else
      {
        objc_msgSend_setIntValue_forProperty_(v7, v9, v158 & 3 | (4 * ((v158 >> 3) & 3)), 105);
      }
    }

    v12 = *(a4 + 16);
  }

  if ((v12 & 0x400) != 0)
  {
    v158 = *(a4 + 112);
    if (objc_msgSend_validateIntValue_forProperty_(v11, v9, &v158, 86))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v9, v158, 86);
    }

    v12 = *(a4 + 16);
  }

  if (v12)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_tsp_initWithProtobufString_(v16, v17, *(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((v12 & 0x1000) == 0 || *(a4 + 120) != 1)
    {
      v19 = 0;
      goto LABEL_20;
    }

    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10);
  }

  v18 = v15;
  v19 = v18;
  if (!v18)
  {
LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  v157 = v18;
  v20 = objc_opt_class();
  v22 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v21, &v157, v20, 96);
  v23 = v157;

  if (v22)
  {
    objc_msgSend_setObject_forProperty_(v7, v24, v23, 96);
  }

LABEL_21:

  v27 = *(a4 + 16);
  if ((v27 & 0x800) != 0)
  {
    v158 = *(a4 + 116);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v25, &v158, 83))
    {
      LODWORD(v28) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v25, 83, v28);
    }

    v27 = *(a4 + 16);
  }

  if ((v27 & 8) != 0)
  {
    if (v8)
    {
      v30 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D81180], v25, *(a4 + 56), v8);
      v29 = 1;
      goto LABEL_33;
    }

    v29 = 0;
    if ((v27 & 0x2000) == 0)
    {
LABEL_36:
      v32 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v29 = v8 != 0;
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_36;
    }
  }

  if (*(a4 + 121) != 1)
  {
    goto LABEL_36;
  }

  v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26);
LABEL_33:
  v31 = v30;
  v32 = v31;
  if (!v31)
  {
LABEL_37:
    v36 = 0;
    goto LABEL_38;
  }

  v156 = v31;
  v33 = objc_opt_class();
  v35 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v34, &v156, v33, 94);
  v36 = v156;

  if (v35)
  {
    objc_msgSend_setObject_forProperty_(v7, v37, v36, 94);
  }

LABEL_38:

  v40 = *(a4 + 16);
  if ((v40 & 0x10000) != 0)
  {
    v158 = *(a4 + 124);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v38, &v158, 80))
    {
      LODWORD(v41) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v38, 80, v41);
    }

    v40 = *(a4 + 16);
  }

  if ((v40 & 0x200) != 0 && v29)
  {
    v42 = *(a4 + 104);
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = sub_276DB80D4;
    v153[3] = &unk_27A6F4548;
    v155 = v11;
    v154 = v7;
    v43 = v8;
    v44 = v153;
    v45 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v43, v46, v42, v45, 0, v44);

    v47 = v154;
LABEL_48:

    goto LABEL_49;
  }

  if ((*(a4 + 20) & 0x10) != 0 && *(a4 + 171) == 1)
  {
    v47 = objc_msgSend_null(MEMORY[0x277CBEB68], v38, v39);
    objc_msgSend_setObject_forProperty_(v7, v48, v47, 95);
    goto LABEL_48;
  }

LABEL_49:
  v49 = *(a4 + 16);
  if ((v49 & 0x4000) != 0)
  {
    v158 = *(a4 + 122);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v38, &v158, 93))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v38, v158 != 0, 93);
    }

    v49 = *(a4 + 16);
  }

  if ((v49 & 0x8000) != 0)
  {
    v158 = *(a4 + 123);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v38, &v158, 89))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v38, v158 != 0, 89);
    }

    v49 = *(a4 + 16);
  }

  if ((v49 & 0x40000) != 0)
  {
    v158 = *(a4 + 132);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v38, &v158, 90))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v38, v158 != 0, 90);
    }

    v49 = *(a4 + 16);
  }

  if ((v49 & 0x20000) != 0)
  {
    v158 = *(a4 + 128);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v38, &v158, 81))
    {
      LODWORD(v50) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v38, 81, v50);
    }

    v49 = *(a4 + 16);
  }

  v51 = !v29;
  if ((v49 & 0x10) == 0)
  {
    v51 = 1;
  }

  if (v51)
  {
    if ((v49 & 0x80000) == 0 || *(a4 + 133) != 1)
    {
      v54 = 0;
      goto LABEL_76;
    }

    v52 = objc_msgSend_null(MEMORY[0x277CBEB68], v38, v39);
  }

  else
  {
    v52 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPLineSpacing, v38, *(a4 + 64), v8);
  }

  v53 = v52;
  v54 = v53;
  if (!v53)
  {
LABEL_76:
    v58 = 0;
    goto LABEL_77;
  }

  v152 = v53;
  v55 = objc_opt_class();
  v57 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v56, &v152, v55, 85);
  v58 = v152;

  if (v57)
  {
    objc_msgSend_setObject_forProperty_(v7, v59, v58, 85);
  }

LABEL_77:

  if ((*(a4 + 19) & 8) != 0)
  {
    v158 = *(a4 + 156);
    if (objc_msgSend_validateIntValue_forProperty_min_max_(v11, v60, &v158, 101, 0xFFFFFFFFLL, 999))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v60, v158, 101);
    }
  }

  if (*(a4 + 20))
  {
    v158 = *(a4 + 164);
    if (objc_msgSend_validateIntValue_forProperty_(v11, v60, &v158, 102))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v60, v158, 102);
    }
  }

  v62 = *(a4 + 16);
  if ((v62 & 0x100000) != 0)
  {
    v158 = *(a4 + 134);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v60, &v158, 91))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v60, v158 != 0, 91);
    }

    v62 = *(a4 + 16);
  }

  if ((v62 & 0x800000) != 0)
  {
    v158 = *(a4 + 140);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v60, &v158, 99))
    {
      LODWORD(v63) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v60, 99, v63);
    }

    v62 = *(a4 + 16);
  }

  if ((v62 & 0x1000000) != 0)
  {
    v158 = *(a4 + 144);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v60, &v158, 82))
    {
      LODWORD(v64) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v60, 82, v64);
    }

    v62 = *(a4 + 16);
  }

  if ((v62 & 0x2000000) != 0)
  {
    v158 = *(a4 + 148);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v60, &v158, 88))
    {
      LODWORD(v65) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v60, 88, v65);
    }

    v62 = *(a4 + 16);
  }

  if ((v62 & 0x4000000) != 0)
  {
    v158 = *(a4 + 152);
    if (objc_msgSend_validateFloatValue_forProperty_(v11, v60, &v158, 87))
    {
      LODWORD(v66) = v158;
      objc_msgSend_setFloatValue_forProperty_(v7, v60, 87, v66);
    }

    v62 = *(a4 + 16);
  }

  v67 = !v29;
  if ((v62 & 0x80) == 0)
  {
    v67 = 1;
  }

  if (v67)
  {
    if ((v62 & 0x80000000) == 0 || *(a4 + 163) != 1)
    {
      v70 = 0;
      goto LABEL_114;
    }

    v68 = objc_msgSend_null(MEMORY[0x277CBEB68], v60, v61);
  }

  else
  {
    v68 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v60, *(a4 + 88), v8);
  }

  v69 = v68;
  v70 = v69;
  if (!v69)
  {
LABEL_114:
    v74 = 0;
    goto LABEL_115;
  }

  v151 = v69;
  v71 = objc_opt_class();
  v73 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v72, &v151, v71, 98);
  v74 = v151;

  if (v73)
  {
    objc_msgSend_setObject_forProperty_(v7, v75, v74, 98);
  }

LABEL_115:

  v78 = *(a4 + 16);
  v79 = !v29;
  if ((v78 & 0x40) == 0)
  {
    v79 = 1;
  }

  if (v79)
  {
    if ((v78 & 0x10000000) == 0 || *(a4 + 160) != 1)
    {
      v82 = 0;
      goto LABEL_126;
    }

    v80 = objc_msgSend_null(MEMORY[0x277CBEB68], v76, v77);
  }

  else
  {
    v80 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPTabs, v76, *(a4 + 80), v8);
  }

  v81 = v80;
  v82 = v81;
  if (!v81)
  {
LABEL_126:
    v86 = 0;
    goto LABEL_127;
  }

  v150 = v81;
  v83 = objc_opt_class();
  v85 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v84, &v150, v83, 84);
  v86 = v150;

  if (v85)
  {
    objc_msgSend_setObject_forProperty_(v7, v87, v86, 84);
  }

LABEL_127:

  v90 = *(a4 + 16);
  if ((v90 & 0x20000000) != 0)
  {
    v158 = *(a4 + 161);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v88, &v158, 92))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v88, v158 != 0, 92);
    }

    v90 = *(a4 + 16);
  }

  if ((v90 & 0x100) != 0 && v29)
  {
    v91 = *(a4 + 96);
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = sub_276DB8190;
    v147[3] = &unk_27A6F4570;
    v149 = v11;
    v148 = v7;
    v92 = v8;
    v93 = v147;
    v94 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v92, v95, v91, v94, 0, v93);

    v96 = v148;
LABEL_137:

    goto LABEL_138;
  }

  if ((*(a4 + 20) & 8) != 0 && *(a4 + 170) == 1)
  {
    v96 = objc_msgSend_null(MEMORY[0x277CBEB68], v88, v89);
    objc_msgSend_setObject_forProperty_(v7, v97, v96, 103);
    goto LABEL_137;
  }

LABEL_138:
  v98 = *(a4 + 20);
  if ((v98 & 0x20) != 0)
  {
    v158 = *(a4 + 172);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v88, &v158, 121))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v88, v158 != 0, 121);
    }

    v98 = *(a4 + 20);
  }

  if ((v98 & 0x40) != 0)
  {
    v158 = *(a4 + 173);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v88, &v158, 104))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v88, v158 != 0, 104);
    }

    v98 = *(a4 + 20);
  }

  if ((v98 & 0x80) != 0)
  {
    v158 = *(a4 + 174);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v88, &v158, 106))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v88, v158 != 0, 106);
    }
  }

  v99 = *(a4 + 16);
  if ((v99 & 2) != 0)
  {
    v101 = objc_alloc(MEMORY[0x277CCACA8]);
    v100 = objc_msgSend_tsp_initWithProtobufString_(v101, v102, *(a4 + 40) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((v99 & 0x40000000) == 0 || *(a4 + 162) != 1)
    {
      v104 = 0;
      goto LABEL_158;
    }

    v100 = objc_msgSend_null(MEMORY[0x277CBEB68], v88, v89);
  }

  v103 = v100;
  v104 = v103;
  if (!v103)
  {
LABEL_158:
    v108 = 0;
    goto LABEL_159;
  }

  v146 = v103;
  v105 = objc_opt_class();
  v107 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v106, &v146, v105, 107);
  v108 = v146;

  if (v107)
  {
    objc_msgSend_setObject_forProperty_(v7, v109, v108, 107);
  }

LABEL_159:

  if ((*(a4 + 20) & 2) != 0)
  {
    v158 = *(a4 + 168);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v11, v110, &v158, 108))
    {
      objc_msgSend_setIntValue_forProperty_(v7, v110, v158 != 0, 108);
    }
  }

  if ((*(a4 + 16) & 4) != 0)
  {
    v113 = objc_alloc(MEMORY[0x277CCACA8]);
    v112 = objc_msgSend_tsp_initWithProtobufString_(v113, v114, *(a4 + 48) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if ((*(a4 + 20) & 4) == 0 || *(a4 + 169) != 1)
    {
      v116 = 0;
      goto LABEL_171;
    }

    v112 = objc_msgSend_null(MEMORY[0x277CBEB68], v110, v111);
  }

  v115 = v112;
  v116 = v115;
  if (!v115)
  {
LABEL_171:
    v120 = 0;
    goto LABEL_172;
  }

  v145 = v115;
  v117 = objc_opt_class();
  v119 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v118, &v145, v117, 109);
  v120 = v145;

  if (v119)
  {
    objc_msgSend_setObject_forProperty_(v7, v121, v120, 109);
  }

LABEL_172:

  v124 = *(a4 + 16);
  if ((v124 & 0x20) != 0)
  {
    v125 = objc_msgSend_instanceWithArchive_unarchiver_(TSWPRuleOffset, v122, *(a4 + 72), v8);
    goto LABEL_177;
  }

  if ((v124 & 0x200000) != 0 && *(a4 + 135) == 1)
  {
    v125 = objc_msgSend_null(MEMORY[0x277CBEB68], v122, v123);
LABEL_177:
    v126 = v125;
    goto LABEL_179;
  }

  v126 = 0;
LABEL_179:
  objc_opt_class();
  v127 = TSUDynamicCast();
  v130 = v127;
  if (v127)
  {
    objc_msgSend_dX(v127, v128, v129);
    v132 = v131;
    objc_msgSend_dY(v130, v133, v134);
    v138 = objc_msgSend_ruleOffsetWithDX_dY_(TSWPRuleOffset, v136, v137, v132 + 6.0, v135 + 6.0);

    v126 = v138;
  }

  if (v126)
  {
    v144 = v126;
    v139 = objc_opt_class();
    v141 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v140, &v144, v139, 100);
    v142 = v144;

    if (v141)
    {
      objc_msgSend_setObject_forProperty_(v7, v143, v142, 100);
    }
  }

  else
  {
    v142 = 0;
  }
}

void sub_276DB80D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  v5 = objc_opt_class();
  LODWORD(v4) = objc_msgSend_validateObjectValue_withClass_forProperty_(v4, v6, &v9, v5, 95);
  v7 = v9;

  if (v4)
  {
    objc_msgSend_setObject_forProperty_(*(a1 + 32), v8, v7, 95);
  }
}

void sub_276DB8190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  v5 = objc_opt_class();
  LODWORD(v4) = objc_msgSend_validateObjectValue_withClass_forProperty_(v4, v6, &v9, v5, 103);
  v7 = v9;

  if (v4)
  {
    objc_msgSend_setObject_forProperty_(*(a1 + 32), v8, v7, 103);
  }
}

id sub_276DB8254(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_containsProperty_(v5, v7, 18))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSSStyle(TSWPArchivingAdditions) adjustPropertyMapForFontColorArchiving:fallbackColor:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 409, 0, "We should not have a font color in our property map at archive time!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_containsProperty_(v5, v8, 48))
  {
    v18 = objc_msgSend_copy(v5, v16, v17);

    v20 = objc_msgSend_objectForProperty_(v18, v19, 48);
    v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22);
    isEqual = objc_msgSend_isEqual_(v20, v24, v23);

    if (isEqual)
    {
      v28 = objc_msgSend_clearColor(MEMORY[0x277D81180], v26, v27);
      objc_msgSend_setObject_forProperty_(v18, v29, v28, 18);
    }

    else
    {
      objc_opt_class();
      v28 = TSUCheckedDynamicCast();
      v33 = objc_msgSend_referenceColorForFontArchiving(v28, v30, v31);
      v34 = v33;
      if (v33 || (v34 = v6) != 0)
      {
        objc_msgSend_setObject_forProperty_(v18, v32, v34, 18);
      }
    }
  }

  else
  {
    v18 = v5;
  }

  return v18;
}

void sub_276DB8408(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_276DB8474(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v33 = a3;
  v8 = a4;
  if (objc_msgSend_containsProperty_(v33, v9, 48))
  {
    v11 = objc_msgSend_objectForProperty_(v33, v10, 48);
    v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
    isEqual = objc_msgSend_isEqual_(v11, v15, v14);

    if (isEqual)
    {
      objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v8, v17, 45, a5);
      isFillAdvanced = 0;
    }

    else
    {
      objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v8, v17, 46, a5);
      objc_opt_class();
      v19 = TSUCheckedDynamicCast();
      isFillAdvanced = objc_msgSend_p_isFillAdvanced_(a1, v20, v19);
    }
  }

  else
  {
    isFillAdvanced = 0;
  }

  if (objc_msgSend_containsProperty_(v33, v10, 49))
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v8, v21, 47, a5);
    isFillAdvanced |= objc_msgSend_intValueForProperty_(v33, v22, 49) != 0;
  }

  if (objc_msgSend_containsProperty_(v33, v21, 50))
  {
    v24 = objc_msgSend_objectForProperty_(v33, v23, 50);
    v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26);
    v29 = objc_msgSend_isEqual_(v24, v28, v27);

    if (!v29)
    {
      objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v8, v30, 44, a5);

      goto LABEL_15;
    }

    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v8, v30, 43, a5);
  }

  if (isFillAdvanced)
  {
LABEL_15:
    v31 = UnsafePointer();
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v8, v32, v31, *MEMORY[0x277D809B0], @"TSWPAdvancedTextStyles");
  }
}

void sub_276DB86B8(char *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v345 = *MEMORY[0x277D85DE8];
  v321 = a4;
  v7 = objc_opt_class();
  v8 = *&a1[*MEMORY[0x277D80AF0]];
  v10 = v8;
  v320 = a1;
  if ((a5 & 1) == 0)
  {
    v11 = objc_opt_class();
    v14 = objc_msgSend_fallbackFontColorWhenUnableToReadCharacterFillColor(a1, v12, v13);
    v323 = objc_msgSend_adjustPropertyMapForFontColorArchiving_fallbackColor_(v11, v15, v10, v14);

    v18 = objc_msgSend_context(a1, v16, v17);
    v21 = objc_msgSend_delegate(v18, v19, v20);
    v315 = &unk_28866CB50;
    v22 = TSUProtocolCast();

    if (!v22 || (objc_msgSend_shouldSuppressAssertionsAboutDeprecatedWPStyleProperties(v22, v23, v24, &unk_28866CB50) & 1) == 0)
    {
      if (objc_msgSend_containsProperty_(v323, v23, 32, v315))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSSStyle(TSWPArchivingAdditions) saveCharacterStylePropertiesToArchive:archiver:archivingForCommand:]");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 490, 0, "We should not have an outline in our property map at archive time!");

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v31, v32);
      }

      if (objc_msgSend_containsProperty_(v323, v25, 33))
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSSStyle(TSWPArchivingAdditions) saveCharacterStylePropertiesToArchive:archiver:archivingForCommand:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 491, 0, "We should not have an outline color in our property map at archive time!");

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v39, v40);
      }
    }

    v8 = v323;
  }

  v324 = v8;
  if (objc_msgSend_containsProperty_(v8, v9, 34))
  {
    objc_msgSend_floatValueForProperty_(v324, v41, 34);
    v343 = v42;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v43, &v343, 34))
    {
      v44 = v343;
      *(a3 + 16) |= 0x200000u;
      *(a3 + 176) = v44;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v41, 21))
  {
    v46 = objc_msgSend_intValueForProperty_(v324, v45, 21);
    v343 = v46;
    if (TSWP::CharacterStylePropertiesArchive_CapitalizationType_IsValid(v46))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v45, &v343, 21))
      {
        v47 = v343;
        *(a3 + 16) |= 0x100000u;
        *(a3 + 172) = v47;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v45, 22))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v48, 22);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v49, &v343, 22))
    {
      v50 = v343 != 0;
      *(a3 + 20) |= 0x100u;
      *(a3 + 216) = v50;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v48, 19))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v51, 19);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v52, &v343, 19))
    {
      v53 = v343 != 0;
      *(a3 + 16) |= 0x2000u;
      *(a3 + 156) = v53;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v51, 18))
  {
    v55 = objc_msgSend_objectForProperty_(v324, v54, 18);
    v342 = v55;
    v56 = objc_opt_class();
    v58 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v57, &v342, v56, 18);
    v59 = v342;

    if (v58)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v62 = *(a3 + 16);
      if (isKindOfClass)
      {
        *(a3 + 16) = v62 | 0x10000;
        *(a3 + 159) = 1;
      }

      else
      {
        *(a3 + 16) = v62 | 0x10;
        v63 = *(a3 + 88);
        if (!v63)
        {
          v64 = *(a3 + 8);
          if (v64)
          {
            v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
          }

          v63 = MEMORY[0x277CA3210](v64);
          *(a3 + 88) = v63;
        }

        objc_msgSend_saveToArchive_archiver_(v59, v61, v63, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v54, 20))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v65, 20);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v66, &v343, 20))
    {
      v67 = v343 != 0;
      *(a3 + 16) |= 0x4000u;
      *(a3 + 157) = v67;
    }
  }

  v68 = objc_msgSend_objectForProperty_(v324, v65, 16);
  if (v68)
  {
    v70 = v68;
    v341 = v70;
    v71 = objc_opt_class();
    v73 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v72, &v341, v71, 16);
    v74 = v341;

    if (v73)
    {
      objc_opt_class();
      v75 = objc_opt_isKindOfClass();
      v76 = *(a3 + 16);
      if (v75)
      {
        *(a3 + 16) = v76 | 0x8000;
        *(a3 + 158) = 1;
      }

      else
      {
        *(a3 + 16) = v76 | 1;
        v77 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v74, v78, v77);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v69, 17))
  {
    objc_msgSend_floatValueForProperty_(v324, v79, 17);
    v343 = v80;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v81, &v343, 17))
    {
      v82 = v343;
      *(a3 + 16) |= 0x1000u;
      *(a3 + 152) = v82;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v79, 35))
  {
    objc_msgSend_floatValueForProperty_(v324, v83, 35);
    v343 = v84;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v85, &v343, 35))
    {
      v86 = v343;
      *(a3 + 16) |= 0x400000u;
      *(a3 + 180) = v86;
    }
  }

  v87 = objc_msgSend_objectForProperty_(v324, v83, 39);
  if (v87)
  {
    v89 = v87;
    v340 = v89;
    v90 = objc_opt_class();
    v92 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v91, &v340, v90, 39);
    v93 = v340;

    if (v92)
    {
      objc_opt_class();
      v94 = objc_opt_isKindOfClass();
      v95 = *(a3 + 16);
      if (v94)
      {
        *(a3 + 16) = v95 | 0x1000000;
        *(a3 + 188) = 1;
      }

      else
      {
        *(a3 + 16) = v95 | 2;
        v96 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v93, v97, v96);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v88, 41))
  {
    v99 = objc_msgSend_intValueForProperty_(v324, v98, 41);
    v343 = v99;
    if (TSWP::CharacterStylePropertiesArchive_LigaturesType_IsValid(v99))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v98, &v343, 41))
      {
        v100 = v343;
        *(a3 + 16) |= 0x800000u;
        *(a3 + 184) = v100;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v98, 33))
  {
    v102 = objc_msgSend_objectForProperty_(v324, v101, 33);
    v339 = v102;
    v103 = objc_opt_class();
    v105 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v104, &v339, v103, 33);
    v106 = v339;

    if (v105)
    {
      objc_opt_class();
      v107 = objc_opt_isKindOfClass();
      v109 = *(a3 + 16);
      if (v107)
      {
        *(a3 + 16) = v109 | 0x2000000;
        *(a3 + 189) = 1;
      }

      else
      {
        *(a3 + 16) = v109 | 0x20;
        v110 = *(a3 + 96);
        if (!v110)
        {
          v111 = *(a3 + 8);
          if (v111)
          {
            v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
          }

          v110 = MEMORY[0x277CA3210](v111);
          *(a3 + 96) = v110;
        }

        objc_msgSend_saveToArchive_archiver_(v106, v108, v110, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v101, 32))
  {
    objc_msgSend_floatValueForProperty_(v324, v112, 32);
    v343 = v113;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v114, &v343, 32))
    {
      v115 = v343;
      *(a3 + 16) |= 0x10000000u;
      *(a3 + 192) = v115;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v112, 29))
  {
    v117 = objc_msgSend_objectForProperty_(v324, v116, 29);
    v338 = v117;
    v118 = objc_opt_class();
    v120 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v119, &v338, v118, 29);
    v121 = v338;

    if (v120)
    {
      objc_opt_class();
      v122 = objc_opt_isKindOfClass();
      v124 = *(a3 + 16);
      if (v122)
      {
        *(a3 + 16) = v124 | 0x8000000;
        *(a3 + 191) = 1;
      }

      else
      {
        *(a3 + 16) = v124 | 0x80;
        v125 = *(a3 + 112);
        if (!v125)
        {
          v126 = *(a3 + 8);
          if (v126)
          {
            v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
          }

          v125 = MEMORY[0x277CA3210](v126);
          *(a3 + 112) = v125;
        }

        objc_msgSend_saveToArchive_archiver_(v121, v123, v125, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v116, 27))
  {
    v128 = objc_msgSend_intValueForProperty_(v324, v127, 27);
    v343 = v128;
    if (TSWP::CharacterStylePropertiesArchive_StrikethruType_IsValid(v128))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v127, &v343, 27))
      {
        v129 = v343;
        *(a3 + 16) |= 0x80000u;
        *(a3 + 168) = v129;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v127, 28))
  {
    objc_msgSend_floatValueForProperty_(v324, v130, 28);
    v343 = v131;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v132, &v343, 28))
    {
      v133 = v343;
      *(a3 + 16) |= 0x20000000u;
      *(a3 + 196) = v133;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v130, 37))
  {
    v135 = objc_msgSend_intValueForProperty_(v324, v134, 37);
    v343 = v135;
    if (TSWP::CharacterStylePropertiesArchive_SuperscriptType_IsValid(v135))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v134, &v343, 37))
      {
        v136 = v343;
        *(a3 + 16) |= 0x20000u;
        *(a3 + 160) = v136;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v134, 38))
  {
    v138 = objc_msgSend_objectForProperty_(v324, v137, 38);
    v337 = v138;
    v139 = objc_opt_class();
    v141 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v140, &v337, v139, 38);
    v142 = v337;

    if (v141)
    {
      objc_opt_class();
      v143 = objc_opt_isKindOfClass();
      v145 = *(a3 + 16);
      if (v143)
      {
        *(a3 + 16) = v145 | 0x80000000;
        *(a3 + 204) = 1;
      }

      else
      {
        *(a3 + 16) = v145 | 0x100;
        v146 = *(a3 + 120);
        if (!v146)
        {
          v147 = *(a3 + 8);
          if (v147)
          {
            v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
          }

          v146 = MEMORY[0x277CA3210](v147);
          *(a3 + 120) = v146;
        }

        objc_msgSend_saveToArchive_archiver_(v142, v144, v146, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v137, 36))
  {
    objc_msgSend_floatValueForProperty_(v324, v148, 36);
    v343 = v149;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v150, &v343, 36))
    {
      v151 = v343;
      *(a3 + 16) |= 0x40000000u;
      *(a3 + 200) = v151;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v148, 25))
  {
    v153 = objc_msgSend_objectForProperty_(v324, v152, 25);
    v336 = v153;
    v154 = objc_opt_class();
    v156 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v155, &v336, v154, 25);
    v157 = v336;

    if (v156)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 1u;
        *(a3 + 205) = 1;
      }

      else
      {
        *(a3 + 16) |= 0x200u;
        v159 = *(a3 + 128);
        if (!v159)
        {
          v160 = *(a3 + 8);
          if (v160)
          {
            v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
          }

          v159 = MEMORY[0x277CA3210](v160);
          *(a3 + 128) = v159;
        }

        objc_msgSend_saveToArchive_archiver_(v157, v158, v159, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v152, 23))
  {
    v162 = objc_msgSend_intValueForProperty_(v324, v161, 23);
    v343 = v162;
    if (TSWP::CharacterStylePropertiesArchive_UnderlineType_IsValid(v162))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v161, &v343, 23))
      {
        v163 = v343;
        *(a3 + 16) |= 0x40000u;
        *(a3 + 164) = v163;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v161, 24))
  {
    objc_msgSend_floatValueForProperty_(v324, v164, 24);
    v343 = v165;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v166, &v343, 24))
    {
      v167 = v343;
      *(a3 + 20) |= 8u;
      *(a3 + 208) = v167;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v164, 30))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v168, 30);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v169, &v343, 30))
    {
      v170 = v343 != 0;
      *(a3 + 20) |= 2u;
      *(a3 + 206) = v170;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v168, 26))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v171, 26);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v172, &v343, 26))
    {
      v173 = v343 != 0;
      *(a3 + 20) |= 4u;
      *(a3 + 207) = v173;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v171, 44))
  {
    v175 = objc_msgSend_intValueForProperty_(v324, v174, 44);
    v343 = v175;
    if (TSWP::WritingDirectionType_IsValid(v175))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v174, &v343, 44))
      {
        v176 = v343;
        *(a3 + 20) |= 0x2000u;
        *(a3 + 224) = v176;
      }
    }
  }

  v177 = objc_msgSend_objectForProperty_(v324, v174, 45);
  if (v177)
  {
    v179 = v177;
    v335 = v179;
    v180 = objc_opt_class();
    v182 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v181, &v335, v180, 45);
    v183 = v335;

    if (v182)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 0x20u;
        *(a3 + 213) = 1;
      }

      else
      {
        *(a3 + 16) |= 4u;
        v184 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v183, v185, v184);
      }
    }
  }

  v186 = objc_msgSend_objectForProperty_(v324, v178, 46);
  if (v186)
  {
    v188 = v186;
    v334 = v188;
    v189 = objc_opt_class();
    v191 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v190, &v334, v189, 46);
    v192 = v334;

    if (v191)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 0x40u;
        *(a3 + 214) = 1;
      }

      else
      {
        *(a3 + 16) |= 8u;
        v193 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v192, v194, v193);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v187, 47))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v195, 47);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v196, &v343, 47))
    {
      v197 = v343 != 0;
      *(a3 + 20) |= 0x80u;
      *(a3 + 215) = v197;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v195, 50))
  {
    v199 = objc_msgSend_objectForProperty_(v324, v198, 50);
    v333 = v199;
    v200 = objc_opt_class();
    v202 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v201, &v333, v200, 50);
    v203 = v333;

    if (v202)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 0x400u;
        *(a3 + 218) = 1;
      }

      else
      {
        *(a3 + 16) |= 0x400u;
        v205 = *(a3 + 136);
        if (!v205)
        {
          v206 = *(a3 + 8);
          if (v206)
          {
            v206 = *(v206 & 0xFFFFFFFFFFFFFFFELL);
          }

          v205 = MEMORY[0x277CA3150](v206);
          *(a3 + 136) = v205;
        }

        objc_msgSend_saveToArchive_archiver_(v203, v204, v205, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v198, 48))
  {
    v208 = objc_msgSend_objectForProperty_(v324, v207, 48);
    v332 = v208;
    v209 = objc_opt_class();
    v211 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v210, &v332, v209, 48);
    v212 = v332;

    if (v211)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 0x800u;
        *(a3 + 219) = 1;
      }

      else
      {
        *(a3 + 16) |= 0x800u;
        v214 = *(a3 + 144);
        if (!v214)
        {
          v215 = *(a3 + 8);
          if (v215)
          {
            v215 = *(v215 & 0xFFFFFFFFFFFFFFFELL);
          }

          v214 = MEMORY[0x277CA3120](v215);
          *(a3 + 144) = v214;
        }

        objc_msgSend_saveToArchive_archiver_(v212, v213, v214, v321);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v324, v207, 49))
  {
    v343 = objc_msgSend_intValueForProperty_(v324, v216, 49);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v217, &v343, 49))
    {
      v218 = v343 != 0;
      *(a3 + 20) |= 0x1000u;
      *(a3 + 220) = v218;
    }
  }

  if (objc_msgSend_containsProperty_(v324, v216, 40))
  {
    v220 = objc_msgSend_objectForProperty_(v324, v219, 40);
    v331 = v220;
    v221 = objc_opt_class();
    v223 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v222, &v331, v221, 40);
    v224 = v331;

    if (v223)
    {
      objc_opt_class();
      v225 = objc_opt_isKindOfClass();
      v227 = *(a3 + 16);
      if (v225)
      {
        *(a3 + 16) = v227 | 0x4000000;
        *(a3 + 190) = 1;
      }

      else
      {
        *(a3 + 16) = v227 | 0x40;
        v228 = *(a3 + 104);
        if (!v228)
        {
          v229 = *(a3 + 8);
          if (v229)
          {
            v229 = *(v229 & 0xFFFFFFFFFFFFFFFELL);
          }

          v228 = MEMORY[0x277CA3140](v229);
          *(a3 + 104) = v228;
        }

        objc_msgSend_saveToArchive_archiver_(v224, v226, v228, v321);
      }
    }
  }

  if ((a5 & 1) == 0)
  {
    v230 = objc_opt_class();
    objc_msgSend_addIgnoreAndPreserveRulesAndDocumentWarningsForPropertyMap_withArchiver_archive_(v230, v231, v324, v321, a3);
  }

  if (!objc_msgSend_containsProperty_(v324, v219, 43))
  {
    goto LABEL_214;
  }

  v319 = objc_msgSend_objectForProperty_(v324, v232, 43);
  objc_opt_class();
  v234 = objc_opt_isKindOfClass();
  *(a3 + 20) |= 0x10u;
  if (v234)
  {
    *(a3 + 212) = 1;
    goto LABEL_213;
  }

  *(a3 + 212) = 0;
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  v330 = 0u;
  obj = v319;
  v236 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v235, &v327, v344, 16);
  if (!v236)
  {
    goto LABEL_212;
  }

  v237 = *v328;
  v238 = *MEMORY[0x277CC48D8];
  v325 = *MEMORY[0x277CC48C8];
  do
  {
    for (i = 0; i != v236; ++i)
    {
      if (*v328 != v237)
      {
        objc_enumerationMutation(obj);
      }

      v240 = *(*(&v327 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v242 = objc_msgSend_objectForKeyedSubscript_(v240, v241, v238);
        v245 = v242;
        if (v242)
        {
          v246 = objc_msgSend_unsignedIntegerValue(v242, v243, v244);
        }

        else
        {
          v246 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v247 = objc_msgSend_objectForKeyedSubscript_(v240, v243, v325);

        if (!v247)
        {
          goto LABEL_209;
        }

        v250 = objc_msgSend_unsignedIntegerValue(v247, v248, v249);
        if (v246 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_209;
        }

        v252 = v250;
        if (v250 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_209;
        }

        v253 = *(a3 + 48);
        if (!v253)
        {
          goto LABEL_201;
        }

        v254 = *(a3 + 40);
        v255 = *v253;
        if (v254 < *v253)
        {
          *(a3 + 40) = v254 + 1;
          v256 = *&v253[2 * v254 + 2];
LABEL_203:
          if (v256)
          {
            if (HIDWORD(v246))
            {
              v316 = MEMORY[0x277D81150];
              v317 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, "[TSSStyle(TSWPArchivingAdditions) saveCharacterStylePropertiesToArchive:archiver:archivingForCommand:]");
              v246 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v316, v261, v317, v246, 521, 0, "Out-of-bounds type assignment was clamped to max");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v262, v263);
              LODWORD(v246) = -1;
            }

            v259 = v256[4] | 1;
            v256[4] = v259;
            v256[6] = v246;
            if (HIDWORD(v252))
            {
              v252 = MEMORY[0x277D81150];
              v318 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, "[TSSStyle(TSWPArchivingAdditions) saveCharacterStylePropertiesToArchive:archiver:archivingForCommand:]");
              v265 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v264, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v252, v266, v318, v265, 522, 0, "Out-of-bounds type assignment was clamped to max");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v267, v268);
              v259 = v256[4];
              LODWORD(v252) = -1;
            }

            v256[4] = v259 | 2;
            v256[7] = v252;
          }

LABEL_209:

          continue;
        }

        if (v255 == *(a3 + 44))
        {
LABEL_201:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 32));
          v253 = *(a3 + 48);
          v255 = *v253;
        }

        *v253 = v255 + 1;
        v256 = google::protobuf::Arena::CreateMaybeMessage<TSWP::FontFeatureArchive>(*(a3 + 32));
        v257 = *(a3 + 40);
        v258 = *(a3 + 48) + 8 * v257;
        *(a3 + 40) = v257 + 1;
        *(v258 + 8) = v256;
        goto LABEL_203;
      }
    }

    v236 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v241, &v327, v344, 16);
  }

  while (v236);
LABEL_212:

LABEL_213:
LABEL_214:
  if (objc_msgSend_shouldSaveAlternates(v321, v232, v233) && objc_msgSend_containsProperty_(v324, v269, 50))
  {
    objc_opt_class();
    v270 = objc_opt_isKindOfClass();
    v272 = objc_msgSend_objectForProperty_(v324, v271, 50);
    objc_opt_class();
    v273 = TSUDynamicCast();
    v276 = objc_msgSend_null(MEMORY[0x277CBEB68], v274, v275);
    if (objc_msgSend_isEqual_(v272, v277, v276))
    {
      v280 = 1;
    }

    else
    {
      v280 = objc_msgSend_shouldRender(v273, v278, v279) ^ 1;
    }

    if ((v280 & v270) != 1 || (objc_msgSend_parent(v320, v281, v282), v283 = objc_claimAutoreleasedReturnValue(), v284 = v283 == 0, v283, !v284))
    {
      v285 = objc_msgSend_boxedValueForProperty_(v320, v281, 48);
      objc_opt_class();
      v288 = TSUDynamicCast();
      if (!v285)
      {
        goto LABEL_225;
      }

      v289 = objc_msgSend_null(MEMORY[0x277CBEB68], v286, v287);
      if (objc_msgSend_isEqual_(v285, v290, v289))
      {

        goto LABEL_225;
      }

      isClear = objc_msgSend_isClear(v288, v291, v292);

      if (isClear)
      {
LABEL_225:
        v294 = *MEMORY[0x277D80990];
        objc_msgSend_requiresDocumentVersion_(v321, v286, *MEMORY[0x277D80990]);
        v296 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_message_(v321, v295, *MEMORY[0x277D809B0], v294, a3);
        google::protobuf::internal::AssignDescriptors();
        v298 = objc_msgSend_messageWithNewFunction_descriptor_(v296, v297, sub_276DBB548, off_2812DC408[26]);

        if (v280)
        {
          *(v298 + 16) |= 0x10000000u;
          *(v298 + 192) = 0;
        }

        else
        {
          v302 = objc_msgSend_color(v273, v299, v300);
          if (!v302)
          {
            v303 = MEMORY[0x277D81150];
            v304 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v301, "[TSSStyle(TSWPArchivingAdditions) saveCharacterStylePropertiesToArchive:archiver:archivingForCommand:]");
            v306 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v305, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSSStyle+TSWPArchivingAdditions.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v303, v307, v304, v306, 559, 0, "Stroke color should not be nil. Falling back to black for the alternate archiver.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v308, v309);
            v302 = objc_msgSend_blackColor(MEMORY[0x277D81180], v310, v311);
          }

          *(v298 + 16) |= 0x10000000u;
          *(v298 + 192) = 1065353216;
          objc_msgSend_removeField_message_(v296, v301, 6, v298);
          *(v298 + 16) |= 0x10u;
          v313 = *(v298 + 88);
          if (!v313)
          {
            v314 = *(v298 + 8);
            if (v314)
            {
              v314 = *(v314 & 0xFFFFFFFFFFFFFFFELL);
            }

            v313 = MEMORY[0x277CA3210](v314);
            *(v298 + 88) = v313;
          }

          objc_msgSend_saveToMessage_(v302, v312, v313);
        }
      }
    }
  }
}

void sub_276DBA39C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = *(a1 + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 105))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v10, 105);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v11, &v213, 105))
    {
      v12 = v213;
      *(a3 + 20) |= 0x100u;
      *(a3 + 176) = v12;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v10, 86))
  {
    v14 = objc_msgSend_intValueForProperty_(v8, v13, 86);
    v213 = v14;
    if (TSWP::ParagraphStylePropertiesArchive_TextAlignmentType_IsValid(v14))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v13, &v213, 86))
      {
        v15 = v213;
        *(a3 + 16) |= 0x400u;
        *(a3 + 112) = v15;
      }
    }
  }

  v16 = objc_msgSend_objectForProperty_(v8, v13, 96);
  if (v16)
  {
    v18 = v16;
    v212 = v18;
    v19 = objc_opt_class();
    v21 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v20, &v212, v19, 96);
    v22 = v212;

    if (v21)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v24 = *(a3 + 16);
      if (isKindOfClass)
      {
        *(a3 + 16) = v24 | 0x1000;
        *(a3 + 120) = 1;
      }

      else
      {
        *(a3 + 16) = v24 | 1;
        v25 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v22, v26, v25);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v17, 83))
  {
    objc_msgSend_floatValueForProperty_(v8, v27, 83);
    v213 = v28;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v29, &v213, 83))
    {
      v30 = v213;
      *(a3 + 16) |= 0x800u;
      *(a3 + 116) = v30;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v27, 94))
  {
    v32 = objc_msgSend_objectForProperty_(v8, v31, 94);
    v211 = v32;
    v33 = objc_opt_class();
    v35 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v34, &v211, v33, 94);
    v36 = v211;

    if (v35)
    {
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();
      v39 = *(a3 + 16);
      if (v37)
      {
        *(a3 + 16) = v39 | 0x2000;
        *(a3 + 121) = 1;
      }

      else
      {
        *(a3 + 16) = v39 | 8;
        v40 = *(a3 + 56);
        if (!v40)
        {
          v41 = *(a3 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x277CA3210](v41);
          *(a3 + 56) = v40;
        }

        objc_msgSend_saveToArchive_archiver_(v36, v38, v40, v6);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v31, 80))
  {
    objc_msgSend_floatValueForProperty_(v8, v42, 80);
    v213 = v43;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v44, &v213, 80))
    {
      v45 = v213;
      *(a3 + 16) |= 0x10000u;
      *(a3 + 124) = v45;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v42, 95))
  {
    v47 = objc_msgSend_objectForProperty_(v8, v46, 95);
    v210 = v47;
    v48 = objc_opt_class();
    v50 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v49, &v210, v48, 95);
    v51 = v210;

    if (v50)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 0x10u;
        *(a3 + 171) = 1;
      }

      else
      {
        *(a3 + 16) |= 0x200u;
        v53 = *(a3 + 104);
        if (!v53)
        {
          v54 = *(a3 + 8);
          if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
          }

          v53 = MEMORY[0x277CA3250](v54);
          *(a3 + 104) = v53;
        }

        objc_msgSend_setStrongReference_message_(v6, v52, v51, v53);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v46, 93))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v55, 93);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v56, &v213, 93))
    {
      v57 = v213 != 0;
      *(a3 + 16) |= 0x4000u;
      *(a3 + 122) = v57;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v55, 89))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v58, 89);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v59, &v213, 89))
    {
      v60 = v213 != 0;
      *(a3 + 16) |= 0x8000u;
      *(a3 + 123) = v60;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v58, 90))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v61, 90);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v62, &v213, 90))
    {
      v63 = v213 != 0;
      *(a3 + 16) |= 0x40000u;
      *(a3 + 132) = v63;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v61, 81))
  {
    objc_msgSend_floatValueForProperty_(v8, v64, 81);
    v213 = v65;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v66, &v213, 81))
    {
      v67 = v213;
      *(a3 + 16) |= 0x20000u;
      *(a3 + 128) = v67;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v64, 85))
  {
    v69 = objc_msgSend_objectForProperty_(v8, v68, 85);
    v209 = v69;
    v70 = objc_opt_class();
    v72 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v71, &v209, v70, 85);
    v73 = v209;

    if (v72)
    {
      objc_opt_class();
      v74 = objc_opt_isKindOfClass();
      v76 = *(a3 + 16);
      if (v74)
      {
        *(a3 + 16) = v76 | 0x80000;
        *(a3 + 133) = 1;
      }

      else
      {
        *(a3 + 16) = v76 | 0x10;
        v77 = *(a3 + 64);
        if (!v77)
        {
          v78 = *(a3 + 8);
          if (v78)
          {
            v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
          }

          v77 = google::protobuf::Arena::CreateMaybeMessage<TSWP::LineSpacingArchive>(v78);
          *(a3 + 64) = v77;
        }

        objc_msgSend_saveToArchive_archiver_(v73, v75, v77, v6);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v68, 101))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v79, 101);
    if (objc_msgSend_validateIntValue_forProperty_min_max_(v7, v80, &v213, 101, 0xFFFFFFFFLL, 999))
    {
      v81 = v213;
      *(a3 + 16) |= 0x8000000u;
      *(a3 + 156) = v81;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v79, 102))
  {
    v83 = objc_msgSend_intValueForProperty_(v8, v82, 102);
    v213 = v83;
    if (TSWP::ParagraphStylePropertiesArchive_OutlineStyleType_IsValid(v83))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v82, &v213, 102))
      {
        v84 = v213;
        *(a3 + 20) |= 1u;
        *(a3 + 164) = v84;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v82, 91))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v85, 91);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v86, &v213, 91))
    {
      v87 = v213 != 0;
      *(a3 + 16) |= 0x100000u;
      *(a3 + 134) = v87;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v85, 99))
  {
    objc_msgSend_floatValueForProperty_(v8, v88, 99);
    v213 = v89;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v90, &v213, 99))
    {
      v91 = v213;
      *(a3 + 16) |= 0x800000u;
      *(a3 + 140) = v91;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v88, 82))
  {
    objc_msgSend_floatValueForProperty_(v8, v92, 82);
    v213 = v93;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v94, &v213, 82))
    {
      v95 = v213;
      *(a3 + 16) |= 0x1000000u;
      *(a3 + 144) = v95;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v92, 88))
  {
    objc_msgSend_floatValueForProperty_(v8, v96, 88);
    v213 = v97;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v98, &v213, 88))
    {
      v99 = v213;
      *(a3 + 16) |= 0x2000000u;
      *(a3 + 148) = v99;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v96, 87))
  {
    objc_msgSend_floatValueForProperty_(v8, v100, 87);
    v213 = v101;
    if (objc_msgSend_validateFloatValue_forProperty_(v7, v102, &v213, 87))
    {
      v103 = v213;
      *(a3 + 16) |= 0x4000000u;
      *(a3 + 152) = v103;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v100, 98))
  {
    v105 = objc_msgSend_objectForProperty_(v8, v104, 98);
    v208 = v105;
    v106 = objc_opt_class();
    v108 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v107, &v208, v106, 98);
    v109 = v208;

    if (v108)
    {
      objc_opt_class();
      v110 = objc_opt_isKindOfClass();
      v112 = *(a3 + 16);
      if (v110)
      {
        *(a3 + 16) = v112 | 0x80000000;
        *(a3 + 163) = 1;
      }

      else
      {
        *(a3 + 16) = v112 | 0x80;
        v113 = *(a3 + 88);
        if (!v113)
        {
          v114 = *(a3 + 8);
          if (v114)
          {
            v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
          }

          v113 = MEMORY[0x277CA3150](v114);
          *(a3 + 88) = v113;
        }

        objc_msgSend_saveToArchive_archiver_(v109, v111, v113, v6);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v104, 84))
  {
    v116 = objc_msgSend_objectForProperty_(v8, v115, 84);
    v207 = v116;
    v117 = objc_opt_class();
    v119 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v118, &v207, v117, 84);
    v120 = v207;

    if (v119)
    {
      objc_opt_class();
      v121 = objc_opt_isKindOfClass();
      v123 = *(a3 + 16);
      if (v121)
      {
        *(a3 + 16) = v123 | 0x10000000;
        *(a3 + 160) = 1;
      }

      else
      {
        *(a3 + 16) = v123 | 0x40;
        v124 = *(a3 + 80);
        if (!v124)
        {
          v125 = *(a3 + 8);
          if (v125)
          {
            v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
          }

          v124 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabsArchive>(v125);
          *(a3 + 80) = v124;
        }

        objc_msgSend_saveToArchive_archiver_(v120, v122, v124, v6);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v115, 92))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v126, 92);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v127, &v213, 92))
    {
      v128 = v213 != 0;
      *(a3 + 16) |= 0x20000000u;
      *(a3 + 161) = v128;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v126, 103))
  {
    v130 = objc_msgSend_objectForProperty_(v8, v129, 103);
    v206 = v130;
    v131 = objc_opt_class();
    v133 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v132, &v206, v131, 103);
    v134 = v206;

    if (v133)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 8u;
        *(a3 + 170) = 1;
      }

      else
      {
        *(a3 + 16) |= 0x100u;
        v136 = *(a3 + 96);
        if (!v136)
        {
          v137 = *(a3 + 8);
          if (v137)
          {
            v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
          }

          v136 = MEMORY[0x277CA3250](v137);
          *(a3 + 96) = v136;
        }

        objc_msgSend_setStrongReference_message_(v6, v135, v134, v136);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v129, 121))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v138, 121);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v139, &v213, 121))
    {
      v140 = v213 != 0;
      *(a3 + 20) |= 0x20u;
      *(a3 + 172) = v140;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v138, 104))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v141, 104);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v142, &v213, 104))
    {
      v143 = v213 != 0;
      *(a3 + 20) |= 0x40u;
      *(a3 + 173) = v143;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v141, 106))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v144, 106);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v145, &v213, 106))
    {
      v146 = v213 != 0;
      *(a3 + 20) |= 0x80u;
      *(a3 + 174) = v146;
    }
  }

  v147 = objc_msgSend_objectForProperty_(v8, v144, 107);
  if (v147)
  {
    v149 = v147;
    v205 = v149;
    v150 = objc_opt_class();
    v152 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v151, &v205, v150, 107);
    v153 = v205;

    if (v152)
    {
      objc_opt_class();
      v154 = objc_opt_isKindOfClass();
      v155 = *(a3 + 16);
      if (v154)
      {
        *(a3 + 16) = v155 | 0x40000000;
        *(a3 + 162) = 1;
      }

      else
      {
        *(a3 + 16) = v155 | 2;
        v156 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v153, v157, v156);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v148, 108))
  {
    v213 = objc_msgSend_intValueForProperty_(v8, v158, 108);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v159, &v213, 108))
    {
      v160 = v213 != 0;
      *(a3 + 20) |= 2u;
      *(a3 + 168) = v160;
    }
  }

  v161 = objc_msgSend_objectForProperty_(v8, v158, 109);
  if (v161)
  {
    v163 = v161;
    v204 = v163;
    v164 = objc_opt_class();
    v166 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v165, &v204, v164, 109);
    v167 = v204;

    if (v166)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 20) |= 4u;
        *(a3 + 169) = 1;
      }

      else
      {
        *(a3 + 16) |= 4u;
        v168 = google::protobuf::internal::ArenaStringPtr::Mutable();
        objc_msgSend_tsp_saveToProtobufString_(v167, v169, v168);
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v162, 100))
  {
    v171 = objc_msgSend_objectForProperty_(v8, v170, 100);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a3 + 16) |= 0x200000u;
      *(a3 + 135) = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_dX(v171, v172, v173);
        v175 = v174;
        objc_msgSend_dY(v171, v176, v177);
        v181 = objc_msgSend_ruleOffsetWithDX_dY_(TSWPRuleOffset, v179, v180, v175 + -6.0, v178 + -6.0);
        v203 = v181;
        v182 = objc_opt_class();
        v184 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v183, &v203, v182, 100);
        v185 = v203;

        if (v184)
        {
          *(a3 + 16) |= 0x20u;
          v187 = *(a3 + 72);
          if (!v187)
          {
            v188 = *(a3 + 8);
            if (v188)
            {
              v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
            }

            v187 = MEMORY[0x277CA3220](v188);
            *(a3 + 72) = v187;
          }

          objc_msgSend_saveToArchive_archiver_(v185, v186, v187, v6);
        }
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v170, 105) && ((v190 = objc_msgSend_intValueForProperty_(v8, v189, 105), v190 != 15) ? (v192 = v190 & 3 | (8 * ((v190 >> 2) & 3))) : (v192 = 4), v213 = v192, objc_msgSend_validateIntValue_forProperty_(v7, v191, &v213, 97)))
  {
    v193 = v213;
    *(a3 + 16) |= 0x400000u;
    *(a3 + 136) = v193;
    v194 = (v193 >> 3) & 1;
  }

  else
  {
    LOBYTE(v194) = 0;
  }

  if (objc_msgSend_containsProperty_(v8, v189, 106))
  {
    LOBYTE(v194) = (objc_msgSend_intValueForProperty_(v8, v195, 106) != 0) | v194;
  }

  objc_opt_class();
  v197 = objc_msgSend_objectForProperty_(v8, v196, 98);
  v198 = TSUDynamicCast();

  if ((objc_msgSend_cap(v198, v199, v200) == 1) | v194 & 1)
  {
    v201 = UnsafePointer();
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v6, v202, v201, 0xD000200000001, @"TSWPNewBorderOptions");
  }
}

void sub_276DBBF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSWPTypesetterAttachmentMap;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276DBC59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11 != v12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276DBC754(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, char a6)
{
  v11 = a2;
  v12 = a4;
  *a1 = &unk_2885FEBC0;
  *(a1 + 56) = 0;
  *(a1 + 240) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 16) = v11;
  *(a1 + 24) = objc_msgSend_wpKind(v11, v13, v14);
  *(a1 + 8) = a3;
  *(a1 + 30) = 0;
  *(a1 + 64) = 0;
  *(a1 + 27) = a5;
  *(a1 + 28) = a6;
  v15 = *(a1 + 200);
  *(a1 + 200) = 0;

  v16 = *(a1 + 208);
  *(a1 + 208) = v12;
  v17 = v12;

  v18 = *(a1 + 240);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;

  return a1;
}

void sub_276DBC834(_Unwind_Exception *a1)
{
  v5 = *(v2 + 224);
  if (v5)
  {
    sub_276D5EEA0(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276DBC888(uint64_t a1, const char *a2)
{
  *a1 = &unk_2885FEBC0;
  if (*(a1 + 31))
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSWPCoreTextTypesetter::~TSWPCoreTextTypesetter()");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 369, 0, "Didn't end paragraph layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  if (*(a1 + 30) == 1)
  {
    (*(*a1 + 24))(a1);
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    sub_276D5EEA0(v10);
  }

  return a1;
}

void sub_276DBC9C4(uint64_t a1, const char *a2)
{
  sub_276DBC888(a1, a2);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276DBC9FC(uint64_t a1, const char *a2)
{
  if ((*(a1 + 31) & 1) == 0)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CTTypesetterRef TSWPCoreTextTypesetter::pCTTypesetter() const");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 376, 0, "paragraph must be set up before requesting typesetter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = *(a1 + 216);

  return sub_276DFD37C(v10);
}

void sub_276DBCADC(uint64_t a1, const char *a2)
{
  if (*(a1 + 31) == 1)
  {
    sub_276DBCB14(a1, a2);
  }

  *(a1 + 30) = 0;
}

void sub_276DBCB14(uint64_t a1, const char *a2)
{
  if (*(a1 + 31) == 1)
  {
    sub_276DBFF8C(a1, a2);
    v4 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v4)
    {
      sub_276D5EEA0(v4);
    }

    v5 = *(a1 + 96);
    *(a1 + 96) = 0;

    *(a1 + 31) = 0;
    v6 = *(a1 + 56);
    *(a1 + 56) = 0;

    v7 = *(a1 + 200);
    *(a1 + 200) = 0;
  }
}

uint64_t sub_276DBCBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v348 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    TSUSetCrashReporterInfo();
    v285 = MEMORY[0x277D81150];
    v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v286, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)", "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm", 407);
    v289 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v288, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v285, v290, v287, v289, 407, 1, "nil state in paragraph layout");

    TSUCrashBreakpoint();
    abort();
  }

  v3 = sub_276DD2950(a2);

  if (!v3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 408, 0, "invalid nil value for '%{public}s'", "state->paragraphStyle()");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (*(a1 + 31) == 1)
  {
    sub_276DBCB14(a1, v4);
  }

  *(a1 + 31) = 1;
  *(a1 + 32) = *(a2 + 96);
  v12 = *(a2 + 16) - *(a1 + 32);
  if (v12 >= *(a1 + 40))
  {
    v12 = *(a1 + 40);
  }

  *(a1 + 40) = v12;
  if (*(a2 + 351) == 1 && (*(a2 + 349) & 1) == 0)
  {
    v13 = *(a2 + 352);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 72) = v13 & 1;
  *(a1 + 29) = 0;
  v14 = TSWPParagraphEnumerator::paragraphLanguage((a2 + 24), v4);
  *(a1 + 76) = v14;
  v15 = sub_276D39760(v14);
  *(a1 + 80) = v15;
  v18 = *(a1 + 76);
  if (v18 == 6)
  {
    *(a1 + 72) = 0;
  }

  *(a1 + 232) = 0;
  if (v15 || (*(a1 + 27) & 1) == 0)
  {
    *(a1 + 84) = v18;
  }

  else
  {
    v19 = objc_msgSend_documentRoot(*(a1 + 16), v16, v17);
    v22 = objc_msgSend_documentLanguage(v19, v20, v21);
    *(a1 + 84) = sub_276D39910(v22, v23, v24);

    v18 = *(a1 + 76);
  }

  v25 = sub_276DD2960(a2);
  v310 = objc_msgSend_scaleTextPercent(v25, v26, v27);

  if (v18 == 6)
  {
    v29 = [TSWPFormulaEditingTextSource alloc];
    v31 = objc_msgSend_typesetterTextSourceForRange_(*(a1 + 16), v30, *(a1 + 32), *(a1 + 40));
    v33 = objc_msgSend_initWithSource_(v29, v32, v31);
    v34 = a1;
    v35 = *(a1 + 56);
    *(a1 + 56) = v33;

    *(a1 + 48) = objc_msgSend_length(*(a1 + 56), v36, v37);
    v309 = (a1 + 48);
    v314 = (a1 + 56);
    if (TSUFormulasAreRTL())
    {
      v308 = 1;
    }

    else
    {
      v44 = objc_msgSend_string(*(a1 + 56), v38, v39);
      v308 = sub_276D381A8(v44);

      v34 = a1;
    }
  }

  else
  {
    v40 = objc_msgSend_typesetterTextSourceForRange_(*(a1 + 16), v28, *(a1 + 32), *(a1 + 40));
    v34 = a1;
    v41 = *(a1 + 56);
    *(a1 + 56) = v40;

    v314 = (a1 + 56);
    v308 = 0;
    *(a1 + 48) = objc_msgSend_length(*(a1 + 56), v42, v43);
    v309 = (a1 + 48);
  }

  v45 = *(v34 + 224);
  *(v34 + 216) = 0;
  *(v34 + 224) = 0;
  if (v45)
  {
    sub_276D5EEA0(v45);
  }

  v46 = *(v34 + 208);
  if (v46)
  {
    if (v310 == 100 && !*(v34 + 24) && *(a2 + 16) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_cachedTypesetterForParagraphIdentifier_(v46, v38, a3);
      v47 = v334;
      v334 = 0uLL;
      v34 = a1;
      v48 = *(a1 + 224);
      *(a1 + 216) = v47;
      if (v48)
      {
        sub_276D5EEA0(v48);
        if (*(&v334 + 1))
        {
          sub_276D5EEA0(*(&v334 + 1));
        }
      }
    }
  }

  v49 = *(v34 + 216);
  if (!v49)
  {
    goto LABEL_39;
  }

  if (*v309 == (*(v49 + 48) - *(v49 + 40)) >> 1 || (v50 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)"), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm"), v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 472, 0, "cached paragraph typesetter has wrong char count"), v53, v51, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56), v49 = *(a1 + 216), *(a1 + 48) == (*(v49 + 48) - *(v49 + 40)) >> 1))
  {
    sub_276DFD474(v49, *v314);
    v59 = a1;
    goto LABEL_35;
  }

  objc_msgSend_clearCache(*(a1 + 208), v57, v58);
  v59 = a1;
  v61 = *(a1 + 224);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  if (!v61)
  {
LABEL_39:
    v62 = TSWPParagraphEnumerator::styleProvider((a2 + 24));
    v63 = v62;
    if (!v62)
    {
      v63 = *(a1 + 16);
    }

    v64 = v63;

    operator new();
  }

  sub_276D5EEA0(v61);
LABEL_35:
  v60 = v59[27];
  if (!v60)
  {
    goto LABEL_39;
  }

  v66 = v60 + 40;
  v65 = *(v60 + 40);
  if (*(v66 + 8) == v65)
  {
    v65 = 0;
  }

  v59[8] = v65;
  v321 = v59[6];
  v67 = objc_alloc(MEMORY[0x277CBEB18]);
  v69 = objc_msgSend_initWithCapacity_(v67, v68, 100);
  v70 = *(a1 + 88);
  *(a1 + 88) = v69;

  objc_storeStrong((a1 + 96), *(a1 + 88));
  *&v347[7] = 0x1000100000100;
  v346 = 0x1000000;
  *v347 = 0x100010000000000;
  v345 = 0;
  v343 = 0u;
  v344 = 0u;
  v341 = 0u;
  v342 = 0u;
  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  v335 = 0u;
  v336 = 0u;
  v334 = 0u;
  v295 = objc_msgSend_rangeArray(TSWPMutableRangeArray, v71, v72);
  v74 = 0;
  v312 = 0;
  v313 = 0;
  v302 = 0;
  v294 = 0;
  v297 = 0;
  v298 = 0;
  v311 = *MEMORY[0x277CC4838];
  v301 = *MEMORY[0x277CC49C0];
  v300 = *MEMORY[0x277CC49C8];
  v293 = *MEMORY[0x277CC4AD0];
  v299 = *MEMORY[0x277D81448];
  v303 = *MEMORY[0x277D74200];
  v296 = *MEMORY[0x277CC4A00];
  do
  {
    objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(*v314, v73, v74, &v346, &v334, &v331);
    if (v332)
    {
      v76 = 1;
    }

    else
    {
      v76 = v74 == v321;
    }

    if (!v76)
    {
      v77 = MEMORY[0x277D81150];
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v81, v78, v80, 519, 0, "Empty effectiveRange");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83);
    }

    v325 = *(&v335 + 1);
    v84 = TSWPParagraphEnumerator::styleProvider((a2 + 24));
    v85 = v84 == 0;

    if (!v85)
    {
      v87 = objc_msgSend_charRangeMappedToStorage_(*v314, v86, v74, 0);
      v88 = TSWPParagraphEnumerator::styleProvider((a2 + 24));
      v90 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v88, v89, v87, 0);

      v325 = v90;
    }

    v317 = *(&v341 + 1);
    v318 = v342;
    objc_opt_class();
    v316 = TSUCheckedDynamicCast();
    objc_opt_class();
    v93 = objc_msgSend_fields(v316, v91, v92);
    v320 = TSUCheckedDynamicCast();

    v319 = *(&v340 + 1);
    v94 = v331;
    v95 = v332 + v331;
    if (v321 < v332 + v331)
    {
      v95 = v321;
    }

    if (v331 <= v74)
    {
      v94 = v74;
    }

    v331 = v94;
    v332 = v95 - v94;
    v96 = sub_276DD2950(a2);
    v97 = v96 == 0;

    if (v97)
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v103, v100, v102, 542, 0, "invalid nil value for '%{public}s'", "state->paragraphStyle()");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
    }

    v106 = sub_276DD2950(a2);
    v108 = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(v106, v107, v325, v310, *(a2 + 349));
    v326 = objc_msgSend_mutableCopy(v108, v109, v110);

    v315 = objc_msgSend_objectForKeyedSubscript_(v326, v111, v311);

    if ((objc_msgSend_showsMarkup(v318, v112, v113) & 1) != 0 || objc_msgSend_showsMarkup(v317, v114, v115))
    {
      v116 = objc_msgSend_showsMarkup(v318, v114, v115);
      v117 = v317;
      if (v116)
      {
        v117 = v318;
      }

      v118 = v117;
      v121 = objc_msgSend_session(v118, v119, v120);
      v124 = objc_msgSend_author(v121, v122, v123);

      if (v312 == v124)
      {
        v125 = v312;
        v128 = v313;
      }

      else
      {
        v125 = v124;

        v128 = objc_msgSend_textMarkupColor(v118, v126, v127);
      }

      v129 = v128;
      if (objc_msgSend_isDeletion(v118, v130, v131))
      {
        v132 = v129;
      }

      else
      {
        v132 = 0;
      }

      v312 = v125;
      v313 = v129;
    }

    else
    {
      v132 = 0;
      v129 = 0;
    }

    v133 = sub_276DD2AE8(a2);
    v134 = v133 == 0;

    if (v134)
    {
      goto LABEL_73;
    }

    v137 = sub_276DD2AE8(a2);

    if (v132)
    {
      v129 = v137;

      v132 = v129;
LABEL_73:
      v138 = a1;
      goto LABEL_75;
    }

    v138 = a1;
    v129 = v137;
LABEL_75:
    v322 = v129;
    v323 = v132;
    if (v129 | v132)
    {
      if (v129)
      {
        v139 = objc_msgSend_CGColor(v129, v135, v136);
        objc_msgSend_setObject_forKeyedSubscript_(v326, v140, v139, v301);
        objc_msgSend_removeObjectForKey_(v326, v141, @"TSWPCharacterFillAttribute");
        objc_msgSend_removeObjectForKey_(v326, v142, @"TSWPCharacterStrokeAttribute");
        objc_msgSend_removeObjectForKey_(v326, v143, v300);
      }

      if (v132)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v326, v135, v132, @"TSWPStrikethroughColor");
        objc_msgSend_setObject_forKeyedSubscript_(v326, v144, &unk_288627548, @"TSWPStrikethrough");
      }
    }

    else if (!objc_msgSend_count(v320, v135, v136))
    {
      goto LABEL_83;
    }

    if (objc_msgSend_count(v320, v135, v136))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v326, v135, v320, @"TSWPTextHighlightsAttribute");
    }

LABEL_83:
    if (v308)
    {
      v145 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v135, 2);
      if (TSUFormulasAreRTL())
      {
        objc_msgSend_addObject_(v145, v146, &unk_288627560);
      }

      else
      {
        objc_msgSend_addObject_(v145, v146, &unk_288627578);
      }

      if (v319 && (objc_msgSend_isEqualToString_(v319, v147, v299) & 1) == 0)
      {
        if (TSUHasBiDiLanguage())
        {
          objc_msgSend_addObject_(v145, v148, &unk_288627590);
        }

        else
        {
          objc_msgSend_addObject_(v145, v148, &unk_2886275A8);
        }
      }

      objc_msgSend_setObject_forKeyedSubscript_(v326, v147, v145, v303);

LABEL_93:
      v138 = a1;
      goto LABEL_110;
    }

    if (v325 | v319)
    {
      v149 = *(a2 + 349);
      if (v325)
      {
        v150 = objc_msgSend_writingDirection(v325, v135, v136);
      }

      else
      {
        v150 = -1;
      }

      if (v150 == -1 && v319)
      {
        v150 = TSUHasBiDiLanguage();
      }

      if (v150 != -1 && v150 != v149)
      {
        if (v332)
        {
          v151 = 0;
          v152 = v331;
          v153 = 2 * v331;
          while (IsWhitespaceCharacter(*(*(v138 + 64) + v153 + 2 * v151), v135))
          {
            if (++v151 >= v332)
            {
              goto LABEL_109;
            }
          }

          if (v151)
          {
LABEL_109:
            v332 = v151;
            goto LABEL_110;
          }

          v270 = v332;
          if (v332 >= 2)
          {
            do
            {
              if (!IsWhitespaceCharacter(*(*(v138 + 64) + 2 * v152 + 2 * v270 - 2), v135))
              {
                break;
              }

              v270 = v332 - 1;
              v332 = v270;
            }

            while (v270 > 1);
          }
        }

        v271 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v135, v150 == 1);
        v333 = v271;
        v273 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v272, &v333, 1);

        objc_msgSend_setObject_forKeyedSubscript_(v326, v274, v273, v293);
        goto LABEL_93;
      }
    }

LABEL_110:
    if (v74 < *v309)
    {
      v154 = *(*(v138 + 64) + 2 * v74);
      if (v154 == 65532)
      {
        v155 = objc_msgSend_attachmentAtCharIndex_(*v314, v135, v74);

        if (v155)
        {
          ++v297;
          if (objc_msgSend_isDrawable(v155, v163, v164) && (objc_msgSend_isAnchored(v155, v156, v157) & 1) == 0)
          {
            v304 = 0;
            v294 += objc_msgSend_isPartitioned(v155, v156, v157) ^ 1;
          }

          else
          {
            v304 = 0;
          }

          v158 = a1;
LABEL_139:
          if (!objc_msgSend_isDrawable(v155, v156, v157) || (objc_msgSend_isAnchored(v155, v190, v191) & 1) != 0 || (objc_msgSend_isPartitioned(v155, v192, v193) & 1) != 0)
          {
            v307 = 0;
          }

          else
          {
            v307 = sub_276D7AA9C(*(v158 + 8), v155);
          }

          v194 = sub_276DD2960(a2);
          v197 = objc_msgSend_pageNumber(v194, v195, v196);
          v198 = *(a2 + 552);
          v199 = sub_276DD2A18(a2);
          v200 = sub_276DD2960(a2);
          v203 = objc_msgSend_styleProvider(v200, v201, v202);
          v204 = sub_276DD2960(a2);
          v207 = objc_msgSend_scaleTextPercent(v204, v205, v206);
          LOBYTE(v291) = *(a2 + 584);
          v209 = objc_msgSend_mapWithAttachment_layout_pageNumber_pageCount_footnoteMarkProvider_styleProvider_colorOverride_textScalePercent_targetSupportsPageNumbers_(TSWPTypesetterAttachmentMap, v208, v155, v307, v197, v198, v199, v203, v322, v207, v291);

          objc_msgSend_setIsWithinVerticalText_(v209, v210, *(a1 + 27));
          objc_msgSend_setLayoutNeedsRevalidation_(v209, v211, 1);
          isDrawable = objc_msgSend_isDrawable(v155, v212, v213);
          v215 = CTRunDelegateCreate(&stru_2885FEBE8, v209);
          objc_msgSend_setObject_forKeyedSubscript_(v326, v216, v215, v296);
          CFRelease(v215);
          objc_msgSend_setObject_forKeyedSubscript_(v326, v217, v209, @"__wpAttachmentMap");
          if (v304)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v326, v218, v304, v311);
          }

          v332 = 1;

          v302 |= isDrawable ^ 1;
          v162 = 1;
          goto LABEL_146;
        }

        if (sub_276DFD178(*(a1 + 216), v74))
        {
LABEL_136:
          v162 = 0;
          goto LABEL_146;
        }

        v171 = MEMORY[0x277D81150];
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
        v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        v173 = *(a1 + 24);
        v174 = *(*(a1 + 8) + 24);
        objc_msgSend_owner(v174, v175, v176);
        v306 = v305 = v173;
        v177 = objc_opt_class();
        v178 = objc_opt_class();
        v181 = objc_msgSend_parentInfo(*(a1 + 16), v179, v180);
        v182 = objc_opt_class();
        v186 = objc_msgSend_documentRoot(*(a1 + 16), v183, v184);
        v187 = @"true";
        if (!v186)
        {
          v187 = @"false";
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v185, v166, v168, 705, 0, "We're reusing a cached TSWPParagraphTypesetter and we have an attachment character in the text buffer, but no attachment in storage and no tate-chu-yoko run. Storage kind=%d, owner=%{public}@ storage=%{public}@, parent=%{public}@, hasDocumentRoot=%{public}@", v305, v177, v178, v182, v187);

LABEL_135:
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189);
        goto LABEL_136;
      }

      if (v154 == 14)
      {
        v155 = objc_msgSend_footnoteReferenceAtCharIndex_(*v314, v135, v74);

        if (v155)
        {
          v158 = a1;
          *(*(a1 + 64) + 2 * v74) = 8209;
          if (qword_280A58388 != -1)
          {
            sub_276F4F558();
            v158 = a1;
          }

          ++v298;
          v304 = qword_280A58380;
          goto LABEL_139;
        }

        v165 = MEMORY[0x277D81150];
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
        v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v169, v166, v168, 696, 0, "We have a footnote reference character, but no footnote attachment");
        goto LABEL_135;
      }
    }

    if (v332 < 2)
    {
      goto LABEL_136;
    }

    v159 = 1;
    while (1)
    {
      v160 = *(*(v138 + 64) + 2 * v331 + 2 * v159);
      if (v160 == 65532 || v160 == 14)
      {
        break;
      }

      if (v332 == ++v159)
      {
        goto LABEL_136;
      }
    }

    v162 = 0;
    v332 = v159;
LABEL_146:
    v219 = sub_276DD2950(a2);
    v220 = TSWPResolvePropertyForStyles(v325, v219, 40);

    if (v220 && objc_msgSend_isEnabled(v220, v221, v222))
    {
      v162 |= 4uLL;
    }

    v223 = objc_msgSend_objectForKeyedSubscript_(v326, v221, @"TSWPCharacterStrokeAttribute");
    v225 = objc_msgSend_objectForKeyedSubscript_(v326, v224, @"TSWPCharacterFillAttribute");
    v227 = objc_msgSend_objectForKeyedSubscript_(v326, v226, @"TSWPInvisibleTextAttribute");
    v228 = v227;
    v229 = v162 | 8;
    if (!v223)
    {
      v229 = v162;
    }

    if (v225)
    {
      v229 |= 0x10uLL;
    }

    if (v227)
    {
      v230 = v229 | 0x20;
    }

    else
    {
      v230 = v229;
    }

    v231 = objc_opt_new();
    objc_msgSend_setRunLength_(v231, v232, v332);
    objc_msgSend_setCharIndex_(v231, v233, v74);
    objc_msgSend_setCharacterStyle_(v231, v234, v325);
    objc_msgSend_setCtFont_(v231, v235, v315);
    objc_msgSend_setAttributes_(v231, v236, v326);
    objc_msgSend_setFlags_(v231, v237, v230);
    sub_276D38FF4(v315, v238, v239, v330);
    v329[2] = v330[2];
    v329[3] = v330[3];
    v329[4] = v330[4];
    v329[5] = v330[5];
    v329[0] = v330[0];
    v329[1] = v330[1];
    objc_msgSend_setFontHeightInfo_(v231, v240, v329);
    v243 = *(a1 + 88);
    if (!v243)
    {
      v244 = MEMORY[0x277D81150];
      v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v241, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
      v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v244, v248, v245, v247, 818, 0, "invalid nil value for '%{public}s'", "_mutableStyleRunArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v249, v250);
      v243 = *(a1 + 88);
    }

    if (!objc_msgSend_count(v243, v241, v242) || (objc_msgSend_lastObject(*(a1 + 88), v251, v252), v253 = objc_claimAutoreleasedReturnValue(), v255 = objc_msgSend_coalesceWith_(v253, v254, v231), v253, (v255 & 1) == 0))
    {
      objc_msgSend_addObject_(*(a1 + 88), v251, v231);
    }

    v256 = sub_276DD2950(a2);
    v257 = sub_276D386B0(v325, v256, 21, 0);

    v259 = v332;
    if (v257 == 1)
    {
      sub_276DBF220(a1, v74, v332);
    }

    else if (v257 == 3)
    {
      v260 = sub_276DD2950(a2);
      v261 = sub_276D386B0(v325, v260, 22, 0) == 1;

      if (v261)
      {
        objc_msgSend_addRange_(v295, v262, v74, v259);
      }

      else
      {
        sub_276DBF4CC(a1, v74, v259);
      }
    }

    else if (v257 == 2 && (v230 & 1) == 0 && v332)
    {
      sub_276DBEB34(a1, v74, v332);
    }

    v74 = v332 + v331;
    if (v332 + v331 > v321)
    {
      v263 = MEMORY[0x277D81150];
      v264 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v258, "TSWPTypesetterParagraphSetupResult TSWPCoreTextTypesetter::beginParagraphLayout(const TSWPLayoutState *, TSWPAttributeIndex)");
      v266 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v265, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v263, v267, v264, v266, 846, 0, "Bad curCharIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v268, v269);
    }
  }

  while (v74 < v321);
  v275 = *(a1 + 88);
  *(a1 + 88) = 0;

  v328[0] = MEMORY[0x277D85DD0];
  v328[1] = 3221225472;
  v328[2] = sub_276DBF74C;
  v328[3] = &unk_27A6F4110;
  v328[4] = a1;
  objc_msgSend_enumerateRanges_(v295, v276, v328);
  v277 = *(a2 + 396);
  v278 = *(a2 + 349);
  sub_276DBFB34(a1, v279);
  if (v277 == 4)
  {
    v280 = v278;
  }

  else
  {
    v280 = v277;
  }

  v281 = 0x100000000000000;
  if (!v298)
  {
    v281 = 0;
  }

  v282 = 0x1000000000000;
  if (!v294)
  {
    v282 = 0;
  }

  v283 = 0x10000000000;
  if (!v297)
  {
    v283 = 0;
  }

  return v283 | v282 | v281 | (v278 << 32) | v280;
}

void sub_276DBE5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58)
{
  if (a58)
  {
    sub_276D5EEA0(a58);
  }

  _Unwind_Resume(a1);
}

void sub_276DBEB34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = a2;
  if (!objc_msgSend_count(*(a1 + 96), a2, a3))
  {
    TSUSetCrashReporterInfo();
    v103 = MEMORY[0x277D81150];
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "void TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)", "void TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm", 4080);
    v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v108, v105, v107, 4080, 1, "Must have at least one style run");

    TSUCrashBreakpoint();
    abort();
  }

  if (!a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 4081, 0, "localRange.length must be >= 1");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_count(*(a1 + 96), v6, v7) - 1;
  v110 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v16, v15);
  v19 = objc_msgSend_range(v110, v17, v18);
  v22 = v4 + a3;
  if (v19 > v4 || &v20[v19] < v22)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "void TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 4086, 0, "Incorrect initial range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v22 = v4 + a3;
  }

  v32 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x277CCA900], v20, v21);
  if (v4 < v22)
  {
    cf = 0;
    v109 = *MEMORY[0x277CC4838];
    do
    {
      v33 = v4;
      IsMember = objc_msgSend_characterIsMember_(v32, v31, *(*(a1 + 64) + 2 * v4));
      v36 = v4 + 1;
      do
      {
        v4 = v36;
        if (v36 >= v22)
        {
          break;
        }

        v37 = objc_msgSend_characterIsMember_(v32, v34, *(*(a1 + 64) + 2 * v36));
        v36 = v4 + 1;
      }

      while (IsMember == v37);
      if (v33 <= v4)
      {
        v38 = v4;
      }

      else
      {
        v38 = v33;
      }

      if (v33 >= v4)
      {
        v33 = v4;
      }

      v39 = v110;
      v113 = v39;
      if (v15 + 1 == objc_msgSend_count(*(a1 + 96), v40, v41))
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v42, v15);

        v113 = v44;
      }

      v112 = v38 - v33;
      v47 = v113;
      if (v15 == objc_msgSend_count(*(a1 + 96), v42, v43) || v33 != objc_msgSend_range(v113, v45, v46) || v112 != v45)
      {
        v48 = *(a1 + 88);
        if (!v48)
        {
          v49 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSWPCoreTextTypesetter::pChangeToSmallCapsForRange(const NSRange)");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 4111, 0, "invalid nil value for '%{public}s'", "_mutableStyleRunArray");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
          v48 = *(a1 + 88);
          v47 = v113;
        }

        v56 = objc_msgSend_copy(v47, v45, v46);
        objc_msgSend_addObject_(v48, v57, v56);

        v15 = objc_msgSend_count(*(a1 + 96), v58, v59) - 1;
        if (v113)
        {
          v61 = objc_msgSend_range(v113, v45, v60);
          if (v33 < &v45[v61])
          {
            objc_msgSend_setRunLength_(v113, v45, &v33[-v61]);
          }
        }
      }

      v62 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v45, v15);
      objc_msgSend_setRunLength_(v62, v63, v112);
      objc_msgSend_setCharIndex_(v62, v64, v33);
      v67 = objc_msgSend_characterStyle(v39, v65, v66);
      objc_msgSend_setCharacterStyle_(v62, v68, v67);

      v71 = objc_msgSend_flags(v62, v69, v70);
      v73 = 2;
      if (!IsMember)
      {
        v73 = 0;
      }

      objc_msgSend_setFlags_(v62, v72, v71 | v73);
      if (IsMember)
      {
        sub_276DBF220(a1, v33, v112);
        if (cf || (v96 = objc_msgSend_ctFont(v39, v76, v77), Size = CTFontGetSize(v96), v100 = objc_msgSend_ctFont(v39, v98, v99), v101 = CTFontCopyFontDescriptor(v100), (v102 = v101) != 0) && (cf = CTFontCreateWithFontDescriptor(v101, Size * 0.800000012, 0), CFRelease(v102), cf))
        {
          v78 = objc_msgSend_attributes(v39, v76, v77);
          v81 = objc_msgSend_mutableCopy(v78, v79, v80);

          objc_msgSend_setObject_forKeyedSubscript_(v81, v82, cf, v109);
          objc_msgSend_setAttributes_(v62, v83, v81);
          objc_msgSend_setCtFont_(v62, v84, cf);
          sub_276D38FF4(cf, v85, v86, v114);
          v117 = v114[2];
          v118 = v114[3];
          v119 = v114[4];
          v120 = v114[5];
          v115 = v114[0];
          v116 = v114[1];
          objc_msgSend_setFontHeightInfo_(v62, v87, &v115);
        }

        else
        {
          cf = 0;
        }
      }

      else
      {
        v88 = objc_msgSend_attributes(v39, v74, v75);
        objc_msgSend_setAttributes_(v62, v89, v88);

        v92 = objc_msgSend_ctFont(v39, v90, v91);
        objc_msgSend_setCtFont_(v62, v93, v92);
        if (v110)
        {
          objc_msgSend_fontHeightInfo(v39, v94, v95);
        }

        else
        {
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
        }

        v117 = v123;
        v118 = v124;
        v119 = v125;
        v120 = v126;
        v115 = v121;
        v116 = v122;
        objc_msgSend_setFontHeightInfo_(v62, v94, &v115);
      }

      ++v15;
    }

    while (v4 < v22);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_276DBF220(uint64_t *a1, const char *a2, uint64_t a3)
{
  if (&a2[a3] > a1[6])
  {
    v6 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v35, v8, 3920, 0, "Invalid local range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v36 = sub_276D7AEE8(a1[1]);
  if (!v36)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 3923, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (a3 >= 1)
  {
    v20 = (a1[8] + 2 * a2);
    v21 = *MEMORY[0x277CBED00];
    v22 = a3 + 1;
    do
    {
      v23 = *v20;
      MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v20, 1, 1, v21);
      if (MutableWithExternalCharactersNoCopy)
      {
        v27 = objc_msgSend_cfLocale(v36, v24, v25);
        CFStringUppercase(MutableWithExternalCharactersNoCopy, v27);
        if (CFStringGetLength(MutableWithExternalCharactersNoCopy) != 1)
        {
          *v20 = v23;
        }

        CFRelease(MutableWithExternalCharactersNoCopy);
      }

      else
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "void TSWPCoreTextTypesetter::pChangeTextToUppercaseForRange(NSRange)");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 3934, 0, "Failed to create temporary string for _textBuffer");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      }

      ++v20;
      --v22;
    }

    while (v22 > 1);
  }
}

void sub_276DBF4CC(uint64_t *a1, const char *a2, CFIndex numChars)
{
  if (&a2[numChars] > a1[6])
  {
    v6 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPCoreTextTypesetter::pChangeTextToStartCaseForRange(NSRange)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v32, v8, 4061, 0, "Invalid local range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (a1[8] + 2 * a2), numChars, numChars, *MEMORY[0x277CBED00]);
  if (MutableWithExternalCharactersNoCopy)
  {
    v14 = MutableWithExternalCharactersNoCopy;
    v33 = sub_276D7AEE8(a1[1]);
    if (!v33)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPCoreTextTypesetter::pChangeTextToStartCaseForRange(NSRange)");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 4070, 0, "invalid nil value for '%{public}s'", "locale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    v24 = objc_msgSend_cfLocale(v33, v15, v16);
    CFStringCapitalize(v14, v24);
    CFRelease(v14);
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "void TSWPCoreTextTypesetter::pChangeTextToStartCaseForRange(NSRange)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v28, v34, v27, 4066, 0, "Failed to create temporary string for _textBuffer");

    v31 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v31, v29, v30);
  }
}

void sub_276DBF754(uint64_t *a1, const char *a2, CFIndex a3)
{
  if (&a2[a3] > a1[6])
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 3963, 0, "Invalid localRange parameter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v14 = sub_276DCBB48(a1);
  if (v14)
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, (a1[8] + 2 * a2), a3, a3, *MEMORY[0x277CBED00]);
    if (MutableWithExternalCharactersNoCopy)
    {
      v46 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x277CCA900], v15, v16);
      v20 = objc_msgSend_tswp_sentenceDelimiterCharacterSet(MEMORY[0x277CCA900], v18, v19);
      v22 = sub_276D7AEE8(a1[1]);
      if (!v22)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "void TSWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 3976, 0, "invalid nil value for '%{public}s'", "locale");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      }

      objc_msgSend_setString_(v14, v21, MutableWithExternalCharactersNoCopy);
      v30 = *MEMORY[0x277CCA3F8];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_276DCBC34;
      v47[3] = &unk_27A6F45B8;
      v47[8] = a2;
      v47[9] = a3;
      v47[4] = v20;
      v47[5] = v46;
      v47[6] = v22;
      v47[7] = a1;
      objc_msgSend_enumerateTagsInRange_scheme_options_usingBlock_(v14, v31, 0, a3, v30, 22, v47);
      CFRelease(MutableWithExternalCharactersNoCopy);
    }

    else
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 3971, 0, "invalid nil value for '%{public}s'", "text");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "void TSWPCoreTextTypesetter::pChangeTextToTitleCaseForRange(NSRange)");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 3965, 0, "invalid nil value for '%{public}s'", "tagger");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }
}

void sub_276DBFB34(uint64_t a1, const char *a2)
{
  v2 = a1;
  v58 = *MEMORY[0x277D85DE8];
  if (*(a1 + 31) & 1) != 0 || (v3 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPCoreTextTypesetter::processAttachmentMapsPreLayout()"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 1026, 0, "Can't process attachment maps pre-layout because not doing paragraph layout."), v6, v4, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9), v2 = a1, (*(a1 + 31)))
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = *(v2 + 96);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v53, v57, 16);
    if (v13)
    {
      v52 = *v54;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v54 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v53 + 1) + 8 * i);
          if (objc_msgSend_flags(v15, v11, v12))
          {
            v16 = objc_msgSend_attributes(v15, v11, v12);
            v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"__wpAttachmentMap");
            v23 = objc_msgSend_layout(v18, v19, v20);
            if (v23)
            {
              v24 = *(v2 + 8);
              v25 = objc_msgSend_attachment(v18, v21, v22);
              v26 = sub_276D7AA9C(v24, v25);

              objc_msgSend_setLayout_(v18, v27, v26);
              v30 = sub_276DFD384(*(a1 + 216));
              if (v30)
              {
                v31 = objc_msgSend_charIndex(v15, v28, v29);
                v34 = objc_msgSend_attribute_atIndex_effectiveRange_(v30, v32, @"__wpAttachmentMap", v31, 0);
                if (!v34)
                {
                  v35 = MEMORY[0x277D81150];
                  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "void TSWPCoreTextTypesetter::processAttachmentMapsPreLayout()");
                  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 1043, 0, "invalid nil value for '%{public}s'", "attributedStringAttachmentMap");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
                }

                objc_msgSend_setLayout_(v34, v33, v26);
                objc_msgSend_setLayoutNeedsRevalidation_(v34, v42, 1);
              }

              else
              {
                v43 = MEMORY[0x277D81150];
                v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "void TSWPCoreTextTypesetter::processAttachmentMapsPreLayout()");
                v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 1040, 0, "invalid nil value for '%{public}s'", "attributedString");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
              }
            }

            v2 = a1;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v53, v57, 16);
      }

      while (v13);
    }
  }
}

void sub_276DBFF8C(uint64_t a1, const char *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a1 + 31) & 1) != 0 || (v3 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPCoreTextTypesetter::processAttachmentMapsPostLayout()"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 1055, 0, "Can't process attachment maps post-layout because not doing paragraph layout."), v6, v4, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9), (*(a1 + 31)))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = *(a1 + 96);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v44, 16);
    if (v14)
    {
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          if (objc_msgSend_flags(v17, v12, v13))
          {
            v18 = *(a1 + 216);
            if (v18 || (v19 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void TSWPCoreTextTypesetter::processAttachmentMapsPostLayout()"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1060, 0, "invalid nil value for '%{public}s'", "_paragraphTypesetter"), v22, v20, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25), (v18 = *(a1 + 216)) != 0))
            {
              v28 = sub_276DFD384(v18);
              if (v28)
              {
                v29 = objc_msgSend_charIndex(v17, v26, v27);
                v31 = objc_msgSend_attribute_atIndex_effectiveRange_(v28, v30, @"__wpAttachmentMap", v29, 0);
                objc_msgSend_setLayoutNeedsRevalidation_(v31, v32, 0);
              }

              else
              {
                v33 = MEMORY[0x277D81150];
                v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "void TSWPCoreTextTypesetter::processAttachmentMapsPostLayout()");
                v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 1063, 0, "invalid nil value for '%{public}s'", "attributedString");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
              }
            }
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v40, v44, 16);
      }

      while (v14);
    }
  }
}

void sub_276DC02F4(uint64_t a1@<X0>, const char *a2@<X1>, double *a3@<X8>)
{
  *(a3 + 2) = *&byte_276F98C20[32];
  *(a3 + 3) = *&byte_276F98C20[48];
  *(a3 + 4) = *&byte_276F98C20[64];
  *(a3 + 5) = *&byte_276F98C20[80];
  *a3 = *byte_276F98C20;
  *(a3 + 1) = *&byte_276F98C20[16];
  v5 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 56), a2, a2);
  v6 = sub_276DFD384(*(a1 + 216));
  v9 = objc_msgSend_attribute_atIndex_effectiveRange_(v6, v7, @"__wpAttachmentMap", v5, 0);

  v8 = v9;
  if (v9)
  {
    a3[2] = sub_276DC03DC(v9);
    a3[4] = sub_276DC0544(v9);
    v8 = v9;
  }
}

double sub_276DC03DC(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_attachment(v1, v2, v3);
  v7 = v4;
  v8 = 0.0;
  if (v4 && (objc_msgSend_isPartitioned(v4, v5, v6) & 1) == 0)
  {
    if (objc_msgSend_isDrawable(v7, v9, v10))
    {
      v13 = objc_msgSend_layout(v1, v11, v12);
      objc_msgSend_alignmentFrameForInlineLayout(v13, v14, v15);
      v17 = v16;
      v19 = v18;
      if (objc_msgSend_isWithinVerticalText(v1, v20, v21))
      {
        v8 = v17 * 0.5;
      }

      else
      {
        objc_msgSend_descentForInlineLayout(v13, v22, v23);
        v8 = v19 - v34;
      }
    }

    else
    {
      objc_opt_class();
      v24 = TSUDynamicCast();
      v13 = v24;
      if (v24)
      {
        objc_msgSend_size(v24, v25, v26);
        v28 = v27;
        objc_msgSend_baselineOffset(v13, v29, v30);
        v8 = v28 + v31;
      }

      objc_opt_class();
      v32 = TSUDynamicCast();
      if (v32)
      {
        sub_276DCC3B8(v1);
        v8 = v33;
      }
    }
  }

  return v8;
}

void sub_276DC04F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

double sub_276DC0544(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_attachment(v1, v2, v3);
  v7 = v4;
  v8 = 0.0;
  if (v4 && (objc_msgSend_isPartitioned(v4, v5, v6) & 1) == 0)
  {
    if (objc_msgSend_isDrawable(v7, v9, v10))
    {
      v13 = objc_msgSend_layout(v1, v11, v12);
      objc_msgSend_descentForInlineLayout(v13, v14, v15);
      v8 = v16;
    }

    else
    {
      objc_opt_class();
      v17 = TSUDynamicCast();
      v13 = v17;
      if (v17)
      {
        objc_msgSend_baselineOffset(v17, v18, v19);
        v8 = -v20;
      }

      objc_opt_class();
      v21 = TSUDynamicCast();
      if (v21)
      {
        sub_276DCC3B8(v1);
        v8 = v22;
      }
    }
  }

  return v8;
}

void sub_276DC062C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_276DC0674(uint64_t a1, unint64_t **a2)
{
  if (*(a1 + 31) != 1 || ((v4 = *a2, v5 = **a2, v6 = *(a1 + 32), v5 >= v6) ? (v7 = v5 > *(a1 + 40) + v6) : (v7 = 1), v7))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1122, 0, "layoutLine called without paragraph being set up correctly");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((*(a2 + 66) & 1) != 0 && *(*(a1 + 216) + 88) != *(*(a1 + 216) + 96))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 1126, 0, "Can't skip glyph vectors with ruby");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v5 = *v4;
  }

  v23 = a2[28];
  v24 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 56), a2, v5);
  if (v24 == 0x7FFFFFFFFFFFFFFFLL || (v26 = v24, v24 > *(a1 + 48)))
  {
    if (*v4 != *(a1 + 40) + *(a1 + 32))
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1135, 0, "bad start char index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    v26 = *(a1 + 48);
  }

  v369[0] = v26;
  *v23 = *v4;
  *(v23 + 16) = *(a1 + 32);
  v34 = *(v4 + 472);
  *(v23 + 40) = *(v4 + 456);
  *(v23 + 56) = v34;
  if (*(a1 + 27) == 1)
  {
    *(v23 + 24) |= 0x2000uLL;
  }

  if (*(a1 + 72) == 1)
  {
    *(v23 + 24) |= 0x20000uLL;
  }

  sub_276D644D4(v23, *(a1 + 56));
  v35 = *(a2 + 9);
  *(a1 + 120) = *(a2 + 11);
  *(a1 + 104) = v35;
  v36 = *(a2 + 13);
  v37 = *(a2 + 15);
  v38 = *(a2 + 17);
  *(a1 + 184) = *(a2 + 19);
  *(a1 + 168) = v38;
  *(a1 + 152) = v37;
  *(a1 + 136) = v36;
  v39 = a2[5];
  *&v37 = *(v4 + 216);
  v367 = *(a2 + 3) - *(v4 + 224);
  v368 = *&v37;
  sub_276DC2610(v40, a2, &v368, &v367);
  v366 = 1;
  if (*(v4 + 448) != 1)
  {
    goto LABEL_27;
  }

  v42 = sub_276DD2980(v4);
  if (!v42 || (*(v4 + 348) & 1) == 0)
  {

LABEL_27:
    if (*(a2 + 208) == 1)
    {
      *(v23 + 24) |= 0x10000000uLL;
    }

    goto LABEL_29;
  }

  v43 = *(a2 + 208);

  if (v43 == 1)
  {
    goto LABEL_27;
  }

  sub_276DC284C(a1, a2, v26, &v366, &v368, &v367);
  if ((v366 & 1) == 0)
  {
    v44 = 0;
    goto LABEL_33;
  }

LABEL_29:
  if (v26 < *(a1 + 48) && *(*(a1 + 64) + 2 * v26) == -4)
  {
    v45 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 56), v41, v26);
    isPartitioned = objc_msgSend_isPartitioned(v45, v46, v47);
    v44 = isPartitioned ^ 1;
    v366 = isPartitioned ^ 1;
  }

  else
  {
    v44 = 1;
  }

LABEL_33:
  v49 = v367;
  v50 = v368;
  if (v368 >= v367)
  {
    v49 = v368;
  }

  v367 = v49;
  v361 = fmin(v49 - v368, 32000.0);
  v51 = *(a1 + 48);
  v52 = v368;
  if ((a2[5] & 4) == 0)
  {
    v53 = *(v4 + 396);
    if (v53 != 1)
    {
      if (v53 == 2)
      {
        v52 = v368 + v361 * 0.5;
        goto LABEL_42;
      }

      v52 = v368;
      if (v53 != 3)
      {
        goto LABEL_42;
      }

      v52 = v368;
      if ((*(v4 + 349) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v52 = v49;
  }

LABEL_42:
  v359 = v4;
  v355 = v39 & 0x14;
  v54 = MEMORY[0x277D81490];
  if (!v44 || v361 <= 1.0 && *(a2 + 169) != 1 || v51 - 1 < v26)
  {
    v369[0] = v26;
    sub_276DC3990(a1, v359, v23, 0, v355 == 4, v52);
    v51 = v26;
LABEL_280:
    v234 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v233, v51);
    goto LABEL_281;
  }

  if (v26 >= v51 - (*(*(a1 + 216) + 80) != 0))
  {
    v369[0] = *(a1 + 48);
    *(v23 + 8) = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v41, v51, 1.0, v361) - *v23;
    sub_276DC3990(a1, v359, v23, *(*(a1 + 216) + 80), v355 == 4, v52);
    goto LABEL_280;
  }

  objc_opt_class();
  v56 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v55, v26, 7, &v365);
  v57 = TSUDynamicCast();

  v357 = v57;
  if (v57)
  {
    sub_276DFD2B8(*(a1 + 216), v57);
  }

  sub_276D6C5F4(v23, v58, v59);
  v61 = 0;
  v351 = *MEMORY[0x277CC49E0];
  while (1)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
LABEL_56:
      if (*(a1 + 28) != 1 || *(a1 + 80) != 1)
      {
        v90 = sub_276DBC9FC(a1, v60);
        v91 = MEMORY[0x277CA1F00](v90, v26, v361, v50) + v26;
        v369[0] = v91;
        if (v91)
        {
          v92 = sub_276DFD384(*(a1 + 216));
          v94 = objc_msgSend_attribute_atIndex_effectiveRange_(v92, v93, v351, v91 - 1, 0);

          objc_msgSend_floatValue(v94, v95, v96);
          v99 = v98;
          if (v98 > 0.0 || v98 < 0.0 && *(a2 + 171) == 1)
          {
            v100 = sub_276DBC9FC(a1, v97);
            v101 = v99;
            v91 = MEMORY[0x277CA1F00](v100, v26, v361 + v101, v50) + v26;
            v369[0] = v91;
            *(a1 + 232) = v101;
          }

          if (v91 > *(a1 + 48))
          {
            v102 = MEMORY[0x277D81150];
            v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
            v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v106, v103, v105, 1407, 0, "Bad endCharIndex");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108);
          }

          if (!v91 || (*(a2 + 169) & 1) != 0 || v91 >= *(a1 + 48) || (v26 <= v91 ? (v109 = v91) : (v109 = v26), v26 >= v91 ? (v110 = v91) : (v110 = v26), (sub_276DC4274(a1, v110, v109 - v110) & 1) != 0))
          {
            if (v91 > v26)
            {
              v363 = *MEMORY[0x277D81490];
              objc_opt_class();
              v112 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v111, v91, 7, &v363);
              v113 = TSUDynamicCast();

              if (v113 && v363.length + v363.location > v91)
              {
                v114 = sub_276DFD1FC(*(a1 + 216), v113);
                location = v363.location;
                if ((v114 & 1) == 0)
                {
                  if (v363.location <= v26 && *(a2 + 169) == 1)
                  {
                    sub_276DFD254(*(a1 + 216), v113);
                    location = v363.location;
                  }

                  else
                  {
                    if (v363.location <= v26)
                    {
                      v91 = v26;
                    }

                    else
                    {
                      v91 = v363.location;
                    }

                    v369[0] = v91;
                  }
                }

                if (v91 == location + v363.length - 1)
                {
                  v369[0] = v91 + 1;
                }
              }
            }
          }

          else
          {
            v369[0] = v26;
            sub_276D6BD34(v23, 0);
          }
        }

LABEL_216:
        v64 = v369[0];
        if (v369[0] > v26 && *(*(a1 + 64) + 2 * v369[0] - 2) == 173)
        {
          *&v363.location = v361;
          if (sub_276DC444C(a1, v26, v369[0] + ~v26, 45, &v363.location, v23))
          {
            sub_276D6BD14(v23, 1);
          }

          else
          {
            v166 = objc_msgSend_wordAtCharIndex_includePreviousWord_(*(a1 + 56), v165, v64, 0);
            if (v26 <= v166)
            {
              v167 = v166;
            }

            else
            {
              v167 = v26;
            }

            v168 = v64 - 1;
            if (v64 - 1 <= v167)
            {
LABEL_229:
              v369[0] = v168;
              v64 = v168;
            }

            else
            {
              v169 = v64 - 2;
              while (1)
              {
                if (*(*(a1 + 64) + 2 * v169) == 173)
                {
                  *&v363.location = v361;
                  if (sub_276DC444C(a1, v26, v169 - v26, 45, &v363.location, v23))
                  {
                    break;
                  }
                }

                v170 = v169 - 1;
                v7 = v169-- > v167;
                if (!v7)
                {
                  v168 = v170 + 1;
                  goto LABEL_229;
                }
              }

              v64 = v169 + 1;
              v369[0] = v64;
              sub_276D6BD14(v23, 1);
            }
          }
        }

        goto LABEL_230;
      }

      v76 = sub_276DBC9FC(a1, v60);
      v79 = MEMORY[0x277CA1EE0](v76, v26, v361, v50) + v26;
      v369[0] = v79;
      if (v79)
      {
        v80 = sub_276DFD384(*(a1 + 216));
        v82 = objc_msgSend_attribute_atIndex_effectiveRange_(v80, v81, v351, v79 - 1, 0);

        objc_msgSend_floatValue(v82, v83, v84);
        v87 = v86;
        v353 = v79;
        if (v86 > 0.0)
        {
          v88 = sub_276DBC9FC(a1, v85);
          v89 = v87;
          v353 = MEMORY[0x277CA1EE0](v88, v26, v361 + v89, v50) + v26;
          *(a1 + 232) = v89;
        }
      }

      else
      {
        v353 = 0;
      }

      v133 = objc_msgSend_length(*(a1 + 56), v77, v78);
      objc_opt_class();
      v135 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v134, v79, 7, &v365);
      v136 = TSUDynamicCast();

      v137 = v369[0];
      if (v136 && v365 <= v26)
      {
        if (sub_276DFD308(*(a1 + 216), v369[0]))
        {
          v369[0] = ++v137;
        }

        else if (*(a2 + 169) == 1)
        {
          sub_276DFD254(*(a1 + 216), v136);
        }

        else if (*(a2 + 170) == 1)
        {
          v369[0] = v26;
          v137 = v26;
        }
      }

      if (v137 >= v133 || v137 <= sub_276DC3D24(a1, v26))
      {
LABEL_207:
        v357 = v136;
LABEL_208:
        if (v357)
        {
LABEL_209:
          if (*(&v365 + 1) + v365 > v369[0] && v369[0] == *(&v365 + 1) + v365 - 1)
          {
            ++v369[0];
          }
        }

        else
        {
LABEL_215:
          v357 = 0;
        }

        goto LABEL_216;
      }

      if (sub_276DC3DB8(a1, v369, &v365))
      {
        v139 = *(a1 + 64);
        v140 = v369[0];
        v141 = sub_276DC41F4(a1, v369[0]);
        v142 = *(v139 + 2 * v141);
        v143 = IsParagraphBreakingCharacter(*(v139 + 2 * v141));
        if (v142 == 8232)
        {
          v144 = 1;
        }

        else
        {
          v144 = v143;
        }

        if ((v144 & 1) == 0)
        {
          if (v140 < v133)
          {
            while (IsWhitespaceCharacter(*(*(a1 + 64) + 2 * v140), v60))
            {
              v145 = sub_276D36B00(*(*(a1 + 64) + 2 * v140), v60);
              v146 = v140 + 1;
              if (v140 + 1 >= v133)
              {
                v147 = 1;
              }

              else
              {
                v147 = v145;
              }

              if ((v147 & 1) == 0 && (sub_276D36B00(*(*(a1 + 64) + 2 * v140 + 2), v60) & 1) == 0)
              {
                v369[0] = v140;
                v231 = *(*(a1 + 64) + 2 * v140 + 2);
                v232 = IsParagraphBreakingCharacter(*(*(a1 + 64) + 2 * v140 + 2)) ^ 1;
                if (v231 == 8232)
                {
                  LOBYTE(v232) = 0;
                }

                if ((v232 & 1) == 0)
                {
                  v148 = 0;
                  v149 = 0;
                  ++v140;
                  goto LABEL_144;
                }

                while (1)
                {
LABEL_199:
                  while (1)
                  {
                    v158 = sub_276DC41F4(a1, v369[0]);
                    if (v158 <= v26)
                    {
                      break;
                    }

                    v369[0] = v158;
                    v357 = v136;
                    if (sub_276DC3DB8(a1, v369, 0))
                    {
                      goto LABEL_208;
                    }
                  }

                  v369[0] = v353;
                  if (*(a2 + 169) != 1)
                  {
                    goto LABEL_207;
                  }

                  objc_opt_class();
                  v159 = *(a1 + 56);
                  v160 = sub_276DC41F4(a1, v353);
                  v162 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(v159, v161, v160, 7, &v365);
                  v163 = TSUDynamicCast();

                  if (!v163)
                  {
                    goto LABEL_215;
                  }

                  v357 = v163;
                  if ((sub_276DFD1FC(*(a1 + 216), v163) & 1) != 0 || (sub_276DFD254(*(a1 + 216), v163) & 1) == 0)
                  {
                    goto LABEL_209;
                  }

                  v136 = v163;
                }
              }

              ++v140;
              if (v133 == v146)
              {
                v140 = v133;
                break;
              }
            }
          }

          v148 = 0;
          v149 = 0;
LABEL_144:
          v369[0] = v140;
          goto LABEL_192;
        }

        goto LABEL_167;
      }

      v140 = v369[0];
      v150 = sub_276DC3D24(a1, v369[0]);
      v151 = v150;
      v363.location = v150;
      if (v150 >= v365 && v150 - v365 < *(&v365 + 1) && *(*(a1 + 64) + 2 * v150) == 8209)
      {
        v151 = v150 + 1;
        v363.location = v150 + 1;
      }

      if (v151 < v133)
      {
        if (!sub_276DC3DB8(a1, &v363, 0))
        {
          goto LABEL_154;
        }

        v151 = v363.location;
      }

      if (v151 == v133 && IsWhitespaceCharacter(*(*(a1 + 64) + 2 * v140), v60))
      {
LABEL_154:
        v152 = v140;
        if (v140 < v133)
        {
          v152 = v140;
          while (IsWhitespaceCharacter(*(*(a1 + 64) + 2 * v152), v60))
          {
            if (v133 == ++v152)
            {
              goto LABEL_171;
            }
          }
        }

        v364 = v152;
        if (v152 != v133)
        {
          if (!sub_276DC3DB8(a1, &v364, 0))
          {
            v149 = 1;
            goto LABEL_172;
          }

          v133 = v364;
        }

LABEL_171:
        v149 = 0;
        v369[0] = v133;
        v140 = v133;
LABEL_172:
        v148 = 0;
        goto LABEL_192;
      }

      if (v61)
      {
LABEL_167:
        v148 = 0;
        v149 = 0;
LABEL_192:
        if ((v148 & 1) != 0 || (v149 & 1) != 0 || (v157 = sub_276DC41F4(a1, v140)) == 0 || v157 >= v140)
        {
          if (v149)
          {
            goto LABEL_199;
          }
        }

        else if ((sub_276DC3DB8(a1, v369, 0) & 1) == 0)
        {
          goto LABEL_199;
        }

        goto LABEL_207;
      }

      if (v26 >= v140)
      {
        v156 = 1;
      }

      else
      {
        v153 = 0.0;
        v154 = v26;
        do
        {
          v153 = v153 + sub_276D37110(*(*(a1 + 64) + 2 * v154++));
        }

        while (v153 < 1.0 && v154 < v140);
        v156 = v153 < 1.0;
      }

      if (v151 < v133)
      {
        while (IsWhitespaceCharacter(*(*(a1 + 64) + 2 * v151), v60))
        {
          if (v133 == ++v151)
          {
            v151 = v133;
            break;
          }
        }
      }

      v364 = v151;
      if (v156)
      {
LABEL_187:
        v148 = 0;
        v149 = 1;
        goto LABEL_192;
      }

      if (v151 != v133)
      {
        if (!sub_276DC3DB8(a1, &v364, 0))
        {
          goto LABEL_187;
        }

        v133 = v364;
      }

      v369[0] = v133;
      v148 = 1;
      sub_276D6C5D8(v23, 1);
      v149 = 0;
      v140 = v133;
      goto LABEL_192;
    }

    v62 = sub_276DBC9FC(a1, v60);
    v63 = MEMORY[0x277CA1EE0](v62, v26, v361, v50);
    v64 = v63 + v26;
    v369[0] = v63 + v26;
    v65 = *(a1 + 48);
    if (v63 + v26 > v65)
    {
      v66 = MEMORY[0x277D81150];
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v70, v67, v69, 1474, 0, "Bad endCharIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72);
      v65 = *(a1 + 48);
    }

    if (v64 >= v65)
    {
      goto LABEL_101;
    }

    objc_opt_class();
    v74 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v73, v64, 7, 0);
    v75 = TSUDynamicCast();

    if (v75)
    {
      goto LABEL_56;
    }

    v116 = v359;
    if (v64)
    {
      v117 = *(*(a1 + 64) + 2 * v64 - 2);
      v118 = IsParagraphBreakingCharacter(*(*(a1 + 64) + 2 * v64 - 2));
      v119 = v117 == 8232 ? 1 : v118;
      if (v119)
      {
        goto LABEL_102;
      }
    }

    if (sub_276D36B00(*(*(a1 + 64) + 2 * v64), v60))
    {
      v120 = v26 + 1 + v63;
      while (1)
      {
        v64 = v120;
        v121 = *(a1 + 48);
        if (v64 >= v121)
        {
          break;
        }

        v122 = sub_276D36B00(*(*(a1 + 64) + 2 * v64), v60);
        v120 = v64 + 1;
        if ((v122 & 1) == 0)
        {
          v121 = *(a1 + 48);
          break;
        }
      }

      v369[0] = v64;
      if (v64 >= v121)
      {
        goto LABEL_101;
      }

      v123 = *(*(a1 + 64) + 2 * v64);
      v124 = IsParagraphBreakingCharacter(*(*(a1 + 64) + 2 * v64)) ^ 1;
      if (v123 == 8232)
      {
        LOBYTE(v124) = 0;
      }

      if (v124)
      {
LABEL_101:
        if (!v64)
        {
          goto LABEL_232;
        }
      }

      else
      {
        v369[0] = ++v64;
      }

LABEL_102:
      v125 = 1;
      goto LABEL_103;
    }

    if (!v64)
    {
      goto LABEL_106;
    }

    v125 = 0;
LABEL_103:
    v126 = *(*(a1 + 64) + 2 * v64 - 2);
    if (qword_280A58368 != -1)
    {
      sub_276F4F580();
    }

    v116 = v359;
    if ((v125 | objc_msgSend_characterIsMember_(qword_280A58360, v60, v126)))
    {
      goto LABEL_230;
    }

LABEL_106:
    if (*(*(a1 + 64) + 2 * v64) == -4)
    {
      v127 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 56), v60, v64);
      if (objc_msgSend_isDrawable(v127, v128, v129))
      {
        isAnchored = objc_msgSend_isAnchored(v127, v130, v131);

        if (!isAnchored)
        {
          goto LABEL_230;
        }
      }

      else
      {
      }
    }

    v363.location = v26;
    v363.length = v64 - v26;
    v138 = sub_276DC46BC(a1, &v363, v116, v23, v361, v50);
    if (v138 == 1)
    {
      sub_276D6BD14(v23, 1);
      v64 = v363.length + v363.location;
      v369[0] = v363.length + v363.location;
    }

    else if (v138 == -1)
    {
      goto LABEL_56;
    }

LABEL_230:
    if (v64 > *(a1 + 48))
    {
      v171 = MEMORY[0x277D81150];
      v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
      v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v175, v172, v174, 1534, 0, "Bad localEndCharIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v176, v177);
    }

LABEL_232:
    v178 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v60, v64);
    if (v178 < objc_msgSend_length(*(a1 + 16), v179, v180))
    {
      objc_opt_class();
      v183 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 56), v182, v64);
      v184 = TSUDynamicCast();

      if (!v184 || (objc_msgSend_isPartitioned(v184, v185, v186) & 1) == 0)
      {
        if (v26 < v64)
        {
          while (1)
          {
            v187 = v64 - 1;
            if (objc_msgSend_characterAtIndex_(*(a1 + 56), v185, v64 - 1) != 65532)
            {
              break;
            }

            objc_opt_class();
            v189 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 56), v188, v64 - 1);
            v190 = TSUDynamicCast();

            if (!v190)
            {
              v184 = 0;
              break;
            }

            if ((objc_msgSend_isAnchored(v190, v191, v192) & 1) == 0)
            {
              goto LABEL_242;
            }

            v195 = objc_msgSend_drawable(v190, v193, v194);
            v198 = objc_msgSend_exteriorTextWrap(v195, v196, v197);
            if (objc_msgSend_isHTMLWrap(v198, v199, v200))
            {
              v369[0] = v64;

              goto LABEL_246;
            }

            v184 = v190;
            --v64;
            if (v26 >= v187)
            {
              v64 = v26;
LABEL_242:
              v184 = v190;
              break;
            }
          }
        }

        v369[0] = v64;
      }

      v190 = v184;
LABEL_246:

      v64 = v369[0];
    }

    v201 = v359;
    if (v26 == v64)
    {
      if (!*(a1 + 48) || *(a2 + 169) != 1)
      {
LABEL_256:
        v206 = v367;
        v50 = v368;
        sub_276DC3990(a1, v359, v23, 0, v355 == 4, v368);
        goto LABEL_257;
      }

      v202 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v181, v26);
      v203 = sub_276D37528(v202, *(a1 + 56));
      v205 = objc_msgSend_charIndexMappedFromStorage_(*(a1 + 56), v204, v203);
      v64 = v205;
      v369[0] = v205;
      if (*(*(a1 + 216) + 80) && v205 && v205 == *(a1 + 48) - 1 && *(*(a1 + 64) + 2 * v205 - 2) != 8232)
      {
        v64 = v205 + 1;
        v369[0] = v205 + 1;
      }
    }

    if (v26 == v64)
    {
      goto LABEL_256;
    }

    v209 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v181, v64);
    if (v209 == *v23)
    {
      v336 = *(a1 + 48);
      if (v64 >= v336)
      {
        v338 = 0;
      }

      else
      {
        v23 = objc_msgSend_string(*(a1 + 56), v210, v211);
        v338 = objc_msgSend_characterAtIndex_(v23, v337, v64);
      }

      v349 = v338;
      TSUSetCrashReporterInfo();
      if (v64 < v336)
      {
      }

      v340 = MEMORY[0x277D81150];
      v341 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v339, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)", "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm", 1582, v349);
      v345 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v342, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      v346 = *(a1 + 48);
      if (v64 >= v346)
      {
        v348 = 0;
      }

      else
      {
        v201 = objc_msgSend_string(*(a1 + 56), v343, v344);
        v348 = objc_msgSend_characterAtIndex_(v201, v347, v64);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v340, v343, v341, v345, 1582, 1, "Failed to map end of line to a positive index: U+%x", v348);
      if (v64 < v346)
      {
      }

      TSUCrashBreakpoint();
      abort();
    }

    *(v23 + 8) = v209 - *v23;
    v212 = a2[5];
    v206 = v367;
    v50 = v368;
    sub_276D6C480(v23, v210, v211);
    v213 = a2[8];
    v214 = *(a2 + 169);
    if (!sub_276D6B7F4(v23, a2[22]))
    {
      if (((v213 & 0x10000) == 0) | (v214 ^ 1) & 1)
      {
        sub_276DC4B38(a1, v23, v359, (v212 & 0xC) != 0);
        if ((v214 & 1) == 0 && sub_276DC73F4(a1, v23, v26, v64))
        {
          v215 = sub_276D69474(v23);
          v217 = v216;
          v219 = v218;
          v221 = v220;
          v374.origin.x = sub_276D698EC(v23, 1);
          v374.origin.y = v222;
          v374.size.width = v223;
          v374.size.height = v224;
          v371.origin.x = v215;
          v371.origin.y = v217;
          v371.size.width = v219;
          v371.size.height = v221;
          v372 = CGRectUnion(v371, v374);
          v225 = *(v23 + 40);
          v226 = *(v23 + 48);
          v227 = *(v23 + 56);
          v228 = *(v23 + 64);
          Width = CGRectGetWidth(v372);
          v230 = *(a1 + 232);
          v373.origin.x = v225;
          v373.origin.y = v226;
          v373.size.width = v227;
          v373.size.height = v228;
          if (Width - v230 > CGRectGetWidth(v373) + 0.25)
          {
            v369[0] = v26;
            *(v23 + 8) = 0;
            if ((v213 & 0x10000) == 0)
            {
              sub_276DC3990(a1, v359, v23, 0, v355 == 4, v50);
            }
          }
        }
      }
    }

LABEL_257:
    if ((sub_276DFC63C(*(a1 + 216), v23, v206 - v50) & 1) == 0)
    {
      break;
    }

    if (v61 >= 2)
    {
      goto LABEL_342;
    }

LABEL_262:
    if (++v61)
    {
      sub_276D6CAB4(v23, v60, v207);
    }
  }

  v208 = *(a1 + 80) & (*(v23 + 25) >> 7);
  if (v61 <= 1 && v208)
  {
    goto LABEL_262;
  }

  if (!v208)
  {
    goto LABEL_344;
  }

LABEL_342:
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276F4F5A8();
  }

LABEL_344:

  v51 = v369[0];
  v54 = MEMORY[0x277D81490];
  v234 = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v335, v369[0]);
LABEL_281:
  *(v23 + 8) = v234 - *v23;
  v236 = v51 - v26;
  if (v51 <= v26)
  {
    v238 = 0;
    a2[30] = 0;
  }

  else
  {
    a2[30] = objc_msgSend_charIndexMappedToStorage_(*(a1 + 56), v235, v51 - 1);
    v238 = objc_msgSend_characterAtIndex_(*(a1 + 56), v237, v51 - 1);
  }

  *(a2 + 116) = v238;
  if (v51 >= *(a1 + 48))
  {
    v236 -= *(*(a1 + 216) + 80) != 0;
  }

  sub_276DC74EC(a1, a2, v26, v236);
  if ((*(a2 + 66) & 1) == 0)
  {
    sub_276D6CB4C(v23, v239, v240);
  }

  v241 = sub_276DFC9F4(*(a1 + 216), v23);
  *&v365 = 0;
  v363.location = 0;
  sub_276DC76A8(a1, a2, &v365, &v363.location);
  sub_276DFD014(*(a1 + 216), v23);
  v242 = *&v365;
  if (v241 >= *&v365)
  {
    v242 = v241;
  }

  if (v242 > 0.0)
  {
    v243 = *(v23 + 144);
    v244 = v242 - (*(a2 + 25) + v243);
    if (v244 > 0.0)
    {
      *(v23 + 144) = v243 + v244;
      TSURectWithOriginAndSize();
      *(v23 + 72) = v245;
      *(v23 + 80) = v246;
      *(v23 + 88) = v247;
      *(v23 + 96) = v248;
      TSURectWithOriginAndSize();
      *(v23 + 40) = v249;
      *(v23 + 48) = v250;
      *(v23 + 56) = v251;
      *(v23 + 64) = v252;
    }
  }

  v253 = *&v363.location;
  if (*&v363.location > 0.0)
  {
    v254 = *(v23 + 136);
    v255 = *(v23 + 152);
    v256 = v254 + v255;
    v257 = *&v363.location + v254;
    *(v23 + 136) = v257;
    v258 = fmax(v255 - v253, 0.0);
    *(v23 + 152) = v258;
    if (v257 + v258 - v256 > 0.0)
    {
      TSURectWithOriginAndSize();
      *(v23 + 72) = v259;
      *(v23 + 80) = v260;
      *(v23 + 88) = v261;
      *(v23 + 96) = v262;
      TSURectWithOriginAndSize();
      *(v23 + 40) = v263;
      *(v23 + 48) = v264;
      *(v23 + 56) = v265;
      *(v23 + 64) = v266;
    }
  }

  sub_276DC7D34(a1, v359, v23);
  if (*(v23 + 24) < 0)
  {
    p_location = &v54->location;
  }

  else
  {
    p_location = v23;
  }

  v270 = (*p_location + p_location[1]);
  v271 = objc_msgSend_range(*(a1 + 16), v267, v268);
  if (v270 == &v272[v271])
  {
    *(v23 + 24) |= 0x200000uLL;
  }

  if (*(v23 + 144) == -3.40282347e38)
  {
    v273 = MEMORY[0x277D81150];
    v274 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v272, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
    v276 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v275, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v273, v277, v274, v276, 1687, 0, "Bad leading");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v278, v279);
  }

  if (!sub_276D648AC(v23) && (*(a2 + 66) & 1) == 0)
  {
    v281 = MEMORY[0x277D81150];
    v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v280, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
    v284 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v281, v285, v282, v284, 1688, 0, "Bad lineRef count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v286, v287);
  }

  if (v51 > *(a1 + 48))
  {
    v288 = MEMORY[0x277D81150];
    v289 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v280, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
    v291 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v290, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v288, v292, v289, v291, 1689, 0, "Bad endCharIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v293, v294);
  }

  objc_opt_class();
  v296 = TSUDynamicCast();
  v297 = *(v23 + 24);
  if (!v26)
  {
    v298 = v297 < 0 ? v54 : v23;
    if (v298->location != *(a1 + 32))
    {
      v299 = MEMORY[0x277D81150];
      v360 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v295, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
      v301 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v300, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      if (*(v23 + 24) < 0)
      {
        v302 = v54;
      }

      else
      {
        v302 = v23;
      }

      v358 = v301;
      v356 = NSStringFromRange(*v302);
      v354 = NSStringFromRange(*(a1 + 32));
      v370.location = objc_msgSend_charRangeRemappedFromStorage_(*(a1 + 56), v303, *(a1 + 32), *(a1 + 40));
      v304 = NSStringFromRange(v370);
      v352 = v299;
      v350 = objc_msgSend_spaceCharIndexCount(v296, v305, v306);
      v309 = objc_msgSend_bidiCharIndexCount(v296, v307, v308);
      if (objc_msgSend_hasTrackedChanges(*(a1 + 16), v310, v311))
      {
        v312 = @"YES";
      }

      else
      {
        v312 = @"NO";
      }

      v313 = v312;
      if (objc_msgSend_hasHiddenTextAtCharIndex_(*(a1 + 16), v314, *(a1 + 32)))
      {
        v315 = @"YES";
      }

      else
      {
        v315 = @"NO";
      }

      v316 = v315;
      if (objc_msgSend_hasDeletedTextAtCharIndex_range_(*(a1 + 16), v317, *(a1 + 32), 0))
      {
        v318 = @"YES";
      }

      else
      {
        v318 = @"NO";
      }

      v362 = v318;
      if (objc_msgSend_hasPartitionableAttachmentAtStartOfTextRange_(*(a1 + 16), v319, *(a1 + 32), *(a1 + 40)))
      {
        v320 = @"YES";
      }

      else
      {
        v320 = @"NO";
      }

      v321 = v320;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v352, v322, v360, v358, 1701, 0, "First line should lie at the beginning of the paragraph: %{public}@ vs %{public}@ (%{public}@); ruby: %lu, bidi: %lu, CT: %{public}@, hid: %{public}@, del: %{public}@, part: %{public}@", v356, v354, v304, v350, v309, v313, v316, v362, v321);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v323, v324);
      v54 = MEMORY[0x277D81490];
      v297 = *(v23 + 24);
    }
  }

  if (v51 == *(a1 + 48))
  {
    v325 = v297 < 0 ? v54 : v23;
    if (v325->location + v325->length != *(a1 + 40) + *(a1 + 32))
    {
      v326 = MEMORY[0x277D81150];
      v327 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v295, "TSWPCharIndex TSWPCoreTextTypesetter::layOutLine(TSWPTypesetterParamBlock *const)");
      v329 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v328, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v326, v330, v327, v329, 1702, 0, "Last line should reach the end of the paragraph");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v331, v332);
      v297 = *(v23 + 24);
    }
  }

  if (v297 < 0)
  {
    v333 = &v54->location;
  }

  else
  {
    v333 = v23;
  }

  v15 = *v333 + v333[1];

  return v15;
}

void sub_276DC2610(uint64_t a1, double *a2, double *a3, double *a4)
{
  v7 = *a2;
  v8 = a2[5] & 0x14;
  v9 = *(*(a2 + 28) + 24);
  v10 = a2[1];
  v11 = *(*a2 + 456);
  v25.origin.y = *(*a2 + 464);
  v25.size.width = *(*a2 + 472);
  v25.size.height = *(*a2 + 480);
  v25.origin.x = v11;
  MaxX = CGRectGetMaxX(v25);
  v13 = a2[1];
  v14 = a2[3];
  if ((v9 & 0x1000) != 0)
  {
    if ((*(*&v7 + 348) & 1) == 0 && *(*&v7 + 448) == 1 && (*(*&v7 + 449) & 1) == 0)
    {
      *a4 = v14 - *(*&v7 + 232);
    }

    v15 = *(a2 + 170);
    if ((v15 & 1) == 0)
    {
      v17 = fmax(fmin(*a3, *a4 + -18.0), 0.0);
      *a3 = v17;
      if (v8 == 4)
      {
LABEL_15:
        v15 = 0;
        goto LABEL_17;
      }

      v15 = 0;
      *a4 = fmin(fmax(*a4, v17 + 18.0), v14);
    }
  }

  else
  {
    if ((*(*&v7 + 348) & 1) == 0 && *(*&v7 + 448) == 1 && (*(*&v7 + 449) & 1) == 0)
    {
      *a3 = *(*&v7 + 232);
    }

    v15 = *(a2 + 170);
    if ((v15 & 1) == 0)
    {
      v16 = fmin(fmax(*a4, *a3 + 18.0), v14);
      *a4 = v16;
      if (v8 != 4)
      {
        v15 = 0;
        *a3 = fmax(fmin(*a3, v16 + -18.0), 0.0);
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

LABEL_17:
  v18 = v11 - v10;
  v19 = MaxX - v13;
  v20 = *(*&v7 + 240);
  if (*(*&v7 + 350) == 1)
  {
    v21 = *a4 - v20;
    *a4 = v21;
    if (v15)
    {
      goto LABEL_30;
    }

    v22 = *a3;
    if (v8 != 4)
    {
      *a4 = fmin(fmax(v21, v22 + 18.0), v14);
      goto LABEL_30;
    }

LABEL_23:
    if (v18 >= v22)
    {
      v23 = v11 - v10;
    }

    else
    {
      v23 = v22;
    }

    *a3 = v23;
    if (*a4 < v19)
    {
      v19 = *a4;
    }

    *a4 = v19;
    goto LABEL_35;
  }

  v22 = v20 + *a3;
  *a3 = v22;
  if ((v15 & 1) == 0)
  {
    if (v8 == 4)
    {
      goto LABEL_23;
    }

    *a3 = fmax(fmin(v22, *a4 + -18.0), 0.0);
  }

LABEL_30:
  v24 = *a3;
  if (v18 >= *a3)
  {
    v24 = v11 - v10;
  }

  *a3 = v24;
  if (*a4 < v19)
  {
    v19 = *a4;
  }

  *a4 = v19;
  if (v8 == 4)
  {
LABEL_35:
    *a4 = *a3 + a2[6];
  }
}

void sub_276DC284C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double *a5, double *a6)
{
  v235[2] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = sub_276DD2980(*a2);
  v12 = objc_msgSend_labelTypeForLevel_(v10, v11, *(v9 + 208));

  v13 = sub_276DD2980(v9);
  v15 = objc_msgSend_valueForProperty_(v13, v14, 181);

  v221 = v15;
  if (v15)
  {
    objc_msgSend_objectAtIndexedSubscript_(v15, v16, *(v9 + 208));
  }

  else
  {
    objc_msgSend_listLabelGeometry(TSWPListLabelGeometry, v16, v17);
  }
  v224 = ;
  v223 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(*(a1 + 56), v18, a3, 0);
  if ((v12 - 2) < 2)
  {
    v230 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = sub_276DD2980(v9);
    v21 = objc_msgSend_valueForProperty_(v19, v20, 184);

    v216 = v21;
    if (v21)
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, *(v9 + 208));
      v27 = objc_msgSend_intValue(v24, v25, v26);
    }

    else
    {
      v27 = objc_msgSend_defaultLabelNumberType(TSWPListStyle, v22, v23);
    }

    v210 = v27;
    if (v12 == 2)
    {
      v36 = sub_276DD2980(v9);
      v38 = objc_msgSend_valueForProperty_(v36, v37, 183);

      if (v38)
      {
        objc_msgSend_objectAtIndexedSubscript_(v38, v39, *(v9 + 208));
      }

      else
      {
        objc_msgSend_defaultLabelString(TSWPListStyle, v39, v40);
      }
      v222 = ;
      v211 = *(a1 + 27);

      LODWORD(v41) = 0;
    }

    else
    {
      v41 = *(a1 + 27) != 1 || sub_276D3AD50(v27);
      TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v229, (v9 + 24));
      v222 = sub_276DC98D8(a1, v9, v48, *(v9 + 208), v41, &v230);
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v229);
      v211 = 0;
    }

    if (!v222)
    {
      isTateChuYoko_baselineOffset = 0;
LABEL_79:

      goto LABEL_80;
    }

    v51 = sub_276DD2980(v9);
    v213 = objc_msgSend_valueForProperty_(v51, v52, 16);

    v53 = sub_276DD2950(v9);
    v54 = sub_276DD2960(v9);
    v57 = objc_msgSend_scaleTextPercent(v54, v55, v56);
    v58 = sub_276D39248(v53, v223, v213, v224, v57);

    v59 = sub_276DD2980(v9);
    v235[0] = v59;
    v60 = sub_276DD2950(v9);
    v235[1] = v60;
    v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, v235, 2);
    v63 = TSWPResolvePropertyForStyles(v62, 187);

    if (!v63)
    {
      v65 = MEMORY[0x277D81150];
      v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "void TSWPCoreTextTypesetter::pCalculateListLabel(const TSWPTypesetterParamBlock *const, const TSWPCharIndex, BOOL &, CGFloat &, CGFloat &) const");
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v68, v214, v67, 2079, 0, "Expect label color, or paragraph color as the default.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
      v63 = objc_msgSend_magentaColor(MEMORY[0x277D81180], v71, v72);
    }

    v73 = sub_276DD2AE8(v9);
    v74 = v73 == 0;

    if (v74)
    {
      v78 = v63;
    }

    else
    {
      v77 = sub_276DD2AE8(v9);

      v78 = v77;
    }

    v215 = v78;
    v80 = objc_msgSend_CGColor(v78, v75, v76);
    v228 = *(v9 + 350);
    settings.spec = kCTParagraphStyleSpecifierBaseWritingDirection;
    settings.valueSize = 1;
    settings.value = &v228;
    v81 = CTParagraphStyleCreate(&settings, 1uLL);
    v82 = *MEMORY[0x277CC49C0];
    v232[0] = *MEMORY[0x277CC4838];
    v232[1] = v82;
    v233[0] = v58;
    v233[1] = v80;
    v232[2] = *MEMORY[0x277CC49F8];
    v233[2] = v81;
    v212 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v83, v233, v232, 3);
    CFRelease(v81);
    CFRelease(v58);
    v84 = objc_alloc(MEMORY[0x277CCAB48]);
    attrString = objc_msgSend_initWithString_attributes_(v84, v85, v222, v212);
    if (v12 != 3)
    {
      goto LABEL_77;
    }

    v88 = objc_msgSend_length(v222, v86, v87);
    v89 = v88;
    v90 = v88 - 2;
    v91 = v41 ? v88 - 2 : v88;
    if ((*(a1 + 27) & 1) == 0)
    {
      goto LABEL_77;
    }

    v92 = sub_276DD2950(v9);
    FontForStyle = TSWPFastCreateFontForStyle(0, v92, 0x64uLL);

    TSWPFontGetLineHeight();
    v95 = v94;
    CFRelease(FontForStyle);
    v99 = objc_msgSend_mutableCopy(attrString, v96, v97);
    v209 = v41;
    if (v91)
    {
      sub_276DFD928(attrString, v41, v91);
    }

    if (!v41)
    {
      if (sub_276D3AD5C(v210))
      {
        objc_msgSend_addAttribute_value_range_(attrString, v141, *MEMORY[0x277CC4AC8], MEMORY[0x277CBEC38], v41, v89);
      }

      else
      {
        v144 = objc_msgSend_mutableCopy(attrString, v141, v142);
        if (v89 > v41)
        {
          v145 = 0;
          do
          {
            objc_msgSend_replaceCharactersInRange_withString_(v144, v143, v145++, 1, @"0");
          }

          while (v89 != v145);
        }

        v146 = CTLineCreateWithAttributedString(v144);
        v148 = v146;
        if (v146)
        {
          if (CTLineGetTypographicBounds(v146, 0, 0, 0) >= v95 || v91 >= 6)
          {
            objc_msgSend_addAttribute_value_range_(attrString, v149, *MEMORY[0x277CC4AC8], MEMORY[0x277CBEC38], v209, v89);
            sub_276DC9A2C(attrString, v209, v89);
          }

          else
          {
            v211 = 1;
          }

          CFRelease(v148);
        }

        else
        {
          v150 = MEMORY[0x277D81150];
          v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "void TSWPCoreTextTypesetter::pCalculateListLabel(const TSWPTypesetterParamBlock *const, const TSWPCharIndex, BOOL &, CGFloat &, CGFloat &) const");
          v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v154, v151, v153, 2188, 0, "invalid nil value for '%{public}s'", "tmpLineRef");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v155, v156);
        }
      }

      goto LABEL_77;
    }

    v100 = *MEMORY[0x277CC4AC8];
    objc_msgSend_addAttribute_value_range_(attrString, v98, *MEMORY[0x277CC4AC8], MEMORY[0x277CBEC38], v41, v90);
    if (v90 > 4)
    {
      v106 = 0;
      v107 = attrString;
      attrString = v99;
    }

    else
    {
      v102 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v101, v90);
      objc_msgSend_addAttribute_value_range_(attrString, v103, *MEMORY[0x277CC49D8], v102, v41, v90);

      v104 = CTLineCreateWithAttributedString(attrString);
      v106 = v104;
      if (!v104)
      {
        goto LABEL_63;
      }

      v107 = CTLineGetGlyphRuns(v104);
      if (objc_msgSend_count(v107, v108, v109) == 3)
      {
        v111 = objc_msgSend_objectAtIndexedSubscript_(v107, v110, 1);

        descent = 0.0;
        ascent = 0.0;
        leading = 0.0;
        v236.location = 0;
        v236.length = 0;
        TypographicBounds = CTRunGetTypographicBounds(v111, v236, &ascent, &descent, &leading);
        if (TypographicBounds <= ascent + descent || vabdd_f64(TypographicBounds, ascent + descent) < (ascent + descent) * 0.1)
        {

          goto LABEL_78;
        }

        CFRelease(v106);
        v208 = v99;

        v106 = 0;
        attrString = v208;
      }
    }

LABEL_63:
    objc_msgSend_addAttribute_value_range_(attrString, v105, v100, MEMORY[0x277CBEC38], v209, v90);
    sub_276DC9A2C(attrString, v209, v90);

    if (!v106)
    {
LABEL_77:
      v106 = CTLineCreateWithAttributedString(attrString);
    }

LABEL_78:
    objc_msgSend_baselineOffset(v224, v113, v114);
    v158 = v157;
    v159 = [TSWPListLabel alloc];
    isTateChuYoko_baselineOffset = objc_msgSend_initWithType_labelString_textLine_listNumber_isTateChuYoko_baselineOffset_(v159, v160, v12, v222, v106, v230, v211 & 1, v158);
    CFRelease(v106);

    goto LABEL_79;
  }

  if (v12 != 1)
  {
    goto LABEL_99;
  }

  v28 = sub_276DD2980(v9);
  v30 = objc_msgSend_valueForProperty_(v28, v29, 182);

  v31 = *(v9 + 208);
  if (v31 >= objc_msgSend_count(v30, v32, v33))
  {
    v35 = 0;
  }

  else
  {
    v35 = objc_msgSend_objectAtIndexedSubscript_(v30, v34, *(v9 + 208));
  }

  v42 = sub_276DD29A0(v9);

  if (v35 == v42)
  {
    v47 = sub_276DD2990(v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v43, v44);
      v47 = objc_msgSend_providerForData_shouldValidate_(v45, v46, v35, 1);
    }

    else
    {
      v47 = 0;
    }

    if (objc_msgSend_isError(v47, v43, v44))
    {
      if (qword_280A58378 != -1)
      {
        sub_276F4F5D0();
      }

      v115 = qword_280A58370;

      v47 = v115;
    }

    sub_276DD29A8(v9, v35);
    sub_276DD2998(v9, v47);
  }

  if (v47 && (objc_msgSend_isError(v47, v49, v50) & 1) == 0)
  {
    v116 = sub_276DD2950(v9);
    v117 = sub_276DD2960(v9);
    v120 = objc_msgSend_scaleTextPercent(v117, v118, v119);
    v121 = sub_276D39394(v116, v223, v224, v120);

    objc_msgSend_naturalSize(v47, v122, v123);
    v128 = v126;
    v129 = v127;
    if (v127 <= 0.0)
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "void TSWPCoreTextTypesetter::pCalculateListLabel(const TSWPTypesetterParamBlock *const, const TSWPCharIndex, BOOL &, CGFloat &, CGFloat &) const");
      v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v134, v131, v133, 2031, 0, "TSDImageProvider has an illegal height (zero or negative)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136);
    }

    else
    {
      v128 = v126 * (v121 / v127);
      v129 = v121;
    }

    objc_msgSend_baselineOffset(v224, v124, v125);
    v138 = v137;
    v139 = [TSWPListLabel alloc];
    isTateChuYoko_baselineOffset = objc_msgSend_initWithType_imageProvider_size_baselineOffset_(v139, v140, 1, v47, v128, v129, v138);
  }

  else
  {
    isTateChuYoko_baselineOffset = 0;
  }

LABEL_80:
  if (isTateChuYoko_baselineOffset)
  {
    v161 = sub_276DD2980(v9);
    v231[0] = v161;
    v162 = sub_276DD2950(v9);
    v231[1] = v162;
    v164 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v163, v231, 2);
    v165 = TSWPResolvePropertyForStyles(v164, 40);

    v168 = objc_msgSend_null(MEMORY[0x277CBEB68], v166, v167);
    LODWORD(v161) = v165 == v168;

    if (v161)
    {
      v170 = MEMORY[0x277D81150];
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v169, "void TSWPCoreTextTypesetter::pCalculateListLabel(const TSWPTypesetterParamBlock *const, const TSWPCharIndex, BOOL &, CGFloat &, CGFloat &) const");
      v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v170, v174, v171, v173, 2223, 0, "TSWPResolvePropertyForStyles should not return NSNull.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v175, v176);
    }

    if (v165)
    {
      objc_msgSend_setShadow_(isTateChuYoko_baselineOffset, v169, v165);
    }

    v177 = *(v9 + 232);
    v178 = sub_276DD2980(v9);
    v180 = objc_msgSend_valueForProperty_(v178, v179, 177);
    v182 = objc_msgSend_objectAtIndexedSubscript_(v180, v181, *(v9 + 208));
    objc_msgSend_doubleValue(v182, v183, v184);
    v186 = v185;

    if (*(a1 + 27) == 1 && objc_msgSend_labelType(isTateChuYoko_baselineOffset, v187, v188) == 1)
    {
      objc_msgSend_height(isTateChuYoko_baselineOffset, v187, v188);
    }

    else
    {
      objc_msgSend_width(isTateChuYoko_baselineOffset, v187, v188);
    }

    v190 = v189;
    v191 = *(a2 + 24);
    v192 = *(a2 + 8);
    v193 = *(v9 + 456);
    v237.origin.y = *(v9 + 464);
    v237.size.width = *(v9 + 472);
    v237.size.height = *(v9 + 480);
    v237.origin.x = v193;
    MaxX = CGRectGetMaxX(v237);
    v197 = v177 + v186;
    if (*(v9 + 350) == 1)
    {
      v198 = MaxX;
      v199 = *(a2 + 8);
      objc_msgSend_setIsLabelRTL_(isTateChuYoko_baselineOffset, v194, 1);
      v200 = v191 - (v198 - v199);
      v201 = fmax(fmin(v197, v191 - *a5 + -20.0), v200);
      objc_msgSend_setLabelIndent_(isTateChuYoko_baselineOffset, v202, v203, v201 - v200);
      v206 = fmax(*(v9 + 232) + *(v9 + 240), v190 + v201);
      v207 = *a6;
      if ((*(a2 + 40) & 0x14) != 4)
      {
        v207 = v191;
      }

      *a6 = v207 - v206;
    }

    else
    {
      v201 = fmax(fmin(v197, *a6 + -20.0), v193 - v192);
      objc_msgSend_setLabelIndent_(isTateChuYoko_baselineOffset, v194, v195, v201 - (v193 - v192));
      v206 = fmax(*(v9 + 232) + *(v9 + 240), v190 + v201);
      *a5 = v206;
    }

    objc_msgSend_setLabelTypographicExtent_(isTateChuYoko_baselineOffset, v204, v205, v206 - v201);
    sub_276D6BD34(*(a2 + 224), isTateChuYoko_baselineOffset);
    if (*a5 > *a6 + -10.0)
    {
      *a4 = 0;
      if (*(a2 + 170) == 1)
      {
        if (*(a1 + 48))
        {
          sub_276D6BD34(*(a2 + 224), 0);
        }
      }
    }
  }

LABEL_99:
}

void sub_276DC3990(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v12 = sub_276D6B934(a3);
  v13 = sub_276DCADE8(a6, v12, a2, a3);
  if (a4)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v16 = objc_msgSend_initWithCapacity_(v14, v15, 2);
    v17 = CTFontCreateWithName(@"Helvetica", 25.1950798, 0);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v18, v17, *MEMORY[0x277CC4838]);
    CFRelease(v17);
    v19 = sub_276DD2960(a2);
    v22 = objc_msgSend_storage(v19, v20, v21);
    v23 = *a3;
    v26 = objc_msgSend_scaleTextPercent(v19, v24, v25);
    v29 = objc_msgSend_styleProvider(v19, v27, v28);
    FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider = objc_msgSend_createFontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider_(v22, v30, v23, v26, 0, v29);

    if (FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v16, v32, FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider, @"TSWPUnadjustedFont");
      CFRelease(FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider);
    }

    v33 = objc_alloc(MEMORY[0x277CCA898]);
    v35 = objc_msgSend_initWithString_attributes_(v33, v34, @"\n", v16);
    v36 = CTLineCreateWithAttributedString(v35);
    v37 = MEMORY[0x277D81490];
    sub_276DD1DC0(v54, v36, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 0, v13, 0.0);
    sub_276D645D4(a3, v54);
    sub_276DD1EBC(v54);
    v39 = objc_msgSend_highlightsForSelectionRange_requireComment_(*(a1 + 16), v38, *a3, 1, 0);
    v42 = objc_msgSend_count(v39, v40, v41);
    if (v42)
    {
      sub_276DC97B8(7.0, a6, v42, a3, v39);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    v43 = *(a3 + 24);
    if (v43 < 0)
    {
      v44 = v37;
    }

    else
    {
      v44 = a3;
    }

    if (*(v44 + 8))
    {
      *(a3 + 24) = v43 | 0x800;
      sub_276DCB5D8(a1, a2, a3, a4, 0, 0.0);
    }

    v46 = *(a3 + 24);
  }

  else
  {
    if (qword_280A58358 != -1)
    {
      sub_276F4F5E4();
    }

    v47 = 0.0;
    sub_276DD1DC0(v54, qword_280A58350, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 0, v13, 0.0);
    sub_276D645D4(a3, v54);
    sub_276DD1EBC(v54);
    if (a5)
    {
      v48 = sub_276D6492C(a3);
      if (v48)
      {
        v49 = *(a2 + 350);

        if (v49 == 1)
        {
          v50 = sub_276D6492C(a3);
          objc_msgSend_labelTypographicExtent(v50, v51, v52);
          v47 = v53 + 0.0;
        }
      }
    }

    *(a3 + 240) = v47 + a6;
    v46 = *(a3 + 24) & 0xFFFFFFFFFFFFF7FFLL;
    *(a3 + 24) = v46;
  }

  *(a3 + 24) = v46 | 0x4000;
  sub_276DC935C(a1, a3, v45);
}

unint64_t sub_276DC3D24(uint64_t a1, unint64_t a2)
{
  v3 = sub_276DFD384(*(a1 + 216));
  if (objc_msgSend_length(v3, v4, v5) > a2)
  {
    v8 = objc_msgSend_string(v3, v6, v7);
    v10 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v8, v9, a2);
    v12 = v11;

    a2 = v10 + v12;
  }

  return a2;
}

uint64_t sub_276DC3DB8(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v6 = sub_276DC41F4(a1, *a2);
  v7 = *a2;
  if (*a2 != *(a1 + 48))
  {
    v9 = v6;
    v44 = *MEMORY[0x277D81490];
    objc_opt_class();
    v11 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v10, v7, 7, &v44);
    v12 = TSUDynamicCast();

    if (v12)
    {
      v43 = v44;
      v13 = v12;
      v14 = v13;
      v15 = v43;
      if (v7 + 1 == *(&v43 + 1) + v43)
      {
        v7 = sub_276DC3D24(a1, v7);
        objc_opt_class();
        v17 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v16, v7, 7, &v43);
        v18 = TSUDynamicCast();

        v15 = v43;
      }

      else
      {
        v18 = v13;
      }

      v19 = v7;
      if (v18)
      {
        v19 = v7;
        if (v7 == v15)
        {
          v19 = sub_276DC3D24(a1, v15);
        }
      }
    }

    else
    {
      v19 = v7;
    }

    v43 = *MEMORY[0x277D81490];
    objc_opt_class();
    v21 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v20, v9, 7, &v43);
    v22 = TSUDynamicCast();

    if (!v22)
    {
LABEL_21:
      v29 = sub_276DCBE94(a1, v9, v23);
      v31 = sub_276DCBE94(a1, v19, v30);
      if (a3)
      {
        *a3 = *MEMORY[0x277D81490];
      }

      v32 = IsParagraphBreakingCharacter(v29);
      if (v29 == 8232)
      {
        v34 = 1;
      }

      else
      {
        v34 = v32;
      }

      if ((v34 & 1) != 0 || (sub_276D36C50(v29, v33) & 1) == 0 && (sub_276D36D74(v31, v35) & 1) == 0 && sub_276D36FFC(v29, v31))
      {
        if (a3)
        {
          *a3 = v44;
        }

        if (!v12 || (sub_276DFD1FC(*(a1 + 216), v12) & 1) != 0 || v7 <= v44 || v7 >= *(&v44 + 1) + v44)
        {
LABEL_33:
          *a2 = v7;
          v8 = 1;
LABEL_44:

          return v8;
        }
      }

      else if (IsWhitespaceCharacter(v29, v35) && (IsWhitespaceCharacter(v31, v36) & 1) == 0)
      {
        v38 = sub_276D36B00(*(*(a1 + 64) + 2 * v9), v37);
        v40 = v9 ? v38 : 1;
        if ((v40 & 1) == 0)
        {
          while (IsWhitespaceCharacter(*(*(a1 + 64) + 2 * v9), v39))
          {
            if (sub_276D36B00(*(*(a1 + 64) + 2 * v9), v42))
            {
              goto LABEL_33;
            }

            v9 = sub_276DC41F4(a1, v9);
            v8 = 0;
            if (!v9)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v8 = 0;
      goto LABEL_44;
    }

    v24 = v43;
    if (v9 == v43)
    {
      v25 = sub_276DC41F4(a1, v9);
      objc_opt_class();
      v27 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(a1 + 56), v26, v25, 7, &v43);
      v28 = TSUDynamicCast();

      if (!v28)
      {
        v22 = 0;
LABEL_20:
        v7 = v9;
        v9 = v25;
        goto LABEL_21;
      }

      v24 = v43;
      v22 = v28;
    }

    else
    {
      v25 = v9;
      v9 = v7;
    }

    if (v25 + 1 == *(&v43 + 1) + v24)
    {
      v7 = v9;
      v9 = sub_276DC41F4(a1, v25);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return 1;
}

uint64_t sub_276DC41F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_276DFD384(*(a1 + 216));
  v6 = v3;
  if (a2)
  {
    v7 = objc_msgSend_string(v3, v4, v5);
    a2 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v7, v8, a2 - 1);
  }

  return a2;
}

uint64_t sub_276DC4274(CFIndex *a1, const char *a2, uint64_t a3)
{
  v6 = &a2[a3];
  if (&a2[a3] > a1[6])
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSWPCoreTextTypesetter::pCanBreakLineInRange(NSRange)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 2429, 0, "Bad localMaxCharIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = sub_276DC9B98();
  if (objc_msgSend_characterIsMember_(v14, v15, *(a1[8] + 2 * v6 - 2)))
  {
    v17 = 1;
  }

  else
  {
    v18 = a1[25];
    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v22 = objc_msgSend_initWithCharactersNoCopy_length_freeWhenDone_(v20, v21, a1[8], a1[6], 0);
      v27.length = a1[6];
      v27.location = 0;
      v23 = CFStringTokenizerCreate(0, v22, v27, 3uLL, 0);
      while (CFStringTokenizerAdvanceToNextToken(v23))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v23);
        objc_msgSend_addIndex_(v19, CurrentTokenRange.length, CurrentTokenRange.length + CurrentTokenRange.location - 1);
      }

      CFRelease(v23);
      v25 = a1[25];
      a1[25] = v19;

      v18 = a1[25];
    }

    v17 = objc_msgSend_intersectsIndexesInRange_(v18, v16, a2, a3);
  }

  return v17;
}

BOOL sub_276DC444C(uint64_t a1, CFIndex a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  v12 = sub_276DC9CF0(a1, (a2 + a3), a3);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v13, v12);
  v17 = objc_msgSend_attributes(v14, v15, v16);
  sub_276D6C514(a6, v17, a4);

  v19 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 96), v18, v12);
  v22 = objc_msgSend_ctFont(v19, v20, v21);

  if ((a4 - 0x10000) >> 20)
  {
    v24 = 1;
    LOWORD(v23) = a4;
  }

  else
  {
    v23 = ((a4 - 0x10000) >> 10) | 0xFFFFD800;
    characters[1] = a4 & 0x3FF | 0xDC00;
    v24 = 2;
  }

  characters[0] = v23;
  CTFontGetGlyphsForCharacters(v22, characters, glyphs, v24);
  CTFontGetAdvancesForGlyphs(v22, kCTFontOrientationDefault, glyphs, &advances, 1);
  v26 = sub_276DBC9FC(a1, v25);
  v45.location = a2;
  v45.length = a3;
  Line = CTTypesetterCreateLine(v26, v45);
  if (Line)
  {
    v29 = Line;
    TypographicBounds = CTLineGetTypographicBounds(Line, 0, 0, 0);
    TruncatedLine = CTLineCreateTruncatedLine(v29, *a5 - advances.width, kCTLineTruncationEnd, 0);
    if (TruncatedLine)
    {
      v32 = TruncatedLine;
      v33 = CTLineGetTypographicBounds(TruncatedLine, 0, 0, 0);
      *a5 = v33;
      CFRelease(v32);
    }

    else
    {
      v33 = NAN;
    }

    CFRelease(v29);
  }

  else
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "BOOL TSWPCoreTextTypesetter::pRoomForHyphen(CFRange, UTF32Char, CGFloat &, TSWPLineFragment *const)");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 3891, 0, "CTTypesetterCreateLine returned nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
    TypographicBounds = 0.0;
    v33 = NAN;
  }

  return v33 == TypographicBounds;
}

uint64_t sub_276DC46BC(uint64_t a1, NSRange *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*(a3 + 408) < a5)
  {
    v7 = a2;
    location = a2->location;
    if (a2->location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = a2->length;
      v10 = length + location;
      if ((length + location) > location)
      {
        v14 = 0;
        while (1)
        {
          v15 = v7;
          v59 = 0;
          v16 = sub_276DD2AF8(a3);

          if (!v16)
          {
            v18 = MEMORY[0x277D81150];
            v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "TSWPHyphenationResult TSWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const TSWPLayoutState *, const CGFloat, const CGFloat, TSWPLineFragment *const)");
            v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 3808, 0, "invalid nil value for '%{public}s'", "state->hyphenationLocale()");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
          }

          v25 = *(a1 + 56);
          v26 = sub_276DD2AF8(a3);
          v28 = objc_msgSend_hyphenationLocationBeforeIndex_inRange_locale_hyphenChar_(v25, v27, v10, location, length, v26, &v59);

          v29 = v15->location;
          v30 = v10 <= v28 || v28 <= v29;
          if (v30)
          {
            break;
          }

          v7 = v15;
          if (v28 != -1)
          {
            if (v28 < location || v28 - location >= length)
            {
              v33 = MEMORY[0x277D81150];
              v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "TSWPHyphenationResult TSWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const TSWPLayoutState *, const CGFloat, const CGFloat, TSWPLineFragment *const)");
              v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 3815, 0, "Bad hyphenation result");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
              return 0xFFFFFFFFLL;
            }

            v60 = a5;
            if (sub_276DC444C(a1, v29, v28 - v29, v59, &v60, a4))
            {
              v40 = v60;
              v41 = v15->location;
              v42 = sub_276DBC9FC(a1, v31);
              v43 = MEMORY[0x277CA1F00](v42, v15->location, v40, a6);
              v45 = v15->location;
              if (&v41[v43] >= v28)
              {
                v46 = v7->location;
              }

              else
              {
                v46 = &v41[v43];
              }

              if (v46 > v45)
              {
                v47 = sub_276DBC9FC(a1, v44);
                v61.location = v45;
                v61.length = v46 - v45;
                Line = CTTypesetterCreateLine(v47, v61);
                if (Line)
                {
                  v49 = Line;
                  if (a5 - CTLineGetTypographicBounds(Line, 0, 0, 0) < *(a3 + 408))
                  {
                    v7->length = v46 - v7->location;
                    CFRelease(v49);
                    return 0xFFFFFFFFLL;
                  }

                  CFRelease(v49);
                }
              }

              v30 = v28 <= v7->location;
              v7->length = v28 - v7->location;
              if (!v30)
              {
                return 1;
              }

              v50 = MEMORY[0x277D81150];
              v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "TSWPHyphenationResult TSWPCoreTextTypesetter::pHyphenateLocalRange(CFRange &, const TSWPLayoutState *, const CGFloat, const CGFloat, TSWPLineFragment *const)");
              v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
              v54 = NSStringFromRange(*v7);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v53, 3855, 0, "Bad hyphenation result range: %{public}@ vs %lu", v54, v28);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
              if ((v7->length & 0x8000000000000000) != 0)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return 1;
              }
            }
          }

          result = 0xFFFFFFFFLL;
          if (v14 <= 0x12)
          {
            ++v14;
            v10 = v28;
            if (v28 > location)
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_276DC4B38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v492 = *MEMORY[0x277D85DE8];
  result = sub_276D648AC(a2);
  if (result)
  {
    return result;
  }

  v445 = a4;
  v470 = a1;
  v436 = a3;
  v489 = 0.0;
  v490 = 0.0;
  v444 = a2;
  sub_276D6C4CC(a2, &v490, &v489);
  if (v489 - v490 <= 32000.0)
  {
    v9 = v489 - v490;
  }

  else
  {
    v9 = 32000.0;
  }

  if (sub_276D69A60(a2))
  {
    *v487 = 0;
    v12 = sub_276D6C58C(a2, v487, v11);
    if ((*v487 - 0x10000) >> 20)
    {
      v14 = 1;
      LOWORD(v13) = *v487;
    }

    else
    {
      v13 = ((*v487 - 0x10000) >> 10) | 0xFFFFD800;
      WORD1(buffer[0].a) = *v487 & 0x3FF | 0xDC00;
      v14 = 2;
    }

    LOWORD(buffer[0].a) = v13;
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_msgSend_initWithCharacters_length_(v15, v16, buffer, v14);
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = objc_msgSend_initWithString_attributes_(v18, v19, v17, v12);
    v21 = CTLineCreateWithAttributedString(v20);
    TypographicBounds = CTLineGetTypographicBounds(v21, 0, 0, 0);
    cf = v21;
  }

  else
  {
    cf = 0;
    TypographicBounds = 0.0;
  }

  if (TSWPParagraphEnumerator::paragraphTextRange((v436 + 24), v10) != *(v444 + 16))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 2945, 0, "line fragment isn't from the current paragraph");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  if (*(v444 + 24) < 0)
  {
    v30 = MEMORY[0x277D81490];
  }

  else
  {
    v30 = v444;
  }

  v31 = objc_msgSend_charRangeMappedFromStorage_(*(v470 + 56), v22, *v30, v30[1]);
  v34 = v31;
  v35 = v32;
  v36 = &v32[v31];
  if (*(*(v470 + 216) + 80))
  {
    v37 = v36 == *(v470 + 48);
  }

  else
  {
    v37 = 0;
  }

  charIndex = &v32[v31];
  if (v36)
  {
    v38 = *(*(v470 + 64) + 2 * v36 - 2) == 8232;
  }

  else
  {
    v38 = 0;
  }

  if (*(v436 + 396) != 3 || charIndex >= *(v470 + 48))
  {
    v37 |= sub_276D6C5E4(v444, v32, v33) ^ 1;
  }

  v446 = *(v444 + 24);
  v39 = sub_276DBC9FC(v470, v32);
  v40 = MEMORY[0x277CA1EB0](v39, v34, v35, v490);
  v41 = v40;
  if (((v37 | v38) & 1) == 0)
  {
    v9 = v9 - TypographicBounds + *(v470 + 232);
    line = CTLineCreateJustifiedLine(v40, 1.0, v9);
    if (line)
    {
      CFRelease(v41);
      *(v444 + 24) &= ~0x8000uLL;
      goto LABEL_30;
    }

    *(v444 + 24) |= 0x8000uLL;
    v40 = sub_276D6C5E4(v444, v42, v43);
  }

  line = v41;
LABEL_30:
  v44 = *(v436 + 396);
  if (v44 != 3)
  {
    if (v44 == 2)
    {
      v46 = 0.5;
    }

    else
    {
      v45 = 0.0;
      if (v44 != 1)
      {
LABEL_37:
        if (v44 == 1 || ((v44 == 3) & (v446 >> 12)) != 0)
        {
          *(v444 + 24) |= 0x800000uLL;
        }

        goto LABEL_40;
      }

      v46 = 1.0;
    }

LABEL_36:
    v9 = v9 - TypographicBounds + *(v470 + 232);
    v45 = v46;
    goto LABEL_37;
  }

  v45 = 0.0;
  v46 = 1.0;
  if ((v446 & 0x1000) != 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  PenOffsetForFlush = 0.0;
  if ((v445 & 1) == 0)
  {
    PenOffsetForFlush = CTLineGetPenOffsetForFlush(line, v45, v9);
  }

  v48 = PenOffsetForFlush;
  v49 = sub_276DCADE8(v490, v40, v436, v444);
  v50 = 0.0;
  if (v445)
  {
    v51 = sub_276D6492C(v444);
    if (v51)
    {
      v52 = *(v436 + 350);

      if (v52)
      {
        v53 = sub_276D6492C(v444);
        objc_msgSend_labelTypographicExtent(v53, v54, v55);
        v57 = v56;

        v50 = v57 + 0.0;
      }
    }
  }

  v429 = v49 + v48;
  *(v444 + 240) = v49 + v48 + v50 + CTLineGetTypographicBounds(line, 0, 0, 0);
  if (charIndex <= v34)
  {
    v424 = 0;
  }

  else
  {
    v424 = objc_msgSend_characterAtIndex_(*(v470 + 56), v58, charIndex - 1);
    v60 = IsParagraphBreakingCharacter(v424) ^ 1;
    if (v424 == 8232)
    {
      LOBYTE(v60) = 0;
    }

    if ((v60 & 1) == 0)
    {
      *(v444 + 24) |= 0x800uLL;
    }
  }

  if (line)
  {
    v61 = sub_276DFD384(*(v470 + 216));
    v423 = objc_msgSend_string(v61, v62, v63);

    sub_276D6B92C(v444, v423);
    sub_276DD1DC0(v487, line, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 0, v429, 0.0);
    sub_276D645D4(v444, v487);
    v421 = CTLineGetGlyphRuns(line);
    v66 = objc_msgSend_count(v421, v64, v65);
    v67 = sub_276DD1F38(v487);
    TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(v67);
    v70 = objc_msgSend_invisiblesFont(TSWPRendererUtilities, v68, v69);
    v73 = objc_msgSend_flippedInvisiblesFont(TSWPRendererUtilities, v71, v72);
    v74 = [TSWPAdornments alloc];
    v443 = objc_msgSend_initWithType_color_font_flippedFont_(v74, v75, 1, 0, v70, v73);
    v76 = [TSWPAdornments alloc];
    v437 = objc_msgSend_initWithType_color_font_flippedFont_(v76, v77, 3, 0, v70, v73);
    v485 = 0u;
    v486 = 0u;
    v483 = 0u;
    v484 = 0u;
    obj = v421;
    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v483, v491, 16);
    if (!v79)
    {
      v80 = INFINITY;
      goto LABEL_294;
    }

    v439 = 0;
    v427 = v66 - 1;
    v80 = INFINITY;
    v434 = *v484;
    v425 = *MEMORY[0x277CC49C0];
    v430 = *MEMORY[0x277CC4838];
    while (1)
    {
      v442 = 0;
      v435 = v79;
      do
      {
        if (*v484 != v434)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v483 + 1) + 8 * v442);
        v482 = v81;
        StringRange = CTRunGetStringRange(v81);
        if (StringRange.location == -1)
        {
          v83 = MEMORY[0x277D81150];
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], StringRange.length, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v87, v84, v86, 3036, 0, "run has no range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
        }

        GlyphCount = CTRunGetGlyphCount(v81);
        v449 = CTRunGetAttributes(v81);
        v92 = objc_msgSend_characterAtIndex_(*(v470 + 56), v91, StringRange.location);
        v93 = [TSWPAdornments alloc];
        v452 = objc_msgSend_initWithType_color_font_flippedFont_(v93, v94, 4, 0, 0, 0);
        v481 = *MEMORY[0x277CBF3A8];
        v480 = 0;
        v96 = objc_msgSend_objectForKeyedSubscript_(v449, v95, @"emphasisMarks");
        v438 = v96;
        if (v96)
        {
          v468 = 0;
          if (objc_msgSend_length(v96, v97, v98) && GlyphCount)
          {
            v468 = sub_276DCAED4(v470, v436, v452, &v482, v444, v438, &v480, &v481);
          }
        }

        else
        {
          v468 = 0;
        }

        v469 = GlyphCount;
        if (v92 == 65532 || v92 == 14)
        {
          if (GlyphCount != 1)
          {
            if (StringRange.length < 2)
            {
              v99 = 0;
            }

            else
            {
              v99 = objc_msgSend_characterAtIndex_(*(v470 + 56), v97, StringRange.location + 1);
            }

            v100 = MEMORY[0x277D81150];
            objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
            if (v92 == 65532)
              v101 = {;
              v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
              v104 = NSStringFromRange(StringRange);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v105, v101, v103, 3056, 0, "Attachment spanning wrong number of glyphs (%lu) range: %{public}@ %x", GlyphCount, v104, v99);
            }

            else
              v101 = {;
              v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
              v104 = NSStringFromRange(StringRange);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v101, v103, 3058, 0, "Footnote spanning wrong number of glyphs (%lu) range: %{public}@ %x", GlyphCount, v104, v99);
            }

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
          }

          v465 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(*(v470 + 56), v97, StringRange.location);
          v457 = objc_msgSend_charIndexMappedToStorage_(*(v470 + 56), v110, StringRange.location);
          if (!objc_msgSend_isDrawable(v465, v111, v112) || (objc_msgSend_isAnchored(v465, v113, v114) & 1) != 0 || (objc_msgSend_isPartitioned(v465, v113, v114) & 1) != 0)
          {
            if ((objc_msgSend_elementKind(v465, v113, v114) & 0x1E0) != 0)
            {
              v117 = objc_msgSend_objectForKeyedSubscript_(v449, v115, @"__wpAttachmentMap");
              v460 = v117;
              if (v117)
              {
                if (!objc_msgSend_lineRef(v117, v118, v119))
                {
                  v122 = MEMORY[0x277D81150];
                  v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
                  v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v126, v123, v125, 3092, 0, "invalid nil value for '%{public}s'", "attachmentMap.lineRef");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128);
                }
              }

              else
              {
                v133 = objc_msgSend_characterAtIndex_(*(v470 + 56), v118, StringRange.location);
                v134 = MEMORY[0x277D81150];
                v447 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
                cf1 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                v139 = objc_msgSend_count(v449, v137, v138);
                v140 = objc_opt_class();
                v453 = NSStringFromClass(v140);
                v143 = objc_msgSend_wpKind(*(v470 + 16), v141, v142);
                v144 = NSStringFromRange(*(v470 + 32));
                v145 = MEMORY[0x277D81490];
                if (*(v444 + 24) >= 0)
                {
                  v145 = v444;
                }

                v146 = NSStringFromRange(*v145);
                v147 = NSStringFromRange(StringRange);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v148, v447, cf1, 3095, 0, "invalid nil value for 'attachmentMap'; lineRef:%{public}p attr:%{public}p(%{public}lu); class:%{public}@, wpKind(%{public}hhu), attachmentChar:%04x parRange:%{public}@ lineRange:%{public}@ runRange:%{public}@", line, v449, v139, v453, v143, v133, v144, v146, v147);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150);
              }

              if (objc_msgSend_lineRef(v460, v120, v121))
              {
                v494.location = 0;
                v494.length = 1;
                CTRunGetPositions(v81, v494, &v478);
                v151 = *(v470 + 16);
                v152 = sub_276DD2960(v436);
                v153 = sub_276DD2960(v436);
                v156 = objc_msgSend_scaleTextPercent(v153, v154, v155);
                v454 = sub_276D65040(v457, v151, v152, 0, v156);

                v157.f64[0] = v488;
                v157.f64[1] = v454;
                v478 = vaddq_f64(v157, v478);
                v160 = objc_msgSend_lineRef(v460, v158, v159);
                sub_276DD1DC0(buffer, v160, v457, 1, 0, v478.x, v478.y);
                sub_276D64850(v444, buffer);
                v163 = objc_msgSend_attachment(v460, v161, v162);
                v166 = objc_msgSend_changesWithPageCount(v163, v164, v165);

                if (v166)
                {
                  *(v444 + 24) |= 0x100000uLL;
                }

                sub_276DD1EBC(buffer);
              }
            }

            else if ((objc_msgSend_elementKind(v465, v115, v116) & 0x10) != 0)
            {
              v493.location = 0;
              v493.length = 1;
              CTRunGetPositions(v81, v493, buffer);
              buffer[0].a = v488 + buffer[0].a;
              v129 = [TSWPUIAttachmentData alloc];
              objc_opt_class();
              v130 = TSUDynamicCast();
              v132 = objc_msgSend_initWithAttachment_location_charIndex_(v129, v131, v130, StringRange.location, buffer[0].a, buffer[0].b);

              sub_276D64984(v444, v132);
            }

            goto LABEL_92;
          }

          v257 = sub_276D7AA9C(*(v470 + 8), v465);
          Status = CTRunGetStatus(v81);
          if (v445)
          {
            v259 = (*(v470 + 24) & 0xFD) == 1;
            if (Status)
            {
              goto LABEL_157;
            }

LABEL_159:
            v262 = sub_276D664E4(v444, v457, 0, v259, 0);
          }

          else
          {
            v259 = 0;
            if ((Status & 1) == 0)
            {
              goto LABEL_159;
            }

LABEL_157:
            sub_276D6A1CC(v444, v457, 0, 1, v259);
          }

          if (*(v470 + 27) == 1)
          {
            objc_msgSend_setAdjustedInterimPositionY_(v257, v260, v261, v262);
          }

          else
          {
            objc_msgSend_setAdjustedInterimPositionX_(v257, v260, v261, v262);
          }

LABEL_92:
        }

        v167 = objc_msgSend_objectForKeyedSubscript_(v449, v97, @"TSWPUnderline");
        v170 = objc_msgSend_integerValue(v167, v168, v169);

        v172 = objc_msgSend_objectForKeyedSubscript_(v449, v171, @"TSWPStrikethrough");
        v175 = objc_msgSend_integerValue(v172, v173, v174);

        v440 = objc_msgSend_objectForKeyedSubscript_(v449, v176, @"TSWPTextBackgroundColor");
        objc_opt_class();
        v178 = objc_msgSend_objectForKeyedSubscript_(v449, v177, @"TSWPTextHighlightsAttribute");
        v441 = TSUDynamicCast();

        if (!v469)
        {
          goto LABEL_288;
        }

        sub_276D6D3E8(&v478, v469);
        v495.location = 0;
        v495.length = v469;
        CTRunGetStringIndices(v81, v495, *&v478.x);
        sub_276D8D454(v477, v469);
        v496.location = 0;
        v496.length = v469;
        CTRunGetPositions(v81, v496, v477[0]);
        sub_276DCCA94(v476, v469);
        v497.location = 0;
        v497.length = v469;
        CTRunGetAdvances(v81, v497, v476[0]);
        v181 = *(v470 + 216);
        if (v181 && *(*(v470 + 64) + 2 * **&v478.x) == -4)
        {
          v182 = sub_276DFD178(v181, **&v478.x);
          ascent = 0.0;
          descent = 0.0;
          leading = 0.0;
          if (v182)
          {
            v183 = v182[4];
            ascent = v182[3] * 0.5;
            descent = ascent;
            v184 = v183 + v182[5];
            v185 = 1;
            goto LABEL_100;
          }
        }

        else
        {
          ascent = 0.0;
          descent = 0.0;
          leading = 0.0;
        }

        v498.location = 0;
        v498.length = v469;
        v184 = CTRunGetTypographicBounds(v81, v498, &ascent, &descent, &leading);
        v185 = 0;
LABEL_100:
        v186 = CTRunGetStatus(v81);
        v187 = *(v470 + 27);
        v189 = sub_276DC9CF0(v470, **&v478.x, v188);
        v191 = objc_msgSend_objectAtIndexedSubscript_(*(v470 + 96), v190, v189);
        v194 = objc_msgSend_ctFont(v191, v192, v193);

        cf1a = objc_msgSend_objectForKeyedSubscript_(v449, v195, v430);

        if (!cf1a || !v194 || !CFEqual(cf1a, v194))
        {
          *(v444 + 24) |= 0x80uLL;
        }

        if ((v446 & 0x1000) != 0 || v439 != v427)
        {
          v196 = 0.0;
          if (((v439 == 0) & (v446 >> 12)) != 0)
          {
            v197 = TrailingWhitespaceWidth;
          }

          else
          {
            v197 = 0.0;
          }
        }

        else
        {
          v196 = sub_276DCB3D4(v470, 0, *(v470 + 27), v469, v477[0], v476[0], *&v478.x, TrailingWhitespaceWidth);
          v197 = 0.0;
        }

        v448 = *&v187 & ((v186 & 4) >> 2);
        if (v448)
        {
          characters = *(*(v470 + 64) + 2 * **&v478.x);
          glyphs = 0;
          if (CTFontGetGlyphsForCharacters(cf1a, &characters, &glyphs, 1))
          {
            CTFontGetVerticalTranslationsForGlyphs(cf1a, &glyphs, buffer, 1);
            v198 = v429 - v477[0]->y + buffer[0].b;
          }

          else
          {
            v198 = sub_276DFC7F8(v444, StringRange.location);
          }
        }

        else
        {
          v198 = v429 + v477[0]->x;
        }

        v201 = v197 + v198;
        v202 = StringRange.location + StringRange.length;
        if ((sub_276D69A60(v444) & (StringRange.location + StringRange.length == charIndex)) != 0)
        {
          v203 = TypographicBounds + v184 - (v196 + v197);
        }

        else
        {
          v203 = v184 - (v196 + v197);
        }

        if (v203 > 0.0 || v175 == -1)
        {
          if (v170)
          {
            v204 = objc_msgSend_objectForKeyedSubscript_(v449, v199, @"TSWPUnderlineColor");
            v205 = v204;
            v208 = objc_msgSend_CGColor(v204, v206, v207);

            if (!v208)
            {
              v208 = objc_msgSend_objectForKeyedSubscript_(v449, v209, v425);
            }

            v211 = sub_276D3A3AC(*(v470 + 84), *(v470 + 27), 5);
            if (v211 != 1 || (*&buffer[0].a = *MEMORY[0x277D81490], *&buffer[0].a != *MEMORY[0x277D81490]) || *&buffer[0].b != *(MEMORY[0x277D81490] + 8) || (objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*(v470 + 56), v210, **&v478.x, 7, buffer), (v212 = objc_claimAutoreleasedReturnValue()) == 0) || (**&v478.x >= *&buffer[0].a ? (v213 = **&v478.x - *&buffer[0].a >= *&buffer[0].b) : (v213 = 1), !v213 ? (v214 = 0) : (v214 = 1), v212, (v214 & 1) != 0))
            {
              v215 = sub_276DD2960(v436);
              objc_msgSend_scaleTextPercent(v215, v216, v217);
              v218 = sub_276D65668(v449);

              v220 = 0;
              v221 = 0;
              v222 = -v218;
              do
              {
                if ((IsWhitespaceCharacter(*(*(v470 + 64) + 2 * *(*&v478.x + 8 * v221)), v219) & 1) == 0)
                {
                  break;
                }

                v220 = ++v221 >= v469;
              }

              while (v469 != v221);
              sub_276D39460(cf1a, v194, v170, *(v470 + 27), *(v470 + 76), v211, v222);
              v224 = v223;
              v226 = v225;
              v228 = v227;
              v229 = [TSWPAdornmentLine alloc];
              if (v170 == 2)
              {
                v231 = 2;
              }

              else
              {
                v231 = 1;
              }

              LOBYTE(v420) = 0;
              isWhitespace_renderingDelegate_allowAntialiasing = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_isWhitespace_renderingDelegate_allowAntialiasing_(v229, v230, v208, v231, v170, v211, v220, 0, v201, v224, v203, v226, v228, v420);
              v233 = sub_276D6495C(v444);
              v234 = sub_276DC9294(v233, isWhitespace_renderingDelegate_allowAntialiasing);

              if (v468 && v211 == objc_msgSend_location(v452, v235, v236))
              {
                objc_msgSend_underlineAdjustment(v234, v237, v238);
                objc_msgSend_setVerticalAdjustment_(v452, v239, v240);
              }
            }
          }

          if (v175)
          {
            v241 = sub_276DD2960(v436);
            objc_msgSend_scaleTextPercent(v241, v242, v243);
            v244 = sub_276D65668(v449);

            v246 = objc_msgSend_objectForKeyedSubscript_(v449, v245, @"TSWPStrikethroughColor");
            v247 = v246;
            v250 = objc_msgSend_CGColor(v246, v248, v249);

            if (!v250)
            {
              v250 = objc_msgSend_objectForKeyedSubscript_(v449, v251, v425);
            }

            sub_276D3976C(v194, *(v470 + 27), v448, -v244);
            v254 = v253;
            if (*(v470 + 27))
            {
              v252 = 0.0 - v244;
            }

            if (v175 == 2)
            {
              v255 = v252 - v253;
            }

            else
            {
              v255 = v252;
            }

            if (v175 == -1)
            {
              v256 = objc_msgSend_characterAtIndex_(*(v470 + 56), v199, v202 - 1);
              if (sub_276D37D44(v202 - 1, *(v470 + 56)))
              {
                v203 = v489 - v201;
              }

              else
              {
                v263 = IsParagraphBreakingCharacter(v256);
                v264 = v469;
                v265 = v263 ^ 1;
                if (v256 == 8232)
                {
                  v265 = 0;
                }

                v266 = v196;
                if ((v265 & 1) == 0)
                {
                  v267 = v469;
                  do
                  {
                    if (v264 <= 0)
                    {
                      v266 = v196;
                      goto LABEL_172;
                    }

                    v268 = *(*&v478.x - 8 + 8 * v264--);
                    --v267;
                  }

                  while (v268 != v202 - 1);
                  v266 = v196 - v476[0][v267].width + 7.0;
                }

LABEL_172:
                v269 = v203 + v266;
                if (v489 - v201 >= v269)
                {
                  v203 = v269;
                }

                else
                {
                  v203 = v489 - v201;
                }
              }

              v175 = 1;
            }

            if (v203 > 0.0)
            {
              v270 = [TSWPAdornmentLine alloc];
              started = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_(v270, v271, v250, v175, 0, 0, v201, v255, v203, v254, 0.0);
              v273 = sub_276D64964(v444);
              v274 = sub_276DC9294(v273, started);
            }
          }
        }

        if (v440 && v203 > 0.0)
        {
          v275 = [TSWPAdornmentLine alloc];
          v278 = objc_msgSend_CGColor(v440, v276, v277);
          v280 = objc_msgSend_initWithStart_length_color_thickness_lineCount_underline_adornmentLocation_underLineAdjustment_(v275, v279, v278, 0, 0, 0, v201, 0.0, v196 + v203, 0.0, 0.0);
          v281 = sub_276D6496C(v444);
          v282 = sub_276DC9294(v281, v280);
        }

        v283 = objc_msgSend_count(v441, v199, v200);
        if (v283 && v184 > 0.0)
        {
          sub_276DC97B8(v184, v201, v283, v444, v441);
        }

        v286 = objc_msgSend_objectForKeyedSubscript_(v449, v284, @"TSWPCharacterFillAttribute");
        if (v286)
        {
          objc_opt_class();
          v288 = objc_msgSend_objectForKeyedSubscript_(v449, v287, @"TSWPCharacterFillAttribute");
          v289 = TSUCheckedDynamicCast();
          v292 = objc_msgSend_fillType(v289, v290, v291) == 0;

          if (!v292)
          {
            *(v444 + 24) |= 0x400uLL;
          }
        }

        v294 = objc_msgSend_objectForKeyedSubscript_(v449, v285, @"TSWPCharacterStrokeAttribute");
        if (v294)
        {
          v295 = objc_msgSend_objectForKeyedSubscript_(v449, v293, @"TSWPCharacterFillAttribute");
          v296 = v295 == 0;

          if (v296)
          {
            *(v444 + 24) |= 0x400uLL;
          }
        }

        v297 = objc_msgSend_objectForKeyedSubscript_(v449, v293, @"TSWPInvisibleTextAttribute");
        v298 = v297 == 0;

        if (!v298)
        {
          *(v444 + 24) |= 0x400uLL;
        }

        v300 = 0;
        v301 = cf1a;
        do
        {
          v302 = 0;
          v303 = 0;
          v304 = *(*&v478.x + 8 * v300);
          v305 = *(*(v470 + 64) + 2 * v304);
          v306 = 1;
          if (*(*(v470 + 64) + 2 * v304) > 0x205Eu)
          {
            if (*(*(v470 + 64) + 2 * v304) <= 0xFEFEu)
            {
              if (v305 == 8287)
              {
LABEL_205:
                v307 = v469;
              }

              else
              {
                v307 = v469;
                if (v305 != 12288)
                {
                  v308 = 1;
                  v306 = 0;
                  goto LABEL_240;
                }
              }

              goto LABEL_206;
            }

            if (v305 != 65532)
            {
              if (v305 == 65279)
              {
                goto LABEL_200;
              }

              goto LABEL_238;
            }

            v324 = objc_msgSend_attachmentAtCharIndex_(*(v470 + 56), v299, *(*&v478.x + 8 * v300));
            isAnchored = objc_msgSend_isAnchored(v324, v325, v326);

            if (!isAnchored)
            {
              v306 = 0;
              v308 = 1;
              v307 = v469;
              v301 = cf1a;
              goto LABEL_240;
            }

            v328 = objc_msgSend_charIndexMappedToStorage_(*(v470 + 56), v299, v304);
            v301 = cf1a;
            objc_msgSend_addAdornmentWithAttachmentPosition_(v437, v329, v328, *&v477[0][v300].x);
            v306 = 0;
            v308 = 1;
LABEL_239:
            v307 = v469;
            goto LABEL_240;
          }

          if ((v305 - 0x2000) <= 0x2F)
          {
            if (((1 << v305) & 0xF7F) != 0)
            {
              goto LABEL_205;
            }

            if (((1 << v305) & 0x30000000000) != 0)
            {
              goto LABEL_232;
            }

            if (((1 << v305) & 0x800000000080) != 0)
            {
              goto LABEL_200;
            }
          }

          if (v305 > 0x20)
          {
            goto LABEL_237;
          }

          if (((1 << v305) & 0x3C30) == 0)
          {
            if (v305 == 9)
            {
              x = v477[0][v300].x;
              MaxX = CGRectGetMaxX(*(v444 + 40));
              if ((v446 & 0x1000) != 0)
              {
                v337 = MaxX - (v429 + x + v476[0][v300].width);
              }

              else
              {
                v337 = x + v490;
              }

              objc_opt_class();
              v338 = sub_276DD29D0(v436);
              v462 = TSUCheckedDynamicCast();

              v341 = objc_msgSend_tabAfterPosition_(v462, v339, v340, v337);
              v467 = objc_msgSend_leader(v341, v342, v343);

              if (objc_msgSend_length(v467, v344, v345) && (objc_msgSend_isEqualToString_(v467, v346, @" ") & 1) == 0)
              {
                width = v476[0][v300].width;
                v456 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(*(v470 + 56), v347, v304, 0);
                v459 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(*(v470 + 56), v349, v304, 0);
                isWritingDirectionRightToLeftForParagraphAtCharIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtCharIndex_(*(v470 + 56), v350, v304);
                v352 = sub_276DD2960(v436);
                v355 = objc_msgSend_scaleTextPercent(v352, v353, v354);
                v357 = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(v459, v356, v456, v355, isWritingDirectionRightToLeftForParagraphAtCharIndex);
                rangea = objc_msgSend_mutableCopy(v357, v358, v359);

                if (rangea)
                {
                  if (width > 0.0)
                  {
                    if (*(v436 + 349) == 1)
                    {
                      v362 = objc_msgSend_tabStopLeaderStringArrow(TSWPTab, v360, v361);
                      isEqualToString = objc_msgSend_isEqualToString_(v467, v363, v362);

                      if (isEqualToString)
                      {
                        v367 = objc_msgSend_tabStopLeaderStringArrowRTL(TSWPTab, v365, v366);

                        v467 = v367;
                      }
                    }

                    v467 = v467;
                    v368 = objc_alloc(MEMORY[0x277CCA898]);
                    v370 = objc_msgSend_initWithString_attributes_(v368, v369, v467, rangea);
                    v371 = CTLineCreateWithAttributedString(v370);

                    v372 = CTLineGetTypographicBounds(v371, 0, 0, 0);
                    CFRelease(v371);
                    if (v372 <= 0.0)
                    {
                      v382 = 1;
                    }

                    else
                    {
                      v374 = width / v372;
                      v375 = vcvtms_u32_f32(v374);
                      while (v375)
                      {
                        v376 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_28860A0F0, v373, v375, v467, 0);
                        v377 = objc_alloc(MEMORY[0x277CCA898]);
                        v379 = objc_msgSend_initWithString_attributes_(v377, v378, v376, rangea);
                        v380 = CTLineCreateWithAttributedString(v379);

                        v381 = CTLineGetTypographicBounds(v380, 0, 0, 0);
                        CFRelease(v380);

                        --v375;
                        if (v381 <= width)
                        {
                          v382 = v375 + 1;
                          goto LABEL_265;
                        }
                      }

                      v382 = 0;
                    }

LABEL_265:
                    v390 = 0;
                    v391 = 0.0;
                    objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_28860A0F0, v373, v382, v467, 0);
                    while (1)
                      v392 = {;
                      v393 = objc_alloc(MEMORY[0x277CCA898]);
                      v395 = objc_msgSend_initWithString_attributes_(v393, v394, v392, rangea);
                      v396 = CTLineCreateWithAttributedString(v395);

                      v397 = CTLineGetTypographicBounds(v396, 0, 0, 0);
                      v398 = v397;
                      if (v397 <= v391 || v397 > width)
                      {
                        break;
                      }

                      if (v390)
                      {
                        CFRelease(v390);
                      }

                      ++v382;
                      v391 = v398;
                      v390 = v396;
                      objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_28860A0F0, v400, v382, v467, 0);
                    }

                    if (v396)
                    {
                      CFRelease(v396);
                    }

                    if (v390)
                    {
                      sub_276DD1DC0(buffer, v390, v304, 1, 0, width + x + v488 - v391, 0.0);
                      sub_276D64850(v444, buffer);
                      CFRelease(v390);
                      sub_276DD1EBC(buffer);
                    }
                  }
                }

                else
                {
                  v383 = MEMORY[0x277D81150];
                  v384 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v360, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
                  v386 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v385, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v383, v387, v384, v386, 3373, 0, "invalid nil value for '%{public}s'", "tabLeaderAttrs");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v388, v389);
                }
              }

              v303 = 0;
              v306 = 0;
              v302 = 1;
LABEL_202:
              v307 = v469;
              v301 = cf1a;
LABEL_206:
              if ((v185 | v303))
              {
                v308 = v303;
                goto LABEL_240;
              }

              v310 = v477[0][v300].x;
              v311 = v476[0][v300].width;
              v312 = (&unk_280A57090 + 40 * v302);
              if (*(v312 + 2) == 1)
              {
                v313 = MEMORY[0x277D81150];
                v314 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v299, "void TSWPCoreTextTypesetter::createLineVectorForLineFragment(TSWPLineFragment *, const TSWPLayoutState *, BOOL, TSWPLayoutFlags) const");
                v316 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v315, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v313, v317, v314, v316, 3498, 0, "Shouldn't be handling invisible breaks here.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v318, v319);
                v301 = cf1a;
              }

              v320 = v312[1];
              v321 = v310 + (v311 - v320) * 0.5;
              if (v445)
              {
                v322 = *(v312 + 16);
                if ((v446 & 0x1000) == 0)
                {
LABEL_218:
                  v323 = 0;
                  goto LABEL_225;
                }

LABEL_217:
                if (*(v470 + 27))
                {
                  goto LABEL_218;
                }

                v323 = *(v312 + 3);
LABEL_225:
                objc_msgSend_addAdornmentWithPoint_glyph_flipped_(v443, v299, v322, v323 & 1, v321, 0.0);
              }

              else
              {
                if ((v446 & 0x1000) != 0)
                {
                  if (v321 < -v488)
                  {
                    v321 = -v488;
                  }

                  v322 = *(v312 + 16);
                  goto LABEL_217;
                }

                v330 = *(v444 + 56) - v488 - v320;
                if (v330 < v321)
                {
                  v321 = v330;
                }

                objc_msgSend_addAdornmentWithPoint_glyph_flipped_(v443, v299, *(v312 + 16), 0, v321, 0.0);
              }

              v307 = v469;
              v308 = 0;
              goto LABEL_240;
            }

            if (v305 == 32)
            {
              goto LABEL_205;
            }

LABEL_237:
            if (v305 == 160)
            {
LABEL_200:
              v309 = objc_msgSend_footnoteReferenceAtCharIndex_(*(v470 + 56), v299, *(*&v478.x + 8 * v300));
              v303 = v309 != 0;

              v306 = 0;
              v302 = 8;
              if (v303)
              {
                v302 = 0x7FFFFFFFFFFFFFFFLL;
              }

              goto LABEL_202;
            }

LABEL_238:
            v308 = 1;
            v306 = 0;
            goto LABEL_239;
          }

LABEL_232:
          v80 = v477[0][v300].x;
          v307 = v469;
          v306 = 0;
          if ((v446 & 0x1000) != 0)
          {
            v80 = v80 + v476[0][v300].width;
          }

          v308 = 1;
LABEL_240:
          if (((v308 | v185 & v306) & v468) == 1)
          {
            v331 = &v477[0][v300];
            v466 = v331->x;
            range = v331->y;
            v332 = v482;
            CTRunGetTextMatrix(buffer, v482);
            v455 = *&buffer[0].c;
            v458 = *&buffer[0].tx;
            v461 = *&buffer[0].a;
            if (v448)
            {
              LOWORD(buffer[0].a) = 0;
              v499.location = v300;
              v499.length = 1;
              CTRunGetGlyphs(v332, v499, buffer);
              BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v301, kCTFontOrientationVertical, buffer, 0, 1);
              v333 = -BoundingRectsForGlyphs.size.width;
            }

            else
            {
              v333 = v476[0][v300].width;
            }

            v334 = vaddq_f64(v458, vmlaq_n_f64(vmulq_n_f64(v455, range), v461, v466));
            sub_276DCB474(v470, v452, v305, *(*&v478.x + 8 * v300), v480, v185, v334.f64[0], v334.f64[1], v333, v481.width);
          }

          ++v300;
        }

        while (v300 != v307);
        v401 = CTFontCopyFamilyName(v301);
        if (objc_msgSend_isEqualToString_(v401, v402, @"Zapfino"))
        {
          *(v444 + 24) |= 0x40000uLL;
        }

        if (v476[0])
        {
          v476[1] = v476[0];
          operator delete(v476[0]);
        }

        if (v477[0])
        {
          v477[1] = v477[0];
          operator delete(v477[0]);
        }

        if (*&v478.x)
        {
          v478.y = v478.x;
          operator delete(*&v478.x);
        }

LABEL_288:
        if (objc_msgSend_positionCount(v452, v179, v180))
        {
          sub_276D64E14(v444, v452);
        }

        ++v439;
        ++v442;
      }

      while (v442 != v435);
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v404, &v483, v491, 16);
      if (!v79)
      {
LABEL_294:

        v407 = v470;
        if ((*(v444 + 25) & 8) != 0)
        {
          sub_276DCB5D8(v470, v436, v444, v424, v445, v80);
        }

        if ((objc_msgSend_isEmpty(v443, v405, v406) & 1) == 0)
        {
          sub_276D64E14(v444, v443);
        }

        if (objc_msgSend_attachmentPositionCount(v437, v408, v409))
        {
          sub_276D64E14(v444, v437);
        }

        if (sub_276D69A60(v444))
        {
          OffsetForStringIndex = CTLineGetOffsetForStringIndex(line, charIndex, 0);
          v412 = v488;
          v413 = *(v470 + 16);
          v414 = sub_276DD2960(v436);
          v415 = sub_276DD2960(v436);
          v418 = objc_msgSend_scaleTextPercent(v415, v416, v417);
          v419 = sub_276D65040(charIndex, v413, v414, 0, v418);
          sub_276DD1DC0(buffer, cf, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), 2, OffsetForStringIndex + v412, v419);

          sub_276D64850(v444, buffer);
          if (cf)
          {
            CFRelease(cf);
          }

          sub_276DD1EBC(buffer);
          v407 = v470;
        }

        sub_276DC935C(v407, v444, v410);
        CFRelease(line);

        sub_276DD1EBC(v487);
        return sub_276D6C5EC(v444, v58, v59);
      }
    }
  }

  return sub_276D6C5EC(v444, v58, v59);
}

BOOL sub_276DC73F4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_276D69F0C(a2);
  result = v8 == 1;
  if (a4 > a3 && v8 != 1)
  {
    v10 = a3 - a4 + 2;
    v11 = a4 - 1;
    do
    {
      v12 = v10;
      if (v11 <= a3)
      {
        v14 = a3;
        if (!v12)
        {
          return (*(*(a1 + 64) + 2 * v14) & 0xFC00) == 56320;
        }

        return v14 == a3;
      }

      v13 = IsWhitespaceCharacter(*(*(a1 + 64) + 2 * v11), v7);
      v10 = v12 + 1;
      --v11;
    }

    while ((v13 & 1) != 0);
    v14 = v11 + 1;
    if (!v12)
    {
      return (*(*(a1 + 64) + 2 * v14) & 0xFC00) == 56320;
    }

    return v14 == a3;
  }

  return result;
}

void sub_276DC74A8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276DC74EC(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 224);
  v10 = sub_276DC9CF0(a1, a3, a3);
  v11 = *(v8 + 456);
  v12 = *(v8 + 464);
  v13 = *(v8 + 480);
  if (*(v8 + 472) == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = *(v8 + 472);
  }

  v17 = sub_276DC9E24(a1, a2, v10, a3, a4, *(v8 + 456), *(v8 + 464), v14, *(v8 + 480));
  if ((*(v9 + 24) & 0x20000020) != 0)
  {
    v17 = sub_276DC9E24(a1, a2, v10, a3, a4, v11, v12, v14, v13);
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  *(a1 + 144) = *(a2 + 216) - fmax(*(a1 + 120), *(a1 + 112));
  v25 = objc_msgSend_sharedCache(TSWPFontMetricsCache, v15, v16);
  objc_msgSend_validateFontHeightInfo_description_(v25, v26, a1 + 104, @"calcHeightInfo");

  v27 = *(a1 + 104);
  *(v9 + 120) = *(a1 + 120);
  *(v9 + 104) = v27;
  v28 = *(a1 + 136);
  v29 = *(a1 + 152);
  v30 = *(a1 + 168);
  *(v9 + 184) = *(a1 + 184);
  *(v9 + 168) = v30;
  *(v9 + 152) = v29;
  *(v9 + 136) = v28;
  v32.size.height = sub_276D6C15C(v9, *(v8 + 272), 0, *(v8 + 312));
  v32.origin.x = *(v9 + 40);
  v32.origin.y = *(v9 + 48);
  v32.size.width = *(v9 + 56);
  *(v9 + 64) = v32.size.height;
  v31.origin.x = v21;
  v31.origin.y = v22;
  v31.size.width = v23;
  v31.size.height = v24;
  *(v9 + 72) = CGRectUnion(v31, v32);
}

void sub_276DC76A8(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v106 = a3;
  v128 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 224);
  v5 = sub_276D64E0C(v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v9 = sub_276D64E0C(v4);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v120, v127, 16);
    if (v13)
    {
      v14 = *v121;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v121 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v120 + 1) + 8 * i);
          if (objc_msgSend_type(v16, v11, v12, v106) == 4)
          {
            v17 = objc_msgSend_location(v16, v11, v12);

            if (v17 == 1)
            {
              v18 = sub_276D648F8(v4);
              if (v18)
              {
                sub_276DCBF18(v18, v19, v4);
              }

              v17 = 1;
            }

            goto LABEL_15;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v120, v127, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_15:
    *v106 = 0.0;
    *a4 = 0.0;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v20 = sub_276D64E0C(v4);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v116, v126, 16);
    if (v24)
    {
      v25 = *v117;
      v26 = 0.0;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v117 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v28 = *(*(&v116 + 1) + 8 * j);
          if (objc_msgSend_type(v28, v22, v23, v106) == 4)
          {
            objc_msgSend_verticalAdjustment(v28, v22, v23);
            if (v26 < v29)
            {
              v26 = v29;
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v116, v126, 16);
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v30 = sub_276D64E0C(v4);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v112, v125, 16);
    if (v34)
    {
      v35 = *v113;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v113 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v112 + 1) + 8 * k);
          if (objc_msgSend_type(v37, v32, v33, v106) == 4)
          {
            v38 = v37;
            objc_msgSend_textPosition(v38, v39, v40);
            v42 = v41;
            v44 = v43;
            objc_msgSend_setVerticalAdjustment_(v38, v45, v46, v26);
            if (v42 == 0.0 && v44 == 0.0)
            {
              if ((*(v4 + 25) & 0x20) != 0)
              {
                v60 = (*(v4 + 120) + *(v4 + 136)) * 0.5;
                if (v17 != 2)
                {
                  objc_msgSend_verticalAdjustment(v38, v47, v48);
                  v78 = v77;
                  objc_msgSend_ascent(v38, v79, v80);
                  v60 = -v60 - v78;
                  goto LABEL_42;
                }

                v64 = MEMORY[0x277D81150];
                v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "void TSWPCoreTextTypesetter::pAdjustEmphasisMarksForLineFragment(TSWPTypesetterParamBlock *const, CGFloat &, CGFloat &)");
                v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 4457, 0, "Vertical below is not currently supported.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
              }

              else
              {
                if (v17 == 2)
                {
                  v49 = *(v4 + 136);
                  objc_msgSend_verticalAdjustment(v38, v47, v48);
                  v51 = v50;
                  objc_msgSend_ascent(v38, v52, v53);
                  v55 = v54;
                  objc_msgSend_descent(v38, v56, v57);
                  v60 = v49 + 0.0 + v51 + v55;
                  v62 = v60 + v61 - *(v4 + 136);
                  v63 = a4;
                  goto LABEL_43;
                }

                v71 = *(v4 + 120);
                objc_msgSend_verticalAdjustment(v38, v47, v48);
                v73 = v72;
                objc_msgSend_ascent(v38, v74, v75);
                v60 = 0.0 - v71 - v73;
LABEL_42:
                v62 = -(v60 - v76 + *(v4 + 120));
                v63 = v106;
LABEL_43:
                if (*v63 >= v62)
                {
                  v62 = *v63;
                }

                *v63 = v62;
              }

              objc_msgSend_setTextPosition_(v38, v58, v59, 0.0, v60);
            }

            continue;
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v112, v125, 16);
      }

      while (v34);
    }
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v81 = sub_276D6495C(v4);
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v108, v124, 16);
  if (v85)
  {
    v86 = *v109;
    do
    {
      for (m = 0; m != v85; ++m)
      {
        if (*v109 != v86)
        {
          objc_enumerationMutation(v81);
        }

        v88 = *(*(&v108 + 1) + 8 * m);
        if (objc_msgSend_underline(v88, v83, v84, v106))
        {
          objc_msgSend_thickness(v88, v83, v84);
          v90 = v89;
          if (objc_msgSend_underline(v88, v91, v92) == 2)
          {
            v90 = v90 * 3.0;
          }

          else if (objc_msgSend_underline(v88, v93, v94) == 3 && (*(v4 + 25) & 0x20) == 0)
          {
            v95 = sub_276D3943C(v90);
            v90 = v95 + v95;
          }

          objc_msgSend_start(v88, v93, v94);
          v97 = v96;
          if (objc_msgSend_adornmentLocation(v88, v98, v99) == 2)
          {
            v100 = v90 * 0.5 + v97;
            v101 = *(v4 + 136);
            if (v100 <= v101)
            {
              continue;
            }

            v102 = v100 - v101;
            v103 = a4;
          }

          else
          {
            if (objc_msgSend_adornmentLocation(v88, v83, v84) != 1)
            {
              continue;
            }

            v104 = v97 + v90 * -0.5;
            v105 = *(v4 + 120);
            if (v104 >= v105)
            {
              continue;
            }

            v102 = -(v104 + v105);
            v103 = v106;
          }

          if (*v103 >= v102)
          {
            v102 = *v103;
          }

          *v103 = v102;
        }
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v83, &v108, v124, 16);
    }

    while (v85);
  }
}