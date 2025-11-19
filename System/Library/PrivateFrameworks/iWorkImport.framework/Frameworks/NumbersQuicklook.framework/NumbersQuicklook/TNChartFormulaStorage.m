@interface TNChartFormulaStorage
+ (unint64_t)maxLabeledGroupsForScheme:(int)a3;
+ (vector<TNChartFormulaType,)persistentFormulaTypes;
- (BOOL)dataFormulaAreRegularForSeriesInsertionWithCalcEngine:(id)a3 inOwner:(TSKUIDStruct)a4;
- (BOOL)formulasOfType:(unint64_t)a3 areAllStaticWithCalcEngine:(id)a4 inEntity:(TSKUIDStruct)a5;
- (BOOL)isEqualToFormulaStorage:(id)a3;
- (BOOL)labelFormulasAreAllStaticWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4;
- (TNChartFormulaStorage)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TNChartFormulaStorage)initWithChartFormulaStorage:(id)a3;
- (TNChartFormulaStorage)initWithDirection:(int)a3;
- (TNChartFormulaStorage)initWithDirection:(int)a3 scheme:(int)a4;
- (id)areaFormulaWithCalcEngine:(id)a3 inOwner:(TSKUIDStruct)a4;
- (id)copyByRewriting:(BOOL)a3 withCalcEngine:(id)a4 andHostUID:(TSKUIDStruct)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptorForSummaryChart:(TSKUIDStruct)a3 withCalcEngine:(id)a4;
- (id)formulaForID:(TSUCellCoord)a3;
- (id)formulaListForType:(unint64_t)a3;
- (id)formulaTypeEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)referencedEntitiesWithCalcEngine:(id)a3;
- (unint64_t)categoryLabelFormulaType;
- (unint64_t)numberOfDataFormulas;
- (unint64_t)numberOfGroupsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5;
- (unint64_t)numberOfLabelsForType:(unint64_t)a3 withCalcEngine:(id)a4 inEntity:(TSKUIDStruct)a5 shouldSkipHiddenData:(BOOL)a6;
- (unint64_t)numberOfSeriesWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5;
- (unint64_t)numberOfTotalCategoryLabelsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5;
- (unint64_t)p_calculateNumberOfGroupsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5;
- (unint64_t)seriesLabelFormulaType;
- (void)clearCachesForCalculationEngine:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TNChartFormulaStorage

- (TNChartFormulaStorage)initWithDirection:(int)a3 scheme:(int)a4
{
  v45.receiver = self;
  v45.super_class = TNChartFormulaStorage;
  v6 = [(TNChartFormulaStorage *)&v45 init];
  if (v6)
  {
    v7 = objc_opt_new();
    storage = v6->_storage;
    v6->_storage = v7;

    v9 = objc_opt_new();
    v10 = v6->_storage;
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v13, v9, v12);

    v14 = objc_opt_new();
    v15 = v6->_storage;
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v16, 2);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v18, v14, v17);

    v19 = objc_opt_new();
    v20 = v6->_storage;
    v22 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v21, 3);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v23, v19, v22);

    v24 = objc_opt_new();
    v25 = v6->_storage;
    v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v26, 4);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v28, v24, v27);

    v29 = objc_opt_new();
    v30 = v6->_storage;
    v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, 5);
    objc_msgSend_setObject_forKeyedSubscript_(v30, v33, v29, v32);

    v34 = objc_opt_new();
    v35 = v6->_storage;
    v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, 6);
    objc_msgSend_setObject_forKeyedSubscript_(v35, v38, v34, v37);

    v39 = objc_opt_new();
    v40 = v6->_storage;
    v42 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, 7);
    objc_msgSend_setObject_forKeyedSubscript_(v40, v43, v39, v42);

    v6->_scheme = a4;
    v6->_direction = a3;
  }

  return v6;
}

- (TNChartFormulaStorage)initWithDirection:(int)a3
{
  v3 = *&a3;
  v5 = objc_msgSend_defaultScheme(TNChartFormulaStorage, a2, *&a3);
  return objc_msgSend_initWithDirection_scheme_(self, v6, v3, v5);
}

- (TNChartFormulaStorage)initWithChartFormulaStorage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TNChartFormulaStorage;
  v7 = [(TNChartFormulaStorage *)&v14 init];
  if (v7)
  {
    v8 = objc_msgSend_mutableCopy(v4, v5, v6);
    objc_storeStrong(&v7->_storage, v8[1]);
    v7->_direction = objc_msgSend_direction(v8, v9, v10);
    v7->_scheme = objc_msgSend_scheme(v8, v11, v12);
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TNMutableChartFormulaStorage, a2, a3);

  return objc_msgSend_initWithChartFormulaStorage_(v4, v5, self);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);

  return objc_msgSend_initWithChartFormulaStorage_(v7, v8, self);
}

