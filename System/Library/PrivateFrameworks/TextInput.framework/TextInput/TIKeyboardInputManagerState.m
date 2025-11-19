@interface TIKeyboardInputManagerState
- (BOOL)acceptInputString:(id)a3;
- (BOOL)inputStringAcceptsCurrentCandidateIfSelected:(id)a3;
- (BOOL)shouldDeleteAutospaceBeforeTerminator:(id)a3;
- (BOOL)shouldSuppressAutocorrectionWithTerminator:(id)a3;
- (BOOL)stringEndsWord:(id)a3;
- (TIKeyboardInputManagerState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAcceptAutocorrectionCommitsInline:(BOOL)a3;
- (void)setCommitsAcceptedCandidate:(BOOL)a3;
- (void)setDelayedCandidateList:(BOOL)a3;
- (void)setIgnoreContinuousPathRequirements:(BOOL)a3;
- (void)setIgnoresDeadKeys:(BOOL)a3;
- (void)setInputStringIsExemptFromChecker:(BOOL)a3;
- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)a3;
- (void)setNewInputAcceptsUserSelectedCandidate:(BOOL)a3;
- (void)setNextInputWouldStartSentence:(BOOL)a3;
- (void)setShouldExtendPriorWord:(BOOL)a3;
- (void)setShouldFixupIncompleteRomaji:(BOOL)a3;
- (void)setSuppliesCompletions:(BOOL)a3;
- (void)setSupportsNumberKeySelection:(BOOL)a3;
- (void)setSupportsReversionUI:(BOOL)a3;
- (void)setSupportsSetPhraseBoundary:(BOOL)a3;
- (void)setSuppressCompletionsForFieldEditor:(BOOL)a3;
- (void)setSuppressPlaceholderCandidate:(BOOL)a3;
- (void)setUsesAutoDeleteWord:(BOOL)a3;
- (void)setUsesAutocorrectionLists:(BOOL)a3;
- (void)setUsesCandidateSelection:(BOOL)a3;
- (void)setUsesContinuousPath:(BOOL)a3;
- (void)setUsesContinuousPathProgressiveCandidates:(BOOL)a3;
- (void)setUsesLiveConversion:(BOOL)a3;
- (void)setUsesPunctuationKeysForRowNavigation:(BOOL)a3;
@end

@implementation TIKeyboardInputManagerState

