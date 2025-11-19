@interface TSTPopUpMenuModel
+ (id)cellValueFromCell:(id)a3 locale:(id)a4;
+ (id)p_PopUpMenuModelDefaultWithContext:(id)a3 locale:(id)a4;
+ (id)p_cellValueFromCellWithCustomFormat:(id)a3 locale:(id)a4;
+ (id)popupMenuModelDeletingItemFromModel:(id)a3 index:(unint64_t)a4;
+ (id)popupMenuModelEditingItemInModel:(id)a3 index:(unint64_t)a4 newContent:(id)a5;
+ (id)popupMenuModelFromTable:(id)a3 region:(id)a4 initialValue:(BOOL *)a5 overflow:(BOOL *)a6;
+ (id)popupMenuModelReorderingModel:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
+ (void)p_appendChoices:(id)a3 uniquelyToChoices:(id)a4;
- (BOOL)BOOLeanAtIndex:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChoices:(id)a3;
- (BOOL)p_BOOLeanForListItem:(id)a3;
- (TSTPopUpMenuModel)initWithItems:(id)a3 context:(id)a4;
- (double)numberAtIndex:(unint64_t)a3;
- (double)p_numberForListItem:(id)a3;
- (id)copyWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateAtIndex:(unint64_t)a3;
- (id)description;
- (id)displayStringAtIndex:(unint64_t)a3;
- (id)formatAtIndex:(unint64_t)a3;
- (id)p_dateForListItem:(id)a3;
- (id)p_listItemAtIndex:(unint64_t)a3;
- (id)p_stringForListItem:(id)a3;
- (id)popUpItemFromBoolean:(BOOL)a3;
- (id)popUpItemFromDate:(id)a3 format:(id)a4;
- (id)popUpItemFromNumber:(double)a3 format:(id)a4;
- (id)popUpItemFromString:(id)a3;
- (id)stringAtIndex:(unint64_t)a3;
- (int)p_mcListTypeForArgType:(char)a3;
- (int)p_mcListTypeOfListItem:(id)a3;
- (int)valueTypeOfItemAtIndex:(unint64_t)a3;
- (void)didInitFromSOS;
- (void)loadFromArchive:(const void *)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTPopUpMenuModel

- (TSTPopUpMenuModel)initWithItems:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = TSTPopUpMenuModel;
  v9 = [(TSTPopUpMenuModel *)&v16 initWithContext:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, a3);
    v10->_count = objc_msgSend_count(v7, v11, v12, v13, v14);
  }

  return v10;
}

- (void)didInitFromSOS
{
  v7.receiver = self;
  v7.super_class = TSTPopUpMenuModel;
  [(TSTPopUpMenuModel *)&v7 didInitFromSOS];
  self->_count = objc_msgSend_count(self->_items, v3, v4, v5, v6);
}

- (BOOL)isEqualToChoices:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    goto LABEL_10;
  }

  count = self->_count;
  if (count != objc_msgSend_count(self->_items, v4, v5, v6, v7))
  {
    TSUSetCrashReporterInfo();
    v46 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSTPopUpMenuModel isEqualToChoices:]", v48, v49, "[TSTPopUpMenuModel isEqualToChoices:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", 76);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v55, v50, v54, 76, 1, "Unarchiving is incomplete. Equality comparison is bogus and can lead to document corruption. Crashing now.");

    TSUCrashBreakpoint();
    abort();
  }

  v14 = objc_msgSend_count(self->_items, v10, v11, v12, v13);
  v19 = objc_msgSend_choices(v8, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v14 != v24)
  {
    LOBYTE(isEqualToCellValue) = 0;
    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_10:
    LOBYTE(isEqualToCellValue) = 1;
  }

  else
  {
    v28 = 0;
    v29 = v14 - 1;
    do
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(self->_items, v25, v28, v26, v27);
      v35 = objc_msgSend_choices(v8, v31, v32, v33, v34);
      v39 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, v28, v37, v38);

      isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v30, v40, v39, v41, v42);
      if (!isEqualToCellValue)
      {
        break;
      }
    }

    while (v29 != v28++);
  }

LABEL_12:

  return isEqualToCellValue;
}

