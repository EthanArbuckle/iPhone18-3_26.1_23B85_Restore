@interface TIDPRecorder
- (BOOL)isWordEntryReallyOOV:(id)a3 caseSensitive:(BOOL)a4;
- (HCHuffmanCoder)characterCoder;
- (HCHuffmanCoder)wordCoder;
- (NSArray)characterExplodedRecords;
- (NSString)primaryInputModeLocaleIndentifier;
- (NSString)recordingKeyLocaleSubstring;
- (NSString)secondaryInputModeLocaleIdentifier;
- (TIDPRecorder)initWithTypingSession:(id)a3 aligned:(id)a4;
- (TIDPReportingDelegate)delegate;
- (_LXLexicon)lexiconPrimaryInputMode;
- (_LXLexicon)lexiconSecondaryInputMode;
- (void)_prepareCharacterCoderMatchingSession;
- (void)_prepareWordCoderMatchingSession;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation TIDPRecorder

- (void)_prepareWordCoderMatchingSession
{
  v3 = [(TITypingSession *)self->_typingSession sessionParams];
  v4 = [v3 activeInputModes];
  v9 = [v4 firstObject];

  v5 = [v9 normalizedIdentifier];
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
  v7 = [HCHuffmanCoder wordCoderForLocale:v6];
  wordCoder = self->_wordCoder;
  self->_wordCoder = v7;
}

- (void)_prepareCharacterCoderMatchingSession
{
  v3 = [(TITypingSession *)self->_typingSession sessionParams];
  v4 = [v3 activeInputModes];
  v9 = [v4 firstObject];

  v5 = [v9 normalizedIdentifier];
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
  v7 = [HCHuffmanCoder characterCoderForLocale:v6];
  characterCoder = self->_characterCoder;
  self->_characterCoder = v7;
}

- (HCHuffmanCoder)wordCoder
{
  wordCoder = self->_wordCoder;
  if (!wordCoder)
  {
    [(TIDPRecorder *)self _prepareWordCoderMatchingSession];
    wordCoder = self->_wordCoder;
  }

  return wordCoder;
}

- (HCHuffmanCoder)characterCoder
{
  characterCoder = self->_characterCoder;
  if (!characterCoder)
  {
    [(TIDPRecorder *)self _prepareCharacterCoderMatchingSession];
    characterCoder = self->_characterCoder;
  }

  return characterCoder;
}

- (NSArray)characterExplodedRecords
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(TIDPRecorder *)self records];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v8);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v6 = [v10 word];

        v12 = [v6 length];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __40__TIDPRecorder_characterExplodedRecords__block_invoke;
        v19[3] = &unk_278731540;
        v20 = v11;
        v21 = &v26;
        v19[4] = self;
        v13 = v11;
        [v6 enumerateSubstringsInRange:0 options:v12 usingBlock:{2, v19}];
        v14 = [v13 copy];
        [v3 addObject:v14];

        v27[3] = 0;
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  v15 = [v3 copy];
  _Block_object_dispose(&v26, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __40__TIDPRecorder_characterExplodedRecords__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 24) + 1;
  *(v4 + 24) = v5;
  v6 = a2;
  v7 = [v3 numberWithUnsignedInteger:v5];
  v8 = [*(a1 + 32) characterCoder];
  v9 = [TIDPWordRecord word:v6 atPosition:v7 coder:v8];

  [*(a1 + 40) addObject:v9];
}

- (NSString)recordingKeyLocaleSubstring
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(TIDPRecorder *)self typingSession];
  v3 = [v2 sessionParams];
  v4 = [v3 activeInputModes];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) normalizedIdentifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v5 sortUsingSelector:sel_compare_];
  v12 = [v5 componentsJoinedByString:@"+"];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isWordEntryReallyOOV:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(TIDPRecorder *)self lexiconPrimaryInputMode])
  {
    v7 = [v6 acceptedString];
    v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];

    v10 = v9;
    v11 = v10;
    if (v10 && [(__CFString *)v10 length])
    {
      if (![(__CFString *)v11 length])
      {

        goto LABEL_29;
      }

      v24 = v4;
      v25 = v7;
      v12 = 0;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v11, v12);
        if ((CharacterAtIndex & 0xFC00) == 0xD800 && v12 + 1 < [(__CFString *)v11 length])
        {
          v17 = CFStringGetCharacterAtIndex(v11, v12 + 1);
          if ((v17 & 0xFC00) == 0xDC00)
          {
            v13 = (v17 + (CharacterAtIndex << 10) - 56613888);
          }

          else
          {
            v13 = v13;
          }

          if ((v17 & 0xFC00) == 0xDC00)
          {
            ++v12;
          }
        }

        else
        {
          v13 = CharacterAtIndex;
        }

        v18 = [MEMORY[0x277CCA900] punctuationCharacterSet];
        v19 = [v18 longCharacterIsMember:v13];

        v14 += v19;
        ++v15;
        ++v12;
      }

      while (v12 < [(__CFString *)v11 length]);

      v20 = v15 == v14;
      v7 = v25;
      v4 = v24;
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    [(TIDPRecorder *)self lexiconPrimaryInputMode];
    if (v4)
    {
      [(__CFString *)v11 UTF8String];
      [(__CFString *)v11 length];
      if (!LXLexiconGetTokenIDForUTF8String())
      {
LABEL_25:
        if ([(TIDPRecorder *)self lexiconSecondaryInputMode])
        {
          [(TIDPRecorder *)self lexiconSecondaryInputMode];
          if (v4)
          {
            [v7 UTF8String];
            [v7 length];
            TokenIDForUTF8String = LXLexiconGetTokenIDForUTF8String();
          }

          else
          {
            TokenIDForUTF8String = LXLexiconGetFirstTokenIDForString();
          }

          v21 = TokenIDForUTF8String == 0;
        }

        else
        {
          v21 = 1;
        }

        goto LABEL_30;
      }
    }

    else if (!LXLexiconGetFirstTokenIDForString())
    {
      goto LABEL_25;
    }

