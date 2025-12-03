@interface DBTDuxburyBrailleTranslator
+ (_NSRange)_mappedRange:(_NSRange)range withPreprocessedMap:(id)map;
- (BOOL)_loadTable:(id)table translationHandle:(void *)handle backTranslationHandle:(void *)translationHandle;
- (DBTDuxburyBrailleTranslator)init;
- (id)_eightDotPrintBrailleForText:(id)text locations:(id *)locations textFormattingRanges:(id)ranges;
- (id)_eightDotTextForPrintBraille:(id)braille locations:(id *)locations;
- (id)_newPrintPreprocessorsForTable:(id)table primaryLanguageCode:(id)code;
- (id)_printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges optimize:(BOOL)optimize;
- (id)_scrubDollarCodesInBuffer:(int *)buffer originalLength:(unint64_t)length originalLocations:(id)locations newLocations:(id)newLocations convertASCIIBrailleToUnicode:(BOOL)unicode limitRange:(_NSRange)range;
- (id)_tableInfoForKey:(id)key;
- (id)printBrailleForTechnicalText:(id)text useTechnicalTable:(BOOL)table locations:(id *)locations;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations;
- (unint64_t)_prepBuffersForConversion:(BOOL)conversion withString:(id)string mode:(unint64_t)mode prefixLength:(unint64_t)length;
- (void)_eightDotTablesFromRawTable:(id)table translationTable:(id *)translationTable backTranslationTable:(id *)backTranslationTable;
- (void)_populatePrintBrailleForTextLocations:(id *)locations inLength:(unint64_t)length outLength:(unint64_t)outLength translationHandle:(void *)handle offsetToBraille:(unsigned __int16)braille prefixCodeLength:(unsigned __int16)codeLength preprocessedMap:(id)map optimize:(BOOL)self0;
- (void)_populateTextForPrintBrailleLocations:(id *)locations inLength:(unint64_t)length outLength:(unint64_t)outLength offsetToBraille:(unsigned __int16)braille prefixLength:(unint64_t)prefixLength optimize:(BOOL)optimize;
- (void)_unloadTables;
- (void)_unloadTechnicalTable;
- (void)dealloc;
- (void)loadNemethTable;
- (void)setActiveTable:(id)table;
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

- (id)_tableInfoForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length] >= 6)
  {
    v4 = [keyCopy substringWithRange:{objc_msgSend(keyCopy, "length") - 5, 5}];
    if ([&off_353C8 containsObject:v4])
    {
      v5 = -5;
      goto LABEL_8;
    }
  }

  v6 = keyCopy;
  if ([keyCopy length] < 4)
  {
    goto LABEL_11;
  }

  v4 = [keyCopy substringWithRange:{objc_msgSend(keyCopy, "length") - 3, 3}];
  if (![&off_353E0 containsObject:v4])
  {
    v6 = keyCopy;
    goto LABEL_10;
  }

  v5 = -3;
LABEL_8:
  v6 = [keyCopy substringToIndex:{objc_msgSend(keyCopy, "length") + v5}];

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

- (id)_newPrintPreprocessorsForTable:(id)table primaryLanguageCode:(id)code
{
  tableCopy = table;
  codeCopy = code;
  v7 = +[NSMutableArray array];
  v8 = objc_opt_new();
  [v7 addObject:v8];

  if ([tableCopy isEqualToString:@"jpn"])
  {
    v9 = objc_opt_new();
    [v7 addObject:v9];
    v10 = objc_opt_new();
    [v10 setStringTransform:kCFStringTransformLatinHiragana];
    [v7 addObject:v10];
  }

  if (([tableCopy isEqualToString:@"zh-cn"] & 1) != 0 || objc_msgSend(tableCopy, "isEqualToString:", @"zh-tw"))
  {
    v11 = objc_opt_new();
    [v11 setTokenizerUnit:1];
    [v7 addObject:v11];
    v12 = objc_opt_new();
    [v12 setStringTransform:kCFStringTransformMandarinLatin];
    [v12 setCharacterLevelStringTransform:NSStringTransformMandarinToLatin];
    [v7 addObject:v12];
  }

  v13 = [[BRLTEmojiPrintPreprocessor alloc] initWithPrimaryLanguageCode:codeCopy];

  [v7 addObject:v13];
  v14 = objc_opt_new();
  [v7 addObject:v14];

  return v7;
}

