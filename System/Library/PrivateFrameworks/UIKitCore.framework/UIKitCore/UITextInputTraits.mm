@interface UITextInputTraits
+ (BOOL)keyboardTypeRequiresASCIICapable:(int64_t)a3;
+ (id)defaultTextInputTraits;
+ (id)traitEnvironmentFromTraits:(id)a3;
+ (id)traitsByAdoptingTraits:(id)a3;
+ (id)traitsByAdoptingTraits:(id)a3 lightweight:(BOOL)a4;
+ (int64_t)accessibleAppearanceForAppearance:(int64_t)a3;
+ (int64_t)configuredAppearanceForAppearance:(int64_t)a3 withTraitEnvironment:(id)a4;
+ (int64_t)translateToPublicUIKeyboardAppearance:(unint64_t)a3;
+ (int64_t)translateToUIAutocapitalizationType:(unint64_t)a3;
+ (int64_t)translateToUIAutocorrectionType:(unint64_t)a3;
+ (int64_t)translateToUIInlinePredictionType:(unint64_t)a3;
+ (int64_t)translateToUIKeyboardAppearance:(unint64_t)a3;
+ (int64_t)translateToUIKeyboardType:(unint64_t)a3;
+ (int64_t)translateToUIReturnKeyType:(unint64_t)a3;
+ (int64_t)translateToUISmartDashesType:(unint64_t)a3;
+ (int64_t)translateToUISmartInsertDeleteEnabled:(BOOL)a3;
+ (int64_t)translateToUISmartQuotesType:(unint64_t)a3;
+ (int64_t)translateToUISpellCheckingType:(unint64_t)a3;
+ (int64_t)translateToUITextAllowsTextAnimationsType:(int64_t)a3;
+ (int64_t)translateToUITextMathExpressionCompletionType:(int64_t)a3;
+ (int64_t)translateToUITextScriptType:(unint64_t)a3;
- (BOOL)allowsSuggestionsOnlyMode;
- (BOOL)isEqual:(id)a3;
- (BOOL)publicTraitsMatchTraits:(id)a3;
- (NSString)description;
- (UIEdgeInsets)floatingKeyboardEdgeInsets;
- (UIEdgeInsets)selectionEdgeInsets;
- (UITextInputTraits)init;
- (_NSRange)validTextRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int64_t)dictationInfoKeyboardType;
- (int64_t)dictationKeyboardType;
- (int64_t)updateResultComparedToTraits:(id)a3;
- (void)_setColorsToMatchTintColor:(id)a3;
- (void)dealloc;
- (void)extendedPathToObtainTraitsFrom:(id)a3 lightweight:(BOOL)a4;
- (void)fastPathToObtainTraitsFrom:(id)a3;
- (void)overlayWithTITextInputTraits:(id)a3;
- (void)overrideWithPrivateTraits:(id)a3;
- (void)overrideWithTraits:(id)a3;
- (void)setDevicePasscodeEntry:(BOOL)a3;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setTextTrimmingSet:(__CFCharacterSet *)a3;
- (void)setToDefaultValues;
- (void)setToSecureValues;
- (void)takeTraitsFrom:(id)a3 lightweight:(BOOL)a4;
@end

@implementation UITextInputTraits

- (UIEdgeInsets)floatingKeyboardEdgeInsets
{
  top = self->floatingKeyboardEdgeInsets.top;
  left = self->floatingKeyboardEdgeInsets.left;
  bottom = self->floatingKeyboardEdgeInsets.bottom;
  right = self->floatingKeyboardEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UITextInputTraits)init
{
  v6.receiver = self;
  v6.super_class = UITextInputTraits;
  v2 = [(UITextInputTraits *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UITextInputTraits *)v2 setToDefaultValues];
    v4 = v3;
  }

  return v3;
}

- (_NSRange)validTextRange
{
  length = self->validTextRange.length;
  location = self->validTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)dealloc
{
  textTrimmingSet = self->textTrimmingSet;
  if (textTrimmingSet)
  {
    CFRelease(textTrimmingSet);
  }

  v4.receiver = self;
  v4.super_class = UITextInputTraits;
  [(UITextInputTraits *)&v4 dealloc];
}

- (UIEdgeInsets)selectionEdgeInsets
{
  top = self->_selectionEdgeInsets.top;
  left = self->_selectionEdgeInsets.left;
  bottom = self->_selectionEdgeInsets.bottom;
  right = self->_selectionEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setToDefaultValues
{
  self->returnKeyType = 0;
  *&self->enablesReturnKeyAutomatically = 0;
  self->autocorrectionType = 0;
  self->spellCheckingType = 0;
  self->autocapitalizationType = 2;
  *(self + 16) = 0;
  passwordRules = self->passwordRules;
  self->passwordRules = 0;

  self->devicePasscodeEntry = 0;
  textContentType = self->textContentType;
  self->textContentType = 0;

  self->smartInsertDeleteType = 0;
  self->smartQuotesType = 0;
  self->smartDashesType = 0;
  [(UITextInputTraits *)self setRecentInputIdentifier:0];
  self->writingToolsBehavior = 0;
  self->allowedWritingToolsResultOptions = 0;
  [(UITextInputTraits *)self setManageRecentInputs:0];
  [(UITextInputTraits *)self setValidTextRange:0, -1];
  [(UITextInputTraits *)self setPINEntrySeparatorIndexes:0];
  textTrimmingSet = self->textTrimmingSet;
  if (textTrimmingSet)
  {
    CFRelease(textTrimmingSet);
  }

  self->textTrimmingSet = 0;
  v6 = +[UIColor insertionPointColor];
  insertionPointColor = self->_insertionPointColor;
  self->_insertionPointColor = v6;

  v8 = +[UIColor selectionGrabberColor];
  selectionBarColor = self->_selectionBarColor;
  self->_selectionBarColor = v8;

  v10 = +[UIColor selectionHighlightColor];
  selectionHighlightColor = self->_selectionHighlightColor;
  self->_selectionHighlightColor = v10;

  v12 = _UIGetTextHighlightFillColor();
  matchHighlightColor = self->_matchHighlightColor;
  self->_matchHighlightColor = v12;

  selectionBorderColor = self->_selectionBorderColor;
  self->_selectionBorderColor = 0;

  self->_selectionBorderWidth = 0.0;
  self->_selectionCornerRadius = 0.0;
  *&self->_selectionEdgeInsets.top = 0u;
  *&self->_selectionEdgeInsets.bottom = 0u;
  [(UITextInputTraits *)self setSelectionDragDotImage:0];
  self->insertionPointWidth = 3;
  *&self->textLoupeVisibility = 0;
  textSuggestionDelegate = self->textSuggestionDelegate;
  self->textSuggestionDelegate = 0;

  *&self->isSingleLineDocument = 0;
  *&self->hasDefaultContents = 0;
  self->acceptsEmoji = 1;
  self->acceptsInitialEmojiKeyboard = 0;
  *&self->acceptsDictationSearchResults = 0;
  *&self->forceEnableDictation = 0x1000000000000;
  self->forceDictationKeyboardType = 0x7FFFFFFFFFFFFFFFLL;
  self->emptyContentReturnKeyType = 0;
  *&self->floatingKeyboardEdgeInsets.top = 0u;
  *&self->floatingKeyboardEdgeInsets.bottom = 0u;
  self->acceptsSplitKeyboard = 1;
  self->learnsCorrections = 1;
  *&self->shortcutConversionType = 0;
  [(UITextInputTraits *)self setAutocorrectionContext:0];
  [(UITextInputTraits *)self setResponseContext:0];
  [(UITextInputTraits *)self setInputContextHistory:0];
  self->disablePrediction = 0;
  self->hidePrediction = 0;
  [(UITextInputTraits *)self setInlinePredictionType:0];
  [(UITextInputTraits *)self setDisableInputBars:0];
  self->isCarPlayIdiom = 0;
  self->preferredInputViewHeight = 0.0;
  self->textScriptType = 0;
  self->loadKeyboardsForSiriLanguage = 0;
  [(UITextInputTraits *)self setPreferredKeyboardStyle:0];
  [(UITextInputTraits *)self setSupplementalLexicon:0];
  [(UITextInputTraits *)self setSupplementalLexiconAmbiguousItemIcon:0];
  self->disableHandwritingKeyboard = 0;
  self->allowsTextAnimationsType = 0;
  self->keyboardSuggestionOptions = 0;
  self->mathExpressionCompletionType = 0;
  self->allowsNumberPadPopover = 1;
}

+ (id)defaultTextInputTraits
{
  v2 = objc_alloc_init(UITextInputTraits);

  return v2;
}

- (void)setToSecureValues
{
  *&self->_privateInputTraitFlags |= 8u;
  self->secureTextEntry = 1;
  *&self->autocapitalizationType = xmmword_18A64C520;
  self->spellCheckingType = 1;
  *&self->smartQuotesType = vdupq_n_s64(1uLL);
  self->learnsCorrections = 0;
  self->shortcutConversionType = 1;
  self->smartInsertDeleteType = 1;
  self->inlinePredictionType = 1;
  self->mathExpressionCompletionType = 1;
  self->allowsTextAnimationsType = 1;
  self->allowsNumberPadPopover = 0;
  [(UITextInputTraits *)self setTextTrimmingSet:0];
}

- (BOOL)allowsSuggestionsOnlyMode
{
  v3 = [(UITextInputTraits *)self keyboardType];
  LOBYTE(v4) = 0;
  if ((v3 > 0xC || ((1 << v3) & 0x15FE) == 0) && v3 != 120 && v3 != 124)
  {
    v4 = dyld_program_sdk_at_least();
    if (v4)
    {
      LOBYTE(v4) = [(UITextInputTraits *)self spellCheckingType]!= 1;
    }
  }

  return v4;
}

- (void)overlayWithTITextInputTraits:(id)a3
{
  v5 = a3;
  -[UITextInputTraits setAutocapitalizationType:](self, "setAutocapitalizationType:", [objc_opt_class() translateToUIAutocapitalizationType:{objc_msgSend(v5, "autocapitalizationType")}]);
  -[UITextInputTraits setAutocorrectionType:](self, "setAutocorrectionType:", [objc_opt_class() translateToUIAutocorrectionType:{objc_msgSend(v5, "autocorrectionType")}]);
  -[UITextInputTraits setSpellCheckingType:](self, "setSpellCheckingType:", [objc_opt_class() translateToUISpellCheckingType:{objc_msgSend(v5, "spellCheckingType")}]);
  -[UITextInputTraits setKeyboardType:](self, "setKeyboardType:", [objc_opt_class() translateToUIKeyboardType:{objc_msgSend(v5, "keyboardType")}]);
  -[UITextInputTraits setKeyboardAppearance:](self, "setKeyboardAppearance:", [objc_opt_class() translateToUIKeyboardAppearance:{objc_msgSend(v5, "keyboardAppearance")}]);
  -[UITextInputTraits setReturnKeyType:](self, "setReturnKeyType:", [objc_opt_class() translateToUIReturnKeyType:{objc_msgSend(v5, "returnKeyType")}]);
  -[UITextInputTraits setEnablesReturnKeyAutomatically:](self, "setEnablesReturnKeyAutomatically:", [v5 enablesReturnKeyAutomatically]);
  -[UITextInputTraits setSecureTextEntry:](self, "setSecureTextEntry:", [v5 secureTextEntry]);
  v4 = [v5 textContentType];
  [(UITextInputTraits *)self setTextContentType:v4];

  -[UITextInputTraits setTextScriptType:](self, "setTextScriptType:", [objc_opt_class() translateToUITextScriptType:{objc_msgSend(v5, "textScriptType")}]);
  -[UITextInputTraits setSmartInsertDeleteType:](self, "setSmartInsertDeleteType:", [objc_opt_class() translateToUISmartInsertDeleteEnabled:{objc_msgSend(v5, "smartInsertDeleteEnabled")}]);
  -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [objc_opt_class() translateToUIInlinePredictionType:{objc_msgSend(v5, "inlineCompletionType")}]);
  -[UITextInputTraits setSmartDashesType:](self, "setSmartDashesType:", [objc_opt_class() translateToUISmartDashesType:{objc_msgSend(v5, "smartDashesType")}]);
  -[UITextInputTraits setSmartQuotesType:](self, "setSmartQuotesType:", [objc_opt_class() translateToUISmartQuotesType:{objc_msgSend(v5, "smartQuotesType")}]);
  if (objc_opt_respondsToSelector())
  {
    -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [objc_opt_class() translateToUITextMathExpressionCompletionType:{objc_msgSend(v5, "mathExpressionCompletionType")}]);
  }

  if (objc_opt_respondsToSelector())
  {
    -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [objc_opt_class() translateToUITextAllowsTextAnimationsType:{objc_msgSend(v5, "allowsTextAnimationsType")}]);
  }
}

