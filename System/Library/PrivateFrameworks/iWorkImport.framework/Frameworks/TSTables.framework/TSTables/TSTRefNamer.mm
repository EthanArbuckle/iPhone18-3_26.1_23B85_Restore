@interface TSTRefNamer
- (TSCECalculationEngine)calcEngine;
- (TSTRefNamer)initWithCalcEngine:(id)a3;
- (id)cellRangeName:(id)a3 namingContext:(id)a4;
- (id)cellRangeNameFromChromeRangeRef:(const void *)a3 namingContext:(id)a4;
- (id)chromeNameForBaseRangeRef:(const void *)a3 namingContext:(id)a4;
- (id)columnNameForCellCoord:(const TSUCellCoord *)a3 restrictToBodyRange:(BOOL)a4 translator:(id)a5 cellRangeContainingName:(TSUCellRect *)a6;
- (id)columnNameForColumnIndex:(unsigned __int16)a3 withFallbackFormat:(id)a4 translator:(id)a5;
- (id)createNameComponentWithChromeRangeRef:(const void *)a3 rowOrColumnName:(id)a4 isSticky:(BOOL)a5 namingContext:(id)a6;
- (id)nameForBaseRangeRef:(const void *)a3 namingContext:(id)a4;
- (id)nameForBaseTractRef:(id)a3 namingContext:(id)a4;
- (id)nameForChromeColumnIndex:(const TSUChromeColumnIndex *)a3 inTable:(const TSKUIDStruct *)a4 useSymbolicNames:(BOOL)a5;
- (id)nameForChromeRangeRef:(const void *)a3 namingContext:(id)a4;
- (id)nameForViewTractRef:(id)a3 namingContext:(id)a4 coordMapper:(id)a5;
- (id)nameForWrappedRangeRef:(id)a3 namingContext:(id)a4;
- (id)p_symbolicColumnNameForRefPair:(id)a3 useTopLeft:(BOOL)a4 isSticky:(BOOL)a5 foundRange:(TSUModelCellRect *)a6 inTableModel:(id)a7 namingContext:(id)a8;
- (id)p_symbolicRowNameForRefPair:(id)a3 useTopLeft:(BOOL)a4 isSticky:(BOOL)a5 foundRange:(TSUModelCellRect *)a6 inTableModel:(id)a7 namingContext:(id)a8;
- (id)rowNameForCellCoord:(const TSUCellCoord *)a3 restrictToBodyRange:(BOOL)a4 translator:(id)a5 cellRangeContainingName:(TSUCellRect *)a6;
- (id)stringForRangeRefPair:(id)a3 namingContext:(id)a4;
- (id)stringValueAtCellCoord:(const TSUCellCoord *)a3 translator:(id)a4;
@end

@implementation TSTRefNamer

- (TSTRefNamer)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TSTRefNamer;
  v5 = [(TSTRefNamer *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_calcEngine, v4);
    v11 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v7, v8, v9, v10);
    whitespaceAndNewlineCharSet = v6->_whitespaceAndNewlineCharSet;
    v6->_whitespaceAndNewlineCharSet = v11;

    v17 = objc_msgSend_invertedSet(v6->_whitespaceAndNewlineCharSet, v13, v14, v15, v16);
    nonWhitespaceAndNewlineCharSet = v6->_nonWhitespaceAndNewlineCharSet;
    v6->_nonWhitespaceAndNewlineCharSet = v17;
  }

  return v6;
}

- (id)nameForChromeRangeRef:(const void *)a3 namingContext:(id)a4
{
  v6 = a4;
  v7 = [TSCECellTractRef alloc];
  v11 = objc_msgSend_initWithRangeRef_(v7, v8, a3, v9, v10);
  v12 = [TSTRangeRefPair alloc];
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v16 = objc_msgSend_initWithChromeTractRef_calcEngine_(v12, v14, v11, WeakRetained, v15);

  v19 = objc_msgSend_stringForRangeRefPair_namingContext_(self, v17, v16, v6, v18);

  return v19;
}

- (id)chromeNameForBaseRangeRef:(const void *)a3 namingContext:(id)a4
{
  v6 = a4;
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
  if (*(a3 + 1) == 0)
  {
    v30 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v11 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v10, v7, v8, WeakRetained);

    v16 = objc_msgSend_translator(v11, v12, v13, v14, v15);
    v20 = v16;
    if (v16)
    {
      v21 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v16, v17, *a3, v18, v19);
      v25 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v20, v22, *(a3 + 1), v23, v24);
      v36._topLeft = v21;
      v36._bottomRight = v25;
      v35._flags = 0;
      TSCERangeCoordinate::fixInversions(&v36, &v35);
      v26 = *(a3 + 1);
      v34[0] = v36;
      v34[1] = v26;
      v29 = objc_msgSend_nameForChromeRangeRef_namingContext_(self, v27, v34, v6, v28);
    }

    else
    {
      v29 = objc_msgSend_nameForBaseRangeRef_namingContext_(self, v17, a3, v6, v19);
    }

    v30 = v29;
  }

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = &stru_2834BADA0;
  }

  v32 = v31;

  return v31;
}

