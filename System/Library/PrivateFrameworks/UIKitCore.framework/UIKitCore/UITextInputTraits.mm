@interface UITextInputTraits
+ (BOOL)keyboardTypeRequiresASCIICapable:(int64_t)capable;
+ (id)defaultTextInputTraits;
+ (id)traitEnvironmentFromTraits:(id)traits;
+ (id)traitsByAdoptingTraits:(id)traits;
+ (id)traitsByAdoptingTraits:(id)traits lightweight:(BOOL)lightweight;
+ (int64_t)accessibleAppearanceForAppearance:(int64_t)appearance;
+ (int64_t)configuredAppearanceForAppearance:(int64_t)appearance withTraitEnvironment:(id)environment;
+ (int64_t)translateToPublicUIKeyboardAppearance:(unint64_t)appearance;
+ (int64_t)translateToUIAutocapitalizationType:(unint64_t)type;
+ (int64_t)translateToUIAutocorrectionType:(unint64_t)type;
+ (int64_t)translateToUIInlinePredictionType:(unint64_t)type;
+ (int64_t)translateToUIKeyboardAppearance:(unint64_t)appearance;
+ (int64_t)translateToUIKeyboardType:(unint64_t)type;
+ (int64_t)translateToUIReturnKeyType:(unint64_t)type;
+ (int64_t)translateToUISmartDashesType:(unint64_t)type;
+ (int64_t)translateToUISmartInsertDeleteEnabled:(BOOL)enabled;
+ (int64_t)translateToUISmartQuotesType:(unint64_t)type;
+ (int64_t)translateToUISpellCheckingType:(unint64_t)type;
+ (int64_t)translateToUITextAllowsTextAnimationsType:(int64_t)type;
+ (int64_t)translateToUITextMathExpressionCompletionType:(int64_t)type;
+ (int64_t)translateToUITextScriptType:(unint64_t)type;
- (BOOL)allowsSuggestionsOnlyMode;
- (BOOL)isEqual:(id)equal;
- (BOOL)publicTraitsMatchTraits:(id)traits;
- (NSString)description;
- (UIEdgeInsets)floatingKeyboardEdgeInsets;
- (UIEdgeInsets)selectionEdgeInsets;
- (UITextInputTraits)init;
- (_NSRange)validTextRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int64_t)dictationInfoKeyboardType;
- (int64_t)dictationKeyboardType;
- (int64_t)updateResultComparedToTraits:(id)traits;
- (void)_setColorsToMatchTintColor:(id)color;
- (void)dealloc;
- (void)extendedPathToObtainTraitsFrom:(id)from lightweight:(BOOL)lightweight;
- (void)fastPathToObtainTraitsFrom:(id)from;
- (void)overlayWithTITextInputTraits:(id)traits;
- (void)overrideWithPrivateTraits:(id)traits;
- (void)overrideWithTraits:(id)traits;
- (void)setDevicePasscodeEntry:(BOOL)entry;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setTextTrimmingSet:(__CFCharacterSet *)set;
- (void)setToDefaultValues;
- (void)setToSecureValues;
- (void)takeTraitsFrom:(id)from lightweight:(BOOL)lightweight;
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
  keyboardType = [(UITextInputTraits *)self keyboardType];
  LOBYTE(v4) = 0;
  if ((keyboardType > 0xC || ((1 << keyboardType) & 0x15FE) == 0) && keyboardType != 120 && keyboardType != 124)
  {
    v4 = dyld_program_sdk_at_least();
    if (v4)
    {
      LOBYTE(v4) = [(UITextInputTraits *)self spellCheckingType]!= 1;
    }
  }

  return v4;
}

- (void)overlayWithTITextInputTraits:(id)traits
{
  traitsCopy = traits;
  -[UITextInputTraits setAutocapitalizationType:](self, "setAutocapitalizationType:", [objc_opt_class() translateToUIAutocapitalizationType:{objc_msgSend(traitsCopy, "autocapitalizationType")}]);
  -[UITextInputTraits setAutocorrectionType:](self, "setAutocorrectionType:", [objc_opt_class() translateToUIAutocorrectionType:{objc_msgSend(traitsCopy, "autocorrectionType")}]);
  -[UITextInputTraits setSpellCheckingType:](self, "setSpellCheckingType:", [objc_opt_class() translateToUISpellCheckingType:{objc_msgSend(traitsCopy, "spellCheckingType")}]);
  -[UITextInputTraits setKeyboardType:](self, "setKeyboardType:", [objc_opt_class() translateToUIKeyboardType:{objc_msgSend(traitsCopy, "keyboardType")}]);
  -[UITextInputTraits setKeyboardAppearance:](self, "setKeyboardAppearance:", [objc_opt_class() translateToUIKeyboardAppearance:{objc_msgSend(traitsCopy, "keyboardAppearance")}]);
  -[UITextInputTraits setReturnKeyType:](self, "setReturnKeyType:", [objc_opt_class() translateToUIReturnKeyType:{objc_msgSend(traitsCopy, "returnKeyType")}]);
  -[UITextInputTraits setEnablesReturnKeyAutomatically:](self, "setEnablesReturnKeyAutomatically:", [traitsCopy enablesReturnKeyAutomatically]);
  -[UITextInputTraits setSecureTextEntry:](self, "setSecureTextEntry:", [traitsCopy secureTextEntry]);
  textContentType = [traitsCopy textContentType];
  [(UITextInputTraits *)self setTextContentType:textContentType];

  -[UITextInputTraits setTextScriptType:](self, "setTextScriptType:", [objc_opt_class() translateToUITextScriptType:{objc_msgSend(traitsCopy, "textScriptType")}]);
  -[UITextInputTraits setSmartInsertDeleteType:](self, "setSmartInsertDeleteType:", [objc_opt_class() translateToUISmartInsertDeleteEnabled:{objc_msgSend(traitsCopy, "smartInsertDeleteEnabled")}]);
  -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [objc_opt_class() translateToUIInlinePredictionType:{objc_msgSend(traitsCopy, "inlineCompletionType")}]);
  -[UITextInputTraits setSmartDashesType:](self, "setSmartDashesType:", [objc_opt_class() translateToUISmartDashesType:{objc_msgSend(traitsCopy, "smartDashesType")}]);
  -[UITextInputTraits setSmartQuotesType:](self, "setSmartQuotesType:", [objc_opt_class() translateToUISmartQuotesType:{objc_msgSend(traitsCopy, "smartQuotesType")}]);
  if (objc_opt_respondsToSelector())
  {
    -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [objc_opt_class() translateToUITextMathExpressionCompletionType:{objc_msgSend(traitsCopy, "mathExpressionCompletionType")}]);
  }

  if (objc_opt_respondsToSelector())
  {
    -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [objc_opt_class() translateToUITextAllowsTextAnimationsType:{objc_msgSend(traitsCopy, "allowsTextAnimationsType")}]);
  }
}

+ (int64_t)translateToUIAutocapitalizationType:(unint64_t)type
{
  if (type - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int64_t)translateToUIAutocorrectionType:(unint64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)translateToUISpellCheckingType:(unint64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)translateToUIKeyboardType:(unint64_t)type
{
  if (type - 1 > 0x10)
  {
    return 0;
  }

  else
  {
    return qword_18A67E500[type - 1];
  }
}

+ (int64_t)translateToUIKeyboardAppearance:(unint64_t)appearance
{
  if (appearance - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_18A67E588[appearance - 1];
  }
}

+ (int64_t)translateToPublicUIKeyboardAppearance:(unint64_t)appearance
{
  if (appearance == 6)
  {
    return 1;
  }

  else
  {
    return [self translateToUIKeyboardAppearance:?];
  }
}

+ (int64_t)translateToUIReturnKeyType:(unint64_t)type
{
  if (type - 1 > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18A67E5B8[type - 1];
  }
}

+ (int64_t)translateToUITextScriptType:(unint64_t)type
{
  if (type - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int64_t)translateToUISmartInsertDeleteEnabled:(BOOL)enabled
{
  if (enabled)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)translateToUIInlinePredictionType:(unint64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)translateToUITextMathExpressionCompletionType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)translateToUITextAllowsTextAnimationsType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)translateToUISmartDashesType:(unint64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)translateToUISmartQuotesType:(unint64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
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
  textContentType = [(UITextInputTraits *)self textContentType];

  if (textContentType)
  {
    textContentType2 = [(UITextInputTraits *)self textContentType];
    [v8 setObject:textContentType2 forKey:@"TextContentType"];
  }

  passwordRules = [(UITextInputTraits *)self passwordRules];

  if (passwordRules)
  {
    passwordRules2 = [(UITextInputTraits *)self passwordRules];
    [v8 setObject:passwordRules2 forKey:@"PasswordRules"];
  }

  return v8;
}

