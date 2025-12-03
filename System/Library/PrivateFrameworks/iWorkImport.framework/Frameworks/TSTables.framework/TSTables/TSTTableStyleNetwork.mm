@interface TSTTableStyleNetwork
+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider styleMorphingBlock:(id)block;
+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0;
+ (id)createStylesInStylesheet:(id)stylesheet presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (id)curatedTableStylePropertySetForCrossDocumentPasteMasterComparison;
+ (id)defaultTableNameShapeStyleWithContext:(id)context;
+ (id)deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveBodyPivotEmphasisVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveBodyPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveBodyPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveCategoryBottomStrokeFromFooterRowSeparatorStroke:(id)stroke;
+ (id)deriveCategoryTopStrokeFromFooterRowSeparatorStroke:(id)stroke;
+ (id)deriveFooterRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderColumnPivotSeparatorStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderRowPivotTitleStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)identifiersForPresetID:(unint64_t)d;
+ (id)networkFromStyleProvider:(id)provider;
+ (id)networkFromStylesheet:(id)stylesheet presetID:(unint64_t)d;
+ (id)networkFromTheme:(id)theme presetID:(unint64_t)d;
+ (id)networkFromTheme:(id)theme presetIndex:(unint64_t)index;
+ (id)nonValidatedNetworkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0;
+ (id)p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map returnHeaderRowPivotGroupVerticalStroke:(BOOL)stroke;
+ (unint64_t)pivotTableStyleAreaForRowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel numberOfRowLevels:(unint64_t)levels numberOfColumnLevels:(unint64_t)columnLevels columnIndex:(TSUViewColumnIndex)index;
+ (unint64_t)styleAreaForColumnType:(unsigned __int8)type rowType:(unsigned __int8)rowType forAPivotTable:(BOOL)table;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison objectComparisonBlock:(id)block;
- (BOOL)stylesInStylesheet:(id)stylesheet;
- (TSTTableStyleNetwork)initWithContext:(id)context;
- (TSTTableStyleNetwork)initWithContext:(id)context fromDictionary:(id)dictionary withPreset:(unint64_t)preset;
- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider;
- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider presetID:(unint64_t)d;
- (id).cxx_construct;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone context:(id)context;
- (id)deriveCategoryCellStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet;
- (id)deriveCategoryTextStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet;
- (id)dictionaryWithPreset:(unint64_t)preset;
- (id)networkForPivotTables;
- (id)p_deriveCategoryCellStyleForTableStyleArea:(unint64_t)area fromCellStyle:(id)style connectedToStylesheet:(BOOL)stylesheet;
- (id)p_deriveCategoryTextStyleForTableStyleArea:(unint64_t)area fromTextStyle:(id)style connectedToStylesheet:(BOOL)stylesheet;
- (id)p_derivePivotCellStyleFromCellStyle:(id)style optionalSourceFill:(id)fill brightnessShift:(double)shift connectedToStylesheet:(BOOL)stylesheet styleArea:(unint64_t)area;
- (id)sheetFill;
- (id)styleForStyleNetworkIndex:(unint64_t)index;
- (id)textStyleForTableStyleArea:(unint64_t)area;
- (unint64_t)hash;
- (void)clearAndGenerateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)clearAndGeneratePivotStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)enumerateAllStylesWithBlock:(id)block;
- (void)generateCategoryStrokesInTableStyle:(id)style;
- (void)generateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)generatePivotStrokesInTableStyle:(id)style;
- (void)generatePivotStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)maintainPivotStrokesInTableStyle:(id)style fromTable:(id)table;
- (void)p_clearCategoryStyles;
- (void)p_clearPivotStyles;
- (void)p_saveToArchive:(void *)archive archiver:(id)archiver isPre30Alternate:(BOOL)alternate;
- (void)saveToArchiver:(id)archiver;
- (void)setBodyCellStyle:(id)style;
- (void)setBodyTextStyle:(id)style;
- (void)setCategoryLevel1CellStyle:(id)style;
- (void)setCategoryLevel1TextStyle:(id)style;
- (void)setCategoryLevel2CellStyle:(id)style;
- (void)setCategoryLevel2TextStyle:(id)style;
- (void)setCategoryLevel3CellStyle:(id)style;
- (void)setCategoryLevel3TextStyle:(id)style;
- (void)setCategoryLevel4CellStyle:(id)style;
- (void)setCategoryLevel4TextStyle:(id)style;
- (void)setCategoryLevel5CellStyle:(id)style;
- (void)setCategoryLevel5TextStyle:(id)style;
- (void)setCellStyle:(id)style forTableStyleArea:(unint64_t)area;
- (void)setFooterRowCellStyle:(id)style;
- (void)setFooterRowTextStyle:(id)style;
- (void)setHeaderColumnCellStyle:(id)style;
- (void)setHeaderColumnTextStyle:(id)style;
- (void)setHeaderRowCellStyle:(id)style;
- (void)setHeaderRowTextStyle:(id)style;
- (void)setLabelLevel1CellStyle:(id)style;
- (void)setLabelLevel1TextStyle:(id)style;
- (void)setLabelLevel2CellStyle:(id)style;
- (void)setLabelLevel2TextStyle:(id)style;
- (void)setLabelLevel3CellStyle:(id)style;
- (void)setLabelLevel3TextStyle:(id)style;
- (void)setLabelLevel4CellStyle:(id)style;
- (void)setLabelLevel4TextStyle:(id)style;
- (void)setLabelLevel5CellStyle:(id)style;
- (void)setLabelLevel5TextStyle:(id)style;
- (void)setPivotBodySummaryColumnCellStyle:(id)style;
- (void)setPivotBodySummaryRowCellStyle:(id)style;
- (void)setPivotHeaderColumnSummaryCellStyle:(id)style;
- (void)setTableNameShapeStyle:(id)style;
- (void)setTableNameStyle:(id)style;
- (void)setTableStyle:(id)style;
- (void)setTextStyle:(id)style forTableStyleArea:(unint64_t)area;
- (void)upgradeIfNecessary;
@end

@implementation TSTTableStyleNetwork

- (void)setTableStyle:(id)style
{
  styleCopy = style;
  if (self->_tableStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableStyle, style);
  }
}

- (void)setTableNameStyle:(id)style
{
  styleCopy = style;
  if (self->_tableNameStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableNameStyle, style);
  }
}

- (void)setTableNameShapeStyle:(id)style
{
  styleCopy = style;
  if (self->_tableNameShapeStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableNameShapeStyle, style);
  }
}

- (void)setBodyCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 1) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 1, style);
  }
}

- (void)setHeaderColumnCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 3) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 3, style);
  }
}

- (void)setFooterRowCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 4) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 4, style);
  }
}

- (void)setHeaderRowCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 2) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 2, style);
  }
}

- (void)setCategoryLevel1CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 5) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 5, style);
  }
}

- (void)setCategoryLevel2CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 6) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 6, style);
  }
}

- (void)setCategoryLevel3CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 7) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 7, style);
  }
}

- (void)setCategoryLevel4CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 8) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 8, style);
  }
}

- (void)setCategoryLevel5CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 9) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 9, style);
  }
}

- (void)setLabelLevel1CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 10) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 10, style);
  }
}

- (void)setLabelLevel2CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 11) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 11, style);
  }
}

- (void)setLabelLevel3CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 12) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 12, style);
  }
}

- (void)setLabelLevel4CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 13) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 13, style);
  }
}

- (void)setLabelLevel5CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 14) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 14, style);
  }
}

- (void)setBodyTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 1) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 1, style);
  }
}

- (void)setHeaderColumnTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 3) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 3, style);
  }
}

- (void)setFooterRowTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 4) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 4, style);
  }
}

- (void)setHeaderRowTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 2) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 2, style);
  }
}

- (void)setCategoryLevel1TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 5) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 5, style);
  }
}

- (void)setCategoryLevel2TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 6) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 6, style);
  }
}

- (void)setCategoryLevel3TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 7) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 7, style);
  }
}

- (void)setCategoryLevel4TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 8) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 8, style);
  }
}

- (void)setCategoryLevel5TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 9) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 9, style);
  }
}

- (void)setLabelLevel1TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 10) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 10, style);
  }
}

- (void)setLabelLevel2TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 11) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 11, style);
  }
}

- (void)setLabelLevel3TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 12) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 12, style);
  }
}

- (void)setLabelLevel4TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 13) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 13, style);
  }
}

- (void)setLabelLevel5TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 14) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_textStyles.__begin_ + 14, style);
  }
}

- (void)setPivotBodySummaryRowCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 15) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 15, style);
  }
}

- (void)setPivotBodySummaryColumnCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 16) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 16, style);
  }
}

- (void)setPivotHeaderColumnSummaryCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 17) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(self->_cellStyles.__begin_ + 17, style);
  }
}

+ (id)networkFromStyleProvider:(id)provider
{
  providerCopy = provider;
  v4 = [TSTTableStyleNetwork alloc];
  v9 = objc_msgSend_context(providerCopy, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_styleProvider_(v4, v10, v9, providerCopy, v11);

  return v12;
}

+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  contextCopy = context;
  colorsCopy = colors;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_221220220;
  v29[3] = &unk_278461928;
  dCopy = d;
  v30 = colorsCopy;
  alternateCopy = alternate;
  v31 = contextCopy;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2212202B8;
  v26[3] = &unk_278461950;
  v27 = v31;
  v28 = 0x402E000000000000;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_221220360;
  v24[3] = &unk_278461978;
  v25 = v27;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22122039C;
  v19[3] = &unk_2784619A0;
  dCopy2 = d;
  alternateCopy2 = alternate;
  v20 = v30;
  v21 = v25;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22122043C;
  v16[3] = &unk_2784619C8;
  v17 = v21;
  v18 = 0x402E000000000000;
  v11 = v21;
  v12 = v30;
  v14 = objc_msgSend_networkWithContext_presetID_styleProvider_tableStyleMorphingBlock_nameStyleMorphingBlock_nameShapeStyleMorphingBlock_cellStyleMorphingBlockByStyleArea_textStyleMorphingBlockByStyleArea_(TSTTableStyleNetwork, v13, v11, d, 0, v29, v26, v24, v19, v16);

  return v14;
}

+ (id)createStylesInStylesheet:(id)stylesheet presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  stylesheetCopy = stylesheet;
  colorsCopy = colors;
  v84 = objc_msgSend_context(stylesheetCopy, v11, v12, v13, v14);
  v87 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_presetID_colors_alternate_(TSTTableStyle, v15, v87, d, colorsCopy, alternate);
  v16 = [TSTTableStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v16, v17, v84, 0, v87, 0);
  v21 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v18, d, v19, v20);
  objc_msgSend_addStyle_withIdentifier_(stylesheetCopy, v22, isVariation, v21, v23);

  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v89 = sub_221220934;
  v90 = &unk_2784619F0;
  dCopy = d;
  v24 = colorsCopy;
  v91 = v24;
  alternateCopy = alternate;
  v25 = v84;
  v92 = v25;
  v26 = stylesheetCopy;
  v93 = v26;
  v96 = 0x402E000000000000;
  v97 = 0;
  v27 = 1;
  do
  {
    (v89)(v88, v27, &v97);
    if (v97)
    {
      break;
    }
  }

  while (v27++ != 17);
  v29 = objc_alloc(MEMORY[0x277D80EC8]);
  v34 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v30, v31, v32, v33);
  v36 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v29, v35, v25, 0, v34, 0);

  v40 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v37, 16, v38, v39);
  objc_msgSend_setValue_forProperty_(v36, v41, v40, 16, v42);

  objc_msgSend_setCGFloatValue_forProperty_(v36, v43, 17, v44, v45, 15.0);
  v49 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v46, d, v47, v48);
  objc_msgSend_addStyle_withIdentifier_(v26, v50, v36, v49, v51);

  v55 = objc_msgSend_defaultTableNameShapeStyleWithContext_(TSTTableStyleNetwork, v52, v25, v53, v54);
  v59 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v56, d, v57, v58);
  objc_msgSend_addStyle_withIdentifier_(v26, v60, v55, v59, v61);

  v64 = objc_msgSend_networkFromStylesheet_presetID_(self, v62, v26, d, v63);
  if ((objc_msgSend_valid(v64, v65, v66, v67, v68) & 1) == 0)
  {
    v72 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "+[TSTTableStyleNetwork createStylesInStylesheet:presetID:colors:alternate:]", v70, v71);
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v75, v76);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v78, v73, v77, 297, 0, "Style network is missing styles. %{public}@", v64);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }

  return v64;
}

+ (id)networkFromStylesheet:(id)stylesheet presetID:(unint64_t)d
{
  stylesheetCopy = stylesheet;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = sub_221221094;
  v100 = sub_2212210A4;
  v6 = [TSTTableStyleNetwork alloc];
  v11 = objc_msgSend_context(stylesheetCopy, v7, v8, v9, v10);
  v101 = objc_msgSend_initWithContext_(v6, v12, v11, v13, v14);

  v18 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v15, d, v16, v17);
  v22 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v19, v18, v20, v21);

  if (v22)
  {
    objc_msgSend_setTableStyle_(v97[5], v23, v22, v24, v25);
    objc_opt_class();
    v29 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v26, d, v27, v28);
    v33 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v30, v29, v31, v32);
    v34 = TSUDynamicCast();

    if (!v34)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSTTableStyleNetwork networkFromStylesheet:presetID:]", v36, v37);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 322, 0, "invalid nil value for '%{public}s'", "nameStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }

    objc_msgSend_setTableNameStyle_(v97[5], v35, v34, v36, v37);
    objc_opt_class();
    v52 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v49, d, v50, v51);
    v56 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v53, v52, v54, v55);
    v57 = TSUDynamicCast();

    if (!v57)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "+[TSTTableStyleNetwork networkFromStylesheet:presetID:]", v59, v60);
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 329, 0, "invalid nil value for '%{public}s'", "tableNameShapeStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    objc_msgSend_setTableNameShapeStyle_(v97[5], v58, v57, v59, v60);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v91 = sub_2212210AC;
    v92 = &unk_278461A18;
    dCopy = d;
    v93 = stylesheetCopy;
    v94 = &v96;
    v102 = 0;
    v72 = 1;
    do
    {
      (v91)(v90, v72, &v102);
      if (v102)
      {
        break;
      }
    }

    while (v72++ != 17);
    objc_msgSend_setPresetID_(v97[5], v73, d, v74, v75);
    v77 = v97[5];
  }

  else
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "+[TSTTableStyleNetwork networkFromStylesheet:presetID:]", v24, v25);
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 310, 0, "no default table style in stylesheet %p", stylesheetCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
    v77 = 0;
  }

  _Block_object_dispose(&v96, 8);

  return v77;
}

