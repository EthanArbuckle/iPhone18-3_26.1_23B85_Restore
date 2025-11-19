@interface DBTDuxburyBrailleTranslator
+ (_NSRange)_mappedRange:(_NSRange)a3 withPreprocessedMap:(id)a4;
- (BOOL)_loadTable:(id)a3 translationHandle:(void *)a4 backTranslationHandle:(void *)a5;
- (DBTDuxburyBrailleTranslator)init;
- (id)_eightDotPrintBrailleForText:(id)a3 locations:(id *)a4 textFormattingRanges:(id)a5;
- (id)_eightDotTextForPrintBraille:(id)a3 locations:(id *)a4;
- (id)_newPrintPreprocessorsForTable:(id)a3 primaryLanguageCode:(id)a4;
- (id)_printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7 optimize:(BOOL)a8;
- (id)_scrubDollarCodesInBuffer:(int *)a3 originalLength:(unint64_t)a4 originalLocations:(id)a5 newLocations:(id)a6 convertASCIIBrailleToUnicode:(BOOL)a7 limitRange:(_NSRange)a8;
- (id)_tableInfoForKey:(id)a3;
- (id)printBrailleForTechnicalText:(id)a3 useTechnicalTable:(BOOL)a4 locations:(id *)a5;
- (id)printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7;
- (id)textForPrintBraille:(id)a3 mode:(unint64_t)a4 locations:(id *)a5;
- (unint64_t)_prepBuffersForConversion:(BOOL)a3 withString:(id)a4 mode:(unint64_t)a5 prefixLength:(unint64_t)a6;
- (void)_eightDotTablesFromRawTable:(id)a3 translationTable:(id *)a4 backTranslationTable:(id *)a5;
- (void)_populatePrintBrailleForTextLocations:(id *)a3 inLength:(unint64_t)a4 outLength:(unint64_t)a5 translationHandle:(void *)a6 offsetToBraille:(unsigned __int16)a7 prefixCodeLength:(unsigned __int16)a8 preprocessedMap:(id)a9 optimize:(BOOL)a10;
- (void)_populateTextForPrintBrailleLocations:(id *)a3 inLength:(unint64_t)a4 outLength:(unint64_t)a5 offsetToBraille:(unsigned __int16)a6 prefixLength:(unint64_t)a7 optimize:(BOOL)a8;
- (void)_unloadTables;
- (void)_unloadTechnicalTable;
- (void)dealloc;
- (void)loadNemethTable;
- (void)setActiveTable:(id)a3;
@end

@implementation DBTDuxburyBrailleTranslator

- (DBTDuxburyBrailleTranslator)init
{
  v6.receiver = self;
  v6.super_class = DBTDuxburyBrailleTranslator;
  v2 = [(DBTDuxburyBrailleTranslator *)&v6 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(DBTComposedCharactersPreprocessor) init];
    composedCharacterPreprocessor = v2->_composedCharacterPreprocessor;
    v2->_composedCharacterPreprocessor = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(DBTDuxburyBrailleTranslator *)self _unloadTables];
  [(DBTDuxburyBrailleTranslator *)self _unloadTechnicalTable];
  DBTWideCharBufferFree(self->_inBuffer);
  DBTWideCharBufferFree(self->_outBuffer);
  DBTWideCharBufferFree(self->_tmpBuffer);
  v3.receiver = self;
  v3.super_class = DBTDuxburyBrailleTranslator;
  [(DBTDuxburyBrailleTranslator *)&v3 dealloc];
}

- (void)_unloadTables
{
  v3 = DBTLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Begin unloading tables", buf, 2u);
  }

  v4 = BRLTRN_Destroy(self->_translationHandle);
  self->_translationHandle = 0;
  if (v4)
  {
    v5 = DBTLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DBTDuxburyBrailleTranslator _unloadTables];
    }
  }

  v6 = BRLTRN_Destroy(self->_backTranslationHandle);
  self->_backTranslationHandle = 0;
  if (v6)
  {
    v7 = DBTLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBTDuxburyBrailleTranslator _unloadTables];
    }
  }

  activeTable = self->_activeTable;
  self->_activeTable = 0;

  eightDotTranslationTable = self->_eightDotTranslationTable;
  self->_eightDotTranslationTable = 0;

  eightDotBackTranslationTable = self->_eightDotBackTranslationTable;
  self->_eightDotBackTranslationTable = 0;

  printPreprocessors = self->_printPreprocessors;
  self->_printPreprocessors = 0;

  self->_contracted = 0;
  *&self->_supportsEightDot = 0;
  v12 = DBTLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "End unloading tables", v13, 2u);
  }
}

- (void)_unloadTechnicalTable
{
  v3 = DBTLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Begin unloading technical table", buf, 2u);
  }

  technicalTranslationHandle = self->_technicalTranslationHandle;
  if (technicalTranslationHandle)
  {
    if (BRLTRN_Destroy(technicalTranslationHandle))
    {
      v5 = DBTLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [DBTDuxburyBrailleTranslator _unloadTables];
      }
    }

    self->_technicalTranslationHandle = 0;
  }

  technicalBackTranslationHandle = self->_technicalBackTranslationHandle;
  if (technicalBackTranslationHandle)
  {
    if (BRLTRN_Destroy(technicalBackTranslationHandle))
    {
      v7 = DBTLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [DBTDuxburyBrailleTranslator _unloadTables];
      }
    }

    self->_technicalBackTranslationHandle = 0;
  }

  v8 = DBTLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "End unloading technical table", v9, 2u);
  }
}