- (id)description
{
  v5 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"TSTPopUpMenuModel: (\n"), v2, v3;
  v13 = objc_msgSend_count(self->_items, v6, v7, v8, v9);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = objc_msgSend_objectAtIndex_(self->_items, v10, i, v11, v12);
      v20 = objc_msgSend_displayString(v15, v16, v17, v18, v19);
      objc_msgSend_appendFormat_(v5, v21, @"\t%@,\n", v22, v23, v20);
    }
  }

  objc_msgSend_appendString_(v5, v10, @""), v11, v12);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToChoices = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToChoices = objc_msgSend_isEqualToChoices_(self, v5, v4, v6, v7);
    }

    else
    {
      isEqualToChoices = 0;
    }
  }

  return isEqualToChoices;
}

- (id)p_listItemAtIndex:(unint64_t)a3
{
  v7 = objc_msgSend_choices(self, a2, a3, v3, v4);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v12 <= a3)
  {
    v21 = 0;
  }

  else
  {
    v17 = objc_msgSend_choices(self, v13, v14, v15, v16);
    v21 = objc_msgSend_objectAtIndex_(v17, v18, a3, v19, v20);
  }

  return v21;
}

- (int)p_mcListTypeForArgType:(char)a3
{
  if (a3 < 8 && ((0xADu >> a3) & 1) != 0)
  {
    return dword_2217F3084[a3];
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPopUpMenuModel p_mcListTypeForArgType:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 155, 0, "Unexpected TSCEArgumentType for popup list.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (int)p_mcListTypeOfListItem:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_valueType(v4, v5, v6, v7, v8);
    v14 = objc_msgSend_p_mcListTypeForArgType_(self, v11, v10, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_p_mcListTypeForArgType_(self, v5, 0, v7, v8);
  }

  v15 = v14;

  return v15;
}

- (double)p_numberForListItem:(id)a3
{
  v4 = a3;
  v12 = 0.0;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, v4, v6, v7) == 5)
  {
    v13 = objc_msgSend_numberValue(v4, v8, v9, v10, v11);
    objc_msgSend_rawDoubleValue(v13, v14, v15, v16, v17);
    v12 = v18;
  }

  return v12;
}

- (id)p_stringForListItem:(id)a3
{
  v4 = a3;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, v4, v6, v7) == 7)
  {
    v12 = objc_msgSend_stringValue(v4, v8, v9, v10, v11);
    v17 = objc_msgSend_asString(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)p_dateForListItem:(id)a3
{
  v4 = a3;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, v4, v6, v7) == 3)
  {
    v12 = objc_msgSend_dateValue(v4, v8, v9, v10, v11);
    v17 = objc_msgSend_asDate(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)p_BOOLeanForListItem:(id)a3
{
  v4 = a3;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, v4, v6, v7) == 2)
  {
    v12 = objc_msgSend_BOOLeanValue(v4, v8, v9, v10, v11);
    v17 = objc_msgSend_asBool(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (int)valueTypeOfItemAtIndex:(unint64_t)a3
{
  v5 = self;
  v6 = objc_msgSend_p_listItemAtIndex_(self, a2, a3, v3, v4);
  LODWORD(v5) = objc_msgSend_p_mcListTypeOfListItem_(v5, v7, v6, v8, v9);

  return v5;
}

- (double)numberAtIndex:(unint64_t)a3
{
  v6 = objc_msgSend_p_listItemAtIndex_(self, a2, a3, v3, v4);
  objc_msgSend_p_numberForListItem_(self, v7, v6, v8, v9);
  v11 = v10;

  return v11;
}

- (id)stringAtIndex:(unint64_t)a3
{
  v6 = objc_msgSend_p_listItemAtIndex_(self, a2, a3, v3, v4);
  v10 = objc_msgSend_p_stringForListItem_(self, v7, v6, v8, v9);

  return v10;
}

- (id)dateAtIndex:(unint64_t)a3
{
  v6 = objc_msgSend_p_listItemAtIndex_(self, a2, a3, v3, v4);
  v10 = objc_msgSend_p_dateForListItem_(self, v7, v6, v8, v9);

  return v10;
}

- (id)formatAtIndex:(unint64_t)a3
{
  v5 = objc_msgSend_p_listItemAtIndex_(self, a2, a3, v3, v4);
  v10 = objc_msgSend_format(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)BOOLeanAtIndex:(unint64_t)a3
{
  v5 = self;
  v6 = objc_msgSend_p_listItemAtIndex_(self, a2, a3, v3, v4);
  LOBYTE(v5) = objc_msgSend_p_BOOLeanForListItem_(v5, v7, v6, v8, v9);

  return v5;
}

- (id)displayStringAtIndex:(unint64_t)a3
{
  v7 = objc_msgSend_choices(self, a2, a3, v3, v4);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v12 <= a3)
  {
    v21 = 0;
  }

  else
  {
    v17 = objc_msgSend_choices(self, v13, v14, v15, v16);
    v21 = objc_msgSend_objectAtIndex_(v17, v18, a3, v19, v20);

    if (v21)
    {
      v26 = objc_msgSend_displayString(v21, v22, v23, v24, v25);
      goto LABEL_6;
    }
  }

  v26 = 0;
LABEL_6:

  return v26;
}

- (id)popUpItemFromNumber:(double)a3 format:(id)a4
{
  v5 = a4;
  if (objc_msgSend_formatType(v5, v6, v7, v8, v9) == 268)
  {
    v10 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v26, v5, 0);
    v12 = objc_msgSend_initWithDecimal_format_baseUnit_(v10, v11, v27, &v26, 6);
  }

  else
  {
    v21 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v26, v5, 0);
    v12 = objc_msgSend_initWithDecimal_format_(v21, v22, v27, &v26, v23);
  }

  v13 = [TSCENumberCellValue alloc];
  v18 = objc_msgSend_objectLocale(self, v14, v15, v16, v17);
  v24 = objc_msgSend_initWithNumberValue_locale_(v13, v19, v12, v18, v20);

  return v24;
}

