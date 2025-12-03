@interface TIKeyboardInputManagerState
- (BOOL)acceptInputString:(id)string;
- (BOOL)inputStringAcceptsCurrentCandidateIfSelected:(id)selected;
- (BOOL)shouldDeleteAutospaceBeforeTerminator:(id)terminator;
- (BOOL)shouldSuppressAutocorrectionWithTerminator:(id)terminator;
- (BOOL)stringEndsWord:(id)word;
- (TIKeyboardInputManagerState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAcceptAutocorrectionCommitsInline:(BOOL)inline;
- (void)setCommitsAcceptedCandidate:(BOOL)candidate;
- (void)setDelayedCandidateList:(BOOL)list;
- (void)setIgnoreContinuousPathRequirements:(BOOL)requirements;
- (void)setIgnoresDeadKeys:(BOOL)keys;
- (void)setInputStringIsExemptFromChecker:(BOOL)checker;
- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)input;
- (void)setNewInputAcceptsUserSelectedCandidate:(BOOL)candidate;
- (void)setNextInputWouldStartSentence:(BOOL)sentence;
- (void)setShouldExtendPriorWord:(BOOL)word;
- (void)setShouldFixupIncompleteRomaji:(BOOL)romaji;
- (void)setSuppliesCompletions:(BOOL)completions;
- (void)setSupportsNumberKeySelection:(BOOL)selection;
- (void)setSupportsReversionUI:(BOOL)i;
- (void)setSupportsSetPhraseBoundary:(BOOL)boundary;
- (void)setSuppressCompletionsForFieldEditor:(BOOL)editor;
- (void)setSuppressPlaceholderCandidate:(BOOL)candidate;
- (void)setUsesAutoDeleteWord:(BOOL)word;
- (void)setUsesAutocorrectionLists:(BOOL)lists;
- (void)setUsesCandidateSelection:(BOOL)selection;
- (void)setUsesContinuousPath:(BOOL)path;
- (void)setUsesContinuousPathProgressiveCandidates:(BOOL)candidates;
- (void)setUsesLiveConversion:(BOOL)conversion;
- (void)setUsesPunctuationKeysForRowNavigation:(BOOL)navigation;
@end

@implementation TIKeyboardInputManagerState

- (BOOL)stringEndsWord:(id)word
{
  wordCopy = word;
  if (![wordCopy length])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (([wordCopy _isSingleEmoji] & 1) == 0)
  {
    _firstLongCharacter = [wordCopy _firstLongCharacter];
    wordCharacters = [(TIKeyboardInputManagerState *)self wordCharacters];
    characterSet = [wordCharacters characterSet];
    v9 = [characterSet longCharacterIsMember:_firstLongCharacter];

    if ((v9 & 1) == 0)
    {
      if (!-[TIKeyboardInputManagerState hasSupplementalPrefix](self, "hasSupplementalPrefix") || (-[TIKeyboardInputManagerState supplementalLexiconWordExtraCharacters](self, "supplementalLexiconWordExtraCharacters"), v11 = objc_claimAutoreleasedReturnValue(), [v11 characterSet], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "longCharacterIsMember:", _firstLongCharacter), v12, v11, (v13 & 1) == 0))
      {
        if (!-[TIKeyboardInputManagerState shouldAddModifierSymbolsToWordCharacters](self, "shouldAddModifierSymbolsToWordCharacters") || ([wordCopy _isModifierSymbol] & 1) == 0)
        {
          shortcutCompletions = [(TIKeyboardInputManagerState *)self shortcutCompletions];
          characterSet2 = [shortcutCompletions characterSet];
          v16 = [characterSet2 longCharacterIsMember:_firstLongCharacter];

          v5 = v16 ^ 1;
          goto LABEL_6;
        }
      }
    }

    goto LABEL_5;
  }

  v5 = 1;
LABEL_6:

  return v5;
}

