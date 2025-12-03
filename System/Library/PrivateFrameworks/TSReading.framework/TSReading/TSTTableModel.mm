@interface TSTTableModel
+ ($AA9F29356CAB8C7531B71D0D1ACCC7CE)cellRangeForTableArea:(unsigned int)area givenTableSize:(id)size numberOfHeaderRows:(unsigned __int16)rows numberOfFooterRows:(unsigned __int16)footerRows numberOfHeaderColumns:(unsigned __int16)columns;
+ (id)unnamedTableString;
+ (unsigned)tableAreaForCellID:(id)d inTableWithHeaderColumns:(unsigned __int16)columns headerRows:(unsigned __int16)rows footerRows:(unsigned __int16)footerRows totalRows:(unsigned __int16)totalRows;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)bodyColumnRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)bodyRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)bodyRowRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)cellRangeForTableArea:(unsigned int)area;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)footerRowRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)headerColumnRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)headerRowRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)minPopulatedCellRange;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)range;
- (NSArray)columnWidths;
- (NSArray)rowHeights;
- (TSDFill)bodyFill;
- (TSDFill)footerRowsFill;
- (TSDFill)headerColumnsFill;
- (TSDFill)headerRowsFill;
- (TSDStroke)bodyColumnStroke;
- (TSDStroke)bodyRowStroke;
- (TSDStroke)borderStrokeEvenIfNotVisible;
- (TSDStroke)footerRowBodyColumnStroke;
- (TSDStroke)footerRowBodyRowStroke;
- (TSDStroke)footerRowBorderStroke;
- (TSDStroke)footerRowSeparatorStroke;
- (TSDStroke)headerColumnBodyColumnStroke;
- (TSDStroke)headerColumnBodyRowStroke;
- (TSDStroke)headerColumnBorderStroke;
- (TSDStroke)headerColumnSeparatorStroke;
- (TSDStroke)headerRowBodyColumnStroke;
- (TSDStroke)headerRowBodyRowStroke;
- (TSDStroke)headerRowBorderStroke;
- (TSDStroke)headerRowSeparatorStroke;
- (TSDStroke)parentBorderStroke;
- (TSDStroke)tableNameBorderStroke;
- (TSKDocumentRoot)documentRoot;
- (TSTTableModel)init;
- (TSTTableModel)initWithContext:(id)context fromSourceModel:(id)model region:(id)region tableInfo:(id)info;
- (TSTTableModel)initWithContext:(id)context rows:(unsigned __int16)rows columns:(unsigned __int16)columns styles:(id)styles tableInfo:(id)info;
- (id)allRichTextPayloadStorages;
- (id)bandedFillObject;
- (id)cellRegionWithConditionalStyleMatchingCell:(id)cell;
- (id)defaultCellForTableArea:(unsigned int)area;
- (id)defaultCellStyleForTableArea:(unsigned int)area;
- (id)defaultTextStyleForTableArea:(unsigned int)area;
- (unsigned)numberOfVisibleBodyColumns;
- (unsigned)numberOfVisibleBodyRows;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)defaultStrokesForCellID:(id)d inTableWithHeaderColumns:(unsigned __int16)columns headerRows:(unsigned __int16)rows footerRows:(unsigned __int16)footerRows totalColumns:(unsigned __int16)totalColumns totalRows:(unsigned __int16)totalRows tableArea:(unsigned int)area outTopStroke:(id *)self0 outLeftStroke:(id *)self1 outBottomStroke:(id *)self2 outRightStroke:(id *)self3;
- (void)defaultStrokesForCellID:(id)d outTopStroke:(id *)stroke outLeftStroke:(id *)leftStroke outBottomStroke:(id *)bottomStroke outRightStroke:(id *)rightStroke;
- (void)mapTableStylesToStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)p_releaseExistingDefaultStyles;
- (void)p_scaleStrokeFromProperty:(int)property style:(id)style pmap:(id)pmap scale:(double)scale;
- (void)p_scaleStrokesOnCell:(id)cell atCellID:(id)d transformedObjects:(id)objects scale:(double)scale;
- (void)resetStyles:(id)styles;
- (void)setBodyCellStyle:(id)style;
- (void)setBodyTextStyle:(id)style;
- (void)setColumnWidths:(id)widths;
- (void)setDrawableIsBeingCopied:(BOOL)copied;
- (void)setFooterRowCellStyle:(id)style;
- (void)setFooterRowTextStyle:(id)style;
- (void)setHeaderColumnCellStyle:(id)style;
- (void)setHeaderColumnTextStyle:(id)style;
- (void)setHeaderRowCellStyle:(id)style;
- (void)setHeaderRowTextStyle:(id)style;
- (void)setRowHeights:(id)heights;
- (void)setTableID:(__CFUUID *)d;
- (void)setTableName:(id)name;
- (void)setTableNameShapeStyle:(id)style;
- (void)setTableNameStyle:(id)style;
- (void)setTableStyle:(id)style;
- (void)setupDefaultCells;
- (void)transformStrokes:(CGAffineTransform *)strokes transformedObjects:(id)objects inBounds:(CGRect)bounds;
- (void)upgradeFromPreUFF;
- (void)validateStyles;
@end

@implementation TSTTableModel

+ (id)unnamedTableString
{
  if (+[TSTTableModel unnamedTableString]::onceToken != -1)
  {
    +[TSTTableModel unnamedTableString];
  }

  return +[TSTTableModel unnamedTableString]::sUnnamedTableString;
}

uint64_t __35__TSTTableModel_unnamedTableString__block_invoke()
{
  v0 = [TSTBundle() localizedStringForKey:@"Table %@" value:&stru_287D36338 table:@"TSTables"];
  v1 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_287DDDF80 numberStyle:1];
  result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v0, v1];
  +[TSTTableModel unnamedTableString]::sUnnamedTableString = result;
  return result;
}

- (TSTTableModel)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableModel init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 200, @"don't call -[TSTTableModel init] please"}];
  return 0;
}

- (void)p_releaseExistingDefaultStyles
{
  p_mStyles = &self->mStyles;

  p_mStyles->tableStyle = 0;
  p_mStyles->bodyCellStyle = 0;

  p_mStyles->headerRowCellStyle = 0;
  p_mStyles->headerColumnCellStyle = 0;

  p_mStyles->footerRowCellStyle = 0;
  p_mStyles->bodyTextStyle = 0;

  p_mStyles->headerRowTextStyle = 0;
  p_mStyles->headerColumnTextStyle = 0;

  p_mStyles->footerRowTextStyle = 0;
  p_mStyles->tableNameStyle = 0;

  p_mStyles->tableNameShapeStyle = 0;
}

- (void)resetStyles:(id)styles
{
  [(TSPObject *)self willModify];
  [(TSTTableModel *)self p_releaseExistingDefaultStyles];
  if (styles)
  {
    self->mStyles.tableStyle = [styles tableStyle];
    self->mStyles.bodyCellStyle = [styles bodyCellStyle];
    self->mStyles.headerRowCellStyle = [styles headerRowCellStyle];
    self->mStyles.headerColumnCellStyle = [styles headerColumnCellStyle];
    self->mStyles.footerRowCellStyle = [styles footerRowCellStyle];
    self->mStyles.bodyTextStyle = [styles bodyTextStyle];
    self->mStyles.headerRowTextStyle = [styles headerRowTextStyle];
    self->mStyles.headerColumnTextStyle = [styles headerColumnTextStyle];
    self->mStyles.footerRowTextStyle = [styles footerRowTextStyle];
    self->mStyles.tableNameStyle = [styles tableNameStyle];
    self->mStyles.tableNameShapeStyle = [styles tableNameShapeStyle];
    self->mPresetIndex = [styles presetIndex];
  }

  else
  {
    NSLog(@"no styles to init, this should be a crash but is not yet");
  }
}