- (BOOL)stringEndsWord:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (([v4 _isSingleEmoji] & 1) == 0)
  {
    v6 = [v4 _firstLongCharacter];
    v7 = [(TIKeyboardInputManagerState *)self wordCharacters];
    v8 = [v7 characterSet];
    v9 = [v8 longCharacterIsMember:v6];

    if ((v9 & 1) == 0)
    {
      if (!-[TIKeyboardInputManagerState hasSupplementalPrefix](self, "hasSupplementalPrefix") || (-[TIKeyboardInputManagerState supplementalLexiconWordExtraCharacters](self, "supplementalLexiconWordExtraCharacters"), v11 = objc_claimAutoreleasedReturnValue(), [v11 characterSet], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "longCharacterIsMember:", v6), v12, v11, (v13 & 1) == 0))
      {
        if (!-[TIKeyboardInputManagerState shouldAddModifierSymbolsToWordCharacters](self, "shouldAddModifierSymbolsToWordCharacters") || ([v4 _isModifierSymbol] & 1) == 0)
        {
          v14 = [(TIKeyboardInputManagerState *)self shortcutCompletions];
          v15 = [v14 characterSet];
          v16 = [v15 longCharacterIsMember:v6];

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

- (BOOL)shouldDeleteAutospaceBeforeTerminator:(id)a3
{
  v11 = v4 && (-[TIKeyboardInputManagerState terminatorsDeletingAutospace](self, "terminatorsDeletingAutospace"), v5 = v4 = a3;

  return v11;
}

- (BOOL)shouldSuppressAutocorrectionWithTerminator:(id)a3
{
  v11 = v4 && (-[TIKeyboardInputManagerState terminatorsPreventingAutocorrection](self, "terminatorsPreventingAutocorrection"), v5 = v4 = a3;

  return v11;
}

- (BOOL)inputStringAcceptsCurrentCandidateIfSelected:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TIKeyboardInputManagerState *)self inputsPreventingAcceptSelectedCandidate];

    if (v5)
    {
      v6 = [(TIKeyboardInputManagerState *)self inputsPreventingAcceptSelectedCandidate];
      v7 = [v6 characterSet];
      v8 = [v4 rangeOfCharacterFromSet:v7];

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

- (BOOL)acceptInputString:(id)a3
{
  v4 = a3;
  if (v4 && ([(TIKeyboardInputManagerState *)self inputsToReject], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(TIKeyboardInputManagerState *)self inputsToReject];
    v7 = [v6 characterSet];
    v8 = [v4 rangeOfCharacterFromSet:v7];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[TIKeyboardInputManagerState allocWithZone:](TIKeyboardInputManagerState init];
  v6 = v5;
  if (v5)
  {
    v5->_mask.integerValue = self->_mask.integerValue;
    v7 = [(NSString *)self->_replacementForDoubleSpace copyWithZone:a3];
    replacementForDoubleSpace = v6->_replacementForDoubleSpace;
    v6->_replacementForDoubleSpace = v7;

    v9 = [(NSString *)self->_wordSeparator copyWithZone:a3];
    wordSeparator = v6->_wordSeparator;
    v6->_wordSeparator = v9;

    v6->_initialCandidateBatchCount = self->_initialCandidateBatchCount;
    v6->_shouldAddModifierSymbolsToWordCharacters = self->_shouldAddModifierSymbolsToWordCharacters;
    v11 = [(TICharacterSetDescription *)self->_wordCharacters copyWithZone:a3];
    wordCharacters = v6->_wordCharacters;
    v6->_wordCharacters = v11;

    v13 = [(TICharacterSetDescription *)self->_supplementalLexiconWordExtraCharacters copyWithZone:a3];
    supplementalLexiconWordExtraCharacters = v6->_supplementalLexiconWordExtraCharacters;
    v6->_supplementalLexiconWordExtraCharacters = v13;

    v15 = [(TICharacterSetDescription *)self->_shortcutCompletions copyWithZone:a3];
    shortcutCompletions = v6->_shortcutCompletions;
    v6->_shortcutCompletions = v15;

    v17 = [(TICharacterSetDescription *)self->_inputsPreventingAcceptSelectedCandidate copyWithZone:a3];
    inputsPreventingAcceptSelectedCandidate = v6->_inputsPreventingAcceptSelectedCandidate;
    v6->_inputsPreventingAcceptSelectedCandidate = v17;

    v19 = [(TICharacterSetDescription *)self->_inputsToReject copyWithZone:a3];
    inputsToReject = v6->_inputsToReject;
    v6->_inputsToReject = v19;

    v21 = [(TICharacterSetDescription *)self->_terminatorsPreventingAutocorrection copyWithZone:a3];
    terminatorsPreventingAutocorrection = v6->_terminatorsPreventingAutocorrection;
    v6->_terminatorsPreventingAutocorrection = v21;

    v23 = [(TICharacterSetDescription *)self->_terminatorsDeletingAutospace copyWithZone:a3];
    terminatorsDeletingAutospace = v6->_terminatorsDeletingAutospace;
    v6->_terminatorsDeletingAutospace = v23;

    objc_storeStrong(&v6->_keyboardBehaviors, self->_keyboardBehaviors);
    v25 = [(NSString *)self->_inputString copyWithZone:a3];
    inputString = v6->_inputString;
    v6->_inputString = v25;

    v6->_hasSupplementalPrefix = self->_hasSupplementalPrefix;
    v6->_inputIndex = self->_inputIndex;
    v6->_inputCount = self->_inputCount;
    v27 = [(NSString *)self->_shadowTyping copyWithZone:a3];
    shadowTyping = v6->_shadowTyping;
    v6->_shadowTyping = v27;

    objc_storeStrong(&v6->_autocorrectionRecordForInputString, self->_autocorrectionRecordForInputString);
    objc_storeStrong(&v6->_keyEventMap, self->_keyEventMap);
    v6->_learningFlagsMaskForLastAcceptedCandidate = self->_learningFlagsMaskForLastAcceptedCandidate;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  integerValue = self->_mask.integerValue;
  v25 = v4;
  if (integerValue)
  {
    [v4 encodeInteger:integerValue forKey:@"mask"];
    v4 = v25;
  }

  replacementForDoubleSpace = self->_replacementForDoubleSpace;
  if (replacementForDoubleSpace)
  {
    [v25 encodeObject:replacementForDoubleSpace forKey:@"replacementForDoubleSpace"];
    v4 = v25;
  }

  wordSeparator = self->_wordSeparator;
  if (wordSeparator)
  {
    [v25 encodeObject:wordSeparator forKey:@"wordSeparator"];
    v4 = v25;
  }

  initialCandidateBatchCount = self->_initialCandidateBatchCount;
  if (initialCandidateBatchCount)
  {
    [v25 encodeInteger:initialCandidateBatchCount forKey:@"initialCandidateBatchCount"];
    v4 = v25;
  }

  if (self->_shouldAddModifierSymbolsToWordCharacters)
  {
    [v25 encodeBool:1 forKey:@"shouldAddModifierSymbolsToWordCharacters"];
    v4 = v25;
  }

  wordCharacters = self->_wordCharacters;
  if (wordCharacters)
  {
    [v25 encodeObject:wordCharacters forKey:@"wordCharacters"];
    v4 = v25;
  }

  supplementalLexiconWordExtraCharacters = self->_supplementalLexiconWordExtraCharacters;
  if (supplementalLexiconWordExtraCharacters)
  {
    [v25 encodeObject:supplementalLexiconWordExtraCharacters forKey:@"supplementalLexiconWordExtraCharacters"];
    v4 = v25;
  }

  shortcutCompletions = self->_shortcutCompletions;
  if (shortcutCompletions)
  {
    [v25 encodeObject:shortcutCompletions forKey:@"shortcutCompletions"];
    v4 = v25;
  }

  inputsPreventingAcceptSelectedCandidate = self->_inputsPreventingAcceptSelectedCandidate;
  if (inputsPreventingAcceptSelectedCandidate)
  {
    [v25 encodeObject:inputsPreventingAcceptSelectedCandidate forKey:@"inputsPreventingAcceptSelectedCandidate"];
    v4 = v25;
  }

  inputsToReject = self->_inputsToReject;
  if (inputsToReject)
  {
    [v25 encodeObject:inputsToReject forKey:@"inputsToReject"];
    v4 = v25;
  }

  terminatorsPreventingAutocorrection = self->_terminatorsPreventingAutocorrection;
  if (terminatorsPreventingAutocorrection)
  {
    [v25 encodeObject:terminatorsPreventingAutocorrection forKey:@"terminatorsPreventingAutocorrection"];
    v4 = v25;
  }

  terminatorsDeletingAutospace = self->_terminatorsDeletingAutospace;
  if (terminatorsDeletingAutospace)
  {
    [v25 encodeObject:terminatorsDeletingAutospace forKey:@"terminatorsDeletingAutospace"];
    v4 = v25;
  }

  keyboardBehaviors = self->_keyboardBehaviors;
  if (keyboardBehaviors)
  {
    [v25 encodeObject:keyboardBehaviors forKey:@"keyboardBehaviors"];
    v4 = v25;
  }

  inputString = self->_inputString;
  if (inputString)
  {
    [v25 encodeObject:inputString forKey:@"inputString"];
    v4 = v25;
  }

  [v4 encodeBool:self->_hasSupplementalPrefix forKey:@"hasSupplementalPrefix"];
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

- (TIKeyboardInputManagerState)initWithCoder:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = TIKeyboardInputManagerState;
  v5 = [(TIKeyboardInputManagerState *)&v47 init];
  if (v5)
  {
    v5->_mask.integerValue = [v4 decodeIntegerForKey:@"mask"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wordSeparator"];
    v7 = [v6 copy];
    wordSeparator = v5->_wordSeparator;
    v5->_wordSeparator = v7;

    v5->_shouldAddModifierSymbolsToWordCharacters = [v4 decodeBoolForKey:@"shouldAddModifierSymbolsToWordCharacters"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wordCharacters"];
    v10 = [v9 copy];
    wordCharacters = v5->_wordCharacters;
    v5->_wordCharacters = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalLexiconWordExtraCharacters"];
    v13 = [v12 copy];
    supplementalLexiconWordExtraCharacters = v5->_supplementalLexiconWordExtraCharacters;
    v5->_supplementalLexiconWordExtraCharacters = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutCompletions"];
    v16 = [v15 copy];
    shortcutCompletions = v5->_shortcutCompletions;
    v5->_shortcutCompletions = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputsPreventingAcceptSelectedCandidate"];
    v19 = [v18 copy];
    inputsPreventingAcceptSelectedCandidate = v5->_inputsPreventingAcceptSelectedCandidate;
    v5->_inputsPreventingAcceptSelectedCandidate = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputsToReject"];
    v22 = [v21 copy];
    inputsToReject = v5->_inputsToReject;
    v5->_inputsToReject = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"terminatorsPreventingAutocorrection"];
    v25 = [v24 copy];
    terminatorsPreventingAutocorrection = v5->_terminatorsPreventingAutocorrection;
    v5->_terminatorsPreventingAutocorrection = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"terminatorsDeletingAutospace"];
    v28 = [v27 copy];
    terminatorsDeletingAutospace = v5->_terminatorsDeletingAutospace;
    v5->_terminatorsDeletingAutospace = v28;

    v5->_initialCandidateBatchCount = [v4 decodeIntegerForKey:@"initialCandidateBatchCount"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardBehaviors"];
    keyboardBehaviors = v5->_keyboardBehaviors;
    v5->_keyboardBehaviors = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputString"];
    v33 = [v32 copy];
    inputString = v5->_inputString;
    v5->_inputString = v33;

    v5->_hasSupplementalPrefix = [v4 decodeBoolForKey:@"hasSupplementalPrefix"];
    v5->_inputIndex = [v4 decodeIntegerForKey:@"inputIndex"];
    v5->_inputCount = [v4 decodeIntegerForKey:@"inputCount"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shadowTyping"];
    v36 = [v35 copy];
    shadowTyping = v5->_shadowTyping;
    v5->_shadowTyping = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autocorrectionRecordForInputString"];
    autocorrectionRecordForInputString = v5->_autocorrectionRecordForInputString;
    v5->_autocorrectionRecordForInputString = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyEventMap"];
    keyEventMap = v5->_keyEventMap;
    v5->_keyEventMap = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replacementForDoubleSpace"];
    v43 = [v42 copy];
    replacementForDoubleSpace = v5->_replacementForDoubleSpace;
    v5->_replacementForDoubleSpace = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learningFlagsMaskForLastAcceptedCandidate"];
    v5->_learningFlagsMaskForLastAcceptedCandidate = [v45 unsignedIntValue];
  }

  return v5;
}

- (void)setAcceptAutocorrectionCommitsInline:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFBFFFFF | v3);
}

- (void)setShouldFixupIncompleteRomaji:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFDFFFFF | v3);
}

- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFEFFFFF | v3);
}

- (void)setUsesContinuousPathProgressiveCandidates:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFBFFFF | v3);
}