LABEL_29:
    v21 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v21 = 1;
LABEL_31:

  return v21;
}

- (_LXLexicon)lexiconSecondaryInputMode
{
  v3 = [(TIDPRecorder *)self secondaryInputModeLocaleIdentifier];

  if (!v3)
  {
    return 0;
  }

  [(NSLock *)self->_secondaryLexiconLock lock];
  if (!self->_lexiconSecondaryInputMode)
  {
    v4 = [(TIDPRecorder *)self secondaryInputModeLocaleIdentifier];
    self->_lexiconSecondaryInputMode = _createStaticLexiconForLocaleIdentifier(v4);
  }

  [(NSLock *)self->_secondaryLexiconLock unlock];
  return self->_lexiconSecondaryInputMode;
}

- (_LXLexicon)lexiconPrimaryInputMode
{
  [(NSLock *)self->_primaryLexiconLock lock];
  if (!self->_lexiconPrimaryInputMode)
  {
    v3 = [(TIDPRecorder *)self primaryInputModeLocaleIndentifier];
    self->_lexiconPrimaryInputMode = _createStaticLexiconForLocaleIdentifier(v3);
  }

  [(NSLock *)self->_primaryLexiconLock unlock];
  return self->_lexiconPrimaryInputMode;
}

- (NSString)secondaryInputModeLocaleIdentifier
{
  v2 = [(TIDPRecorder *)self typingSession];
  v3 = [v2 sessionParams];
  v4 = [v3 activeInputModes];

  if ([v4 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 normalizedIdentifier];
  }

  return v6;
}

- (NSString)primaryInputModeLocaleIndentifier
{
  v2 = [(TIDPRecorder *)self typingSession];
  v3 = [v2 sessionParams];
  v4 = [v3 activeInputModes];

  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 normalizedIdentifier];

  return v6;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_delegateLock lock];
  delegate = self->_delegate;
  self->_delegate = v4;
  v6 = v4;

  [(NSLock *)self->_delegateLock unlock];
}

- (TIDPReportingDelegate)delegate
{
  [(NSLock *)self->_delegateLock lock];
  v3 = self->_delegate;
  [(NSLock *)self->_delegateLock unlock];

  return v3;
}

- (TIDPRecorder)initWithTypingSession:(id)a3 aligned:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = TIDPRecorder;
  v9 = [(TIDPRecorder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_typingSession, a3);
    objc_storeStrong(&v10->_typingSessionAligned, a4);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    delegateLock = v10->_delegateLock;
    v10->_delegateLock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    primaryLexiconLock = v10->_primaryLexiconLock;
    v10->_primaryLexiconLock = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    secondaryLexiconLock = v10->_secondaryLexiconLock;
    v10->_secondaryLexiconLock = v15;
  }

  return v10;
}

- (void)dealloc
{
  [(NSLock *)self->_primaryLexiconLock lock];
  lexiconPrimaryInputMode = self->_lexiconPrimaryInputMode;
  if (lexiconPrimaryInputMode)
  {
    CFRelease(lexiconPrimaryInputMode);
    self->_lexiconPrimaryInputMode = 0;
  }

  [(NSLock *)self->_primaryLexiconLock unlock];
  [(NSLock *)self->_secondaryLexiconLock lock];
  lexiconSecondaryInputMode = self->_lexiconSecondaryInputMode;
  if (lexiconSecondaryInputMode)
  {
    CFRelease(lexiconSecondaryInputMode);
    self->_lexiconSecondaryInputMode = 0;
  }

  [(NSLock *)self->_secondaryLexiconLock unlock];
  v5.receiver = self;
  v5.super_class = TIDPRecorder;
  [(TIDPRecorder *)&v5 dealloc];
}

@end