- (void)setupDefaultCells
{
  [(TSPObject *)self willModify];
  p_mDefaultCells = &self->mDefaultCells;
  defaultBodyCell = self->mDefaultCells.defaultBodyCell;
  if (defaultBodyCell)
  {
  }

  defaultHeaderRowCell = self->mDefaultCells.defaultHeaderRowCell;
  if (defaultHeaderRowCell)
  {
  }

  defaultHeaderColumnCell = self->mDefaultCells.defaultHeaderColumnCell;
  if (defaultHeaderColumnCell)
  {
  }

  defaultFooterRowCell = self->mDefaultCells.defaultFooterRowCell;
  if (defaultFooterRowCell)
  {
  }

  *p_mDefaultCells = objc_alloc_init(TSTCell);
  self->mDefaultCells.defaultHeaderRowCell = objc_alloc_init(TSTCell);
  self->mDefaultCells.defaultHeaderColumnCell = objc_alloc_init(TSTCell);
  self->mDefaultCells.defaultFooterRowCell = objc_alloc_init(TSTCell);
  v8 = *p_mDefaultCells;
  TSTCellClearValue(*p_mDefaultCells);
  *(v8 + 8) &= 0xFFFF00FF;
  v9 = *p_mDefaultCells;
  bodyCellStyle = [(TSTTableModel *)self bodyCellStyle];
  v11 = *(v9 + 40);
  if (v11 != bodyCellStyle)
  {
    v12 = bodyCellStyle;

    *(v9 + 40) = v12;
    *(v9 + 32) = 0;
  }

  v13 = *p_mDefaultCells;
  bodyTextStyle = [(TSTTableModel *)self bodyTextStyle];
  v15 = *(v13 + 56);
  if (v15 != bodyTextStyle)
  {
    v16 = bodyTextStyle;

    *(v13 + 56) = v16;
    *(v13 + 48) = 0;
  }

  v17 = self->mDefaultCells.defaultHeaderRowCell;
  TSTCellClearValue(v17);
  *&v17->mPrivate &= 0xFFFF00FF;
  v18 = self->mDefaultCells.defaultHeaderRowCell;
  headerRowCellStyle = [(TSTTableModel *)self headerRowCellStyle];
  mCellStyle = v18->mPrivate.mCellStyle;
  if (mCellStyle != headerRowCellStyle)
  {
    v21 = headerRowCellStyle;

    v18->mPrivate.mCellStyle = v21;
    v18->mPrivate.mCellStyleID = 0;
  }

  v22 = self->mDefaultCells.defaultHeaderRowCell;
  headerRowTextStyle = [(TSTTableModel *)self headerRowTextStyle];
  mTextStyle = v22->mPrivate.mTextStyle;
  if (mTextStyle != headerRowTextStyle)
  {
    v25 = headerRowTextStyle;

    v22->mPrivate.mTextStyle = v25;
    v22->mPrivate.mTextStyleID = 0;
  }

  v26 = self->mDefaultCells.defaultHeaderColumnCell;
  TSTCellClearValue(v26);
  *&v26->mPrivate &= 0xFFFF00FF;
  v27 = self->mDefaultCells.defaultHeaderColumnCell;
  headerColumnCellStyle = [(TSTTableModel *)self headerColumnCellStyle];
  v29 = v27->mPrivate.mCellStyle;
  if (v29 != headerColumnCellStyle)
  {
    v30 = headerColumnCellStyle;

    v27->mPrivate.mCellStyle = v30;
    v27->mPrivate.mCellStyleID = 0;
  }

  v31 = self->mDefaultCells.defaultHeaderColumnCell;
  headerColumnTextStyle = [(TSTTableModel *)self headerColumnTextStyle];
  v33 = v31->mPrivate.mTextStyle;
  if (v33 != headerColumnTextStyle)
  {
    v34 = headerColumnTextStyle;

    v31->mPrivate.mTextStyle = v34;
    v31->mPrivate.mTextStyleID = 0;
  }

  v35 = self->mDefaultCells.defaultFooterRowCell;
  TSTCellClearValue(v35);
  *&v35->mPrivate &= 0xFFFF00FF;
  v36 = self->mDefaultCells.defaultFooterRowCell;
  footerRowCellStyle = [(TSTTableModel *)self footerRowCellStyle];
  v38 = v36->mPrivate.mCellStyle;
  if (v38 != footerRowCellStyle)
  {
    v39 = footerRowCellStyle;

    v36->mPrivate.mCellStyle = v39;
    v36->mPrivate.mCellStyleID = 0;
  }

  v40 = self->mDefaultCells.defaultFooterRowCell;
  footerRowTextStyle = [(TSTTableModel *)self footerRowTextStyle];
  v42 = v40->mPrivate.mTextStyle;
  if (v42 != footerRowTextStyle)
  {
    v43 = footerRowTextStyle;

    v40->mPrivate.mTextStyle = v43;
    v40->mPrivate.mTextStyleID = 0;
  }
}

- (TSTTableModel)initWithContext:(id)context rows:(unsigned __int16)rows columns:(unsigned __int16)columns styles:(id)styles tableInfo:(id)info
{
  v13.receiver = self;
  v13.super_class = TSTTableModel;
  info = [(TSPObject *)&v13 initWithContext:context, rows, columns, styles, info];
  if (info)
  {
    v11 = +[TSTConfiguration sharedTableConfiguration];
    info->mNumberOfColumns = columns;
    info->mNumberOfRows = rows;
    info->mNumberOfHeaderColumns = 0;
    info->mNumberOfHeaderRows = 0;
    info->mNumberOfFooterRows = 0;
    info->mHeaderRowsFrozen = 0;
    info->mHeaderColumnsFrozen = 0;
    info->mDefaultRowHeight = 22.0;
    info->mDefaultColumnWidth = 98.0;
    info->mNumberOfHiddenRows = 0;
    info->mNumberOfHiddenColumns = 0;
    info->mNumberOfUserHiddenRows = 0;
    info->mNumberOfUserHiddenColumns = 0;
    info->mNumberOfFilteredRows = 0;
    info->mDataStore = [[TSTTableDataStore alloc] initWithOwner:info];
    info->mTableName = +[TSTTableModel unnamedTableString];
    info->mTableNameEnabled = [v11 tableNameEnabledInNewTables];
    info->mRepeatingHeaderRowsEnabled = 0;
    info->mRepeatingHeaderColumnsEnabled = 0;
    info->mTableID = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    info->mPresetIndex = [styles presetIndex];
    info->mCellsPendingWrite = objc_alloc_init(TSTCellDictionary);
    info->mWasUnarchivedFromAProvidedTable = 0;
    [(TSTTableModel *)info resetStyles:styles];
    [(TSTTableModel *)info setupDefaultCells];
  }

  return info;
}