- (id)popUpItemFromBoolean:(BOOL)a3
{
  v3 = a3;
  v5 = [TSCEBooleanCellValue alloc];
  v10 = objc_msgSend_objectLocale(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithBoolean_locale_(v5, v11, v3, v10, v12);

  return v13;
}

- (id)popUpItemFromString:(id)a3
{
  v4 = a3;
  v5 = [TSCEStringCellValue alloc];
  v10 = objc_msgSend_objectLocale(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithString_locale_(v5, v11, v4, v10, v12);

  return v13;
}

- (id)popUpItemFromDate:(id)a3 format:(id)a4
{
  v6 = a3;
  v7 = a4;
  TSCEFormat::TSCEFormat(&v21, v7, 0);
  v10 = objc_msgSend_dateValue_format_(TSCEDateValue, v8, v6, &v21, v9);
  v11 = [TSCEDateCellValue alloc];
  v16 = objc_msgSend_objectLocale(self, v12, v13, v14, v15);
  v19 = objc_msgSend_initWithDateValue_locale_(v11, v17, v10, v16, v18);

  return v19;
}

- (void)loadFromArchive:(const void *)a3
{
  v7 = *(a3 + 6);
  v8 = *(a3 + 12);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    v164 = objc_msgSend_initWithCapacity_(v18, v19, v7, v20, v21);
    if (v7 < 1)
    {
LABEL_42:
      v111 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v22, v164, v23, v24);
      items = self->_items;
      self->_items = v111;

      return;
    }

    v25 = 8;
    while (1)
    {
      v26 = *(*(a3 + 4) + v25);
      v27 = *(v26 + 56);
      if (v27 <= 2)
      {
        break;
      }

      if (v27 == 3)
      {
        v67 = [TSCEDateCellValue alloc];
        v68 = *(v26 + 32);
        v75 = objc_msgSend_objectLocale(self, v77, v78, v79, v80);
        if (v68)
        {
          goto LABEL_35;
        }

        v76 = objc_msgSend_initWithArchive_locale_(v67, v73, TSCE::_DateCellValueArchive_default_instance_, v75, v74);
LABEL_36:
        v38 = v76;

        objc_msgSend_addObject_(v164, v85, v38, v86, v87);
        goto LABEL_38;
      }

      if (v27 == 4)
      {
        v67 = [TSCENumberCellValue alloc];
        v68 = *(v26 + 40);
        v75 = objc_msgSend_objectLocale(self, v81, v82, v83, v84);
        if (!v68)
        {
          v76 = objc_msgSend_initWithArchive_locale_(v67, v73, &TSCE::_NumberCellValueArchive_default_instance_, v75, v74);
          goto LABEL_36;
        }

LABEL_35:
        v76 = objc_msgSend_initWithArchive_locale_(v67, v73, v68, v75, v74);
        goto LABEL_36;
      }

      if (v27 != 5)
      {
        goto LABEL_41;
      }

      v28 = [TSCEStringCellValue alloc];
      v29 = *(v26 + 48);
      v36 = objc_msgSend_objectLocale(self, v30, v31, v32, v33);
      if (v29)
      {
        v37 = objc_msgSend_initWithArchive_locale_(v28, v34, v29, v36, v35);
      }

      else
      {
        v37 = objc_msgSend_initWithArchive_locale_(v28, v34, &TSCE::_StringCellValueArchive_default_instance_, v36, v35);
      }

      v38 = v37;

      v43 = objc_msgSend_format(v38, v39, v40, v41, v42);
      v48 = objc_msgSend_formatType(v43, v44, v45, v46, v47);

      if (v48 == 1)
      {
        objc_msgSend_willModifyForUpgrade(self, v49, v50, v51, v52);
        v57 = objc_msgSend_displayString(v38, v53, v54, v55, v56);
        v58 = [TSCEStringCellValue alloc];
        v63 = objc_msgSend_objectLocale(self, v59, v60, v61, v62);
        v66 = objc_msgSend_initWithString_locale_(v58, v64, v57, v63, v65);

        v38 = v66;
      }

      objc_msgSend_addObject_(v164, v49, v38, v51, v52);
LABEL_38:

LABEL_39:
      v25 += 8;
      if (!--v7)
      {
        goto LABEL_42;
      }
    }

    if (v27 == 1)
    {
      v88 = [TSCENilCellValue alloc];
      v93 = objc_msgSend_objectLocale(self, v89, v90, v91, v92);
      v38 = objc_msgSend_initWithLocale_(v88, v94, v93, v95, v96);

      objc_msgSend_addObject_(v164, v97, v38, v98, v99);
      goto LABEL_38;
    }

    if (v27 != 2)
    {
LABEL_41:
      v100 = MEMORY[0x277D81150];
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTPopUpMenuModel loadFromArchive:]", v23, v24);
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v103, v104);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v106, v101, v105, 343, 0, "We are not handling this type of TSCECellValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
      goto LABEL_39;
    }

    v67 = [TSCEBooleanCellValue alloc];
    v68 = *(v26 + 24);
    v75 = objc_msgSend_objectLocale(self, v69, v70, v71, v72);
    if (v68)
    {
      goto LABEL_35;
    }

    v76 = objc_msgSend_initWithArchive_locale_(v67, v73, TSCE::_BooleanCellValueArchive_default_instance_, v75, v74);
    goto LABEL_36;
  }

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v11 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPopUpMenuModel loadFromArchive:]", v3, v4);
    if (v7 && v8)
    {
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v15, v16, 373, 0, "TSTPopUpMenuModel Archiving: Only one of item and tsce_item should exist");
    }

    else
    {
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v158, v15, v16, 376, 0, "TSTPopUpMenuModel Archiving: No items to unarchive");
    }

    v163 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v163, v159, v160, v161, v162);
  }

  else
  {
    v113 = objc_alloc(MEMORY[0x277CBEB18]);
    v117 = objc_msgSend_initWithCapacity_(v113, v114, v8, v115, v116);
    v122 = v117;
    v165 = v117;
    if (v8 >= 1)
    {
      v123 = 8;
      do
      {
        v124 = *(*(a3 + 7) + v123);
        v125 = objc_msgSend_objectLocale(self, v118, v119, v120, v121);
        v128 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v126, v124, v125, v127);

        objc_opt_class();
        v129 = TSUDynamicCast();
        v134 = v129;
        if (v129)
        {
          v135 = objc_msgSend_stringValue(v129, v130, v131, v132, v133);
          v140 = v135;
          if (v135)
          {
            objc_msgSend_format(v135, v136, v137, v138, v139);

            if (DWORD2(v166) > 1)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v166 = 0u;
          }

          objc_msgSend_willModifyForUpgrade(self, v130, v141, v132, v133);
          v146 = objc_msgSend_displayString(v134, v142, v143, v144, v145);
          v147 = [TSCEStringCellValue alloc];
          v152 = objc_msgSend_objectLocale(self, v148, v149, v150, v151);
          v155 = objc_msgSend_initWithString_locale_(v147, v153, v146, v152, v154);

          v128 = v155;
          v122 = v165;
        }

LABEL_53:
        objc_msgSend_addObject_(v122, v130, v128, v132, v133);

        v123 += 8;
        --v8;
      }

      while (v8);
    }

    v156 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v118, v122, v120, v121);
    v157 = self->_items;
    self->_items = v156;
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  self->_count = 0;
  v5 = v4;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(v5, v6, off_2812E4498[26], v7, v8);

  operator new();
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = objc_msgSend_count(self->_items, a2, a3, a4, v4);
  if (v7)
  {
    v11 = v7;
    v12 = 0;
    v13 = v7 - 1;
    while (1)
    {
      v14 = objc_msgSend_objectAtIndex_(self->_items, v8, v12, v9, v10);
      v19 = objc_msgSend_valueType(v14, v15, v16, v17, v18);
      if (v13 == v12 && v19 == 7)
      {
        v24 = objc_msgSend_displayString(v14, v20, v21, v22, v23);
        v29 = objc_msgSend_length(v24, v25, v26, v27, v28);

        if (!v29)
        {
          goto LABEL_13;
        }
      }

      v30 = *(a3 + 7);
      if (!v30)
      {
        goto LABEL_11;
      }

      v31 = *(a3 + 12);
      v32 = *v30;
      if (v31 >= *v30)
      {
        break;
      }

      *(a3 + 12) = v31 + 1;
      objc_msgSend_encodeCellValueToArchive_(v14, v20, *&v30[2 * v31 + 2], v22, v23);
LABEL_13:

      if (v11 == ++v12)
      {
        return;
      }
    }

    if (v32 == *(a3 + 13))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 40));
      v30 = *(a3 + 7);
      v32 = *v30;
    }

    *v30 = v32 + 1;
    v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(a3 + 5));
    v34 = *(a3 + 12);
    v35 = *(a3 + 7) + 8 * v34;
    *(a3 + 12) = v34 + 1;
    *(v35 + 8) = v33;
    objc_msgSend_encodeCellValueToArchive_(v14, v36, v33, v37, v38);
    goto LABEL_13;
  }
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2215ABA24, off_2812E4498[26], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithItems_context_(v5, v6, self->_items, v4, v7);

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_context(self, a2, a3, v3, v4);
  v10 = objc_msgSend_copyWithContext_(self, v7, v6, v8, v9);

  return v10;
}