+ (int64_t)translateToUIAutocapitalizationType:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)translateToUIAutocorrectionType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)translateToUISpellCheckingType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)translateToUIKeyboardType:(unint64_t)a3
{
  if (a3 - 1 > 0x10)
  {
    return 0;
  }

  else
  {
    return qword_18A67E500[a3 - 1];
  }
}

+ (int64_t)translateToUIKeyboardAppearance:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_18A67E588[a3 - 1];
  }
}

+ (int64_t)translateToPublicUIKeyboardAppearance:(unint64_t)a3
{
  if (a3 == 6)
  {
    return 1;
  }

  else
  {
    return [a1 translateToUIKeyboardAppearance:?];
  }
}

+ (int64_t)translateToUIReturnKeyType:(unint64_t)a3
{
  if (a3 - 1 > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18A67E5B8[a3 - 1];
  }
}

+ (int64_t)translateToUITextScriptType:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)translateToUISmartInsertDeleteEnabled:(BOOL)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)translateToUIInlinePredictionType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)translateToUITextMathExpressionCompletionType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)translateToUITextAllowsTextAnimationsType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)translateToUISmartDashesType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)translateToUISmartQuotesType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (id)dictionaryRepresentation
{
  v22 = MEMORY[0x1E695DF20];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITextInputTraits keyboardType](self, "keyboardType")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->acceptsEmoji];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->forceEnableDictation];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->returnKeyGoesToNextResponder];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITextInputTraits returnKeyType](self, "returnKeyType")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[UITextInputTraits isSecureTextEntry](self, "isSecureTextEntry")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITextInputTraits spellCheckingType](self, "spellCheckingType")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITextInputTraits autocorrectionType](self, "autocorrectionType")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITextInputTraits autocapitalizationType](self, "autocapitalizationType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[UITextInputTraits textSelectionBehavior](self, "textSelectionBehavior")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UITextInputTraits contentsIsSingleValue](self, "contentsIsSingleValue")}];
  v7 = [v22 dictionaryWithObjectsAndKeys:{v21, @"Version", v20, @"KeyboardType", v19, @"AcceptsEmoji", v18, @"ForceEnableDictation", v3, @"ReturnKeyGoesToNextResponder", v4, @"ReturnKeyType", v17, @"SecureTextEntry", v16, @"SpellCheckingTypeKey", v15, @"AutocorrectionType", v14, @"AutocapitalizationType", v5, @"TextSelectionBehavior", v6, @"ContentIsSingleValue", 0}];

  v8 = [v7 mutableCopy];
  v9 = [(UITextInputTraits *)self textContentType];

  if (v9)
  {
    v10 = [(UITextInputTraits *)self textContentType];
    [v8 setObject:v10 forKey:@"TextContentType"];
  }

  v11 = [(UITextInputTraits *)self passwordRules];

  if (v11)
  {
    v12 = [(UITextInputTraits *)self passwordRules];
    [v8 setObject:v12 forKey:@"PasswordRules"];
  }

  return v8;
}