- (TSTTableModel)initWithContext:(id)context fromSourceModel:(id)model region:(id)region tableInfo:(id)info
{
  boundingCellRange = [region boundingCellRange];
  v11 = HIWORD(boundingCellRange);
  v12 = [TSTTableStyleNetwork networkFromTableModel:model];
  if ([region isRectangle])
  {
    v13 = (([model range] ^ boundingCellRange) & 0xFFFFFFFF00FFFFFFLL) == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(TSTTableModel *)self initWithContext:context rows:v11 columns:WORD2(boundingCellRange) styles:v12 tableInfo:info];
  if (v14)
  {
    if (model)
    {
      tableID = [model tableID];
      v14->mFromTableID = tableID;
      CFRetain(tableID);
    }

    v14->mRepeatingHeaderRowsEnabled = [model repeatingHeaderRowsEnabled];
    v14->mRepeatingHeaderColumnsEnabled = [model repeatingHeaderColumnsEnabled];
    v14->mHeaderRowsFrozen = [model headerRowsFrozen];
    v14->mHeaderColumnsFrozen = [model headerColumnsFrozen];
    cf = CFDictionaryCreateMutable(0, 1, 0, 0);
    CFDictionarySetValue(cf, [model tableID], v14->mTableID);
    if ([model numberOfHeaderRows] <= boundingCellRange)
    {
      LOWORD(v16) = 0;
    }

    else
    {
      v16 = [model numberOfHeaderRows] - boundingCellRange;
    }

    p_mNumberOfHeaderRows = &v14->mNumberOfHeaderRows;
    v14->mNumberOfHeaderRows = v16;
    if (BYTE2(boundingCellRange) >= [model numberOfHeaderColumns])
    {
      LOWORD(v18) = 0;
    }

    else
    {
      v18 = [model numberOfHeaderColumns] - BYTE2(boundingCellRange);
    }

    p_mNumberOfHeaderColumns = &v14->mNumberOfHeaderColumns;
    v14->mNumberOfHeaderColumns = v18;
    numberOfRows = [model numberOfRows];
    if ((numberOfRows - [model numberOfFooterRows]) <= (boundingCellRange + HIWORD(boundingCellRange) - 1))
    {
      numberOfRows2 = [model numberOfRows];
      v20 = v11 + boundingCellRange - numberOfRows2 + [model numberOfFooterRows];
    }

    else
    {
      LOWORD(v20) = 0;
    }

    v14->mNumberOfFooterRows = v20;
    mNumberOfRows = v14->mNumberOfRows;
    if (mNumberOfRows == v20)
    {
      LOWORD(v20) = v20 - 1;
      v14->mNumberOfFooterRows = v20;
      mNumberOfRows = v14->mNumberOfRows;
    }

    v23 = *p_mNumberOfHeaderRows;
    if (v23 == mNumberOfRows)
    {
      LOWORD(v23) = mNumberOfRows - 1;
      *p_mNumberOfHeaderRows = mNumberOfRows - 1;
      LOWORD(v20) = v14->mNumberOfFooterRows;
      mNumberOfRows = v14->mNumberOfRows;
    }

    if (v20 + v23 == mNumberOfRows)
    {
      v14->mNumberOfFooterRows = v20 - 1;
    }

    v24 = *p_mNumberOfHeaderColumns;
    if (v24 == v14->mNumberOfColumns)
    {
      *p_mNumberOfHeaderColumns = v24 - 1;
    }

    v14->mTableNameEnabled = [model tableNameEnabled];
    if (v13)
    {
      -[TSTTableModel setTableName:](v14, "setTableName:", [model tableName]);
      -[TSTTableModel setTableNameBorderEnabled:](v14, "setTableNameBorderEnabled:", [model tableNameBorderEnabled]);
      [model tableNameHeight];
      [(TSTTableModel *)v14 setTableNameHeight:?];
      -[TSTTableModel setStyleApplyClearsAll:](v14, "setStyleApplyClearsAll:", [model styleApplyClearsAll]);
    }

    if (model)
    {
      v25 = *(model + 12);
      [(TSPObject *)v14 willModify];
      v14->mDefaultRowHeight = v25;
      v26 = *(model + 13);
    }

    else
    {
      [(TSPObject *)v14 willModify];
      v14->mDefaultRowHeight = 10.0;
      v26 = 0.0;
    }

    [(TSPObject *)v14 willModify];
    v14->mDefaultColumnWidth = v26;
    modelCopy = model;
    regionCopy = region;
    v27 = [TSTTableMergeRangesForCellRegion(model region)];
    if ([v27 hasNextMergeRegion])
    {
      v28 = boundingCellRange & 0xFF0000;
      do
      {
        nextMergeRegion = [v27 nextMergeRegion];
        v30 = (nextMergeRegion - v28) & 0xFF0000 | (nextMergeRegion - boundingCellRange);
        v31 = [(TSTTableModel *)v14 tableAreaForCellID:v30];
        if (v31 == 4)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
          if (v31 == 5)
          {
            v32 = 3;
          }
        }

        v33 = [(TSTTableModel *)v14 tableAreaForCellID:(nextMergeRegion - v28 + ((nextMergeRegion >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | (nextMergeRegion - boundingCellRange + HIWORD(nextMergeRegion) - 1)];
        if (v33 == 4)
        {
          v33 = 1;
        }

        else if (v33 == 5)
        {
          v33 = 3;
        }

        if (v32 == v33)
        {
          goto LABEL_46;
        }

        v34 = &v14->mNumberOfHeaderRows;
        if (v32 != 1)
        {
          if (v32 != 2)
          {
            goto LABEL_44;
          }

          v34 = &v14->mNumberOfHeaderColumns;
        }

        *v34 = 0;
LABEL_44:
        if (v33 == 3)
        {
          v14->mNumberOfFooterRows = 0;
        }

LABEL_46:
        TSTTableDataStoreMerge(&v14->mDataStore->super.super.isa, v30 | nextMergeRegion & 0xFFFFFFFF00000000);
      }

      while (([v27 hasNextMergeRegion] & 1) != 0);
    }

    v35 = [[TSTCellIterator alloc] initWithTableModel:modelCopy region:regionCopy flags:32];
    if (TSTCellIteratorGetNextCell(v35, v65))
    {
      do
      {
        v36 = v67;
        v37 = v66;
        v38 = v68;
        if (v68)
        {
          if (*(&v68->mPrivate + 1) << 8 != 768 || !v68->mPrivate.mValue.mString.mID || (v68->mPrivate.mValue.mString.mID = 0, (v38 = v68) != 0))
          {
            if (!v38->mPrivate.mRichTextPayloadID || (v38->mPrivate.mRichTextPayloadID = 0, v39 = [(TSTRichTextPayload *)v38->mPrivate.mRichTextPayload copyWithContext:context], TSTCellSetRichTextPayloadClearingIDConvertToPlaintext(v68, v39, 1, 1), v39, (v38 = v68) != 0))
            {
              if (!v38->mPrivate.mCommentStorageID || (v38->mPrivate.mCommentStorageID = 0, v40 = [(TSDCommentStorage *)v38->mPrivate.mCommentStorage copyWithContext:context], TSTCellSetCommentStorageClearingID(v68, v40, 1), v40, (v38 = v68) != 0))
              {
                if (!v38->mPrivate.mCellFormats.mCurrentCellFormatID)
                {
                  goto LABEL_76;
                }

                v38->mPrivate.mCellFormats.mCurrentCellFormatID = 0;
                v38->mPrivate.mCellFormats.mNumberFormatID = 0;
                v38->mPrivate.mCellFormats.mCurrencyFormatID = 0;
                v38->mPrivate.mCellFormats.mDurationFormatID = 0;
                v38->mPrivate.mCellFormats.mDateFormatID = 0;
                v38->mPrivate.mCellFormats.mControlFormatID = 0;
                v38->mPrivate.mCellFormats.mCustomFormatID = 0;
                v38->mPrivate.mCellFormats.mBaseFormatID = 0;
                v38->mPrivate.mCellFormats.mMultipleChoiceListFormatID = 0;
                v41 = *(&v38->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType + 1);
                mCustomFormatID = v38->mPrivate.mCellFormats.mCurrentCellFormat.var0.mCustomFormatStruct.mCustomFormatID;
                v43 = *&v38->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct.mData;
                mDisplayFormatType = v38->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mDisplayFormatType;
                v45 = *(&v38->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 28);
                v63 = *(&v38->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 31);
                v61 = *(&v38->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 29);
                if (v38->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 266)
                {
                  v69 = 266;
                  v70 = v41;
                  v71 = mCustomFormatID;
                  v72 = v43;
                  v73 = mDisplayFormatType;
                  v74 = v45;
                  v75 = v61;
                  v76 = v63;
                  TSTCellSetFormatClearingID(v38, &v69, 1);
                }

                else
                {
                  mMultipleChoiceListFormatRef = v38->mPrivate.mCellFormats.mMultipleChoiceListFormatRef;
                  if (mMultipleChoiceListFormatRef)
                  {
                    [(TSUFormatReferenceObject *)mMultipleChoiceListFormatRef getFormatStruct];
                    v47 = v71;
                    v48 = v72;
                    v62 = v75;
                    v64 = v76;
                    if (v69 == 266)
                    {
                      v49 = v68;
                      if (v68)
                      {
                        v50 = v68->mPrivate.mCellFormats.mMultipleChoiceListFormatRef;
                        v60 = v70;
                        v58 = v73;
                        v55 = v74;
                        if (!v50 || ([(TSUFormatReferenceObject *)v50 getFormatStruct], v69 != 266) || v71 != v47)
                        {

                          v51 = objc_alloc(MEMORY[0x277D6C2F0]);
                          v69 = 266;
                          v70 = v60;
                          v71 = v47;
                          v72 = v48;
                          v73 = v58;
                          v74 = v55;
                          v75 = v62;
                          v76 = v64;
                          v49->mPrivate.mCellFormats.mMultipleChoiceListFormatRef = [v51 initWithTSUFormatFormatStruct:&v69];
                          v49->mPrivate.mCellFormats.mMultipleChoiceListFormatID = 0;
                        }
                      }
                    }
                  }
                }

                v38 = v68;
                if (v68)
                {
LABEL_76:
                  if (v38->mPrivate.mCellStyleID)
                  {
                    v38->mPrivate.mCellStyleID = 0;
                  }

                  if (v38->mPrivate.mTextStyleID)
                  {
                    v38->mPrivate.mTextStyleID = 0;
                  }
                }
              }
            }
          }
        }

        p_mNumberOfHeaderRows = (v37 - boundingCellRange) | ((v36 - BYTE2(boundingCellRange)) << 16) | p_mNumberOfHeaderRows & 0xFFFFFFFF00000000;
        TSTTableDataStoreSetCellAtCellID(v14->mDataStore, v38, p_mNumberOfHeaderRows);
      }

      while ((TSTCellIteratorGetNextCell(v35, v65) & 1) != 0);
    }

    CFRelease(cf);
  }

  return v14;
}

- (TSKDocumentRoot)documentRoot
{
  v3.receiver = self;
  v3.super_class = TSTTableModel;
  return [(TSPObject *)&v3 documentRoot];
}

- (void)dealloc
{
  [(TSTTableModel *)self p_releaseExistingDefaultStyles];

  CFRelease(self->mTableID);
  mFromTableID = self->mFromTableID;
  if (mFromTableID)
  {
    CFRelease(mFromTableID);
  }

  self->mCellsPendingWrite = 0;
  v4.receiver = self;
  v4.super_class = TSTTableModel;
  [(TSTTableModel *)&v4 dealloc];
}

- (void)setDrawableIsBeingCopied:(BOOL)copied
{
  copiedCopy = copied;
  dataStore = [(TSTTableModel *)self dataStore];

  [dataStore setDrawableIsBeingCopied:copiedCopy];
}

- (void)setTableName:(id)name
{
  [(TSPObject *)self willModify];
  nameCopy = name;

  self->mTableName = name;
}

- (void)setTableStyle:(id)style
{
  [(TSPObject *)self willModify];
  styleCopy = style;

  self->mStyles.tableStyle = style;
}

- (void)setBodyCellStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->super._identifier = style;
}

- (void)setHeaderRowCellStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->super._modifyObjectToken = style;
}

- (void)setHeaderColumnCellStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->super._unarchiverIdentifier = style;
}

- (void)setFooterRowCellStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->super._unknownContent = style;
}

- (void)setBodyTextStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->super._delegate = style;
}

- (void)setHeaderRowTextStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->mDataStore = style;
}

- (void)setHeaderColumnTextStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->mTableID = style;
}

- (void)setFooterRowTextStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  selfCopy->mFromTableID = style;
}

- (void)setTableNameStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  *&selfCopy->mNumberOfRows = style;
}

- (void)setTableNameShapeStyle:(id)style
{
  selfCopy = self;
  [(TSPObject *)self willModify];
  styleCopy = style;
  selfCopy = (selfCopy + 160);

  *&selfCopy->mNumberOfFooterRows = style;
}

- (TSDStroke)tableNameBorderStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:782];
}