+ (id)popupMenuModelFromTable:(id)a3 region:(id)a4 initialValue:(BOOL *)a5 overflow:(BOOL *)a6
{
  v10 = a3;
  v57 = a4;
  v15 = objc_msgSend_documentRoot(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_documentLocale(v15, v16, v17, v18, v19);

  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 1;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 1;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 1;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_2215AA6F0;
  v74 = sub_2215AA700;
  v75 = 0;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = [TSCENilCellValue alloc];
  v26 = objc_msgSend_initWithLocale_(v22, v23, v20, v24, v25, v20);
  objc_msgSend_addObject_(v21, v27, v26, v28, v29);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_2215AA6F0;
  v68[4] = sub_2215AA700;
  v69 = 0;
  v32 = objc_msgSend_prunedCellRegionAgainstTable_behavior_(v57, v30, v10, 1, v31);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_2215AA708;
  v58[3] = &unk_2784673C8;
  v61 = &v80;
  v62 = &v88;
  v63 = &v70;
  v64 = &v76;
  v67 = a1;
  v33 = v20;
  v59 = v33;
  v34 = v21;
  v60 = v34;
  v65 = &v84;
  v66 = v68;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v10, v35, v32, 2, 0x20000000, v58);
  if (objc_msgSend_count(v34, v36, v37, v38, v39) == 1)
  {
    v44 = objc_msgSend_context(v10, v40, v41, v42, v43);
    v47 = objc_msgSend_p_PopUpMenuModelDefaultWithContext_locale_(TSTPopUpMenuModel, v45, v44, v33, v46);

    *(v89 + 24) = 1;
  }

  else if (*(v81 + 24) == 1 && *(v77 + 24) == 1)
  {
    v47 = objc_msgSend_popupModel(v71[5], v40, v41, v42, v43);
    *(v85 + 24) = 0;
  }

  else
  {
    v48 = [TSTPopUpMenuModel alloc];
    v53 = objc_msgSend_context(v10, v49, v50, v51, v52);
    v47 = objc_msgSend_initWithItems_context_(v48, v54, v34, v53, v55);
  }

  if (a6)
  {
    *a6 = *(v85 + 24);
  }

  if (a5)
  {
    *a5 = *(v89 + 24);
  }

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v88, 8);

  return v47;
}