- (BOOL)isEqualToFormulaStorage:(id)a3
{
  v6 = a3;
  if (v6 && (v7 = objc_msgSend_count(self->_storage, v4, v5), v7 == objc_msgSend_count(v6[1], v8, v9)) && (v12 = objc_msgSend_direction(self, v10, v11), v12 == objc_msgSend_direction(v6, v13, v14)))
  {
    v41 = objc_msgSend_formulaTypeEnumerator(self, v15, v16);
    while (1)
    {
      FormulaType = objc_msgSend_nextFormulaType(v41, v17, v18);
      v21 = FormulaType == 0x7FFFFFFFFFFFFFFFLL;
      if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v22 = objc_msgSend_formulaListForType_(self, v19, FormulaType);
      v24 = objc_msgSend_formulaListForType_(v6, v23, FormulaType);
      v27 = objc_msgSend_count(v22, v25, v26);
      if (v27 != objc_msgSend_count(v24, v28, v29))
      {
        goto LABEL_14;
      }

      v33 = objc_msgSend_count(v22, v30, v31);
      if (v33)
      {
        v34 = 0;
        while (1)
        {
          v35 = objc_msgSend_objectAtIndex_(v22, v32, v34);
          v37 = objc_msgSend_objectAtIndex_(v24, v36, v34);
          IsEqualTo = objc_msgSend_formulaIsEqualTo_(v35, v38, v37);

          if ((IsEqualTo & 1) == 0)
          {
            break;
          }

          if (v33 == ++v34)
          {
            goto LABEL_11;
          }
        }

LABEL_14:

        break;
      }

LABEL_11:
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)referencedEntitiesWithCalcEngine:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 1065353216;
  v49 = 0u;
  v50 = 0u;
  v51 = 1065353216;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = self->_storage;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v45, v56, 16);
  if (v7)
  {
    v8 = *v46;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = objc_msgSend_objectForKeyedSubscript_(self->_storage, v6, *(*(&v45 + 1) + 8 * i));
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v11 = v10;
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v41, v55, 16);
        if (v15)
        {
          v16 = *v42;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = objc_msgSend_formulaObject(*(*(&v41 + 1) + 8 * j), v13, v14);
              objc_msgSend_appendExternalTableUIDs_groupByUIDs_(v18, v19, &v52, &v49);
            }

            v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v41, v55, 16);
          }

          while (v15);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v45, v56, 16);
    }

    while (v7);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  for (k = v53; k; k = *k)
  {
    if (k[2] || k[3])
    {
      v23 = objc_alloc(MEMORY[0x277D80C68]);
      v25 = objc_msgSend_initWithFormulaOwnerUID_(v23, v24, (k + 2));
      objc_msgSend_addObject_(v21, v26, v25);
    }
  }

  for (m = v50; m; m = *m)
  {
    v28 = objc_msgSend_groupByForUID_withCalcEngine_(MEMORY[0x277D80D18], v20, m[2], m[3], v38);
    v31 = v28;
    if (v28)
    {
      v39 = 0;
      v40 = 0;
      v39 = objc_msgSend_baseTableUID(v28, v29, v30);
      v40 = v32;
      if (v39 | v32)
      {
        v33 = objc_alloc(MEMORY[0x277D80C68]);
        v35 = objc_msgSend_initWithFormulaOwnerUID_(v33, v34, &v39);
        objc_msgSend_addObject_(v21, v36, v35);
      }
    }
  }

  sub_275F07C74(&v49);
  sub_275F07C74(&v52);

  return v21;
}

- (id)copyByRewriting:(BOOL)a3 withCalcEngine:(id)a4 andHostUID:(TSKUIDStruct)a5
{
  upper = a5._upper;
  lower = a5._lower;
  v7 = a3;
  v49 = a4;
  v9 = [TNMutableChartFormulaStorage alloc];
  v12 = objc_msgSend_direction(self, v10, v11);
  v15 = objc_msgSend_scheme(self, v13, v14);
  v50 = objc_msgSend_initWithDirection_scheme_(v9, v16, v12, v15);
  v51 = objc_msgSend_formulaTypeEnumerator(self, v17, v18);
  v52[0] = 0;
  v52[1] = lower;
  v52[2] = upper;
  MEMORY[0x277C90920](v53, v49, v52);
  for (i = objc_msgSend_nextFormulaType(v51, v19, v20); i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_nextFormulaType(v51, v46, v47))
  {
    v23 = objc_msgSend_formulaListForType_(self, v21, i);
    v24 = MEMORY[0x277CBEB18];
    v27 = objc_msgSend_count(v23, v25, v26);
    v29 = objc_msgSend_arrayWithCapacity_(v24, v28, v27);
    objc_msgSend_setFormulaList_forKey_(v50, v30, v29, i);
    v34 = objc_msgSend_count(v23, v31, v32);
    if (v34)
    {
      for (j = 0; j != v34; ++j)
      {
        v36 = objc_msgSend_objectAtIndex_(v23, v33, j, v49);
        v40 = objc_msgSend_formulaObject(v36, v37, v38);
        if (v7)
        {
          v41 = objc_msgSend_copyByRewritingReferencesToUidForm_(v40, v39, v53);
        }

        else
        {
          v41 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v40, v39, v53);
        }

        v42 = v41;

        v44 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v43, v42);
        objc_msgSend_addObject_(v29, v45, v44);
      }
    }
  }

  return v50;
}

+ (unint64_t)maxLabeledGroupsForScheme:(int)a3
{
  if (a3 == 1)
  {
    return 250000;
  }

  else
  {
    return 0xFFFFLL;
  }
}

- (id)formulaForID:(TSUCellCoord)a3
{
  row = a3.row;
  v4 = objc_msgSend_formulaListForType_(self, a2, a3.column);
  if (objc_msgSend_count(v4, v5, v6) <= row)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(v4, v7, row);
  }

  return v8;
}

- (id)formulaListForType:(unint64_t)a3
{
  storage = self->_storage;
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3);
  v6 = objc_msgSend_objectForKey_(storage, v5, v4);

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = objc_msgSend_array(MEMORY[0x277CBEA60], v7, v8);
  }

  v10 = v9;

  return v10;
}

- (id)formulaTypeEnumerator
{
  v3 = [TNChartFormulaTypeEnumerator alloc];
  v5 = objc_msgSend_initWithChartFormulaStorage_(v3, v4, self);

  return v5;
}