- (void)setTableID:(__CFUUID *)d
{
  [(TSPObject *)self willModify];
  CFRetain(d);
  CFRelease(self->mTableID);
  self->mTableID = d;
}

- (id)bandedFillObject
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:770];
}

+ (unsigned)tableAreaForCellID:(id)d inTableWithHeaderColumns:(unsigned __int16)columns headerRows:(unsigned __int16)rows footerRows:(unsigned __int16)footerRows totalRows:(unsigned __int16)totalRows
{
  if (d.var0 >= totalRows - footerRows)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!footerRows)
  {
    v7 = 0;
  }

  if (d.var0 >= rows)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (d.var0 >= totalRows - footerRows)
  {
    v9 = 5;
  }

  else
  {
    v9 = 2;
  }

  if (d.var0 >= rows)
  {
    v10 = v9;
  }

  else
  {
    v10 = 4;
  }

  if (columns > d.var1)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

+ ($AA9F29356CAB8C7531B71D0D1ACCC7CE)cellRangeForTableArea:(unsigned int)area givenTableSize:(id)size numberOfHeaderRows:(unsigned __int16)rows numberOfFooterRows:(unsigned __int16)footerRows numberOfHeaderColumns:(unsigned __int16)columns
{
  v7 = 0xFFFFFFLL;
  if (area > 2)
  {
    if ((size.var0 - columns) >= 0xFFu)
    {
      v13 = 255;
    }

    else
    {
      v13 = (size.var0 - columns);
    }

    v14 = (footerRows << 48) | (v13 << 32) | (size.var1 - footerRows) | (columns << 16);
    if (columns >= 0xFFu)
    {
      columnsCopy = 255;
    }

    else
    {
      columnsCopy = columns;
    }

    v16 = (rows << 48) | (columnsCopy << 32);
    if (columns >= 0xFFu)
    {
      columnsCopy2 = 255;
    }

    else
    {
      columnsCopy2 = columns;
    }

    v18 = (rows << 48) | (columnsCopy2 << 32) | (size.var1 - footerRows);
    if (area == 5)
    {
      v7 = v18;
    }

    if (area == 4)
    {
      v7 = v16;
    }

    if (area == 3)
    {
      return v14;
    }

    else
    {
      return v7;
    }
  }

  else if (area)
  {
    if ((size.var0 - columns) >= 0xFFu)
    {
      v8 = 255;
    }

    else
    {
      v8 = (size.var0 - columns);
    }

    v9 = (rows << 48) | (v8 << 32) | (columns << 16);
    if (columns >= 0xFFu)
    {
      columnsCopy3 = 255;
    }

    else
    {
      columnsCopy3 = columns;
    }

    v11 = (columnsCopy3 << 32) | ((size.var1 - (footerRows + rows)) << 48) | rows;
    if (area == 2)
    {
      v7 = v11;
    }

    if (area == 1)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if ((size.var0 - columns) >= 0xFFu)
    {
      v19 = 255;
    }

    else
    {
      v19 = (size.var0 - columns);
    }

    return (((size.var1 - (footerRows + rows)) << 48) | (v19 << 32) | rows & 0xFF00FFFF | (columns << 16));
  }
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)cellRangeForTableArea:(unsigned int)area
{
  v3 = *&area;
  v5 = objc_opt_class();
  v6 = [(TSTTableModel *)self range]>> 32;
  numberOfHeaderRows = [(TSTTableModel *)self numberOfHeaderRows];
  numberOfFooterRows = [(TSTTableModel *)self numberOfFooterRows];
  numberOfHeaderColumns = [(TSTTableModel *)self numberOfHeaderColumns];

  return [v5 cellRangeForTableArea:v3 givenTableSize:v6 numberOfHeaderRows:numberOfHeaderRows numberOfFooterRows:numberOfFooterRows numberOfHeaderColumns:numberOfHeaderColumns];
}

- (id)defaultCellForTableArea:(unsigned int)area
{
  if (area <= 2)
  {
    if (!area)
    {
      return self->mDefaultCells.defaultBodyCell;
    }

    if (area != 1)
    {
      if (area == 2)
      {
        return self->mDefaultCells.defaultHeaderColumnCell;
      }

      goto LABEL_12;
    }

    return self->mDefaultCells.defaultHeaderRowCell;
  }

  switch(area)
  {
    case 3u:
      return self->mDefaultCells.defaultFooterRowCell;
    case 4u:
      return self->mDefaultCells.defaultHeaderRowCell;
    case 5u:
      return self->mDefaultCells.defaultFooterRowCell;
  }

LABEL_12:
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableModel defaultCellForTableArea:]"];
  [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 1670, @"illegal table region"}];
  return 0;
}

- (id)defaultCellStyleForTableArea:(unsigned int)area
{
  v3 = [(TSTTableModel *)self defaultCellForTableArea:*&area];
  if (v3)
  {
    return v3[5];
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableModel defaultCellStyleForTableArea:]"];
  [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2260, @"null default cell"}];
  return 0;
}

- (id)defaultTextStyleForTableArea:(unsigned int)area
{
  v3 = [(TSTTableModel *)self defaultCellForTableArea:*&area];
  if (v3)
  {
    return v3[7];
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableModel defaultTextStyleForTableArea:]"];
  [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2327, @"null default cell"}];
  return 0;
}

- (NSArray)rowHeights
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->mNumberOfRows];
  if (self->mNumberOfRows)
  {
    v4 = 0;
    do
    {
      -[NSArray addObject:](v3, "addObject:", [MEMORY[0x277CCABB0] numberWithDouble:{TSTTableHeightOfRow(self, v4++, 0)}]);
    }

    while (self->mNumberOfRows > v4);
  }

  return v3;
}

- (NSArray)columnWidths
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->mNumberOfColumns];
  if (self->mNumberOfColumns)
  {
    v4 = 0;
    do
    {
      -[NSArray addObject:](v3, "addObject:", [MEMORY[0x277CCABB0] numberWithDouble:{TSTTableWidthOfColumn(self, v4++, 0)}]);
    }

    while (self->mNumberOfColumns > v4);
  }

  return v3;
}

- (void)setColumnWidths:(id)widths
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__TSTTableModel_setColumnWidths___block_invoke;
  v3[3] = &unk_279D4A6D8;
  v3[4] = self;
  [widths enumerateObjectsUsingBlock:v3];
}

uint64_t __33__TSTTableModel_setColumnWidths___block_invoke(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = *(a1 + 32);
  [a2 tsu_CGFloatValue];

  return TSTTableSetWidthOfColumn(v4, a3, v5);
}

- (void)setRowHeights:(id)heights
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__TSTTableModel_setRowHeights___block_invoke;
  v3[3] = &unk_279D4A6D8;
  v3[4] = self;
  [heights enumerateObjectsUsingBlock:v3];
}

uint64_t __31__TSTTableModel_setRowHeights___block_invoke(uint64_t a1, void *a2, unsigned __int16 a3)
{
  v4 = *(a1 + 32);
  [a2 tsu_CGFloatValue];

  return TSTTableSetHeightOfRow(v4, a3, v5);
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)range
{
  if (self->mNumberOfColumns >= 0xFFu)
  {
    mNumberOfColumns = 255;
  }

  else
  {
    mNumberOfColumns = self->mNumberOfColumns;
  }

  return ((mNumberOfColumns << 32) | (self->mNumberOfRows << 48));
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)bodyRange
{
  mNumberOfHeaderRows = self->mNumberOfHeaderRows;
  v3 = mNumberOfHeaderRows + self->mNumberOfFooterRows;
  v4 = mNumberOfHeaderRows & 0xFFFFFFFFFF00FFFFLL | (self->mNumberOfHeaderColumns << 16);
  v5 = self->mNumberOfRows - v3;
  if ((self->mNumberOfColumns - self->mNumberOfHeaderColumns) >= 0xFFu)
  {
    v6 = 255;
  }

  else
  {
    v6 = (self->mNumberOfColumns - self->mNumberOfHeaderColumns);
  }

  return ((v6 << 32) | (v5 << 48) | v4);
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)bodyColumnRange
{
  mNumberOfHeaderColumns = self->mNumberOfHeaderColumns;
  if ((self->mNumberOfColumns - mNumberOfHeaderColumns) >= 0xFFu)
  {
    v3 = 255;
  }

  else
  {
    v3 = (self->mNumberOfColumns - mNumberOfHeaderColumns);
  }

  return ((v3 << 32) | (self->mNumberOfRows << 48) | (self->mNumberOfHeaderColumns << 16));
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)bodyRowRange
{
  if (self->mNumberOfColumns >= 0xFFu)
  {
    mNumberOfColumns = 255;
  }

  else
  {
    mNumberOfColumns = self->mNumberOfColumns;
  }

  return ((mNumberOfColumns << 32) | ((self->mNumberOfRows - (self->mNumberOfHeaderRows + self->mNumberOfFooterRows)) << 48) | self->mNumberOfHeaderRows);
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)headerRowRange
{
  if (self->mNumberOfHeaderRows)
  {
    if (self->mNumberOfColumns >= 0xFFu)
    {
      mNumberOfColumns = 255;
    }

    else
    {
      mNumberOfColumns = self->mNumberOfColumns;
    }

    return ((self->mNumberOfHeaderRows << 48) | (mNumberOfColumns << 32));
  }

  else
  {
    return 0xFFFFFFLL;
  }
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)headerColumnRange
{
  if (self->mNumberOfHeaderColumns)
  {
    if (self->mNumberOfHeaderColumns >= 0xFFu)
    {
      mNumberOfHeaderColumns = 255;
    }

    else
    {
      mNumberOfHeaderColumns = self->mNumberOfHeaderColumns;
    }

    return ((mNumberOfHeaderColumns << 32) | (self->mNumberOfRows << 48));
  }

  else
  {
    return 0xFFFFFFLL;
  }
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)footerRowRange
{
  mNumberOfFooterRows = self->mNumberOfFooterRows;
  if (self->mNumberOfFooterRows)
  {
    mNumberOfHeaderRows = self->mNumberOfHeaderRows;
    if (self->mNumberOfRows - mNumberOfFooterRows >= mNumberOfHeaderRows)
    {
      LOWORD(mNumberOfHeaderRows) = self->mNumberOfRows - mNumberOfFooterRows;
    }

    mNumberOfColumns = self->mNumberOfColumns;
    if (mNumberOfColumns >= 0xFF)
    {
      mNumberOfColumns = 255;
    }

    return (mNumberOfHeaderRows | ((mNumberOfColumns | (mNumberOfFooterRows << 16)) << 32));
  }

  else
  {
    return 0xFFFFFFLL;
  }
}