+ (void)p_appendChoices:(id)a3 uniquelyToChoices:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v32, 16);
  if (v13)
  {
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v17 = 0;
        v18 = objc_msgSend_count(v6, v9, v10, v11, v12, v28);
        if (v18)
        {
          while (1)
          {
            v19 = objc_msgSend_objectAtIndex_(v6, v9, v17, v11, v12);
            isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v16, v20, v19, v21, v22);

            if (isEqualToCellValue)
            {
              break;
            }

            if (v18 == ++v17)
            {
              goto LABEL_11;
            }
          }
        }

        if (v17 == v18)
        {
LABEL_11:
          v24 = objc_msgSend_copy(v16, v9, v10, v11, v12);
          objc_msgSend_addObject_(v6, v25, v24, v26, v27);
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v28, v32, 16);
    }

    while (v13);
  }
}

+ (id)p_PopUpMenuModelDefaultWithContext:(id)a3 locale:(id)a4
{
  v53[4] = *MEMORY[0x277D85DE8];
  v52 = a3;
  v5 = a4;
  v6 = [TSCENilCellValue alloc];
  v10 = objc_msgSend_initWithLocale_(v6, v7, v5, v8, v9);
  v15 = sub_2214AAEA8(v10, v11, v12, v13, v14);
  v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v16, @"Item 1", &stru_2834BADA0, @"TSTables");

  v18 = [TSCEStringCellValue alloc];
  v21 = objc_msgSend_initWithString_locale_(v18, v19, v17, v5, v20);
  v26 = sub_2214AAEA8(v21, v22, v23, v24, v25);
  v28 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Item 2", &stru_2834BADA0, @"TSTables");

  v29 = [TSCEStringCellValue alloc];
  v32 = objc_msgSend_initWithString_locale_(v29, v30, v28, v5, v31);
  v37 = sub_2214AAEA8(v32, v33, v34, v35, v36);
  v39 = objc_msgSend_localizedStringForKey_value_table_(v37, v38, @"Item 3", &stru_2834BADA0, @"TSTables");

  v40 = [TSCEStringCellValue alloc];
  v43 = objc_msgSend_initWithString_locale_(v40, v41, v39, v5, v42);
  v44 = [TSTPopUpMenuModel alloc];
  v53[0] = v10;
  v53[1] = v21;
  v53[2] = v32;
  v53[3] = v43;
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v53, 4, v46);
  v50 = objc_msgSend_initWithItems_context_(v44, v48, v47, v52, v49);

  return v50;
}