+ (id)networkFromTheme:(id)theme presetID:(unint64_t)d
{
  v41 = *MEMORY[0x277D85DE8];
  themeCopy = theme;
  if (!themeCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyleNetwork networkFromTheme:presetID:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 363, 0, "invalid nil value for '%{public}s'", "theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  objc_msgSend_presetsOfKind_(themeCopy, v5, *MEMORY[0x277D80BA8], v6, v7);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v20 = v37 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v36, v40, 16);
  if (v26)
  {
    v27 = *v37;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_presetID(v29, v22, v23, v24, v25) == d)
        {
          v26 = v29;
          goto LABEL_13;
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v36, v40, 16);
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v34 = objc_msgSend_styleNetwork(v26, v30, v31, v32, v33);

  return v34;
}

+ (id)networkFromTheme:(id)theme presetIndex:(unint64_t)index
{
  themeCopy = theme;
  if (!themeCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyleNetwork networkFromTheme:presetIndex:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 379, 0, "invalid nil value for '%{public}s'", "theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = objc_msgSend_presetOfKind_index_(themeCopy, v5, *MEMORY[0x277D80BA8], index, v7);
  v25 = objc_msgSend_styleNetwork(v20, v21, v22, v23, v24);

  return v25;
}

+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0
{
  v10 = objc_msgSend_nonValidatedNetworkWithContext_presetID_styleProvider_tableStyleMorphingBlock_nameStyleMorphingBlock_nameShapeStyleMorphingBlock_cellStyleMorphingBlockByStyleArea_textStyleMorphingBlockByStyleArea_(TSTTableStyleNetwork, a2, context, d, provider, block, morphingBlock, styleMorphingBlock, area, styleArea);
  if ((objc_msgSend_valid(v10, v11, v12, v13, v14) & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSTTableStyleNetwork networkWithContext:presetID:styleProvider:tableStyleMorphingBlock:nameStyleMorphingBlock:nameShapeStyleMorphingBlock:cellStyleMorphingBlockByStyleArea:textStyleMorphingBlockByStyleArea:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 404, 0, "All styles are not present and accounted for.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  return v10;
}

+ (id)nonValidatedNetworkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0
{
  contextCopy = context;
  providerCopy = provider;
  blockCopy = block;
  morphingBlockCopy = morphingBlock;
  styleMorphingBlockCopy = styleMorphingBlock;
  areaCopy = area;
  v74 = contextCopy;
  styleAreaCopy = styleArea;
  v72 = blockCopy;
  v73 = providerCopy;
  v19 = [TSTTableStyleNetwork alloc];
  v21 = objc_msgSend_initWithContext_styleProvider_presetID_(v19, v20, contextCopy, providerCopy, d);
  objc_opt_class();
  v26 = objc_msgSend_tableStyle(v21, v22, v23, v24, v25, v21, areaCopy);
  v30 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v27, d, v28, v29);
  v31 = (*(blockCopy + 2))(blockCopy, v26, v30, 1);
  v32 = TSUCheckedDynamicCast();
  objc_msgSend_setTableStyle_(v21, v33, v32, v34, v35);

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_221221DB4;
  v82[3] = &unk_278461A40;
  v36 = v21;
  v83 = v36;
  dCopy = d;
  v71 = areaCopy;
  v84 = v71;
  v37 = MEMORY[0x223DA1C10](v82);
  v37[2](v37, 1, 2);
  v37[2](v37, 2, 3);
  v37[2](v37, 3, 4);
  v37[2](v37, 4, 5);
  v37[2](v37, 5, 6);
  v37[2](v37, 6, 7);
  v37[2](v37, 7, 8);
  v37[2](v37, 8, 9);
  v37[2](v37, 9, 10);
  v37[2](v37, 10, 11);
  v37[2](v37, 11, 12);
  v37[2](v37, 12, 13);
  v37[2](v37, 13, 14);
  v37[2](v37, 14, 15);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_221221ED4;
  v78[3] = &unk_278461A40;
  v38 = v36;
  v79 = v38;
  dCopy2 = d;
  v39 = styleAreaCopy;
  v80 = v39;
  v40 = MEMORY[0x223DA1C10](v78);
  v40[2](v40, 1, 16);
  v40[2](v40, 2, 17);
  v40[2](v40, 3, 18);
  v40[2](v40, 4, 19);
  v40[2](v40, 5, 20);
  v40[2](v40, 6, 21);
  v40[2](v40, 7, 22);
  v40[2](v40, 8, 23);
  v40[2](v40, 9, 24);
  v40[2](v40, 10, 25);
  v40[2](v40, 11, 26);
  v40[2](v40, 12, 27);
  v40[2](v40, 13, 28);
  v40[2](v40, 14, 29);
  objc_opt_class();
  v45 = objc_msgSend_tableNameStyle(v38, v41, v42, v43, v44);
  v49 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v46, d, v47, v48);
  v50 = morphingBlockCopy[2](morphingBlockCopy, v45, v49, 30);
  v51 = TSUCheckedDynamicCast();
  objc_msgSend_setTableNameStyle_(v38, v52, v51, v53, v54);

  objc_opt_class();
  v59 = objc_msgSend_tableNameShapeStyle(v38, v55, v56, v57, v58);
  v63 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v60, d, v61, v62);
  v64 = styleMorphingBlockCopy[2](styleMorphingBlockCopy, v59, v63, 31);
  v65 = TSUCheckedDynamicCast();
  objc_msgSend_setTableNameShapeStyle_(v38, v66, v65, v67, v68);

  v37[2](v37, 15, 32);
  v37[2](v37, 16, 33);
  v37[2](v37, 17, 34);
  v69 = v38;

  return v38;
}

+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider styleMorphingBlock:(id)block
{
  contextCopy = context;
  providerCopy = provider;
  blockCopy = block;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221222128;
  v17[3] = &unk_278461A68;
  v12 = blockCopy;
  v18 = v12;
  v13 = MEMORY[0x223DA1C10](v17);
  v15 = objc_msgSend_networkWithContext_presetID_styleProvider_tableStyleMorphingBlock_nameStyleMorphingBlock_nameShapeStyleMorphingBlock_cellStyleMorphingBlockByStyleArea_textStyleMorphingBlockByStyleArea_(TSTTableStyleNetwork, v14, contextCopy, d, providerCopy, v12, v12, v12, v13, v13);

  return v15;
}

- (id)networkForPivotTables
{
  v6 = objc_msgSend_copy(self, a2, v2, v3, v4);
  v10 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v7, 769, v8, v9, 0, 0);
  v15 = objc_msgSend_tableStyle(v6, v11, v12, v13, v14);
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_221221094;
  v69 = sub_2212210A4;
  v70 = 0;
  v20 = objc_msgSend_stylesheet(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_documentRoot(self, v21, v22, v23, v24);
  v30 = objc_msgSend_stylesheet(v25, v26, v27, v28, v29);

  if (v20 == v30)
  {
    v40 = objc_msgSend_documentRoot(self, v31, v32, v33, v34);
    v35 = objc_msgSend_accessController(v40, v41, v42, v43, v44);

    if (v35 && (objc_msgSend_hasWrite(v35, v45, v46, v47, v48) & 1) == 0)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_22122243C;
      v61[3] = &unk_278461A90;
      v64 = &v65;
      v62 = v15;
      v63 = v10;
      objc_msgSend_performWrite_(v35, v53, v61, v54, v55);

      v39 = v62;
    }

    else
    {
      v39 = objc_msgSend_stylesheet(v15, v45, v46, v47, v48);
      v51 = objc_msgSend_variationOfStyle_propertyMap_(v39, v49, v15, v10, v50);
      v52 = v66[5];
      v66[5] = v51;
    }
  }

  else
  {
    v35 = objc_msgSend_stylesheet(v15, v31, v32, v33, v34);
    v38 = objc_msgSend_variationOfStyle_propertyMap_(v35, v36, v15, v10, v37);
    v39 = v66[5];
    v66[5] = v38;
  }

  objc_msgSend_setTableStyle_(v6, v56, v66[5], v57, v58);
  v59 = v6;
  _Block_object_dispose(&v65, 8);

  return v59;
}

+ (id)defaultTableNameShapeStyleWithContext:(id)context
{
  v5 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80F18], a2, context, v3, v4);
  objc_msgSend_setIntValue_forProperty_(v5, v6, 1, 149, v7);
  v12 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v8, v9, v10, v11);
  objc_msgSend_setValue_forProperty_(v5, v13, v12, 517, v14);

  v19 = objc_msgSend_padding(MEMORY[0x277D80EB0], v15, v16, v17, v18);
  objc_msgSend_setValue_forProperty_(v5, v20, v19, 146, v21);

  return v5;
}

- (TSTTableStyleNetwork)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = TSTTableStyleNetwork;
  v5 = [(TSTTableStyleNetwork *)&v8 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    sub_221222660(&v5->_cellStyles.__begin_, 0x12uLL);
    sub_2212226E8(&v6->_textStyles.__begin_, 0x12uLL);
  }

  return v6;
}

- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v12 = objc_msgSend_tableStyle(providerCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_rootAncestor(v12, v13, v14, v15, v16);
  v22 = objc_msgSend_styleIdentifier(v17, v18, v19, v20, v21);
  v26 = objc_msgSend_presetIDForStyleID_(TSTTableStyle, v23, v22, v24, v25);

  v28 = objc_msgSend_initWithContext_styleProvider_presetID_(self, v27, contextCopy, providerCopy, v26);
  return v28;
}

- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider presetID:(unint64_t)d
{
  contextCopy = context;
  providerCopy = provider;
  v13 = objc_msgSend_initWithContext_(self, v10, contextCopy, v11, v12);
  v17 = v13;
  if (v13)
  {
    objc_msgSend_setPresetID_(v13, v14, d, v15, v16);
    if (providerCopy)
    {
      v22 = objc_msgSend_context(providerCopy, v18, v19, v20, v21);
      v27 = objc_msgSend_context(v17, v23, v24, v25, v26);

      if (v22 != v27)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTableStyleNetwork initWithContext:styleProvider:presetID:]", v30, v31);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 562, 0, "Cannot set styles from a different context");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
      }

      v43 = objc_msgSend_tableStyle(providerCopy, v28, v29, v30, v31);
      tableStyle = v17->_tableStyle;
      v17->_tableStyle = v43;

      v49 = objc_msgSend_bodyCellStyle(providerCopy, v45, v46, v47, v48);
      begin = v17->_cellStyles.__begin_;
      v51 = begin[1];
      begin[1] = v49;

      v56 = objc_msgSend_headerRowCellStyle(providerCopy, v52, v53, v54, v55);
      v57 = v17->_cellStyles.__begin_;
      v58 = v57[2];
      v57[2] = v56;

      v63 = objc_msgSend_headerColumnCellStyle(providerCopy, v59, v60, v61, v62);
      v64 = v17->_cellStyles.__begin_;
      v65 = v64[3];
      v64[3] = v63;

      v70 = objc_msgSend_footerRowCellStyle(providerCopy, v66, v67, v68, v69);
      v71 = v17->_cellStyles.__begin_;
      v72 = v71[4];
      v71[4] = v70;

      v77 = objc_msgSend_categoryLevel1CellStyle(providerCopy, v73, v74, v75, v76);
      v78 = v17->_cellStyles.__begin_;
      v79 = v78[5];
      v78[5] = v77;

      v84 = objc_msgSend_categoryLevel2CellStyle(providerCopy, v80, v81, v82, v83);
      v85 = v17->_cellStyles.__begin_;
      v86 = v85[6];
      v85[6] = v84;

      v91 = objc_msgSend_categoryLevel3CellStyle(providerCopy, v87, v88, v89, v90);
      v92 = v17->_cellStyles.__begin_;
      v93 = v92[7];
      v92[7] = v91;

      v98 = objc_msgSend_categoryLevel4CellStyle(providerCopy, v94, v95, v96, v97);
      v99 = v17->_cellStyles.__begin_;
      v100 = v99[8];
      v99[8] = v98;

      v105 = objc_msgSend_categoryLevel5CellStyle(providerCopy, v101, v102, v103, v104);
      v106 = v17->_cellStyles.__begin_;
      v107 = v106[9];
      v106[9] = v105;

      v112 = objc_msgSend_labelLevel1CellStyle(providerCopy, v108, v109, v110, v111);
      v113 = v17->_cellStyles.__begin_;
      v114 = v113[10];
      v113[10] = v112;

      v119 = objc_msgSend_labelLevel2CellStyle(providerCopy, v115, v116, v117, v118);
      v120 = v17->_cellStyles.__begin_;
      v121 = v120[11];
      v120[11] = v119;

      v126 = objc_msgSend_labelLevel3CellStyle(providerCopy, v122, v123, v124, v125);
      v127 = v17->_cellStyles.__begin_;
      v128 = v127[12];
      v127[12] = v126;

      v133 = objc_msgSend_labelLevel4CellStyle(providerCopy, v129, v130, v131, v132);
      v134 = v17->_cellStyles.__begin_;
      v135 = v134[13];
      v134[13] = v133;

      v140 = objc_msgSend_labelLevel5CellStyle(providerCopy, v136, v137, v138, v139);
      v141 = v17->_cellStyles.__begin_;
      v142 = v141[14];
      v141[14] = v140;

      v147 = objc_msgSend_bodyTextStyle(providerCopy, v143, v144, v145, v146);
      v148 = v17->_textStyles.__begin_;
      v149 = v148[1];
      v148[1] = v147;

      v154 = objc_msgSend_headerRowTextStyle(providerCopy, v150, v151, v152, v153);
      v155 = v17->_textStyles.__begin_;
      v156 = v155[2];
      v155[2] = v154;

      v161 = objc_msgSend_headerColumnTextStyle(providerCopy, v157, v158, v159, v160);
      v162 = v17->_textStyles.__begin_;
      v163 = v162[3];
      v162[3] = v161;

      v168 = objc_msgSend_footerRowTextStyle(providerCopy, v164, v165, v166, v167);
      v169 = v17->_textStyles.__begin_;
      v170 = v169[4];
      v169[4] = v168;

      v175 = objc_msgSend_categoryLevel1TextStyle(providerCopy, v171, v172, v173, v174);
      v176 = v17->_textStyles.__begin_;
      v177 = v176[5];
      v176[5] = v175;

      v182 = objc_msgSend_categoryLevel2TextStyle(providerCopy, v178, v179, v180, v181);
      v183 = v17->_textStyles.__begin_;
      v184 = v183[6];
      v183[6] = v182;

      v189 = objc_msgSend_categoryLevel3TextStyle(providerCopy, v185, v186, v187, v188);
      v190 = v17->_textStyles.__begin_;
      v191 = v190[7];
      v190[7] = v189;

      v196 = objc_msgSend_categoryLevel4TextStyle(providerCopy, v192, v193, v194, v195);
      v197 = v17->_textStyles.__begin_;
      v198 = v197[8];
      v197[8] = v196;

      v203 = objc_msgSend_categoryLevel5TextStyle(providerCopy, v199, v200, v201, v202);
      v204 = v17->_textStyles.__begin_;
      v205 = v204[9];
      v204[9] = v203;

      v210 = objc_msgSend_labelLevel1TextStyle(providerCopy, v206, v207, v208, v209);
      v211 = v17->_textStyles.__begin_;
      v212 = v211[10];
      v211[10] = v210;

      v217 = objc_msgSend_labelLevel2TextStyle(providerCopy, v213, v214, v215, v216);
      v218 = v17->_textStyles.__begin_;
      v219 = v218[11];
      v218[11] = v217;

      v224 = objc_msgSend_labelLevel3TextStyle(providerCopy, v220, v221, v222, v223);
      v225 = v17->_textStyles.__begin_;
      v226 = v225[12];
      v225[12] = v224;

      v231 = objc_msgSend_labelLevel4TextStyle(providerCopy, v227, v228, v229, v230);
      v232 = v17->_textStyles.__begin_;
      v233 = v232[13];
      v232[13] = v231;

      v238 = objc_msgSend_labelLevel5TextStyle(providerCopy, v234, v235, v236, v237);
      v239 = v17->_textStyles.__begin_;
      v240 = v239[14];
      v239[14] = v238;

      v245 = objc_msgSend_tableNameStyle(providerCopy, v241, v242, v243, v244);
      tableNameStyle = v17->_tableNameStyle;
      v17->_tableNameStyle = v245;

      v251 = objc_msgSend_tableNameShapeStyle(providerCopy, v247, v248, v249, v250);
      tableNameShapeStyle = v17->_tableNameShapeStyle;
      v17->_tableNameShapeStyle = v251;

      v257 = objc_msgSend_pivotBodySummaryRowCellStyle(providerCopy, v253, v254, v255, v256);
      v258 = v17->_cellStyles.__begin_;
      v259 = v258[15];
      v258[15] = v257;

      v264 = objc_msgSend_pivotBodySummaryColumnCellStyle(providerCopy, v260, v261, v262, v263);
      v265 = v17->_cellStyles.__begin_;
      v266 = v265[16];
      v265[16] = v264;

      v271 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(providerCopy, v267, v268, v269, v270);
      v272 = v17->_cellStyles.__begin_;
      v273 = v272[17];
      v272[17] = v271;
    }
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone context:(id)context
{
  contextCopy = context;
  v7 = objc_opt_class();
  v11 = objc_msgSend_allocWithZone_(v7, v8, zone, v9, v10);
  v15 = objc_msgSend_initWithContext_(v11, v12, contextCopy, v13, v14);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 72), self->_tableStyle);
    objc_storeStrong(&v16->_tableNameStyle, self->_tableNameStyle);
    objc_storeStrong(&v16->_tableNameShapeStyle, self->_tableNameShapeStyle);
    if (v16 != self)
    {
      sub_22116CF34(&v16->_cellStyles, self->_cellStyles.__begin_, self->_cellStyles.var0, self->_cellStyles.var0 - self->_cellStyles.__begin_);
      sub_22116CF34(&v16->_textStyles, self->_textStyles.__begin_, self->_textStyles.var0, self->_textStyles.var0 - self->_textStyles.__begin_);
    }

    v21 = objc_msgSend_presetID(self, v17, v18, v19, v20);
    objc_msgSend_setPresetID_(v16, v22, v21, v23, v24);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = objc_msgSend_context(self, a2, zone, v3, v4);
  v10 = objc_msgSend_copyWithZone_context_(self, v8, zone, v7, v9);

  return v10;
}