- (id)_tableInfoForKey:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 6)
  {
    v4 = [v3 substringWithRange:{objc_msgSend(v3, "length") - 5, 5}];
    if ([&off_353C8 containsObject:v4])
    {
      v5 = -5;
      goto LABEL_8;
    }
  }

  v6 = v3;
  if ([v3 length] < 4)
  {
    goto LABEL_11;
  }

  v4 = [v3 substringWithRange:{objc_msgSend(v3, "length") - 3, 3}];
  if (![&off_353E0 containsObject:v4])
  {
    v6 = v3;
    goto LABEL_10;
  }

  v5 = -3;
LABEL_8:
  v6 = [v3 substringToIndex:{objc_msgSend(v3, "length") + v5}];

LABEL_10:
LABEL_11:
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 pathForResource:@"Tables" ofType:@"plist"];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSDictionary) initWithContentsOfFile:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_newPrintPreprocessorsForTable:(id)a3 primaryLanguageCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = objc_opt_new();
  [v7 addObject:v8];

  if ([v5 isEqualToString:@"jpn"])
  {
    v9 = objc_opt_new();
    [v7 addObject:v9];
    v10 = objc_opt_new();
    [v10 setStringTransform:kCFStringTransformLatinHiragana];
    [v7 addObject:v10];
  }

  if (([v5 isEqualToString:@"zh-cn"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"zh-tw"))
  {
    v11 = objc_opt_new();
    [v11 setTokenizerUnit:1];
    [v7 addObject:v11];
    v12 = objc_opt_new();
    [v12 setStringTransform:kCFStringTransformMandarinLatin];
    [v12 setCharacterLevelStringTransform:NSStringTransformMandarinToLatin];
    [v7 addObject:v12];
  }

  v13 = [[BRLTEmojiPrintPreprocessor alloc] initWithPrimaryLanguageCode:v6];

  [v7 addObject:v13];
  v14 = objc_opt_new();
  [v7 addObject:v14];

  return v7;
}

- (unint64_t)_prepBuffersForConversion:(BOOL)a3 withString:(id)a4 mode:(unint64_t)a5 prefixLength:(unint64_t)a6
{
  v9 = a4;
  v10 = [v9 length];
  if (v10 + 4 >= self->_inBufferLen)
  {
    DBTWideCharBufferFree(self->_inBuffer);
    DBTWideCharBufferFree(self->_outBuffer);
    DBTWideCharBufferFree(self->_tmpBuffer);
    v11 = 4 * (v10 + 20);
    self->_inBufferLen = v10 + 20;
    self->_outBufferLen = v11;
    self->_tmpBufferLen = v11;
    self->_inBuffer = DBTWideCharBufferOfLength(v10 + 20, 1);
    self->_outBuffer = DBTWideCharBufferOfLength(self->_outBufferLen, 1);
    self->_tmpBuffer = DBTWideCharBufferOfLength(self->_tmpBufferLen, 1);
  }

  if (a5 == 4)
  {
    v12 = &_TechnicalPrefix;
    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (self->_supportsContraction)
  {
    v12 = &_UnContractedPrefix;
    if (a5 == 3)
    {
      v12 = &_ContractedGrade2Prefix;
    }

    if (a6)
    {
LABEL_10:
      inBuffer = self->_inBuffer;
      v14 = a6;
      do
      {
        v15 = *v12++;
        *inBuffer++ = v15;
        --v14;
      }

      while (v14);
    }
  }

LABEL_12:
  DBTAppendNSStringIntoWideCharBufferAtOffset(v9, self->_inBuffer, a6);

  return v10;
}

- (void)setActiveTable:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:self->_activeTable] & 1) == 0)
  {
    [(DBTDuxburyBrailleTranslator *)self _unloadTables];
    if ([(DBTDuxburyBrailleTranslator *)self _loadTable:v4 translationHandle:&self->_translationHandle backTranslationHandle:&self->_backTranslationHandle])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [(DBTDuxburyBrailleTranslator *)self _tableInfoForKey:v4];
      v7 = [v6 objectForKey:@"8dot"];
      if ([v7 length])
      {
        v8 = [v5 pathForResource:v7 ofType:@"plist"];
        v9 = [NSDictionary dictionaryWithContentsOfFile:v8];
        v10 = [v9 objectForKey:@"Table"];
        [(DBTDuxburyBrailleTranslator *)self _eightDotTablesFromRawTable:v10 translationTable:&self->_eightDotTranslationTable backTranslationTable:&self->_eightDotBackTranslationTable];
      }

      v11 = [v5 objectForInfoDictionaryKey:@"BrailleTables"];
      v12 = [v11 objectForKey:v4];
      v13 = [v12 objectForKey:@"contracted"];
      self->_contracted = [v13 BOOLValue];

      v14 = [v12 objectForKey:@"uncontracted"];
      v15 = ([v14 BOOLValue] & 1) != 0 || self->_contracted;
      self->_supportsContraction = v15;

      v16 = [v12 objectForKey:@"supportsTechnical"];
      self->_supportsTechnical = [v16 BOOLValue];

      v17 = [v12 objectForKey:@"supports8dot"];
      v18 = [v17 BOOLValue] && -[NSDictionary count](self->_eightDotTranslationTable, "count") && -[NSDictionary count](self->_eightDotBackTranslationTable, "count") != 0;
      self->_supportsEightDot = v18;

      v19 = [v12 objectForKey:@"supportsIPA"];
      self->_supportsIPA = [v19 BOOLValue];

      v20 = [v12 objectForKey:@"languages"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 firstObject];
      }

      else
      {
        v22 = DBTLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(DBTDuxburyBrailleTranslator *)v4 setActiveTable:v22];
        }

        v21 = 0;
      }

      v23 = [(DBTDuxburyBrailleTranslator *)self _newPrintPreprocessorsForTable:v4 primaryLanguageCode:v21];
      printPreprocessors = self->_printPreprocessors;
      self->_printPreprocessors = v23;

      v25 = [v4 copy];
      activeTable = self->_activeTable;
      self->_activeTable = v25;
    }

    else
    {
      [(DBTDuxburyBrailleTranslator *)self _unloadTables];
    }
  }
}

