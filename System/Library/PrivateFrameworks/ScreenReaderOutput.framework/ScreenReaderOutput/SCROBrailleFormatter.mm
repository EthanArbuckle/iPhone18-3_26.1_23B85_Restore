@interface SCROBrailleFormatter
+ (void)resetEditingManager;
- (BOOL)hasPlaceholderText;
- (SCROBrailleFormatter)initWithOutputTableIdentifier:(id)a3 inputTableIdentifier:(id)a4 showDotsSevenAndEight:(BOOL)a5;
- (_NSRange)_brailleRangeForTextRange:(_NSRange)a3 textPositions:(id)a4 brailleLength:(unint64_t)a5;
- (_NSRange)rangeOfBrailleCellRepresentingCharacterAtIndex:(unint64_t)a3;
- (id)_firstOutputDelegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepCopyWithZone:(_NSZone *)a3;
- (id)printBrailleForText:(id)a3 language:(id)a4 mode:(unint64_t)a5 textPositionsRange:(_NSRange)a6 locations:(id *)a7 textFormattingRanges:(id)a8;
- (id)textForPrintBraille:(id)a3 language:(id)a4 mode:(unint64_t)a5 locations:(id *)a6;
- (void)addOutputDelegate:(id)a3;
- (void)addText:(id)a3 language:(id)a4 selection:(_NSRange *)a5 token:(int64_t)a6 focus:(_NSRange *)a7 isEditableText:(BOOL)a8;
- (void)addText:(id)a3 overrideText:(id)a4 language:(id)a5 selection:(_NSRange *)a6 token:(int64_t)a7 focus:(_NSRange *)a8 technical:(BOOL)a9 isEditableText:(BOOL)a10;
- (void)addText:(id)a3 overrideText:(id)a4 language:(id)a5 selection:(_NSRange *)a6 token:(int64_t)a7 focus:(_NSRange *)a8 technical:(BOOL)a9 isEditableText:(BOOL)a10 paddingRange:(_NSRange)a11 suggestionRange:(_NSRange)a12 editingString:(id)a13 textFormattingRanges:(id)a14 selectionOnDifferentLine:(BOOL)a15;
- (void)addText:(id)a3 selection:(_NSRange *)a4 token:(int64_t)a5 focus:(_NSRange *)a6 technical:(BOOL)a7 isEditableText:(BOOL)a8;
- (void)addTextPreCustom:(id)a3 overrideText:(id)a4 language:(id)a5 selection:(_NSRange *)a6 token:(int64_t)a7 focus:(_NSRange *)a8 technical:(BOOL)a9 isEditableText:(BOOL)a10 isTerminalOutput:(BOOL)a11 paddingRange:(_NSRange)a12 suggestionRange:(_NSRange)a13 editingString:(id)a14 textFormattingRanges:(id)a15;
- (void)brailleDisplayDeletedCharacter:(id)a3;
- (void)brailleDisplayInsertedCharacter:(id)a3 modifiers:(id)a4;
- (void)brailleDisplayStringDidChange:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5 modifiers:(id)a6;
- (void)didInsertScriptString:(id)a3;
- (void)replaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(unint64_t)a5;
- (void)requestSpeech:(id)a3 language:(id)a4;
- (void)scriptSelectionDidChange:(_NSRange)a3;
- (void)setBrailleLineOffset:(id)a3 stringLineOffset:(int64_t)a4;
@end

@implementation SCROBrailleFormatter

+ (void)resetEditingManager
{
  v2 = _editingStateManager;
  _editingStateManager = 0;
}

- (SCROBrailleFormatter)initWithOutputTableIdentifier:(id)a3 inputTableIdentifier:(id)a4 showDotsSevenAndEight:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(SCROBrailleFormatter *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_displayMode = 0;
    v11->_showDotsSevenAndEight = a5;
    v11->_generationID = ++GenerationCount;
    objc_storeStrong(&v11->_outputTableIdentifier, a3);
    objc_storeStrong(&v12->_inputTableIdentifier, a4);
    v13 = [objc_alloc(MEMORY[0x277CF3320]) initWithDelegate:v12 translationDelegate:v12];
    stateManager = v12->_stateManager;
    v12->_stateManager = v13;

    v15 = objc_alloc_init(MEMORY[0x277CF3330]);
    editString = v12->_editString;
    v12->_editString = v15;

    emptyEditingScriptString = v12->_emptyEditingScriptString;
    v12->_emptyEditingScriptString = 0;

    v18 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    outputDelegates = v12->_outputDelegates;
    v12->_outputDelegates = v18;

    v20 = objc_opt_new();
    outputDelegatesLock = v12->_outputDelegatesLock;
    v12->_outputDelegatesLock = v20;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithOutputTableIdentifier:inputTableIdentifier:showDotsSevenAndEight:", self->_outputTableIdentifier, self->_inputTableIdentifier, self->_showDotsSevenAndEight}];
  [v4 setDisplayMode:self->_displayMode];
  [v4 setAppToken:self->_appToken];
  [v4 setStatusText:self->_statusText];
  [v4 setCurrentUnread:self->_currentUnread];
  [v4 setAnyUnread:self->_anyUnread];
  [v4 setLineFocus:{-[SCROBrailleFormatter lineFocus](self, "lineFocus")}];
  [v4 setLineOffset:{-[SCROBrailleFormatter lineOffset](self, "lineOffset")}];
  *(v4 + 96) = self->_generationID;
  v5 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v5 lock];

  v6 = [(NSPointerArray *)self->_outputDelegates copy];
  v7 = *(v4 + 104);
  *(v4 + 104) = v6;

  v8 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v8 unlock];

  v9 = [(BRLTBrailleStateManager *)self->_stateManager copy];
  v10 = *(v4 + 64);
  *(v4 + 64) = v9;

  objc_storeStrong((v4 + 72), self->_editString);
  return v4;
}