- (id)copy
{
  v6 = objc_msgSend_context(self, a2, v2, v3, v4);
  v9 = objc_msgSend_copyWithZone_context_(self, v7, 0, v6, v8);

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    if (!v9)
    {
      v65 = 0;
      goto LABEL_48;
    }

    v10 = objc_msgSend_presetID(self, v5, v6, v7, v8);
    if (v10 == objc_msgSend_presetID(v9, v11, v12, v13, v14))
    {
      v19 = objc_msgSend_tableStyle(self, v15, v16, v17, v18);
      v28 = objc_msgSend_tableStyle(v9, v20, v21, v22, v23);
      if (v19 == v28)
      {
        v29 = objc_msgSend_tableNameStyle(self, v24, v25, v26, v27);
        v38 = objc_msgSend_tableNameStyle(v9, v30, v31, v32, v33);
        if (v29 == v38)
        {
          v169 = v9;
          v39 = objc_msgSend_tableNameShapeStyle(self, v34, v35, v36, v37);
          v48 = objc_msgSend_tableNameShapeStyle(v9, v40, v41, v42, v43);
          if (v39 == v48)
          {
            v49 = objc_msgSend_cellStyles(self, v44, v45, v46, v47);
            v54 = objc_msgSend_cellStyles(v169, v50, v51, v52, v53);
            if (sub_2212236D4(v49, v54))
            {
              v59 = objc_msgSend_textStyles(self, v55, v56, v57, v58);
              v64 = objc_msgSend_textStyles(v169, v60, v61, v62, v63);
              LOBYTE(v59) = sub_2212236D4(v59, v64);

              v9 = v169;
              if (v59)
              {
                v65 = 1;
LABEL_48:

                goto LABEL_49;
              }

              goto LABEL_15;
            }
          }

          v9 = v169;
        }
      }
    }

LABEL_15:
    v66 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v15, 768, v17, v18, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 788, 789, 791, 793, 795, 796, 797, 0);
    tableStyle = self->_tableStyle;
    v72 = objc_msgSend_tableStyle(v9, v68, v69, v70, v71);
    LOBYTE(tableStyle) = objc_msgSend_hasEqualValues_forProperties_(tableStyle, v73, v72, v66, v74);

    if (tableStyle)
    {
      v170 = v9;
      v167 = equalCopy;
      v168 = v66;
      v83 = objc_msgSend_cellStyles(v9, v75, v76, v77, v78);
      p_cellStyles = &self->_cellStyles;
      begin = self->_cellStyles.__begin_;
      var0 = self->_cellStyles.var0;
      v87 = var0 - begin;
      if (var0 - begin != v83[1] - *v83)
      {
        v88 = MEMORY[0x277D81150];
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSTTableStyleNetwork isEqual:]", v81, v82);
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v91, v92);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v94, v89, v93, 692, 0, "Cell style array length mismatch");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97, v98);
        begin = p_cellStyles->__begin_;
        var0 = self->_cellStyles.var0;
        v87 = var0 - p_cellStyles->__begin_;
      }

      if (var0 != begin)
      {
        v99 = 0;
        if ((v87 >> 3) <= 1)
        {
          v100 = 1;
        }

        else
        {
          v100 = v87 >> 3;
        }

        do
        {
          v101 = p_cellStyles->__begin_[v99];
          v106 = *(*v83 + 8 * v99);
          if ((v101 == 0) == (v106 != 0))
          {
            v107 = MEMORY[0x277D81150];
            v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "[TSTTableStyleNetwork isEqual:]", v104, v105);
            v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v110, v111);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v113, v108, v112, 696, 0, "Cell style array element nillity mismatch at position %zu", v99);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
          }

          if (v101)
          {
            v118 = objc_msgSend_overridePropertyMap(v106, v102, v103, v104, v105);
            IsEqualTo = objc_msgSend_overridePropertyMapIsEqualTo_(v101, v119, v118, v120, v121);

            if (!IsEqualTo)
            {
LABEL_44:
              v65 = 0;
              goto LABEL_45;
            }
          }

          else
          {
          }

          ++v99;
        }

        while (v100 != v99);
      }

      v9 = v170;
      v66 = v168;
      v126 = objc_msgSend_textStyles(v170, v79, v80, v81, v82);
      p_textStyles = &self->_textStyles;
      v129 = self->_textStyles.__begin_;
      v128 = self->_textStyles.var0;
      v130 = v128 - v129;
      if (v128 - v129 != v126[1] - *v126)
      {
        v131 = MEMORY[0x277D81150];
        v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "[TSTTableStyleNetwork isEqual:]", v124, v125);
        v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v134, v135);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v137, v132, v136, 703, 0, "Text style array length mismatch");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v139, v140, v141);
        v129 = p_textStyles->__begin_;
        v128 = self->_textStyles.var0;
        v130 = v128 - p_textStyles->__begin_;
      }

      if (v128 == v129)
      {
        v65 = 1;
        equalCopy = v167;
      }

      else
      {
        v142 = 0;
        if ((v130 >> 3) <= 1)
        {
          v143 = 1;
        }

        else
        {
          v143 = v130 >> 3;
        }

        do
        {
          v144 = p_textStyles->__begin_[v142];
          v149 = *(*v126 + 8 * v142);
          if ((v144 == 0) == (v149 != 0))
          {
            v150 = MEMORY[0x277D81150];
            v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "[TSTTableStyleNetwork isEqual:]", v147, v148);
            v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v153, v154);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v156, v151, v155, 707, 0, "Text style array element nillity mismatch at position %zu", v142);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v157, v158, v159, v160);
          }

          if (v144)
          {
            v161 = objc_msgSend_overridePropertyMap(v149, v145, v146, v147, v148);
            v165 = objc_msgSend_overridePropertyMapIsEqualTo_(v144, v162, v161, v163, v164);

            if (!v165)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          ++v142;
        }

        while (v143 != v142);
        v65 = 1;
LABEL_45:
        equalCopy = v167;
        v66 = v168;
        v9 = v170;
      }
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_48;
  }

  v65 = 1;
LABEL_49:

  return v65;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v9 = objc_msgSend_hash(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_presetID(self, v10, v11, v12, v13);

  return v14 + v9;
}

+ (id)curatedTableStylePropertySetForCrossDocumentPasteMasterComparison
{
  if (qword_27CFB52C8 != -1)
  {
    sub_2216F7498();
  }

  v3 = qword_27CFB52D0;

  return v3;
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison objectComparisonBlock:(id)block
{
  comparisonCopy = comparison;
  blockCopy = block;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2212239D0;
  v14[3] = &unk_278461AB8;
  v16 = blockCopy;
  v17 = &v18;
  v15 = comparisonCopy;
  v8 = blockCopy;
  v9 = comparisonCopy;
  objc_msgSend_enumerateAllStylesWithBlock_(self, v10, v14, v11, v12);
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

+ (id)identifiersForPresetID:(unint64_t)d
{
  v114[34] = *MEMORY[0x277D85DE8];
  v5 = qword_27CFB52D8;
  if (!qword_27CFB52D8)
  {
    v114[0] = objc_msgSend_styleIDForPreset_(TSTTableStyle, a2, d, v3, v4);
    v113 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v7, d, 2, v8);
    v114[1] = v113;
    v112 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v9, d, 3, v10);
    v114[2] = v112;
    v111 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v11, d, 4, v12);
    v114[3] = v111;
    v110 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v13, d, 1, v14);
    v114[4] = v110;
    v109 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v15, d, 5, v16);
    v114[5] = v109;
    v108 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v17, d, 6, v18);
    v114[6] = v108;
    v107 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v19, d, 7, v20);
    v114[7] = v107;
    v106 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v21, d, 8, v22);
    v114[8] = v106;
    v105 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v23, d, 9, v24);
    v114[9] = v105;
    v104 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v25, d, 10, v26);
    v114[10] = v104;
    v103 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v27, d, 11, v28);
    v114[11] = v103;
    v102 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v29, d, 12, v30);
    v114[12] = v102;
    v101 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v31, d, 13, v32);
    v114[13] = v101;
    v100 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v33, d, 14, v34);
    v114[14] = v100;
    v99 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v35, d, 2, v36);
    v114[15] = v99;
    v98 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v37, d, 3, v38);
    v114[16] = v98;
    v97 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v39, d, 4, v40);
    v114[17] = v97;
    v96 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v41, d, 1, v42);
    v114[18] = v96;
    v95 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v43, d, 5, v44);
    v114[19] = v95;
    v94 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v45, d, 6, v46);
    v114[20] = v94;
    v93 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v47, d, 7, v48);
    v114[21] = v93;
    v92 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v49, d, 8, v50);
    v114[22] = v92;
    v91 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v51, d, 9, v52);
    v114[23] = v91;
    v90 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v53, d, 10, v54);
    v114[24] = v90;
    v57 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v55, d, 11, v56);
    v114[25] = v57;
    v60 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v58, d, 12, v59);
    v114[26] = v60;
    v63 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v61, d, 13, v62);
    v114[27] = v63;
    v66 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v64, d, 14, v65);
    v114[28] = v66;
    v70 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v67, d, v68, v69);
    v114[29] = v70;
    v74 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v71, d, v72, v73);
    v114[30] = v74;
    v77 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v75, d, 15, v76);
    v114[31] = v77;
    v80 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v78, d, 16, v79);
    v114[32] = v80;
    v83 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v81, d, 17, v82);
    v114[33] = v83;
    v84 = v114[0];
    v87 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v85, v114, 34, v86);
    v88 = qword_27CFB52D8;
    qword_27CFB52D8 = v87;

    v5 = qword_27CFB52D8;
  }

  return v5;
}

- (BOOL)stylesInStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v9 = objc_msgSend_context(self, v5, v6, v7, v8);
  v14 = objc_msgSend_context(stylesheetCopy, v10, v11, v12, v13);

  if (v9 == v14)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_221224358;
    v20[3] = &unk_278461AE0;
    v21 = stylesheetCopy;
    v22 = &v23;
    objc_msgSend_enumerateAllStylesWithBlock_(self, v16, v20, v17, v18);
    v15 = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (id)textStyleForTableStyleArea:(unint64_t)area
{
  if (area - 15 >= 2)
  {
    if (area == 17)
    {
      v3 = self->_textStyles.__begin_ + 3;
    }

    else
    {
      v3 = &self->_textStyles.__begin_[area];
    }
  }

  else
  {
    v3 = self->_textStyles.__begin_ + 1;
  }

  return *v3;
}

- (void)setCellStyle:(id)style forTableStyleArea:(unint64_t)area
{
  styleCopy = style;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  begin = self->_cellStyles.__begin_;
  v12 = begin[area];
  begin[area] = styleCopy;
}