- (void)loadNemethTable
{
  if (!self->_technicalTranslationHandle && ![(DBTDuxburyBrailleTranslator *)self _loadTable:@"nemeth" translationHandle:&self->_technicalTranslationHandle backTranslationHandle:&self->_technicalBackTranslationHandle])
  {

    [(DBTDuxburyBrailleTranslator *)self _unloadTechnicalTable];
  }
}

- (BOOL)_loadTable:(id)a3 translationHandle:(void *)a4 backTranslationHandle:(void *)a5
{
  v8 = a3;
  v9 = [(DBTDuxburyBrailleTranslator *)self _tableInfoForKey:v8];
  v10 = DBTLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Begin loading tables %@", buf, 0xCu);
    }

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 resourcePath];
    v13 = DBTWideCharBufferOfFullPath(v12, @"chitab", @"txt");
    v38 = a5;
    v39 = v9;
    if (a4)
    {
      v36 = a4;
      v37 = v8;
      v14 = v13;
      v15 = [v9 objectForKey:@"trans"];
      v16 = [v15 objectForKey:@"btb"];
      v17 = [v15 objectForKey:@"sct"];
      *buf = 0;
      v18 = DBTWideCharBufferOfFullPath(v12, v16, @"btb");
      v19 = DBTWideCharBufferOfFullPath(v12, v17, @"sct");
      v20 = BRLTRN_CreateW(v18, v19, buf, 0, v14);
      DBTWideCharBufferFree(v18);
      DBTWideCharBufferFree(v19);
      if (v20)
      {
        v21 = v17;
        v22 = DBTLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [DBTDuxburyBrailleTranslator _unloadTables];
        }

        DBTWideCharBufferFree(v14);
        v23 = 0;
        v8 = v37;
        goto LABEL_21;
      }

      v33 = *buf;
      *(*buf + 240) = 0;
      v33[73] = 4;
      *v36 = v33;

      v24 = v17;
      a4 = v16;
      v8 = v37;
      v13 = v14;
      v9 = v39;
      if (!v38)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v24 = 0;
      if (!a5)
      {
LABEL_18:
        v21 = v24;
        v16 = a4;
LABEL_20:
        DBTWideCharBufferFree(v13);
        v23 = 1;
LABEL_21:

        v9 = v39;
        goto LABEL_22;
      }
    }

    v25 = v13;
    v26 = [v9 objectForKey:@"back"];
    v16 = [v26 objectForKey:@"btb"];

    v27 = [v26 objectForKey:@"sct"];

    *buf = 0;
    v28 = DBTWideCharBufferOfFullPath(v12, v16, @"btb");
    v29 = DBTWideCharBufferOfFullPath(v12, v27, @"sct");
    v30 = BRLTRN_CreateW(v28, v29, buf, 0, v25);
    DBTWideCharBufferFree(v28);
    DBTWideCharBufferFree(v29);
    if (v30)
    {
      v31 = v8;
      v32 = DBTLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [DBTDuxburyBrailleTranslator _unloadTables];
      }

      DBTWideCharBufferFree(v25);
      v23 = 0;
      v8 = v31;
      v21 = v27;
      goto LABEL_21;
    }

    v34 = *buf;
    *(*buf + 240) = 0;
    v34[73] = 4;
    *v38 = v34;

    v13 = v25;
    v21 = v27;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [DBTDuxburyBrailleTranslator _loadTable:v8 translationHandle:v11 backTranslationHandle:?];
  }

  v23 = 0;
LABEL_22:

  return v23;
}