- (unsigned)numberOfVisibleBodyRows
{
  mNumberOfHiddenRows = self->mNumberOfHiddenRows;
  if (mNumberOfHiddenRows)
  {
    if (self->mNumberOfHeaderRows)
    {
      headerRowRange = [(TSTTableModel *)self headerRowRange];
      var0 = headerRowRange.var0;
      v6 = *&headerRowRange.var0 + *&headerRowRange.var1.var1 - 1;
      if ((headerRowRange.var0.var0 + headerRowRange.var1.var1 - 1) >= headerRowRange.var0.var0)
      {
        do
        {
          mNumberOfHiddenRows -= TSTHidingActionForRow(self, var0.var0) != 0;
          ++*&var0;
        }

        while (var0.var0 <= v6);
      }
    }

    if (self->mNumberOfFooterRows)
    {
      footerRowRange = [(TSTTableModel *)self footerRowRange];
      v8 = footerRowRange.var0;
      v9 = *&footerRowRange.var0 + *&footerRowRange.var1.var1 - 1;
      if ((footerRowRange.var0.var0 + footerRowRange.var1.var1 - 1) >= footerRowRange.var0.var0)
      {
        do
        {
          mNumberOfHiddenRows -= TSTHidingActionForRow(self, v8.var0) != 0;
          ++*&v8;
        }

        while (v8.var0 <= v9);
      }
    }
  }

  return ([(TSTTableModel *)self bodyRowRange]>> 48) - mNumberOfHiddenRows;
}

- (unsigned)numberOfVisibleBodyColumns
{
  mNumberOfHiddenColumns = self->mNumberOfHiddenColumns;
  if (mNumberOfHiddenColumns)
  {
    if (self->mNumberOfHeaderColumns)
    {
      headerColumnRange = [(TSTTableModel *)self headerColumnRange];
      v5 = *&headerColumnRange.var1 + HIWORD(*&headerColumnRange.var0) + 255;
      if (headerColumnRange.var0.var1 <= (LOBYTE(headerColumnRange.var1.var0) + headerColumnRange.var0.var1 - 1))
      {
        v6 = *&headerColumnRange >> 16;
        do
        {
          mNumberOfHiddenColumns -= TSTHidingActionForColumn(self, v6) != 0;
          LODWORD(v6) = v6 + 1;
        }

        while (v6 <= v5);
      }
    }
  }

  return ([(TSTTableModel *)self bodyColumnRange]>> 32) - mNumberOfHiddenColumns;
}

- (TSDFill)bodyFill
{
  bodyCellStyle = [(TSTTableModel *)self bodyCellStyle];

  return [(TSSStyle *)bodyCellStyle valueForProperty:898];
}

- (TSDFill)headerColumnsFill
{
  headerColumnCellStyle = [(TSTTableModel *)self headerColumnCellStyle];

  return [(TSSStyle *)headerColumnCellStyle valueForProperty:898];
}

- (TSDFill)headerRowsFill
{
  headerRowCellStyle = [(TSTTableModel *)self headerRowCellStyle];

  return [(TSSStyle *)headerRowCellStyle valueForProperty:898];
}

- (TSDFill)footerRowsFill
{
  footerRowCellStyle = [(TSTTableModel *)self footerRowCellStyle];

  return [(TSSStyle *)footerRowCellStyle valueForProperty:898];
}

- (TSDStroke)borderStrokeEvenIfNotVisible
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:771];
}

- (TSDStroke)parentBorderStroke
{
  parent = [(TSSStyle *)[(TSTTableModel *)self tableStyle] parent];
  if (!parent)
  {
    parent = [(TSTTableModel *)self tableStyle];
  }

  return [(TSSStyle *)parent valueForProperty:771];
}

- (TSDStroke)bodyColumnStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:788])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:774];
}

- (TSDStroke)bodyRowStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:789])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:773];
}

- (TSDStroke)headerColumnBorderStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:778];
}

- (TSDStroke)headerColumnBodyColumnStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:777];
}

- (TSDStroke)headerColumnBodyRowStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:793])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:776];
}

- (TSDStroke)headerColumnSeparatorStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:775];
}

- (TSDStroke)headerRowBorderStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:782];
}

- (TSDStroke)headerRowBodyColumnStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:791])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:780];
}

- (TSDStroke)headerRowBodyRowStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:781];
}

- (TSDStroke)headerRowSeparatorStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:779];
}

- (TSDStroke)footerRowBorderStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:786];
}

- (TSDStroke)footerRowBodyColumnStroke
{
  if (![(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:795])
  {
    return 0;
  }

  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:784];
}

- (TSDStroke)footerRowBodyRowStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:785];
}

- (TSDStroke)footerRowSeparatorStroke
{
  tableStyle = [(TSTTableModel *)self tableStyle];

  return [(TSSStyle *)tableStyle valueForProperty:783];
}

- (void)defaultStrokesForCellID:(id)d outTopStroke:(id *)stroke outLeftStroke:(id *)leftStroke outBottomStroke:(id *)bottomStroke outRightStroke:(id *)rightStroke
{
  dCopy = d;
  LODWORD(v12) = [(TSTTableModel *)self tableAreaForCellID:*&d];
  [(TSTTableModel *)self defaultStrokesForCellID:dCopy inTableWithHeaderColumns:[(TSTTableModel *)self numberOfHeaderColumns] headerRows:[(TSTTableModel *)self numberOfHeaderRows] footerRows:[(TSTTableModel *)self numberOfFooterRows] totalColumns:[(TSTTableModel *)self numberOfColumns] totalRows:[(TSTTableModel *)self numberOfRows] tableArea:v12 outTopStroke:stroke outLeftStroke:leftStroke outBottomStroke:bottomStroke outRightStroke:rightStroke];
}

- (void)defaultStrokesForCellID:(id)d inTableWithHeaderColumns:(unsigned __int16)columns headerRows:(unsigned __int16)rows footerRows:(unsigned __int16)footerRows totalColumns:(unsigned __int16)totalColumns totalRows:(unsigned __int16)totalRows tableArea:(unsigned int)area outTopStroke:(id *)self0 outLeftStroke:(id *)self1 outBottomStroke:(id *)self2 outRightStroke:(id *)self3
{
  totalRowsCopy = totalRows;
  totalColumnsCopy = totalColumns;
  rowsCopy = rows;
  var0 = d.var0;
  v17 = *&d.var0 >> 16;
  if (area > 2)
  {
    if (area != 3)
    {
      if (area == 4)
      {
LABEL_21:
        if (stroke)
        {
          *stroke = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:781];
        }

        if (bottomStroke)
        {
          tableStyle = [(TSTTableModel *)self tableStyle];
          if (rowsCopy - 1 == var0)
          {
            v25 = 779;
          }

          else
          {
            v25 = 781;
          }

          *bottomStroke = [(TSSStyle *)tableStyle valueForProperty:v25];
        }

        if (leftStroke)
        {
          if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:791])
          {
            v26 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:780];
          }

          else
          {
            v26 = 0;
          }

          *leftStroke = v26;
        }

        if (!rightStroke)
        {
          goto LABEL_81;
        }

        if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:791])
        {
          tableStyle2 = [(TSTTableModel *)self tableStyle];
          v30 = 780;
          goto LABEL_79;
        }

        goto LABEL_65;
      }

      if (area != 5)
      {
        goto LABEL_81;
      }
    }

    if (stroke)
    {
      v20 = totalRows - footerRows;
      tableStyle3 = [(TSTTableModel *)self tableStyle];
      if (v20 == var0)
      {
        v22 = 783;
      }

      else
      {
        v22 = 785;
      }

      *stroke = [(TSSStyle *)tableStyle3 valueForProperty:v22];
    }

    if (bottomStroke)
    {
      *bottomStroke = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:785];
    }

    if (leftStroke)
    {
      if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:795])
      {
        v23 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:784];
      }

      else
      {
        v23 = 0;
      }

      *leftStroke = v23;
    }

    if (!rightStroke)
    {
      goto LABEL_81;
    }

    if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:795])
    {
      tableStyle2 = [(TSTTableModel *)self tableStyle];
      v30 = 784;
LABEL_79:
      v36 = [(TSSStyle *)tableStyle2 valueForProperty:v30];
      goto LABEL_80;
    }