- (BOOL)shouldDeleteAutospaceBeforeTerminator:(id)terminator
{
  v11 = v4 && (-[TIKeyboardInputManagerState terminatorsDeletingAutospace](self, "terminatorsDeletingAutospace"), v5 = v4 = terminator;

  return v11;
}

- (BOOL)shouldSuppressAutocorrectionWithTerminator:(id)terminator
{
  v11 = v4 && (-[TIKeyboardInputManagerState terminatorsPreventingAutocorrection](self, "terminatorsPreventingAutocorrection"), v5 = v4 = terminator;

  return v11;
}

- (BOOL)inputStringAcceptsCurrentCandidateIfSelected:(id)selected
{
  selectedCopy = selected;
  if (selectedCopy)
  {
    inputsPreventingAcceptSelectedCandidate = [(TIKeyboardInputManagerState *)self inputsPreventingAcceptSelectedCandidate];

    if (inputsPreventingAcceptSelectedCandidate)
    {
      inputsPreventingAcceptSelectedCandidate2 = [(TIKeyboardInputManagerState *)self inputsPreventingAcceptSelectedCandidate];
      characterSet = [inputsPreventingAcceptSelectedCandidate2 characterSet];
      v8 = [selectedCopy rangeOfCharacterFromSet:characterSet];

      v9 = v8 != 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)acceptInputString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([(TIKeyboardInputManagerState *)self inputsToReject], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    inputsToReject = [(TIKeyboardInputManagerState *)self inputsToReject];
    characterSet = [inputsToReject characterSet];
    v8 = [stringCopy rangeOfCharacterFromSet:characterSet];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[TIKeyboardInputManagerState allocWithZone:](TIKeyboardInputManagerState init];
  v6 = v5;
  if (v5)
  {
    v5->_mask.integerValue = self->_mask.integerValue;
    v7 = [(NSString *)self->_replacementForDoubleSpace copyWithZone:zone];
    replacementForDoubleSpace = v6->_replacementForDoubleSpace;
    v6->_replacementForDoubleSpace = v7;

    v9 = [(NSString *)self->_wordSeparator copyWithZone:zone];
    wordSeparator = v6->_wordSeparator;
    v6->_wordSeparator = v9;

    v6->_initialCandidateBatchCount = self->_initialCandidateBatchCount;
    v6->_shouldAddModifierSymbolsToWordCharacters = self->_shouldAddModifierSymbolsToWordCharacters;
    v11 = [(TICharacterSetDescription *)self->_wordCharacters copyWithZone:zone];
    wordCharacters = v6->_wordCharacters;
    v6->_wordCharacters = v11;

    v13 = [(TICharacterSetDescription *)self->_supplementalLexiconWordExtraCharacters copyWithZone:zone];
    supplementalLexiconWordExtraCharacters = v6->_supplementalLexiconWordExtraCharacters;
    v6->_supplementalLexiconWordExtraCharacters = v13;

    v15 = [(TICharacterSetDescription *)self->_shortcutCompletions copyWithZone:zone];
    shortcutCompletions = v6->_shortcutCompletions;
    v6->_shortcutCompletions = v15;

    v17 = [(TICharacterSetDescription *)self->_inputsPreventingAcceptSelectedCandidate copyWithZone:zone];
    inputsPreventingAcceptSelectedCandidate = v6->_inputsPreventingAcceptSelectedCandidate;
    v6->_inputsPreventingAcceptSelectedCandidate = v17;

    v19 = [(TICharacterSetDescription *)self->_inputsToReject copyWithZone:zone];
    inputsToReject = v6->_inputsToReject;
    v6->_inputsToReject = v19;

    v21 = [(TICharacterSetDescription *)self->_terminatorsPreventingAutocorrection copyWithZone:zone];
    terminatorsPreventingAutocorrection = v6->_terminatorsPreventingAutocorrection;
    v6->_terminatorsPreventingAutocorrection = v21;

    v23 = [(TICharacterSetDescription *)self->_terminatorsDeletingAutospace copyWithZone:zone];
    terminatorsDeletingAutospace = v6->_terminatorsDeletingAutospace;
    v6->_terminatorsDeletingAutospace = v23;

    objc_storeStrong(&v6->_keyboardBehaviors, self->_keyboardBehaviors);
    v25 = [(NSString *)self->_inputString copyWithZone:zone];
    inputString = v6->_inputString;
    v6->_inputString = v25;

    v6->_hasSupplementalPrefix = self->_hasSupplementalPrefix;
    v6->_inputIndex = self->_inputIndex;
    v6->_inputCount = self->_inputCount;
    v27 = [(NSString *)self->_shadowTyping copyWithZone:zone];
    shadowTyping = v6->_shadowTyping;
    v6->_shadowTyping = v27;

    objc_storeStrong(&v6->_autocorrectionRecordForInputString, self->_autocorrectionRecordForInputString);
    objc_storeStrong(&v6->_keyEventMap, self->_keyEventMap);
    v6->_learningFlagsMaskForLastAcceptedCandidate = self->_learningFlagsMaskForLastAcceptedCandidate;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  integerValue = self->_mask.integerValue;
  v25 = coderCopy;
  if (integerValue)
  {
    [coderCopy encodeInteger:integerValue forKey:@"mask"];
    coderCopy = v25;
  }

  replacementForDoubleSpace = self->_replacementForDoubleSpace;
  if (replacementForDoubleSpace)
  {
    [v25 encodeObject:replacementForDoubleSpace forKey:@"replacementForDoubleSpace"];
    coderCopy = v25;
  }

  wordSeparator = self->_wordSeparator;
  if (wordSeparator)
  {
    [v25 encodeObject:wordSeparator forKey:@"wordSeparator"];
    coderCopy = v25;
  }

  initialCandidateBatchCount = self->_initialCandidateBatchCount;
  if (initialCandidateBatchCount)
  {
    [v25 encodeInteger:initialCandidateBatchCount forKey:@"initialCandidateBatchCount"];
    coderCopy = v25;
  }

  if (self->_shouldAddModifierSymbolsToWordCharacters)
  {
    [v25 encodeBool:1 forKey:@"shouldAddModifierSymbolsToWordCharacters"];
    coderCopy = v25;
  }

  wordCharacters = self->_wordCharacters;
  if (wordCharacters)
  {
    [v25 encodeObject:wordCharacters forKey:@"wordCharacters"];
    coderCopy = v25;
  }

  supplementalLexiconWordExtraCharacters = self->_supplementalLexiconWordExtraCharacters;
  if (supplementalLexiconWordExtraCharacters)
  {
    [v25 encodeObject:supplementalLexiconWordExtraCharacters forKey:@"supplementalLexiconWordExtraCharacters"];
    coderCopy = v25;
  }

  shortcutCompletions = self->_shortcutCompletions;
  if (shortcutCompletions)
  {
    [v25 encodeObject:shortcutCompletions forKey:@"shortcutCompletions"];
    coderCopy = v25;
  }

  inputsPreventingAcceptSelectedCandidate = self->_inputsPreventingAcceptSelectedCandidate;
  if (inputsPreventingAcceptSelectedCandidate)
  {
    [v25 encodeObject:inputsPreventingAcceptSelectedCandidate forKey:@"inputsPreventingAcceptSelectedCandidate"];
    coderCopy = v25;
  }

  inputsToReject = self->_inputsToReject;
  if (inputsToReject)
  {
    [v25 encodeObject:inputsToReject forKey:@"inputsToReject"];
    coderCopy = v25;
  }

  terminatorsPreventingAutocorrection = self->_terminatorsPreventingAutocorrection;
  if (terminatorsPreventingAutocorrection)
  {
    [v25 encodeObject:terminatorsPreventingAutocorrection forKey:@"terminatorsPreventingAutocorrection"];
    coderCopy = v25;
  }

  terminatorsDeletingAutospace = self->_terminatorsDeletingAutospace;
  if (terminatorsDeletingAutospace)
  {
    [v25 encodeObject:terminatorsDeletingAutospace forKey:@"terminatorsDeletingAutospace"];
    coderCopy = v25;
  }

  keyboardBehaviors = self->_keyboardBehaviors;
  if (keyboardBehaviors)
  {
    [v25 encodeObject:keyboardBehaviors forKey:@"keyboardBehaviors"];
    coderCopy = v25;
  }

  inputString = self->_inputString;
  if (inputString)
  {
    [v25 encodeObject:inputString forKey:@"inputString"];
    coderCopy = v25;
  }

  [coderCopy encodeBool:self->_hasSupplementalPrefix forKey:@"hasSupplementalPrefix"];
  inputIndex = self->_inputIndex;
  if (inputIndex)
  {
    [v25 encodeInteger:inputIndex forKey:@"inputIndex"];
  }

  inputCount = self->_inputCount;
  if (inputCount)
  {
    [v25 encodeInteger:inputCount forKey:@"inputCount"];
  }

  shadowTyping = self->_shadowTyping;
  if (shadowTyping)
  {
    [v25 encodeObject:shadowTyping forKey:@"shadowTyping"];
  }

  autocorrectionRecordForInputString = self->_autocorrectionRecordForInputString;
  if (autocorrectionRecordForInputString)
  {
    [v25 encodeObject:autocorrectionRecordForInputString forKey:@"autocorrectionRecordForInputString"];
  }

  keyEventMap = self->_keyEventMap;
  if (keyEventMap)
  {
    [v25 encodeObject:keyEventMap forKey:@"keyEventMap"];
  }

  v23 = v25;
  if (self->_learningFlagsMaskForLastAcceptedCandidate)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v25 encodeObject:v24 forKey:@"learningFlagsMaskForLastAcceptedCandidate"];

    v23 = v25;
  }
}

- (TIKeyboardInputManagerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = TIKeyboardInputManagerState;
  v5 = [(TIKeyboardInputManagerState *)&v47 init];
  if (v5)
  {
    v5->_mask.integerValue = [coderCopy decodeIntegerForKey:@"mask"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wordSeparator"];
    v7 = [v6 copy];
    wordSeparator = v5->_wordSeparator;
    v5->_wordSeparator = v7;

    v5->_shouldAddModifierSymbolsToWordCharacters = [coderCopy decodeBoolForKey:@"shouldAddModifierSymbolsToWordCharacters"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wordCharacters"];
    v10 = [v9 copy];
    wordCharacters = v5->_wordCharacters;
    v5->_wordCharacters = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementalLexiconWordExtraCharacters"];
    v13 = [v12 copy];
    supplementalLexiconWordExtraCharacters = v5->_supplementalLexiconWordExtraCharacters;
    v5->_supplementalLexiconWordExtraCharacters = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutCompletions"];
    v16 = [v15 copy];
    shortcutCompletions = v5->_shortcutCompletions;
    v5->_shortcutCompletions = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputsPreventingAcceptSelectedCandidate"];
    v19 = [v18 copy];
    inputsPreventingAcceptSelectedCandidate = v5->_inputsPreventingAcceptSelectedCandidate;
    v5->_inputsPreventingAcceptSelectedCandidate = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputsToReject"];
    v22 = [v21 copy];
    inputsToReject = v5->_inputsToReject;
    v5->_inputsToReject = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminatorsPreventingAutocorrection"];
    v25 = [v24 copy];
    terminatorsPreventingAutocorrection = v5->_terminatorsPreventingAutocorrection;
    v5->_terminatorsPreventingAutocorrection = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminatorsDeletingAutospace"];
    v28 = [v27 copy];
    terminatorsDeletingAutospace = v5->_terminatorsDeletingAutospace;
    v5->_terminatorsDeletingAutospace = v28;

    v5->_initialCandidateBatchCount = [coderCopy decodeIntegerForKey:@"initialCandidateBatchCount"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardBehaviors"];
    keyboardBehaviors = v5->_keyboardBehaviors;
    v5->_keyboardBehaviors = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputString"];
    v33 = [v32 copy];
    inputString = v5->_inputString;
    v5->_inputString = v33;

    v5->_hasSupplementalPrefix = [coderCopy decodeBoolForKey:@"hasSupplementalPrefix"];
    v5->_inputIndex = [coderCopy decodeIntegerForKey:@"inputIndex"];
    v5->_inputCount = [coderCopy decodeIntegerForKey:@"inputCount"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowTyping"];
    v36 = [v35 copy];
    shadowTyping = v5->_shadowTyping;
    v5->_shadowTyping = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autocorrectionRecordForInputString"];
    autocorrectionRecordForInputString = v5->_autocorrectionRecordForInputString;
    v5->_autocorrectionRecordForInputString = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyEventMap"];
    keyEventMap = v5->_keyEventMap;
    v5->_keyEventMap = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacementForDoubleSpace"];
    v43 = [v42 copy];
    replacementForDoubleSpace = v5->_replacementForDoubleSpace;
    v5->_replacementForDoubleSpace = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learningFlagsMaskForLastAcceptedCandidate"];
    v5->_learningFlagsMaskForLastAcceptedCandidate = [v45 unsignedIntValue];
  }

  return v5;
}

- (void)setAcceptAutocorrectionCommitsInline:(BOOL)inline
{
  if (inline)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFBFFFFF | v3);
}

- (void)setShouldFixupIncompleteRomaji:(BOOL)romaji
{
  if (romaji)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFDFFFFF | v3);
}

- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)input
{
  if (input)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFEFFFFF | v3);
}

- (void)setUsesContinuousPathProgressiveCandidates:(BOOL)candidates
{
  if (candidates)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFBFFFF | v3);
}

- (void)setDelayedCandidateList:(BOOL)list
{
  if (list)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFEFFFFFF | v3);
}

- (void)setUsesLiveConversion:(BOOL)conversion
{
  if (conversion)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFF7FFFFF | v3);
}