- (id)description
{
  v39 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = TNChartFormulaStorage;
  v32 = [(TNChartFormulaStorage *)&v37 description];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_msgSend_initWithString_(v3, v4, v32);
  v7 = v5;
  direction = self->_direction;
  if (direction > 2)
  {
    objc_msgSend_appendFormat_(v5, v6, @" = {\n\tdirection: %@\n", 0);
  }

  else
  {
    objc_msgSend_appendFormat_(v5, v6, @" = {\n\tdirection: %@\n", off_27A6A2DA0[direction]);
  }

  v13 = objc_msgSend_formulaTypeEnumerator(self, v9, v10);
  while (1)
  {
    FormulaType = objc_msgSend_nextFormulaType(v13, v11, v12);
    v16 = FormulaType;
    v17 = 0;
    if (FormulaType <= 4)
    {
      if (FormulaType > 1)
      {
        if (FormulaType == 2)
        {
          objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaRowLabel");
        }

        else if (FormulaType == 3)
        {
          objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaColumnLabel");
        }

        else
        {
          objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaCustomPosYErrorBar");
        }

        goto LABEL_25;
      }

      if (!FormulaType)
      {
        objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaChartArea");
        goto LABEL_25;
      }

      if (FormulaType == 1)
      {
        objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaChartData");
        goto LABEL_25;
      }

LABEL_24:
      objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", v17);
      goto LABEL_25;
    }

    if (FormulaType > 6)
    {
      break;
    }

    if (FormulaType == 5)
    {
      objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaCustomNegYErrorBar");
    }

    else
    {
      objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaCustomPosXErrorBar");
    }

LABEL_25:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = objc_msgSend_formulaListForType_(self, v18, v16);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v33, v38, 16);
    if (v23)
    {
      v24 = *v34;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = objc_msgSend_description(*(*(&v33 + 1) + 8 * i), v21, v22);
          objc_msgSend_appendFormat_(v7, v27, @"\t\t%@,\n", v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v33, v38, 16);
      }

      while (v23);
    }

    objc_msgSend_appendString_(v7, v28, @"\t}\n");
  }

  if (FormulaType == 7)
  {
    v17 = @"kTNChartFormulaCustomNegXErrorBar";
    goto LABEL_24;
  }

  if (FormulaType == 255)
  {
    objc_msgSend_appendFormat_(v7, v15, @"\t%@: {\n", @"kTNChartFormulaHub");
    goto LABEL_25;
  }

  if (FormulaType != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  objc_msgSend_appendString_(v7, v15, @"}\n");
  v30 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v29, v7);

  return v30;
}

- (unint64_t)p_calculateNumberOfGroupsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v31 = a4;
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartFormulaStorage p_calculateNumberOfGroupsWithCalcEngine:inEntity:shouldSkipHiddenData:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 271, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_formulaListForType_(self, v7, 1);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v16 = v28 = 0u;
  v18 = 0;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v32, 16);
  if (v20)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        scheme = self->_scheme;
        if (scheme == 2)
        {
          shouldSkipHiddenData = objc_msgSend_numberOfGridValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v23, v19, v8, &v31, self->_direction != 1, v5);
        }

        else
        {
          if (scheme)
          {
            continue;
          }

          shouldSkipHiddenData = objc_msgSend_numberOfValuesWithCalcEngine_inChart_shouldSkipHiddenData_(v23, v19, v8, &v31, v5);
        }

        if (v18 <= shouldSkipHiddenData)
        {
          v18 = shouldSkipHiddenData;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v27, v32, 16);
    }

    while (v20);
  }

  return v18;
}

- (unint64_t)numberOfGroupsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5
{
  v5 = a5;
  upper = a4._upper;
  lower = a4._lower;
  v10 = a3;
  if (self->_cachedNumberOfGroupsValid)
  {
    cachedNumberOfGroups = self->_cachedNumberOfGroups;
  }

  else
  {
    cachedNumberOfGroups = objc_msgSend_p_calculateNumberOfGroupsWithCalcEngine_inEntity_shouldSkipHiddenData_(self, v9, v10, lower, upper, v5);
    self->_cachedNumberOfGroups = cachedNumberOfGroups;
    self->_cachedNumberOfGroupsValid = 1;
  }

  return cachedNumberOfGroups;
}

- (unint64_t)numberOfTotalCategoryLabelsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5
{
  upper = a4._upper;
  lower = a4._lower;
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v11 = objc_msgSend_categoryLabelFormulaType(self, v9, v10);
  v13 = objc_msgSend_formulaListForType_(self, v12, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_275F1D9BC;
  v18[3] = &unk_27A6A2D80;
  v20 = &v24;
  v14 = v8;
  v19 = v14;
  v21 = lower;
  v22 = upper;
  v23 = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v15, v18);
  v16 = v25[3];

  _Block_object_dispose(&v24, 8);
  return v16;
}

- (BOOL)formulasOfType:(unint64_t)a3 areAllStaticWithCalcEngine:(id)a4 inEntity:(TSKUIDStruct)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = a5;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = objc_msgSend_formulaListForType_(self, v8, a3, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v22, 16);
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if ((objc_msgSend_isAllStaticValuesWithCalcEngine_inOwner_(*(*(&v17 + 1) + 8 * i), v11, v7, &v21) & 1) == 0)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v17, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (BOOL)labelFormulasAreAllStaticWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v7 = a3;
  if (objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(self, v8, 3, v7, lower, upper))
  {
    v10 = objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(self, v9, 2, v7, lower, upper);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)numberOfDataFormulas
{
  v2 = objc_msgSend_formulaListForType_(self, a2, 1);
  v5 = objc_msgSend_count(v2, v3, v4);

  return v5;
}

- (unint64_t)numberOfSeriesWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5
{
  v5 = a5;
  v20 = a4;
  v7 = a3;
  if (objc_msgSend_scheme(self, v8, v9, v20._lower, v20._upper) == 2)
  {
    v12 = objc_msgSend_formulaListForType_(self, v10, 1);
    objc_opt_class();
    v15 = objc_msgSend_firstObject(v12, v13, v14);
    v16 = TSUDynamicCast();

    shouldSkipHiddenData = objc_msgSend_numberOfGridValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v16, v17, v7, &v20, self->_direction == 1, v5);
  }

  else
  {
    shouldSkipHiddenData = objc_msgSend_numberOfDataFormulas(self, v10, v11);
  }

  return shouldSkipHiddenData;
}