+ (int64_t)accessibleAppearanceForAppearance:(int64_t)appearance
{
  appearanceCopy = appearance;
  if (appearance != 127 && _AXSUseDarkerKeyboard())
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

  return appearanceCopy;
}

+ (int64_t)configuredAppearanceForAppearance:(int64_t)appearance withTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  v7 = [self accessibleAppearanceForAppearance:appearance];
  if (!environmentCopy)
  {
    goto LABEL_29;
  }

  traitCollection = [environmentCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if ((userInterfaceIdiom > 3 || userInterfaceIdiom == 2 || v7) && v7 != 10)
  {
    v12 = 10;
    if (v7)
    {
      v12 = v7;
    }

    goto LABEL_24;
  }

  traitCollection2 = [environmentCopy traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  v7 = 10;
  if (userInterfaceStyle > 1)
  {
    v12 = 1;
    v13 = 9;
    if (userInterfaceStyle != 1000)
    {
      v13 = 10;
    }

    if (userInterfaceStyle == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v13;
    }

    if (userInterfaceStyle != 2)
    {
      v12 = v13;
    }

    goto LABEL_24;
  }

  if (userInterfaceStyle)
  {
    v12 = 10;
    if (userInterfaceStyle != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (userInterfaceIdiom != 2)
  {
LABEL_23:
    v7 = 2;
    v12 = 2;
    goto LABEL_24;
  }

  v7 = 10;
  v12 = 10;
LABEL_24:
  if (userInterfaceIdiom != 2)
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

- (void)setTextTrimmingSet:(__CFCharacterSet *)set
{
  textTrimmingSet = self->textTrimmingSet;
  self->textTrimmingSet = set;
  if (set)
  {
    CFRetain(set);
  }

  if (textTrimmingSet)
  {

    CFRelease(textTrimmingSet);
  }
}

- (void)setSecureTextEntry:(BOOL)entry
{
  self->secureTextEntry = entry;
  if (entry)
  {
    [(UITextInputTraits *)self setToSecureValues];
  }

  else
  {
    self->devicePasscodeEntry = 0;
  }
}

- (void)setDevicePasscodeEntry:(BOOL)entry
{
  self->devicePasscodeEntry = entry;
  if (entry)
  {
    [(UITextInputTraits *)self setSecureTextEntry:1];
  }
}

- (int64_t)dictationKeyboardType
{
  keyboardType = [(UITextInputTraits *)self keyboardType];
  if ([(UITextInputTraits *)self forceDictationKeyboardType]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return keyboardType;
  }

  return [(UITextInputTraits *)self forceDictationKeyboardType];
}

- (int64_t)dictationInfoKeyboardType
{
  keyboardType = [(UITextInputTraits *)self keyboardType];
  if ([(UITextInputTraits *)self forceDictationKeyboardType]== 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(UITextInputTraits *)self forceDefaultDictationInfo])
    {
      return 0;
    }

    else
    {
      return keyboardType;
    }
  }

  else
  {

    return [(UITextInputTraits *)self forceDictationKeyboardType];
  }
}

- (void)overrideWithTraits:(id)traits
{
  traitsCopy = traits;
  if (traitsCopy)
  {
    v4 = objc_alloc_init(UITextInputTraits);
    autocapitalizationType = [traitsCopy autocapitalizationType];
    if (autocapitalizationType != [(UITextInputTraits *)v4 autocapitalizationType])
    {
      -[UITextInputTraits setAutocapitalizationType:](self, "setAutocapitalizationType:", [traitsCopy autocapitalizationType]);
    }

    autocorrectionType = [traitsCopy autocorrectionType];
    if (autocorrectionType != [(UITextInputTraits *)v4 autocorrectionType])
    {
      -[UITextInputTraits setAutocorrectionType:](self, "setAutocorrectionType:", [traitsCopy autocorrectionType]);
    }

    spellCheckingType = [traitsCopy spellCheckingType];
    if (spellCheckingType != [(UITextInputTraits *)v4 spellCheckingType])
    {
      -[UITextInputTraits setSpellCheckingType:](self, "setSpellCheckingType:", [traitsCopy spellCheckingType]);
    }

    keyboardType = [traitsCopy keyboardType];
    if (keyboardType != [(UITextInputTraits *)v4 keyboardType])
    {
      -[UITextInputTraits setKeyboardType:](self, "setKeyboardType:", [traitsCopy keyboardType]);
    }

    keyboardAppearance = [traitsCopy keyboardAppearance];
    if (keyboardAppearance != [(UITextInputTraits *)v4 keyboardAppearance])
    {
      -[UITextInputTraits setKeyboardAppearance:](self, "setKeyboardAppearance:", [traitsCopy keyboardAppearance]);
    }

    returnKeyType = [traitsCopy returnKeyType];
    if (returnKeyType != [(UITextInputTraits *)v4 returnKeyType])
    {
      -[UITextInputTraits setReturnKeyType:](self, "setReturnKeyType:", [traitsCopy returnKeyType]);
    }

    enablesReturnKeyAutomatically = [traitsCopy enablesReturnKeyAutomatically];
    if (enablesReturnKeyAutomatically != [(UITextInputTraits *)v4 enablesReturnKeyAutomatically])
    {
      -[UITextInputTraits setEnablesReturnKeyAutomatically:](self, "setEnablesReturnKeyAutomatically:", [traitsCopy enablesReturnKeyAutomatically]);
    }

    textContentType = [traitsCopy textContentType];
    textContentType2 = [(UITextInputTraits *)v4 textContentType];

    if (textContentType != textContentType2)
    {
      textContentType3 = [traitsCopy textContentType];
      [(UITextInputTraits *)self setTextContentType:textContentType3];
    }

    smartInsertDeleteType = [traitsCopy smartInsertDeleteType];
    if (smartInsertDeleteType != [(UITextInputTraits *)v4 smartInsertDeleteType])
    {
      -[UITextInputTraits setSmartInsertDeleteType:](self, "setSmartInsertDeleteType:", [traitsCopy smartInsertDeleteType]);
    }

    smartQuotesType = [traitsCopy smartQuotesType];
    if (smartQuotesType != [(UITextInputTraits *)v4 smartQuotesType])
    {
      -[UITextInputTraits setSmartQuotesType:](self, "setSmartQuotesType:", [traitsCopy smartQuotesType]);
    }

    smartDashesType = [traitsCopy smartDashesType];
    if (smartDashesType != [(UITextInputTraits *)v4 smartDashesType])
    {
      -[UITextInputTraits setSmartDashesType:](self, "setSmartDashesType:", [traitsCopy smartDashesType]);
    }

    writingToolsBehavior = [traitsCopy writingToolsBehavior];
    if (writingToolsBehavior != [(UITextInputTraits *)v4 writingToolsBehavior])
    {
      -[UITextInputTraits setWritingToolsBehavior:](self, "setWritingToolsBehavior:", [traitsCopy writingToolsBehavior]);
    }

    allowedWritingToolsResultOptions = [traitsCopy allowedWritingToolsResultOptions];
    if (allowedWritingToolsResultOptions != [(UITextInputTraits *)v4 allowedWritingToolsResultOptions])
    {
      -[UITextInputTraits setAllowedWritingToolsResultOptions:](self, "setAllowedWritingToolsResultOptions:", [traitsCopy allowedWritingToolsResultOptions]);
    }

    [(UITextInputTraits *)self overrideWithPrivateTraits:traitsCopy];
  }
}

- (void)overrideWithPrivateTraits:(id)traits
{
  traitsCopy = traits;
  if (traitsCopy)
  {
    v31 = traitsCopy;
    v5 = objc_alloc_init(UITextInputTraits);
    forceFloatingKeyboard = [v31 forceFloatingKeyboard];
    if (forceFloatingKeyboard != [(UITextInputTraits *)v5 forceFloatingKeyboard])
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

    acceptsInitialEmojiKeyboard = [v31 acceptsInitialEmojiKeyboard];
    if (acceptsInitialEmojiKeyboard != [(UITextInputTraits *)v5 acceptsInitialEmojiKeyboard])
    {
      -[UITextInputTraits setAcceptsInitialEmojiKeyboard:](self, "setAcceptsInitialEmojiKeyboard:", [v31 acceptsInitialEmojiKeyboard]);
    }

    recentInputIdentifier = [v31 recentInputIdentifier];
    recentInputIdentifier2 = [(UITextInputTraits *)v5 recentInputIdentifier];

    if (recentInputIdentifier != recentInputIdentifier2)
    {
      recentInputIdentifier3 = [v31 recentInputIdentifier];
      [(UITextInputTraits *)self setRecentInputIdentifier:recentInputIdentifier3];
    }

    inlinePredictionType = [v31 inlinePredictionType];
    if (inlinePredictionType != [(UITextInputTraits *)v5 inlinePredictionType])
    {
      -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [v31 inlinePredictionType]);
    }

    mathExpressionCompletionType = [v31 mathExpressionCompletionType];
    if (mathExpressionCompletionType != [(UITextInputTraits *)v5 mathExpressionCompletionType])
    {
      -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [v31 mathExpressionCompletionType]);
    }

    allowsTextAnimationsType = [v31 allowsTextAnimationsType];
    if (allowsTextAnimationsType != [(UITextInputTraits *)v5 allowsTextAnimationsType])
    {
      -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [v31 allowsTextAnimationsType]);
    }

    keyboardSuggestionOptions = [v31 keyboardSuggestionOptions];
    if (keyboardSuggestionOptions != [(UITextInputTraits *)v5 keyboardSuggestionOptions])
    {
      -[UITextInputTraits setKeyboardSuggestionOptions:](self, "setKeyboardSuggestionOptions:", [v31 keyboardSuggestionOptions]);
    }

    allowsNumberPadPopover = [v31 allowsNumberPadPopover];
    if (allowsNumberPadPopover != [(UITextInputTraits *)v5 allowsNumberPadPopover])
    {
      -[UITextInputTraits setAllowsNumberPadPopover:](self, "setAllowsNumberPadPopover:", [v31 allowsNumberPadPopover]);
    }

    traitsCopy = v31;
  }
}