- (id)deepCopyWithZone:(_NSZone *)a3
{
  v5 = [(SCROBrailleFormatter *)self copyWithZone:?];
  v6 = [(NSAttributedString *)self->_statusText deepCopyWithZone:a3];
  v7 = *(v5 + 7);
  *(v5 + 7) = v6;

  *(v5 + 10) = self->_firstToken;
  *(v5 + 88) = *&self->_lastToken;
  *(v5 + 6) = self->_lineOffset;
  v8 = [(BRLTBrailleStateManager *)self->_stateManager copy];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  objc_storeStrong(v5 + 9, self->_editString);
  v10 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v10 lock];

  v11 = [(NSPointerArray *)self->_outputDelegates copy];
  v12 = *(v5 + 13);
  *(v5 + 13) = v11;

  v13 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v13 unlock];

  return v5;
}

- (void)addText:(id)a3 language:(id)a4 selection:(_NSRange *)a5 token:(int64_t)a6 focus:(_NSRange *)a7 isEditableText:(BOOL)a8
{
  BYTE1(v8) = a8;
  LOBYTE(v8) = 0;
  [(SCROBrailleFormatter *)self addText:a3 overrideText:0 language:a4 selection:a5 token:a6 focus:a7 technical:v8 isEditableText:?];
}

- (void)addText:(id)a3 selection:(_NSRange *)a4 token:(int64_t)a5 focus:(_NSRange *)a6 technical:(BOOL)a7 isEditableText:(BOOL)a8
{
  BYTE1(v8) = a8;
  LOBYTE(v8) = a7;
  [(SCROBrailleFormatter *)self addText:a3 overrideText:0 language:0 selection:a4 token:a5 focus:a6 technical:v8 isEditableText:?];
}

- (void)addText:(id)a3 overrideText:(id)a4 language:(id)a5 selection:(_NSRange *)a6 token:(int64_t)a7 focus:(_NSRange *)a8 technical:(BOOL)a9 isEditableText:(BOOL)a10
{
  LOBYTE(v11) = 0;
  LOWORD(v10) = __PAIR16__(a10, a9);
  [(SCROBrailleFormatter *)self addText:a3 overrideText:a4 language:a5 selection:a6 token:a7 focus:a8 technical:v10 isEditableText:0x7FFFFFFFFFFFFFFFLL paddingRange:0 suggestionRange:0x7FFFFFFFFFFFFFFFLL editingString:0 textFormattingRanges:0 selectionOnDifferentLine:0, v11];
}