- (void)setTextStyle:(id)style forTableStyleArea:(unint64_t)area
{
  styleCopy = style;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  if (area - 15 >= 3)
  {
    objc_storeStrong(&self->_textStyles.__begin_[area], style);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableStyleNetwork setTextStyle:forTableStyleArea:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 857, 0, "Pivot areas use the equivalent default area textStyle. Don't try to set it.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }
}

- (id)styleForStyleNetworkIndex:(unint64_t)index
{
  switch(index)
  {
    case 1uLL:
      v4 = 72;
      goto LABEL_48;
    case 2uLL:
      v14 = 96;
      goto LABEL_20;
    case 3uLL:
      v6 = 96;
      goto LABEL_15;
    case 4uLL:
      v15 = 96;
      goto LABEL_23;
    case 5uLL:
      v10 = 96;
      goto LABEL_33;
    case 6uLL:
      v18 = 96;
      goto LABEL_42;
    case 7uLL:
      v17 = 96;
      goto LABEL_31;
    case 8uLL:
      v16 = 96;
      goto LABEL_27;
    case 9uLL:
      v19 = 96;
      goto LABEL_40;
    case 0xAuLL:
      v12 = 96;
      goto LABEL_44;
    case 0xBuLL:
      v13 = 96;
      goto LABEL_35;
    case 0xCuLL:
      v9 = 96;
      goto LABEL_12;
    case 0xDuLL:
      v11 = 96;
      goto LABEL_50;
    case 0xEuLL:
      v5 = 96;
      goto LABEL_29;
    case 0xFuLL:
      v7 = 96;
      goto LABEL_46;
    case 0x10uLL:
      v14 = 120;
LABEL_20:
      v8 = (*(&self->super.super.isa + v14) + 8);
      goto LABEL_51;
    case 0x11uLL:
      v6 = 120;
LABEL_15:
      v8 = (*(&self->super.super.isa + v6) + 16);
      goto LABEL_51;
    case 0x12uLL:
      v15 = 120;
LABEL_23:
      v8 = (*(&self->super.super.isa + v15) + 24);
      goto LABEL_51;
    case 0x13uLL:
      v10 = 120;
LABEL_33:
      v8 = (*(&self->super.super.isa + v10) + 32);
      goto LABEL_51;
    case 0x14uLL:
      v18 = 120;
LABEL_42:
      v8 = (*(&self->super.super.isa + v18) + 40);
      goto LABEL_51;
    case 0x15uLL:
      v17 = 120;
LABEL_31:
      v8 = (*(&self->super.super.isa + v17) + 48);
      goto LABEL_51;
    case 0x16uLL:
      v16 = 120;
LABEL_27:
      v8 = (*(&self->super.super.isa + v16) + 56);
      goto LABEL_51;
    case 0x17uLL:
      v19 = 120;
LABEL_40:
      v8 = (*(&self->super.super.isa + v19) + 64);
      goto LABEL_51;
    case 0x18uLL:
      v12 = 120;
LABEL_44:
      v8 = (*(&self->super.super.isa + v12) + 72);
      goto LABEL_51;
    case 0x19uLL:
      v13 = 120;
LABEL_35:
      v8 = (*(&self->super.super.isa + v13) + 80);
      goto LABEL_51;
    case 0x1AuLL:
      v9 = 120;
LABEL_12:
      v8 = (*(&self->super.super.isa + v9) + 88);
      goto LABEL_51;
    case 0x1BuLL:
      v11 = 120;
LABEL_50:
      v8 = (*(&self->super.super.isa + v11) + 96);
      goto LABEL_51;
    case 0x1CuLL:
      v5 = 120;
LABEL_29:
      v8 = (*(&self->super.super.isa + v5) + 104);
      goto LABEL_51;
    case 0x1DuLL:
      v7 = 120;
LABEL_46:
      v8 = (*(&self->super.super.isa + v7) + 112);
      goto LABEL_51;
    case 0x1EuLL:
      v4 = 80;
      goto LABEL_48;
    case 0x1FuLL:
      v4 = 88;
LABEL_48:
      v8 = (&self->super.super.isa + v4);
      goto LABEL_51;
    case 0x20uLL:
      v8 = self->_cellStyles.__begin_ + 15;
      goto LABEL_51;
    case 0x21uLL:
      v8 = self->_cellStyles.__begin_ + 16;
      goto LABEL_51;
    case 0x22uLL:
      v8 = self->_cellStyles.__begin_ + 17;
LABEL_51:
      v20 = *v8;

      break;
    default:
      v20 = 0;

      break;
  }

  return v20;
}

- (void)enumerateAllStylesWithBlock:(id)block
{
  blockCopy = block;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  tableStyle = self->_tableStyle;
  v10 = objc_msgSend_presetID(self, v6, v7, v8, v9);
  v14 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v11, v10, v12, v13);
  v15 = (blockCopy + 16);
  (*(blockCopy + 2))(blockCopy, tableStyle, v14, 1, v53 + 3);

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_221224FE8;
  v49[3] = &unk_278461B08;
  v16 = blockCopy;
  v49[4] = self;
  v50 = v16;
  v51 = &v52;
  v17 = MEMORY[0x223DA1C10](v49);
  v18 = v17;
  if ((v53[3] & 1) == 0)
  {
    (*(v17 + 16))(v17, 1, 2);
    if ((v53[3] & 1) == 0)
    {
      v18[2](v18, 2, 3);
      if ((v53[3] & 1) == 0)
      {
        v18[2](v18, 3, 4);
        if ((v53[3] & 1) == 0)
        {
          v18[2](v18, 4, 5);
          if ((v53[3] & 1) == 0)
          {
            v18[2](v18, 5, 6);
            if ((v53[3] & 1) == 0)
            {
              v18[2](v18, 6, 7);
              if ((v53[3] & 1) == 0)
              {
                v18[2](v18, 7, 8);
                if ((v53[3] & 1) == 0)
                {
                  v18[2](v18, 8, 9);
                  if ((v53[3] & 1) == 0)
                  {
                    v18[2](v18, 9, 10);
                    if ((v53[3] & 1) == 0)
                    {
                      v18[2](v18, 10, 11);
                      if ((v53[3] & 1) == 0)
                      {
                        v18[2](v18, 11, 12);
                        if ((v53[3] & 1) == 0)
                        {
                          v18[2](v18, 12, 13);
                          if ((v53[3] & 1) == 0)
                          {
                            v18[2](v18, 13, 14);
                            if ((v53[3] & 1) == 0)
                            {
                              v18[2](v18, 14, 15);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = sub_2212250B0;
  v45 = &unk_278461B08;
  v19 = v16;
  selfCopy = self;
  v47 = v19;
  v48 = &v52;
  v20 = MEMORY[0x223DA1C10](&v42);
  v21 = v20;
  if ((v53[3] & 1) == 0)
  {
    (*(v20 + 16))(v20, 1, 16);
    if ((v53[3] & 1) == 0)
    {
      v21[2](v21, 2, 17);
      if ((v53[3] & 1) == 0)
      {
        v21[2](v21, 3, 18);
        if ((v53[3] & 1) == 0)
        {
          v21[2](v21, 4, 19);
          if ((v53[3] & 1) == 0)
          {
            v21[2](v21, 5, 20);
            if ((v53[3] & 1) == 0)
            {
              v21[2](v21, 6, 21);
              if ((v53[3] & 1) == 0)
              {
                v21[2](v21, 7, 22);
                if ((v53[3] & 1) == 0)
                {
                  v21[2](v21, 8, 23);
                  if ((v53[3] & 1) == 0)
                  {
                    v21[2](v21, 9, 24);
                    if ((v53[3] & 1) == 0)
                    {
                      v21[2](v21, 10, 25);
                      if ((v53[3] & 1) == 0)
                      {
                        v21[2](v21, 11, 26);
                        if ((v53[3] & 1) == 0)
                        {
                          v21[2](v21, 12, 27);
                          if ((v53[3] & 1) == 0)
                          {
                            v21[2](v21, 13, 28);
                            if ((v53[3] & 1) == 0)
                            {
                              v21[2](v21, 14, 29);
                              if ((v53[3] & 1) == 0)
                              {
                                tableNameStyle = self->_tableNameStyle;
                                v27 = objc_msgSend_presetID(self, v22, v23, v24, v25, v42, v43, v44, v45);
                                v31 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v28, v27, v29, v30);
                                (*v15)(v19, tableNameStyle, v31, 30, (v53 + 3));

                                if ((v53[3] & 1) == 0)
                                {
                                  tableNameShapeStyle = self->_tableNameShapeStyle;
                                  v37 = objc_msgSend_presetID(self, v32, v33, v34, v35);
                                  v41 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v38, v37, v39, v40);
                                  (*v15)(v19, tableNameShapeStyle, v41, 31, (v53 + 3));

                                  if ((v53[3] & 1) == 0)
                                  {
                                    v18[2](v18, 15, 32);
                                    if ((v53[3] & 1) == 0)
                                    {
                                      v18[2](v18, 16, 33);
                                      if ((v53[3] & 1) == 0)
                                      {
                                        v18[2](v18, 17, 34);
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_object_dispose(&v52, 8);
}

- (id)dictionaryWithPreset:(unint64_t)preset
{
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, preset, v3, v4);
  tableStyle = self->_tableStyle;
  if (tableStyle)
  {
    v12 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v7, preset, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v13, tableStyle, v12, v14);
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2212255B4;
  v39[3] = &unk_278461B30;
  v39[4] = self;
  v15 = v10;
  v40 = v15;
  presetCopy = preset;
  v16 = MEMORY[0x223DA1C10](v39);
  v16[2](v16, 1);
  v16[2](v16, 2);
  v16[2](v16, 3);
  v16[2](v16, 4);
  v16[2](v16, 5);
  v16[2](v16, 6);
  v16[2](v16, 7);
  v16[2](v16, 8);
  v16[2](v16, 9);
  v16[2](v16, 10);
  v16[2](v16, 11);
  v16[2](v16, 12);
  v16[2](v16, 13);
  v16[2](v16, 14);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_221225658;
  v35 = &unk_278461B30;
  selfCopy = self;
  v17 = v15;
  v37 = v17;
  presetCopy2 = preset;
  v18 = MEMORY[0x223DA1C10](&v32);
  v18[2](v18, 1);
  v18[2](v18, 2);
  v18[2](v18, 3);
  v18[2](v18, 4);
  v18[2](v18, 5);
  v18[2](v18, 6);
  v18[2](v18, 7);
  v18[2](v18, 8);
  v18[2](v18, 9);
  v18[2](v18, 10);
  v18[2](v18, 11);
  v18[2](v18, 12);
  v18[2](v18, 13);
  v18[2](v18, 14);
  tableNameStyle = self->_tableNameStyle;
  if (tableNameStyle)
  {
    v23 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v19, preset, v20, v21, v32, v33, v34, v35, selfCopy);
    objc_msgSend_setObject_forKey_(v17, v24, tableNameStyle, v23, v25);
  }

  tableNameShapeStyle = self->_tableNameShapeStyle;
  if (tableNameShapeStyle)
  {
    v27 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v19, preset, v20, v21);
    objc_msgSend_setObject_forKey_(v17, v28, tableNameShapeStyle, v27, v29);
  }

  v16[2](v16, 15);
  v16[2](v16, 16);
  v16[2](v16, 17);
  v30 = v17;

  return v17;
}

- (TSTTableStyleNetwork)initWithContext:(id)context fromDictionary:(id)dictionary withPreset:(unint64_t)preset
{
  contextCopy = context;
  dictionaryCopy = dictionary;
  v13 = objc_msgSend_initWithContext_(self, v10, contextCopy, v11, v12);
  v17 = v13;
  if (v13)
  {
    objc_msgSend_setPresetID_(v13, v14, preset, v15, v16);
    v21 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v18, preset, v19, v20);
    v25 = objc_msgSend_objectForKey_(dictionaryCopy, v22, v21, v23, v24);
    tableStyle = v17->_tableStyle;
    v17->_tableStyle = v25;

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_221225D04;
    v56[3] = &unk_278461B30;
    v27 = v17;
    v57 = v27;
    v28 = dictionaryCopy;
    v58 = v28;
    presetCopy = preset;
    v29 = MEMORY[0x223DA1C10](v56);
    v29[2](v29, 1);
    v29[2](v29, 2);
    v29[2](v29, 3);
    v29[2](v29, 4);
    v29[2](v29, 5);
    v29[2](v29, 6);
    v29[2](v29, 7);
    v29[2](v29, 8);
    v29[2](v29, 9);
    v29[2](v29, 10);
    v29[2](v29, 11);
    v29[2](v29, 12);
    v29[2](v29, 13);
    v29[2](v29, 14);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_221225DA8;
    v52[3] = &unk_278461B30;
    v30 = v27;
    v53 = v30;
    v31 = v28;
    v54 = v31;
    presetCopy2 = preset;
    v32 = MEMORY[0x223DA1C10](v52);
    v32[2](v32, 1);
    v32[2](v32, 2);
    v32[2](v32, 3);
    v32[2](v32, 4);
    v32[2](v32, 5);
    v32[2](v32, 6);
    v32[2](v32, 7);
    v32[2](v32, 8);
    v32[2](v32, 9);
    v32[2](v32, 10);
    v32[2](v32, 11);
    v32[2](v32, 12);
    v32[2](v32, 13);
    v32[2](v32, 14);
    v36 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v33, preset, v34, v35);
    v40 = objc_msgSend_objectForKey_(v31, v37, v36, v38, v39);
    tableNameStyle = v30->_tableNameStyle;
    v30->_tableNameStyle = v40;

    v45 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v42, preset, v43, v44);
    v49 = objc_msgSend_objectForKey_(v31, v46, v45, v47, v48);
    tableNameShapeStyle = v30->_tableNameShapeStyle;
    v30->_tableNameShapeStyle = v49;

    v29[2](v29, 15);
    v29[2](v29, 16);
    v29[2](v29, 17);
  }

  return v17;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[60], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 12);
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = sub_221226FEC;
  v184[3] = &unk_27845DF28;
  v184[4] = self;
  v8 = unarchiverCopy;
  v10 = objc_opt_class();
  v11 = MEMORY[0x277D80A18];
  if (v7)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v9, v7, v10, 0, v184);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v9, MEMORY[0x277D80A18], v10, 0, v184);
  }

  sub_221222660(&self->_cellStyles.__begin_, 0x12uLL);
  v12 = *(archive + 8);
  v183[0] = MEMORY[0x277D85DD0];
  v183[1] = 3221225472;
  v183[2] = sub_2212270F0;
  v183[3] = &unk_27845DF50;
  v183[4] = self;
  v13 = v8;
  v15 = objc_opt_class();
  if (v12)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v14, v12, v15, 0, v183);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v14, v11, v15, 0, v183);
  }

  v16 = *(archive + 9);
  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = sub_221227108;
  v182[3] = &unk_27845DF50;
  v182[4] = self;
  v17 = v13;
  v19 = objc_opt_class();
  if (v16)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v16, v19, 0, v182);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v11, v19, 0, v182);
  }

  v20 = *(archive + 10);
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = sub_221227120;
  v181[3] = &unk_27845DF50;
  v181[4] = self;
  v21 = v17;
  v23 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v20, v23, 0, v181);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v11, v23, 0, v181);
  }

  v24 = *(archive + 11);
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = sub_221227138;
  v180[3] = &unk_27845DF50;
  v180[4] = self;
  v25 = v21;
  v27 = objc_opt_class();
  if (v24)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v26, v24, v27, 0, v180);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v26, v11, v27, 0, v180);
  }

  v28 = *(archive + 4);
  if ((v28 & 0x10000) != 0)
  {
    v29 = *(archive + 20);
    v179[0] = MEMORY[0x277D85DD0];
    v179[1] = 3221225472;
    v179[2] = sub_221227150;
    v179[3] = &unk_27845DF50;
    v179[4] = self;
    v30 = v25;
    v31 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v30, v32, v29, v31, 0, v179);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x20000) != 0)
  {
    v33 = *(archive + 21);
    v178[0] = MEMORY[0x277D85DD0];
    v178[1] = 3221225472;
    v178[2] = sub_221227168;
    v178[3] = &unk_27845DF50;
    v178[4] = self;
    v34 = v25;
    v35 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v34, v36, v33, v35, 0, v178);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x40000) != 0)
  {
    v37 = *(archive + 22);
    v177[0] = MEMORY[0x277D85DD0];
    v177[1] = 3221225472;
    v177[2] = sub_221227180;
    v177[3] = &unk_27845DF50;
    v177[4] = self;
    v38 = v25;
    v39 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v40, v37, v39, 0, v177);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x80000) != 0)
  {
    v41 = *(archive + 23);
    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = sub_221227198;
    v176[3] = &unk_27845DF50;
    v176[4] = self;
    v42 = v25;
    v43 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v41, v43, 0, v176);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x100000) != 0)
  {
    v45 = *(archive + 24);
    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = sub_2212271B0;
    v175[3] = &unk_27845DF50;
    v175[4] = self;
    v46 = v25;
    v47 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v46, v48, v45, v47, 0, v175);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x4000000) != 0)
  {
    v49 = *(archive + 30);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = sub_2212271C8;
    v174[3] = &unk_27845DF50;
    v174[4] = self;
    v50 = v25;
    v51 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v50, v52, v49, v51, 0, v174);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x8000000) != 0)
  {
    v53 = *(archive + 31);
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = sub_2212271E0;
    v173[3] = &unk_27845DF50;
    v173[4] = self;
    v54 = v25;
    v55 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v54, v56, v53, v55, 0, v173);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x10000000) != 0)
  {
    v57 = *(archive + 32);
    v172[0] = MEMORY[0x277D85DD0];
    v172[1] = 3221225472;
    v172[2] = sub_2212271F8;
    v172[3] = &unk_27845DF50;
    v172[4] = self;
    v58 = v25;
    v59 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v58, v60, v57, v59, 0, v172);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x20000000) != 0)
  {
    v61 = *(archive + 33);
    v171[0] = MEMORY[0x277D85DD0];
    v171[1] = 3221225472;
    v171[2] = sub_221227210;
    v171[3] = &unk_27845DF50;
    v171[4] = self;
    v62 = v25;
    v63 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v62, v64, v61, v63, 0, v171);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x40000000) != 0)
  {
    v65 = *(archive + 34);
    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = sub_221227228;
    v170[3] = &unk_27845DF50;
    v170[4] = self;
    v66 = v25;
    v67 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v66, v68, v65, v67, 0, v170);
  }

  sub_2212226E8(&self->_textStyles.__begin_, 0x12uLL);
  v69 = *(archive + 4);
  v169[0] = MEMORY[0x277D85DD0];
  v169[1] = 3221225472;
  v169[2] = sub_221227240;
  v169[3] = &unk_27845DF78;
  v169[4] = self;
  v70 = v25;
  v72 = objc_opt_class();
  if (v69)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v71, v69, v72, 0, v169);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v71, v11, v72, 0, v169);
  }

  v73 = *(archive + 5);
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = sub_221227258;
  v168[3] = &unk_27845DF78;
  v168[4] = self;
  v74 = v70;
  v76 = objc_opt_class();
  if (v73)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v74, v75, v73, v76, 0, v168);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v74, v75, v11, v76, 0, v168);
  }

  v77 = *(archive + 6);
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = sub_221227270;
  v167[3] = &unk_27845DF78;
  v167[4] = self;
  v78 = v74;
  v80 = objc_opt_class();
  if (v77)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v78, v79, v77, v80, 0, v167);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v78, v79, v11, v80, 0, v167);
  }

  v81 = *(archive + 7);
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = sub_221227288;
  v166[3] = &unk_27845DF78;
  v166[4] = self;
  v82 = v78;
  v84 = objc_opt_class();
  if (v81)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v82, v83, v81, v84, 0, v166);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v82, v83, v11, v84, 0, v166);
  }

  v88 = *(archive + 4);
  if ((v88 & 0x800) != 0)
  {
    v89 = *(archive + 15);
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 3221225472;
    v165[2] = sub_2212272A0;
    v165[3] = &unk_27845DF78;
    v165[4] = self;
    v90 = v82;
    v91 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v90, v92, v89, v91, 0, v165);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x1000) != 0)
  {
    v93 = *(archive + 16);
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = sub_2212272B8;
    v164[3] = &unk_27845DF78;
    v164[4] = self;
    v94 = v82;
    v95 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v94, v96, v93, v95, 0, v164);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x2000) != 0)
  {
    v97 = *(archive + 17);
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_2212272D0;
    v163[3] = &unk_27845DF78;
    v163[4] = self;
    v98 = v82;
    v99 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v98, v100, v97, v99, 0, v163);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x4000) != 0)
  {
    v101 = *(archive + 18);
    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_2212272E8;
    v162[3] = &unk_27845DF78;
    v162[4] = self;
    v102 = v82;
    v103 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v102, v104, v101, v103, 0, v162);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x8000) != 0)
  {
    v105 = *(archive + 19);
    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_221227300;
    v161[3] = &unk_27845DF78;
    v161[4] = self;
    v106 = v82;
    v107 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v106, v108, v105, v107, 0, v161);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x200000) != 0)
  {
    v109 = *(archive + 25);
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = sub_221227318;
    v160[3] = &unk_27845DF78;
    v160[4] = self;
    v110 = v82;
    v111 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v110, v112, v109, v111, 0, v160);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x400000) != 0)
  {
    v113 = *(archive + 26);
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = sub_221227330;
    v159[3] = &unk_27845DF78;
    v159[4] = self;
    v114 = v82;
    v115 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v114, v116, v113, v115, 0, v159);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x800000) != 0)
  {
    v117 = *(archive + 27);
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = sub_221227348;
    v158[3] = &unk_27845DF78;
    v158[4] = self;
    v118 = v82;
    v119 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v118, v120, v117, v119, 0, v158);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x1000000) != 0)
  {
    v121 = *(archive + 28);
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = sub_221227360;
    v157[3] = &unk_27845DF78;
    v157[4] = self;
    v122 = v82;
    v123 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v122, v124, v121, v123, 0, v157);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x2000000) != 0)
  {
    v125 = *(archive + 29);
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_221227378;
    v156[3] = &unk_27845DF78;
    v156[4] = self;
    v126 = v82;
    v127 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v126, v128, v125, v127, 0, v156);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x200) != 0)
  {
    v129 = *(archive + 13);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_221227390;
    v155[3] = &unk_27845DF78;
    v155[4] = self;
    v130 = v82;
    v131 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v130, v132, v129, v131, 0, v155);

    v88 = *(archive + 4);
  }

  if ((v88 & 0x400) != 0)
  {
    v133 = *(archive + 14);
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_221227494;
    v154[3] = &unk_27845DFA0;
    v154[4] = self;
    v134 = v82;
    v135 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v134, v136, v133, v135, 0, v154);
  }

  self->_presetIndex = *(archive + 76);
  if ((*(archive + 4) & 0x80000000) != 0)
  {
    v137 = *(archive + 35);
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = sub_221227598;
    v153[3] = &unk_27845DF50;
    v153[4] = self;
    v138 = v82;
    v139 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v138, v140, v137, v139, 0, v153);
  }

  v141 = *(archive + 5);
  if (v141)
  {
    v142 = *(archive + 36);
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = sub_2212275B0;
    v152[3] = &unk_27845DF50;
    v152[4] = self;
    v143 = v82;
    v144 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v143, v145, v142, v144, 0, v152);

    v141 = *(archive + 5);
  }

  if ((v141 & 2) != 0)
  {
    v146 = *(archive + 37);
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = sub_2212275C8;
    v151[3] = &unk_27845DF50;
    v151[4] = self;
    v147 = v82;
    v148 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v147, v149, v146, v148, 0, v151);
  }

  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = sub_2212275E0;
  v150[3] = &unk_27845E3F8;
  v150[4] = self;
  objc_msgSend_addFinalizeHandler_(v82, v85, v150, v86, v87);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, *MEMORY[0x277D80990], v6, v7);
  v24 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(v24, v8, sub_22122B848, off_2812E4498[60], v9);

  objc_msgSend_p_saveToArchive_archiver_isPre30Alternate_(self, v11, v10, v24, 0);
  if (objc_msgSend_shouldSaveAlternates(v24, v12, v13, v14, v15))
  {
    v19 = objc_msgSend_alternateForVersion_(v24, v16, *MEMORY[0x277D80968], v17, v18);
    google::protobuf::internal::AssignDescriptors();
    v22 = objc_msgSend_messageWithNewFunction_descriptor_(v19, v20, sub_22122B848, off_2812E4498[60], v21);

    objc_msgSend_p_saveToArchive_archiver_isPre30Alternate_(self, v23, v22, v19, 1);
  }
}

