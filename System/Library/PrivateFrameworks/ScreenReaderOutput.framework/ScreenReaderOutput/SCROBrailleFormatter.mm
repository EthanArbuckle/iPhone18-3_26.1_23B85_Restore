@interface SCROBrailleFormatter
+ (void)resetEditingManager;
- (BOOL)hasPlaceholderText;
- (SCROBrailleFormatter)initWithOutputTableIdentifier:(id)identifier inputTableIdentifier:(id)tableIdentifier showDotsSevenAndEight:(BOOL)eight;
- (_NSRange)_brailleRangeForTextRange:(_NSRange)range textPositions:(id)positions brailleLength:(unint64_t)length;
- (_NSRange)rangeOfBrailleCellRepresentingCharacterAtIndex:(unint64_t)index;
- (id)_firstOutputDelegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepCopyWithZone:(_NSZone *)zone;
- (id)printBrailleForText:(id)text language:(id)language mode:(unint64_t)mode textPositionsRange:(_NSRange)range locations:(id *)locations textFormattingRanges:(id)ranges;
- (id)textForPrintBraille:(id)braille language:(id)language mode:(unint64_t)mode locations:(id *)locations;
- (void)addOutputDelegate:(id)delegate;
- (void)addText:(id)text language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus isEditableText:(BOOL)editableText;
- (void)addText:(id)text overrideText:(id)overrideText language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)self0;
- (void)addText:(id)text overrideText:(id)overrideText language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)self0 paddingRange:(_NSRange)self1 suggestionRange:(_NSRange)self2 editingString:(id)self3 textFormattingRanges:(id)self4 selectionOnDifferentLine:(BOOL)self5;
- (void)addText:(id)text selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)editableText;
- (void)addTextPreCustom:(id)custom overrideText:(id)text language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)self0 isTerminalOutput:(BOOL)self1 paddingRange:(_NSRange)self2 suggestionRange:(_NSRange)self3 editingString:(id)self4 textFormattingRanges:(id)self5;
- (void)brailleDisplayDeletedCharacter:(id)character;
- (void)brailleDisplayInsertedCharacter:(id)character modifiers:(id)modifiers;
- (void)brailleDisplayStringDidChange:(id)change brailleSelection:(_NSRange)selection brailleUIOptions:(id)options modifiers:(id)modifiers;
- (void)didInsertScriptString:(id)string;
- (void)replaceScriptStringRange:(_NSRange)range withScriptString:(id)string cursorLocation:(unint64_t)location;
- (void)requestSpeech:(id)speech language:(id)language;
- (void)scriptSelectionDidChange:(_NSRange)change;
- (void)setBrailleLineOffset:(id)offset stringLineOffset:(int64_t)lineOffset;
@end

@implementation SCROBrailleFormatter

+ (void)resetEditingManager
{
  v2 = _editingStateManager;
  _editingStateManager = 0;
}