- (void)addText:(id)a3 overrideText:(id)a4 language:(id)a5 selection:(_NSRange *)a6 token:(int64_t)a7 focus:(_NSRange *)a8 technical:(BOOL)a9 isEditableText:(BOOL)a10 paddingRange:(_NSRange)a11 suggestionRange:(_NSRange)a12 editingString:(id)a13 textFormattingRanges:(id)a14 selectionOnDifferentLine:(BOOL)a15
{
  v31 = a3;
  v19 = a14;
  v34.length = [v31 length];
  v34.location = 0;
  v20 = NSIntersectionRange(v34, a11);
  if (v20.location == a11.location && v20.length == a11.length)
  {
    v24 = [v31 stringByReplacingCharactersInRange:a11.location withString:{a11.length, &stru_28763D5C8}];

    v22 = v24;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v22 = v31;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  location = a6->location;
  a6 = a6->length;
LABEL_9:
  v32 = v22;
  if (a10 && location == 0x7FFFFFFFFFFFFFFFLL && !a15)
  {
    location = [v22 length];
    a6 = 0;
  }

  if (a8)
  {
    v25 = a8->location;
    a8 = a8->length;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = objc_alloc(MEMORY[0x277CF3330]);
  if (a10)
  {
    v27 = 0;
  }

  else
  {
    v27 = v19;
  }

  v28 = [v26 initWithString:v32 selection:location focus:a6 token:v25 suggestion:a8 textFormattingRanges:{a7, a12.location, a12.length, v27}];
  v29 = [(BRLTEditString *)self->_editString appending:v28];
  editString = self->_editString;
  self->_editString = v29;

  self->_isEditableText = a10;
  self->_needsTechnicalMode = a9;
  if (a7)
  {
    if (!self->_firstToken)
    {
      self->_firstToken = a7;
    }

    self->_lastToken = a7;
  }
}

- (void)addTextPreCustom:(id)a3 overrideText:(id)a4 language:(id)a5 selection:(_NSRange *)a6 token:(int64_t)a7 focus:(_NSRange *)a8 technical:(BOOL)a9 isEditableText:(BOOL)a10 isTerminalOutput:(BOOL)a11 paddingRange:(_NSRange)a12 suggestionRange:(_NSRange)a13 editingString:(id)a14 textFormattingRanges:(id)a15
{
  v49 = a3;
  v19 = a15;
  v52.length = [v49 length];
  v52.location = 0;
  v20 = NSIntersectionRange(v52, a12);
  if (v20.location == a12.location && v20.length == a12.length)
  {
    v25 = [v49 stringByReplacingCharactersInRange:a12.location withString:{a12.length, &stru_28763D5C8}];

    v22 = v25;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v22 = v49;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  location = a6->location;
  length = a6->length;
LABEL_9:
  v50 = v22;
  if (a10 && location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = [v22 length];
    length = 0;
  }

  if (a8)
  {
    v26 = a8->location;
    a8 = a8->length;
  }

  else
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  p_stateManager = &self->_stateManager;
  v28 = [(BRLTBrailleStateManager *)self->_stateManager outputScriptString];

  if (v28)
  {
    v29 = [(BRLTBrailleStateManager *)*p_stateManager outputScriptString];
    [v29 addString:v50 selection:location focus:length token:{v26, a8, a7}];
  }

  else
  {
    if (a10)
    {
      if (_editingStateManager)
      {
        v30 = [(BRLTBrailleStateManager *)*p_stateManager inputTranslationMode];
        [_editingStateManager setInputTranslationMode:v30];
        v31 = [(BRLTBrailleStateManager *)self->_stateManager outputTranslationMode];
        [_editingStateManager setOutputTranslationMode:v31];
        objc_storeStrong(&self->_stateManager, _editingStateManager);
        outputDelegates = self->_outputDelegates;
        if (!outputDelegates || ![(NSPointerArray *)outputDelegates count])
        {
          v33 = [(BRLTBrailleStateManager *)*p_stateManager translationDelegate];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v34 = [(BRLTBrailleStateManager *)self->_stateManager translationDelegate];
            v35 = [v34 outputDelegates];
            v36 = self->_outputDelegates;
            self->_outputDelegates = v35;

            v37 = self->_outputDelegates;
            if (v37)
            {
              v38 = [(NSPointerArray *)v37 copy];
              v39 = self->_outputDelegates;
              self->_outputDelegates = v38;
            }
          }
        }

        [(BRLTBrailleStateManager *)self->_stateManager setDelegate:self];
        [(BRLTBrailleStateManager *)self->_stateManager setTranslationDelegate:self];
      }

      else
      {
        objc_storeStrong(&_editingStateManager, *p_stateManager);
      }
    }

    if (a4)
    {
      v40 = [objc_alloc(MEMORY[0x277CF3338]) initWithString:&stru_28763D5C8 selection:0 focus:0 token:{v26, a8, a7}];
      [(SCROBrailleFormatter *)self setEmptyEditingScriptString:v40];
    }

    v29 = [objc_alloc(MEMORY[0x277CF3338]) initWithString:v50 selection:location focus:length token:{v26, a8, a7}];
  }

  [v29 setTextFormattingRanges:v19];

  [v29 setSuggestionRange:{a13.location, a13.length}];
  if (a7)
  {
    if (!self->_firstToken)
    {
      self->_firstToken = a7;
    }

    self->_lastToken = a7;
  }

  if (a9)
  {
    [(BRLTBrailleStateManager *)*p_stateManager setOutputTranslationMode:4];
  }

  [(BRLTBrailleStateManager *)*p_stateManager setScriptString:v29];
  [(BRLTBrailleStateManager *)*p_stateManager setEditable:a10];
  [(BRLTBrailleStateManager *)*p_stateManager setIsTerminalOutput:a11];
  if (*p_stateManager == _editingStateManager)
  {
    v41 = _editingLanguage;
    v42 = +[SCROBrailleTranslationManager sharedManager];
    v43 = [v42 defaultLanguage];
    LOBYTE(v41) = [v41 isEqualToString:v43];

    if ((v41 & 1) == 0)
    {
      if (_editingLanguage)
      {
        [(BRLTBrailleStateManager *)*p_stateManager translateForced:1];
      }

      v44 = +[SCROBrailleTranslationManager sharedManager];
      v45 = [v44 defaultLanguage];
      v46 = _editingLanguage;
      _editingLanguage = v45;
    }
  }
}

- (_NSRange)rangeOfBrailleCellRepresentingCharacterAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x277CF3318] sharedModel];
  v5 = [v4 scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:a3];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (BOOL)hasPlaceholderText
{
  v2 = [(SCROBrailleFormatter *)self emptyEditingScriptString];
  v3 = v2 != 0;

  return v3;
}

