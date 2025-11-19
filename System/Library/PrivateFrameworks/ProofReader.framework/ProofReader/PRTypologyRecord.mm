@interface PRTypologyRecord
+ (id)currentTypologyRecord;
+ (id)openTypologyRecordWithString:(id)a3 range:(_NSRange)a4 languageObject:(id)a5 languages:(id)a6 topLanguages:(id)a7 autocorrect:(BOOL)a8 initialCapitalize:(BOOL)a9 autocapitalize:(BOOL)a10 keyEventArray:(id)a11 appIdentifier:(id)a12 selectedRangeValue:(id)a13;
+ (void)resetTypologyRecords;
+ (void)setTypologyRecordsLimit:(unint64_t)a3;
+ (void)writeTypologyRecords;
- (PRTypologyRecord)initWithString:(id)a3 offset:(unint64_t)a4 range:(_NSRange)a5 languageObject:(id)a6 languages:(id)a7 topLanguages:(id)a8 autocorrect:(BOOL)a9 initialCapitalize:(BOOL)a10 autocapitalize:(BOOL)a11 keyEventArray:(id)a12 appIdentifier:(id)a13 selectedRangeValue:(id)a14;
- (id)dictionaryRepresentation;
- (void)addCandidate:(id)a3;
- (void)addCorrection:(id)a3;
- (void)closeTypologyRecordWithResults:(id)a3;
- (void)dealloc;
@end

@implementation PRTypologyRecord