- (unint64_t)numberOfLabelsForType:(unint64_t)a3 withCalcEngine:(id)a4 inEntity:(TSKUIDStruct)a5 shouldSkipHiddenData:(BOOL)a6
{
  v6 = a6;
  upper = a5._upper;
  lower = a5._lower;
  v37 = a5;
  v13 = a4;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TNChartFormulaStorage numberOfLabelsForType:withCalcEngine:inEntity:shouldSkipHiddenData:]", v37._lower, v37._upper);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 347, 0, "Should only be counting labels in chart label formulas!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (objc_msgSend_scheme(self, v11, v12, v37._lower, v37._upper) == 2)
  {
    v23 = objc_msgSend_formulaListForType_(self, v21, a3);
    objc_opt_class();
    v26 = objc_msgSend_firstObject(v23, v24, v25);
    v27 = TSUDynamicCast();

    shouldSkipHiddenData = objc_msgSend_numberOfGridValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v27, v28, v13, &v37, a3 == 2, v6);
  }

  else if (objc_msgSend_seriesLabelFormulaType(self, v21, v22) == a3)
  {
    v32 = objc_msgSend_formulaListForType_(self, v30, a3);
    shouldSkipHiddenData = objc_msgSend_count(v32, v33, v34);
  }

  else if (objc_msgSend_categoryLabelFormulaType(self, v30, v31) == a3)
  {
    shouldSkipHiddenData = objc_msgSend_numberOfTotalCategoryLabelsWithCalcEngine_inEntity_shouldSkipHiddenData_(self, v35, v13, lower, upper, v6);
  }

  else
  {
    shouldSkipHiddenData = 0;
  }

  return shouldSkipHiddenData;
}

- (unint64_t)seriesLabelFormulaType
{
  v4 = objc_msgSend_direction(self, a2, v2);
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TNChartFormulaStorage seriesLabelFormulaType]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 366, 0, "Direction unknown.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  if (v4 == 2)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)categoryLabelFormulaType
{
  v4 = objc_msgSend_direction(self, a2, v2);
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TNChartFormulaStorage categoryLabelFormulaType]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 372, 0, "Direction unknown.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)dataFormulaAreRegularForSeriesInsertionWithCalcEngine:(id)a3 inOwner:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = objc_msgSend_formulaListForType_(self, v8, 1);
  v11 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  *&v47 = lower;
  *(&v47 + 1) = upper;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v9;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v43, v48, 16);
  if (v14)
  {
    v15 = *v44;
    v16 = 1;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v44 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v43 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      v21 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_storeBadRef_(v18, v20, v7, &v47, 1);
      v24 = objc_msgSend_lastElement(v21, v22, v23);
      if (objc_msgSend_isBadRef(v24, v25, v26))
      {
        v29 = 3;
        goto LABEL_24;
      }

      if (objc_msgSend_count(v21, v27, v28) != 1 || !objc_msgSend_isReference(v24, v30, v31))
      {
        v29 = 1;
        goto LABEL_24;
      }

      if (v24)
      {
        objc_msgSend_rangeReference(v24, v32, v33);
        v34 = WORD6(v41) - WORD2(v41);
        v35 = DWORD2(v41) - v41 + 1;
        v36 = (v34 + 1);
        v37 = v35;
        if (v34 >= 1 && v35 > 1)
        {
          v29 = 1;
LABEL_22:
          v36 = v11;
          v37 = v10;
          goto LABEL_23;
        }
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
        v37 = 1.0;
        v36 = 1.0;
      }

      if ((v16 & 1) == 0)
      {
        v16 = 0;
        v29 = 1;
        if (v11 != v36 || v10 != v37)
        {
          goto LABEL_22;
        }

        if (v47 != v42)
        {
          v16 = 0;
          goto LABEL_22;
        }
      }

      v29 = 0;
      v16 = 0;
      v47 = v42;
LABEL_23:
      v11 = v36;
      v10 = v37;
LABEL_24:

      objc_autoreleasePoolPop(v19);
      if (v29 != 3 && v29)
      {
        v39 = 0;
        goto LABEL_30;
      }

      if (v14 == ++v17)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v38, &v43, v48, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v39 = 1;
LABEL_30:

  return v39;
}

- (void)clearCachesForCalculationEngine:(id)a3
{
  v21 = a3;
  v8 = objc_msgSend_formulaTypeEnumerator(self, v4, v5);
  while (1)
  {
    FormulaType = objc_msgSend_nextFormulaType(v8, v6, v7);
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v11 = objc_msgSend_formulaListForType_(self, v9, FormulaType);
    v14 = v11;
    if (v11)
    {
      v15 = objc_msgSend_count(v11, v12, v13);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          objc_opt_class();
          v18 = objc_msgSend_objectAtIndex_(v14, v17, i);
          v19 = TSUDynamicCast();

          objc_msgSend_clearCacheForCalculationEngine_(v19, v20, v21);
        }
      }
    }
  }
}

- (id)descriptorForSummaryChart:(TSKUIDStruct)a3 withCalcEngine:(id)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v7 = a4;
  v8 = objc_alloc_init(TNChartReferenceSummaryDescriptor);
  objc_msgSend_setTableType_(v8, v9, 4);
  if (objc_msgSend_scheme(self, v10, v11) != 2)
  {
    goto LABEL_50;
  }

  v120[0] = lower;
  v120[1] = upper;
  v13 = objc_msgSend_formulaListForType_(self, v12, 1);
  if (objc_msgSend_count(v13, v14, v15))
  {
    v18 = objc_msgSend_firstObject(v13, v16, v17);
    v20 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v18, v19, v7, v120);
    if (!objc_msgSend_count(v20, v21, v22))
    {
      v43 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v25 = objc_msgSend_firstElement(v20, v23, v24);
    if (objc_msgSend_type(v25, v26, v27) != 6)
    {
      v43 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v30 = objc_msgSend_viewTractReference(v25, v28, v29);
    objc_msgSend_setViewTractRef_(v8, v31, v30);
    v32 = MEMORY[0x277D80D40];
    v35 = objc_msgSend_tableUID(v30, v33, v34);
    v37 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v32, v36, v35, v36, v7);
    if (objc_msgSend_isCategorized(v37, v38, v39))
    {
      objc_msgSend_setTableType_(v8, v40, 2);
    }

    else
    {
      if (objc_msgSend_isAPivotTable(v37, v40, v41))
      {
        objc_msgSend_setTableType_(v8, v44, 3);
        v47 = objc_msgSend_pivotOwner(v37, v45, v46);
        v119 = objc_msgSend_flatteningDimension(v47, v48, v49);

        v50 = v119 != 0;
LABEL_14:

        v43 = v50;
        goto LABEL_15;
      }

      objc_msgSend_setTableType_(v8, v44, 1);
    }

    v50 = 1;
    goto LABEL_14;
  }

  objc_msgSend_setTableType_(v8, v16, 0);
  v43 = 1;