- (void)_populatePrintBrailleForTextLocations:(id *)a3 inLength:(unint64_t)a4 outLength:(unint64_t)a5 translationHandle:(void *)a6 offsetToBraille:(unsigned __int16)a7 prefixCodeLength:(unsigned __int16)a8 preprocessedMap:(id)a9 optimize:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v67 = a7;
  v64 = a9;
  v62 = 8 * a5;
  v17 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
  v63 = &v61;
  v18 = &v61 - ((4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * a4);
  v65 = a3;
  if (a4)
  {
    v19 = v11 - v10;
    v20 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = vdupq_n_s64(a4 - 1);
    v22 = xmmword_2B8F0;
    v23 = xmmword_2B900;
    v24 = v18 + 8;
    v25 = vdupq_n_s64(4uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v21, v23));
      if (vuzp1_s16(v26, *v21.i8).u8[0])
      {
        *(v24 - 2) = v19;
      }

      if (vuzp1_s16(v26, *&v21).i8[2])
      {
        *(v24 - 1) = v19;
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
      {
        *v24 = v19;
        v24[1] = v19;
      }

      v22 = vaddq_s64(v22, v25);
      v23 = vaddq_s64(v23, v25);
      v24 += 4;
      v20 -= 4;
    }

    while (v20);
    bzero(self->_tmpBuffer, self->_tmpBufferLen);
    if (!a10)
    {
      v27 = v10;
      inBuffer = self->_inBuffer;
      v29 = a4;
      v30 = (&v61 - ((4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
      while (1)
      {
        v31 = BRLTRN_TranslateString(a6, inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), v27, &v67);
        inBuffer = self->_inBuffer;
        v32 = inBuffer[v27] == 31 ? *(v30 - 1) : v67 - v10;
        *v30 = v32;
        if (v31)
        {
          goto LABEL_29;
        }

        ++v30;
        ++v27;
        if (!--v29)
        {
          goto LABEL_30;
        }
      }
    }
  }

  else
  {
    bzero(self->_tmpBuffer, self->_tmpBufferLen);
    if (!a10)
    {
      goto LABEL_30;
    }
  }

  v66 = 0;
  LocationMap = BRLTRN_TranslateStringAndGetLocationMap(a6, self->_inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), &v66);
  v34 = v66;
  if (!LocationMap && a4)
  {
    v35 = &v66[2 * v10];
    v36 = &self->_inBuffer[v10];
    v37 = a4;
    v38 = (&v61 - ((4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v39 = *v36++;
      if (v39 == 31)
      {
        v40 = *(v38 - 1);
      }

      else
      {
        v40 = *v35 - v10;
      }

      *v38++ = v40;
      v35 += 2;
      --v37;
    }

    while (v37);
  }

  if (v34)
  {
    free(v34);
  }

  if (LocationMap)
  {
LABEL_29:
    v41 = v62;
    bzero(v17, v62);
    v43 = v64;
    v42 = v65;
    goto LABEL_54;
  }

LABEL_30:
  v43 = v64;
  v44 = [v64 bytes];
  v45 = a4 - 1;
  v42 = v65;
  v41 = v62;
  if ((a4 - 1) >= 0)
  {
    v46 = 0;
    v47 = 0;
    v48 = self->_inBuffer;
    v49 = &v48[v10];
    v50 = a5;
    do
    {
      v51 = a4;
      a4 = v45;
      if (v45 && *&v18[4 * v45] == *&v18[4 * v51 - 8])
      {
        if (v45 >= 3 && v49[v51 - 2] == 31 && (v52 = &v48[v51 + v10], *(v52 - 12) == 101) && *(v52 - 16) != 28)
        {
          v53 = 0;
          v47 = 1;
        }

        else
        {
          v53 = 1;
        }
      }

      else
      {
        v53 = 0;
      }

      v54 = v49[a4];
      v55 = v46 | (v54 == 31) & v47;
      if ((v53 & 1) == 0 && (v55 & 1) == 0)
      {
        v56 = *&v18[4 * a4];
        if (v50 >= a5)
        {
          v50 = a5;
        }

        v57 = v50 > v56;
        v58 = v50 - v56;
        if (v57)
        {
          v59 = &v17[8 * v56];
          do
          {
            v60 = a4;
            if (v44)
            {
              v60 = v44[a4];
            }

            *v59++ = v60;
            --v58;
          }

          while (v58);
        }

        v50 = v56;
      }

      v47 &= v54 != 31;
      v46 = (v54 != 28) & v55;
      v45 = a4 - 1;
    }

    while (a4 > 0);
  }

LABEL_54:
  *v42 = [NSData dataWithBytes:v17 length:v41];
  free(v17);
}

- (id)_scrubDollarCodesInBuffer:(int *)a3 originalLength:(unint64_t)a4 originalLocations:(id)a5 newLocations:(id)a6 convertASCIIBrailleToUnicode:(BOOL)a7 limitRange:(_NSRange)a8
{
  v8 = a7;
  v12 = a5;
  v13 = a6;
  v23 = v12;
  if (v12)
  {
    v12 = [v12 bytes];
  }

  v14 = 0;
  if (a4)
  {
    v15 = 0;
    do
    {
      v16 = a3[v15];
      if (v16 != 28 || v15 >= a4)
      {
LABEL_12:
        if (v8)
        {
          v16 = ASCIIBrailleToUnicode(v16);
        }

        a3[v14++] = v16;
        if (v12)
        {
          if (a8.location == 0x7FFFFFFFFFFFFFFFLL || ((v19 = *&v12[8 * v15], v19 >= a8.location) ? (v20 = v19 > a8.location + a8.length) : (v20 = 1), !v20))
          {
            [v13 appendBytes:&v12[8 * v15] length:8];
          }
        }
      }

      else
      {
        v18 = v15;
        while (a3[v18] != 31)
        {
          if (a4 == ++v18)
          {
            goto LABEL_12;
          }
        }

        v15 = v18;
      }

      ++v15;
    }

    while (v15 < a4);
  }

  v21 = DBTNSStringFromWideCharBuffer(a3, v14);

  return v21;
}

+ (_NSRange)_mappedRange:(_NSRange)a3 withPreprocessedMap:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = v6;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = [v6 bytes];
    v10 = [v7 length];
    v11 = v10 >> 3;
    if (v10 < 8)
    {
LABEL_7:
      v8 = location;
    }

    else
    {
      v8 = 0;
      while (v9[v8] < location)
      {
        if (v11 == ++v8)
        {
          goto LABEL_7;
        }
      }
    }

    if (v8 < v11)
    {
      v12 = v8;
      while (v9[v12] < location + length)
      {
        if (v11 == ++v12)
        {
          goto LABEL_14;
        }
      }

      v11 = v12;
    }

LABEL_14:
    length = v11 - v8;
  }

  v13 = v8;
  v14 = length;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)_printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7 optimize:(BOOL)a8
{
  length = a6.length;
  location = a6.location;
  v53 = a8;
  v12 = a7;
  composedCharacterPreprocessor = self->_composedCharacterPreprocessor;
  v69 = 0;
  v61 = v12;
  v14 = [(DBTComposedCharactersPreprocessor *)composedCharacterPreprocessor preprocessPrintString:a3 withLocationMap:&v69 isEightDot:0 textFormattingRanges:?];
  v15 = v69;
  v16 = v14;
  v17 = [(NSArray *)self->_printPreprocessors count];
  v18 = v16;
  v19 = v15;
  v60 = self;
  if (v17)
  {
    v54 = a4;
    v55 = a5;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v20 = self->_printPreprocessors;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v65 objects:v70 count:16];
    v58 = v16;
    v18 = v16;
    v59 = v15;
    v19 = v15;
    if (v21)
    {
      v22 = v21;
      v23 = *v66;
      v18 = v58;
      v19 = v59;
      do
      {
        v24 = 0;
        v25 = v18;
        v26 = v19;
        do
        {
          if (*v66 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v65 + 1) + 8 * v24);
          v64 = 0;
          v18 = [v27 preprocessPrintString:v25 withLocationMap:&v64 isEightDot:0 textFormattingRanges:v61];
          v28 = v64;

          v19 = [BRLTPreprocessorHelper mergeLocationMap:v26 withLocationMap:v28];

          v24 = v24 + 1;
          v25 = v18;
          v26 = v19;
        }

        while (v22 != v24);
        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v22);
    }

    v15 = v59;
    v16 = v58;
    a5 = v55;
    self = v60;
    a4 = v54;
  }

  translationHandle = self->_translationHandle;
  if (a4 == 4)
  {
    if (translationHandle)
    {
      translationHandle = self->_technicalTranslationHandle;
    }

    v30 = 9;
  }

  else if (self->_supportsContraction)
  {
    v30 = 4;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v32 = [(DBTDuxburyBrailleTranslator *)self _prepBuffersForConversion:1 withString:v18 mode:a4 prefixLength:v30];
  v63 = 0;
  bzero(self->_outBuffer, self->_outBufferLen);
  if (BRLTRN_TranslateString(translationHandle, self->_inBuffer, self->_outBuffer, LOWORD(self->_outBufferLen), v30, &v63))
  {
    v33 = DBTLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [DBTDuxburyBrailleTranslator _unloadTables];
    }

    v34 = 0;
  }

  else
  {
    DBTWideCharBufferLength(self->_outBuffer);
    v59 = v52;
    v35 = __chkstk_darwin();
    v37 = &v52[-v36];
    v38 = v35 - v31;
    if (v35 != v31)
    {
      v39 = &v60->_outBuffer[v31];
      v40 = v37;
      v41 = v35 - v31;
      do
      {
        v42 = *v39++;
        *v40++ = v42;
        --v41;
      }

      while (v41);
    }

    if (a5)
    {
      v62 = 0;
      LOBYTE(v51) = v53;
      v43 = v60;
      v44 = v32;
      v45 = v35 - v31;
      [(DBTDuxburyBrailleTranslator *)v60 _populatePrintBrailleForTextLocations:&v62 inLength:v44 outLength:v38 translationHandle:translationHandle offsetToBraille:v63 prefixCodeLength:v31 preprocessedMap:v19 optimize:v51];
      v46 = v62;
      v47 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v46 length]);
      v38 = v45;
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
      v43 = v60;
    }

    v34 = [(DBTDuxburyBrailleTranslator *)v43 _scrubDollarCodesInBuffer:v37 originalLength:v38 originalLocations:v46 newLocations:v48 convertASCIIBrailleToUnicode:1 limitRange:location, length];
    if (a5)
    {
      v49 = v48;
      *a5 = v48;
    }
  }

  return v34;
}