+ (id)p_cellValueFromCellWithCustomFormat:(id)a3 locale:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_formattedValue(a3, v6, v7, v8, v9);
  if (objc_msgSend_length(v10, v11, v12, v13, v14))
  {
    TSCEFormat::TSCEFormat(v27, 260);
    v17 = objc_msgSend_stringValue_format_(TSCEStringValue, v15, v10, v27, v16);
    v18 = [TSCEStringCellValue alloc];
    v21 = objc_msgSend_initWithStringValue_locale_(v18, v19, v17, v5, v20);
  }

  else
  {
    v22 = [TSCENilCellValue alloc];
    v21 = objc_msgSend_initWithLocale_(v22, v23, v5, v24, v25);
  }

  return v21;
}

+ (id)cellValueFromCell:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_currentFormat(v6, v8, v9, v10, v11);
  if (objc_msgSend_formatType(v12, v13, v14, v15, v16) == 267)
  {
    v19 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v17, 256, v7, v18);

    v12 = v19;
  }

  TSCEFormat::TSCEFormat(&v131, v12, 0);
  v28 = objc_msgSend_formatType(v12, v20, v21, v22, v23) - 270;
  if (v28 <= 4 && v28 != 3)
  {
    v29 = objc_msgSend_p_cellValueFromCellWithCustomFormat_locale_(a1, v24, v6, v7, v27);
LABEL_6:
    v30 = v29;
    goto LABEL_7;
  }

  v32 = objc_msgSend_valueType(v6, v24, v25, v26, v27);
  v30 = 0;
  if (v32 <= 5)
  {
    if (v32 <= 2)
    {
      if (v32)
      {
        if (v32 != 2)
        {
          goto LABEL_7;
        }

        v55 = [TSCENumberValue alloc];
        objc_msgSend_numberDoubleValue(v6, v56, v57, v58, v59);
        TSUDecimal::operator=();
        v40 = objc_msgSend_initWithDecimal_format_(v55, v60, v130, &v131, v61);
        v62 = [TSCENumberCellValue alloc];
        v44 = objc_msgSend_initWithNumberValue_locale_(v62, v63, v40, v7, v64);
        goto LABEL_32;
      }
    }

    else
    {
      if (v32 == 3)
      {
        v97 = [TSCEStringCellValue alloc];
        v40 = objc_msgSend_stringValue(v6, v98, v99, v100, v101);
        v44 = objc_msgSend_initWithString_locale_(v97, v102, v40, v7, v103);
        goto LABEL_32;
      }

      if (v32 != 4)
      {
        v37 = objc_msgSend_dateValue(v6, v33, v34, v35, v36);
        v40 = objc_msgSend_dateValue_format_(TSCEDateValue, v38, v37, &v131, v39);

        v41 = [TSCEDateCellValue alloc];
        v44 = objc_msgSend_initWithDateValue_locale_(v41, v42, v40, v7, v43);
LABEL_32:
        v30 = v44;
        goto LABEL_33;
      }
    }

LABEL_24:
    v65 = [TSCENilCellValue alloc];
    v29 = objc_msgSend_initWithLocale_(v65, v66, v7, v67, v68);
    goto LABEL_6;
  }

  if (v32 <= 7)
  {
    if (v32 == 6)
    {
      v89 = [TSCEBooleanCellValue alloc];
      v94 = objc_msgSend_BOOLValue(v6, v90, v91, v92, v93);
      v29 = objc_msgSend_initWithBoolean_locale_(v89, v95, v94, v7, v96);
      goto LABEL_6;
    }

    v69 = objc_msgSend_asDurationFormat(v12, v33, v34, v35, v36);
    objc_msgSend_durationTimeIntervalValue(v6, v70, v71, v72, v73);
    v78 = objc_msgSend_durationUnitLargestWithTimeInterval_(v69, v74, v75, v76, v77);
    v79 = sub_221387C78(v78);

    v80 = [TSCENumberValue alloc];
    objc_msgSend_durationTimeIntervalValue(v6, v81, v82, v83, v84);
    TSUDecimal::operator=();
    v40 = objc_msgSend_initWithDecimal_format_baseUnit_(v80, v85, v130, &v131, v79);
    v86 = [TSCENumberCellValue alloc];
    v44 = objc_msgSend_initWithNumberValue_locale_(v86, v87, v40, v7, v88);
    goto LABEL_32;
  }

  if (v32 == 8)
  {
    goto LABEL_24;
  }

  if (v32 != 9)
  {
    if (v32 != 10)
    {
      goto LABEL_7;
    }

    if (v131._formatType == 257)
    {
      v45 = objc_msgSend_asCurrencyFormat(v12, v33, v34, v35, v36);
      v50 = objc_msgSend_currencyCode(v45, v46, v47, v48, v49);

      v54 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v51, v50, v52, v53);
    }

    else
    {
      v54 = 0;
    }

    v121 = [TSCENumberValue alloc];
    objc_msgSend_currencyDoubleValue(v6, v122, v123, v124, v125);
    TSUDecimal::operator=();
    v40 = objc_msgSend_initWithDecimal_format_baseUnit_(v121, v126, v130, &v131, v54);
    v127 = [TSCENumberCellValue alloc];
    v44 = objc_msgSend_initWithNumberValue_locale_(v127, v128, v40, v7, v129);
    goto LABEL_32;
  }

  v104 = [TSCEStringCellValue alloc];
  v40 = objc_msgSend_richTextValue(v6, v105, v106, v107, v108);
  v113 = objc_msgSend_string(v40, v109, v110, v111, v112);
  v118 = objc_msgSend_tsu_stringWithoutAttachmentCharacters(v113, v114, v115, v116, v117);
  v30 = objc_msgSend_initWithString_locale_(v104, v119, v118, v7, v120);