- (void)setIgnoreContinuousPathRequirements:(BOOL)requirements
{
  if (requirements)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFDFFFFFF | v3);
}

- (void)setUsesContinuousPath:(BOOL)path
{
  if (path)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFDFFFF | v3);
}

- (void)setSuppressPlaceholderCandidate:(BOOL)candidate
{
  if (candidate)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFDFFF | v3);
}

- (void)setUsesAutocorrectionLists:(BOOL)lists
{
  if (lists)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFBFFF | v3);
}

- (void)setUsesCandidateSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFEFF | v3);
}

- (void)setUsesAutoDeleteWord:(BOOL)word
{
  if (word)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFF7F | v3);
}

- (void)setSuppressCompletionsForFieldEditor:(BOOL)editor
{
  if (editor)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFBF | v3);
}

- (void)setSupportsSetPhraseBoundary:(BOOL)boundary
{
  if (boundary)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFDF | v3);
}

- (void)setUsesPunctuationKeysForRowNavigation:(BOOL)navigation
{
  if (navigation)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFF7FFFF | v3);
}

- (void)setSupportsNumberKeySelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFEF | v3);
}

- (void)setSuppliesCompletions:(BOOL)completions
{
  if (completions)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFF7 | v3);
}

- (void)setSupportsReversionUI:(BOOL)i
{
  if (i)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFBFFFFFF | v3);
}

- (void)setShouldExtendPriorWord:(BOOL)word
{
  if (word)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFB | v3);
}

- (void)setNextInputWouldStartSentence:(BOOL)sentence
{
  if (sentence)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFF7FF | v3);
}

- (void)setInputStringIsExemptFromChecker:(BOOL)checker
{
  if (checker)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFEFFF | v3);
}

- (void)setIgnoresDeadKeys:(BOOL)keys
{
  if (keys)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFD | v3);
}

- (void)setNewInputAcceptsUserSelectedCandidate:(BOOL)candidate
{
  if (candidate)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFBFF | v3);
}

- (void)setCommitsAcceptedCandidate:(BOOL)candidate
{
  if (candidate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFDFF | v3);
}

@end