- (id)printBrailleForText:(id)a3 mode:(unint64_t)a4 locations:(id *)a5 textPositionsRange:(_NSRange)a6 textFormattingRanges:(id)a7
{
  length = a6.length;
  location = a6.location;
  v13 = a3;
  v14 = a7;
  v15 = _os_feature_enabled_impl();
  if (a4 != 4 && v15)
  {
    if (!self->_supportsEightDot)
    {
      if (self->_contracted)
      {
        a4 = 3;
      }

      else
      {
        a4 = 1;
      }

      goto LABEL_15;
    }

LABEL_10:
    v16 = [(DBTDuxburyBrailleTranslator *)self _eightDotPrintBrailleForText:v13 locations:a5 textFormattingRanges:v14];
    goto LABEL_16;
  }

  if (a4 == 4)
  {
    if (self->_supportsTechnical)
    {
      v16 = [(DBTDuxburyBrailleTranslator *)self printBrailleForTechnicalText:v13 useTechnicalTable:1 locations:a5];
      goto LABEL_16;
    }

    a4 = 4;
  }

  else if (a4 == 2)
  {
    if (self->_supportsEightDot)
    {
      goto LABEL_10;
    }

    a4 = 2;
  }

LABEL_15:
  v16 = [(DBTDuxburyBrailleTranslator *)self _printBrailleForText:v13 mode:a4 locations:a5 textPositionsRange:location textFormattingRanges:length, v14];
LABEL_16:
  v17 = v16;

  return v17;
}