+ (int64_t)accessibleAppearanceForAppearance:(int64_t)a3
{
  v3 = a3;
  if (a3 != 127 && _AXSUseDarkerKeyboard())
  {
    if (_AXSInvertColorsEnabled())
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

+ (int64_t)configuredAppearanceForAppearance:(int64_t)a3 withTraitEnvironment:(id)a4
{
  v6 = a4;
  v7 = [a1 accessibleAppearanceForAppearance:a3];
  if (!v6)
  {
    goto LABEL_29;
  }

  v8 = [v6 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 > 3 || v9 == 2 || v7) && v7 != 10)
  {
    v12 = 10;
    if (v7)
    {
      v12 = v7;
    }

    goto LABEL_24;
  }

  v10 = [v6 traitCollection];
  v11 = [v10 userInterfaceStyle];

  v7 = 10;
  if (v11 > 1)
  {
    v12 = 1;
    v13 = 9;
    if (v11 != 1000)
    {
      v13 = 10;
    }

    if (v11 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v13;
    }

    if (v11 != 2)
    {
      v12 = v13;
    }

    goto LABEL_24;
  }

  if (v11)
  {
    v12 = 10;
    if (v11 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v9 != 2)
  {
LABEL_23:
    v7 = 2;
    v12 = 2;
    goto LABEL_24;
  }

  v7 = 10;
  v12 = 10;
LABEL_24:
  if (v9 != 2)
  {
    v12 = v7;
  }

  if (v12)
  {
    v7 = v12;
  }

  else
  {
    v7 = 2;
  }

LABEL_29:

  return v7;
}

- (void)setTextTrimmingSet:(__CFCharacterSet *)a3
{
  textTrimmingSet = self->textTrimmingSet;
  self->textTrimmingSet = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (textTrimmingSet)
  {

    CFRelease(textTrimmingSet);
  }
}

- (void)setSecureTextEntry:(BOOL)a3
{
  self->secureTextEntry = a3;
  if (a3)
  {
    [(UITextInputTraits *)self setToSecureValues];
  }

  else
  {
    self->devicePasscodeEntry = 0;
  }
}

- (void)setDevicePasscodeEntry:(BOOL)a3
{
  self->devicePasscodeEntry = a3;
  if (a3)
  {
    [(UITextInputTraits *)self setSecureTextEntry:1];
  }
}

- (int64_t)dictationKeyboardType
{
  v3 = [(UITextInputTraits *)self keyboardType];
  if ([(UITextInputTraits *)self forceDictationKeyboardType]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  return [(UITextInputTraits *)self forceDictationKeyboardType];
}

- (int64_t)dictationInfoKeyboardType
{
  v3 = [(UITextInputTraits *)self keyboardType];
  if ([(UITextInputTraits *)self forceDictationKeyboardType]== 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(UITextInputTraits *)self forceDefaultDictationInfo])
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {

    return [(UITextInputTraits *)self forceDictationKeyboardType];
  }
}

- (void)overrideWithTraits:(id)a3
{
  v20 = a3;
  if (v20)
  {
    v4 = objc_alloc_init(UITextInputTraits);
    v5 = [v20 autocapitalizationType];
    if (v5 != [(UITextInputTraits *)v4 autocapitalizationType])
    {
      -[UITextInputTraits setAutocapitalizationType:](self, "setAutocapitalizationType:", [v20 autocapitalizationType]);
    }

    v6 = [v20 autocorrectionType];
    if (v6 != [(UITextInputTraits *)v4 autocorrectionType])
    {
      -[UITextInputTraits setAutocorrectionType:](self, "setAutocorrectionType:", [v20 autocorrectionType]);
    }

    v7 = [v20 spellCheckingType];
    if (v7 != [(UITextInputTraits *)v4 spellCheckingType])
    {
      -[UITextInputTraits setSpellCheckingType:](self, "setSpellCheckingType:", [v20 spellCheckingType]);
    }

    v8 = [v20 keyboardType];
    if (v8 != [(UITextInputTraits *)v4 keyboardType])
    {
      -[UITextInputTraits setKeyboardType:](self, "setKeyboardType:", [v20 keyboardType]);
    }

    v9 = [v20 keyboardAppearance];
    if (v9 != [(UITextInputTraits *)v4 keyboardAppearance])
    {
      -[UITextInputTraits setKeyboardAppearance:](self, "setKeyboardAppearance:", [v20 keyboardAppearance]);
    }

    v10 = [v20 returnKeyType];
    if (v10 != [(UITextInputTraits *)v4 returnKeyType])
    {
      -[UITextInputTraits setReturnKeyType:](self, "setReturnKeyType:", [v20 returnKeyType]);
    }

    v11 = [v20 enablesReturnKeyAutomatically];
    if (v11 != [(UITextInputTraits *)v4 enablesReturnKeyAutomatically])
    {
      -[UITextInputTraits setEnablesReturnKeyAutomatically:](self, "setEnablesReturnKeyAutomatically:", [v20 enablesReturnKeyAutomatically]);
    }

    v12 = [v20 textContentType];
    v13 = [(UITextInputTraits *)v4 textContentType];

    if (v12 != v13)
    {
      v14 = [v20 textContentType];
      [(UITextInputTraits *)self setTextContentType:v14];
    }

    v15 = [v20 smartInsertDeleteType];
    if (v15 != [(UITextInputTraits *)v4 smartInsertDeleteType])
    {
      -[UITextInputTraits setSmartInsertDeleteType:](self, "setSmartInsertDeleteType:", [v20 smartInsertDeleteType]);
    }

    v16 = [v20 smartQuotesType];
    if (v16 != [(UITextInputTraits *)v4 smartQuotesType])
    {
      -[UITextInputTraits setSmartQuotesType:](self, "setSmartQuotesType:", [v20 smartQuotesType]);
    }

    v17 = [v20 smartDashesType];
    if (v17 != [(UITextInputTraits *)v4 smartDashesType])
    {
      -[UITextInputTraits setSmartDashesType:](self, "setSmartDashesType:", [v20 smartDashesType]);
    }

    v18 = [v20 writingToolsBehavior];
    if (v18 != [(UITextInputTraits *)v4 writingToolsBehavior])
    {
      -[UITextInputTraits setWritingToolsBehavior:](self, "setWritingToolsBehavior:", [v20 writingToolsBehavior]);
    }

    v19 = [v20 allowedWritingToolsResultOptions];
    if (v19 != [(UITextInputTraits *)v4 allowedWritingToolsResultOptions])
    {
      -[UITextInputTraits setAllowedWritingToolsResultOptions:](self, "setAllowedWritingToolsResultOptions:", [v20 allowedWritingToolsResultOptions]);
    }

    [(UITextInputTraits *)self overrideWithPrivateTraits:v20];
  }
}

- (void)overrideWithPrivateTraits:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v31 = v4;
    v5 = objc_alloc_init(UITextInputTraits);
    v6 = [v31 forceFloatingKeyboard];
    if (v6 != [(UITextInputTraits *)v5 forceFloatingKeyboard])
    {
      -[UITextInputTraits setForceFloatingKeyboard:](self, "setForceFloatingKeyboard:", [v31 forceFloatingKeyboard]);
    }

    [v31 floatingKeyboardEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UITextInputTraits *)v5 floatingKeyboardEdgeInsets];
    if (v10 != v18 || v8 != v15 || v14 != v17 || v12 != v16)
    {
      [v31 floatingKeyboardEdgeInsets];
      [(UITextInputTraits *)self setFloatingKeyboardEdgeInsets:?];
    }

    v22 = [v31 acceptsInitialEmojiKeyboard];
    if (v22 != [(UITextInputTraits *)v5 acceptsInitialEmojiKeyboard])
    {
      -[UITextInputTraits setAcceptsInitialEmojiKeyboard:](self, "setAcceptsInitialEmojiKeyboard:", [v31 acceptsInitialEmojiKeyboard]);
    }

    v23 = [v31 recentInputIdentifier];
    v24 = [(UITextInputTraits *)v5 recentInputIdentifier];

    if (v23 != v24)
    {
      v25 = [v31 recentInputIdentifier];
      [(UITextInputTraits *)self setRecentInputIdentifier:v25];
    }

    v26 = [v31 inlinePredictionType];
    if (v26 != [(UITextInputTraits *)v5 inlinePredictionType])
    {
      -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [v31 inlinePredictionType]);
    }

    v27 = [v31 mathExpressionCompletionType];
    if (v27 != [(UITextInputTraits *)v5 mathExpressionCompletionType])
    {
      -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [v31 mathExpressionCompletionType]);
    }

    v28 = [v31 allowsTextAnimationsType];
    if (v28 != [(UITextInputTraits *)v5 allowsTextAnimationsType])
    {
      -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [v31 allowsTextAnimationsType]);
    }

    v29 = [v31 keyboardSuggestionOptions];
    if (v29 != [(UITextInputTraits *)v5 keyboardSuggestionOptions])
    {
      -[UITextInputTraits setKeyboardSuggestionOptions:](self, "setKeyboardSuggestionOptions:", [v31 keyboardSuggestionOptions]);
    }

    v30 = [v31 allowsNumberPadPopover];
    if (v30 != [(UITextInputTraits *)v5 allowsNumberPadPopover])
    {
      -[UITextInputTraits setAllowsNumberPadPopover:](self, "setAllowsNumberPadPopover:", [v31 allowsNumberPadPopover]);
    }

    v4 = v31;
  }
}

- (void)fastPathToObtainTraitsFrom:(id)a3
{
  v4 = a3;
  self->autocapitalizationType = [v4 autocapitalizationType];
  self->autocorrectionType = [v4 autocorrectionType];
  self->spellCheckingType = [v4 spellCheckingType];
  *(self + 32) = [v4 keyboardType];
  *(self + 33) = [v4 keyboardAppearance];
  self->returnKeyType = [v4 returnKeyType];
  self->enablesReturnKeyAutomatically = [v4 enablesReturnKeyAutomatically];
  self->secureTextEntry = [v4 isSecureTextEntry];
  if (v4)
  {
    *&self->_privateInputTraitFlags = *&self->_privateInputTraitFlags & 0xF7 | v4[360] & 8;
  }

  self->devicePasscodeEntry = [v4 isDevicePasscodeEntry];
  v5 = [v4 passwordRules];
  passwordRules = self->passwordRules;
  self->passwordRules = v5;

  v7 = [v4 textContentType];
  textContentType = self->textContentType;
  self->textContentType = v7;

  self->smartInsertDeleteType = [v4 smartInsertDeleteType];
  self->smartQuotesType = [v4 smartQuotesType];
  self->smartDashesType = [v4 smartDashesType];
  v9 = [v4 recentInputIdentifier];
  [(UITextInputTraits *)self setRecentInputIdentifier:v9];

  -[UITextInputTraits setWritingToolsBehavior:](self, "setWritingToolsBehavior:", [v4 writingToolsBehavior]);
  -[UITextInputTraits setAllowedWritingToolsResultOptions:](self, "setAllowedWritingToolsResultOptions:", [v4 allowedWritingToolsResultOptions]);
  if (_os_feature_enabled_impl())
  {
    v10 = [(UITextInputTraits *)self inputContextHistory];
    if (!v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [v4 conversationContext];

        if (!v11)
        {
          goto LABEL_10;
        }

        v10 = [v4 conversationContext];
        v12 = [v10 inputContextHistoryRepresentation];
        [(UITextInputTraits *)self setInputContextHistory:v12];
      }

      else
      {
        v10 = 0;
      }
    }
  }