- (SCROBrailleFormatter)initWithOutputTableIdentifier:(id)identifier inputTableIdentifier:(id)tableIdentifier showDotsSevenAndEight:(BOOL)eight
{
  identifierCopy = identifier;
  tableIdentifierCopy = tableIdentifier;
  v11 = [(SCROBrailleFormatter *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_displayMode = 0;
    v11->_showDotsSevenAndEight = eight;
    v11->_generationID = ++GenerationCount;
    objc_storeStrong(&v11->_outputTableIdentifier, identifier);
    objc_storeStrong(&v12->_inputTableIdentifier, tableIdentifier);
    v13 = [objc_alloc(MEMORY[0x277CF3320]) initWithDelegate:v12 translationDelegate:v12];
    stateManager = v12->_stateManager;
    v12->_stateManager = v13;

    v15 = objc_alloc_init(MEMORY[0x277CF3330]);
    editString = v12->_editString;
    v12->_editString = v15;

    emptyEditingScriptString = v12->_emptyEditingScriptString;
    v12->_emptyEditingScriptString = 0;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    outputDelegates = v12->_outputDelegates;
    v12->_outputDelegates = weakObjectsPointerArray;

    v20 = objc_opt_new();
    outputDelegatesLock = v12->_outputDelegatesLock;
    v12->_outputDelegatesLock = v20;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithOutputTableIdentifier:inputTableIdentifier:showDotsSevenAndEight:", self->_outputTableIdentifier, self->_inputTableIdentifier, self->_showDotsSevenAndEight}];
  [v4 setDisplayMode:self->_displayMode];
  [v4 setAppToken:self->_appToken];
  [v4 setStatusText:self->_statusText];
  [v4 setCurrentUnread:self->_currentUnread];
  [v4 setAnyUnread:self->_anyUnread];
  [v4 setLineFocus:{-[SCROBrailleFormatter lineFocus](self, "lineFocus")}];
  [v4 setLineOffset:{-[SCROBrailleFormatter lineOffset](self, "lineOffset")}];
  *(v4 + 96) = self->_generationID;
  outputDelegatesLock = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock lock];

  v6 = [(NSPointerArray *)self->_outputDelegates copy];
  v7 = *(v4 + 104);
  *(v4 + 104) = v6;

  outputDelegatesLock2 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock2 unlock];

  v9 = [(BRLTBrailleStateManager *)self->_stateManager copy];
  v10 = *(v4 + 64);
  *(v4 + 64) = v9;

  objc_storeStrong((v4 + 72), self->_editString);
  return v4;
}

- (id)deepCopyWithZone:(_NSZone *)zone
{
  v5 = [(SCROBrailleFormatter *)self copyWithZone:?];
  v6 = [(NSAttributedString *)self->_statusText deepCopyWithZone:zone];
  v7 = *(v5 + 7);
  *(v5 + 7) = v6;

  *(v5 + 10) = self->_firstToken;
  *(v5 + 88) = *&self->_lastToken;
  *(v5 + 6) = self->_lineOffset;
  v8 = [(BRLTBrailleStateManager *)self->_stateManager copy];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  objc_storeStrong(v5 + 9, self->_editString);
  outputDelegatesLock = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock lock];

  v11 = [(NSPointerArray *)self->_outputDelegates copy];
  v12 = *(v5 + 13);
  *(v5 + 13) = v11;

  outputDelegatesLock2 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock2 unlock];

  return v5;
}

- (void)addText:(id)text language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus isEditableText:(BOOL)editableText
{
  BYTE1(v8) = editableText;
  LOBYTE(v8) = 0;
  [(SCROBrailleFormatter *)self addText:text overrideText:0 language:language selection:selection token:token focus:focus technical:v8 isEditableText:?];
}

- (void)addText:(id)text selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)editableText
{
  BYTE1(v8) = editableText;
  LOBYTE(v8) = technical;
  [(SCROBrailleFormatter *)self addText:text overrideText:0 language:0 selection:selection token:token focus:focus technical:v8 isEditableText:?];
}

- (void)addText:(id)text overrideText:(id)overrideText language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)self0
{
  LOBYTE(v11) = 0;
  LOWORD(v10) = __PAIR16__(editableText, technical);
  [(SCROBrailleFormatter *)self addText:text overrideText:overrideText language:language selection:selection token:token focus:focus technical:v10 isEditableText:0x7FFFFFFFFFFFFFFFLL paddingRange:0 suggestionRange:0x7FFFFFFFFFFFFFFFLL editingString:0 textFormattingRanges:0 selectionOnDifferentLine:0, v11];
}