- (void)setDelayedCandidateList:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFEFFFFFF | v3);
}

- (void)setUsesLiveConversion:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFF7FFFFF | v3);
}

- (void)setIgnoreContinuousPathRequirements:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFDFFFFFF | v3);
}

- (void)setUsesContinuousPath:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFDFFFF | v3);
}

- (void)setSuppressPlaceholderCandidate:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFDFFF | v3);
}

- (void)setUsesAutocorrectionLists:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFBFFF | v3);
}

- (void)setUsesCandidateSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFEFF | v3);
}

- (void)setUsesAutoDeleteWord:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFF7F | v3);
}

- (void)setSuppressCompletionsForFieldEditor:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFBF | v3);
}

- (void)setSupportsSetPhraseBoundary:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFDF | v3);
}

- (void)setUsesPunctuationKeysForRowNavigation:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFF7FFFF | v3);
}

- (void)setSupportsNumberKeySelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFEF | v3);
}

- (void)setSuppliesCompletions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFF7 | v3);
}

- (void)setSupportsReversionUI:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFBFFFFFF | v3);
}

- (void)setShouldExtendPriorWord:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFB | v3);
}

- (void)setNextInputWouldStartSentence:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFF7FF | v3);
}

- (void)setInputStringIsExemptFromChecker:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFEFFF | v3);
}

- (void)setIgnoresDeadKeys:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFFFD | v3);
}

- (void)setNewInputAcceptsUserSelectedCandidate:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFFFFFBFF | v3);
}

- (void)setCommitsAcceptedCandidate:(BOOL)a3
{
  if (a3)
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