- (void)p_saveToArchive:(void *)archive archiver:(id)archiver isPre30Alternate:(BOOL)alternate
{
  archiverCopy = archiver;
  tableStyle = self->_tableStyle;
  *(archive + 4) |= 0x100u;
  v12 = *(archive + 12);
  v224 = archiverCopy;
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0390](v13);
    *(archive + 12) = v12;
    archiverCopy = v224;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v9, tableStyle, v12, v10);
  v16 = *(self->_cellStyles.__begin_ + 2);
  *(archive + 4) |= 0x20u;
  v17 = *(archive + 9);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0390](v18);
    *(archive + 9) = v17;
  }

  objc_msgSend_setStrongReference_message_(v224, v14, v16, v17, v15);
  v21 = *(self->_cellStyles.__begin_ + 3);
  *(archive + 4) |= 0x40u;
  v22 = *(archive + 10);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0390](v23);
    *(archive + 10) = v22;
  }

  objc_msgSend_setStrongReference_message_(v224, v19, v21, v22, v20);
  v26 = *(self->_cellStyles.__begin_ + 4);
  *(archive + 4) |= 0x80u;
  v27 = *(archive + 11);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x223DA0390](v28);
    *(archive + 11) = v27;
  }

  objc_msgSend_setStrongReference_message_(v224, v24, v26, v27, v25);
  v31 = *(self->_cellStyles.__begin_ + 1);
  *(archive + 4) |= 0x10u;
  v32 = *(archive + 8);
  if (!v32)
  {
    v33 = *(archive + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x223DA0390](v33);
    *(archive + 8) = v32;
  }

  objc_msgSend_setStrongReference_message_(v224, v29, v31, v32, v30);
  v36 = *(self->_textStyles.__begin_ + 2);
  *(archive + 4) |= 2u;
  v37 = *(archive + 5);
  if (!v37)
  {
    v38 = *(archive + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0390](v38);
    *(archive + 5) = v37;
  }

  objc_msgSend_setStrongReference_message_(v224, v34, v36, v37, v35);
  v41 = *(self->_textStyles.__begin_ + 3);
  *(archive + 4) |= 4u;
  v42 = *(archive + 6);
  if (!v42)
  {
    v43 = *(archive + 1);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x223DA0390](v43);
    *(archive + 6) = v42;
  }

  objc_msgSend_setStrongReference_message_(v224, v39, v41, v42, v40);
  v46 = *(self->_textStyles.__begin_ + 4);
  *(archive + 4) |= 8u;
  v47 = *(archive + 7);
  if (!v47)
  {
    v48 = *(archive + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x223DA0390](v48);
    *(archive + 7) = v47;
  }

  objc_msgSend_setStrongReference_message_(v224, v44, v46, v47, v45);
  v51 = *(self->_textStyles.__begin_ + 1);
  *(archive + 4) |= 1u;
  v52 = *(archive + 4);
  if (!v52)
  {
    v53 = *(archive + 1);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x223DA0390](v53);
    *(archive + 4) = v52;
  }

  objc_msgSend_setStrongReference_message_(v224, v49, v51, v52, v50);
  tableNameStyle = self->_tableNameStyle;
  *(archive + 4) |= 0x200u;
  v57 = *(archive + 13);
  if (!v57)
  {
    v58 = *(archive + 1);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = MEMORY[0x223DA0390](v58);
    *(archive + 13) = v57;
  }

  objc_msgSend_setStrongReference_message_(v224, v54, tableNameStyle, v57, v55);
  tableNameShapeStyle = self->_tableNameShapeStyle;
  if (tableNameShapeStyle)
  {
    *(archive + 4) |= 0x400u;
    v62 = *(archive + 14);
    if (!v62)
    {
      v63 = *(archive + 1);
      if (v63)
      {
        v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
      }

      v62 = MEMORY[0x223DA0390](v63);
      *(archive + 14) = v62;
    }

    objc_msgSend_setStrongReference_message_(v224, v59, tableNameShapeStyle, v62, v60);
  }

  presetIndex = self->_presetIndex;
  *(archive + 5) |= 4u;
  *(archive + 76) = presetIndex;
  if (!alternate)
  {
    v65 = *(self->_cellStyles.__begin_ + 5);
    *(archive + 4) |= 0x10000u;
    v66 = *(archive + 20);
    if (!v66)
    {
      v67 = *(archive + 1);
      if (v67)
      {
        v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
      }

      v66 = MEMORY[0x223DA0390](v67);
      *(archive + 20) = v66;
    }

    objc_msgSend_setStrongReference_message_(v224, v59, v65, v66, v60);
    v70 = *(self->_cellStyles.__begin_ + 6);
    *(archive + 4) |= 0x20000u;
    v71 = *(archive + 21);
    if (!v71)
    {
      v72 = *(archive + 1);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = MEMORY[0x223DA0390](v72);
      *(archive + 21) = v71;
    }

    objc_msgSend_setStrongReference_message_(v224, v68, v70, v71, v69);
    v75 = *(self->_cellStyles.__begin_ + 7);
    *(archive + 4) |= 0x40000u;
    v76 = *(archive + 22);
    if (!v76)
    {
      v77 = *(archive + 1);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x223DA0390](v77);
      *(archive + 22) = v76;
    }

    objc_msgSend_setStrongReference_message_(v224, v73, v75, v76, v74);
    v80 = *(self->_cellStyles.__begin_ + 8);
    *(archive + 4) |= 0x80000u;
    v81 = *(archive + 23);
    if (!v81)
    {
      v82 = *(archive + 1);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x223DA0390](v82);
      *(archive + 23) = v81;
    }

    objc_msgSend_setStrongReference_message_(v224, v78, v80, v81, v79);
    v85 = *(self->_cellStyles.__begin_ + 9);
    *(archive + 4) |= 0x100000u;
    v86 = *(archive + 24);
    if (!v86)
    {
      v87 = *(archive + 1);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = MEMORY[0x223DA0390](v87);
      *(archive + 24) = v86;
    }

    objc_msgSend_setStrongReference_message_(v224, v83, v85, v86, v84);
    v90 = *(self->_cellStyles.__begin_ + 10);
    *(archive + 4) |= 0x4000000u;
    v91 = *(archive + 30);
    if (!v91)
    {
      v92 = *(archive + 1);
      if (v92)
      {
        v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
      }

      v91 = MEMORY[0x223DA0390](v92);
      *(archive + 30) = v91;
    }

    objc_msgSend_setStrongReference_message_(v224, v88, v90, v91, v89);
    v95 = *(self->_cellStyles.__begin_ + 11);
    *(archive + 4) |= 0x8000000u;
    v96 = *(archive + 31);
    if (!v96)
    {
      v97 = *(archive + 1);
      if (v97)
      {
        v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
      }

      v96 = MEMORY[0x223DA0390](v97);
      *(archive + 31) = v96;
    }

    objc_msgSend_setStrongReference_message_(v224, v93, v95, v96, v94);
    v100 = *(self->_cellStyles.__begin_ + 12);
    *(archive + 4) |= 0x10000000u;
    v101 = *(archive + 32);
    if (!v101)
    {
      v102 = *(archive + 1);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x223DA0390](v102);
      *(archive + 32) = v101;
    }

    objc_msgSend_setStrongReference_message_(v224, v98, v100, v101, v99);
    v105 = *(self->_cellStyles.__begin_ + 13);
    *(archive + 4) |= 0x20000000u;
    v106 = *(archive + 33);
    if (!v106)
    {
      v107 = *(archive + 1);
      if (v107)
      {
        v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
      }

      v106 = MEMORY[0x223DA0390](v107);
      *(archive + 33) = v106;
    }

    objc_msgSend_setStrongReference_message_(v224, v103, v105, v106, v104);
    v110 = *(self->_cellStyles.__begin_ + 14);
    *(archive + 4) |= 0x40000000u;
    v111 = *(archive + 34);
    if (!v111)
    {
      v112 = *(archive + 1);
      if (v112)
      {
        v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
      }

      v111 = MEMORY[0x223DA0390](v112);
      *(archive + 34) = v111;
    }

    objc_msgSend_setStrongReference_message_(v224, v108, v110, v111, v109);
    v115 = *(self->_textStyles.__begin_ + 5);
    *(archive + 4) |= 0x800u;
    v116 = *(archive + 15);
    if (!v116)
    {
      v117 = *(archive + 1);
      if (v117)
      {
        v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
      }

      v116 = MEMORY[0x223DA0390](v117);
      *(archive + 15) = v116;
    }

    objc_msgSend_setStrongReference_message_(v224, v113, v115, v116, v114);
    v120 = *(self->_textStyles.__begin_ + 6);
    *(archive + 4) |= 0x1000u;
    v121 = *(archive + 16);
    if (!v121)
    {
      v122 = *(archive + 1);
      if (v122)
      {
        v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
      }

      v121 = MEMORY[0x223DA0390](v122);
      *(archive + 16) = v121;
    }

    objc_msgSend_setStrongReference_message_(v224, v118, v120, v121, v119);
    v125 = *(self->_textStyles.__begin_ + 7);
    *(archive + 4) |= 0x2000u;
    v126 = *(archive + 17);
    if (!v126)
    {
      v127 = *(archive + 1);
      if (v127)
      {
        v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
      }

      v126 = MEMORY[0x223DA0390](v127);
      *(archive + 17) = v126;
    }

    objc_msgSend_setStrongReference_message_(v224, v123, v125, v126, v124);
    v130 = *(self->_textStyles.__begin_ + 8);
    *(archive + 4) |= 0x4000u;
    v131 = *(archive + 18);
    if (!v131)
    {
      v132 = *(archive + 1);
      if (v132)
      {
        v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
      }

      v131 = MEMORY[0x223DA0390](v132);
      *(archive + 18) = v131;
    }

    objc_msgSend_setStrongReference_message_(v224, v128, v130, v131, v129);
    v135 = *(self->_textStyles.__begin_ + 9);
    *(archive + 4) |= 0x8000u;
    v136 = *(archive + 19);
    if (!v136)
    {
      v137 = *(archive + 1);
      if (v137)
      {
        v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
      }

      v136 = MEMORY[0x223DA0390](v137);
      *(archive + 19) = v136;
    }

    objc_msgSend_setStrongReference_message_(v224, v133, v135, v136, v134);
    v140 = *(self->_textStyles.__begin_ + 10);
    *(archive + 4) |= 0x200000u;
    v141 = *(archive + 25);
    if (!v141)
    {
      v142 = *(archive + 1);
      if (v142)
      {
        v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
      }

      v141 = MEMORY[0x223DA0390](v142);
      *(archive + 25) = v141;
    }

    objc_msgSend_setStrongReference_message_(v224, v138, v140, v141, v139);
    v145 = *(self->_textStyles.__begin_ + 11);
    *(archive + 4) |= 0x400000u;
    v146 = *(archive + 26);
    if (!v146)
    {
      v147 = *(archive + 1);
      if (v147)
      {
        v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
      }

      v146 = MEMORY[0x223DA0390](v147);
      *(archive + 26) = v146;
    }

    objc_msgSend_setStrongReference_message_(v224, v143, v145, v146, v144);
    v150 = *(self->_textStyles.__begin_ + 12);
    *(archive + 4) |= 0x800000u;
    v151 = *(archive + 27);
    if (!v151)
    {
      v152 = *(archive + 1);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = MEMORY[0x223DA0390](v152);
      *(archive + 27) = v151;
    }

    objc_msgSend_setStrongReference_message_(v224, v148, v150, v151, v149);
    v155 = *(self->_textStyles.__begin_ + 13);
    *(archive + 4) |= 0x1000000u;
    v156 = *(archive + 28);
    if (!v156)
    {
      v157 = *(archive + 1);
      if (v157)
      {
        v157 = *(v157 & 0xFFFFFFFFFFFFFFFELL);
      }

      v156 = MEMORY[0x223DA0390](v157);
      *(archive + 28) = v156;
    }

    objc_msgSend_setStrongReference_message_(v224, v153, v155, v156, v154);
    v160 = *(self->_textStyles.__begin_ + 14);
    *(archive + 4) |= 0x2000000u;
    v161 = *(archive + 29);
    if (!v161)
    {
      v162 = *(archive + 1);
      if (v162)
      {
        v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
      }

      v161 = MEMORY[0x223DA0390](v162);
      *(archive + 29) = v161;
    }

    objc_msgSend_setStrongReference_message_(v224, v158, v160, v161, v159);
    v165 = *(self->_cellStyles.__begin_ + 15);
    *(archive + 4) |= 0x80000000;
    v166 = *(archive + 35);
    if (!v166)
    {
      v167 = *(archive + 1);
      if (v167)
      {
        v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
      }

      v166 = MEMORY[0x223DA0390](v167);
      *(archive + 35) = v166;
    }

    objc_msgSend_setStrongReference_message_(v224, v163, v165, v166, v164);
    v170 = *(self->_cellStyles.__begin_ + 16);
    *(archive + 5) |= 1u;
    v171 = *(archive + 36);
    if (!v171)
    {
      v172 = *(archive + 1);
      if (v172)
      {
        v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
      }

      v171 = MEMORY[0x223DA0390](v172);
      *(archive + 36) = v171;
    }

    objc_msgSend_setStrongReference_message_(v224, v168, v170, v171, v169);
    v175 = *(self->_cellStyles.__begin_ + 17);
    *(archive + 5) |= 2u;
    v176 = *(archive + 37);
    if (!v176)
    {
      v177 = *(archive + 1);
      if (v177)
      {
        v177 = *(v177 & 0xFFFFFFFFFFFFFFFELL);
      }

      v176 = MEMORY[0x223DA0390](v177);
      *(archive + 37) = v176;
    }

    objc_msgSend_setStrongReference_message_(v224, v173, v175, v176, v174);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v178, 18, archive, v179);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v180, 19, archive, v181);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v182, 20, archive, v183);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v184, 21, archive, v185);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v186, 22, archive, v187);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v188, 13, archive, v189);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v190, 14, archive, v191);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v192, 15, archive, v193);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v194, 16, archive, v195);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v196, 17, archive, v197);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v198, 28, archive, v199);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v200, 29, archive, v201);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v202, 30, archive, v203);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v204, 31, archive, v205);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v206, 32, archive, v207);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v208, 23, archive, v209);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v210, 24, archive, v211);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v212, 25, archive, v213);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v214, 26, archive, v215);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v216, 27, archive, v217);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v218, 33, archive, v219);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v220, 34, archive, v221);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v224, v222, 35, archive, v223);
  }
}