LABEL_65:
    v36 = 0;
LABEL_80:
    *rightStroke = v36;
    goto LABEL_81;
  }

  columnsCopy = columns;
  switch(area)
  {
    case 0u:
      if (!stroke)
      {
        goto LABEL_49;
      }

      tableStyle4 = [(TSTTableModel *)self tableStyle];
      if (rowsCopy == var0 && rowsCopy)
      {
        v28 = 779;
      }

      else
      {
        if (![(TSSStyle *)tableStyle4 intValueForProperty:789])
        {
          v31 = 0;
          goto LABEL_48;
        }

        tableStyle4 = [(TSTTableModel *)self tableStyle];
        v28 = 773;
      }

      v31 = [(TSSStyle *)tableStyle4 valueForProperty:v28];
LABEL_48:
      *stroke = v31;
LABEL_49:
      if (bottomStroke)
      {
        if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:789])
        {
          v32 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:773];
        }

        else
        {
          v32 = 0;
        }

        *bottomStroke = v32;
      }

      if (!leftStroke)
      {
LABEL_62:
        if (!rightStroke)
        {
          break;
        }

        if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:788])
        {
          tableStyle2 = [(TSTTableModel *)self tableStyle];
          v30 = 774;
          goto LABEL_79;
        }

        goto LABEL_65;
      }

      tableStyle5 = [(TSTTableModel *)self tableStyle];
      if (columnsCopy && v17 == columnsCopy)
      {
        v34 = 775;
      }

      else
      {
        if (![(TSSStyle *)tableStyle5 intValueForProperty:788])
        {
          v35 = 0;
          goto LABEL_61;
        }

        tableStyle5 = [(TSTTableModel *)self tableStyle];
        v34 = 774;
      }

      v35 = [(TSSStyle *)tableStyle5 valueForProperty:v34];
LABEL_61:
      *leftStroke = v35;
      goto LABEL_62;
    case 1u:
      goto LABEL_21;
    case 2u:
      if (stroke)
      {
        if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:793])
        {
          v19 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:776];
        }

        else
        {
          v19 = 0;
        }

        *stroke = v19;
      }

      if (bottomStroke)
      {
        if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:793])
        {
          v37 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:776];
        }

        else
        {
          v37 = 0;
        }

        *bottomStroke = v37;
      }

      if (leftStroke)
      {
        *leftStroke = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:777];
      }

      if (rightStroke)
      {
        tableStyle2 = [(TSTTableModel *)self tableStyle];
        if (columnsCopy - 1 == v17)
        {
          v30 = 775;
        }

        else
        {
          v30 = 777;
        }

        goto LABEL_79;
      }

      break;
  }

LABEL_81:
  if (stroke && !var0)
  {
    if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
    {
      v38 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:771];
    }

    else
    {
      v38 = 0;
    }

    *stroke = v38;
  }

  if (bottomStroke && var0 == totalRowsCopy - 1)
  {
    if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
    {
      v39 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:771];
    }

    else
    {
      v39 = 0;
    }

    *bottomStroke = v39;
  }

  if (leftStroke && !v17)
  {
    if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
    {
      v40 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:771];
    }

    else
    {
      v40 = 0;
    }

    *leftStroke = v40;
  }

  if (rightStroke && v17 == totalColumnsCopy - 1)
  {
    if ([(TSSStyle *)[(TSTTableModel *)self tableStyle] intValueForProperty:796])
    {
      v41 = [(TSSStyle *)[(TSTTableModel *)self tableStyle] valueForProperty:771];
    }

    else
    {
      v41 = 0;
    }

    *rightStroke = v41;
  }
}

- (id)cellRegionWithConditionalStyleMatchingCell:(id)cell
{
  v5 = TSTTableDataStoreCellStorageRefAtCellID([(TSTTableModel *)self dataStore], *&cell);
  if (!v5)
  {
    return 0;
  }

  if ((v5[5] & 4) != 0)
  {
    Element = TSTCellStorageGetElement(v5, 1024);
    if (!Element)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageConditionalStyleSetID(TSTCellStorage *)"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 212, @"Can't get conditional style ID storage element!"}];
    }

    v6 = *Element;
  }

  else
  {
    v6 = 0;
  }

  v10 = TSTTableDataStoreConditionalStyleRefCountForKey([(TSTTableModel *)self dataStore], v6);
  if (!v6)
  {
    return 0;
  }

  v11 = v10;
  v12 = [[TSTEphemeralCellMap alloc] initWithCapacity:[(TSTTableModel *)self numberOfRows]* [(TSTTableModel *)self numberOfColumns]];
  v13 = [[TSTCellIterator alloc] initWithTableModel:self region:[TSTCellRegion flags:"regionFromRange:" regionFromRange:?], 34];
  if (TSTCellIteratorGetNextCell(v13, v25))
  {
    v14 = v11;
    if (v11)
    {
      v15 = 0;
      do
      {
        if (!v27)
        {
          goto LABEL_20;
        }

        if ((*(v27 + 5) & 4) != 0)
        {
          v17 = TSTCellStorageGetElement(v27, 1024);
          if (!v17)
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageConditionalStyleSetID(TSTCellStorage *)"];
            [currentHandler2 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 212, @"Can't get conditional style ID storage element!"}];
          }

          v16 = *v17;
        }

        else
        {
          v16 = 0;
        }

        if (v16 == v6)
        {
          v3 = v3 & 0xFFFFFFFF00000000 | v26;
          [(TSTEphemeralCellMap *)v12 addCell:0 andCellID:v3];
          ++v15;
        }

        else
        {
LABEL_20:
          if (v28 != 0xFFFF && (v28 & 0xFF0000) != 0xFF0000 && v29 >= 0x10000 && v29 != 0 && ((v26 ^ v28) & 0xFFFFFF) != 0)
          {
            v24 = v24 & 0xFFFFFFFF00000000 | v28;
            if ([(TSTEphemeralCellMap *)v12 containsCellID:?])
            {
              v23 = v23 & 0xFFFFFFFF00000000 | v26;
              [(TSTEphemeralCellMap *)v12 addCell:0 andCellID:?];
            }
          }
        }
      }

      while (TSTCellIteratorGetNextCell(v13, v25) && v15 < v14);
    }
  }

  v21 = [TSTCellRegion regionFromCellMap:v12];
  return v21;
}

- (void)mapTableStylesToStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v6 = [TSTTableStyleNetwork networkFromTableModel:self];
  v12 = [[TSTTableStyleNetwork alloc] initWithContext:[(TSPObject *)self context]];
  -[TSTTableStyleNetwork setPresetIndex:](v12, "setPresetIndex:", [v6 presetIndex]);
  -[TSTTableStyleNetwork setTableStyle:](v12, "setTableStyle:", [mapper mappedStyleForStyle:{objc_msgSend(v6, "tableStyle")}]);
  objc_opt_class();
  [mapper mappedStyleForStyle:{objc_msgSend(v6, "tableNameStyle")}];
  [(TSTTableStyleNetwork *)v12 setTableNameStyle:TSUDynamicCast()];
  -[TSTTableStyleNetwork setTableNameShapeStyle:](v12, "setTableNameShapeStyle:", [mapper mappedStyleForStyle:{objc_msgSend(v6, "tableNameShapeStyle")}]);
  v7 = 0;
  do
  {
    -[TSTTableStyleNetwork setCellStyle:forTableArea:](v12, "setCellStyle:forTableArea:", [mapper mappedStyleForStyle:{objc_msgSend(v6, "cellStyleForTableArea:", v7)}], v7);
    v8 = [v6 textStyleForTableArea:v7];
    objc_opt_class();
    [mapper mappedStyleForStyle:v8];
    v9 = TSUDynamicCast();
    if (!v9)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableModel mapTableStylesToStylesheet:withMapper:]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 5402, @"invalid nil value for '%s'", "targetStyle"}];
    }

    [(TSTTableStyleNetwork *)v12 setTextStyle:v9 forTableArea:v7];
    v7 = (v7 + 1);
  }

  while (v7 != 4);
  [(TSTTableModel *)self resetStyles:v12];
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  [TSTTableModel mapTableStylesToStylesheet:"mapTableStylesToStylesheet:withMapper:" withMapper:?];
  [(TSTTableModel *)self setupDefaultCells];
  v7 = [[TSTCellIterator alloc] initWithTableModel:self flags:48];
  v29 = [[TSTEphemeralCellMap alloc] initWithCapacity:self->mNumberOfColumns * self->mNumberOfRows];
  if (TSTCellIteratorGetNextCell(v7, v30))
  {
    do
    {
      v8 = v32;
      if (v32)
      {
        v9 = *(v32 + 40);
        v10 = v9 != 0;
        if (v9)
        {
          v11 = [mapper mappedStyleForStyle:?];
          v12 = *(v8 + 40);
          if (v12 != v11)
          {
            v13 = v11;

            *(v8 + 40) = v13;
            *(v8 + 32) = 0;
          }
        }

        v14 = *(v8 + 56);
        v15 = v14 != 0;
        if (v14)
        {
          objc_opt_class();
          [mapper mappedStyleForStyle:v14];
          v16 = TSUDynamicCast();
          v17 = *(v8 + 56);
          if (v17 != v16)
          {
            v18 = v16;

            *(v8 + 56) = v18;
            *(v8 + 48) = 0;
          }
        }

        v19 = *(v8 + 72);
        if (v19 || *(v8 + 64))
        {
          [objc_msgSend(v19 "storage")];
        }

        if (v15)
        {
LABEL_16:
          v4 = v4 & 0xFFFFFFFF00000000 | v31;
          [(TSTEphemeralCellMap *)v29 addCell:v8 andCellID:v4];
          continue;
        }
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        goto LABEL_16;
      }
    }

    while ((TSTCellIteratorGetNextCell(v7, v30) & 1) != 0);
  }

  TSTTableSetCellsWithCellMapIgnoringFormulas(self, v29);

  if ([(TSTTableModel *)self numberOfRows])
  {
    v20 = 0;
    do
    {
      v21 = TSTTableDataStoreHeaderInfoForRow(self->mDataStore, v20, 0, 0);
      if (v21)
      {
        v22 = v21;
        if (*(v21 + 8))
        {
          v23 = *(v21 + 16);
          *(v21 + 8) = [mapper mappedStyleForStyle:?];
          *(v22 + 16) = [mapper mappedStyleForStyle:v23];
        }
      }

      ++v20;
    }

    while ([(TSTTableModel *)self numberOfRows]> v20);
  }

  if ([(TSTTableModel *)self numberOfColumns])
  {
    v24 = 0;
    do
    {
      v25 = TSTTableDataStoreHeaderInfoForColumn(self->mDataStore, v24, 0, 0);
      if (v25)
      {
        v26 = v25;
        if (*(v25 + 8))
        {
          v27 = *(v25 + 16);
          *(v25 + 8) = [mapper mappedStyleForStyle:?];
          *(v26 + 16) = [mapper mappedStyleForStyle:v27];
        }
      }

      ++v24;
    }

    while ([(TSTTableModel *)self numberOfColumns]> v24);
  }
}