LABEL_10:
  v46 = v4;
  -[UITextInputTraits setManageRecentInputs:](self, "setManageRecentInputs:", [v46 manageRecentInputs]);
  v13 = [v46 validTextRange];
  [(UITextInputTraits *)self setValidTextRange:v13, v14];
  v15 = [v46 PINEntrySeparatorIndexes];
  [(UITextInputTraits *)self setPINEntrySeparatorIndexes:v15];

  -[UITextInputTraits setTextTrimmingSet:](self, "setTextTrimmingSet:", [v46 textTrimmingSet]);
  v16 = [v46 insertionPointColor];
  insertionPointColor = self->_insertionPointColor;
  self->_insertionPointColor = v16;

  v18 = [v46 selectionBarColor];
  selectionBarColor = self->_selectionBarColor;
  self->_selectionBarColor = v18;

  v20 = [v46 selectionHighlightColor];
  selectionHighlightColor = self->_selectionHighlightColor;
  self->_selectionHighlightColor = v20;

  v22 = [v46 matchHighlightColor];
  matchHighlightColor = self->_matchHighlightColor;
  self->_matchHighlightColor = v22;

  v24 = [v46 selectionBorderColor];
  selectionBorderColor = self->_selectionBorderColor;
  self->_selectionBorderColor = v24;

  [v46 selectionBorderWidth];
  self->_selectionBorderWidth = v26;
  [v46 selectionCornerRadius];
  self->_selectionCornerRadius = v27;
  [v46 selectionEdgeInsets];
  self->_selectionEdgeInsets.top = v28;
  self->_selectionEdgeInsets.left = v29;
  self->_selectionEdgeInsets.bottom = v30;
  self->_selectionEdgeInsets.right = v31;
  v32 = [v46 selectionDragDotImage];
  [(UITextInputTraits *)self setSelectionDragDotImage:v32];

  self->insertionPointWidth = [v46 insertionPointWidth];
  self->textLoupeVisibility = [v46 textLoupeVisibility];
  self->textSelectionBehavior = [v46 textSelectionBehavior];
  v33 = [v46 textSuggestionDelegate];
  textSuggestionDelegate = self->textSuggestionDelegate;
  self->textSuggestionDelegate = v33;

  self->isSingleLineDocument = [v46 isSingleLineDocument];
  self->contentsIsSingleValue = [v46 contentsIsSingleValue];
  self->hasDefaultContents = [v46 hasDefaultContents];
  self->acceptsPayloads = [v46 acceptsPayloads];
  self->acceptsEmoji = [v46 acceptsEmoji];
  self->acceptsInitialEmojiKeyboard = [v46 acceptsInitialEmojiKeyboard];
  self->acceptsDictationSearchResults = [v46 acceptsDictationSearchResults];
  self->useAutomaticEndpointing = [v46 useAutomaticEndpointing];
  self->showDictationButton = [v46 showDictationButton];
  self->forceEnableDictation = [v46 forceEnableDictation];
  self->forceDisableDictation = [v46 forceDisableDictation];
  self->forceSpellingDictation = [v46 forceSpellingDictation];
  self->forceDefaultDictationInfo = [v46 forceDefaultDictationInfo];
  self->forceDictationKeyboardType = [v46 forceDictationKeyboardType];
  self->preferOnlineDictation = [v46 preferOnlineDictation];
  self->returnKeyGoesToNextResponder = [v46 returnKeyGoesToNextResponder];
  self->emptyContentReturnKeyType = [v46 emptyContentReturnKeyType];
  self->acceptsFloatingKeyboard = [v46 acceptsFloatingKeyboard];
  self->forceFloatingKeyboard = [v46 forceFloatingKeyboard];
  [v46 floatingKeyboardEdgeInsets];
  self->floatingKeyboardEdgeInsets.top = v35;
  self->floatingKeyboardEdgeInsets.left = v36;
  self->floatingKeyboardEdgeInsets.bottom = v37;
  self->floatingKeyboardEdgeInsets.right = v38;
  self->acceptsSplitKeyboard = [v46 acceptsSplitKeyboard];
  self->displaySecureTextUsingPlainText = [v46 displaySecureTextUsingPlainText];
  self->displaySecureEditsUsingPlainText = [v46 displaySecureEditsUsingPlainText];
  self->learnsCorrections = [v46 learnsCorrections];
  self->shortcutConversionType = [v46 shortcutConversionType];
  self->suppressReturnKeyStyling = [v46 suppressReturnKeyStyling];
  self->useInterfaceLanguageForLocalization = [v46 useInterfaceLanguageForLocalization];
  self->deferBecomingResponder = [v46 deferBecomingResponder];
  self->enablesReturnKeyOnNonWhiteSpaceContent = [v46 enablesReturnKeyOnNonWhiteSpaceContent];
  v39 = [v46 autocorrectionContext];
  [(UITextInputTraits *)self setAutocorrectionContext:v39];

  v40 = [v46 responseContext];
  [(UITextInputTraits *)self setResponseContext:v40];

  v41 = [(UITextInputTraits *)self inputContextHistory];

  if (!v41)
  {
    v42 = [v46 inputContextHistory];
    [(UITextInputTraits *)self setInputContextHistory:v42];
  }

  self->disablePrediction = [v46 disablePrediction];
  self->hidePrediction = [v46 hidePrediction];
  -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [v46 inlinePredictionType]);
  -[UITextInputTraits setDisableInputBars:](self, "setDisableInputBars:", [v46 disableInputBars]);
  self->isCarPlayIdiom = [v46 isCarPlayIdiom];
  [v46 preferredInputViewHeight];
  self->preferredInputViewHeight = v43;
  self->textScriptType = [v46 textScriptType];
  self->loadKeyboardsForSiriLanguage = [v46 loadKeyboardsForSiriLanguage];
  -[UITextInputTraits setPreferredKeyboardStyle:](self, "setPreferredKeyboardStyle:", [v46 preferredKeyboardStyle]);
  v44 = [v46 supplementalLexicon];
  [(UITextInputTraits *)self setSupplementalLexicon:v44];

  v45 = [v46 supplementalLexiconAmbiguousItemIcon];
  [(UITextInputTraits *)self setSupplementalLexiconAmbiguousItemIcon:v45];

  self->disableHandwritingKeyboard = [v46 disableHandwritingKeyboard];
  -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [v46 mathExpressionCompletionType]);
  -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [v46 allowsTextAnimationsType]);
  -[UITextInputTraits setKeyboardSuggestionOptions:](self, "setKeyboardSuggestionOptions:", [v46 keyboardSuggestionOptions]);
  -[UITextInputTraits setAllowsNumberPadPopover:](self, "setAllowsNumberPadPopover:", [v46 allowsNumberPadPopover]);
}

- (void)extendedPathToObtainTraitsFrom:(id)a3 lightweight:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(UITextInputTraits *)self setToDefaultValues];
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      self->autocorrectionType = [v6 autocorrectionType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(self + 32) = [v6 keyboardType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->secureTextEntry = [v6 isSecureTextEntry];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 textContentType];
      textContentType = self->textContentType;
      self->textContentType = v7;
LABEL_52:
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      self->autocapitalizationType = [v6 autocapitalizationType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->autocorrectionType = [v6 autocorrectionType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->spellCheckingType = [v6 spellCheckingType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(self + 32) = [v6 keyboardType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(self + 33) = [v6 keyboardAppearance];
    }

    if (objc_opt_respondsToSelector())
    {
      self->returnKeyType = [v6 returnKeyType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->enablesReturnKeyAutomatically = [v6 enablesReturnKeyAutomatically];
    }

    if (objc_opt_respondsToSelector())
    {
      self->secureTextEntry = [v6 isSecureTextEntry];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 passwordRules];
      passwordRules = self->passwordRules;
      self->passwordRules = v9;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v6 textContentType];
      v12 = self->textContentType;
      self->textContentType = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      self->smartInsertDeleteType = [v6 smartInsertDeleteType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->smartQuotesType = [v6 smartQuotesType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->smartDashesType = [v6 smartDashesType];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 recentInputIdentifier];
      [(UITextInputTraits *)self setRecentInputIdentifier:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [v6 inlinePredictionType]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [v6 mathExpressionCompletionType]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setWritingToolsBehavior:](self, "setWritingToolsBehavior:", [v6 writingToolsBehavior]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setAllowedWritingToolsResultOptions:](self, "setAllowedWritingToolsResultOptions:", [v6 allowedWritingToolsResultOptions]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setAllowsNumberPadPopover:](self, "setAllowsNumberPadPopover:", [v6 allowsNumberPadPopover]);
    }

    if (_os_feature_enabled_impl())
    {
      textContentType = [(UITextInputTraits *)self inputContextHistory];
      if (!textContentType)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_53;
        }

        textContentType = [v6 conversationContext];
        v14 = [textContentType inputContextHistoryRepresentation];
        [(UITextInputTraits *)self setInputContextHistory:v14];
      }

      goto LABEL_52;
    }
  }

LABEL_53:
  v53 = v6;
  if (objc_opt_respondsToSelector())
  {
    self->isSingleLineDocument = [v53 isSingleLineDocument];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v53 insertionPointColor];
    insertionPointColor = v15;
    if (!v15)
    {
      insertionPointColor = self->_insertionPointColor;
    }

    objc_storeStrong(&self->_insertionPointColor, insertionPointColor);
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v53 selectionHighlightColor];
    selectionHighlightColor = v17;
    if (!v17)
    {
      selectionHighlightColor = self->_selectionHighlightColor;
    }

    objc_storeStrong(&self->_selectionHighlightColor, selectionHighlightColor);
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v53 selectionHandleColor];
    selectionBarColor = v19;
    if (!v19)
    {
      selectionBarColor = self->_selectionBarColor;
    }

    objc_storeStrong(&self->_selectionBarColor, selectionBarColor);
  }

  if (objc_opt_respondsToSelector())
  {
    self->learnsCorrections = [v53 isTypingAdaptationEnabled];
  }

  if (self->secureTextEntry)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v53 conformsToProtocolCached:&unk_1F016DE30])
      {
        [(UITextInputTraits *)self setToSecureValues];
      }
    }
  }

  if ([v53 conformsToProtocol:&unk_1EFE8DCA0])
  {
    v21 = v53;
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [v21 textSuggestionDelegate];
        textSuggestionDelegate = self->textSuggestionDelegate;
        self->textSuggestionDelegate = v22;
      }

      if (objc_opt_respondsToSelector())
      {
        self->acceptsPayloads = [v21 acceptsPayloads];
      }

      if (objc_opt_respondsToSelector())
      {
        self->displaySecureTextUsingPlainText = [v21 displaySecureTextUsingPlainText];
      }

      if (objc_opt_respondsToSelector())
      {
        self->displaySecureEditsUsingPlainText = [v21 displaySecureEditsUsingPlainText];
      }