LABEL_17:
  objc_msgSend_setGroupLabelOptions_(v8, v42, 7);
  v52 = objc_msgSend_formulaListForType_(self, v51, 2);
  if (objc_msgSend_count(v52, v53, v54))
  {
    v57 = objc_msgSend_firstObject(v52, v55, v56);
    v59 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v57, v58, v7, v120);
    if (objc_msgSend_count(v59, v60, v61))
    {
      v64 = objc_msgSend_firstElement(v59, v62, v63);
      if (objc_msgSend_type(v64, v65, v66) == 3)
      {
        v69 = objc_msgSend_categoryReference(v64, v67, v68);
        v72 = v69;
        if (v69)
        {
          if (objc_msgSend_type(v69, v70, v71) == 7)
          {
            v75 = objc_msgSend_groupLabelOptions(v8, v73, v74) | 1;
            objc_msgSend_setGroupLabelOptions_(v8, v76, v75);
          }

          else if (objc_msgSend_type(v72, v73, v74) == 9)
          {
            v79 = objc_msgSend_groupLabelOptions(v8, v77, v78) & 0xFE;
            objc_msgSend_setGroupLabelOptions_(v8, v80, v79);
          }

          if ((v43 & 1) == 0)
          {
            if ((objc_msgSend_options(v72, v77, v78) & 4) != 0)
            {
              v84 = objc_msgSend_groupLabelOptions(v8, v81, v82) | 4;
            }

            else
            {
              v84 = objc_msgSend_groupLabelOptions(v8, v81, v82) & 0xFB;
            }

            objc_msgSend_setGroupLabelOptions_(v8, v83, v84);
          }
        }
      }
    }
  }

  v85 = objc_msgSend_formulaListForType_(self, v55, 3);
  if (objc_msgSend_count(v85, v86, v87))
  {
    v90 = objc_msgSend_firstObject(v85, v88, v89);
    v92 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v90, v91, v7, v120);
    if (objc_msgSend_count(v92, v93, v94))
    {
      v97 = objc_msgSend_firstElement(v92, v95, v96);
      if (objc_msgSend_type(v97, v98, v99) == 3)
      {
        v102 = objc_msgSend_categoryReference(v97, v100, v101);
        v105 = v102;
        if (v102)
        {
          if (objc_msgSend_type(v102, v103, v104) == 7)
          {
            v108 = objc_msgSend_groupLabelOptions(v8, v106, v107) | 2;
            objc_msgSend_setGroupLabelOptions_(v8, v109, v108);
          }

          else if (objc_msgSend_type(v105, v106, v107) == 9)
          {
            v112 = objc_msgSend_groupLabelOptions(v8, v110, v111) & 0xFD;
            objc_msgSend_setGroupLabelOptions_(v8, v113, v112);
          }

          if (v43)
          {
            if ((objc_msgSend_options(v105, v110, v111) & 4) != 0)
            {
              v117 = objc_msgSend_groupLabelOptions(v8, v114, v115) | 4;
            }

            else
            {
              v117 = objc_msgSend_groupLabelOptions(v8, v114, v115) & 0xFB;
            }

            objc_msgSend_setGroupLabelOptions_(v8, v116, v117);
          }
        }
      }
    }
  }

LABEL_50:

  return v8;
}

- (TNChartFormulaStorage)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v43 = a4;
  v5 = objc_alloc_init(TNMutableChartFormulaStorage);
  v52 = objc_msgSend_formulaTypeEnumerator(v5, v6, v7);
  v45 = a3 + 104;
  v46 = a3 + 176;
  v48 = a3 + 152;
  v49 = a3 + 32;
  v47 = a3 + 80;
  v50 = a3 + 128;
  v51 = a3 + 56;
  v53 = a3 + 184;
  v56 = a3 + 160;
  v58 = a3 + 136;
  v54 = a3 + 112;
  v57 = a3 + 40;
  v55 = a3 + 88;
  v42 = a3;
  v10 = a3 + 64;