- (void)upgradeIfNecessary
{
  v138 = objc_msgSend_bodyCellStyle(self, a2, v2, v3, v4);
  objc_msgSend_upgradeIfNecessary(v138, v6, v7, v8, v9);

  v139 = objc_msgSend_headerRowCellStyle(self, v10, v11, v12, v13);
  objc_msgSend_upgradeIfNecessary(v139, v14, v15, v16, v17);

  v140 = objc_msgSend_headerColumnCellStyle(self, v18, v19, v20, v21);
  objc_msgSend_upgradeIfNecessary(v140, v22, v23, v24, v25);

  v141 = objc_msgSend_footerRowCellStyle(self, v26, v27, v28, v29);
  objc_msgSend_upgradeIfNecessary(v141, v30, v31, v32, v33);

  v142 = objc_msgSend_categoryLevel1CellStyle(self, v34, v35, v36, v37);
  objc_msgSend_upgradeIfNecessary(v142, v38, v39, v40, v41);

  v143 = objc_msgSend_categoryLevel2CellStyle(self, v42, v43, v44, v45);
  objc_msgSend_upgradeIfNecessary(v143, v46, v47, v48, v49);

  v144 = objc_msgSend_categoryLevel3CellStyle(self, v50, v51, v52, v53);
  objc_msgSend_upgradeIfNecessary(v144, v54, v55, v56, v57);

  v145 = objc_msgSend_categoryLevel4CellStyle(self, v58, v59, v60, v61);
  objc_msgSend_upgradeIfNecessary(v145, v62, v63, v64, v65);

  v146 = objc_msgSend_categoryLevel5CellStyle(self, v66, v67, v68, v69);
  objc_msgSend_upgradeIfNecessary(v146, v70, v71, v72, v73);

  v147 = objc_msgSend_labelLevel1CellStyle(self, v74, v75, v76, v77);
  objc_msgSend_upgradeIfNecessary(v147, v78, v79, v80, v81);

  v148 = objc_msgSend_labelLevel2CellStyle(self, v82, v83, v84, v85);
  objc_msgSend_upgradeIfNecessary(v148, v86, v87, v88, v89);

  v149 = objc_msgSend_labelLevel3CellStyle(self, v90, v91, v92, v93);
  objc_msgSend_upgradeIfNecessary(v149, v94, v95, v96, v97);

  v150 = objc_msgSend_labelLevel4CellStyle(self, v98, v99, v100, v101);
  objc_msgSend_upgradeIfNecessary(v150, v102, v103, v104, v105);

  v151 = objc_msgSend_labelLevel5CellStyle(self, v106, v107, v108, v109);
  objc_msgSend_upgradeIfNecessary(v151, v110, v111, v112, v113);

  v152 = objc_msgSend_pivotBodySummaryRowCellStyle(self, v114, v115, v116, v117);
  objc_msgSend_upgradeIfNecessary(v152, v118, v119, v120, v121);

  v153 = objc_msgSend_pivotBodySummaryColumnCellStyle(self, v122, v123, v124, v125);
  objc_msgSend_upgradeIfNecessary(v153, v126, v127, v128, v129);

  v154 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(self, v130, v131, v132, v133);
  objc_msgSend_upgradeIfNecessary(v154, v134, v135, v136, v137);
}

- (void)p_clearCategoryStyles
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
  begin = self->_cellStyles.__begin_;
  v7 = begin[5];
  begin[5] = 0;

  v8 = self->_cellStyles.__begin_;
  v9 = v8[6];
  v8[6] = 0;

  v10 = self->_cellStyles.__begin_;
  v11 = v10[7];
  v10[7] = 0;

  v12 = self->_cellStyles.__begin_;
  v13 = v12[8];
  v12[8] = 0;

  v14 = self->_cellStyles.__begin_;
  v15 = v14[9];
  v14[9] = 0;

  v16 = self->_textStyles.__begin_;
  v17 = v16[5];
  v16[5] = 0;

  v18 = self->_textStyles.__begin_;
  v19 = v18[6];
  v18[6] = 0;

  v20 = self->_textStyles.__begin_;
  v21 = v20[7];
  v20[7] = 0;

  v22 = self->_textStyles.__begin_;
  v23 = v22[8];
  v22[8] = 0;

  v24 = self->_textStyles.__begin_;
  v25 = v24[9];
  v24[9] = 0;

  v26 = self->_cellStyles.__begin_;
  v27 = v26[10];
  v26[10] = 0;

  v28 = self->_cellStyles.__begin_;
  v29 = v28[11];
  v28[11] = 0;

  v30 = self->_cellStyles.__begin_;
  v31 = v30[12];
  v30[12] = 0;

  v32 = self->_cellStyles.__begin_;
  v33 = v32[13];
  v32[13] = 0;

  v34 = self->_cellStyles.__begin_;
  v35 = v34[14];
  v34[14] = 0;

  v36 = self->_textStyles.__begin_;
  v37 = v36[10];
  v36[10] = 0;

  v38 = self->_textStyles.__begin_;
  v39 = v38[11];
  v38[11] = 0;

  v40 = self->_textStyles.__begin_;
  v41 = v40[12];
  v40[12] = 0;

  v42 = self->_textStyles.__begin_;
  v43 = v42[13];
  v42[13] = 0;

  v44 = self->_textStyles.__begin_;
  v45 = v44[14];
  v44[14] = 0;
}

- (void)clearAndGenerateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  objc_msgSend_p_clearCategoryStyles(self, a2, stylesheet, v3, v4);

  objc_msgSend_generateCategoryStylesConnectedToStylesheet_(self, v7, stylesheetCopy, v8, v9);
}