- (id)nameForBaseRangeRef:(const void *)a3 namingContext:(id)a4
{
  v6 = a4;
  v7 = *(a3 + 1);
  v44 = *a3;
  v45 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v12 = objc_msgSend_tableResolverForTableUID_(WeakRetained, v9, &v45, v10, v11);

  if (v12)
  {
    v13 = [TSCECellTractRef alloc];
    v17 = objc_msgSend_initWithRangeRef_(v13, v14, a3, v15, v16);
    v18 = [TSTRangeRefPair alloc];
    v19 = objc_loadWeakRetained(&self->_calcEngine);
    v22 = objc_msgSend_initWithBaseTractRef_calcEngine_(v18, v20, v17, v19, v21);

    v25 = objc_msgSend_stringForRangeRefPair_namingContext_(self, v23, v22, v6, v24);
    goto LABEL_3;
  }

  v28 = v45;
  v29 = objc_loadWeakRetained(&self->_calcEngine);
  v17 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v30, v28, *(&v28 + 1), v29);

  if (v17)
  {
    v22 = objc_msgSend_categoryRefForAggregateRangeRef_(v17, v31, &v44, v32, v33);
    if (!objc_msgSend_isValid(v22, v34, v35, v36, v37))
    {
      v26 = &stru_2834BADA0;
      goto LABEL_4;
    }

    v43[0] = 0;
    v43[1] = objc_msgSend_hostTableUID(v6, v38, v39, v40, v41);
    v43[2] = v42;
    v25 = objc_msgSend_prettyStringForCategoryRef_forHostCellRef_namingContext_(v17, v42, v22, v43, v6);
LABEL_3:
    v26 = v25;
LABEL_4:

    goto LABEL_5;
  }

  v26 = &stru_2834BADA0;
LABEL_5:

  return v26;
}

- (id)nameForBaseTractRef:(id)a3 namingContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = v7;
  if (v6)
  {
    v13 = objc_msgSend_useSymbolicNames(v7, v8, v9, v10, v11);
    v18 = objc_msgSend_allowTableName(v12, v14, v15, v16, v17);
    v19 = objc_opt_new();
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    if ((objc_msgSend_isRectangularRange(v6, v20, v21, v22, v23) & 1) == 0)
    {
      objc_msgSend_setUseSymbolicNames_(v12, v24, 0, v25, v26);
    }

    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = sub_2211CE4A4;
    v42 = &unk_278460E18;
    v46 = v47;
    v27 = v12;
    v43 = v27;
    v44 = self;
    v28 = v19;
    v45 = v28;
    objc_msgSend_foreachRangeRef_(v6, v29, &v39, v30, v31);
    objc_msgSend_setUseSymbolicNames_(v27, v32, v13, v33, v34, v39, v40, v41, v42);
    objc_msgSend_setAllowTableName_(v27, v35, v18, v36, v37);

    _Block_object_dispose(v47, 8);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)nameForViewTractRef:(id)a3 namingContext:(id)a4 coordMapper:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = v10;
  v16 = 0;
  if (v8 && v10)
  {
    v17 = objc_msgSend_useSymbolicNames(v9, v11, v12, v13, v14);
    v22 = objc_msgSend_allowTableName(v9, v18, v19, v20, v21);
    v23 = objc_opt_new();
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v49 = 0;
    if ((objc_msgSend_isRectangularRange(v8, v24, v25, v26, v27) & 1) == 0)
    {
      objc_msgSend_setUseSymbolicNames_(v9, v28, 0, v29, v30);
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2211CE800;
    v42[3] = &unk_278460E40;
    v43 = v15;
    v47 = v48;
    v31 = v9;
    v44 = v31;
    v45 = self;
    v16 = v23;
    v46 = v16;
    objc_msgSend_foreachRangeRef_(v8, v32, v42, v33, v34);
    objc_msgSend_setUseSymbolicNames_(v31, v35, v17, v36, v37);
    objc_msgSend_setAllowTableName_(v31, v38, v22, v39, v40);

    _Block_object_dispose(v48, 8);
  }

  return v16;
}