- (void)addText:(id)text overrideText:(id)overrideText language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)self0 paddingRange:(_NSRange)self1 suggestionRange:(_NSRange)self2 editingString:(id)self3 textFormattingRanges:(id)self4 selectionOnDifferentLine:(BOOL)self5
{
  textCopy = text;
  rangesCopy = ranges;
  v34.length = [textCopy length];
  v34.location = 0;
  v20 = NSIntersectionRange(v34, range);
  if (v20.location == range.location && v20.length == range.length)
  {
    v24 = [textCopy stringByReplacingCharactersInRange:range.location withString:{range.length, &stru_28763D5C8}];

    v22 = v24;
    if (selection)
    {
      goto LABEL_6;
    }

LABEL_8:
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v22 = textCopy;
  if (!selection)
  {
    goto LABEL_8;
  }

LABEL_6:
  location = selection->location;
  selection = selection->length;
LABEL_9:
  v32 = v22;
  if (editableText && location == 0x7FFFFFFFFFFFFFFFLL && !line)
  {
    location = [v22 length];
    selection = 0;
  }

  if (focus)
  {
    v25 = focus->location;
    focus = focus->length;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = objc_alloc(MEMORY[0x277CF3330]);
  if (editableText)
  {
    v27 = 0;
  }

  else
  {
    v27 = rangesCopy;
  }

  v28 = [v26 initWithString:v32 selection:location focus:selection token:v25 suggestion:focus textFormattingRanges:{token, suggestionRange.location, suggestionRange.length, v27}];
  v29 = [(BRLTEditString *)self->_editString appending:v28];
  editString = self->_editString;
  self->_editString = v29;

  self->_isEditableText = editableText;
  self->_needsTechnicalMode = technical;
  if (token)
  {
    if (!self->_firstToken)
    {
      self->_firstToken = token;
    }

    self->_lastToken = token;
  }
}

- (void)addTextPreCustom:(id)custom overrideText:(id)text language:(id)language selection:(_NSRange *)selection token:(int64_t)token focus:(_NSRange *)focus technical:(BOOL)technical isEditableText:(BOOL)self0 isTerminalOutput:(BOOL)self1 paddingRange:(_NSRange)self2 suggestionRange:(_NSRange)self3 editingString:(id)self4 textFormattingRanges:(id)self5
{
  customCopy = custom;
  rangesCopy = ranges;
  v52.length = [customCopy length];
  v52.location = 0;
  v20 = NSIntersectionRange(v52, range);
  if (v20.location == range.location && v20.length == range.length)
  {
    v25 = [customCopy stringByReplacingCharactersInRange:range.location withString:{range.length, &stru_28763D5C8}];

    v22 = v25;
    if (selection)
    {
      goto LABEL_6;
    }

LABEL_8:
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v22 = customCopy;
  if (!selection)
  {
    goto LABEL_8;
  }

LABEL_6:
  location = selection->location;
  length = selection->length;
LABEL_9:
  v50 = v22;
  if (editableText && location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = [v22 length];
    length = 0;
  }

  if (focus)
  {
    v26 = focus->location;
    focus = focus->length;
  }

  else
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  p_stateManager = &self->_stateManager;
  outputScriptString = [(BRLTBrailleStateManager *)self->_stateManager outputScriptString];

  if (outputScriptString)
  {
    outputScriptString2 = [(BRLTBrailleStateManager *)*p_stateManager outputScriptString];
    [outputScriptString2 addString:v50 selection:location focus:length token:{v26, focus, token}];
  }

  else
  {
    if (editableText)
    {
      if (_editingStateManager)
      {
        inputTranslationMode = [(BRLTBrailleStateManager *)*p_stateManager inputTranslationMode];
        [_editingStateManager setInputTranslationMode:inputTranslationMode];
        outputTranslationMode = [(BRLTBrailleStateManager *)self->_stateManager outputTranslationMode];
        [_editingStateManager setOutputTranslationMode:outputTranslationMode];
        objc_storeStrong(&self->_stateManager, _editingStateManager);
        outputDelegates = self->_outputDelegates;
        if (!outputDelegates || ![(NSPointerArray *)outputDelegates count])
        {
          translationDelegate = [(BRLTBrailleStateManager *)*p_stateManager translationDelegate];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            translationDelegate2 = [(BRLTBrailleStateManager *)self->_stateManager translationDelegate];
            outputDelegates = [translationDelegate2 outputDelegates];
            v36 = self->_outputDelegates;
            self->_outputDelegates = outputDelegates;

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

    if (text)
    {
      v40 = [objc_alloc(MEMORY[0x277CF3338]) initWithString:&stru_28763D5C8 selection:0 focus:0 token:{v26, focus, token}];
      [(SCROBrailleFormatter *)self setEmptyEditingScriptString:v40];
    }

    outputScriptString2 = [objc_alloc(MEMORY[0x277CF3338]) initWithString:v50 selection:location focus:length token:{v26, focus, token}];
  }

  [outputScriptString2 setTextFormattingRanges:rangesCopy];

  [outputScriptString2 setSuggestionRange:{suggestionRange.location, suggestionRange.length}];
  if (token)
  {
    if (!self->_firstToken)
    {
      self->_firstToken = token;
    }

    self->_lastToken = token;
  }

  if (technical)
  {
    [(BRLTBrailleStateManager *)*p_stateManager setOutputTranslationMode:4];
  }

  [(BRLTBrailleStateManager *)*p_stateManager setScriptString:outputScriptString2];
  [(BRLTBrailleStateManager *)*p_stateManager setEditable:editableText];
  [(BRLTBrailleStateManager *)*p_stateManager setIsTerminalOutput:output];
  if (*p_stateManager == _editingStateManager)
  {
    v41 = _editingLanguage;
    v42 = +[SCROBrailleTranslationManager sharedManager];
    defaultLanguage = [v42 defaultLanguage];
    LOBYTE(v41) = [v41 isEqualToString:defaultLanguage];

    if ((v41 & 1) == 0)
    {
      if (_editingLanguage)
      {
        [(BRLTBrailleStateManager *)*p_stateManager translateForced:1];
      }

      v44 = +[SCROBrailleTranslationManager sharedManager];
      defaultLanguage2 = [v44 defaultLanguage];
      v46 = _editingLanguage;
      _editingLanguage = defaultLanguage2;
    }
  }
}

- (_NSRange)rangeOfBrailleCellRepresentingCharacterAtIndex:(unint64_t)index
{
  mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
  v5 = [mEMORY[0x277CF3318] scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:index];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (BOOL)hasPlaceholderText
{
  emptyEditingScriptString = [(SCROBrailleFormatter *)self emptyEditingScriptString];
  v3 = emptyEditingScriptString != 0;

  return v3;
}

- (id)printBrailleForText:(id)text language:(id)language mode:(unint64_t)mode textPositionsRange:(_NSRange)range locations:(id *)locations textFormattingRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  rangesCopy = ranges;
  languageCopy = language;
  textCopy = text;
  v17 = +[SCROBrailleTranslationManager sharedManager];
  v18 = [v17 printBrailleForText:textCopy language:languageCopy mode:mode textPositionsRange:location locations:length textFormattingRanges:{locations, rangesCopy}];

  return v18;
}

- (id)textForPrintBraille:(id)braille language:(id)language mode:(unint64_t)mode locations:(id *)locations
{
  languageCopy = language;
  brailleCopy = braille;
  v11 = +[SCROBrailleTranslationManager sharedManager];
  v12 = [v11 textForPrintBraille:brailleCopy language:languageCopy mode:mode locations:locations];

  return v12;
}

- (void)addOutputDelegate:(id)delegate
{
  delegateCopy = delegate;
  outputDelegatesLock = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock lock];

  if (!self->_outputDelegates)
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    outputDelegates = self->_outputDelegates;
    self->_outputDelegates = weakObjectsPointerArray;
  }

  if (delegateCopy)
  {
    allObjects = [(NSPointerArray *)self->_outputDelegates allObjects];
    v8 = [allObjects containsObject:delegateCopy];

    if ((v8 & 1) == 0)
    {
      [(NSPointerArray *)self->_outputDelegates addPointer:delegateCopy];
    }
  }

  outputDelegatesLock2 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock2 unlock];
}

- (void)brailleDisplayStringDidChange:(id)change brailleSelection:(_NSRange)selection brailleUIOptions:(id)options modifiers:(id)modifiers
{
  length = selection.length;
  location = selection.location;
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  optionsCopy = options;
  modifiersCopy = modifiers;
  outputDelegatesLock = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock lock];

  v15 = [(NSPointerArray *)self->_outputDelegates copy];
  outputDelegatesLock2 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock2 unlock];

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

        [*(*(&v23 + 1) + 8 * v21++) brailleDisplayStringDidChange:changeCopy brailleSelection:location brailleUIOptions:length modifiers:{optionsCopy, modifiersCopy, v23}];
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
  outputDelegatesLock = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock lock];

  allObjects = [(NSPointerArray *)self->_outputDelegates allObjects];
  firstObject = [allObjects firstObject];

  outputDelegatesLock2 = [(SCROBrailleFormatter *)self outputDelegatesLock];
  [outputDelegatesLock2 unlock];

  return firstObject;
}