- (unint64_t)_prepBuffersForConversion:(BOOL)conversion withString:(id)string mode:(unint64_t)mode prefixLength:(unint64_t)length
{
  stringCopy = string;
  v10 = [stringCopy length];
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

  if (mode == 4)
  {
    v12 = &_TechnicalPrefix;
    if (!length)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (self->_supportsContraction)
  {
    v12 = &_UnContractedPrefix;
    if (mode == 3)
    {
      v12 = &_ContractedGrade2Prefix;
    }

    if (length)
    {
LABEL_10:
      inBuffer = self->_inBuffer;
      lengthCopy = length;
      do
      {
        v15 = *v12++;
        *inBuffer++ = v15;
        --lengthCopy;
      }

      while (lengthCopy);
    }
  }

LABEL_12:
  DBTAppendNSStringIntoWideCharBufferAtOffset(stringCopy, self->_inBuffer, length);

  return v10;
}

- (void)setActiveTable:(id)table
{
  tableCopy = table;
  if (([tableCopy isEqualToString:self->_activeTable] & 1) == 0)
  {
    [(DBTDuxburyBrailleTranslator *)self _unloadTables];
    if ([(DBTDuxburyBrailleTranslator *)self _loadTable:tableCopy translationHandle:&self->_translationHandle backTranslationHandle:&self->_backTranslationHandle])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [(DBTDuxburyBrailleTranslator *)self _tableInfoForKey:tableCopy];
      v7 = [v6 objectForKey:@"8dot"];
      if ([v7 length])
      {
        v8 = [v5 pathForResource:v7 ofType:@"plist"];
        v9 = [NSDictionary dictionaryWithContentsOfFile:v8];
        v10 = [v9 objectForKey:@"Table"];
        [(DBTDuxburyBrailleTranslator *)self _eightDotTablesFromRawTable:v10 translationTable:&self->_eightDotTranslationTable backTranslationTable:&self->_eightDotBackTranslationTable];
      }

      v11 = [v5 objectForInfoDictionaryKey:@"BrailleTables"];
      v12 = [v11 objectForKey:tableCopy];
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
        firstObject = [v20 firstObject];
      }

      else
      {
        v22 = DBTLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(DBTDuxburyBrailleTranslator *)tableCopy setActiveTable:v22];
        }

        firstObject = 0;
      }

      v23 = [(DBTDuxburyBrailleTranslator *)self _newPrintPreprocessorsForTable:tableCopy primaryLanguageCode:firstObject];
      printPreprocessors = self->_printPreprocessors;
      self->_printPreprocessors = v23;

      v25 = [tableCopy copy];
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