- (id)stringForRangeRefPair:(id)a3 namingContext:(id)a4
{
  v6 = a3;
  v11 = a4;
  if (v6)
  {
    objc_msgSend_chromeRangeRef(v6, v7, v8, v9, v10);
  }

  else
  {
    memset(&v195, 0, sizeof(v195));
  }

  v196 = v195;
  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v12 = objc_msgSend_hostTableUID(v11, v7, v8, v9, v10);
  if (!(v12 | v13))
  {
    v17 = objc_msgSend_contextSheetName(v11, v13, v14, v15, v16);

    if (!v17)
    {
      objc_msgSend_setHostTableUID_(v11, v13, v196._tableUID._lower, v196._tableUID._upper, v16);
    }
  }

  if (v6)
  {
    objc_msgSend_baseRangeRef(v6, v13, v14, v15, v16);
  }

  else
  {
    memset(&v195, 0, sizeof(v195));
  }

  if (TSCERangeRef::isValid(&v195))
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (v6)
    {
      objc_msgSend_baseRangeRef(v6, v18, v19, v20, v21);
    }

    else
    {
      memset(v194, 0, sizeof(v194));
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(WeakRetained, v18, v194, v20, v21);

    if ((IsWithinTable & 1) == 0)
    {
      v104 = 0;
      goto LABEL_57;
    }
  }

  v24 = objc_loadWeakRetained(&self->_calcEngine);
  v193 = objc_msgSend_headerNameMgr(v24, v25, v26, v27, v28);

  v29 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v30 = objc_loadWeakRetained(&self->_calcEngine);
  v34 = objc_msgSend_tableResolverForTableUID_(v30, v31, &v196._tableUID, v32, v33);

  v39 = objc_msgSend_quoteComponents(v11, v35, v36, v37, v38);
  v44 = objc_msgSend_forceEscaping(v11, v40, v41, v42, v43);
  v49 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(v11, v45, v46, v47, v48);
  objc_msgSend_setQuoteComponents_(v11, v50, 1, v51, v52);
  objc_msgSend_setForceEscaping_(v11, v53, 0, v54, v55);
  v58 = objc_msgSend_cellRangeName_namingContext_(self, v56, v6, v11, v57);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v11, v59, 0, v60, v61);
  v64 = objc_msgSend_cellRangeName_namingContext_(self, v62, v6, v11, v63);
  objc_msgSend_setQuoteComponents_(v11, v65, v39, v66, v67);
  objc_msgSend_setForceEscaping_(v11, v68, v44, v69, v70);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v11, v71, v49, v72, v73);
  if (!objc_msgSend_allowTableName(v11, v74, v75, v76, v77) || (v82 = objc_msgSend_hostTableUID(v11, v78, v79, v80, v81), v82 | v78) && (v83 = objc_msgSend_hostTableUID(v11, v78, v79, v80, v81), __PAIR128__(v78, v83) == *&v196._tableUID))
  {
LABEL_45:
    if (objc_msgSend_quoteComponents(v11, v78, v79, v80, v81))
    {
      if (!objc_msgSend_forceEscaping(v11, v152, v153, v154, v155))
      {
        if (v58)
        {
          objc_msgSend_appendString_(v29, v156, v58, v158, v159);
        }

        goto LABEL_55;
      }

      v160 = objc_msgSend_copy(v11, v156, v157, v158, v159);
      objc_msgSend_setQuoteComponents_(v160, v161, 1, v162, v163);
      objc_msgSend_setForceEscaping_(v160, v164, 1, v165, v166);
      v169 = objc_msgSend_cellRangeName_namingContext_(self, v167, v6, v160, v168);
      objc_msgSend_appendString_(v29, v170, v169, v171, v172);
    }

    else
    {
      v160 = objc_msgSend_copy(v11, v152, v153, v154, v155);
      objc_msgSend_setQuoteComponents_(v160, v173, 0, v174, v175);
      objc_msgSend_setForceEscaping_(v160, v176, 0, v177, v178);
      if (objc_msgSend_quoteComponents(v11, v179, v180, v181, v182))
      {
        v169 = 0;
      }

      else
      {
        v169 = objc_msgSend_cellRangeName_namingContext_(self, v183, v6, v160, v184);
        if (v169)
        {
          objc_msgSend_appendString_(v29, v185, v169, v186, v187);
        }
      }
    }

LABEL_55:
    v104 = objc_msgSend_copy(v29, v156, v157, v158, v159);
    goto LABEL_56;
  }

  v195 = v196;
  *&v194[0] = objc_msgSend_hostTableUID(v11, v78, v79, v80, v81);
  *(&v194[0] + 1) = v84;
  IsUnique_forReference_contextTable = objc_msgSend_referenceNameIsUnique_forReference_contextTable_(v193, v84, v64, &v195, v194);
  v86 = objc_loadWeakRetained(&self->_calcEngine);
  v195.range._topLeft = objc_msgSend_hostTableUID(v11, v87, v88, v89, v90);
  v195.range._bottomRight = v91;
  v94 = objc_msgSend_tableResolverForTableUID_(v86, v91, &v195, v92, v93);

  if (IsUnique_forReference_contextTable && !objc_msgSend_forceTableName(v11, v95, v96, v97, v98))
  {
LABEL_44:

    goto LABEL_45;
  }

  if (!v34)
  {
    v99 = 0;
    if (v94)
    {
      goto LABEL_24;
    }

LABEL_27:
    v192 = objc_msgSend_contextSheetName(v11, v95, v96, v97, v98);
    goto LABEL_28;
  }

  v99 = objc_msgSend_tableName(v34, v95, v96, v97, v98);
  if (!v94)
  {
    goto LABEL_27;
  }

LABEL_24:
  v192 = objc_msgSend_sheetName(v94, v95, v96, v97, v98);
LABEL_28:
  if (v34)
  {
    v108 = objc_msgSend_sheetName(v34, v100, v101, v102, v103);
    if (v108)
    {
      v191 = v99;
      if (!objc_msgSend_isEqualToString_(v192, v105, v108, v106, v107) || objc_msgSend_forceSheetName(v11, v109, v110, v111, v112))
      {
        v190 = v108;
        v117 = objc_loadWeakRetained(&self->_calcEngine);
        v120 = objc_msgSend_resolverMatchingName_contextResolver_(v117, v118, v191, 0, v119);

        v189 = v120;
        v121 = v120;
        v108 = v190;
        v126 = objc_msgSend_resolverUID(v121, v122, v123, v124, v125);
        if (__PAIR128__(v127, v126) != *&v196._tableUID || objc_msgSend_forceSheetName(v11, v127, v128, v129, v130))
        {
          if (objc_msgSend_quoteComponents(v11, v127, v128, v129, v130))
          {
            v135 = objc_msgSend_forceEscaping(v11, v131, v132, v133, v134);
            v139 = objc_msgSend_tsce_stringByForcingSingleQuoteEscapes_(v190, v136, v135, v137, v138);

            v108 = v139;
          }

          if ((objc_msgSend_isEqualToString_(v108, v131, &stru_2834BADA0, v133, v134) & 1) == 0)
          {
            objc_msgSend_appendFormat_(v29, v140, @"%@::", v141, v142, v108);
          }
        }
      }

      if (objc_msgSend_quoteComponents(v11, v113, v114, v115, v116))
      {
        v147 = objc_msgSend_forceEscaping(v11, v143, v144, v145, v146);
        v151 = objc_msgSend_tsce_stringByForcingSingleQuoteEscapes_(v191, v148, v147, v149, v150);
      }

      else
      {
        v151 = v191;
      }

      objc_msgSend_appendFormat_(v29, v143, @"%@::", v145, v146, v151);

      goto LABEL_44;
    }
  }

  v104 = 0;