LABEL_215:

      goto LABEL_216;
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setManageRecentInputs:](self, "setManageRecentInputs:", [v21 manageRecentInputs]);
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v21 validTextRange];
      [(UITextInputTraits *)self setValidTextRange:v24, v25];
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [v21 PINEntrySeparatorIndexes];
      [(UITextInputTraits *)self setPINEntrySeparatorIndexes:v26];
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setTextTrimmingSet:](self, "setTextTrimmingSet:", [v21 textTrimmingSet]);
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [v21 selectionBarColor];
      v28 = self->_selectionBarColor;
      self->_selectionBarColor = v27;
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [v21 matchHighlightColor];
      matchHighlightColor = self->_matchHighlightColor;
      self->_matchHighlightColor = v29;
    }

    if (objc_opt_respondsToSelector())
    {
      v31 = [v21 selectionBorderColor];
      selectionBorderColor = self->_selectionBorderColor;
      self->_selectionBorderColor = v31;
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 selectionBorderWidth];
      self->_selectionBorderWidth = v33;
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 selectionCornerRadius];
      self->_selectionCornerRadius = v34;
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 selectionEdgeInsets];
      self->_selectionEdgeInsets.top = v35;
      self->_selectionEdgeInsets.left = v36;
      self->_selectionEdgeInsets.bottom = v37;
      self->_selectionEdgeInsets.right = v38;
    }

    if (objc_opt_respondsToSelector())
    {
      v39 = [v21 selectionDragDotImage];
      [(UITextInputTraits *)self setSelectionDragDotImage:v39];
    }

    if (objc_opt_respondsToSelector())
    {
      self->insertionPointWidth = [v21 insertionPointWidth];
    }

    if (objc_opt_respondsToSelector())
    {
      self->textLoupeVisibility = [v21 textLoupeVisibility];
    }

    if (objc_opt_respondsToSelector())
    {
      self->textSelectionBehavior = [v21 textSelectionBehavior];
    }

    if (objc_opt_respondsToSelector())
    {
      v40 = [v21 textSuggestionDelegate];
      v41 = self->textSuggestionDelegate;
      self->textSuggestionDelegate = v40;
    }

    if (objc_opt_respondsToSelector())
    {
      self->contentsIsSingleValue = [v21 contentsIsSingleValue];
    }

    if (objc_opt_respondsToSelector())
    {
      self->hasDefaultContents = [v21 hasDefaultContents];
    }

    if (objc_opt_respondsToSelector())
    {
      self->acceptsPayloads = [v21 acceptsPayloads];
    }

    if (objc_opt_respondsToSelector())
    {
      self->acceptsEmoji = [v21 acceptsEmoji];
    }

    if (objc_opt_respondsToSelector())
    {
      self->acceptsInitialEmojiKeyboard = [v21 acceptsInitialEmojiKeyboard];
    }

    if (objc_opt_respondsToSelector())
    {
      self->acceptsDictationSearchResults = [v21 acceptsDictationSearchResults];
    }

    if (objc_opt_respondsToSelector())
    {
      self->useAutomaticEndpointing = [v21 useAutomaticEndpointing];
    }

    if (objc_opt_respondsToSelector())
    {
      self->showDictationButton = [v21 showDictationButton];
    }

    if (objc_opt_respondsToSelector())
    {
      self->forceEnableDictation = [v21 forceEnableDictation];
    }

    if (objc_opt_respondsToSelector())
    {
      self->forceDisableDictation = [v21 forceDisableDictation];
    }

    if (objc_opt_respondsToSelector())
    {
      self->forceSpellingDictation = [v21 forceSpellingDictation];
    }

    if (objc_opt_respondsToSelector())
    {
      self->forceDefaultDictationInfo = [v21 forceDefaultDictationInfo];
    }

    if (objc_opt_respondsToSelector())
    {
      self->forceDictationKeyboardType = [v21 forceDictationKeyboardType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->preferOnlineDictation = [v21 preferOnlineDictation];
    }

    if (objc_opt_respondsToSelector())
    {
      self->returnKeyGoesToNextResponder = [v21 returnKeyGoesToNextResponder];
    }

    if (objc_opt_respondsToSelector())
    {
      self->emptyContentReturnKeyType = [v21 emptyContentReturnKeyType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->acceptsFloatingKeyboard = [v21 acceptsFloatingKeyboard];
    }

    if (objc_opt_respondsToSelector())
    {
      self->forceFloatingKeyboard = [v21 forceFloatingKeyboard];
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 floatingKeyboardEdgeInsets];
      self->floatingKeyboardEdgeInsets.top = v42;
      self->floatingKeyboardEdgeInsets.left = v43;
      self->floatingKeyboardEdgeInsets.bottom = v44;
      self->floatingKeyboardEdgeInsets.right = v45;
    }

    if (objc_opt_respondsToSelector())
    {
      self->acceptsSplitKeyboard = [v21 acceptsSplitKeyboard];
    }

    if (objc_opt_respondsToSelector())
    {
      self->displaySecureTextUsingPlainText = [v21 displaySecureTextUsingPlainText];
    }

    if (objc_opt_respondsToSelector())
    {
      self->displaySecureEditsUsingPlainText = [v21 displaySecureEditsUsingPlainText];
    }

    if (objc_opt_respondsToSelector())
    {
      self->learnsCorrections = [v21 learnsCorrections];
    }

    if (objc_opt_respondsToSelector())
    {
      self->learnsCorrections = [v21 typingAdaptationDisabled] ^ 1;
    }

    if (objc_opt_respondsToSelector())
    {
      self->shortcutConversionType = [v21 shortcutConversionType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->suppressReturnKeyStyling = [v21 suppressReturnKeyStyling];
    }

    if (objc_opt_respondsToSelector())
    {
      self->useInterfaceLanguageForLocalization = [v21 useInterfaceLanguageForLocalization];
    }

    if (objc_opt_respondsToSelector())
    {
      self->deferBecomingResponder = [v21 deferBecomingResponder];
    }

    if (objc_opt_respondsToSelector())
    {
      self->enablesReturnKeyOnNonWhiteSpaceContent = [v21 enablesReturnKeyOnNonWhiteSpaceContent];
    }

    if (objc_opt_respondsToSelector())
    {
      v46 = [v21 autocorrectionContext];
      [(UITextInputTraits *)self setAutocorrectionContext:v46];
    }

    if (objc_opt_respondsToSelector())
    {
      v47 = [v21 responseContext];
      [(UITextInputTraits *)self setResponseContext:v47];
    }

    v48 = [(UITextInputTraits *)self inputContextHistory];
    if (!v48)
    {
      if (objc_opt_respondsToSelector())
      {
        v49 = [v21 inputContextHistory];

        if (!v49)
        {
LABEL_181:
          if (objc_opt_respondsToSelector())
          {
            self->disablePrediction = [v21 disablePrediction];
          }

          if (objc_opt_respondsToSelector())
          {
            self->hidePrediction = [v21 hidePrediction];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) == 0)
          {
            -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [v21 inlineCompletionType]);
          }

          if (objc_opt_respondsToSelector())
          {
            -[UITextInputTraits setDisableInputBars:](self, "setDisableInputBars:", [v21 disableInputBars]);
          }

          if (objc_opt_respondsToSelector())
          {
            [v21 preferredInputViewHeight];
            [(UITextInputTraits *)self setPreferredInputViewHeight:?];
          }

          if (objc_opt_respondsToSelector())
          {
            self->textScriptType = [v21 textScriptType];
          }

          if (objc_opt_respondsToSelector())
          {
            self->devicePasscodeEntry = [v21 isDevicePasscodeEntry];
          }

          if (objc_opt_respondsToSelector())
          {
            if ([v21 wasEverSecureTextEntry])
            {
              v50 = 8;
            }

            else
            {
              v50 = 0;
            }

            *&self->_privateInputTraitFlags = *&self->_privateInputTraitFlags & 0xF7 | v50;
          }

          if (objc_opt_respondsToSelector())
          {
            self->loadKeyboardsForSiriLanguage = [v21 loadKeyboardsForSiriLanguage];
          }

          if (objc_opt_respondsToSelector())
          {
            -[UITextInputTraits setPreferredKeyboardStyle:](self, "setPreferredKeyboardStyle:", [v21 preferredKeyboardStyle]);
          }

          if (objc_opt_respondsToSelector())
          {
            v51 = [v21 supplementalLexicon];
            [(UITextInputTraits *)self setSupplementalLexicon:v51];
          }

          if (objc_opt_respondsToSelector())
          {
            v52 = [v21 supplementalLexiconAmbiguousItemIcon];
            [(UITextInputTraits *)self setSupplementalLexiconAmbiguousItemIcon:v52];
          }

          if (objc_opt_respondsToSelector())
          {
            -[UITextInputTraits setDisableHandwritingKeyboard:](self, "setDisableHandwritingKeyboard:", [v21 disableHandwritingKeyboard]);
          }

          if (objc_opt_respondsToSelector())
          {
            -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [v21 allowsTextAnimationsType]);
          }

          if (objc_opt_respondsToSelector())
          {
            -[UITextInputTraits setKeyboardSuggestionOptions:](self, "setKeyboardSuggestionOptions:", [v21 keyboardSuggestionOptions]);
          }

          goto LABEL_215;
        }

        v48 = [v21 inputContextHistory];
        [(UITextInputTraits *)self setInputContextHistory:v48];
      }

      else
      {
        v48 = 0;
      }
    }

    goto LABEL_181;
  }

LABEL_216:
}

+ (id)traitEnvironmentFromTraits:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
  }

  else if ([v4 __isKindOfUIResponder])
  {
    v6 = [v4 nextResponder];
    v5 = [a1 traitEnvironmentFromTraits:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)takeTraitsFrom:(id)a3 lightweight:(BOOL)a4
{
  v22 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v22 conformsToProtocolCached:&unk_1F016C810])
  {
    v5 = [v22 extendedTextInputTraits];
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    v6 = v5;

    v7 = v6;
LABEL_24:
    v22 = v7;
    [UITextInputTraits extendedPathToObtainTraitsFrom:"extendedPathToObtainTraitsFrom:lightweight:" lightweight:?];
    v9 = 0;
    v10 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v22 conformsToProtocolCached:&unk_1F016C7B0])
  {
    v5 = [v22 extendedTraitsDelegate];
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    NSClassFromString(&cfstr_Wkcontentview.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      if ([v22 conformsToProtocolCached:&unk_1F016C7B0])
      {
        v5 = [v22 textInputTraits];
        if (v5)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v22;
  }

  else
  {
    NSClassFromString(&cfstr_Wkcontentview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v22 conformsToProtocol:&unk_1EFE8E9A0])
    {
      goto LABEL_23;
    }

    v8 = [v22 textInputTraits];
  }

  v9 = v8;
  if (!v8)
  {
LABEL_23:
    v6 = 0;
    v7 = v22;
    goto LABEL_24;
  }

  [(UITextInputTraits *)self fastPathToObtainTraitsFrom:v8];
  v10 = 0;
  v6 = 0;
LABEL_25:
  if (self->secureTextEntry && !self->displaySecureTextUsingPlainText)
  {
    self->autocorrectionType = 1;
    if (dyld_program_sdk_at_least())
    {
      self->shortcutConversionType = 1;
    }

    self->learnsCorrections = 0;
  }

  v11 = [UITextInputTraits traitEnvironmentFromTraits:v22];
  if (!+[UIKeyboard isInputSystemUI])
  {
    if (*(self + 32) == 127)
    {
      v12 = 0;
      *(self + 33) = 0;
    }

    else
    {
      v12 = *(self + 33);
    }

    *(self + 33) = [UITextInputTraits configuredAppearanceForAppearance:v12 withTraitEnvironment:v11];
  }

  v13 = [v11 traitCollection];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 2)
  {
    if (self->secureTextEntry)
    {
      if ((v15 = *(self + 32), v15 <= 0xA) && ((1 << v15) & 0x68F) != 0 || v15 == 123 || v15 == 120)
      {
        v16 = 0;
        *(self + 32) = 0;
        goto LABEL_43;
      }
    }
  }

  else
  {
    v17 = [v11 traitCollection];
    v18 = [v17 userInterfaceIdiom];

    v16 = 1;
    if (v18 != 3)
    {
      goto LABEL_43;
    }

    self->isCarPlayIdiom = 1;
  }

  v16 = 0;