- (void)generateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  begin = self->_cellStyles.__begin_;
  if (!begin[5] || !begin[6] || !begin[7] || !begin[8] || !begin[9] || !begin[10] || !begin[11] || !begin[12] || !begin[13] || !begin[14] || (v8 = self->_textStyles.__begin_, !v8[5]) || !v8[6] || !v8[7] || !v8[8] || !v8[9] || !v8[10] || !v8[11] || !v8[12] || !v8[13] || !v8[14])
  {
    objc_msgSend_willModifyForUpgrade(self, a2, stylesheet, v3, v4);
    if (stylesheetCopy)
    {
      v40 = objc_msgSend_documentRoot(self, v9, v10, v11, v12);
      v17 = objc_msgSend_stylesheet(v40, v13, v14, v15, v16);

      v41 = v17;
    }

    else
    {
      v41 = 0;
    }

    for (i = 5; i != 15; ++i)
    {
      v19 = objc_msgSend_deriveCategoryCellStyleForTableStyleArea_connectedToStylesheet_(self, v9, i, stylesheetCopy, v12);
      objc_msgSend_setCellStyle_forTableStyleArea_(self, v20, v19, i, v21);
      v24 = objc_msgSend_deriveCategoryTextStyleForTableStyleArea_connectedToStylesheet_(self, v22, i, stylesheetCopy, v23);
      objc_msgSend_setTextStyle_forTableStyleArea_(self, v25, v24, i, v26);
      if (v41)
      {
        v31 = objc_msgSend_stylesheet(v19, v27, v28, v29, v30);

        if (!v31)
        {
          objc_msgSend_addStyle_(v41, v32, v19, v34, v35);
        }

        v36 = objc_msgSend_stylesheet(v24, v32, v33, v34, v35);

        if (!v36)
        {
          objc_msgSend_addStyle_(v41, v37, v24, v38, v39);
        }
      }
    }
  }
}

- (void)generateCategoryStrokesInTableStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v6 = objc_msgSend_valueForProperty_(styleCopy, v3, 783, v4, v5);
  v7 = TSUCheckedDynamicCast();

  objc_opt_class();
  v11 = objc_msgSend_valueForProperty_(styleCopy, v8, 784, v9, v10);
  v12 = TSUCheckedDynamicCast();

  v16 = objc_msgSend_deriveCategoryTopStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v13, v7, v14, v15);
  v20 = objc_msgSend_deriveCategoryBottomStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v17, v7, v18, v19);
  v24 = objc_msgSend_deriveCategoryInteriorStrokeFromFooterRowVerticalStroke_(TSTTableStyleNetwork, v21, v12, v22, v23);
  objc_msgSend_setValue_forProperty_(styleCopy, v25, v16, 808, v26);
  objc_msgSend_setValue_forProperty_(styleCopy, v27, v16, 809, v28);
  objc_msgSend_setValue_forProperty_(styleCopy, v29, v16, 810, v30);
  objc_msgSend_setValue_forProperty_(styleCopy, v31, v16, 811, v32);
  objc_msgSend_setValue_forProperty_(styleCopy, v33, v16, 812, v34);
  v39 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v35, v36, v37, v38);
  objc_msgSend_setValue_forProperty_(styleCopy, v40, v39, 818, v41);

  v46 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v42, v43, v44, v45);
  objc_msgSend_setValue_forProperty_(styleCopy, v47, v46, 819, v48);

  v53 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v49, v50, v51, v52);
  objc_msgSend_setValue_forProperty_(styleCopy, v54, v53, 820, v55);

  v60 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v56, v57, v58, v59);
  objc_msgSend_setValue_forProperty_(styleCopy, v61, v60, 821, v62);

  v67 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v63, v64, v65, v66);
  objc_msgSend_setValue_forProperty_(styleCopy, v68, v67, 822, v69);

  objc_msgSend_setValue_forProperty_(styleCopy, v70, v20, 813, v71);
  objc_msgSend_setValue_forProperty_(styleCopy, v72, v20, 814, v73);
  objc_msgSend_setValue_forProperty_(styleCopy, v74, v20, 815, v75);
  objc_msgSend_setValue_forProperty_(styleCopy, v76, v20, 816, v77);
  objc_msgSend_setValue_forProperty_(styleCopy, v78, v20, 817, v79);
  objc_msgSend_setValue_forProperty_(styleCopy, v80, v24, 823, v81);
  objc_msgSend_setValue_forProperty_(styleCopy, v82, v24, 824, v83);
  objc_msgSend_setValue_forProperty_(styleCopy, v84, v24, 825, v85);
  objc_msgSend_setValue_forProperty_(styleCopy, v86, v24, 826, v87);
  objc_msgSend_setValue_forProperty_(styleCopy, v88, v24, 827, v89);
}

- (void)generatePivotStrokesInTableStyle:(id)style
{
  styleCopy = style;
  v57 = objc_msgSend_deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v3, styleCopy, 0, v4);
  v7 = objc_msgSend_deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v5, styleCopy, 0, v6);
  v10 = objc_msgSend_deriveHeaderColumnPivotSeparatorStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v8, styleCopy, 0, v9);
  v13 = objc_msgSend_deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v11, styleCopy, 0, v12);
  v16 = objc_msgSend_deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v14, styleCopy, 0, v15);
  v19 = objc_msgSend_deriveHeaderRowPivotTitleStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v17, styleCopy, 0, v18);
  v22 = objc_msgSend_deriveFooterRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v20, styleCopy, 0, v21);
  v25 = objc_msgSend_deriveBodyPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v23, styleCopy, 0, v24);
  v28 = objc_msgSend_deriveBodyPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v26, styleCopy, 0, v27);
  v31 = objc_msgSend_deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v29, styleCopy, 0, v30);
  v34 = objc_msgSend_deriveBodyPivotEmphasisVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v32, styleCopy, 0, v33);
  objc_msgSend_setValue_forProperty_(styleCopy, v35, v25, 828, v36);
  objc_msgSend_setValue_forProperty_(styleCopy, v37, v28, 829, v38);
  objc_msgSend_setValue_forProperty_(styleCopy, v39, v31, 830, v40);
  objc_msgSend_setValue_forProperty_(styleCopy, v41, v34, 831, v42);
  objc_msgSend_setValue_forProperty_(styleCopy, v43, v57, 832, v44);
  objc_msgSend_setValue_forProperty_(styleCopy, v45, v7, 833, v46);
  objc_msgSend_setValue_forProperty_(styleCopy, v47, v10, 834, v48);
  objc_msgSend_setValue_forProperty_(styleCopy, v49, v13, 835, v50);
  objc_msgSend_setValue_forProperty_(styleCopy, v51, v16, 836, v52);
  objc_msgSend_setValue_forProperty_(styleCopy, v53, v19, 837, v54);
  objc_msgSend_setValue_forProperty_(styleCopy, v55, v22, 838, v56);
}

- (void)maintainPivotStrokesInTableStyle:(id)style fromTable:(id)table
{
  styleCopy = style;
  tableCopy = table;
  v10 = objc_msgSend_tableStyle(tableCopy, v6, v7, v8, v9);
  v14 = objc_msgSend_valueForProperty_(v10, v11, 780, v12, v13);

  objc_msgSend_setValue_forProperty_(styleCopy, v15, v14, 780, v16);
  v21 = objc_msgSend_tableStyle(tableCopy, v17, v18, v19, v20);
  v25 = objc_msgSend_valueForProperty_(v21, v22, 776, v23, v24);

  objc_msgSend_setValue_forProperty_(styleCopy, v26, v25, 776, v27);
}

- (id)deriveCategoryCellStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  v8 = objc_msgSend_headerColumnCellStyle(self, a2, area, stylesheet, v4);
  v10 = objc_msgSend_p_deriveCategoryCellStyleForTableStyleArea_fromCellStyle_connectedToStylesheet_(self, v9, area, v8, stylesheetCopy);

  return v10;
}

- (id)sheetFill
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stylesheet(v5, v6, v7, v8, v9);

  v14 = objc_msgSend_styleWithIdentifier_(v10, v11, @"sheet-0-sheetStyle", v12, v13);
  v18 = objc_msgSend_valueForProperty_(v14, v15, 516, v16, v17);

  return v18;
}

- (id)p_deriveCategoryCellStyleForTableStyleArea:(unint64_t)area fromCellStyle:(id)style connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  v13 = objc_msgSend_documentRoot(self, v9, v10, v11, v12);
  v134 = objc_msgSend_stylesheet(v13, v14, v15, v16, v17);

  v133 = objc_msgSend_objectForProperty_(styleCopy, v18, 898, v19, v20);
  if (v133 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v31 = objc_msgSend_referenceColor(v133, v21, v22, v23, v24);
    objc_msgSend_hueComponent(v31, v32, v33, v34, v35);
  }

  else
  {
    v25 = objc_msgSend_sheetFill(self, v21, v22, v23, v24);
    v30 = v25;
    if (v25)
    {
      objc_msgSend_referenceColor(v25, v26, v27, v28, v29);
    }

    else
    {
      objc_msgSend_whiteColor(MEMORY[0x277D81180], v26, v27, v28, v29);
    }
    v31 = ;

    objc_msgSend_hueComponent(v31, v41, v42, v43, v44);
  }

  v45 = v40;
  objc_msgSend_saturationComponent(v31, v36, v37, v38, v39);
  v47 = v46;
  objc_msgSend_brightnessComponent(v31, v48, v49, v50, v51);
  v53 = v52;
  objc_msgSend_alphaComponent(v31, v54, v55, v56, v57);
  v63 = v62;
  if (area > 9)
  {
    if (area > 11)
    {
      if (area != 12)
      {
        if (area != 13)
        {
          if (area != 14)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        goto LABEL_25;
      }

LABEL_24:
      v64 = v53 + 0.12;
      v65 = 0.88;
      goto LABEL_26;
    }

    if (area != 10)
    {
LABEL_22:
      v64 = v53 + 0.08;
      v65 = 0.92;
      goto LABEL_26;
    }

LABEL_23:
    v64 = v53 + 0.04;
    v65 = 0.96;
    goto LABEL_26;
  }

  if (area <= 6)
  {
    if (area != 5)
    {
      if (area != 6)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (area == 7)
  {
    goto LABEL_24;
  }

  if (area != 8)
  {
LABEL_17:
    v64 = v53 + 0.2;
    v65 = 0.8;
    goto LABEL_26;
  }

LABEL_25:
  v64 = v53 + 0.16;
  v65 = 0.84;
LABEL_26:
  v66 = v53 * v65;
  if (v53 > 0.5)
  {
    v53 = v66;
  }

  else
  {
    v53 = v64;
  }

LABEL_29:
  v67 = MEMORY[0x277D801F8];
  v68 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D81180], v58, v59, v60, v61, v45, v47, v53, v63);
  v72 = objc_msgSend_colorWithColor_(v67, v69, v68, v70, v71);

  v77 = objc_msgSend_fullPropertyMap(styleCopy, v73, v74, v75, v76);
  objc_msgSend_setObject_forProperty_(v77, v78, v72, 898, v79);
  objc_msgSend_setBoolValue_forProperty_(v77, v80, 0, 896, v81);
  if (!stylesheetCopy)
  {
LABEL_38:
    v118 = [TSTCellStyle alloc];
    v123 = objc_msgSend_context(styleCopy, v119, v120, v121, v122);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v118, v124, v123, 0, v77, 0);
    goto LABEL_43;
  }

  v90 = objc_msgSend_stylesheet(styleCopy, v82, v83, v84, v85);
  if (v90 != v134)
  {
    v68 = objc_msgSend_stylesheet(styleCopy, v86, v87, v88, v89);
    if ((objc_msgSend_isAncestorOf_(v68, v91, v134, v92, v93) & 1) == 0)
    {

      goto LABEL_38;
    }
  }

  v98 = objc_msgSend_parent(styleCopy, v86, v87, v88, v89);
  if (!v98)
  {
    if (v90 == v134)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_40:

    goto LABEL_41;
  }

  v131 = v68;
  v132 = objc_msgSend_parent(styleCopy, v94, v95, v96, v97);
  v103 = objc_msgSend_stylesheet(v132, v99, v100, v101, v102);
  v108 = v103;
  if (v103 == v134)
  {

    if (v90 == v134)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v109 = objc_msgSend_parent(styleCopy, v104, v105, v106, v107);
  v114 = objc_msgSend_stylesheet(v109, v110, v111, v112, v113);
  isAncestorOf = objc_msgSend_isAncestorOf_(v114, v115, v134, v116, v117);

  if (v90 != v134)
  {
  }

  if ((isAncestorOf & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  objc_opt_class();
  v123 = objc_msgSend_variationOfStyle_propertyMap_(v134, v126, styleCopy, v77, v127);
  isVariation = TSUCheckedDynamicCast();
LABEL_43:
  v128 = isVariation;

  return v128;
}

- (id)deriveCategoryTextStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  v8 = objc_msgSend_headerColumnTextStyle(self, a2, area, stylesheet, v4);
  v10 = objc_msgSend_p_deriveCategoryTextStyleForTableStyleArea_fromTextStyle_connectedToStylesheet_(self, v9, area, v8, stylesheetCopy);

  return v10;
}

- (id)p_deriveCategoryTextStyleForTableStyleArea:(unint64_t)area fromTextStyle:(id)style connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  v13 = styleCopy;
  if (area - 10 > 4)
  {
    v39 = styleCopy;
    goto LABEL_19;
  }

  v14 = objc_msgSend_fullPropertyMap(styleCopy, v9, v10, v11, v12);
  objc_msgSend_setIntValue_forProperty_(v14, v15, 0, 19, v16);
  v21 = objc_msgSend_documentRoot(self, v17, v18, v19, v20);
  v26 = objc_msgSend_stylesheet(v21, v22, v23, v24, v25);

  if (!stylesheetCopy)
  {
    goto LABEL_12;
  }

  v35 = objc_msgSend_stylesheet(v13, v27, v28, v29, v30);
  if (v35 == v26 || (objc_msgSend_stylesheet(v13, v31, v32, v33, v34), v77 = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isAncestorOf_(v77, v36, v26, v37, v38) & 1) != 0))
  {
    v44 = objc_msgSend_parent(v13, v31, v32, v33, v34);
    if (v44)
    {
      v45 = objc_msgSend_parent(v13, v40, v41, v42, v43);
      v50 = objc_msgSend_stylesheet(v45, v46, v47, v48, v49);
      v55 = v50;
      if (v50 != v26)
      {
        v56 = objc_msgSend_parent(v13, v51, v52, v53, v54);
        v61 = objc_msgSend_stylesheet(v56, v57, v58, v59, v60);
        isAncestorOf = objc_msgSend_isAncestorOf_(v61, v62, v26, v63, v64);

        if (v35 != v26)
        {
        }

        if ((isAncestorOf & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_17:
        objc_opt_class();
        v71 = objc_msgSend_variationOfStyle_propertyMap_(v26, v74, v13, v14, v75);
        isVariation = TSUCheckedDynamicCast();
        goto LABEL_18;
      }
    }

    if (v35 != v26)
    {
    }

    goto LABEL_17;
  }

LABEL_12:
  v66 = objc_alloc(MEMORY[0x277D80EC8]);
  v71 = objc_msgSend_context(v13, v67, v68, v69, v70);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v66, v72, v71, 0, v14, 0);
LABEL_18:
  v39 = isVariation;

LABEL_19:

  return v39;
}