LABEL_56:

LABEL_57:

  return v104;
}

- (id)nameForWrappedRangeRef:(id)a3 namingContext:(id)a4
{
  v6 = a3;
  v11 = a4;
  if (v6)
  {
    objc_msgSend_rangeRef(v6, v7, v8, v9, v10);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  v12 = objc_msgSend_nameForBaseRangeRef_namingContext_(self, v7, v16, v11, v10, v14, v15);

  return v12;
}

- (id)stringValueAtCellCoord:(const TSUCellCoord *)a3 translator:(id)a4
{
  v5 = a4;
  v26 = 0;
  objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v5, v6, &v26, *a3, 0);
  v7 = v26;
  if ((objc_msgSend_isNil(v7, v8, v9, v10, v11) & 1) == 0)
  {
    v16 = objc_msgSend_objectLocale(v5, v12, v13, v14, v15);
    v20 = objc_msgSend_asStringWithLocale_(v7, v17, v16, v18, v19);

    if (objc_msgSend_length(v20, v21, v22, v23, v24))
    {
      goto LABEL_5;
    }
  }

  v20 = 0;
LABEL_5:

  return v20;
}

- (id)columnNameForCellCoord:(const TSUCellCoord *)a3 restrictToBodyRange:(BOOL)a4 translator:(id)a5 cellRangeContainingName:(TSUCellRect *)a6
{
  v7 = a4;
  v10 = a5;
  v15 = v10;
  if (v7)
  {
    v16 = objc_msgSend_bodyRange(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = objc_msgSend_range(v10, v11, v12, v13, v14);
  }

  v21 = WORD2(v16);
  v22 = objc_msgSend_numberOfHeaderRows(v15, v17, v18, v19, v20);
  isCategorized = objc_msgSend_isCategorized(v15, v23, v24, v25, v26);
  column = a3->column;
  if (a3->column)
  {
    v33 = 0;
  }

  else
  {
    v33 = isCategorized;
  }

  if (v33 == 1)
  {
    v34 = sub_2214AAEA8(isCategorized, v28, v29, v30, v31);
    v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"Categories", &stru_2834BADA0, @"TSTables");
  }

  else
  {
    v36 = 0;
    if (v22 && v21 <= column)
    {
      v36 = 0;
      v37 = (v22 - 1);
      do
      {
        if (v36)
        {
          v38 = objc_msgSend_stringByTrimmingCharactersInSet_(v36, v28, self->_whitespaceAndNewlineCharSet, v30, v31);
          isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v39, v38, v40, v41);

          if ((isEqualToString & 1) == 0)
          {
            break;
          }
        }

        v52.origin = 0;
        v52.size = 0;
        v52.origin = objc_msgSend_mergeRangeAtCellID_(v15, v28, v37 | (column << 32), v30, v31);
        v52.size = v43;
        origin = __PAIR64__(column, v37);
        if (TSUCellRect::isValid(&v52))
        {
          origin = v52.origin;
          v47 = objc_msgSend_cellValueTypeAtCellID_(v15, v44, *&v52.origin, v45, v46);
        }

        else
        {
          v47 = objc_msgSend_cellValueTypeAtCellID_(v15, v44, origin, v45, v46);
        }

        if (v47 != 6)
        {
          v48 = objc_msgSend_stringValueAtCellCoord_translator_(self, v28, &origin, v15, v31);

          v36 = v48;
        }

        if (a6 && v36)
        {
          if (TSUCellRect::isValid(&v52))
          {
            *a6 = v52;
          }

          else
          {
            a6->origin = *a3;
            a6->size = 0x100000001;
          }
        }
      }

      while (v37-- > 0);
    }
  }

  return v36;
}

- (id)rowNameForCellCoord:(const TSUCellCoord *)a3 restrictToBodyRange:(BOOL)a4 translator:(id)a5 cellRangeContainingName:(TSUCellRect *)a6
{
  v7 = a4;
  v9 = a5;
  v14 = v9;
  v44.origin = 0;
  v44.size = 0;
  if (v7)
  {
    v15 = objc_msgSend_bodyRange(v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_range(v9, v10, v11, v12, v13);
  }

  v44.origin = v15;
  v44.size = v16;
  v20 = objc_msgSend_numberOfHeaderColumns(v14, v16, v17, v18, v19, a3);
  if (v20 && (v21 = TSUCellRect::firstRow(&v44), row = v41->row, v21 <= row))
  {
    v26 = 0;
    v27 = (v20 - 1);
    v28 = v27 << 32;
    while (1)
    {
      v29 = v26;
      if (v26)
      {
        v30 = objc_msgSend_stringByTrimmingCharactersInSet_(v26, v22, self->_whitespaceAndNewlineCharSet, v23, v24);
        isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v31, v30, v32, v33);

        if ((isEqualToString & 1) == 0)
        {
          break;
        }
      }

      v43.origin = 0;
      v43.size = 0;
      v43.origin = objc_msgSend_mergeRangeAtCellID_(v14, v22, v28 & 0xFFFF00000000 | row, v23, v24);
      v43.size = v35;
      origin.row = row;
      *&origin.column = v27;
      if (TSUCellRect::isValid(&v43))
      {
        origin = v43.origin;
      }

      v26 = objc_msgSend_stringValueAtCellCoord_translator_(self, v36, &origin, v14, v37);

      if (a6 && v26)
      {
        if (TSUCellRect::isValid(&v43))
        {
          *a6 = v43;
        }

        else
        {
          a6->origin = *v41;
          a6->size = 0x100000001;
        }
      }

      v28 -= 0x100000000;
      if (v27-- <= 0)
      {
        goto LABEL_21;
      }
    }

    v26 = v29;
  }

  else
  {
    v26 = 0;
  }

LABEL_21:

  return v26;
}