- (PRTypologyRecord)initWithString:(id)a3 offset:(unint64_t)a4 range:(_NSRange)a5 languageObject:(id)a6 languages:(id)a7 topLanguages:(id)a8 autocorrect:(BOOL)a9 initialCapitalize:(BOOL)a10 autocapitalize:(BOOL)a11 keyEventArray:(id)a12 appIdentifier:(id)a13 selectedRangeValue:(id)a14
{
  length = a5.length;
  location = a5.location;
  v23.receiver = self;
  v23.super_class = PRTypologyRecord;
  v20 = [(PRTypologyRecord *)&v23 init];
  if (v20)
  {
    v21 = [a3 copy];
    v20->_offset = a4;
    v20->_string = v21;
    v20->_range.location = location;
    v20->_range.length = length;
    v20->_langObj = [a6 copy];
    v20->_languages = [a7 copy];
    v20->_appIdentifier = [a13 copy];
    v20->_selectedRangeValue = [a14 copy];
    v20->_topLanguages = [a8 copy];
    v20->_keyEventArray = [a12 copy];
    v20->_typologyCorrections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20->_typologyCandidates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20->_autocorrect = a9;
    v20->_initialCapitalize = a10;
    v20->_autocapitalize = a11;
    v20->_isOpen = 1;
    v20->_openTime = CFAbsoluteTimeGetCurrent();
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRTypologyRecord;
  [(PRTypologyRecord *)&v3 dealloc];
}

+ (id)openTypologyRecordWithString:(id)a3 range:(_NSRange)a4 languageObject:(id)a5 languages:(id)a6 topLanguages:(id)a7 autocorrect:(BOOL)a8 initialCapitalize:(BOOL)a9 autocapitalize:(BOOL)a10 keyEventArray:(id)a11 appIdentifier:(id)a12 selectedRangeValue:(id)a13
{
  length = a4.length;
  location = a4.location;
  v19 = [a3 length];
  if (openTypologyRecordWithString_range_languageObject_languages_topLanguages_autocorrect_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue__onceToken != -1)
  {
    +[PRTypologyRecord openTypologyRecordWithString:range:languageObject:languages:topLanguages:autocorrect:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:];
  }

  v20 = 0;
  if ((_enabledLogTypes & 0x400) != 0 && _typologyRecords && _typologyRecordsSerialQueue && v19)
  {
    v21 = location - 64;
    if (location < 0x40)
    {
      v21 = 0;
    }

    v22 = length + location + 64;
    if (v22 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = length + location + 64;
    }

    if (v21 >= v22)
    {
      v24 = v19;
    }

    else
    {
      v24 = v23;
    }

    v25 = v24 - v21;
    if (v25 >= 0x400)
    {
      v25 = 1024;
    }

    if (v21 >= v19)
    {
      v26 = v19 - 1;
    }

    else
    {
      v26 = v21;
    }

    if (v25 + v26 <= v19)
    {
      v27 = v25;
    }

    else
    {
      v27 = v19 - v26;
    }

    BYTE2(v29) = a10;
    LOWORD(v29) = __PAIR16__(a9, a8);
    v20 = -[PRTypologyRecord initWithString:offset:range:languageObject:languages:topLanguages:autocorrect:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:]([PRTypologyRecord alloc], "initWithString:offset:range:languageObject:languages:topLanguages:autocorrect:initialCapitalize:autocapitalize:keyEventArray:appIdentifier:selectedRangeValue:", [a3 substringWithRange:{v26, v27}], v26, location, length, a5, a6, a7, v29, a11, a12, a13);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __185__PRTypologyRecord_openTypologyRecordWithString_range_languageObject_languages_topLanguages_autocorrect_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue___block_invoke_2;
    block[3] = &unk_1E8405150;
    block[4] = v20;
    dispatch_sync(_typologyRecordsSerialQueue, block);
  }

  return v20;
}

dispatch_queue_t __185__PRTypologyRecord_openTypologyRecordWithString_range_languageObject_languages_topLanguages_autocorrect_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue___block_invoke()
{
  _typologyRecords = objc_alloc_init(MEMORY[0x1E695DF70]);
  result = dispatch_queue_create("com.apple.ProofReader.typologyRecordsSerialQueue", 0);
  _typologyRecordsSerialQueue = result;
  return result;
}

unint64_t __185__PRTypologyRecord_openTypologyRecordWithString_range_languageObject_languages_topLanguages_autocorrect_initialCapitalize_autocapitalize_keyEventArray_appIdentifier_selectedRangeValue___block_invoke_2(uint64_t a1)
{
  [_typologyRecords addObject:*(a1 + 32)];
  for (result = [_typologyRecords count]; result > _numTypologyRecords; result = objc_msgSend(_typologyRecords, "count"))
  {
    [_typologyRecords removeObjectAtIndex:0];
  }

  return result;
}

+ (id)currentTypologyRecord
{
  v2 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  if ((_enabledLogTypes & 0x400) != 0)
  {
    if (_typologyRecords)
    {
      v3 = _typologyRecordsSerialQueue == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__PRTypologyRecord_currentTypologyRecord__block_invoke;
      block[3] = &unk_1E84054D0;
      block[4] = &v7;
      dispatch_sync(_typologyRecordsSerialQueue, block);
      v2 = v8[5];
    }
  }

  v4 = v2;
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __41__PRTypologyRecord_currentTypologyRecord__block_invoke(uint64_t a1)
{
  result = [_typologyRecords lastObject];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)addCorrection:(id)a3
{
  if (self->_isOpen)
  {
    [(NSMutableArray *)self->_typologyCorrections addObject:a3];
  }
}

- (void)addCandidate:(id)a3
{
  if (self->_isOpen)
  {
    [(NSMutableArray *)self->_typologyCandidates addObject:a3];
  }
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  string = self->_string;
  if (string)
  {
    [v3 setObject:string forKey:@"StringToCheck"];
  }

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_offset), @"Offset"}];
  [v4 setObject:NSStringFromRange(self->_range) forKey:@"Range"];
  selectedRangeValue = self->_selectedRangeValue;
  if (selectedRangeValue)
  {
    v39.location = [(NSValue *)selectedRangeValue rangeValue];
    [v4 setObject:NSStringFromRange(v39) forKey:@"SelectedRange"];
  }

  langObj = self->_langObj;
  if (langObj)
  {
    [v4 setObject:-[PRLanguage identifier](langObj forKey:{"identifier"), @"Language"}];
  }

  languages = self->_languages;
  if (languages)
  {
    [v4 setObject:languages forKey:@"Languages"];
  }

  topLanguages = self->_topLanguages;
  if (topLanguages)
  {
    [v4 setObject:topLanguages forKey:@"TopLanguages"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v4 setObject:appIdentifier forKey:@"AppIdentifier"];
  }

  keyEventArray = self->_keyEventArray;
  if (keyEventArray)
  {
    [v4 setObject:-[NSArray description](keyEventArray forKey:{"description"), @"KeyEventArray"}];
  }

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_autocorrect), @"Autocorrect"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_initialCapitalize), @"InitialCapitalize"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_autocapitalize), @"Autocapitalize"}];
  typologyCorrections = self->_typologyCorrections;
  if (typologyCorrections && [(NSMutableArray *)typologyCorrections count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = self->_typologyCorrections;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 addObject:{objc_msgSend(*(*(&v32 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"Corrections"];
  }

  typologyCandidates = self->_typologyCandidates;
  if (typologyCandidates && [(NSMutableArray *)typologyCandidates count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = self->_typologyCandidates;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v20 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"Candidates"];
  }

  if (!self->_isOpen)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", self->_closeTime - self->_openTime), @"Time"}];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (void)writeTypologyRecords
{
  v2 = [MEMORY[0x1E695DF70] array];
  if ((_enabledLogTypes & 0x400) != 0)
  {
    if (_typologyRecords)
    {
      v3 = _typologyRecordsSerialQueue == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v4 = v2;
      v5 = [_NSSpellingDictDirectoryPath2() stringByAppendingPathComponent:@"typology.plist"];
      v8 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__PRTypologyRecord_writeTypologyRecords__block_invoke;
      block[3] = &unk_1E8405150;
      block[4] = v4;
      dispatch_sync(_typologyRecordsSerialQueue, block);
      v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:100 options:0 error:&v8];
      if (v6)
      {
        [v6 writeToFile:v5 options:1 error:&v8];
      }

      else
      {
        NSLog(@"typology error: %@", v8);
      }
    }
  }
}

uint64_t __40__PRTypologyRecord_writeTypologyRecords__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = _typologyRecords;
  result = [_typologyRecords countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) addObject:{objc_msgSend(*(*(&v8 + 1) + 8 * v6++), "dictionaryRepresentation")}];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)resetTypologyRecords
{
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if ((_enabledLogTypes & 0x400) != 0)
  {
    v2 = _typologyRecordsSerialQueue;
    if (_typologyRecords && _typologyRecordsSerialQueue != 0)
    {

      dispatch_sync(v2, &__block_literal_global_212);
    }
  }
}

+ (void)setTypologyRecordsLimit:(unint64_t)a3
{
  _numTypologyRecords = a3;
  if ((_enabledLogTypes & 0x400) != 0)
  {
    if (_typologyRecords)
    {
      v3 = _typologyRecordsSerialQueue == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      dispatch_sync(_typologyRecordsSerialQueue, &__block_literal_global_214);
    }
  }
}

unint64_t __44__PRTypologyRecord_setTypologyRecordsLimit___block_invoke()
{
  for (result = [_typologyRecords count]; result > _numTypologyRecords; result = objc_msgSend(_typologyRecords, "count"))
  {
    [_typologyRecords removeObjectAtIndex:0];
  }

  return result;
}

- (void)closeTypologyRecordWithResults:(id)a3
{
  if (self->_isOpen)
  {
    self->_closeTime = CFAbsoluteTimeGetCurrent();
    self->_results = [a3 copy];
    self->_isOpen = 0;
  }
}

@end