LABEL_2:
  while (1)
  {
    FormulaType = objc_msgSend_nextFormulaType(v52, v8, v9);
    v12 = FormulaType;
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v13 = v51;
    if (FormulaType == 2)
    {
LABEL_4:
      v14 = *v13;
      if (v14 >= 1)
      {
        v15 = 0;
        while (1)
        {
          v16 = v10;
          if (v12 != 2)
          {
            if (v12 > 4)
            {
              v16 = v58;
              if (v12 != 5)
              {
                v16 = v56;
                if (v12 != 6)
                {
                  if (v12 != 7)
                  {
                    goto LABEL_20;
                  }

                  v16 = v53;
                }
              }
            }

            else
            {
              v16 = v57;
              if (v12 != 1)
              {
                v16 = v55;
                if (v12 != 3)
                {
                  v16 = v54;
                  if (v12 != 4)
                  {
LABEL_20:
                    v25 = MEMORY[0x277D81150];
                    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNChartFormulaStorage initWithArchive:unarchiver:]");
                    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 589, 0, "Unknown formula type when unarchiving... update archiving code!");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
LABEL_8:
                    v19 = __C();
                    TSCEASTStringElement::appendStringElement(v19, &stru_2884F65E0, v20);
                    v21 = objc_alloc(MEMORY[0x277D80C60]);
                    v23 = objc_msgSend_initWithNodeArray_(v21, v22, v19);
                    v18 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v24, v23);
                    TSCEASTNodeArray::freeNodeArray();

                    goto LABEL_9;
                  }
                }
              }
            }
          }

          v18 = sub_275F16010(*(*v16 + 8 * v15 + 8));
          if (!v18)
          {
            goto LABEL_8;
          }

LABEL_9:
          objc_msgSend_addFormula_withFormulaID_(v5, v17, v18, (v12 << 32) | v15);

          if (v14 == ++v15)
          {
            goto LABEL_2;
          }
        }
      }
    }

    else
    {
      if (FormulaType > 4)
      {
        v13 = v50;
        if (FormulaType == 5)
        {
          goto LABEL_4;
        }

        v13 = v48;
        if (FormulaType == 6)
        {
          goto LABEL_4;
        }

        v13 = v46;
        if (FormulaType == 7)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v49;
        if (FormulaType == 1)
        {
          goto LABEL_4;
        }

        v13 = v47;
        if (FormulaType == 3)
        {
          goto LABEL_4;
        }

        v13 = v45;
        if (FormulaType == 4)
        {
          goto LABEL_4;
        }
      }

      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNChartFormulaStorage initWithArchive:unarchiver:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 562, 0, "Unknown formula type when unarchiving... update archiving code!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    }
  }

  v39 = objc_msgSend_init(self, v8, v9);
  v40 = v39;
  if (v39)
  {
    objc_storeStrong((v39 + 8), v5->super._storage);
    v40->_direction = v42[48];
    v40->_scheme = v42[49] & ((v42[4] << 30) >> 31);
  }

  return v40;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v84 = a4;
  v82 = self;
  v83 = objc_msgSend_formulaTypeEnumerator(self, v6, v7);
  v85 = 0;
  while (1)
  {
    FormulaType = objc_msgSend_nextFormulaType(v83, v8, v9);
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v12 = objc_msgSend_formulaListForType_(v82, v10, FormulaType);
    v15 = v12;
    if (v12)
    {
      v16 = objc_msgSend_count(v12, v13, v14);
      if (v16)
      {
        for (i = 0; v16 != i; ++i)
        {
          objc_opt_class();
          v19 = objc_msgSend_objectAtIndex_(v15, v18, i);
          v20 = TSUDynamicCast();

          v24 = objc_msgSend_formulaObject(v20, v21, v22);
          if (v24)
          {
            if (FormulaType <= 3)
            {
              switch(FormulaType)
              {
                case 1:
                  v35 = *(a3 + 5);
                  if (!v35)
                  {
                    goto LABEL_45;
                  }

                  v36 = *(a3 + 8);
                  v37 = *v35;
                  if (v36 < *v35)
                  {
                    *(a3 + 8) = v36 + 1;
                    v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v35[2 * v36 + 2], v84);
                    goto LABEL_65;
                  }

                  if (v37 == *(a3 + 9))
                  {
LABEL_45:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
                    v35 = *(a3 + 5);
                    v37 = *v35;
                  }

                  *v35 = v37 + 1;
                  v54 = MEMORY[0x277C90FD0](*(a3 + 3));
                  v55 = *(a3 + 8);
                  v56 = *(a3 + 5) + 8 * v55;
                  *(a3 + 8) = v55 + 1;
                  *(v56 + 8) = v54;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v57, v54, v84);
                  goto LABEL_65;
                case 2:
                  v51 = *(a3 + 8);
                  if (!v51)
                  {
                    goto LABEL_63;
                  }

                  v52 = *(a3 + 14);
                  v53 = *v51;
                  if (v52 < *v51)
                  {
                    *(a3 + 14) = v52 + 1;
                    v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v51[2 * v52 + 2], v84);
                    goto LABEL_65;
                  }

                  if (v53 == *(a3 + 15))
                  {
LABEL_63:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
                    v51 = *(a3 + 8);
                    v53 = *v51;
                  }

                  *v51 = v53 + 1;
                  v78 = MEMORY[0x277C90FD0](*(a3 + 6));
                  v79 = *(a3 + 14);
                  v80 = *(a3 + 8) + 8 * v79;
                  *(a3 + 14) = v79 + 1;
                  *(v80 + 8) = v78;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v81, v78, v84);
                  goto LABEL_65;
                case 3:
                  v29 = *(a3 + 11);
                  if (!v29)
                  {
                    goto LABEL_60;
                  }

                  v30 = *(a3 + 20);
                  v31 = *v29;
                  if (v30 < *v29)
                  {
                    *(a3 + 20) = v30 + 1;
                    v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v29[2 * v30 + 2], v84);
                    goto LABEL_65;
                  }

                  if (v31 == *(a3 + 21))
                  {
LABEL_60:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
                    v29 = *(a3 + 11);
                    v31 = *v29;
                  }

                  *v29 = v31 + 1;
                  v74 = MEMORY[0x277C90FD0](*(a3 + 9));
                  v75 = *(a3 + 20);
                  v76 = *(a3 + 11) + 8 * v75;
                  *(a3 + 20) = v75 + 1;
                  *(v76 + 8) = v74;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v77, v74, v84);
                  goto LABEL_65;
              }
            }

            else
            {
              if (FormulaType <= 5)
              {
                if (FormulaType == 4)
                {
                  v45 = *(a3 + 14);
                  if (!v45)
                  {
                    goto LABEL_48;
                  }

                  v46 = *(a3 + 26);
                  v47 = *v45;
                  if (v46 < *v45)
                  {
                    *(a3 + 26) = v46 + 1;
                    v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v45[2 * v46 + 2], v84);
                    goto LABEL_65;
                  }

                  if (v47 == *(a3 + 27))
                  {
LABEL_48:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 96));
                    v45 = *(a3 + 14);
                    v47 = *v45;
                  }

                  *v45 = v47 + 1;
                  v58 = MEMORY[0x277C90FD0](*(a3 + 12));
                  v59 = *(a3 + 26);
                  v60 = *(a3 + 14) + 8 * v59;
                  *(a3 + 26) = v59 + 1;
                  *(v60 + 8) = v58;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v61, v58, v84);
                  goto LABEL_65;
                }

                v25 = *(a3 + 17);
                if (!v25)
                {
                  goto LABEL_54;
                }

                v26 = *(a3 + 32);
                v27 = *v25;
                if (v26 < *v25)
                {
                  *(a3 + 32) = v26 + 1;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v25[2 * v26 + 2], v84);