- (id)columnNameForColumnIndex:(unsigned __int16)a3 withFallbackFormat:(id)a4 translator:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v34 = v6 << 32;
  v15 = objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v10, &v34, 0, v9, 0);
  if (!v15)
  {
    if (!v8)
    {
      v8 = @"%@";
    }

    objc_msgSend_chromeColumnIndexForViewColumnIndex_(v9, v11, v6, v13, v14);
    v16 = MEMORY[0x277CCACA8];
    v17 = TSUColumnLabel();
    v15 = objc_msgSend_stringWithFormat_(v16, v18, v8, v19, v20, v17);
  }

  v21 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v11, v12, v13, v14);
  if (objc_msgSend_rangeOfCharacterFromSet_(v15, v22, v21, v23, v24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = objc_msgSend_componentsSeparatedByCharactersInSet_(v15, v25, v21, v26, v27);
    v32 = objc_msgSend_componentsJoinedByString_(v28, v29, @" ", v30, v31);

    v15 = v32;
  }

  return v15;
}

- (id)createNameComponentWithChromeRangeRef:(const void *)a3 rowOrColumnName:(id)a4 isSticky:(BOOL)a5 namingContext:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  if (!objc_msgSend_length(v10, v12, v13, v14, v15) || objc_msgSend_rangeOfCharacterFromSet_(v10, v16, self->_nonWhitespaceAndNewlineCharSet, v17, v18) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
    goto LABEL_23;
  }

  if (v7)
  {
    v23 = objc_msgSend_stringByAppendingString_(@"$", v19, v10, v20, v21);
  }

  else
  {
    v23 = v10;
  }

  v22 = v23;
  v28 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapesIfNecessary(v10, v24, v25, v26, v27);
  v32 = v28;
  if (v7)
  {
    v33 = objc_msgSend_stringByAppendingString_(@"$", v29, v28, v30, v31);
  }

  else
  {
    v33 = v28;
  }

  v34 = v33;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v40 = objc_msgSend_headerNameMgr(WeakRetained, v36, v37, v38, v39);

  v60 = *(a3 + 1);
  if (!objc_msgSend_referenceNameIsUnique_forReference_contextTable_(v40, v41, v34, a3, &v60))
  {
    v55 = 0;
LABEL_21:

    v22 = v55;
    goto LABEL_22;
  }

  if (objc_msgSend_forceEscaping(v11, v42, v43, v44, v45))
  {
    v50 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(v10, v46, 1, v48, v49);

    if (v7)
    {
      v54 = objc_msgSend_stringByAppendingString_(@"$", v51, v50, v52, v53);
LABEL_20:

      v34 = v54;
      v32 = v50;
      v55 = v34;
      goto LABEL_21;
    }

    v32 = v50;
    goto LABEL_19;
  }

  if (objc_msgSend_quoteComponents(v11, v46, v47, v48, v49))
  {
    if (v7)
    {
      v54 = objc_msgSend_stringByAppendingString_(@"$", v56, v32, v57, v58);
      v50 = v32;
      goto LABEL_20;
    }

LABEL_19:
    v54 = v32;
    v50 = v54;
    goto LABEL_20;
  }

LABEL_22:

LABEL_23:

  return v22;
}

- (id)p_symbolicColumnNameForRefPair:(id)a3 useTopLeft:(BOOL)a4 isSticky:(BOOL)a5 foundRange:(TSUModelCellRect *)a6 inTableModel:(id)a7 namingContext:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a7;
  v20 = a8;
  if (v12)
  {
    v21 = &v38;
    if (v14)
    {
      objc_msgSend_baseRangeRef(v14, v16, v17, v18, v19);
      v22 = v37;
    }

    else
    {
      v22 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    v21 = &v36;
    if (v14)
    {
      objc_msgSend_baseRangeRef(v14, v16, v17, v18, v19);
      v22 = *(&v35 + 1);
    }

    else
    {
      v22 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  v39 = v22;
  v40 = *v21;
  v24 = objc_msgSend_identityTranslator(v15, v16, v17, v18, v19);
  if (a6)
  {
    objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v23, &v39, 1, v24, &v34);
  }

  else
  {
    objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v23, &v39, 1, v24, 0);
  }
  v25 = ;

  if (a6)
  {
    *a6 = v34;
  }

  if (v12)
  {
    if (v14)
    {
      objc_msgSend_chromeRangeRef(v14, v26, v27, v28, v29);
      v30 = v37;
      v31 = v38;
      goto LABEL_19;
    }
  }

  else if (v14)
  {
    objc_msgSend_chromeRangeRef(v14, v26, v27, v28, v29);
    v30 = *(&v35 + 1);
    v31 = v36;
    goto LABEL_19;
  }

  v30 = 0;
  v31 = 0uLL;
LABEL_19:
  *&v37 = v30 & 0xFFFF00000000 | 0x7FFFFFFF;
  *(&v37 + 1) = v37;
  v38 = v31;
  v32 = objc_msgSend_createNameComponentWithChromeRangeRef_rowOrColumnName_isSticky_namingContext_(self, v26, &v37, v25, v11, v20);

  return v32;
}