- (void)fastPathToObtainTraitsFrom:(id)from
{
  fromCopy = from;
  self->autocapitalizationType = [fromCopy autocapitalizationType];
  self->autocorrectionType = [fromCopy autocorrectionType];
  self->spellCheckingType = [fromCopy spellCheckingType];
  *(self + 32) = [fromCopy keyboardType];
  *(self + 33) = [fromCopy keyboardAppearance];
  self->returnKeyType = [fromCopy returnKeyType];
  self->enablesReturnKeyAutomatically = [fromCopy enablesReturnKeyAutomatically];
  self->secureTextEntry = [fromCopy isSecureTextEntry];
  if (fromCopy)
  {
    *&self->_privateInputTraitFlags = *&self->_privateInputTraitFlags & 0xF7 | fromCopy[360] & 8;
  }

  self->devicePasscodeEntry = [fromCopy isDevicePasscodeEntry];
  passwordRules = [fromCopy passwordRules];
  passwordRules = self->passwordRules;
  self->passwordRules = passwordRules;

  textContentType = [fromCopy textContentType];
  textContentType = self->textContentType;
  self->textContentType = textContentType;

  self->smartInsertDeleteType = [fromCopy smartInsertDeleteType];
  self->smartQuotesType = [fromCopy smartQuotesType];
  self->smartDashesType = [fromCopy smartDashesType];
  recentInputIdentifier = [fromCopy recentInputIdentifier];
  [(UITextInputTraits *)self setRecentInputIdentifier:recentInputIdentifier];

  -[UITextInputTraits setWritingToolsBehavior:](self, "setWritingToolsBehavior:", [fromCopy writingToolsBehavior]);
  -[UITextInputTraits setAllowedWritingToolsResultOptions:](self, "setAllowedWritingToolsResultOptions:", [fromCopy allowedWritingToolsResultOptions]);
  if (_os_feature_enabled_impl())
  {
    inputContextHistory = [(UITextInputTraits *)self inputContextHistory];
    if (!inputContextHistory)
    {
      if (objc_opt_respondsToSelector())
      {
        conversationContext = [fromCopy conversationContext];

        if (!conversationContext)
        {
          goto LABEL_10;
        }

        inputContextHistory = [fromCopy conversationContext];
        inputContextHistoryRepresentation = [inputContextHistory inputContextHistoryRepresentation];
        [(UITextInputTraits *)self setInputContextHistory:inputContextHistoryRepresentation];
      }

      else
      {
        inputContextHistory = 0;
      }
    }
  }

LABEL_10:
  v46 = fromCopy;
  -[UITextInputTraits setManageRecentInputs:](self, "setManageRecentInputs:", [v46 manageRecentInputs]);
  validTextRange = [v46 validTextRange];
  [(UITextInputTraits *)self setValidTextRange:validTextRange, v14];
  pINEntrySeparatorIndexes = [v46 PINEntrySeparatorIndexes];
  [(UITextInputTraits *)self setPINEntrySeparatorIndexes:pINEntrySeparatorIndexes];

  -[UITextInputTraits setTextTrimmingSet:](self, "setTextTrimmingSet:", [v46 textTrimmingSet]);
  insertionPointColor = [v46 insertionPointColor];
  insertionPointColor = self->_insertionPointColor;
  self->_insertionPointColor = insertionPointColor;

  selectionBarColor = [v46 selectionBarColor];
  selectionBarColor = self->_selectionBarColor;
  self->_selectionBarColor = selectionBarColor;

  selectionHighlightColor = [v46 selectionHighlightColor];
  selectionHighlightColor = self->_selectionHighlightColor;
  self->_selectionHighlightColor = selectionHighlightColor;

  matchHighlightColor = [v46 matchHighlightColor];
  matchHighlightColor = self->_matchHighlightColor;
  self->_matchHighlightColor = matchHighlightColor;

  selectionBorderColor = [v46 selectionBorderColor];
  selectionBorderColor = self->_selectionBorderColor;
  self->_selectionBorderColor = selectionBorderColor;

  [v46 selectionBorderWidth];
  self->_selectionBorderWidth = v26;
  [v46 selectionCornerRadius];
  self->_selectionCornerRadius = v27;
  [v46 selectionEdgeInsets];
  self->_selectionEdgeInsets.top = v28;
  self->_selectionEdgeInsets.left = v29;
  self->_selectionEdgeInsets.bottom = v30;
  self->_selectionEdgeInsets.right = v31;
  selectionDragDotImage = [v46 selectionDragDotImage];
  [(UITextInputTraits *)self setSelectionDragDotImage:selectionDragDotImage];

  self->insertionPointWidth = [v46 insertionPointWidth];
  self->textLoupeVisibility = [v46 textLoupeVisibility];
  self->textSelectionBehavior = [v46 textSelectionBehavior];
  textSuggestionDelegate = [v46 textSuggestionDelegate];
  textSuggestionDelegate = self->textSuggestionDelegate;
  self->textSuggestionDelegate = textSuggestionDelegate;

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
  autocorrectionContext = [v46 autocorrectionContext];
  [(UITextInputTraits *)self setAutocorrectionContext:autocorrectionContext];

  responseContext = [v46 responseContext];
  [(UITextInputTraits *)self setResponseContext:responseContext];

  inputContextHistory2 = [(UITextInputTraits *)self inputContextHistory];

  if (!inputContextHistory2)
  {
    inputContextHistory3 = [v46 inputContextHistory];
    [(UITextInputTraits *)self setInputContextHistory:inputContextHistory3];
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
  supplementalLexicon = [v46 supplementalLexicon];
  [(UITextInputTraits *)self setSupplementalLexicon:supplementalLexicon];

  supplementalLexiconAmbiguousItemIcon = [v46 supplementalLexiconAmbiguousItemIcon];
  [(UITextInputTraits *)self setSupplementalLexiconAmbiguousItemIcon:supplementalLexiconAmbiguousItemIcon];

  self->disableHandwritingKeyboard = [v46 disableHandwritingKeyboard];
  -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [v46 mathExpressionCompletionType]);
  -[UITextInputTraits setAllowsTextAnimationsType:](self, "setAllowsTextAnimationsType:", [v46 allowsTextAnimationsType]);
  -[UITextInputTraits setKeyboardSuggestionOptions:](self, "setKeyboardSuggestionOptions:", [v46 keyboardSuggestionOptions]);
  -[UITextInputTraits setAllowsNumberPadPopover:](self, "setAllowsNumberPadPopover:", [v46 allowsNumberPadPopover]);
}