LABEL_65:
                  v85 |= v28;
                  goto LABEL_66;
                }

                if (v27 == *(a3 + 33))
                {
LABEL_54:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 120));
                  v25 = *(a3 + 17);
                  v27 = *v25;
                }

                *v25 = v27 + 1;
                v66 = MEMORY[0x277C90FD0](*(a3 + 15));
                v67 = *(a3 + 32);
                v68 = *(a3 + 17) + 8 * v67;
                *(a3 + 32) = v67 + 1;
                *(v68 + 8) = v66;
                v28 = objc_msgSend_encodeToArchive_archiver_(v24, v69, v66, v84);
                goto LABEL_65;
              }

              if (FormulaType == 6)
              {
                v48 = *(a3 + 20);
                if (!v48)
                {
                  goto LABEL_51;
                }

                v49 = *(a3 + 38);
                v50 = *v48;
                if (v49 < *v48)
                {
                  *(a3 + 38) = v49 + 1;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v48[2 * v49 + 2], v84);
                  goto LABEL_65;
                }

                if (v50 == *(a3 + 39))
                {
LABEL_51:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 144));
                  v48 = *(a3 + 20);
                  v50 = *v48;
                }

                *v48 = v50 + 1;
                v62 = MEMORY[0x277C90FD0](*(a3 + 18));
                v63 = *(a3 + 38);
                v64 = *(a3 + 20) + 8 * v63;
                *(a3 + 38) = v63 + 1;
                *(v64 + 8) = v62;
                v28 = objc_msgSend_encodeToArchive_archiver_(v24, v65, v62, v84);
                goto LABEL_65;
              }

              if (FormulaType == 7)
              {
                v32 = *(a3 + 23);
                if (!v32)
                {
                  goto LABEL_57;
                }

                v33 = *(a3 + 44);
                v34 = *v32;
                if (v33 < *v32)
                {
                  *(a3 + 44) = v33 + 1;
                  v28 = objc_msgSend_encodeToArchive_archiver_(v24, v23, *&v32[2 * v33 + 2], v84);
                  goto LABEL_65;
                }

                if (v34 == *(a3 + 45))
                {
LABEL_57:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 168));
                  v32 = *(a3 + 23);
                  v34 = *v32;
                }

                *v32 = v34 + 1;
                v70 = MEMORY[0x277C90FD0](*(a3 + 21));
                v71 = *(a3 + 44);
                v72 = *(a3 + 23) + 8 * v71;
                *(a3 + 44) = v71 + 1;
                *(v72 + 8) = v70;
                v28 = objc_msgSend_encodeToArchive_archiver_(v24, v73, v70, v84);
                goto LABEL_65;
              }
            }

            v38 = MEMORY[0x277D81150];
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TNChartFormulaStorage saveToArchive:archiver:]");
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 657, 0, "Unimplemented formulaType found while archiving TNChartFormulaStorage.  Update archiving code pls.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
          }

LABEL_66:
        }
      }
    }
  }

  if ((v85 & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v84, v10, 0x300020000000ALL, @"TSTCategorizedTables");
  }

  *(a3 + 4) |= 3u;
  *(a3 + 24) = vrev64_s32(v82[2]);
}