- (void)replaceScriptStringRange:(_NSRange)range withScriptString:(id)string cursorLocation:(unint64_t)location
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  _firstOutputDelegate = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [_firstOutputDelegate replaceScriptStringRange:location withScriptString:length cursorLocation:{stringCopy, location}];
}

- (void)scriptSelectionDidChange:(_NSRange)change
{
  length = change.length;
  location = change.location;
  _firstOutputDelegate = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [_firstOutputDelegate scriptSelectionDidChange:{location, length}];
}

- (void)didInsertScriptString:(id)string
{
  stringCopy = string;
  _firstOutputDelegate = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [_firstOutputDelegate didInsertScriptString:stringCopy];
}

- (void)brailleDisplayInsertedCharacter:(id)character modifiers:(id)modifiers
{
  modifiersCopy = modifiers;
  characterCopy = character;
  _firstOutputDelegate = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [_firstOutputDelegate brailleDisplayInsertedCharacter:characterCopy modifiers:modifiersCopy];
}

- (void)brailleDisplayDeletedCharacter:(id)character
{
  characterCopy = character;
  _firstOutputDelegate = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [_firstOutputDelegate brailleDisplayDeletedCharacter:characterCopy];
}

- (void)requestSpeech:(id)speech language:(id)language
{
  languageCopy = language;
  speechCopy = speech;
  _firstOutputDelegate = [(SCROBrailleFormatter *)self _firstOutputDelegate];
  [_firstOutputDelegate requestSpeech:speechCopy language:languageCopy];
}