LABEL_43:
  v19 = *(self + 32);
  if (v19 == 125)
  {
    *(self + 32) = 12;
  }

  else if (v19 == 10)
  {
    self->returnKeyType = 1;
  }

  if ([(NSString *)self->textContentType isEqualToString:@"cc-number"])
  {
    if (self->returnKeyType)
    {
      v20 = 123;
    }

    else
    {
      v20 = 11;
    }

    *(self + 32) = v20;
  }

  if (v16 && (UIKeyboardTypeSupportsSmartTyping(*(self + 32)) & 1) != 0)
  {
    goto LABEL_59;
  }

  if (!self->smartQuotesType)
  {
    self->smartQuotesType = 1;
  }

  if (!self->smartDashesType)
  {
    self->smartDashesType = 1;
  }

  if (self->smartInsertDeleteType)
  {
LABEL_59:
    if (v10)
    {
      goto LABEL_67;
    }
  }

  else
  {
    self->smartInsertDeleteType = 1;
    if (v10)
    {
      goto LABEL_67;
    }
  }

  if (([v9 acceptsEmoji] & 1) == 0)
  {
    v21 = [v9 keyboardType];
    if ((v21 > 0xB || ((1 << v21) & 0x930) == 0) && v21 != 127)
    {
      *(self + 32) = 13;
    }
  }

LABEL_67:
  if (objc_opt_respondsToSelector())
  {
    -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [v9 allowsTextAnimationsType]);
  }

  if (objc_opt_respondsToSelector())
  {
    -[UITextInputTraits setKeyboardSuggestionOptions:](self, "setKeyboardSuggestionOptions:", [v9 keyboardSuggestionOptions]);
  }
}

+ (id)traitsByAdoptingTraits:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v4 takeTraitsFrom:v3 lightweight:0];

  return v4;
}

+ (id)traitsByAdoptingTraits:(id)a3 lightweight:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v6 takeTraitsFrom:v5 lightweight:v4];

  return v6;
}