- (id)printBrailleForTechnicalText:(id)a3 useTechnicalTable:(BOOL)a4 locations:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (v6 && (([(DBTDuxburyBrailleTranslator *)self loadNemethTable], self->_supportsTechnical) || self->_technicalTranslationHandle))
  {
    v9 = [v8 length];
    v10 = self;
    v11 = v8;
    v12 = 4;
  }

  else
  {
    v9 = [v8 length];
    v10 = self;
    v11 = v8;
    v12 = 1;
  }

  v13 = [(DBTDuxburyBrailleTranslator *)v10 _printBrailleForText:v11 mode:v12 locations:a5 textPositionsRange:0 textFormattingRanges:v9, 0];

  return v13;
}

- (void)_populateTextForPrintBrailleLocations:(id *)a3 inLength:(unint64_t)a4 outLength:(unint64_t)a5 offsetToBraille:(unsigned __int16)a6 prefixLength:(unint64_t)a7 optimize:(BOOL)a8
{
  v10 = a6;
  v11 = a5;
  v38 = a6;
  v36 = 8 * a5;
  v15 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
  v16 = (&v36 - ((4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = v10 - a7;
  bzero(self->_tmpBuffer, self->_tmpBufferLen);
  if (!a8)
  {
    if (a4 >= 2)
    {
      v23 = a4 - 1;
      v24 = v16 + 1;
      v25 = a7 + 1;
      while (1)
      {
        v26 = BRLTRN_TranslateString(self->_backTranslationHandle, self->_inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), v25, &v38);
        *v24 = v38 - a7;
        if (v26)
        {
          goto LABEL_15;
        }

        ++v24;
        ++v25;
        if (!--v23)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

  v37 = 0;
  LocationMap = BRLTRN_TranslateStringAndGetLocationMap(self->_backTranslationHandle, self->_inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), &v37);
  v18 = v37;
  if (LocationMap || !a4)
  {
    if (!v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = &v37[2 * a7];
    v20 = (&v36 - ((4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = a4;
    do
    {
      v22 = *v19;
      v19 += 2;
      *v20++ = v22 - a7;
      --v21;
    }

    while (v21);
  }

  free(v18);
LABEL_14:
  if (!LocationMap)
  {
LABEL_16:
    v28 = a4 - 1;
    v27 = v36;
    if ((a4 - 1) < 0)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v29 = a4;
      a4 = v28;
      if (!v28)
      {
        break;
      }

      v30 = v16[v28];
      if (v30 != v16[v29 - 2])
      {
        goto LABEL_21;
      }

LABEL_29:
      v28 = a4 - 1;
      if (a4 <= 0)
      {
        goto LABEL_30;
      }
    }

    v30 = *v16;
LABEL_21:
    v31 = v30;
    if (v11 > v30)
    {
      v32 = 0;
      v33 = vdupq_n_s64(v11 - v31 - 1);
      v34 = &v15[8 * v31];
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v32), xmmword_2B900)));
        if (v35.i8[0])
        {
          *&v34[8 * v32] = a4;
        }

        if (v35.i8[4])
        {
          *&v34[8 * v32 + 8] = a4;
        }

        v32 += 2;
      }

      while (((v11 - v31 + 1) & 0xFFFFFFFFFFFFFFFELL) != v32);
    }

    v11 = v31;
    goto LABEL_29;
  }

LABEL_15:
  v27 = v36;
  bzero(v15, v36);
LABEL_30:
  *a3 = [NSData dataWithBytes:v15 length:v27, v36];
  free(v15);
}

- (id)textForPrintBraille:(id)a3 mode:(unint64_t)a4 locations:(id *)a5
{
  v8 = a3;
  v9 = _os_feature_enabled_impl();
  if (a4 != 4 && v9)
  {
    if (!self->_supportsEightDot)
    {
      if (self->_contracted)
      {
        a4 = 3;
      }

      else
      {
        a4 = 1;
      }

      goto LABEL_11;
    }

LABEL_9:
    v10 = [(DBTDuxburyBrailleTranslator *)self _eightDotTextForPrintBraille:v8 locations:a5];
    goto LABEL_12;
  }

  if (a4 == 2)
  {
    if (self->_supportsEightDot)
    {
      goto LABEL_9;
    }

    a4 = 2;
  }

LABEL_11:
  v10 = [(DBTDuxburyBrailleTranslator *)self _textForPrintBraille:v8 mode:a4 locations:a5];
LABEL_12:
  v11 = v10;

  return v11;
}

- (id)_eightDotPrintBrailleForText:(id)a3 locations:(id *)a4 textFormattingRanges:(id)a5
{
  v54 = a4;
  v7 = a5;
  composedCharacterPreprocessor = self->_composedCharacterPreprocessor;
  v70 = 0;
  v59 = v7;
  v9 = [(DBTComposedCharactersPreprocessor *)composedCharacterPreprocessor preprocessPrintString:a3 withLocationMap:&v70 isEightDot:0 textFormattingRanges:?];
  v10 = v70;
  v11 = v9;
  v12 = [(NSArray *)self->_printPreprocessors count];
  v56 = v11;
  v57 = self;
  v13 = v10;
  v55 = v10;
  if (v12)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v58 = self->_printPreprocessors;
    v14 = [(NSArray *)v58 countByEnumeratingWithState:&v66 objects:v71 count:16];
    v11 = v56;
    v13 = v10;
    if (v14)
    {
      v15 = v14;
      v16 = *v67;
      v13 = v55;
      v11 = v56;
      do
      {
        v17 = 0;
        v18 = v11;
        v19 = v13;
        do
        {
          if (*v67 != v16)
          {
            objc_enumerationMutation(v58);
          }

          v20 = *(*(&v66 + 1) + 8 * v17);
          v65 = 0;
          v11 = [v20 preprocessPrintString:v18 withLocationMap:&v65 isEightDot:1 textFormattingRanges:v59];
          v21 = v65;

          v13 = [BRLTPreprocessorHelper mergeLocationMap:v19 withLocationMap:v21];

          v17 = v17 + 1;
          v18 = v11;
          v19 = v13;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v58 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v15);
    }

    self = v57;
  }

  Length = CFStringGetLength(v11);
  v58 = &v54;
  v23 = __chkstk_darwin();
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  *&v61 = v11;
  v64 = 0;
  *&v63 = v23;
  CharactersPtr = CFStringGetCharactersPtr(v11);
  CStringPtr = 0;
  *(&v61 + 1) = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v11, 0x600u);
  }

  *(&v63 + 1) = 0;
  v64 = 0;
  *&v62 = CStringPtr;
  if (Length >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 64;
    do
    {
      if (v29 >= 4)
      {
        v31 = 4;
      }

      else
      {
        v31 = v29;
      }

      v32 = v63;
      if (v63 <= v29)
      {
        v34 = 0;
      }

      else
      {
        if (*(&v61 + 1))
        {
          v33 = (*(&v61 + 1) + 2 * *(&v62 + 1));
LABEL_20:
          v34 = v33[v29];
          goto LABEL_22;
        }

        if (!v62)
        {
          v38 = *(&v63 + 1);
          if (v64 <= v29 || *(&v63 + 1) > v29)
          {
            v40 = -v31;
            v41 = v31 + v28;
            v42 = v30 - v31;
            v43 = v29 + v40;
            v44 = v43 + 64;
            if (v43 + 64 >= v63)
            {
              v44 = v63;
            }

            *(&v63 + 1) = v43;
            v64 = v44;
            if (v63 >= v42)
            {
              v32 = v42;
            }

            v73.location = v43 + *(&v62 + 1);
            v73.length = v32 + v41;
            CFStringGetCharacters(v61, v73, v60);
            v38 = *(&v63 + 1);
          }

          v33 = &v60[-v38];
          goto LABEL_20;
        }

        v34 = *(v62 + *(&v62 + 1) + v29);
      }

LABEL_22:
      v35 = [NSNumber numberWithUnsignedInteger:v34];
      v36 = [(NSDictionary *)self->_eightDotTranslationTable objectForKey:v35];
      if (v36 || ([(NSDictionary *)self->_eightDotTranslationTable objectForKey:@"UndefinedSymbol"], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v37 = v36;
        *&v25[2 * v29] = [v36 unsignedIntegerValue];
      }

      else
      {
        *&v25[2 * v29] = 10240;
      }

      ++v29;
      --v28;
      ++v30;
      self = v57;
    }

    while (Length != v29);
  }

  v45 = [NSString stringWithCharacters:v25 length:Length];
  v46 = v54;
  v47 = v55;
  if (v54)
  {
    v48 = [v13 bytes];
    if ([v45 length] >= 1)
    {
      v49 = __chkstk_darwin();
      v51 = 0;
      do
      {
        v52 = v51;
        if (v48)
        {
          v52 = v48[v51];
        }

        *(&(&v54)[v51] - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0)) = v52;
        v51 = (v51 + 1);
      }

      while (v49 != v51);
      *v46 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
    }
  }

  return v45;
}