- (void)extendedPathToObtainTraitsFrom:(id)from lightweight:(BOOL)lightweight
{
  lightweightCopy = lightweight;
  fromCopy = from;
  [(UITextInputTraits *)self setToDefaultValues];
  if (lightweightCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      self->autocorrectionType = [fromCopy autocorrectionType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(self + 32) = [fromCopy keyboardType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->secureTextEntry = [fromCopy isSecureTextEntry];
    }

    if (objc_opt_respondsToSelector())
    {
      textContentType = [fromCopy textContentType];
      textContentType = self->textContentType;
      self->textContentType = textContentType;
LABEL_52:
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      self->autocapitalizationType = [fromCopy autocapitalizationType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->autocorrectionType = [fromCopy autocorrectionType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->spellCheckingType = [fromCopy spellCheckingType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(self + 32) = [fromCopy keyboardType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(self + 33) = [fromCopy keyboardAppearance];
    }

    if (objc_opt_respondsToSelector())
    {
      self->returnKeyType = [fromCopy returnKeyType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->enablesReturnKeyAutomatically = [fromCopy enablesReturnKeyAutomatically];
    }

    if (objc_opt_respondsToSelector())
    {
      self->secureTextEntry = [fromCopy isSecureTextEntry];
    }

    if (objc_opt_respondsToSelector())
    {
      passwordRules = [fromCopy passwordRules];
      passwordRules = self->passwordRules;
      self->passwordRules = passwordRules;
    }

    if (objc_opt_respondsToSelector())
    {
      textContentType2 = [fromCopy textContentType];
      v12 = self->textContentType;
      self->textContentType = textContentType2;
    }

    if (objc_opt_respondsToSelector())
    {
      self->smartInsertDeleteType = [fromCopy smartInsertDeleteType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->smartQuotesType = [fromCopy smartQuotesType];
    }

    if (objc_opt_respondsToSelector())
    {
      self->smartDashesType = [fromCopy smartDashesType];
    }

    if (objc_opt_respondsToSelector())
    {
      recentInputIdentifier = [fromCopy recentInputIdentifier];
      [(UITextInputTraits *)self setRecentInputIdentifier:recentInputIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setInlinePredictionType:](self, "setInlinePredictionType:", [fromCopy inlinePredictionType]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setMathExpressionCompletionType:](self, "setMathExpressionCompletionType:", [fromCopy mathExpressionCompletionType]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setWritingToolsBehavior:](self, "setWritingToolsBehavior:", [fromCopy writingToolsBehavior]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setAllowedWritingToolsResultOptions:](self, "setAllowedWritingToolsResultOptions:", [fromCopy allowedWritingToolsResultOptions]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setAllowsNumberPadPopover:](self, "setAllowsNumberPadPopover:", [fromCopy allowsNumberPadPopover]);
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

        textContentType = [fromCopy conversationContext];
        inputContextHistoryRepresentation = [textContentType inputContextHistoryRepresentation];
        [(UITextInputTraits *)self setInputContextHistory:inputContextHistoryRepresentation];
      }

      goto LABEL_52;
    }
  }

LABEL_53:
  v53 = fromCopy;
  if (objc_opt_respondsToSelector())
  {
    self->isSingleLineDocument = [v53 isSingleLineDocument];
  }

  if (objc_opt_respondsToSelector())
  {
    insertionPointColor = [v53 insertionPointColor];
    insertionPointColor = insertionPointColor;
    if (!insertionPointColor)
    {
      insertionPointColor = self->_insertionPointColor;
    }

    objc_storeStrong(&self->_insertionPointColor, insertionPointColor);
  }

  if (objc_opt_respondsToSelector())
  {
    selectionHighlightColor = [v53 selectionHighlightColor];
    selectionHighlightColor = selectionHighlightColor;
    if (!selectionHighlightColor)
    {
      selectionHighlightColor = self->_selectionHighlightColor;
    }

    objc_storeStrong(&self->_selectionHighlightColor, selectionHighlightColor);
  }

  if (objc_opt_respondsToSelector())
  {
    selectionHandleColor = [v53 selectionHandleColor];
    selectionBarColor = selectionHandleColor;
    if (!selectionHandleColor)
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
    if (lightweightCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        textSuggestionDelegate = [v21 textSuggestionDelegate];
        textSuggestionDelegate = self->textSuggestionDelegate;
        self->textSuggestionDelegate = textSuggestionDelegate;
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
      validTextRange = [v21 validTextRange];
      [(UITextInputTraits *)self setValidTextRange:validTextRange, v25];
    }

    if (objc_opt_respondsToSelector())
    {
      pINEntrySeparatorIndexes = [v21 PINEntrySeparatorIndexes];
      [(UITextInputTraits *)self setPINEntrySeparatorIndexes:pINEntrySeparatorIndexes];
    }

    if (objc_opt_respondsToSelector())
    {
      -[UITextInputTraits setTextTrimmingSet:](self, "setTextTrimmingSet:", [v21 textTrimmingSet]);
    }

    if (objc_opt_respondsToSelector())
    {
      selectionBarColor = [v21 selectionBarColor];
      v28 = self->_selectionBarColor;
      self->_selectionBarColor = selectionBarColor;
    }

    if (objc_opt_respondsToSelector())
    {
      matchHighlightColor = [v21 matchHighlightColor];
      matchHighlightColor = self->_matchHighlightColor;
      self->_matchHighlightColor = matchHighlightColor;
    }

    if (objc_opt_respondsToSelector())
    {
      selectionBorderColor = [v21 selectionBorderColor];
      selectionBorderColor = self->_selectionBorderColor;
      self->_selectionBorderColor = selectionBorderColor;
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
      selectionDragDotImage = [v21 selectionDragDotImage];
      [(UITextInputTraits *)self setSelectionDragDotImage:selectionDragDotImage];
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
      textSuggestionDelegate2 = [v21 textSuggestionDelegate];
      v41 = self->textSuggestionDelegate;
      self->textSuggestionDelegate = textSuggestionDelegate2;
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
      autocorrectionContext = [v21 autocorrectionContext];
      [(UITextInputTraits *)self setAutocorrectionContext:autocorrectionContext];
    }

    if (objc_opt_respondsToSelector())
    {
      responseContext = [v21 responseContext];
      [(UITextInputTraits *)self setResponseContext:responseContext];
    }

    inputContextHistory = [(UITextInputTraits *)self inputContextHistory];
    if (!inputContextHistory)
    {
      if (objc_opt_respondsToSelector())
      {
        inputContextHistory2 = [v21 inputContextHistory];

        if (!inputContextHistory2)
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
            supplementalLexicon = [v21 supplementalLexicon];
            [(UITextInputTraits *)self setSupplementalLexicon:supplementalLexicon];
          }

          if (objc_opt_respondsToSelector())
          {
            supplementalLexiconAmbiguousItemIcon = [v21 supplementalLexiconAmbiguousItemIcon];
            [(UITextInputTraits *)self setSupplementalLexiconAmbiguousItemIcon:supplementalLexiconAmbiguousItemIcon];
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

        inputContextHistory = [v21 inputContextHistory];
        [(UITextInputTraits *)self setInputContextHistory:inputContextHistory];
      }

      else
      {
        inputContextHistory = 0;
      }
    }

    goto LABEL_181;
  }

LABEL_216:
}

+ (id)traitEnvironmentFromTraits:(id)traits
{
  traitsCopy = traits;
  if (objc_opt_respondsToSelector())
  {
    v5 = traitsCopy;
  }

  else if ([traitsCopy __isKindOfUIResponder])
  {
    nextResponder = [traitsCopy nextResponder];
    v5 = [self traitEnvironmentFromTraits:nextResponder];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)takeTraitsFrom:(id)from lightweight:(BOOL)lightweight
{
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [fromCopy conformsToProtocolCached:&unk_1F016C810])
  {
    extendedTextInputTraits = [fromCopy extendedTextInputTraits];
    if (!extendedTextInputTraits)
    {
      goto LABEL_16;
    }

LABEL_15:
    v6 = extendedTextInputTraits;

    v7 = v6;
LABEL_24:
    fromCopy = v7;
    [UITextInputTraits extendedPathToObtainTraitsFrom:"extendedPathToObtainTraitsFrom:lightweight:" lightweight:?];
    v9 = 0;
    v10 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [fromCopy conformsToProtocolCached:&unk_1F016C7B0])
  {
    extendedTextInputTraits = [fromCopy extendedTraitsDelegate];
    if (extendedTextInputTraits)
    {
      goto LABEL_15;
    }
  }

  else
  {
    NSClassFromString(&cfstr_Wkcontentview.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      if ([fromCopy conformsToProtocolCached:&unk_1F016C7B0])
      {
        extendedTextInputTraits = [fromCopy textInputTraits];
        if (extendedTextInputTraits)
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
    textInputTraits = fromCopy;
  }

  else
  {
    NSClassFromString(&cfstr_Wkcontentview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![fromCopy conformsToProtocol:&unk_1EFE8E9A0])
    {
      goto LABEL_23;
    }

    textInputTraits = [fromCopy textInputTraits];
  }

  v9 = textInputTraits;
  if (!textInputTraits)
  {
LABEL_23:
    v6 = 0;
    v7 = fromCopy;
    goto LABEL_24;
  }

  [(UITextInputTraits *)self fastPathToObtainTraitsFrom:textInputTraits];
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

  v11 = [UITextInputTraits traitEnvironmentFromTraits:fromCopy];
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

  traitCollection = [v11 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
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
    traitCollection2 = [v11 traitCollection];
    userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

    v16 = 1;
    if (userInterfaceIdiom2 != 3)
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
    keyboardType = [v9 keyboardType];
    if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
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

+ (id)traitsByAdoptingTraits:(id)traits
{
  traitsCopy = traits;
  v4 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v4 takeTraitsFrom:traitsCopy lightweight:0];

  return v4;
}

+ (id)traitsByAdoptingTraits:(id)traits lightweight:(BOOL)lightweight
{
  lightweightCopy = lightweight;
  traitsCopy = traits;
  v6 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v6 takeTraitsFrom:traitsCopy lightweight:lightweightCopy];

  return v6;
}

+ (BOOL)keyboardTypeRequiresASCIICapable:(int64_t)capable
{
  result = 1;
  if (capable <= 0xD)
  {
    if (((1 << capable) & 0x3575) == 0)
    {
      return result;
    }

    return 0;
  }

  if ((capable - 120) > 7)
  {
    return 0;
  }

  v4 = 1 << (capable - 120);
  if ((v4 & 0x55) != 0 || (v4 & 0x88) == 0)
  {
    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UITextInputTraits);
  [(UITextInputTraits *)v4 takeTraitsFrom:self lightweight:0];
  return v4;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ : %p>\n", objc_opt_class(), self];
  [string appendString:v4];

  [string appendString:@"public\n"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   autocapitalization:                  %ld\n", self->autocapitalizationType];
  [string appendString:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   autocorrection:                      %ld\n", self->autocorrectionType];
  [string appendString:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   spellchecking:                       %ld\n", self->spellCheckingType];
  [string appendString:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   keyboard type:                       %ld\n", *(self + 32)];
  [string appendString:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   kb appearance:                       %ld\n", *(self + 33)];
  [string appendString:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   return key type:                     %ld\n", self->returnKeyType];
  [string appendString:v10];

  if (self->enablesReturnKeyAutomatically)
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   auto return key:                     %@\n", v11];
  [string appendString:v12];

  if (self->secureTextEntry)
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   secure text entry:                   %@\n", v13];
  [string appendString:v14];

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
    [string appendString:v16];
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
  [string appendString:v18];

  passwordRules = [(UITextInputTraits *)self passwordRules];

  if (passwordRules)
  {
    v20 = MEMORY[0x1E696AEC0];
    passwordRules2 = [(UITextInputTraits *)self passwordRules];
    v22 = [v20 stringWithFormat:@"   password rules:                      %@\n", passwordRules2];
    [string appendString:v22];
  }

  textContentType = [(UITextInputTraits *)self textContentType];

  if (textContentType)
  {
    v24 = MEMORY[0x1E696AEC0];
    textContentType2 = [(UITextInputTraits *)self textContentType];
    v26 = [v24 stringWithFormat:@"   text content type:                   %@\n", textContentType2];
    [string appendString:v26];
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   smart insert/delete type:            %ld\n", self->smartInsertDeleteType];
  [string appendString:v27];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   smart quotes type:                   %ld\n", self->smartQuotesType];
  [string appendString:v28];

  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   smart dashes type:                   %ld\n", self->smartDashesType];
  [string appendString:v29];

  recentInputIdentifier = [(UITextInputTraits *)self recentInputIdentifier];

  if (recentInputIdentifier)
  {
    v31 = MEMORY[0x1E696AEC0];
    recentInputIdentifier2 = [(UITextInputTraits *)self recentInputIdentifier];
    v33 = [v31 stringWithFormat:@"   recent input identifier:             %@\n", recentInputIdentifier2];
    [string appendString:v33];
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   writingToolsBehavior:            %ld\n", self->writingToolsBehavior];
  [string appendString:v34];

  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   allowedWritingToolsResultOptions:     %ld\n", self->allowedWritingToolsResultOptions];
  [string appendString:v35];

  [string appendString:@"private\n"];
  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text trimming set:                   %p\n", self->textTrimmingSet];
  [string appendString:v36];

  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   ins. pt. color:                      %@\n", self->insertionPointColor];
  [string appendString:v37];

  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   ins. pt. width:                      %lu\n", self->insertionPointWidth];
  [string appendString:v38];

  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text loupe vis.:                     %d\n", self->textLoupeVisibility];
  [string appendString:v39];

  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   selection behavior:                  %d\n", self->textSelectionBehavior];
  [string appendString:v40];

  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text suggest. del.:                  %@\n", self->textSuggestionDelegate];
  [string appendString:v41];

  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   single-line document:                %d\n", self->isSingleLineDocument];
  [string appendString:v42];

  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   single value:                        %d\n", self->contentsIsSingleValue];
  [string appendString:v43];

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   has default contents:                %d\n", self->hasDefaultContents];
  [string appendString:v44];

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts payloads:                    %d\n", self->acceptsPayloads];
  [string appendString:v45];

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts emoji:                       %d\n", self->acceptsEmoji];
  [string appendString:v46];

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   acceptsInitialEmojiKeyboard:         %d\n", self->acceptsInitialEmojiKeyboard];
  [string appendString:v47];

  v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts dictation search results:    %d\n", self->acceptsDictationSearchResults];
  [string appendString:v48];

  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   use automatic endpointing:           %d\n", self->useAutomaticEndpointing];
  [string appendString:v49];

  v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   show dictation button:               %d\n", self->showDictationButton];
  [string appendString:v50];

  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force-enable dictation:              %d\n", self->forceEnableDictation];
  [string appendString:v51];

  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force-disable dictation:             %d\n", self->forceDisableDictation];
  [string appendString:v52];

  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force-spelling dictation: %d\n", self->forceSpellingDictation];
  [string appendString:v53];

  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force default dictation info         %d\n", self->forceDefaultDictationInfo];
  [string appendString:v54];

  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force dictation keyboard type:       %ld\n", self->forceDictationKeyboardType];
  [string appendString:v55];

  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   prefer online dictation              %d\n", self->preferOnlineDictation];
  [string appendString:v56];

  v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disabled return key:                 %d\n", self->emptyContentReturnKeyType];
  [string appendString:v57];

  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   return key goes to next responder:   %d\n", self->returnKeyGoesToNextResponder];
  [string appendString:v58];

  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts floating keyboard:           %d\n", self->acceptsFloatingKeyboard];
  [string appendString:v59];

  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   force floating keyboard:             %d\n", self->forceFloatingKeyboard];
  [string appendString:v60];

  v61 = MEMORY[0x1E696AEC0];
  v62 = NSStringFromUIEdgeInsets(self->floatingKeyboardEdgeInsets);
  v63 = [v61 stringWithFormat:@"   floating keyboard edge insets:       %@\n", v62];
  [string appendString:v63];

  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   accepts split keyboard:              %d\n", self->acceptsSplitKeyboard];
  [string appendString:v64];

  v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   displaySecureTextUsingPlainText:     %d\n", self->displaySecureTextUsingPlainText];
  [string appendString:v65];

  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   displaySecureEditsUsingPlainText:    %d\n", self->displaySecureEditsUsingPlainText];
  [string appendString:v66];

  v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   learnsCorrections:        %d\n", self->learnsCorrections];
  [string appendString:v67];

  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   shortcut conversion:                 %d\n", self->shortcutConversionType];
  [string appendString:v68];

  v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   suppress return key styling:         %d\n", self->suppressReturnKeyStyling];
  [string appendString:v69];

  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   localized with UI language:          %d\n", self->useInterfaceLanguageForLocalization];
  [string appendString:v70];

  v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   defer becomeFirstResponder:          %d\n", self->deferBecomingResponder];
  [string appendString:v71];

  if (self->enablesReturnKeyOnNonWhiteSpaceContent)
  {
    v72 = @"Y";
  }

  else
  {
    v72 = @"N";
  }

  v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   enables return key for NWS content:  %@\n", v72];
  [string appendString:v73];

  v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   autocorrection context:              %@\n", self->autocorrectionContext];
  [string appendString:v74];

  v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   response context:                    %@\n", self->responseContext];
  [string appendString:v75];

  v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   input context history:               %@\n", self->inputContextHistory];
  [string appendString:v76];

  if (self->disablePrediction)
  {
    v77 = @"Y";
  }

  else
  {
    v77 = @"N";
  }

  v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disable prediction:                  %@\n", v77];
  [string appendString:v78];

  if (self->hidePrediction)
  {
    v79 = @"Y";
  }

  else
  {
    v79 = @"N";
  }

  v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   hide prediction:                     %@\n", v79];
  [string appendString:v80];

  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   inline prediction type:              %ld\n", self->inlinePredictionType];
  [string appendString:v81];

  if (self->disableInputBars)
  {
    v82 = @"Y";
  }

  else
  {
    v82 = @"N";
  }

  v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disableInputBars:                    %@\n", v82];
  [string appendString:v83];

  if (self->isCarPlayIdiom)
  {
    v84 = @"Y";
  }

  else
  {
    v84 = @"N";
  }

  v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   isCarPlayIdiom:                      %@\n", v84];
  [string appendString:v85];

  if (self->preferredInputViewHeight > 0.0)
  {
    v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   preferredInputViewHeight:            %f\n", *&self->preferredInputViewHeight];
    [string appendString:v86];
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
  [string appendString:v88];

  v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   textScriptType:                      %ld\n", self->textScriptType];
  [string appendString:v89];

  v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   supplemental lexicon:                %@\n", self->supplementalLexicon];
  [string appendString:v90];

  v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   supplemental lexicon ambiguous item icon: %@\n", self->supplementalLexiconAmbiguousItemIcon];
  [string appendString:v91];

  v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   disableHandwritingKeyboard:          %d\n", self->disableHandwritingKeyboard];
  [string appendString:v92];

  v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   math expression completion:          %ld\n", self->mathExpressionCompletionType];
  [string appendString:v93];

  v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   text animations allowed:             %ld\n", self->allowsTextAnimationsType];
  [string appendString:v94];

  v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   keyboard suggestion options:         %ld\n", self->keyboardSuggestionOptions];
  [string appendString:v95];

  if (self->allowsNumberPadPopover)
  {
    v96 = @"Y";
  }

  else
  {
    v96 = @"N";
  }

  v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   enable numberpad popover display:   %@\n", v96];
  [string appendString:v97];

  return string;
}

- (BOOL)publicTraitsMatchTraits:(id)traits
{
  traitsCopy = traits;
  autocapitalizationType = self->autocapitalizationType;
  if (autocapitalizationType == [traitsCopy autocapitalizationType])
  {
    autocorrectionType = self->autocorrectionType;
    if (autocorrectionType == [traitsCopy autocorrectionType])
    {
      spellCheckingType = self->spellCheckingType;
      if (spellCheckingType == [traitsCopy spellCheckingType])
      {
        v9 = *(self + 32);
        if ([traitsCopy keyboardType] == v9)
        {
          v10 = *(self + 33);
          if ([traitsCopy keyboardAppearance] == v10)
          {
            returnKeyType = self->returnKeyType;
            if (returnKeyType == [traitsCopy returnKeyType])
            {
              enablesReturnKeyAutomatically = self->enablesReturnKeyAutomatically;
              if (enablesReturnKeyAutomatically == [traitsCopy enablesReturnKeyAutomatically])
              {
                secureTextEntry = self->secureTextEntry;
                if (secureTextEntry == [traitsCopy isSecureTextEntry])
                {
                  smartInsertDeleteType = self->smartInsertDeleteType;
                  if (smartInsertDeleteType == [traitsCopy smartInsertDeleteType])
                  {
                    smartQuotesType = self->smartQuotesType;
                    if (smartQuotesType == [traitsCopy smartQuotesType])
                    {
                      smartDashesType = self->smartDashesType;
                      if (smartDashesType == [traitsCopy smartDashesType])
                      {
                        textContentType = self->textContentType;
                        textContentType = [traitsCopy textContentType];
                        if (textContentType == textContentType || (v19 = self->textContentType, [traitsCopy textContentType], v3 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v19, "isEqualToString:", v3)))
                        {
                          passwordRules = self->passwordRules;
                          passwordRules = [traitsCopy passwordRules];
                          if (passwordRules == passwordRules)
                          {
                            writingToolsBehavior = self->writingToolsBehavior;
                            if (writingToolsBehavior == [traitsCopy writingToolsBehavior])
                            {
                              allowedWritingToolsResultOptions = self->allowedWritingToolsResultOptions;
                              v20 = allowedWritingToolsResultOptions == [traitsCopy allowedWritingToolsResultOptions];
                            }

                            else
                            {
                              v20 = 0;
                            }
                          }

                          else
                          {
                            v24 = self->passwordRules;
                            passwordRules2 = [traitsCopy passwordRules];
                            if (-[UITextInputPasswordRules isEqual:](v24, "isEqual:", passwordRules2) && (v26 = self->writingToolsBehavior, v26 == [traitsCopy writingToolsBehavior]))
                            {
                              v27 = self->allowedWritingToolsResultOptions;
                              v20 = v27 == [traitsCopy allowedWritingToolsResultOptions];
                            }

                            else
                            {
                              v20 = 0;
                            }
                          }

                          if (textContentType == textContentType)
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

- (int64_t)updateResultComparedToTraits:(id)traits
{
  traitsCopy = traits;
  v7 = *(self + 32);
  if ([traitsCopy keyboardType] != v7)
  {
    goto LABEL_8;
  }

  v8 = *(self + 33);
  if ([traitsCopy keyboardAppearance] != v8)
  {
    goto LABEL_8;
  }

  secureTextEntry = self->secureTextEntry;
  if (secureTextEntry != [traitsCopy isSecureTextEntry])
  {
    goto LABEL_8;
  }

  acceptsEmoji = self->acceptsEmoji;
  if (acceptsEmoji != [traitsCopy acceptsEmoji])
  {
    goto LABEL_8;
  }

  acceptsInitialEmojiKeyboard = self->acceptsInitialEmojiKeyboard;
  if (acceptsInitialEmojiKeyboard != [traitsCopy acceptsInitialEmojiKeyboard])
  {
    goto LABEL_8;
  }

  isCarPlayIdiom = self->isCarPlayIdiom;
  if (isCarPlayIdiom != [traitsCopy isCarPlayIdiom])
  {
    goto LABEL_8;
  }

  preferredInputViewHeight = self->preferredInputViewHeight;
  [traitsCopy preferredInputViewHeight];
  if (preferredInputViewHeight != v14)
  {
    goto LABEL_8;
  }

  recentInputIdentifier = [(UITextInputTraits *)self recentInputIdentifier];
  if (recentInputIdentifier)
  {
    recentInputIdentifier2 = [(UITextInputTraits *)self recentInputIdentifier];
    recentInputIdentifier3 = [traitsCopy recentInputIdentifier];
    if (([recentInputIdentifier2 isEqualToString:recentInputIdentifier3] & 1) == 0)
    {

LABEL_8:
      v15 = 2;
      goto LABEL_9;
    }
  }

  recentInputIdentifier4 = [(UITextInputTraits *)self recentInputIdentifier];
  if (recentInputIdentifier4)
  {
    recentInputIdentifier5 = recentInputIdentifier4;
  }

  else
  {
    recentInputIdentifier5 = [traitsCopy recentInputIdentifier];
    if (recentInputIdentifier5)
    {
      goto LABEL_18;
    }
  }

  smartQuotesType = self->smartQuotesType;
  if (smartQuotesType == [traitsCopy smartQuotesType])
  {
    smartDashesType = self->smartDashesType;
    v22 = smartDashesType != [traitsCopy smartDashesType];
    goto LABEL_19;
  }

LABEL_18:
  v22 = 1;
LABEL_19:

  if (recentInputIdentifier)
  {
  }

  if (v22)
  {
    goto LABEL_8;
  }

  disableInputBars = self->disableInputBars;
  if (disableInputBars == [traitsCopy disableInputBars])
  {
    returnKeyType = self->returnKeyType;
    v15 = returnKeyType != [traitsCopy returnKeyType] || (enablesReturnKeyAutomatically = self->enablesReturnKeyAutomatically, enablesReturnKeyAutomatically != objc_msgSend(traitsCopy, "enablesReturnKeyAutomatically")) || (emptyContentReturnKeyType = self->emptyContentReturnKeyType, emptyContentReturnKeyType != objc_msgSend(traitsCopy, "emptyContentReturnKeyType")) || (enablesReturnKeyOnNonWhiteSpaceContent = self->enablesReturnKeyOnNonWhiteSpaceContent, enablesReturnKeyOnNonWhiteSpaceContent != objc_msgSend(traitsCopy, "enablesReturnKeyOnNonWhiteSpaceContent")) || (suppressReturnKeyStyling = self->suppressReturnKeyStyling, suppressReturnKeyStyling != objc_msgSend(traitsCopy, "suppressReturnKeyStyling")) || self->enablesReturnKeyAutomatically || self->enablesReturnKeyOnNonWhiteSpaceContent;
  }

  else
  {
    v15 = 3;
  }

LABEL_9:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(UITextInputTraits *)self publicTraitsMatchTraits:equalCopy])
  {
    recentInputIdentifier = [(UITextInputTraits *)self recentInputIdentifier];
    recentInputIdentifier2 = [equalCopy recentInputIdentifier];
    if (recentInputIdentifier != recentInputIdentifier2)
    {
      recentInputIdentifier3 = [(UITextInputTraits *)self recentInputIdentifier];
      recentInputIdentifier4 = [equalCopy recentInputIdentifier];
      if (![recentInputIdentifier3 isEqualToString:recentInputIdentifier4])
      {
        v9 = 0;
        goto LABEL_28;
      }
    }

    manageRecentInputs = [(UITextInputTraits *)self manageRecentInputs];
    if (manageRecentInputs != [equalCopy manageRecentInputs])
    {
      goto LABEL_26;
    }

    validTextRange = [(UITextInputTraits *)self validTextRange];
    v13 = v12;
    if (validTextRange != [equalCopy validTextRange] || v13 != v14)
    {
      goto LABEL_26;
    }

    pINEntrySeparatorIndexes = [(UITextInputTraits *)self PINEntrySeparatorIndexes];
    pINEntrySeparatorIndexes2 = [equalCopy PINEntrySeparatorIndexes];
    if (![pINEntrySeparatorIndexes isEqualToIndexSet:pINEntrySeparatorIndexes2])
    {
      goto LABEL_25;
    }

    if (!self->textTrimmingSet)
    {
      if (![equalCopy textTrimmingSet])
      {
LABEL_18:
        insertionPointColor = self->insertionPointColor;
        insertionPointColor = [equalCopy insertionPointColor];
        if ([(UIColor *)insertionPointColor isEqual:insertionPointColor])
        {
          insertionPointWidth = self->insertionPointWidth;
          if (insertionPointWidth == [equalCopy insertionPointWidth])
          {
            textLoupeVisibility = self->textLoupeVisibility;
            if (textLoupeVisibility == [equalCopy textLoupeVisibility])
            {
              textSelectionBehavior = self->textSelectionBehavior;
              if (textSelectionBehavior == [equalCopy textSelectionBehavior])
              {
                textSuggestionDelegate = self->textSuggestionDelegate;
                textSuggestionDelegate = [equalCopy textSuggestionDelegate];
                if (textSuggestionDelegate != textSuggestionDelegate)
                {
                  v9 = 0;
LABEL_59:

LABEL_27:
                  if (recentInputIdentifier == recentInputIdentifier2)
                  {
LABEL_29:

                    goto LABEL_30;
                  }

LABEL_28:

                  goto LABEL_29;
                }

                v77 = textSuggestionDelegate;
                isSingleLineDocument = self->isSingleLineDocument;
                if (isSingleLineDocument != [equalCopy isSingleLineDocument] || (contentsIsSingleValue = self->contentsIsSingleValue, contentsIsSingleValue != objc_msgSend(equalCopy, "contentsIsSingleValue")) || (hasDefaultContents = self->hasDefaultContents, hasDefaultContents != objc_msgSend(equalCopy, "hasDefaultContents")) || (acceptsPayloads = self->acceptsPayloads, acceptsPayloads != objc_msgSend(equalCopy, "acceptsPayloads")) || (acceptsEmoji = self->acceptsEmoji, acceptsEmoji != objc_msgSend(equalCopy, "acceptsEmoji")) || (acceptsInitialEmojiKeyboard = self->acceptsInitialEmojiKeyboard, acceptsInitialEmojiKeyboard != objc_msgSend(equalCopy, "acceptsInitialEmojiKeyboard")) || (acceptsDictationSearchResults = self->acceptsDictationSearchResults, acceptsDictationSearchResults != objc_msgSend(equalCopy, "acceptsDictationSearchResults")) || (showDictationButton = self->showDictationButton, showDictationButton != objc_msgSend(equalCopy, "showDictationButton")) || (useAutomaticEndpointing = self->useAutomaticEndpointing, useAutomaticEndpointing != objc_msgSend(equalCopy, "useAutomaticEndpointing")) || (forceEnableDictation = self->forceEnableDictation, forceEnableDictation != objc_msgSend(equalCopy, "forceEnableDictation")) || (forceDisableDictation = self->forceDisableDictation, forceDisableDictation != objc_msgSend(equalCopy, "forceDisableDictation")) || (forceSpellingDictation = self->forceSpellingDictation, forceSpellingDictation != objc_msgSend(equalCopy, "forceSpellingDictation")) || (forceDefaultDictationInfo = self->forceDefaultDictationInfo, forceDefaultDictationInfo != objc_msgSend(equalCopy, "forceDefaultDictationInfo")) || (forceDictationKeyboardType = self->forceDictationKeyboardType, forceDictationKeyboardType != objc_msgSend(equalCopy, "forceDictationKeyboardType")) || (preferOnlineDictation = self->preferOnlineDictation, preferOnlineDictation != objc_msgSend(equalCopy, "preferOnlineDictation")) || (emptyContentReturnKeyType = self->emptyContentReturnKeyType, emptyContentReturnKeyType != objc_msgSend(equalCopy, "emptyContentReturnKeyType")) || (returnKeyGoesToNextResponder = self->returnKeyGoesToNextResponder, returnKeyGoesToNextResponder != objc_msgSend(equalCopy, "returnKeyGoesToNextResponder")) || (learnsCorrections = self->learnsCorrections, learnsCorrections != objc_msgSend(equalCopy, "learnsCorrections")) || (shortcutConversionType = self->shortcutConversionType, shortcutConversionType != objc_msgSend(equalCopy, "shortcutConversionType")) || (suppressReturnKeyStyling = self->suppressReturnKeyStyling, suppressReturnKeyStyling != objc_msgSend(equalCopy, "suppressReturnKeyStyling")) || (useInterfaceLanguageForLocalization = self->useInterfaceLanguageForLocalization, useInterfaceLanguageForLocalization != objc_msgSend(equalCopy, "useInterfaceLanguageForLocalization")) || (deferBecomingResponder = self->deferBecomingResponder, deferBecomingResponder != objc_msgSend(equalCopy, "deferBecomingResponder")) || (enablesReturnKeyOnNonWhiteSpaceContent = self->enablesReturnKeyOnNonWhiteSpaceContent, enablesReturnKeyOnNonWhiteSpaceContent != objc_msgSend(equalCopy, "enablesReturnKeyOnNonWhiteSpaceContent")))
                {
                  v9 = 0;
LABEL_58:
                  textSuggestionDelegate = v77;
                  goto LABEL_59;
                }

                autocorrectionContext = self->autocorrectionContext;
                autocorrectionContext = [equalCopy autocorrectionContext];
                v74 = autocorrectionContext;
                if (autocorrectionContext != autocorrectionContext)
                {
                  v49 = self->autocorrectionContext;
                  autocorrectionContext2 = [equalCopy autocorrectionContext];
                  if (![(NSString *)v49 isEqualToString:?])
                  {
                    v9 = 0;
                    goto LABEL_85;
                  }
                }

                responseContext = self->responseContext;
                responseContext = [equalCopy responseContext];
                v71 = responseContext;
                if (responseContext != responseContext)
                {
                  v51 = self->responseContext;
                  responseContext2 = [equalCopy responseContext];
                  if (![(NSString *)v51 isEqualToString:?])
                  {
                    v9 = 0;
LABEL_83:

LABEL_84:
                    if (v74 == autocorrectionContext)
                    {
LABEL_86:

                      goto LABEL_58;
                    }

LABEL_85:

                    goto LABEL_86;
                  }
                }

                inputContextHistory = self->inputContextHistory;
                inputContextHistory = [equalCopy inputContextHistory];
                v69 = inputContextHistory;
                if (inputContextHistory != inputContextHistory)
                {
                  v53 = self->inputContextHistory;
                  inputContextHistory2 = [equalCopy inputContextHistory];
                  if (![(UIInputContextHistory *)v53 isEqual:?])
                  {
                    v9 = 0;
                    goto LABEL_80;
                  }
                }

                isCarPlayIdiom = self->isCarPlayIdiom;
                if (isCarPlayIdiom == [equalCopy isCarPlayIdiom])
                {
                  preferredInputViewHeight = self->preferredInputViewHeight;
                  [equalCopy preferredInputViewHeight];
                  if (preferredInputViewHeight == v56)
                  {
                    textScriptType = self->textScriptType;
                    if (textScriptType == [equalCopy textScriptType])
                    {
                      supplementalLexicon = self->supplementalLexicon;
                      supplementalLexicon = [equalCopy supplementalLexicon];
                      if (supplementalLexicon == supplementalLexicon)
                      {
                        supplementalLexiconAmbiguousItemIcon = self->supplementalLexiconAmbiguousItemIcon;
                        supplementalLexiconAmbiguousItemIcon = [equalCopy supplementalLexiconAmbiguousItemIcon];
                        if (supplementalLexiconAmbiguousItemIcon == supplementalLexiconAmbiguousItemIcon)
                        {
                          disableHandwritingKeyboard = self->disableHandwritingKeyboard;
                          if (disableHandwritingKeyboard == [equalCopy disableHandwritingKeyboard])
                          {
                            mathExpressionCompletionType = self->mathExpressionCompletionType;
                            if (mathExpressionCompletionType == [equalCopy mathExpressionCompletionType])
                            {
                              allowsTextAnimationsType = self->allowsTextAnimationsType;
                              if (allowsTextAnimationsType == [equalCopy allowsTextAnimationsType])
                              {
                                keyboardSuggestionOptions = self->keyboardSuggestionOptions;
                                if (keyboardSuggestionOptions == [equalCopy keyboardSuggestionOptions])
                                {
                                  allowsNumberPadPopover = self->allowsNumberPadPopover;
                                  v9 = allowsNumberPadPopover == [equalCopy allowsNumberPadPopover];

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
                if (v69 == inputContextHistory)
                {

                  v9 = v65;
LABEL_82:
                  if (v71 == responseContext)
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

    if (![equalCopy textTrimmingSet] || !CFCharacterSetIsSupersetOfSet(self->textTrimmingSet, objc_msgSend(equalCopy, "textTrimmingSet")) || !CFCharacterSetIsSupersetOfSet(objc_msgSend(equalCopy, "textTrimmingSet"), self->textTrimmingSet))
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (void)_setColorsToMatchTintColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v4 = +[UIColor systemBlueColor];
    if (v4 == colorCopy)
    {
      v6 = 0;
    }

    else
    {
      v5 = +[UIColor _alternateSystemInteractionTintColor];
      v6 = v5 != colorCopy;
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
    v10 = colorCopy;

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