+ (BOOL)keyboardTypeRequiresASCIICapable:(int64_t)a3
{
  result = 1;
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x3575) == 0)
    {
      return result;
    }

    return 0;
  }

  if ((a3 - 120) > 7)
  {
    return 0;
  }

  v4 = 1 << (a3 - 120);
  if ((v4 & 0x55) != 0 || (v4 & 0x88) == 0)
  {
    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v4 takeTraitsFrom:self lightweight:0];
  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ : %p>\n", objc_opt_class(), self];
  [v3 appendString:v4];

  [v3 appendString:@"public\n"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   autocapitalization:                  %ld\n", self->autocapitalizationType];
  [v3 appendString:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   autocorrection:                      %ld\n", self->autocorrectionType];
  [v3 appendString:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   spellchecking:                       %ld\n", self->spellCheckingType];
  [v3 appendString:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   keyboard type:                       %ld\n", *(self + 32)];
  [v3 appendString:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   kb appearance:                       %ld\n", *(self + 33)];
  [v3 appendString:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   return key type:                     %ld\n", self->returnKeyType];
  [v3 appendString:v10];

  if (self->enablesReturnKeyAutomatically)
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   auto return key:                     %@\n", v11];
  [v3 appendString:v12];

  if (self->secureTextEntry)
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   secure text entry:                   %@\n", v13];
  [v3 appendString:v14];

  if (!self->secureTextEntry)
  {
    if ((*&self->_privateInputTraitFlags & 8) != 0)
    {
      v15 = @"Y";
    }

    else
    {
      v15 = @"N";
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   was ever secure text entry:          %@\n", v15];
    [v3 appendString:v16];
  }

  if (self->devicePasscodeEntry)
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   device passcode entry:               %@\n", v17];
  [v3 appendString:v18];

  v19 = [(UITextInputTraits *)self passwordRules];

  if (v19)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [(UITextInputTraits *)self passwordRules];
    v22 = [v20 stringWithFormat:@"   password rules:                      %@\n", v21];
    [v3 appendString:v22];
  }

  v23 = [(UITextInputTraits *)self textContentType];

  if (v23)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [(UITextInputTraits *)self textContentType];
    v26 = [v24 stringWithFormat:@"   text content type:                   %@\n", v25];
    [v3 appendString:v26];
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   smart insert/delete type:            %ld\n", self->smartInsertDeleteType];
  [v3 appendString:v27];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   smart quotes type:                   %ld\n", self->smartQuotesType];
  [v3 appendString:v28];

  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   smart dashes type:                   %ld\n", self->smartDashesType];
  [v3 appendString:v29];

  v30 = [(UITextInputTraits *)self recentInputIdentifier];

  if (v30)
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = [(UITextInputTraits *)self recentInputIdentifier];
    v33 = [v31 stringWithFormat:@"   recent input identifier:             %@\n", v32];
    [v3 appendString:v33];
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   writingToolsBehavior:            %ld\n", self->writingToolsBehavior];
  [v3 appendString:v34];

  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   allowedWritingToolsResultOptions:     %ld\n", self->allowedWritingToolsResultOptions];
  [v3 appendString:v35];

  [v3 appendString:@"private\n"];
  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text trimming set:                   %p\n", self->textTrimmingSet];
  [v3 appendString:v36];

  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   ins. pt. color:                      %@\n", self->insertionPointColor];
  [v3 appendString:v37];

  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   ins. pt. width:                      %lu\n", self->insertionPointWidth];
  [v3 appendString:v38];

  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text loupe vis.:                     %d\n", self->textLoupeVisibility];
  [v3 appendString:v39];

  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   selection behavior:                  %d\n", self->textSelectionBehavior];
  [v3 appendString:v40];

  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text suggest. del.:                  %@\n", self->textSuggestionDelegate];
  [v3 appendString:v41];

  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   single-line document:                %d\n", self->isSingleLineDocument];
  [v3 appendString:v42];

  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   single value:                        %d\n", self->contentsIsSingleValue];
  [v3 appendString:v43];

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   has default contents:                %d\n", self->hasDefaultContents];
  [v3 appendString:v44];

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts payloads:                    %d\n", self->acceptsPayloads];
  [v3 appendString:v45];

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts emoji:                       %d\n", self->acceptsEmoji];
  [v3 appendString:v46];

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   acceptsInitialEmojiKeyboard:         %d\n", self->acceptsInitialEmojiKeyboard];
  [v3 appendString:v47];

  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts dictation search results:    %d\n", self->acceptsDictationSearchResults];
  [v3 appendString:v48];

  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   use automatic endpointing:           %d\n", self->useAutomaticEndpointing];
  [v3 appendString:v49];

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   show dictation button:               %d\n", self->showDictationButton];
  [v3 appendString:v50];

  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force-enable dictation:              %d\n", self->forceEnableDictation];
  [v3 appendString:v51];

  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force-disable dictation:             %d\n", self->forceDisableDictation];
  [v3 appendString:v52];

  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force-spelling dictation: %d\n", self->forceSpellingDictation];
  [v3 appendString:v53];

  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force default dictation info         %d\n", self->forceDefaultDictationInfo];
  [v3 appendString:v54];

  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force dictation keyboard type:       %ld\n", self->forceDictationKeyboardType];
  [v3 appendString:v55];

  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   prefer online dictation              %d\n", self->preferOnlineDictation];
  [v3 appendString:v56];

  v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disabled return key:                 %d\n", self->emptyContentReturnKeyType];
  [v3 appendString:v57];

  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   return key goes to next responder:   %d\n", self->returnKeyGoesToNextResponder];
  [v3 appendString:v58];

  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts floating keyboard:           %d\n", self->acceptsFloatingKeyboard];
  [v3 appendString:v59];

  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force floating keyboard:             %d\n", self->forceFloatingKeyboard];
  [v3 appendString:v60];

  v61 = MEMORY[0x1E696AEC0];
  v62 = NSStringFromUIEdgeInsets(self->floatingKeyboardEdgeInsets);
  v63 = [v61 stringWithFormat:@"   floating keyboard edge insets:       %@\n", v62];
  [v3 appendString:v63];

  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts split keyboard:              %d\n", self->acceptsSplitKeyboard];
  [v3 appendString:v64];

  v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   displaySecureTextUsingPlainText:     %d\n", self->displaySecureTextUsingPlainText];
  [v3 appendString:v65];

  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   displaySecureEditsUsingPlainText:    %d\n", self->displaySecureEditsUsingPlainText];
  [v3 appendString:v66];

  v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   learnsCorrections:        %d\n", self->learnsCorrections];
  [v3 appendString:v67];

  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   shortcut conversion:                 %d\n", self->shortcutConversionType];
  [v3 appendString:v68];

  v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   suppress return key styling:         %d\n", self->suppressReturnKeyStyling];
  [v3 appendString:v69];

  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   localized with UI language:          %d\n", self->useInterfaceLanguageForLocalization];
  [v3 appendString:v70];

  v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   defer becomeFirstResponder:          %d\n", self->deferBecomingResponder];
  [v3 appendString:v71];

  if (self->enablesReturnKeyOnNonWhiteSpaceContent)
  {
    v72 = @"Y";
  }

  else
  {
    v72 = @"N";
  }

  v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   enables return key for NWS content:  %@\n", v72];
  [v3 appendString:v73];

  v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   autocorrection context:              %@\n", self->autocorrectionContext];
  [v3 appendString:v74];

  v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   response context:                    %@\n", self->responseContext];
  [v3 appendString:v75];

  v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   input context history:               %@\n", self->inputContextHistory];
  [v3 appendString:v76];

  if (self->disablePrediction)
  {
    v77 = @"Y";
  }

  else
  {
    v77 = @"N";
  }

  v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disable prediction:                  %@\n", v77];
  [v3 appendString:v78];

  if (self->hidePrediction)
  {
    v79 = @"Y";
  }

  else
  {
    v79 = @"N";
  }

  v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   hide prediction:                     %@\n", v79];
  [v3 appendString:v80];

  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   inline prediction type:              %ld\n", self->inlinePredictionType];
  [v3 appendString:v81];

  if (self->disableInputBars)
  {
    v82 = @"Y";
  }

  else
  {
    v82 = @"N";
  }

  v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disableInputBars:                    %@\n", v82];
  [v3 appendString:v83];

  if (self->isCarPlayIdiom)
  {
    v84 = @"Y";
  }

  else
  {
    v84 = @"N";
  }

  v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   isCarPlayIdiom:                      %@\n", v84];
  [v3 appendString:v85];

  if (self->preferredInputViewHeight > 0.0)
  {
    v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   preferredInputViewHeight:            %f\n", *&self->preferredInputViewHeight];
    [v3 appendString:v86];
  }

  if (self->loadKeyboardsForSiriLanguage)
  {
    v87 = @"Y";
  }

  else
  {
    v87 = @"N";
  }

  v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   loadKeyboardsForSiriLanguage:        %@\n", v87];
  [v3 appendString:v88];

  v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   textScriptType:                      %ld\n", self->textScriptType];
  [v3 appendString:v89];

  v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   supplemental lexicon:                %@\n", self->supplementalLexicon];
  [v3 appendString:v90];

  v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   supplemental lexicon ambiguous item icon: %@\n", self->supplementalLexiconAmbiguousItemIcon];
  [v3 appendString:v91];

  v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disableHandwritingKeyboard:          %d\n", self->disableHandwritingKeyboard];
  [v3 appendString:v92];

  v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   math expression completion:          %ld\n", self->mathExpressionCompletionType];
  [v3 appendString:v93];

  v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text animations allowed:             %ld\n", self->allowsTextAnimationsType];
  [v3 appendString:v94];

  v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   keyboard suggestion options:         %ld\n", self->keyboardSuggestionOptions];
  [v3 appendString:v95];

  if (self->allowsNumberPadPopover)
  {
    v96 = @"Y";
  }

  else
  {
    v96 = @"N";
  }

  v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   enable numberpad popover display:   %@\n", v96];
  [v3 appendString:v97];

  return v3;
}

- (BOOL)publicTraitsMatchTraits:(id)a3
{
  v5 = a3;
  autocapitalizationType = self->autocapitalizationType;
  if (autocapitalizationType == [v5 autocapitalizationType])
  {
    autocorrectionType = self->autocorrectionType;
    if (autocorrectionType == [v5 autocorrectionType])
    {
      spellCheckingType = self->spellCheckingType;
      if (spellCheckingType == [v5 spellCheckingType])
      {
        v9 = *(self + 32);
        if ([v5 keyboardType] == v9)
        {
          v10 = *(self + 33);
          if ([v5 keyboardAppearance] == v10)
          {
            returnKeyType = self->returnKeyType;
            if (returnKeyType == [v5 returnKeyType])
            {
              enablesReturnKeyAutomatically = self->enablesReturnKeyAutomatically;
              if (enablesReturnKeyAutomatically == [v5 enablesReturnKeyAutomatically])
              {
                secureTextEntry = self->secureTextEntry;
                if (secureTextEntry == [v5 isSecureTextEntry])
                {
                  smartInsertDeleteType = self->smartInsertDeleteType;
                  if (smartInsertDeleteType == [v5 smartInsertDeleteType])
                  {
                    smartQuotesType = self->smartQuotesType;
                    if (smartQuotesType == [v5 smartQuotesType])
                    {
                      smartDashesType = self->smartDashesType;
                      if (smartDashesType == [v5 smartDashesType])
                      {
                        textContentType = self->textContentType;
                        v18 = [v5 textContentType];
                        if (textContentType == v18 || (v19 = self->textContentType, [v5 textContentType], v3 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v19, "isEqualToString:", v3)))
                        {
                          passwordRules = self->passwordRules;
                          v23 = [v5 passwordRules];
                          if (passwordRules == v23)
                          {
                            writingToolsBehavior = self->writingToolsBehavior;
                            if (writingToolsBehavior == [v5 writingToolsBehavior])
                            {
                              allowedWritingToolsResultOptions = self->allowedWritingToolsResultOptions;
                              v20 = allowedWritingToolsResultOptions == [v5 allowedWritingToolsResultOptions];
                            }

                            else
                            {
                              v20 = 0;
                            }
                          }

                          else
                          {
                            v24 = self->passwordRules;
                            v25 = [v5 passwordRules];
                            if (-[UITextInputPasswordRules isEqual:](v24, "isEqual:", v25) && (v26 = self->writingToolsBehavior, v26 == [v5 writingToolsBehavior]))
                            {
                              v27 = self->allowedWritingToolsResultOptions;
                              v20 = v27 == [v5 allowedWritingToolsResultOptions];
                            }

                            else
                            {
                              v20 = 0;
                            }
                          }

                          if (textContentType == v18)
                          {
                            goto LABEL_28;
                          }
                        }

                        else
                        {
                          v20 = 0;
                        }

LABEL_28:
                        goto LABEL_16;
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

  v20 = 0;
LABEL_16:

  return v20;
}

- (int64_t)updateResultComparedToTraits:(id)a3
{
  v6 = a3;
  v7 = *(self + 32);
  if ([v6 keyboardType] != v7)
  {
    goto LABEL_8;
  }

  v8 = *(self + 33);
  if ([v6 keyboardAppearance] != v8)
  {
    goto LABEL_8;
  }

  secureTextEntry = self->secureTextEntry;
  if (secureTextEntry != [v6 isSecureTextEntry])
  {
    goto LABEL_8;
  }

  acceptsEmoji = self->acceptsEmoji;
  if (acceptsEmoji != [v6 acceptsEmoji])
  {
    goto LABEL_8;
  }

  acceptsInitialEmojiKeyboard = self->acceptsInitialEmojiKeyboard;
  if (acceptsInitialEmojiKeyboard != [v6 acceptsInitialEmojiKeyboard])
  {
    goto LABEL_8;
  }

  isCarPlayIdiom = self->isCarPlayIdiom;
  if (isCarPlayIdiom != [v6 isCarPlayIdiom])
  {
    goto LABEL_8;
  }

  preferredInputViewHeight = self->preferredInputViewHeight;
  [v6 preferredInputViewHeight];
  if (preferredInputViewHeight != v14)
  {
    goto LABEL_8;
  }

  v17 = [(UITextInputTraits *)self recentInputIdentifier];
  if (v17)
  {
    v3 = [(UITextInputTraits *)self recentInputIdentifier];
    v4 = [v6 recentInputIdentifier];
    if (([v3 isEqualToString:v4] & 1) == 0)
    {

LABEL_8:
      v15 = 2;
      goto LABEL_9;
    }
  }

  v18 = [(UITextInputTraits *)self recentInputIdentifier];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = [v6 recentInputIdentifier];
    if (v19)
    {
      goto LABEL_18;
    }
  }

  smartQuotesType = self->smartQuotesType;
  if (smartQuotesType == [v6 smartQuotesType])
  {
    smartDashesType = self->smartDashesType;
    v22 = smartDashesType != [v6 smartDashesType];
    goto LABEL_19;
  }

LABEL_18:
  v22 = 1;
LABEL_19:

  if (v17)
  {
  }

  if (v22)
  {
    goto LABEL_8;
  }

  disableInputBars = self->disableInputBars;
  if (disableInputBars == [v6 disableInputBars])
  {
    returnKeyType = self->returnKeyType;
    v15 = returnKeyType != [v6 returnKeyType] || (enablesReturnKeyAutomatically = self->enablesReturnKeyAutomatically, enablesReturnKeyAutomatically != objc_msgSend(v6, "enablesReturnKeyAutomatically")) || (emptyContentReturnKeyType = self->emptyContentReturnKeyType, emptyContentReturnKeyType != objc_msgSend(v6, "emptyContentReturnKeyType")) || (enablesReturnKeyOnNonWhiteSpaceContent = self->enablesReturnKeyOnNonWhiteSpaceContent, enablesReturnKeyOnNonWhiteSpaceContent != objc_msgSend(v6, "enablesReturnKeyOnNonWhiteSpaceContent")) || (suppressReturnKeyStyling = self->suppressReturnKeyStyling, suppressReturnKeyStyling != objc_msgSend(v6, "suppressReturnKeyStyling")) || self->enablesReturnKeyAutomatically || self->enablesReturnKeyOnNonWhiteSpaceContent;
  }

  else
  {
    v15 = 3;
  }

LABEL_9:

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if ([(UITextInputTraits *)self publicTraitsMatchTraits:v6])
  {
    v7 = [(UITextInputTraits *)self recentInputIdentifier];
    v8 = [v6 recentInputIdentifier];
    if (v7 != v8)
    {
      v3 = [(UITextInputTraits *)self recentInputIdentifier];
      v4 = [v6 recentInputIdentifier];
      if (![v3 isEqualToString:v4])
      {
        v9 = 0;
        goto LABEL_28;
      }
    }

    v10 = [(UITextInputTraits *)self manageRecentInputs];
    if (v10 != [v6 manageRecentInputs])
    {
      goto LABEL_26;
    }

    v11 = [(UITextInputTraits *)self validTextRange];
    v13 = v12;
    if (v11 != [v6 validTextRange] || v13 != v14)
    {
      goto LABEL_26;
    }

    v15 = [(UITextInputTraits *)self PINEntrySeparatorIndexes];
    v16 = [v6 PINEntrySeparatorIndexes];
    if (![v15 isEqualToIndexSet:v16])
    {
      goto LABEL_25;
    }

    if (!self->textTrimmingSet)
    {
      if (![v6 textTrimmingSet])
      {
LABEL_18:
        insertionPointColor = self->insertionPointColor;
        v18 = [v6 insertionPointColor];
        if ([(UIColor *)insertionPointColor isEqual:v18])
        {
          insertionPointWidth = self->insertionPointWidth;
          if (insertionPointWidth == [v6 insertionPointWidth])
          {
            textLoupeVisibility = self->textLoupeVisibility;
            if (textLoupeVisibility == [v6 textLoupeVisibility])
            {
              textSelectionBehavior = self->textSelectionBehavior;
              if (textSelectionBehavior == [v6 textSelectionBehavior])
              {
                textSuggestionDelegate = self->textSuggestionDelegate;
                v23 = [v6 textSuggestionDelegate];
                if (textSuggestionDelegate != v23)
                {
                  v9 = 0;
LABEL_59:

LABEL_27:
                  if (v7 == v8)
                  {
LABEL_29:

                    goto LABEL_30;
                  }

LABEL_28:

                  goto LABEL_29;
                }

                v77 = v23;
                isSingleLineDocument = self->isSingleLineDocument;
                if (isSingleLineDocument != [v6 isSingleLineDocument] || (contentsIsSingleValue = self->contentsIsSingleValue, contentsIsSingleValue != objc_msgSend(v6, "contentsIsSingleValue")) || (hasDefaultContents = self->hasDefaultContents, hasDefaultContents != objc_msgSend(v6, "hasDefaultContents")) || (acceptsPayloads = self->acceptsPayloads, acceptsPayloads != objc_msgSend(v6, "acceptsPayloads")) || (acceptsEmoji = self->acceptsEmoji, acceptsEmoji != objc_msgSend(v6, "acceptsEmoji")) || (acceptsInitialEmojiKeyboard = self->acceptsInitialEmojiKeyboard, acceptsInitialEmojiKeyboard != objc_msgSend(v6, "acceptsInitialEmojiKeyboard")) || (acceptsDictationSearchResults = self->acceptsDictationSearchResults, acceptsDictationSearchResults != objc_msgSend(v6, "acceptsDictationSearchResults")) || (showDictationButton = self->showDictationButton, showDictationButton != objc_msgSend(v6, "showDictationButton")) || (useAutomaticEndpointing = self->useAutomaticEndpointing, useAutomaticEndpointing != objc_msgSend(v6, "useAutomaticEndpointing")) || (forceEnableDictation = self->forceEnableDictation, forceEnableDictation != objc_msgSend(v6, "forceEnableDictation")) || (forceDisableDictation = self->forceDisableDictation, forceDisableDictation != objc_msgSend(v6, "forceDisableDictation")) || (forceSpellingDictation = self->forceSpellingDictation, forceSpellingDictation != objc_msgSend(v6, "forceSpellingDictation")) || (forceDefaultDictationInfo = self->forceDefaultDictationInfo, forceDefaultDictationInfo != objc_msgSend(v6, "forceDefaultDictationInfo")) || (forceDictationKeyboardType = self->forceDictationKeyboardType, forceDictationKeyboardType != objc_msgSend(v6, "forceDictationKeyboardType")) || (preferOnlineDictation = self->preferOnlineDictation, preferOnlineDictation != objc_msgSend(v6, "preferOnlineDictation")) || (emptyContentReturnKeyType = self->emptyContentReturnKeyType, emptyContentReturnKeyType != objc_msgSend(v6, "emptyContentReturnKeyType")) || (returnKeyGoesToNextResponder = self->returnKeyGoesToNextResponder, returnKeyGoesToNextResponder != objc_msgSend(v6, "returnKeyGoesToNextResponder")) || (learnsCorrections = self->learnsCorrections, learnsCorrections != objc_msgSend(v6, "learnsCorrections")) || (shortcutConversionType = self->shortcutConversionType, shortcutConversionType != objc_msgSend(v6, "shortcutConversionType")) || (suppressReturnKeyStyling = self->suppressReturnKeyStyling, suppressReturnKeyStyling != objc_msgSend(v6, "suppressReturnKeyStyling")) || (useInterfaceLanguageForLocalization = self->useInterfaceLanguageForLocalization, useInterfaceLanguageForLocalization != objc_msgSend(v6, "useInterfaceLanguageForLocalization")) || (deferBecomingResponder = self->deferBecomingResponder, deferBecomingResponder != objc_msgSend(v6, "deferBecomingResponder")) || (enablesReturnKeyOnNonWhiteSpaceContent = self->enablesReturnKeyOnNonWhiteSpaceContent, enablesReturnKeyOnNonWhiteSpaceContent != objc_msgSend(v6, "enablesReturnKeyOnNonWhiteSpaceContent")))
                {
                  v9 = 0;
LABEL_58:
                  v23 = v77;
                  goto LABEL_59;
                }

                autocorrectionContext = self->autocorrectionContext;
                v76 = [v6 autocorrectionContext];
                v74 = autocorrectionContext;
                if (autocorrectionContext != v76)
                {
                  v49 = self->autocorrectionContext;
                  v73 = [v6 autocorrectionContext];
                  if (![(NSString *)v49 isEqualToString:?])
                  {
                    v9 = 0;
                    goto LABEL_85;
                  }
                }

                responseContext = self->responseContext;
                v75 = [v6 responseContext];
                v71 = responseContext;
                if (responseContext != v75)
                {
                  v51 = self->responseContext;
                  v70 = [v6 responseContext];
                  if (![(NSString *)v51 isEqualToString:?])
                  {
                    v9 = 0;
LABEL_83:

LABEL_84:
                    if (v74 == v76)
                    {
LABEL_86:

                      goto LABEL_58;
                    }

LABEL_85:

                    goto LABEL_86;
                  }
                }

                inputContextHistory = self->inputContextHistory;
                v72 = [v6 inputContextHistory];
                v69 = inputContextHistory;
                if (inputContextHistory != v72)
                {
                  v53 = self->inputContextHistory;
                  v68 = [v6 inputContextHistory];
                  if (![(UIInputContextHistory *)v53 isEqual:?])
                  {
                    v9 = 0;
                    goto LABEL_80;
                  }
                }

                isCarPlayIdiom = self->isCarPlayIdiom;
                if (isCarPlayIdiom == [v6 isCarPlayIdiom])
                {
                  preferredInputViewHeight = self->preferredInputViewHeight;
                  [v6 preferredInputViewHeight];
                  if (preferredInputViewHeight == v56)
                  {
                    textScriptType = self->textScriptType;
                    if (textScriptType == [v6 textScriptType])
                    {
                      supplementalLexicon = self->supplementalLexicon;
                      v67 = [v6 supplementalLexicon];
                      if (supplementalLexicon == v67)
                      {
                        supplementalLexiconAmbiguousItemIcon = self->supplementalLexiconAmbiguousItemIcon;
                        v66 = [v6 supplementalLexiconAmbiguousItemIcon];
                        if (supplementalLexiconAmbiguousItemIcon == v66)
                        {
                          disableHandwritingKeyboard = self->disableHandwritingKeyboard;
                          if (disableHandwritingKeyboard == [v6 disableHandwritingKeyboard])
                          {
                            mathExpressionCompletionType = self->mathExpressionCompletionType;
                            if (mathExpressionCompletionType == [v6 mathExpressionCompletionType])
                            {
                              allowsTextAnimationsType = self->allowsTextAnimationsType;
                              if (allowsTextAnimationsType == [v6 allowsTextAnimationsType])
                              {
                                keyboardSuggestionOptions = self->keyboardSuggestionOptions;
                                if (keyboardSuggestionOptions == [v6 keyboardSuggestionOptions])
                                {
                                  allowsNumberPadPopover = self->allowsNumberPadPopover;
                                  v9 = allowsNumberPadPopover == [v6 allowsNumberPadPopover];

                                  v65 = v9;
                                  goto LABEL_79;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v9 = 0;
                v65 = 0;
LABEL_79:
                if (v69 == v72)
                {

                  v9 = v65;
LABEL_82:
                  if (v71 == v75)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_83;
                }

LABEL_80:

                goto LABEL_82;
              }
            }
          }
        }

LABEL_25:
LABEL_26:
        v9 = 0;
        goto LABEL_27;
      }

      if (!self->textTrimmingSet)
      {
        goto LABEL_25;
      }
    }

    if (![v6 textTrimmingSet] || !CFCharacterSetIsSupersetOfSet(self->textTrimmingSet, objc_msgSend(v6, "textTrimmingSet")) || !CFCharacterSetIsSupersetOfSet(objc_msgSend(v6, "textTrimmingSet"), self->textTrimmingSet))
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (void)_setColorsToMatchTintColor:(id)a3
{
  v13 = a3;
  if (v13)
  {
    v4 = +[UIColor systemBlueColor];
    if (v4 == v13)
    {
      v6 = 0;
    }

    else
    {
      v5 = +[UIColor _alternateSystemInteractionTintColor];
      v6 = v5 != v13;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = +[UIColor insertionPointColor];
  v8 = +[UIColor selectionGrabberColor];
  v9 = +[UIColor selectionHighlightColor];
  if (v6)
  {
    v10 = v13;

    v7 = v10;
    v11 = [v7 colorWithAlphaComponent:0.2];

    v8 = v7;
    v9 = v11;
  }

  privateInputTraitFlags = self->_privateInputTraitFlags;
  if ((privateInputTraitFlags & 4) != 0)
  {
    if ((*&self->_privateInputTraitFlags & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_storeStrong(&self->_insertionPointColor, v7);
    privateInputTraitFlags = self->_privateInputTraitFlags;
    if ((privateInputTraitFlags & 2) != 0)
    {
LABEL_11:
      if (privateInputTraitFlags)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  objc_storeStrong(&self->_selectionHighlightColor, v9);
  if ((*&self->_privateInputTraitFlags & 1) == 0)
  {
LABEL_12:
    objc_storeStrong(&self->_selectionBarColor, v8);
  }

LABEL_13:
}

@end