+ (id)deriveCategoryTopStrokeFromFooterRowSeparatorStroke:(id)stroke
{
  v5 = objc_msgSend_mutableCopy(stroke, a2, stroke, v3, v4);
  objc_msgSend_setWidth_(v5, v6, v7, v8, v9, 2.0);
  v14 = objc_msgSend_copy(v5, v10, v11, v12, v13);

  return v14;
}

+ (id)deriveCategoryBottomStrokeFromFooterRowSeparatorStroke:(id)stroke
{
  v5 = objc_msgSend_mutableCopy(stroke, a2, stroke, v3, v4);
  objc_msgSend_setWidth_(v5, v6, v7, v8, v9, 0.75);
  v14 = objc_msgSend_copy(v5, v10, v11, v12, v13);

  return v14;
}

+ (unint64_t)pivotTableStyleAreaForRowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel numberOfRowLevels:(unint64_t)levels numberOfColumnLevels:(unint64_t)columnLevels columnIndex:(TSUViewColumnIndex)index
{
  levelCopy = level;
  v8 = 3;
  if (level >= levels)
  {
    v8 = 0;
    levelCopy = 0;
  }

  if (!level)
  {
    v8 = 6;
    levelCopy = 0;
  }

  if (level == 255)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (level == 255)
  {
    v10 = 0;
  }

  else
  {
    v10 = levelCopy;
  }

  v11 = 3;
  if (columnLevel < columnLevels)
  {
    var0 = columnLevel;
  }

  else
  {
    v11 = 0;
    var0 = 0;
  }

  if (columnLevel == 255)
  {
    v11 = 1;
    var0 = index.var0;
  }

  if (columnLevel)
  {
    v13 = v11;
  }

  else
  {
    v13 = 6;
  }

  if (columnLevel)
  {
    v14 = var0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_221229CA8(v13, v14, level, columnLevel, levels);
  v19 = sub_221229CA8(v9, v10, v16, v17, v18);

  return MEMORY[0x2821F9670](TSTTableStyleNetwork, sel_styleAreaForColumnType_rowType_forAPivotTable_, v15, v19, 1);
}

+ (unint64_t)styleAreaForColumnType:(unsigned __int8)type rowType:(unsigned __int8)rowType forAPivotTable:(BOOL)table
{
  v5 = rowType >> 4;
  if (rowType >> 4 == 1)
  {
    return 2;
  }

  if ((rowType & 0xB0) == 0x20)
  {
    return 4;
  }

  v7 = rowType & 0xF;
  if (v5 == 3 && !table)
  {
    return v7 + 4;
  }

  if (v5 == 4 && !table)
  {
    return v7 + 9;
  }

  v8 = type >> 4;
  if ((type & 0xB0) == 0x10 || v8 == 6)
  {
    result = 3;
    if (v5 == 3 && table)
    {
      v12 = v7 - 1 <= (type & 0xF) || v8 == 6;
      if (v12)
      {
        return 17;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v9 = v5 == 3 || !table;
    v10 = 15;
    if (!table)
    {
      v10 = 1;
    }

    v12 = v8 == 3;
    v11 = 16;
    if (!v12)
    {
      v11 = 1;
    }

    if (v9)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

- (void)p_clearPivotStyles
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
  begin = self->_cellStyles.__begin_;
  v7 = begin[15];
  begin[15] = 0;

  v8 = self->_cellStyles.__begin_;
  v9 = v8[16];
  v8[16] = 0;

  v10 = self->_cellStyles.__begin_;
  v11 = v10[17];
  v10[17] = 0;
}

- (void)clearAndGeneratePivotStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  objc_msgSend_p_clearPivotStyles(self, a2, stylesheet, v3, v4);

  objc_msgSend_generatePivotStylesConnectedToStylesheet_(self, v7, stylesheetCopy, v8, v9);
}

- (void)generatePivotStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  begin = self->_cellStyles.__begin_;
  if (!begin[15] || !begin[16] || !begin[17])
  {
    objc_msgSend_willModifyForUpgrade(self, a2, stylesheet, v3, v4);
    v11 = self->_cellStyles.__begin_;
    if (!v11[15])
    {
      v12 = v11[1];
      v13 = objc_msgSend_valueForProperty_(self->_tableStyle, v8, 770, v9, v10);
      v15 = objc_msgSend_p_derivePivotCellStyleFromCellStyle_optionalSourceFill_brightnessShift_connectedToStylesheet_styleArea_(self, v14, v12, v13, stylesheetCopy, 15, 0.07);
      v16 = self->_cellStyles.__begin_;
      v17 = v16[15];
      v16[15] = v15;

      v11 = self->_cellStyles.__begin_;
    }

    if (!v11[16])
    {
      v18 = v11[1];
      v19 = objc_msgSend_valueForProperty_(self->_tableStyle, v8, 770, v9, v10);
      v21 = objc_msgSend_p_derivePivotCellStyleFromCellStyle_optionalSourceFill_brightnessShift_connectedToStylesheet_styleArea_(self, v20, v18, v19, stylesheetCopy, 16, 0.0);
      v22 = self->_cellStyles.__begin_;
      v23 = v22[16];
      v22[16] = v21;

      v11 = self->_cellStyles.__begin_;
    }

    if (!v11[17])
    {
      v24 = objc_msgSend_p_derivePivotCellStyleFromCellStyle_optionalSourceFill_brightnessShift_connectedToStylesheet_styleArea_(self, v8, v11[5], 0, stylesheetCopy, 17, 0.0);
      v25 = self->_cellStyles.__begin_;
      v26 = v25[17];
      v25[17] = v24;
    }
  }
}

- (id)p_derivePivotCellStyleFromCellStyle:(id)style optionalSourceFill:(id)fill brightnessShift:(double)shift connectedToStylesheet:(BOOL)stylesheet styleArea:(unint64_t)area
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  fillCopy = fill;
  if (shift < 0.0)
  {
    shift = 0.0;
  }

  selfCopy = self;
  v17 = objc_msgSend_documentRoot(self, v12, v13, v14, v15);
  v147 = objc_msgSend_stylesheet(v17, v18, v19, v20, v21);

  v25 = 0x277D81000;
  if ((fillCopy || (objc_msgSend_valueForProperty_(styleCopy, v22, 898, v23, v24), (fillCopy = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30 = objc_msgSend_referenceColor(fillCopy, v26, v27, v28, v29);
  }

  else
  {
    v30 = objc_msgSend_lightGrayColor(MEMORY[0x277D81180], v26, v27, v28, v29);
  }

  v35 = v30;
  v36 = fmin(shift, 1.0);
  if (v36 <= 0.0)
  {
    v146 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v31, v30, v33, v34);
  }

  else
  {
    objc_msgSend_hueComponent(v30, v31, v32, v33, v34);
    v38 = v37;
    objc_msgSend_saturationComponent(v35, v39, v40, v41, v42);
    v44 = v43;
    objc_msgSend_brightnessComponent(v35, v45, v46, v47, v48);
    v50 = v49;
    objc_msgSend_alphaComponent(v35, v51, v52, v53, v54);
    v60 = v59;
    v61 = -v36;
    if (v50 <= 0.5)
    {
      v61 = v36;
    }

    v62 = MEMORY[0x277D801F8];
    v25 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D81180], v55, v56, v57, v58, v38, v44, v50 * (v61 + 1.0), v60);
    v146 = objc_msgSend_colorWithColor_(v62, v63, v25, v64, v65);
  }

  v70 = objc_msgSend_fullPropertyMap(styleCopy, v66, v67, v68, v69);
  objc_msgSend_setObject_forProperty_(v70, v71, v146, 898, v72);
  objc_msgSend_setBoolValue_forProperty_(v70, v73, 1, 896, v74);
  if (!stylesheetCopy)
  {
    goto LABEL_22;
  }

  v83 = objc_msgSend_stylesheet(styleCopy, v75, v76, v77, v78);
  if (v83 == v147 || (objc_msgSend_stylesheet(styleCopy, v79, v80, v81, v82), v25 = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isAncestorOf_(v25, v84, v147, v85, v86) & 1) != 0))
  {
    v91 = objc_msgSend_parent(styleCopy, v79, v80, v81, v82);
    if (v91)
    {
      v142 = v25;
      v143 = objc_msgSend_parent(styleCopy, v87, v88, v89, v90);
      v96 = objc_msgSend_stylesheet(v143, v92, v93, v94, v95);
      v101 = v96;
      if (v96 != v147)
      {
        v102 = objc_msgSend_parent(styleCopy, v97, v98, v99, v100);
        v107 = objc_msgSend_stylesheet(v102, v103, v104, v105, v106);
        isAncestorOf = objc_msgSend_isAncestorOf_(v107, v108, v147, v109, v110);

        if (v83 != v147)
        {
        }

        if ((isAncestorOf & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_26:
        v123 = objc_msgSend_presetID(selfCopy, v111, v112, v113, v114);
        v120 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v124, v123, area, v125);
        objc_opt_class();
        v129 = objc_msgSend_cascadedStyleWithIdentifier_(v147, v126, v120, v127, v128);
        v130 = TSUDynamicCast();

        if (v130)
        {
          isVariation = v130;
        }

        else
        {
          v131 = [TSTCellStyle alloc];
          v136 = objc_msgSend_context(styleCopy, v132, v133, v134, v135);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v131, v137, v136, 0, v70, 0);

          objc_msgSend_addStyle_withIdentifier_(v147, v138, isVariation, v120, v139);
        }

        goto LABEL_30;
      }

      v25 = v142;
      if (v83 == v147)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (v83 == v147)
    {
      goto LABEL_25;
    }

    goto LABEL_25;
  }

LABEL_22:
  v115 = [TSTCellStyle alloc];
  v120 = objc_msgSend_context(styleCopy, v116, v117, v118, v119);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v115, v121, v120, 0, v70, 0);
LABEL_30:

  return isVariation;
}

+ (id)deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v10 = objc_msgSend_valueForProperty_(styleCopy, v7, 776, v8, v9);
  v11 = TSUCheckedDynamicCast();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v14, 776, v15, v16);
    v13 = TSUCheckedDynamicCast();
  }

  v22 = objc_msgSend_strokeApplyingEmphasis(v13, v18, v19, v20, v21);

  return v22;
}

+ (id)deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v5 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], a2, style, map, v4, 0.0);

  return v5;
}

+ (id)p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map returnHeaderRowPivotGroupVerticalStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v12 = objc_msgSend_valueForProperty_(styleCopy, v9, 775, v10, v11);
  v13 = TSUCheckedDynamicCast();
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    objc_opt_class();
    v19 = objc_msgSend_objectForProperty_(mapCopy, v16, 775, v17, v18);
    v15 = TSUCheckedDynamicCast();
  }

  objc_opt_class();
  v23 = objc_msgSend_valueForProperty_(styleCopy, v20, 780, v21, v22);
  v24 = TSUCheckedDynamicCast();
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    objc_opt_class();
    v30 = objc_msgSend_objectForProperty_(mapCopy, v27, 780, v28, v29);
    v26 = TSUCheckedDynamicCast();
  }

  v35 = objc_msgSend_strokeApplyingEmphasis(v15, v31, v32, v33, v34);
  v40 = objc_msgSend_strokeApplyingEmphasis(v26, v36, v37, v38, v39);
  objc_msgSend_width(v35, v41, v42, v43, v44);
  v46 = v45;
  objc_msgSend_width(v40, v47, v48, v49, v50);
  if (v46 < v55)
  {
    v55 = v46;
  }

  if (strokeCopy)
  {
    objc_msgSend_strokeApplyingWidth_(v26, v51, v52, v53, v54, v55);
  }

  else
  {
    objc_msgSend_strokeApplyingWidth_(v15, v51, v52, v53, v54, v55);
  }
  v56 = ;

  return v56;
}

+ (id)deriveHeaderColumnPivotSeparatorStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_returnHeaderRowPivotGroupVerticalStroke_(self, a2, style, map, 0);

  return v4;
}

+ (id)deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_returnHeaderRowPivotGroupVerticalStroke_(self, a2, style, map, 1);

  return v4;
}

+ (id)deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v5 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], a2, style, map, v4, 0.0);

  return v5;
}

+ (id)deriveHeaderRowPivotTitleStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v10 = objc_msgSend_valueForProperty_(styleCopy, v7, 781, v8, v9);
  v11 = TSUCheckedDynamicCast();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v14, 781, v15, v16);
    v13 = TSUCheckedDynamicCast();
  }

  v22 = objc_msgSend_strokeApplyingEmphasis(v13, v18, v19, v20, v21);
  v27 = objc_msgSend_strokeApplyingEmphasis(v22, v23, v24, v25, v26);

  return v27;
}

+ (id)deriveFooterRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v10 = objc_msgSend_valueForProperty_(styleCopy, v7, 784, v8, v9);
  v11 = TSUCheckedDynamicCast();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v14, 784, v15, v16);
    v13 = TSUCheckedDynamicCast();
  }

  v22 = objc_msgSend_strokeApplyingEmphasis(v13, v18, v19, v20, v21);

  return v22;
}

+ (id)deriveBodyPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v10 = objc_msgSend_valueForProperty_(styleCopy, v7, 773, v8, v9);
  v11 = TSUCheckedDynamicCast();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v14, 773, v15, v16);
    v13 = TSUCheckedDynamicCast();
  }

  v22 = objc_msgSend_strokeApplyingEmphasis(v13, v18, v19, v20, v21);

  return v22;
}

+ (id)deriveBodyPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v10 = objc_msgSend_valueForProperty_(styleCopy, v7, 774, v8, v9);
  v11 = TSUCheckedDynamicCast();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v14, 774, v15, v16);
    v13 = TSUCheckedDynamicCast();
  }

  v22 = objc_msgSend_strokeApplyingEmphasis(v13, v18, v19, v20, v21);

  return v22;
}

+ (id)deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v5 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], a2, style, map, v4, 0.0);

  return v5;
}

+ (id)deriveBodyPivotEmphasisVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v10 = objc_msgSend_valueForProperty_(styleCopy, v7, 774, v8, v9);
  v11 = TSUCheckedDynamicCast();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v14, 774, v15, v16);
    v13 = TSUCheckedDynamicCast();
  }

  v22 = objc_msgSend_strokeApplyingEmphasis(v13, v18, v19, v20, v21);

  return v22;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end