- (BOOL)_loadTable:(id)table translationHandle:(void *)handle backTranslationHandle:(void *)translationHandle
{
  tableCopy = table;
  v9 = [(DBTDuxburyBrailleTranslator *)self _tableInfoForKey:tableCopy];
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
    resourcePath = [v11 resourcePath];
    v13 = DBTWideCharBufferOfFullPath(resourcePath, @"chitab", @"txt");
    translationHandleCopy = translationHandle;
    v39 = v9;
    if (handle)
    {
      handleCopy = handle;
      v37 = tableCopy;
      v14 = v13;
      v15 = [v9 objectForKey:@"trans"];
      handleCopy2 = [v15 objectForKey:@"btb"];
      v17 = [v15 objectForKey:@"sct"];
      *buf = 0;
      v18 = DBTWideCharBufferOfFullPath(resourcePath, handleCopy2, @"btb");
      v19 = DBTWideCharBufferOfFullPath(resourcePath, v17, @"sct");
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
        tableCopy = v37;
        goto LABEL_21;
      }

      v33 = *buf;
      *(*buf + 240) = 0;
      v33[73] = 4;
      *handleCopy = v33;

      v24 = v17;
      handle = handleCopy2;
      tableCopy = v37;
      v13 = v14;
      v9 = v39;
      if (!translationHandleCopy)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v24 = 0;
      if (!translationHandle)
      {
LABEL_18:
        v21 = v24;
        handleCopy2 = handle;
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
    handleCopy2 = [v26 objectForKey:@"btb"];

    v27 = [v26 objectForKey:@"sct"];

    *buf = 0;
    v28 = DBTWideCharBufferOfFullPath(resourcePath, handleCopy2, @"btb");
    v29 = DBTWideCharBufferOfFullPath(resourcePath, v27, @"sct");
    v30 = BRLTRN_CreateW(v28, v29, buf, 0, v25);
    DBTWideCharBufferFree(v28);
    DBTWideCharBufferFree(v29);
    if (v30)
    {
      v31 = tableCopy;
      v32 = DBTLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [DBTDuxburyBrailleTranslator _unloadTables];
      }

      DBTWideCharBufferFree(v25);
      v23 = 0;
      tableCopy = v31;
      v21 = v27;
      goto LABEL_21;
    }

    v34 = *buf;
    *(*buf + 240) = 0;
    v34[73] = 4;
    *translationHandleCopy = v34;

    v13 = v25;
    v21 = v27;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [DBTDuxburyBrailleTranslator _loadTable:tableCopy translationHandle:v11 backTranslationHandle:?];
  }

  v23 = 0;
LABEL_22:

  return v23;
}