- (id)p_symbolicRowNameForRefPair:(id)a3 useTopLeft:(BOOL)a4 isSticky:(BOOL)a5 foundRange:(TSUModelCellRect *)a6 inTableModel:(id)a7 namingContext:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a7;
  v20 = a8;
  if (v12)
  {
    v21 = &v38;
    if (v14)
    {
      objc_msgSend_baseRangeRef(v14, v16, v17, v18, v19);
      v22 = v37;
    }

    else
    {
      v22 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    v21 = &v36;
    if (v14)
    {
      objc_msgSend_baseRangeRef(v14, v16, v17, v18, v19);
      v22 = *(&v35 + 1);
    }

    else
    {
      v22 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  v39 = v22;
  v40 = *v21;
  v24 = objc_msgSend_identityTranslator(v15, v16, v17, v18, v19);
  if (a6)
  {
    objc_msgSend_rowNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v23, &v39, 1, v24, &v34);
  }

  else
  {
    objc_msgSend_rowNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v23, &v39, 1, v24, 0);
  }
  v25 = ;

  if (a6)
  {
    *a6 = v34;
  }

  if (v12)
  {
    if (v14)
    {
      objc_msgSend_chromeRangeRef(v14, v26, v27, v28, v29);
      v30 = v37;
      v31 = v38;
      goto LABEL_19;
    }
  }

  else if (v14)
  {
    objc_msgSend_chromeRangeRef(v14, v26, v27, v28, v29);
    v30 = DWORD2(v35);
    v31 = v36;
    goto LABEL_19;
  }

  v30 = 0;
  v31 = 0uLL;
LABEL_19:
  *&v37 = v30 | 0x7FFF00000000;
  *(&v37 + 1) = v30 | 0x7FFF00000000;
  v38 = v31;
  v32 = objc_msgSend_createNameComponentWithChromeRangeRef_rowOrColumnName_isSticky_namingContext_(self, v26, &v37, v25, v11, v20);

  return v32;
}

- (id)cellRangeNameFromChromeRangeRef:(const void *)a3 namingContext:(id)a4
{
  v6 = a4;
  v7 = [TSCECellTractRef alloc];
  v11 = objc_msgSend_initWithRangeRef_(v7, v8, a3, v9, v10);
  v12 = [TSTRangeRefPair alloc];
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v16 = objc_msgSend_initWithChromeTractRef_calcEngine_(v12, v14, v11, WeakRetained, v15);

  v19 = objc_msgSend_cellRangeName_namingContext_(self, v17, v16, v6, v18);

  return v19;
}