- (id)areaFormulaWithCalcEngine:(id)a3 inOwner:(TSKUIDStruct)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v77 = a4;
  v60 = a3;
  v74 = 0u;
  v75 = 0u;
  v76 = 1065353216;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = objc_msgSend_formulaListForType_(self, v5, 1);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v70, v79, 16);
  if (v7)
  {
    v59 = *v71;
    v63 = vdupq_n_s64(0x7FFF00000000uLL);
    do
    {
      v8 = 0;
      v61 = v7;
      do
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v70 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v12 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v9, v11, v60, &v77);
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v13 = v12;
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v66, v78, 16);
        v62 = v10;
        if (v17)
        {
          v18 = *v67;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v67 != v18)
              {
                objc_enumerationMutation(v13);
              }

              v20 = *(*(&v66 + 1) + 8 * i);
              if ((objc_msgSend_isCellReference(v20, row, v16) & 1) != 0 || objc_msgSend_isRangeReference(v20, row, v16))
              {
                if (v20)
                {
                  objc_msgSend_rangeReference(v20, row, v16);
                }

                else
                {
                  memset(&v65, 0, sizeof(v65));
                }

                v21 = sub_275F20260(&v74, &v65._tableUID._lower);
                if (!v21)
                {
                  *v64 = v65._tableUID;
                  *&v64[16] = v65.range;
                  sub_275F2031C(&v74, v64);
                  sub_275F20260(&v74, &v65._tableUID._lower);
                  continue;
                }

                v22 = v21[2];
                topLeft = v65.range._topLeft;
                bottomRight = v65.range._bottomRight;
                v25 = v22;
                v26 = HIDWORD(v22.i64[0]);
                v27 = HIDWORD(v22.i64[1]);
                v28 = *&v65.range._topLeft & 0xFFFF00000000;
                v29 = *&v65.range._bottomRight & 0xFFFF00000000;
                row = v65.range._topLeft.row;
                if (v65.range._topLeft.row != 0x7FFFFFFFLL && v28 == 0x7FFF00000000 && v29 == 0x7FFF00000000)
                {
                  if (v65.range._bottomRight.row != 0x7FFFFFFF)
                  {
                    v30.i64[0] = 0xFFFFFFFFLL;
                    v30.i64[1] = 0xFFFFFFFFLL;
                    v31 = vandq_s8(v22, v30);
                    v32.i64[0] = 0xFFFF00000000;
                    v32.i64[1] = 0xFFFF00000000;
                    v33 = vmovn_s64(vceqq_s64(vandq_s8(v22, v32), v63));
                    v34 = vuzp1_s16(v33, v33);
                    v34.i32[1] = vuzp1_s16(v34, vmovn_s64(vmvnq_s8(vceqq_s64(v31, vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1];
                    if (vminv_u16(v34))
                    {
                      if (v65.range._topLeft.row >= v25.i32[0])
                      {
                        v35 = v25.u32[0];
                      }

                      else
                      {
                        v35 = v65.range._topLeft.row;
                      }

                      topLeft = v35 | 0x7FFF00000000;
                      if (v65.range._bottomRight.row <= v25.i32[2])
                      {
                        v36 = v25.u32[2];
                      }

                      else
                      {
                        v36 = v65.range._bottomRight.row;
                      }

                      bottomRight = v36 | 0x7FFF00000000;
LABEL_72:
                      v21[2].i64[0] = topLeft;
                      v21[2].i64[1] = bottomRight;
                      continue;
                    }
                  }
                }

                else if (v65.range._topLeft.row != 0x7FFFFFFFLL || v28 == 0x7FFF00000000 || v29 == 0x7FFF00000000)
                {
                  if (v65.range._topLeft.row != 0x7FFFFFFFLL && v28 != 0x7FFF00000000 && v65.range._bottomRight.row != 0x7FFFFFFF && v29 != 0x7FFF00000000 && v65.range._topLeft.column <= v65.range._bottomRight.column && v65.range._topLeft.row <= v65.range._bottomRight.row)
                  {
                    if (v22.i32[0] != 0x7FFFFFFF && (v22.i64[0] & 0xFFFF00000000) != 0x7FFF00000000 && v22.i32[2] != 0x7FFFFFFF && (v22.i64[1] & 0xFFFF00000000) != 0x7FFF00000000 && v22.u16[2] <= v22.u16[6] && v22.i32[0] <= v22.i32[2])
                    {
                      row = v65.range._bottomRight.column;
                      v16 = v22.u16[6];
                      if (v65.range._topLeft.column < v22.u16[2])
                      {
                        v26 = HIDWORD(*&v65.range._topLeft);
                      }

                      if (v65.range._topLeft.row >= v22.i32[0])
                      {
                        v44 = v22.u32[0];
                      }

                      else
                      {
                        v44 = v65.range._topLeft.row;
                      }

                      topLeft = v44 & 0xFFFF0000FFFFFFFFLL | (v26 << 32);
                      if (v65.range._bottomRight.column >= v22.u16[6])
                      {
                        v27 = HIDWORD(*&v65.range._bottomRight);
                      }

                      if (v65.range._bottomRight.row <= v22.i32[2])
                      {
                        v45 = v22.u32[2];
                      }

                      else
                      {
                        v45 = v65.range._bottomRight.row;
                      }

                      bottomRight = v45 & 0xFFFF0000FFFFFFFFLL | (v27 << 32);
                    }

                    goto LABEL_72;
                  }
                }

                else if (v65.range._bottomRight.row == 0x7FFFFFFF)
                {
                  v37.i64[0] = 0xFFFFFFFFLL;
                  v37.i64[1] = 0xFFFFFFFFLL;
                  v38 = vandq_s8(v22, v37);
                  v39.i64[0] = 0xFFFF00000000;
                  v39.i64[1] = 0xFFFF00000000;
                  v40 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v22, v39), v63)));
                  v41 = vuzp1_s16(v40, v40);
                  v41.i32[1] = vuzp1_s16(v41, vmovn_s64(vceqq_s64(v38, vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
                  if (vminv_u16(v41))
                  {
                    if (v65.range._topLeft.column >= v26)
                    {
                      v42 = HIDWORD(v25.i64[0]);
                    }

                    else
                    {
                      LOWORD(v42) = v65.range._topLeft.column;
                    }

                    topLeft = (v42 << 32) | 0x7FFFFFFF;
                    if (v65.range._bottomRight.column >= v22.u16[6])
                    {
                      column = v65.range._bottomRight.column;
                    }

                    else
                    {
                      column = v22.u16[6];
                    }

                    bottomRight = (column << 32) | 0x7FFFFFFF;
                    goto LABEL_72;
                  }
                }

                if (v25.i32[0] == 0x7FFFFFFF || (v25.i64[0] & 0xFFFF00000000) == 0x7FFF00000000 || v25.i32[2] == 0x7FFFFFFF || (v25.i64[1] & 0xFFFF00000000) == 0x7FFF00000000 || v26 > v22.u16[6] || (bottomRight = v25.i64[1], topLeft = v25.i64[0], v25.i32[0] > v25.i32[2]))
                {
                  topLeft = 0x7FFF7FFFFFFFLL;
                  bottomRight = 0x7FFF7FFFFFFFLL;
                }

                goto LABEL_72;
              }
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, row, &v66, v78, 16);
          }

          while (v17);
        }

        objc_autoreleasePoolPop(v62);
        ++v8;
      }

      while (v8 != v61);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v70, v79, 16);
    }

    while (v7);
  }

  v47 = __C();
  v48 = v75;
  if (v75)
  {
    v49 = v47;
    v50 = 0;
    do
    {
      v51 = *(v48 + 16);
      v65.range = *(v48 + 32);
      v65._tableUID = v51;
      memset(v64, 0, 24);
      TSCEASTNodeArray::appendRangeReference(v49, &v65, 0, v64);
      v48 = *v48;
      --v50;
    }

    while (v48);
    if (v50)
    {
      TSCEASTFunctionElement::appendFunctionElement(v49, 0xAF, -v50, 0, v52);
      v53 = objc_alloc(MEMORY[0x277D80C60]);
      v55 = objc_msgSend_initWithNodeArray_(v53, v54, v49);
      v48 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v56, v55);
      TSCEASTNodeArray::freeNodeArray();
    }

    else
    {
      v48 = 0;
    }
  }

  sub_275F07C74(&v74);

  return v48;
}

+ (vector<TNChartFormulaType,)persistentFormulaTypes
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = xmmword_275F5EEB8;
  v4[1] = unk_275F5EEC8;
  v4[2] = xmmword_275F5EED8;
  v5 = 7;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  return sub_275F20550(retstr, v4, &v6, 7uLL);
}

@end