- (void)_populatePrintBrailleForTextLocations:(id *)locations inLength:(unint64_t)length outLength:(unint64_t)outLength translationHandle:(void *)handle offsetToBraille:(unsigned __int16)braille prefixCodeLength:(unsigned __int16)codeLength preprocessedMap:(id)map optimize:(BOOL)self0
{
  codeLengthCopy = codeLength;
  brailleCopy = braille;
  brailleCopy2 = braille;
  mapCopy = map;
  v62 = 8 * outLength;
  v17 = malloc_type_malloc(8 * outLength, 0x100004000313F17uLL);
  v63 = &v61;
  v18 = &v61 - ((4 * length + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * length);
  locationsCopy = locations;
  if (length)
  {
    v19 = brailleCopy - codeLengthCopy;
    v20 = (length + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = vdupq_n_s64(length - 1);
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
    if (!optimize)
    {
      v27 = codeLengthCopy;
      inBuffer = self->_inBuffer;
      lengthCopy = length;
      v30 = (&v61 - ((4 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      while (1)
      {
        v31 = BRLTRN_TranslateString(handle, inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), v27, &brailleCopy2);
        inBuffer = self->_inBuffer;
        v32 = inBuffer[v27] == 31 ? *(v30 - 1) : brailleCopy2 - codeLengthCopy;
        *v30 = v32;
        if (v31)
        {
          goto LABEL_29;
        }

        ++v30;
        ++v27;
        if (!--lengthCopy)
        {
          goto LABEL_30;
        }
      }
    }
  }

  else
  {
    bzero(self->_tmpBuffer, self->_tmpBufferLen);
    if (!optimize)
    {
      goto LABEL_30;
    }
  }

  v66 = 0;
  LocationMap = BRLTRN_TranslateStringAndGetLocationMap(handle, self->_inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), &v66);
  v34 = v66;
  if (!LocationMap && length)
  {
    v35 = &v66[2 * codeLengthCopy];
    v36 = &self->_inBuffer[codeLengthCopy];
    lengthCopy2 = length;
    v38 = (&v61 - ((4 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v39 = *v36++;
      if (v39 == 31)
      {
        v40 = *(v38 - 1);
      }

      else
      {
        v40 = *v35 - codeLengthCopy;
      }

      *v38++ = v40;
      v35 += 2;
      --lengthCopy2;
    }

    while (lengthCopy2);
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
    v43 = mapCopy;
    v42 = locationsCopy;
    goto LABEL_54;
  }

LABEL_30:
  v43 = mapCopy;
  bytes = [mapCopy bytes];
  v45 = length - 1;
  v42 = locationsCopy;
  v41 = v62;
  if ((length - 1) >= 0)
  {
    v46 = 0;
    v47 = 0;
    v48 = self->_inBuffer;
    v49 = &v48[codeLengthCopy];
    outLengthCopy2 = outLength;
    do
    {
      lengthCopy3 = length;
      length = v45;
      if (v45 && *&v18[4 * v45] == *&v18[4 * lengthCopy3 - 8])
      {
        if (v45 >= 3 && v49[lengthCopy3 - 2] == 31 && (v52 = &v48[lengthCopy3 + codeLengthCopy], *(v52 - 12) == 101) && *(v52 - 16) != 28)
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

      v54 = v49[length];
      v55 = v46 | (v54 == 31) & v47;
      if ((v53 & 1) == 0 && (v55 & 1) == 0)
      {
        v56 = *&v18[4 * length];
        if (outLengthCopy2 >= outLength)
        {
          outLengthCopy2 = outLength;
        }

        v57 = outLengthCopy2 > v56;
        v58 = outLengthCopy2 - v56;
        if (v57)
        {
          v59 = &v17[8 * v56];
          do
          {
            lengthCopy4 = length;
            if (bytes)
            {
              lengthCopy4 = bytes[length];
            }

            *v59++ = lengthCopy4;
            --v58;
          }

          while (v58);
        }

        outLengthCopy2 = v56;
      }

      v47 &= v54 != 31;
      v46 = (v54 != 28) & v55;
      v45 = length - 1;
    }

    while (length > 0);
  }

LABEL_54:
  *v42 = [NSData dataWithBytes:v17 length:v41];
  free(v17);
}

- (id)_scrubDollarCodesInBuffer:(int *)buffer originalLength:(unint64_t)length originalLocations:(id)locations newLocations:(id)newLocations convertASCIIBrailleToUnicode:(BOOL)unicode limitRange:(_NSRange)range
{
  unicodeCopy = unicode;
  locationsCopy = locations;
  newLocationsCopy = newLocations;
  v23 = locationsCopy;
  if (locationsCopy)
  {
    locationsCopy = [locationsCopy bytes];
  }

  v14 = 0;
  if (length)
  {
    v15 = 0;
    do
    {
      v16 = buffer[v15];
      if (v16 != 28 || v15 >= length)
      {
LABEL_12:
        if (unicodeCopy)
        {
          v16 = ASCIIBrailleToUnicode(v16);
        }

        buffer[v14++] = v16;
        if (locationsCopy)
        {
          if (range.location == 0x7FFFFFFFFFFFFFFFLL || ((v19 = *&locationsCopy[8 * v15], v19 >= range.location) ? (v20 = v19 > range.location + range.length) : (v20 = 1), !v20))
          {
            [newLocationsCopy appendBytes:&locationsCopy[8 * v15] length:8];
          }
        }
      }

      else
      {
        v18 = v15;
        while (buffer[v18] != 31)
        {
          if (length == ++v18)
          {
            goto LABEL_12;
          }
        }

        v15 = v18;
      }

      ++v15;
    }

    while (v15 < length);
  }

  v21 = DBTNSStringFromWideCharBuffer(buffer, v14);

  return v21;
}

+ (_NSRange)_mappedRange:(_NSRange)range withPreprocessedMap:(id)map
{
  length = range.length;
  location = range.location;
  mapCopy = map;
  v7 = mapCopy;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    bytes = [mapCopy bytes];
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
      while (bytes[v8] < location)
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
      while (bytes[v12] < location + length)
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

- (id)_printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges optimize:(BOOL)optimize
{
  length = range.length;
  location = range.location;
  optimizeCopy = optimize;
  rangesCopy = ranges;
  composedCharacterPreprocessor = self->_composedCharacterPreprocessor;
  v69 = 0;
  v61 = rangesCopy;
  v14 = [(DBTComposedCharactersPreprocessor *)composedCharacterPreprocessor preprocessPrintString:text withLocationMap:&v69 isEightDot:0 textFormattingRanges:?];
  v15 = v69;
  v16 = v14;
  v17 = [(NSArray *)self->_printPreprocessors count];
  v18 = v16;
  v19 = v15;
  selfCopy = self;
  if (v17)
  {
    modeCopy = mode;
    locationsCopy = locations;
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
    locations = locationsCopy;
    self = selfCopy;
    mode = modeCopy;
  }

  translationHandle = self->_translationHandle;
  if (mode == 4)
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
  v32 = [(DBTDuxburyBrailleTranslator *)self _prepBuffersForConversion:1 withString:v18 mode:mode prefixLength:v30];
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
      v39 = &selfCopy->_outBuffer[v31];
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

    if (locations)
    {
      v62 = 0;
      LOBYTE(v51) = optimizeCopy;
      v43 = selfCopy;
      v44 = v32;
      v45 = v35 - v31;
      [(DBTDuxburyBrailleTranslator *)selfCopy _populatePrintBrailleForTextLocations:&v62 inLength:v44 outLength:v38 translationHandle:translationHandle offsetToBraille:v63 prefixCodeLength:v31 preprocessedMap:v19 optimize:v51];
      v46 = v62;
      v47 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v46 length]);
      v38 = v45;
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
      v43 = selfCopy;
    }

    v34 = [(DBTDuxburyBrailleTranslator *)v43 _scrubDollarCodesInBuffer:v37 originalLength:v38 originalLocations:v46 newLocations:v48 convertASCIIBrailleToUnicode:1 limitRange:location, length];
    if (locations)
    {
      v49 = v48;
      *locations = v48;
    }
  }

  return v34;
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  textCopy = text;
  rangesCopy = ranges;
  v15 = _os_feature_enabled_impl();
  if (mode != 4 && v15)
  {
    if (!self->_supportsEightDot)
    {
      if (self->_contracted)
      {
        mode = 3;
      }

      else
      {
        mode = 1;
      }

      goto LABEL_15;
    }

LABEL_10:
    rangesCopy = [(DBTDuxburyBrailleTranslator *)self _eightDotPrintBrailleForText:textCopy locations:locations textFormattingRanges:rangesCopy];
    goto LABEL_16;
  }

  if (mode == 4)
  {
    if (self->_supportsTechnical)
    {
      rangesCopy = [(DBTDuxburyBrailleTranslator *)self printBrailleForTechnicalText:textCopy useTechnicalTable:1 locations:locations];
      goto LABEL_16;
    }

    mode = 4;
  }

  else if (mode == 2)
  {
    if (self->_supportsEightDot)
    {
      goto LABEL_10;
    }

    mode = 2;
  }

LABEL_15:
  rangesCopy = [(DBTDuxburyBrailleTranslator *)self _printBrailleForText:textCopy mode:mode locations:locations textPositionsRange:location textFormattingRanges:length, rangesCopy];
LABEL_16:
  v17 = rangesCopy;

  return v17;
}

- (id)printBrailleForTechnicalText:(id)text useTechnicalTable:(BOOL)table locations:(id *)locations
{
  tableCopy = table;
  textCopy = text;
  if (tableCopy && (([(DBTDuxburyBrailleTranslator *)self loadNemethTable], self->_supportsTechnical) || self->_technicalTranslationHandle))
  {
    v9 = [textCopy length];
    selfCopy2 = self;
    v11 = textCopy;
    v12 = 4;
  }

  else
  {
    v9 = [textCopy length];
    selfCopy2 = self;
    v11 = textCopy;
    v12 = 1;
  }

  v13 = [(DBTDuxburyBrailleTranslator *)selfCopy2 _printBrailleForText:v11 mode:v12 locations:locations textPositionsRange:0 textFormattingRanges:v9, 0];

  return v13;
}

- (void)_populateTextForPrintBrailleLocations:(id *)locations inLength:(unint64_t)length outLength:(unint64_t)outLength offsetToBraille:(unsigned __int16)braille prefixLength:(unint64_t)prefixLength optimize:(BOOL)optimize
{
  brailleCopy = braille;
  outLengthCopy = outLength;
  brailleCopy2 = braille;
  v36 = 8 * outLength;
  v15 = malloc_type_malloc(8 * outLength, 0x100004000313F17uLL);
  v16 = (&v36 - ((4 * length + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = brailleCopy - prefixLength;
  bzero(self->_tmpBuffer, self->_tmpBufferLen);
  if (!optimize)
  {
    if (length >= 2)
    {
      v23 = length - 1;
      v24 = v16 + 1;
      v25 = prefixLength + 1;
      while (1)
      {
        v26 = BRLTRN_TranslateString(self->_backTranslationHandle, self->_inBuffer, self->_tmpBuffer, LOWORD(self->_tmpBufferLen), v25, &brailleCopy2);
        *v24 = brailleCopy2 - prefixLength;
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
  if (LocationMap || !length)
  {
    if (!v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = &v37[2 * prefixLength];
    v20 = (&v36 - ((4 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    lengthCopy = length;
    do
    {
      v22 = *v19;
      v19 += 2;
      *v20++ = v22 - prefixLength;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  free(v18);
LABEL_14:
  if (!LocationMap)
  {
LABEL_16:
    v28 = length - 1;
    v27 = v36;
    if ((length - 1) < 0)
    {
      goto LABEL_30;
    }

    while (1)
    {
      lengthCopy2 = length;
      length = v28;
      if (!v28)
      {
        break;
      }

      v30 = v16[v28];
      if (v30 != v16[lengthCopy2 - 2])
      {
        goto LABEL_21;
      }

LABEL_29:
      v28 = length - 1;
      if (length <= 0)
      {
        goto LABEL_30;
      }
    }

    v30 = *v16;
LABEL_21:
    v31 = v30;
    if (outLengthCopy > v30)
    {
      v32 = 0;
      v33 = vdupq_n_s64(outLengthCopy - v31 - 1);
      v34 = &v15[8 * v31];
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v32), xmmword_2B900)));
        if (v35.i8[0])
        {
          *&v34[8 * v32] = length;
        }

        if (v35.i8[4])
        {
          *&v34[8 * v32 + 8] = length;
        }

        v32 += 2;
      }

      while (((outLengthCopy - v31 + 1) & 0xFFFFFFFFFFFFFFFELL) != v32);
    }

    outLengthCopy = v31;
    goto LABEL_29;
  }

LABEL_15:
  v27 = v36;
  bzero(v15, v36);
LABEL_30:
  *locations = [NSData dataWithBytes:v15 length:v27, v36];
  free(v15);
}

- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations
{
  brailleCopy = braille;
  v9 = _os_feature_enabled_impl();
  if (mode != 4 && v9)
  {
    if (!self->_supportsEightDot)
    {
      if (self->_contracted)
      {
        mode = 3;
      }

      else
      {
        mode = 1;
      }

      goto LABEL_11;
    }

LABEL_9:
    v10 = [(DBTDuxburyBrailleTranslator *)self _eightDotTextForPrintBraille:brailleCopy locations:locations];
    goto LABEL_12;
  }

  if (mode == 2)
  {
    if (self->_supportsEightDot)
    {
      goto LABEL_9;
    }

    mode = 2;
  }

LABEL_11:
  v10 = [(DBTDuxburyBrailleTranslator *)self _textForPrintBraille:brailleCopy mode:mode locations:locations];
LABEL_12:
  v11 = v10;

  return v11;
}

- (id)_eightDotPrintBrailleForText:(id)text locations:(id *)locations textFormattingRanges:(id)ranges
{
  locationsCopy = locations;
  rangesCopy = ranges;
  composedCharacterPreprocessor = self->_composedCharacterPreprocessor;
  v70 = 0;
  v59 = rangesCopy;
  v9 = [(DBTComposedCharactersPreprocessor *)composedCharacterPreprocessor preprocessPrintString:text withLocationMap:&v70 isEightDot:0 textFormattingRanges:?];
  v10 = v70;
  v11 = v9;
  v12 = [(NSArray *)self->_printPreprocessors count];
  v56 = v11;
  selfCopy = self;
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

    self = selfCopy;
  }

  Length = CFStringGetLength(v11);
  v58 = &locationsCopy;
  v23 = __chkstk_darwin();
  v25 = &locationsCopy - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      self = selfCopy;
    }

    while (Length != v29);
  }

  v45 = [NSString stringWithCharacters:v25 length:Length];
  v46 = locationsCopy;
  v47 = v55;
  if (locationsCopy)
  {
    bytes = [v13 bytes];
    if ([v45 length] >= 1)
    {
      v49 = __chkstk_darwin();
      v51 = 0;
      do
      {
        v52 = v51;
        if (bytes)
        {
          v52 = bytes[v51];
        }

        *(&(&locationsCopy)[v51] - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0)) = v52;
        v51 = (v51 + 1);
      }

      while (v49 != v51);
      *v46 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
    }
  }

  return v45;
}

- (id)_eightDotTextForPrintBraille:(id)braille locations:(id *)locations
{
  brailleCopy = braille;
  Length = CFStringGetLength(brailleCopy);
  v8 = __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = brailleCopy;
  v49 = 0;
  v50 = v8;
  CharactersPtr = CFStringGetCharactersPtr(brailleCopy);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(brailleCopy, 0x600u);
  }

  memset(buffer, 0, sizeof(buffer));
  v51 = 0;
  v52 = 0;
  v48 = CStringPtr;
  if (Length >= 1)
  {
    v42[1] = v42;
    v43 = brailleCopy;
    locationsCopy = locations;
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
        locations = locationsCopy;
        if (v14 <= 0)
        {
          v31 = 0;
        }

        else
        {
          v31 = [NSString stringWithCharacters:v10 length:v14];
        }

        brailleCopy = v43;
        if (locations)
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }
    }
  }

  v31 = 0;
  if (locations)
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
      *locations = [NSData dataWithBytes:*v36.i64 length:?];
    }
  }

LABEL_43:

  return v31;
}

- (void)_eightDotTablesFromRawTable:(id)table translationTable:(id *)translationTable backTranslationTable:(id *)backTranslationTable
{
  tableCopy = table;
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
  v8 = tableCopy;
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
          integerValue = [v22 integerValue];
          if (integerValue < 1)
          {
            v27 = 10240;
          }

          else
          {
            v24 = 0;
            do
            {
              v25 = ~(10 * (integerValue / 0xA)) + integerValue;
              if (v25 <= 7)
              {
                v24 |= _DotValue[2 * v25];
              }

              v26 = integerValue > 9;
              integerValue /= 0xAuLL;
            }

            while (v26);
            v27 = v24 + 10240;
          }

          v32 = [NSNumber numberWithUnsignedInteger:v27];
          [v7 setObject:v32 forKey:v12];
        }

        else
        {
          integerValue2 = [v12 integerValue];
          if (integerValue2 < 1)
          {
            v31 = 10240;
          }

          else
          {
            v29 = 0;
            do
            {
              v30 = ~(10 * (integerValue2 / 0xA)) + integerValue2;
              if (v30 <= 7)
              {
                v29 |= _DotValue[2 * v30];
              }

              v26 = integerValue2 > 9;
              integerValue2 /= 0xAuLL;
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

  if (translationTable)
  {
    objc_storeStrong(translationTable, v7);
  }

  if (backTranslationTable)
  {
    objc_storeStrong(backTranslationTable, v6);
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