- (id)cellRangeName:(id)a3 namingContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v217 = v7;
  v214 = objc_msgSend_chromeTractRef(v6, v8, v9, v10, v11);
  if (v6)
  {
    objc_msgSend_chromeRangeRef(v6, v12, v13, v14, v15);
  }

  else
  {
    memset(&v227, 0, sizeof(v227));
  }

  v228 = v227;
  v216 = objc_msgSend_tableModel(v6, v12, v13, v14, v15);
  v20 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v16, v17, v18, v19);
  v25 = objc_msgSend_disableImplicitNaming(v20, v21, v22, v23, v24);

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = objc_msgSend_useSymbolicNames(v7, v26, v27, v28, v29) ^ 1;
  }

  v226 = xmmword_2217E0780;
  v31 = TSCERangeRef::preserveFlags(&v228);
  v225 = v31;
  isSpanningAllColumns = TSCERangeRef::isSpanningAllColumns(&v228);
  isSpanningAllRows = TSCERangeRef::isSpanningAllRows(&v228);
  isSingleCell = TSCERangeRef::isSingleCell(&v228);
  if (((v30 | isSingleCell) & 1) == 0)
  {
    v30 = !TSCERangeRef::isSpanning(&v228);
  }

  v36 = 0;
  v37 = !isSingleCell && !isSpanningAllRows;
  if ((v30 & 1) == 0 && (v37 & 1) == 0)
  {
    v36 = objc_msgSend_p_symbolicColumnNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v34, v6, 1, v31 & 1, &v226, v216, v217);
  }

  v38 = isSingleCell || isSpanningAllColumns;
  v40 = v36;
  v41 = 0;
  v218 = v40;
  if (v40)
  {
    v42 = 0;
  }

  else
  {
    v42 = isSingleCell;
  }

  v43 = v30 | v42;
  v224 = xmmword_2217E0780;
  if ((v43 & 1) == 0 && ((v38 ^ 1) & 1) == 0)
  {
    v41 = objc_msgSend_p_symbolicRowNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v39, v6, 1, (v225 >> 1) & 1, &v224, v216, v217);
  }

  v219 = v41;
  if (!objc_msgSend_isSingleCellOrSpanningRange(v214, v44, v45, v46, v47) || ((v225 ^ (v225 >> 2)) & 3) != 0)
  {
    v49 = 0;
    v223 = xmmword_2217E0780;
    v212 = v6;
    if (((v43 | v37) & 1) == 0 && v218)
    {
      v49 = objc_msgSend_p_symbolicColumnNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v48, v6, 0, (v225 >> 2) & 1, &v223, v216, v217);
    }

    v51 = v49;
    v52 = 0;
    if (v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = isSingleCell;
    }

    v54 = v43 | v53;
    v222 = xmmword_2217E0780;
    v213 = (v43 | v53) ^ 1;
    if ((v213 & v38) == 1 && v219)
    {
      v52 = objc_msgSend_p_symbolicRowNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v50, v6, 0, (v225 >> 3) & 1, &v222, v216, v217);
    }

    v59 = v52;
    v60 = v6;
    column = v228.range._topLeft.column;
    if (v228.range._bottomRight.column == 0x7FFF || v228.range._topLeft.column == 0x7FFF)
    {
      v63 = 0;
    }

    else
    {
      v63 = v228.range._bottomRight.column - v228.range._topLeft.column + 1;
    }

    row = v228.range._topLeft.row;
    v65 = v228.range._bottomRight.row == 0x7FFFFFFF || v228.range._topLeft.row == 0x7FFFFFFFLL;
    v66 = v228.range._bottomRight.row - v228.range._topLeft.row + 1;
    if (v65)
    {
      v66 = 0;
    }

    v210 = v66;
    if (v60)
    {
      objc_msgSend_chromeRangeRef(v60, v55, v56, v57, v58);
    }

    else
    {
      memset(&v221, 0, sizeof(v221));
    }

    v227 = v221;
    if (isSpanningAllColumns)
    {
      v67 = 0;
    }

    else
    {
      v68 = TSUCellRect::columns(&v226);
      v67 = column > v68 || v63 + column < &v55[v68];
    }

    v208 = self;
    if (isSpanningAllRows)
    {
      v69 = 0;
      if (isSpanningAllColumns)
      {
LABEL_57:
        v209 = 0;
        if (isSpanningAllRows)
        {
LABEL_58:
          v211 = 0;
          goto LABEL_65;
        }

LABEL_61:
        v73 = TSUCellRect::rows(&v222);
        v74 = row > v73 || v210 + row < &v55[v73];
        v211 = v74;
LABEL_65:
        v75 = v218;
        if (v218)
        {
          v76 = v54;
        }

        else
        {
          v76 = 1;
        }

        if ((v76 | v67))
        {
          v77 = objc_alloc(MEMORY[0x277CCACA8]);
          v78 = v225;
          v79 = TSUColumnLabel();
          v83 = v79;
          v84 = @"$";
          if ((v78 & 1) == 0)
          {
            v84 = &stru_2834BADA0;
          }

          v75 = objc_msgSend_initWithFormat_(v77, v80, @"%@%@", v81, v82, v84, v79);
        }

        v215 = v75;
        v85 = v219;
        if (v219)
        {
          v86 = v54;
        }

        else
        {
          v86 = 1;
        }

        if ((v86 | v69))
        {
          v87 = objc_alloc(MEMORY[0x277CCACA8]);
          v88 = v225;
          v89 = TSURowLabel();
          v93 = v89;
          v94 = @"$";
          if ((v88 & 2) == 0)
          {
            v94 = &stru_2834BADA0;
          }

          v85 = objc_msgSend_initWithFormat_(v87, v90, @"%@%@", v91, v92, v94, v89);
        }

        if (v51)
        {
          v95 = v213;
        }

        else
        {
          v95 = 0;
        }

        if (v95 != 1 || (v100 = v51, objc_msgSend_length(v51, v55, v56, v57, v58) == 0 || v209))
        {
          v101 = TSUColumnLabel();

          v102 = objc_alloc(MEMORY[0x277CCACA8]);
          v106 = @"$";
          if ((v225 & 4) == 0)
          {
            v106 = &stru_2834BADA0;
          }

          v107 = objc_msgSend_initWithFormat_(v102, v103, @"%@%@", v104, v105, v106, v101);

          v100 = v107;
        }

        if (v59)
        {
          v108 = v213;
        }

        else
        {
          v108 = 0;
        }

        if (v108 != 1 || (v109 = v59, objc_msgSend_length(v59, v96, v97, v98, v99) == 0 || v211))
        {
          v110 = TSURowLabel();

          v111 = objc_alloc(MEMORY[0x277CCACA8]);
          v115 = @"$";
          if ((v225 & 8) == 0)
          {
            v115 = &stru_2834BADA0;
          }

          v116 = objc_msgSend_initWithFormat_(v111, v112, @"%@%@", v113, v114, v115, v110);

          v109 = v116;
        }

        if (TSCERangeRef::isSpanningAllColumns(&v227))
        {
          if (objc_msgSend_isEqualToString_(v85, v117, v109, v118, v119) && (v219 || objc_msgSend_suppressIdenticalEndReference(v217, v120, v121, v122, v123)))
          {
            v124 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v120, @"%@", v122, v123, v109);
          }

          else
          {
            v124 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v120, @"%@:%@", v122, v123, v85, v109);
          }

          v132 = v124;
          v133 = 0;
          v134 = (v219 | v59) != 0;
        }

        else
        {
          if (!TSCERangeRef::isSpanningAllRows(&v227))
          {
            if (objc_msgSend_showGeometricAsBase(v217, v125, v126, v127, v128))
            {
              v139 = v85;
              v140 = objc_msgSend_baseTractRef(v212, v135, v136, v137, v138);
              v141 = v217;
              if (objc_msgSend_isRectangularRange(v140, v142, v143, v144, v145))
              {
                v221.range._topLeft = objc_msgSend_boundingRange(v140, v146, v147, v148, v149);
                v221.range._bottomRight = v150;
                sub_2212C64C4(&v221, &v225);
              }

              else
              {
                objc_msgSend_nameForBaseTractRef_namingContext_(v208, v146, v140, v217, v149);
              }
              v132 = ;
            }

            else
            {
              v139 = v85;
              if (v212)
              {
                objc_msgSend_chromeRangeRef(v212, v135, v136, v137, v138);
              }

              else
              {
                memset(&v220, 0, sizeof(v220));
              }

              v221 = v220;
              v141 = v217;
              v132 = sub_2212C64C4(&v221, &v225);
            }

            v134 = 0;
            v133 = 0;
            goto LABEL_134;
          }

          if (objc_msgSend_isEqualToString_(v215, v125, v100, v127, v128))
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v129, @"%@", v130, v131, v100);
          }

          else
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v129, @"%@:%@", v130, v131, v215, v100);
          }
          v132 = ;
          v134 = (v218 | v51) != 0;
          v133 = 1;
        }

        v141 = v217;
        v139 = v85;