- (void)setBrailleLineOffset:(id)offset stringLineOffset:(int64_t)lineOffset
{
  offsetCopy = offset;
  v7 = +[SCROBrailleTranslationManager sharedManager];
  v11 = 0;
  v8 = [v7 printBrailleForText:offsetCopy language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{&v11, 0}];

  v9 = v11;
  v10 = -[SCROBrailleFormatter _brailleRangeForTextRange:textPositions:brailleLength:](self, "_brailleRangeForTextRange:textPositions:brailleLength:", lineOffset, 0, v9, [v8 length]);

  self->_lineOffset = v10;
}

- (_NSRange)_brailleRangeForTextRange:(_NSRange)range textPositions:(id)positions brailleLength:(unint64_t)length
{
  length = range.length;
  location = range.location;
  positionsCopy = positions;
  bytes = [positionsCopy bytes];
  v10 = [positionsCopy length];
  lengthCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 8)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = location + length;
  lengthCopy = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v15 = *(bytes + 8 * v12);
    if (lengthCopy == 0x7FFFFFFFFFFFFFFFLL && v15 >= location)
    {
      lengthCopy = v12;
    }

    if (lengthCopy2 == 0x7FFFFFFFFFFFFFFFLL && v15 >= v13)
    {
      lengthCopy2 = v12;
    }

    ++v12;
  }

  while (v10 >> 3 != v12);
  if (lengthCopy == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    lengthCopy = length;
  }

  if (lengthCopy2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lengthCopy2 = length;
  }

  v18 = lengthCopy2 - lengthCopy;

  v19 = lengthCopy;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

@end