LABEL_33:
LABEL_7:

  return v30;
}

+ (id)popupMenuModelDeletingItemFromModel:(id)a3 index:(unint64_t)a4
{
  v5 = a3;
  v10 = objc_msgSend_choices(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_mutableCopy(v10, v11, v12, v13, v14);

  objc_msgSend_removeObjectAtIndex_(v15, v16, a4, v17, v18);
  v19 = [TSTPopUpMenuModel alloc];
  v24 = objc_msgSend_context(v5, v20, v21, v22, v23);
  v27 = objc_msgSend_initWithItems_context_(v19, v25, v15, v24, v26);

  return v27;
}

+ (id)popupMenuModelEditingItemInModel:(id)a3 index:(unint64_t)a4 newContent:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_choices(v8, v10, v11, v12, v13);
  v19 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18);

  v20 = [TSTCell alloc];
  v25 = objc_msgSend_objectLocale(v8, v21, v22, v23, v24);
  v29 = objc_msgSend_initWithLocale_(v20, v26, v25, v27, v28);

  objc_msgSend_parseContentFromString_flags_(v29, v30, v9, 0, v31);
  v36 = objc_msgSend_objectLocale(v8, v32, v33, v34, v35);
  v39 = objc_msgSend_cellValueFromCell_locale_(a1, v37, v29, v36, v38);

  if (objc_msgSend_count(v19, v40, v41, v42, v43) <= a4)
  {
    objc_msgSend_addObject_(v19, v44, v39, v45, v46);
  }

  else
  {
    objc_msgSend_setObject_atIndexedSubscript_(v19, v44, v39, a4, v46);
  }

  v47 = [TSTPopUpMenuModel alloc];
  v52 = objc_msgSend_context(v8, v48, v49, v50, v51);
  v55 = objc_msgSend_initWithItems_context_(v47, v53, v19, v52, v54);

  return v55;
}

+ (id)popupMenuModelReorderingModel:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v7 = a3;
  v12 = objc_msgSend_choices(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_mutableCopy(v12, v13, v14, v15, v16);

  if (objc_msgSend_count(v17, v18, v19, v20, v21) <= a4)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSTPopUpMenuModel popupMenuModelReorderingModel:fromIndex:toIndex:]", v24, v25);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 766, 0, "Bad index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  if (objc_msgSend_count(v17, v22, v23, v24, v25) <= a5)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "+[TSTPopUpMenuModel popupMenuModelReorderingModel:fromIndex:toIndex:]", v38, v39);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v43, v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 767, 0, "Bad index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  v51 = objc_msgSend_objectAtIndex_(v17, v37, a4, v38, v39);
  objc_msgSend_removeObjectAtIndex_(v17, v52, a4, v53, v54);
  objc_msgSend_insertObject_atIndex_(v17, v55, v51, a5, v56);
  v57 = [TSTPopUpMenuModel alloc];
  v62 = objc_msgSend_context(v7, v58, v59, v60, v61);
  v65 = objc_msgSend_initWithItems_context_(v57, v63, v17, v62, v64);

  return v65;
}

@end