- (void)validateStyles
{
  [(TSTTableStyle *)[(TSTTableModel *)self tableStyle] validate];
  [(TSTCellStyle *)[(TSTTableModel *)self bodyCellStyle] validate];
  [(TSTCellStyle *)[(TSTTableModel *)self headerRowCellStyle] validate];
  [(TSTCellStyle *)[(TSTTableModel *)self headerColumnCellStyle] validate];
  [(TSTCellStyle *)[(TSTTableModel *)self footerRowCellStyle] validate];
  v3 = [[TSTCellIterator alloc] initWithTableModel:self];
  if (TSTCellIteratorGetNextCell(v3, v5))
  {
    do
    {
      if (v6)
      {
        v4 = *(v6 + 40);
      }

      else
      {
        v4 = 0;
      }

      [v4 validate];
    }

    while ((TSTCellIteratorGetNextCell(v3, v5) & 1) != 0);
  }
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)minPopulatedCellRange
{
  v2 = self->mNumberOfHeaderRows + 1;
  if ((self->mNumberOfHeaderColumns + 1) >= 0xFFu)
  {
    v3 = 255;
  }

  else
  {
    v3 = self->mNumberOfHeaderColumns + 1;
  }

  mNumberOfColumns = self->mNumberOfColumns;
  mNumberOfRows = self->mNumberOfRows;
  if (mNumberOfColumns >= 0xFF)
  {
    mNumberOfColumns = 255;
  }

  mNumberOfFooterRows = self->mNumberOfFooterRows;
  v7 = [[TSTCellIterator alloc] initWithTableModel:self range:(mNumberOfColumns | (mNumberOfRows << 16)) << 32 flags:33];
  if (TSTCellIteratorGetNextCell(v7, v24))
  {
    while (1)
    {
      v8 = v27;
      if (!v27)
      {
        goto LABEL_21;
      }

      mPrivate = v27->mPrivate;
      mFormatType = v27->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
      if (mFormatType == 267 && BYTE1(mPrivate) == 2)
      {
        break;
      }

      if (mFormatType == 263 && BYTE1(mPrivate) == 6)
      {
        goto LABEL_19;
      }

      if (BYTE1(mPrivate) != 3)
      {
        goto LABEL_20;
      }

      v13 = v27;
LABEL_23:
      v14 = NSStringFromNativeTSTCell(v13);
      if (v14 && [(__CFString *)v14 length])
      {
LABEL_25:
        v15 = v25;
        v16 = v26;
        if (v28 != 0xFFFF)
        {
          v17 = HIWORD(v28);
          v18 = (v28 & 0xFF0000) == 0xFF0000 || v17 == 0;
          if (!v18 && (v28 & 0xFFFF00000000) != 0)
          {
            v16 = ((v28 + ((v28 >> 16) & 0xFF0000) + 16711680) >> 16);
            v15 = v28 + 0xFFFF + v17;
          }
        }

        if (v15 >= v2 && ~mNumberOfFooterRows + mNumberOfRows >= v15)
        {
          v2 = (v15 + 1);
        }

        else
        {
          v2 = v2;
        }

        if (v16 >= v3)
        {
          v3 = v16 + 1;
        }
      }

LABEL_43:
      if ((TSTCellIteratorGetNextCell(v7, v24) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    if ((*&v27->mPrivate & 0xFB00) != 0x200)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [currentHandler handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v8}];
      goto LABEL_43;
    }

LABEL_19:
    if (v27->mPrivate.mValue.mDouble == 0.0)
    {
      goto LABEL_43;
    }

LABEL_20:
    if (*(&v27->mPrivate + 1))
    {
      goto LABEL_25;
    }

LABEL_21:
    if (TSTCellIteratorCellHasCommentStorage(v24))
    {
      goto LABEL_25;
    }

    v13 = v27;
    goto LABEL_23;
  }

LABEL_44:

  return ((v2 << 48) | (v3 << 32));
}

- (void)p_scaleStrokeFromProperty:(int)property style:(id)style pmap:(id)pmap scale:(double)scale
{
  v8 = *&property;
  v9 = [objc_msgSend(style "valueForProperty:"mutableCopy"")];
  if (v9)
  {
    v11 = v9;
    [v9 width];
    [v11 setWidth:v10 * scale];
    [pmap setObject:v11 forProperty:v8];
  }
}

- (void)p_scaleStrokesOnCell:(id)cell atCellID:(id)d transformedObjects:(id)objects scale:(double)scale
{
  if (cell)
  {
    v11 = *(cell + 5);
    v12 = [objects objectForKey:v11];
    if (!v12)
    {
      if (!v11)
      {
        return;
      }

      v13 = objc_alloc_init(TSSPropertyMap);
      [(TSTTableModel *)self p_scaleStrokeFromProperty:899 style:v11 pmap:v13 scale:scale];
      [(TSTTableModel *)self p_scaleStrokeFromProperty:900 style:v11 pmap:v13 scale:scale];
      [(TSTTableModel *)self p_scaleStrokeFromProperty:901 style:v11 pmap:v13 scale:scale];
      [(TSTTableModel *)self p_scaleStrokeFromProperty:902 style:v11 pmap:v13 scale:scale];
      v14 = [(TSSStylesheet *)[(TSKDocumentRoot *)[(TSTTableModel *)self documentRoot] stylesheet] variationOfStyle:v11 propertyMap:v13];

      v15 = *(cell + 5);
      if (v15 != v14)
      {

        *(cell + 5) = v14;
        *(cell + 8) = 0;
      }

      if (v14)
      {
        [objects setObject:v14 forKey:v11];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = [objects objectForKey:scale];
    if (!v12)
    {
      return;
    }
  }

  v16 = v12;
  v17 = *(cell + 5);
  if (v17 != v12)
  {

    *(cell + 5) = v16;
    *(cell + 8) = 0;
  }

LABEL_11:

  TSTTableSetCellAtCellIDIgnoringFormula(self, cell, *&d);
}

- (void)transformStrokes:(CGAffineTransform *)strokes transformedObjects:(id)objects inBounds:(CGRect)bounds
{
  if (![objects objectForKey:{self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}])
  {
    [objects setObject:self forUncopiedKey:self];
    tableStyle = [(TSTTableModel *)self tableStyle];
    v9 = [objects objectForKey:tableStyle];
    v10 = fmin(strokes->a, strokes->d);
    if (tableStyle != v9)
    {
      v11 = v9;
      if (!v9)
      {
        strokes = objc_alloc_init(TSSPropertyMap);
        [(TSTTableModel *)self p_scaleStrokeFromProperty:773 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:774 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:771 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:772 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:781 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:780 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:782 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:779 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:776 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:777 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:778 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:775 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:785 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:784 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:786 style:tableStyle pmap:strokes scale:v10];
        [(TSTTableModel *)self p_scaleStrokeFromProperty:783 style:tableStyle pmap:strokes scale:v10];
        v11 = [(TSSStylesheet *)[(TSSStyle *)tableStyle stylesheet] variationOfStyle:tableStyle propertyMap:strokes];

        if (tableStyle)
        {
          if (v11)
          {
            [objects setObject:v11 forKey:tableStyle];
          }
        }
      }

      [(TSTTableModel *)self setTableStyle:v11];
    }

    v12 = [[TSTCellIterator alloc] initWithTableModel:self range:[(TSTTableModel *)self range]];
    if (TSTCellIteratorGetNextCell(v12, v13))
    {
      do
      {
        strokes = (strokes & 0xFFFFFFFF00000000 | v14);
        [(TSTTableModel *)self p_scaleStrokesOnCell:v15 atCellID:strokes transformedObjects:objects scale:v10];
      }

      while ((TSTCellIteratorGetNextCell(v12, v13) & 1) != 0);
    }
  }
}

- (void)upgradeFromPreUFF
{
  p_mStyles = &self->mStyles;
  if (!self->mStyles.tableNameStyle)
  {
    [(TSPObject *)self willModifyForUpgrade];
    p_mStyles->tableNameStyle = [+[TSTTableStyleNetwork networkFromTheme:presetIndex:](TSTTableStyleNetwork networkFromTheme:-[TSKDocumentRoot theme](-[TSTTableModel documentRoot](self presetIndex:{"documentRoot"), "theme"), self->mPresetIndex), "tableNameStyle"}];
  }

  if (!p_mStyles->tableNameShapeStyle)
  {
    [(TSPObject *)self willModifyForUpgrade];
    p_mStyles->tableNameShapeStyle = [+[TSTTableStyleNetwork networkFromTheme:presetIndex:](TSTTableStyleNetwork networkFromTheme:-[TSKDocumentRoot theme](-[TSTTableModel documentRoot](self presetIndex:{"documentRoot"), "theme"), self->mPresetIndex), "tableNameShapeStyle"}];
  }

  if (self->mDeprecatedProvider)
  {
    v4 = [TSTEphemeralCellMap alloc];
    v5 = [v4 initWithCapacity:{-[TSTTableModel numberOfColumns](self, "numberOfColumns") * -[TSTTableModel numberOfRows](self, "numberOfRows")}];
    v6 = [[TSTCellIterator alloc] initWithTableModel:self flags:289];
    v7 = objc_alloc_init(TSTCell);
    TSTCellClear(v7);
    if (TSTCellIteratorGetNextCell(v6, v54))
    {
      p_mValue = &v7->mPrivate.mValue;
      p_mTextStyleID = &v7->mPrivate.mTextStyleID;
      v8 = &OBJC_IVAR___TSTCell_mPrivate;
      v46 = v5;
      do
      {
        v9 = objc_autoreleasePoolPush();
        if (*(&v54[0] + 1) && *(*(&v54[0] + 1) + *v8 + 1) << 8 == 1024)
        {
          v10 = v8;
          TSTCellCopy(*(&v54[0] + 1), v7);
          v48 = v48 & 0xFFFFFFFF00000000 | DWORD1(v54[0]);
          v11 = [TSWPStorage rangeForCellID:"rangeForCellID:includingBreak:" includingBreak:?];
          if (v12)
          {
            v13 = v11;
            v14 = v12;
            v47 = v4;
            v15 = [(TSWPStorage *)self->mDeprecatedProvider newSubstorageWithRange:v11 context:v12 flags:[(TSPObject *)self context] kind:0, 5];
            if ([v15 canBeStoredInAStringValueCell])
            {
              TSTCellClearValue(v7);
              v8 = v10;
              *(&v7->super.isa + *v10 + 1) = 3;
              stringValue = [v15 stringValue];
              v17 = *v10;
              v18 = *(&v7->super.isa + v17);
              if ((v18 & 0xFF00) == 0)
              {
                TSTCellClearValue(v7);
                *(&v7->super.isa + *v10 + 1) = 3;
                v17 = *v10;
                v18 = *(&v7->super.isa + v17);
              }

              if ((v18 & 0xFF00) == 0x300)
              {
                v19 = *(&p_mValue->mDate + v17);
                if (v19 != stringValue)
                {

                  *(&p_mValue->mDate + *v10) = stringValue;
                  v20 = HIWORD(*(&v7->super.isa + *v10));
                  v21 = [stringValue rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")}];
                  v22 = v20 | 1;
                  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v22 = v20 & 0xFFFE;
                  }

                  *(&v7->super.isa + *v10 + 2) = v22;
                  *(&v7->mPrivate + *v10) = 0;
                }
              }

              else
              {
                currentHandler = [MEMORY[0x277D6C290] currentHandler];
                v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringValueClearingID(TSTCell *, NSString *, BOOL)"}];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"];
                v28 = v26;
                v8 = v10;
                [currentHandler handleFailureInFunction:v28 file:v27 lineNumber:1003 description:{@"can't set string on non-string cell: %p", v7}];
              }

              v29 = [v15 paragraphStyleAtCharIndex:0 effectiveRange:0];
              if (v29)
              {
                propertyMap = [v29 propertyMap];
                v31 = [(TSTTableModel *)self defaultTextStyleForTableArea:[(TSTTableModel *)self tableAreaForCellID:DWORD1(v54[0])]];
                stylesheet = [(TSKDocumentRoot *)[(TSTTableModel *)self documentRoot] stylesheet];
                v33 = v31;
                v8 = v10;
                v34 = [(TSSStylesheet *)stylesheet variationOfStyle:v33 propertyMap:propertyMap];
                v35 = *(p_mTextStyleID + *v10);
                if (v35 != v34)
                {
                  v36 = v34;

                  *(p_mTextStyleID + *v10) = v36;
                  *(&v7->mPrivate.mCellStyle + *v10) = 0;
                }
              }
            }

            else
            {
              v23 = [(TSWPStorage *)self->mDeprecatedProvider newSubstorageWithRange:v13 context:v14 flags:[(TSPObject *)self context] kind:0, 5];
              [v23 willBeAddedToDocumentRoot:-[TSTTableModel documentRoot](self dolcContext:{"documentRoot"), 0}];
              [v23 wasAddedToDocumentRoot:-[TSTTableModel documentRoot](self dolcContext:{"documentRoot"), 0}];
              v24 = [[TSTRichTextPayload alloc] initWithStorage:v23];
              TSTCellClearValue(v7);
              v8 = v10;
              *(&v7->super.isa + *v10 + 1) = 9;
              TSTCellSetRichTextPayloadClearingIDConvertToPlaintext(v7, v24, 1, 1);
            }

            LODWORD(v49) = 260;
            TSTCellSetExplicitFormat(v7, &v49);
            v5 = v46;
            v4 = v47;
          }

          else
          {
            TSTCellClearValue(v7);
            TSTCellClearValue(v7);
            *(&v7->super.isa + *v8) &= 0xFFFF00FF;
          }

          v4 = v4 & 0xFFFFFFFF00000000 | DWORD1(v54[0]);
          [(TSTEphemeralCellMap *)v5 addCell:v7 andCellID:v4];
        }

        objc_autoreleasePoolPop(v9);
      }

      while ((TSTCellIteratorGetNextCell(v6, v54) & 1) != 0);
    }

    TSTTableSetCellsWithCellMapIgnoringFormulas(self, v5);
    self->mDeprecatedProvider = 0;
  }

  else
  {
    stylesheet2 = [(TSKDocumentRoot *)[(TSTTableModel *)self documentRoot] stylesheet];
    v38 = [TSTTableStyleNetwork networkFromTableModel:self];
    v39 = [[TSTCellIterator alloc] initWithTableModel:self flags:48];
    if ([(TSTCellIterator *)v39 getNext:v54])
    {
      do
      {
        if (*(&v54[0] + 1))
        {
          v40 = *(*(&v54[0] + 1) + 72);
          if (v40)
          {
            storage = [v40 storage];
            range = [storage range];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __34__TSTTableModel_upgradeFromPreUFF__block_invoke;
            v50[3] = &unk_279D4A700;
            v50[4] = stylesheet2;
            v50[5] = v38;
            v51 = v54[0];
            v52 = v54[1];
            v53 = v55;
            v50[6] = self;
            v50[7] = storage;
            [storage enumerateWithAttributeKind:0 inRange:range usingBlock:{v43, v50}];
          }
        }
      }

      while ([(TSTCellIterator *)v39 getNext:v54]);
    }
  }
}

uint64_t __34__TSTTableModel_upgradeFromPreUFF__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (![a2 stylesheet] || (result = objc_msgSend(a2, "stylesheet"), result == *(a1 + 32)) && (result = objc_msgSend(a2, "parent")) == 0)
  {
    v9 = [*(a1 + 32) variationOfStyle:objc_msgSend(*(a1 + 40) propertyMap:{"textStyleForTableArea:", objc_msgSend(*(a1 + 48), "tableAreaForCellID:", *(a1 + 68))), objc_msgSend(a2, "propertyMap")}];
    v10 = *(a1 + 56);

    return [v10 setParagraphStyle:v9 forCharRange:a3 undoTransaction:{a4, 0}];
  }

  return result;
}

- (id)allRichTextPayloadStorages
{
  v2 = [objc_msgSend(*(-[TSTTableModel dataStore](self "dataStore") + 96)];
  v3 = MEMORY[0x277CBEB98];

  return [v3 setWithArray:v2];
}

@end