- (id)_eightDotTextForPrintBraille:(id)a3 locations:(id *)a4
{
  v6 = a3;
  Length = CFStringGetLength(v6);
  v8 = __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v6;
  v49 = 0;
  v50 = v8;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  memset(buffer, 0, sizeof(buffer));
  v51 = 0;
  v52 = 0;
  v48 = CStringPtr;
  if (Length >= 1)
  {
    v42[1] = v42;
    v43 = v6;
    v44 = a4;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 64;
    while (1)
    {
      if (v15 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v15;
      }

      v18 = v50;
      if (v50 <= v15)
      {
        v20 = 0;
      }

      else
      {
        if (v47)
        {
          v19 = &v47[v49];
        }

        else
        {
          if (v48)
          {
            v20 = v48[v49 + v15];
            goto LABEL_13;
          }

          v24 = v51;
          if (v52 <= v15 || v51 > v15)
          {
            v26 = -v17;
            v27 = v17 + v13;
            v28 = v16 - v17;
            v29 = v15 + v26;
            v30 = v29 + 64;
            if (v29 + 64 >= v50)
            {
              v30 = v50;
            }

            v51 = v29;
            v52 = v30;
            if (v50 >= v28)
            {
              v18 = v28;
            }

            v54.location = v29 + v49;
            v54.length = v18 + v27;
            CFStringGetCharacters(v46, v54, buffer);
            v24 = v51;
          }

          v19 = buffer - v24;
        }

        v20 = v19[v15];
      }

LABEL_13:
      v21 = [NSNumber numberWithUnsignedInteger:v20];
      v22 = [(NSDictionary *)self->_eightDotBackTranslationTable objectForKey:v21];
      v23 = v22;
      if (v22)
      {
        *&v10[2 * v15] = [v22 unsignedIntegerValue];
        ++v14;
      }

      ++v15;
      --v13;
      ++v16;
      if (Length == v15)
      {
        a4 = v44;
        if (v14 <= 0)
        {
          v31 = 0;
        }

        else
        {
          v31 = [NSString stringWithCharacters:v10 length:v14];
        }

        v6 = v43;
        if (a4)
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }
    }
  }

  v31 = 0;
  if (a4)
  {
LABEL_35:
    if ([v31 length] >= 1)
    {
      v32 = __chkstk_darwin();
      v34 = v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = 0;
      v36 = xmmword_2B900;
      v38 = vdupq_n_s64(v37);
      v39 = vdupq_n_s64(2uLL);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v38, v36));
        if (v40.i8[0])
        {
          *&v34[8 * v35] = v35;
        }

        if (v40.i8[4])
        {
          *&v34[8 * v35 + 8] = v35 + 1;
        }

        v35 += 2;
        v36 = vaddq_s64(v36, v39);
      }

      while (((v32 + 1) & 0xFFFFFFFFFFFFFFFELL) != v35);
      *a4 = [NSData dataWithBytes:*v36.i64 length:?];
    }
  }