LABEL_134:

        v6 = v212;
LABEL_135:
        v170 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(v141, v175, v176, v177, v178);
        goto LABEL_136;
      }
    }

    else
    {
      v70 = TSUCellRect::rows(&v224);
      if (row <= v70)
      {
        v69 = v210 + row < &v55[v70];
        if (isSpanningAllColumns)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v69 = 1;
        if (isSpanningAllColumns)
        {
          goto LABEL_57;
        }
      }
    }

    v71 = TSUCellRect::columns(&v223);
    v72 = column > v71 || v63 + column < &v55[v71];
    v209 = v72;
    if (isSpanningAllRows)
    {
      goto LABEL_58;
    }

    goto LABEL_61;
  }

  v133 = TSCERangeRef::isSpanningAllRows(&v228);
  v151 = TSCERangeRef::isSingleCell(&v228);
  if (v218)
  {
    v155 = v151;
  }

  else
  {
    v155 = 0;
  }

  if (v155 && v219)
  {
    v156 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v152, @"%@ %@", v153, v154, v218, v219);
  }

  else
  {
    v161 = TSCERangeRef::isSpanningAllColumns(&v228);
    v165 = v219;
    if (v219)
    {
      v166 = v161;
    }

    else
    {
      v166 = 0;
    }

    if (!v166)
    {
      v167 = TSCERangeRef::isSpanningAllRows(&v228);
      v165 = v218;
      if (!v218 || !v167)
      {
        v221.range._topLeft = 0;
        v141 = v217;
        if (objc_msgSend_showGeometricAsBase(v217, v162, v168, v163, v164))
        {
          v201 = objc_msgSend_baseTractRef(v6, v197, v198, v199, v200);
          v221.range._topLeft = objc_msgSend_topLeft(v201, v202, v203, v204, v205);

          topLeft = v221.range._topLeft;
        }

        else
        {
          topLeft = objc_msgSend_topLeft(v214, v197, v198, v199, v200);
          v221.range._topLeft = topLeft;
        }

        if ((*&topLeft & 0xFFFF00000000) != 0x7FFF00000000 || topLeft.row == 0x7FFFFFFFLL)
        {
          LOBYTE(v227.range._topLeft.row) = v225 & 3;
          v207 = sub_2212C62E0(&v221, &v227);
        }

        else
        {
          v227.range._topLeft = topLeft;
          v227.range._bottomRight = topLeft;
          v207 = sub_2212C64C4(&v227, &v225);
        }

        v132 = v207;
        v134 = 0;
        v139 = v219;
        v215 = v218;
        goto LABEL_135;
      }
    }

    v156 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v162, @"%@", v163, v164, v165);
  }

  v132 = v156;
  v134 = 1;
  v139 = v219;
  v215 = v218;
  v141 = v217;
  v170 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(v217, v157, v158, v159, v160);
LABEL_136:
  if (v170 && !(objc_msgSend_forFormulaPlainText(v141, v171, v172, v173, v174) & 1 | !v133))
  {
    v180 = objc_msgSend_tableInfo(v6, v171, v179, v173, v174);
    if (objc_msgSend_isCategorized(v180, v181, v182, v183, v184))
    {
      v189 = objc_msgSend_objectLocale(v180, v185, v186, v187, v188);
      v191 = objc_msgSend_localizedStringForKey_value_table_(v189, v190, @"Body", &stru_2834BADA0, @"TSTables");

      v195 = objc_msgSend_stringByAppendingFormat_(v132, v192, @" (%@)", v193, v194, v191);

      v132 = v195;
    }
  }

  objc_msgSend_setUsedSymbolicName_(v141, v171, v134, v173, v174);

  return v132;
}

- (id)nameForChromeColumnIndex:(const TSUChromeColumnIndex *)a3 inTable:(const TSKUIDStruct *)a4 useSymbolicNames:(BOOL)a5
{
  v5 = a5;
  v9 = objc_opt_new();
  objc_msgSend_setSuppressIdenticalEndReference_(v9, v10, 1, v11, v12);
  objc_msgSend_setUseSymbolicNames_(v9, v13, v5, v14, v15);
  v22.coordinate = ((a3->var0 << 32) | 0x7FFFFFFF);
  v22._tableUID = *a4;
  TSCERangeRef::TSCERangeRef(&v21, &v22);
  v20 = v21;
  v18 = objc_msgSend_nameForChromeRangeRef_namingContext_(self, v16, &v20, v9, v17);

  return v18;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end