- (id)printBrailleForText:(id)a3 language:(id)a4 mode:(unint64_t)a5 textPositionsRange:(_NSRange)a6 locations:(id *)a7 textFormattingRanges:(id)a8
{
  length = a6.length;
  location = a6.location;
  v14 = a8;
  v15 = a4;
  v16 = a3;
  v17 = +[SCROBrailleTranslationManager sharedManager];
  v18 = [v17 printBrailleForText:v16 language:v15 mode:a5 textPositionsRange:location locations:length textFormattingRanges:{a7, v14}];

  return v18;
}

- (id)textForPrintBraille:(id)a3 language:(id)a4 mode:(unint64_t)a5 locations:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = +[SCROBrailleTranslationManager sharedManager];
  v12 = [v11 textForPrintBraille:v10 language:v9 mode:a5 locations:a6];

  return v12;
}

- (void)addOutputDelegate:(id)a3
{
  v10 = a3;
  v4 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v4 lock];

  if (!self->_outputDelegates)
  {
    v5 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    outputDelegates = self->_outputDelegates;
    self->_outputDelegates = v5;
  }

  if (v10)
  {
    v7 = [(NSPointerArray *)self->_outputDelegates allObjects];
    v8 = [v7 containsObject:v10];

    if ((v8 & 1) == 0)
    {
      [(NSPointerArray *)self->_outputDelegates addPointer:v10];
    }
  }

  v9 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v9 unlock];
}

- (void)brailleDisplayStringDidChange:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5 modifiers:(id)a6
{
  length = a4.length;
  location = a4.location;
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v14 lock];

  v15 = [(NSPointerArray *)self->_outputDelegates copy];
  v16 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v16 unlock];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v23 + 1) + 8 * v21++) brailleDisplayStringDidChange:v11 brailleSelection:location brailleUIOptions:length modifiers:{v12, v13, v23}];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_firstOutputDelegate
{
  v3 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v3 lock];

  v4 = [(NSPointerArray *)self->_outputDelegates allObjects];
  v5 = [v4 firstObject];

  v6 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [v6 unlock];

  return v5;
}

- (void)replaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [v10 replaceScriptStringRange:location withScriptString:length cursorLocation:{v9, a5}];
}

- (void)scriptSelectionDidChange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [v5 scriptSelectionDidChange:{location, length}];
}

- (void)didInsertScriptString:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [v5 didInsertScriptString:v4];
}

- (void)brailleDisplayInsertedCharacter:(id)a3 modifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [v8 brailleDisplayInsertedCharacter:v7 modifiers:v6];
}

- (void)brailleDisplayDeletedCharacter:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [v5 brailleDisplayDeletedCharacter:v4];
}

- (void)requestSpeech:(id)a3 language:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [v8 requestSpeech:v7 language:v6];
}

- (void)setBrailleLineOffset:(id)a3 stringLineOffset:(int64_t)a4
{
  v6 = a3;
  v7 = +[SCROBrailleTranslationManager sharedManager];
  v11 = 0;
  v8 = [v7 printBrailleForText:v6 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{&v11, 0}];

  v9 = v11;
  v10 = -[SCROBrailleFormatter _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", a4, 0, v9, [v8 length]);

  self->_lineOffset = v10;
}

- (_NSRange)_brailleRangeForTextRange:(_NSRange)a3 textPositions:(id)a4 brailleLength:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = [v8 bytes];
  v10 = [v8 length];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 8)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = location + length;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v15 = *(v9 + 8 * v12);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL && v15 >= location)
    {
      v14 = v12;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL && v15 >= v13)
    {
      v11 = v12;
    }

    ++v12;
  }

  while (v10 >> 3 != v12);
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    v14 = a5;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = a5;
  }

  v18 = v11 - v14;

  v19 = v14;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

@end