LABEL_43:

  return v31;
}

- (void)_eightDotTablesFromRawTable:(id)a3 translationTable:(id *)a4 backTranslationTable:(id *)a5
{
  v5 = a3;
  v6 = [objc_allocWithZone(NSMutableDictionary) init];
  v7 = [objc_allocWithZone(NSMutableDictionary) init];
  v50 = [objc_allocWithZone(NSMutableArray) init];
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v49 = *v60;
    v44 = v8;
    v45 = v6;
    do
    {
      v11 = 0;
      v46 = v10;
      do
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v59 + 1) + 8 * v11);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSLog(@"Invalid key: %@", v12);
          goto LABEL_58;
        }

        [v50 removeAllObjects];
        v13 = [v8 objectForKey:v12];
        v48 = v11;
        if (objc_opt_isKindOfClass())
        {
          if (([v13 unsignedIntegerValue] & 0xFF00) != 0x2800)
          {
            [v50 addObject:v13];
          }
        }

        else if (objc_opt_isKindOfClass())
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v14 = v13;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v56;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v56 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v55 + 1) + 8 * i);
                if (objc_opt_isKindOfClass())
                {
                  if (([v20 unsignedIntegerValue] & 0xFF00) != 0x2800)
                  {
                    [v50 addObject:v20];
                  }
                }

                else
                {
                  NSLog(@"Invalid sub-value: %@", v12);
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v55 objects:v64 count:16];
            }

            while (v17);
          }

          v8 = v44;
          v10 = v46;
          v13 = v14;
          v6 = v45;
        }

        else
        {
          NSLog(@"Invalid value: %@", v12);
        }

        v47 = v13;
        if ([v12 isEqualToString:@"UndefinedSymbol"])
        {
          v21 = [v7 objectForKey:v12];

          if (v21)
          {
            NSLog(@"Duplicate undefined translation symbol: %@", v12);
          }

          v22 = [v50 objectAtIndex:0];
          v23 = [v22 integerValue];
          if (v23 < 1)
          {
            v27 = 10240;
          }

          else
          {
            v24 = 0;
            do
            {
              v25 = ~(10 * (v23 / 0xA)) + v23;
              if (v25 <= 7)
              {
                v24 |= _DotValue[2 * v25];
              }

              v26 = v23 > 9;
              v23 /= 0xAuLL;
            }

            while (v26);
            v27 = v24 + 10240;
          }

          v32 = [NSNumber numberWithUnsignedInteger:v27];
          [v7 setObject:v32 forKey:v12];
        }

        else
        {
          v28 = [v12 integerValue];
          if (v28 < 1)
          {
            v31 = 10240;
          }

          else
          {
            v29 = 0;
            do
            {
              v30 = ~(10 * (v28 / 0xA)) + v28;
              if (v30 <= 7)
              {
                v29 |= _DotValue[2 * v30];
              }

              v26 = v28 > 9;
              v28 /= 0xAuLL;
            }

            while (v26);
            v31 = v29 + 10240;
          }

          v22 = [NSNumber numberWithUnsignedInteger:v31];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v33 = v50;
          v34 = [v33 countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v52;
            do
            {
              for (j = 0; j != v35; j = j + 1)
              {
                if (*v52 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v51 + 1) + 8 * j);
                v39 = [v7 objectForKey:v38];

                if (v39)
                {
                  NSLog(@"Duplicate translation value for key: %@", v38);
                }

                [v7 setObject:v22 forKey:v38];
              }

              v35 = [v33 countByEnumeratingWithState:&v51 objects:v63 count:16];
            }

            while (v35);
          }

          [v7 setObject:v22 forKey:v22];
          if (![v33 count])
          {
            v8 = v44;
            v6 = v45;
            v10 = v46;
            goto LABEL_57;
          }

          v6 = v45;
          v40 = [v45 objectForKey:v22];

          v10 = v46;
          if (v40)
          {
            NSLog(@"Duplicate back translation value for key: %@", v22);
          }

          v32 = [v33 objectAtIndex:0];
          [v45 setObject:v32 forKey:v22];
          v8 = v44;
        }

LABEL_57:
        v11 = v48;

LABEL_58:
        v11 = v11 + 1;
      }

      while (v11 != v10);
      v41 = [v8 countByEnumeratingWithState:&v59 objects:v65 count:16];
      v10 = v41;
    }

    while (v41);
  }

  if (a4)
  {
    objc_storeStrong(a4, v7);
  }

  if (a5)
  {
    objc_storeStrong(a5, v6);
  }
}

- (void)setActiveTable:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "languages in Info.plist was of unexpected type for table %@", &v2, 0xCu);
}

- (void)_loadTable:(uint64_t)a1 translationHandle:(NSObject *)a2 backTranslationHandle:.cold.3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to load table with identifier %@", &v2, 0xCu);
}

@end