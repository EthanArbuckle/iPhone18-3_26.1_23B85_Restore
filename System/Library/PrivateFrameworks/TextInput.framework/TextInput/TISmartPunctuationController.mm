@interface TISmartPunctuationController
+ (id)_chineseContextualVariantMapping;
- (TISmartPunctuationController)init;
- (id)_alternatingStringForInputString:(id)string isLockedInput:(BOOL)input hasMarkedText:(BOOL)text;
- (id)_checkInput:(id)input forContextualChinesePunctuationInDocumentState:(id)state;
- (id)_checkInput:(id)input forContextualDashesInDocumentState:(id)state;
- (id)_checkInput:(id)input forContextualEllipsesInDocumentState:(id)state;
- (id)_checkInput:(id)input forContextualQuotesInDocumentState:(id)state;
- (id)smartPunctuationOutputForInput:(id)input isLockedInput:(BOOL)lockedInput documentState:(id)state;
- (id)smartPunctuationResultsForString:(id)string;
- (id)smartPunctuationedStringForString:(id)string;
- (void)_initializeDashCharacterSetsIfNecessary;
- (void)_initializeQuoteCharacterSetsIfNecessary;
@end

@implementation TISmartPunctuationController

- (TISmartPunctuationController)init
{
  v3.receiver = self;
  v3.super_class = TISmartPunctuationController;
  result = [(TISmartPunctuationController *)&v3 init];
  if (result)
  {
    *&result->_smartQuotesEnabled = 257;
    result->_autoQuoteType = 2;
  }

  return result;
}

- (id)_checkInput:(id)input forContextualEllipsesInDocumentState:(id)state
{
  stateCopy = state;
  if ([input isEqualToString:@"."] && (objc_msgSend(stateCopy, "contextBeforeInput"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasSuffix:", @".."), v6, v7))
  {
    v8 = objc_alloc_init(TIKeyboardOutput);
    [(TIKeyboardOutput *)v8 deleteBackward:2];
    [(TIKeyboardOutput *)v8 insertText:@"…"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_checkInput:(id)input forContextualDashesInDocumentState:(id)state
{
  stateCopy = state;
  if (![input isEqualToString:@"-"])
  {
    goto LABEL_18;
  }

  [(TISmartPunctuationController *)self _initializeDashCharacterSetsIfNecessary];
  contextBeforeInput = [stateCopy contextBeforeInput];
  v8 = [contextBeforeInput length];

  contextBeforeInput2 = [stateCopy contextBeforeInput];
  v10 = [contextBeforeInput2 rangeOfCharacterFromSet:self->_dashCharacterSet options:12 range:{0, v8}];
  v12 = v11;

  contextBeforeInput3 = [stateCopy contextBeforeInput];
  v41 = [contextBeforeInput3 rangeOfCharacterFromSet:self->_enDashCharacterSet options:12 range:{0, v8}];
  v15 = v14;

  contextBeforeInput4 = [stateCopy contextBeforeInput];
  v42 = [contextBeforeInput4 rangeOfCharacterFromSet:self->_emDashCharacterSet options:12 range:{0, v8}];
  v18 = v17;

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      contextBeforeInput5 = [stateCopy contextBeforeInput];
      v20 = [contextBeforeInput5 rangeOfCharacterFromSet:self->_dashCharacterSet options:12 range:{v10 - 1, 1}];
      v22 = v21;

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      v12 += v23;
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 1;
      }

      else
      {
        v10 = v20;
        v24 = v20 == 0;
      }
    }

    while (!v24);
  }

  if (v12)
  {
    contextBeforeInput6 = [stateCopy contextBeforeInput];
    v26 = v10 + v12 == [contextBeforeInput6 length];

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_27:
    v29 = 0;
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = 0;
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_14:
  v27 = v41 + v15;
  contextBeforeInput7 = [stateCopy contextBeforeInput];
  v29 = v27 == [contextBeforeInput7 length];

  if (v18)
  {
LABEL_15:
    contextBeforeInput8 = [stateCopy contextBeforeInput];
    LODWORD(v18) = v42 + v18 == [contextBeforeInput8 length];
  }

LABEL_16:
  if (!v26 && !v29 && !v18)
  {
LABEL_18:
    v31 = 0;
    goto LABEL_35;
  }

  v32 = !v26;
  if (v12 != 1)
  {
    v32 = 1;
  }

  if (v32)
  {
    if (v26 && v12 > 1)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    if (v26 && v12 > 1 || v29)
    {
      v36 = 8212;
      goto LABEL_34;
    }

    v40 = v18 ^ 1;
    if (v12 != 1)
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_18;
    }

    v36 = 8212;
  }

  else
  {
    contextBeforeInput9 = [stateCopy contextBeforeInput];
    v34 = [contextBeforeInput9 substringToIndex:v10];

    v35 = -[NSCharacterSet characterIsMember:](self->_decimalDigitCharacterSet, "characterIsMember:", [v34 _lastLongCharacter]);
    if (v35)
    {
      v36 = 8211;
    }

    else
    {
      v36 = 8212;
    }
  }

  v37 = 1;
LABEL_34:
  v31 = objc_alloc_init(TIKeyboardOutput);
  [(TIKeyboardOutput *)v31 deleteBackward:v37];
  v38 = [MEMORY[0x1E696AEC0] _stringWithUnichar:v36];
  [(TIKeyboardOutput *)v31 insertText:v38];

LABEL_35:

  return v31;
}

- (id)_checkInput:(id)input forContextualChinesePunctuationInDocumentState:(id)state
{
  inputCopy = input;
  stateCopy = state;
  if ([inputCopy isEqualToString:@"「"])
  {
    v8 = 1;
  }

  else
  {
    v8 = [inputCopy isEqualToString:@"」"];
  }

  if ([inputCopy isEqualToString:@"《"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [inputCopy isEqualToString:@"》"];
  }

  smartPunctuationOptions = [(TISmartPunctuationController *)self smartPunctuationOptions];
  locale = [smartPunctuationOptions locale];
  localeIdentifier = [locale localeIdentifier];
  v13 = [localeIdentifier isEqualToString:@"zh-Hans"];

  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 == 1)
  {
    [(TISmartPunctuationController *)self _initializeQuoteCharacterSetsIfNecessary];
    v15 = 80;
    if (v8)
    {
      v15 = 72;
    }

    v16 = *(&self->super.isa + v15);
    contextBeforeInput = [stateCopy contextBeforeInput];
    v18 = [contextBeforeInput rangeOfCharacterFromSet:v16 options:4];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
    }

    else
    {
      v21 = [contextBeforeInput substringWithRange:{v18, v19}];
      _chineseContextualVariantMapping = [objc_opt_class() _chineseContextualVariantMapping];
      v23 = [_chineseContextualVariantMapping objectForKeyedSubscript:inputCopy];
      v24 = [v23 objectForKeyedSubscript:v21];

      if (v24)
      {
        v20 = objc_alloc_init(TIKeyboardOutput);
        [(TIKeyboardOutput *)v20 insertText:v24];
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_checkInput:(id)input forContextualQuotesInDocumentState:(id)state
{
  inputCopy = input;
  stateCopy = state;
  v8 = [inputCopy rangeOfString:@"'"];
  v10 = v8;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [inputCopy rangeOfString:@""];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      goto LABEL_28;
    }

    v15 = v11;
    v14 = v12;
  }

  else
  {
    v14 = v9;
    v15 = v8;
  }

  smartPunctuationOptions = [(TISmartPunctuationController *)self smartPunctuationOptions];
  if (smartPunctuationOptions)
  {
    [(TISmartPunctuationController *)self _initializeQuoteCharacterSetsIfNecessary];
    contextBeforeInput = [stateCopy contextBeforeInput];
    v18 = contextBeforeInput;
    v19 = smartPunctuationOptions;
    v20 = v14;
    if (contextBeforeInput)
    {
      v21 = contextBeforeInput;
    }

    else
    {
      v21 = &stru_1EF56D550;
    }

    v22 = [inputCopy substringToIndex:v15];
    v23 = [(__CFString *)v21 stringByAppendingString:v22];

    v54 = v15;
    v55 = v20;
    v24 = v15 + v20;
    smartPunctuationOptions = v19;
    v25 = v23;
    v26 = [inputCopy substringFromIndex:v24];
    v56 = stateCopy;
    contextAfterInput = [stateCopy contextAfterInput];
    v28 = contextAfterInput;
    if (contextAfterInput)
    {
      v29 = contextAfterInput;
    }

    else
    {
      v29 = &stru_1EF56D550;
    }

    v30 = [v26 stringByAppendingString:v29];

    _lastLongCharacter = [v25 _lastLongCharacter];
    v53 = v30;
    _firstLongCharacter = [v30 _firstLongCharacter];
    v51 = [v25 length] == 0;
    v32 = [(NSCharacterSet *)self->_whitespaceAndNewlineCharacterSet characterIsMember:_lastLongCharacter];
    v33 = [(NSCharacterSet *)self->_openerCharacterSet characterIsMember:_lastLongCharacter];
    leftSingleQuote = [smartPunctuationOptions leftSingleQuote];
    [v25 rangeOfString:leftSingleQuote options:12];
    v50 = v35;

    leftDoubleQuote = [smartPunctuationOptions leftDoubleQuote];
    [v25 rangeOfString:leftDoubleQuote options:12];
    v38 = v37;

    v39 = [(NSCharacterSet *)self->_alphanumericCharacterSet characterIsMember:_lastLongCharacter];
    v40 = [(NSCharacterSet *)self->_alphanumericCharacterSet characterIsMember:_firstLongCharacter];
    v41 = v51 || v32 || v33;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      smartPunctuationOptions = self->_smartPunctuationOptions;
      if (v41 || v50 != 0)
      {
        [(TISmartPunctuationOptions *)smartPunctuationOptions leftDoubleQuote];
      }

      else
      {
        [(TISmartPunctuationOptions *)smartPunctuationOptions rightDoubleQuote];
      }
      leftSingleQuote2 = ;
    }

    else
    {
      if (!v41 && v38 == 0)
      {
        v46 = v39 && v40;
        v47 = self->_smartPunctuationOptions;
        v45 = v55;
        stateCopy = v56;
        if (v46 == 1)
        {
          [(TISmartPunctuationOptions *)v47 apostrophe];
        }

        else
        {
          [(TISmartPunctuationOptions *)v47 rightSingleQuote];
        }
        v44 = ;
        goto LABEL_26;
      }

      leftSingleQuote2 = [(TISmartPunctuationOptions *)self->_smartPunctuationOptions leftSingleQuote];
    }

    v44 = leftSingleQuote2;
    v45 = v55;
    stateCopy = v56;
LABEL_26:
    v48 = [inputCopy stringByReplacingCharactersInRange:v54 withString:{v45, v44, v50}];

    v13 = objc_alloc_init(TIKeyboardOutput);
    [(TIKeyboardOutput *)v13 insertText:v48];

    goto LABEL_27;
  }

  v13 = 0;
LABEL_27:

LABEL_28:

  return v13;
}

- (id)_alternatingStringForInputString:(id)string isLockedInput:(BOOL)input hasMarkedText:(BOOL)text
{
  inputCopy = input;
  stringCopy = string;
  v9 = @"";
  if (([stringCopy containsString:@""] & 1) == 0)
  {
    v13 = [stringCopy containsString:@"'"];
    if (v13)
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v11 = [stringCopy containsString:@"“"];
      if (v11 & 1) != 0 || ([stringCopy containsString:@"”"])
      {
        v13 = 0;
        v10 = v11 ^ 1;
        p_leftDoubleQuotationMarkInserted = &self->_leftDoubleQuotationMarkInserted;
        goto LABEL_17;
      }

      if ([stringCopy containsString:@"‘"])
      {
        v10 = 0;
        v11 = 1;
      }

      else
      {
        if (![stringCopy containsString:@"’"])
        {
          goto LABEL_6;
        }

        v11 = 0;
        v10 = 1;
      }
    }

    if (!text)
    {
      v9 = @"'";
      v12 = @"’";
      v14 = 8;
      v15 = @"‘";
      goto LABEL_11;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0;
  v12 = @"”";
  v13 = 1;
  v14 = 9;
  v15 = @"“";
LABEL_11:
  p_leftDoubleQuotationMarkInserted = self + v14;
  if (v13 && !inputCopy)
  {
    if (*p_leftDoubleQuotationMarkInserted)
    {
      v18 = v12;
    }

    else
    {
      v18 = v15;
    }

    v16 = [stringCopy stringByReplacingOccurrencesOfString:v9 withString:v18];
    v11 = !*p_leftDoubleQuotationMarkInserted;
    goto LABEL_21;
  }

LABEL_17:
  v16 = 0;
  if ((v11 & 1) == 0 && (v10 & 1) == 0)
  {
    v16 = 0;
    if ((v13 & inputCopy) != 1)
    {
      goto LABEL_22;
    }

    v11 = 0;
  }

LABEL_21:
  *p_leftDoubleQuotationMarkInserted = v11 & 1;
LABEL_22:

  return v16;
}

- (id)smartPunctuationOutputForInput:(id)input isLockedInput:(BOOL)lockedInput documentState:(id)state
{
  lockedInputCopy = lockedInput;
  inputCopy = input;
  stateCopy = state;
  if (!inputCopy || ![(TISmartPunctuationController *)self smartQuotesEnabled]&& ![(TISmartPunctuationController *)self smartDashesEnabled])
  {
    v11 = 0;
    goto LABEL_27;
  }

  if ([(TISmartPunctuationController *)self smartQuotesEnabled])
  {
    if ([(TISmartPunctuationController *)self autoQuoteType]!= 2 || lockedInputCopy)
    {
      if ([(TISmartPunctuationController *)self autoQuoteType]== 1)
      {
        markedText = [stateCopy markedText];
        v13 = -[TISmartPunctuationController _alternatingStringForInputString:isLockedInput:hasMarkedText:](self, "_alternatingStringForInputString:isLockedInput:hasMarkedText:", inputCopy, lockedInputCopy, [markedText length] != 0);

        if (v13)
        {
          v10 = objc_alloc_init(TIKeyboardOutput);
          [(TIKeyboardOutput *)v10 insertText:v13];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = [(TISmartPunctuationController *)self _checkInput:inputCopy forContextualQuotesInDocumentState:stateCopy];
    }

    if (!v10 && !lockedInputCopy)
    {
      v10 = [(TISmartPunctuationController *)self _checkInput:inputCopy forContextualChinesePunctuationInDocumentState:stateCopy];
    }

    if (![(TISmartPunctuationController *)self smartDashesEnabled])
    {
      v11 = 0;
      v14 = 0;
      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    v14 = [(TISmartPunctuationController *)self _checkInput:inputCopy forContextualDashesInDocumentState:stateCopy];
    v11 = [(TISmartPunctuationController *)self _checkInput:inputCopy forContextualEllipsesInDocumentState:stateCopy];
    if (!v10)
    {
      if (!v14)
      {
        goto LABEL_27;
      }

      v15 = v14;
      goto LABEL_26;
    }

LABEL_25:
    v15 = v10;

    v11 = v14;
LABEL_26:

    v11 = v15;
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 0;
  if ([(TISmartPunctuationController *)self smartDashesEnabled])
  {
    goto LABEL_21;
  }

LABEL_27:

  return v11;
}

- (id)smartPunctuationedStringForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && (-[TISmartPunctuationController smartQuotesEnabled](self, "smartQuotesEnabled") || -[TISmartPunctuationController smartDashesEnabled](self, "smartDashesEnabled")))
  {
    v25 = [stringCopy mutableCopy];
    v27 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-'"];
    v5 = [stringCopy length];
    if (v5)
    {
      v6 = v5;
      selfCopy = self;
      while (1)
      {
        v7 = [stringCopy rangeOfCharacterFromSet:v27 options:4 range:{0, v6}];
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_12;
        }

        v9 = v7;
        v10 = v8;
        v11 = [stringCopy substringToIndex:v7];
        v12 = [stringCopy substringFromIndex:v9 + v10];
        v13 = [stringCopy substringWithRange:{v9, v10}];
        v28 = v11;
        v14 = [TIDocumentState documentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
        v15 = [(TISmartPunctuationController *)self smartPunctuationOutputForInput:v13 isLockedInput:0 documentState:v14];
        insertionText = [v15 insertionText];
        if (![insertionText length])
        {
          goto LABEL_10;
        }

        [v15 insertionText];
        v18 = v17 = stringCopy;
        v19 = [v18 isEqualToString:v13];

        stringCopy = v17;
        if ((v19 & 1) == 0)
        {
          break;
        }

LABEL_11:
        v6 = v9 - [v15 deletionCount];

        self = selfCopy;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      v20 = v9 - [v15 deletionCount];
      deletionCount = [v15 deletionCount];
      insertionText = [v15 insertionText];
      v22 = deletionCount + v10;
      stringCopy = v17;
      [v25 replaceCharactersInRange:v20 withString:{v22, insertionText}];
LABEL_10:

      goto LABEL_11;
    }

LABEL_12:

    v23 = v25;
  }

  else
  {
    v23 = stringCopy;
  }

  return v23;
}

- (id)smartPunctuationResultsForString:(id)string
{
  stringCopy = string;
  if ([(TISmartPunctuationController *)self smartQuotesEnabled]|| [(TISmartPunctuationController *)self smartDashesEnabled])
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-'"];
    v5 = [stringCopy length];
    if (v5)
    {
      v6 = v5;
      selfCopy = self;
      while (1)
      {
        v7 = [stringCopy rangeOfCharacterFromSet:v28 options:4 range:{0, v6}];
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_11;
        }

        v9 = v7;
        v10 = v8;
        v11 = [stringCopy substringToIndex:v7];
        v12 = [stringCopy substringFromIndex:v9 + v10];
        v13 = [stringCopy substringWithRange:{v9, v10}];
        v29 = v11;
        v14 = [TIDocumentState documentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
        v15 = [(TISmartPunctuationController *)self smartPunctuationOutputForInput:v13 isLockedInput:0 documentState:v14];
        insertionText = [v15 insertionText];
        if (![insertionText length])
        {
          goto LABEL_9;
        }

        [v15 insertionText];
        v18 = v17 = stringCopy;
        v19 = [v18 isEqualToString:v13];

        stringCopy = v17;
        if ((v19 & 1) == 0)
        {
          break;
        }

LABEL_10:
        v6 = v9 - [v15 deletionCount];

        self = selfCopy;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      v26 = v9 - [v15 deletionCount];
      deletionCount = [v15 deletionCount];
      v21 = objc_alloc(MEMORY[0x1E696AED0]);
      insertionText2 = [v15 insertionText];
      v23 = v21;
      stringCopy = v17;
      insertionText = [v23 initWithRange:v26 replacementString:{deletionCount + v10, insertionText2}];

      [array addObject:insertionText];
LABEL_9:

      goto LABEL_10;
    }

LABEL_11:
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (void)_initializeDashCharacterSetsIfNecessary
{
  if (!self->_decimalDigitCharacterSet)
  {
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    decimalDigitCharacterSet = self->_decimalDigitCharacterSet;
    self->_decimalDigitCharacterSet = decimalDigitCharacterSet;
  }

  if (!self->_dashCharacterSet)
  {
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-"];
    dashCharacterSet = self->_dashCharacterSet;
    self->_dashCharacterSet = v5;
  }

  if (!self->_enDashCharacterSet)
  {
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"–"];
    enDashCharacterSet = self->_enDashCharacterSet;
    self->_enDashCharacterSet = v7;
  }

  if (!self->_emDashCharacterSet)
  {
    self->_emDashCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"—"];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_initializeQuoteCharacterSetsIfNecessary
{
  if (!self->_alphanumericCharacterSet)
  {
    alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    alphanumericCharacterSet = self->_alphanumericCharacterSet;
    self->_alphanumericCharacterSet = alphanumericCharacterSet;
  }

  if (!self->_whitespaceAndNewlineCharacterSet)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    whitespaceAndNewlineCharacterSet = self->_whitespaceAndNewlineCharacterSet;
    self->_whitespaceAndNewlineCharacterSet = whitespaceAndNewlineCharacterSet;
  }

  if (!self->_decimalDigitCharacterSet)
  {
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    decimalDigitCharacterSet = self->_decimalDigitCharacterSet;
    self->_decimalDigitCharacterSet = decimalDigitCharacterSet;
  }

  if (!self->_punctuationCharacterSet)
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    punctuationCharacterSet = self->_punctuationCharacterSet;
    self->_punctuationCharacterSet = punctuationCharacterSet;
  }

  if (!self->_openerCharacterSet)
  {
    v11 = MEMORY[0x1E696AB08];
    v12 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"([{</@-=%C%C"), 8211, 8212;
    v13 = [v11 characterSetWithCharactersInString:v12];
    openerCharacterSet = self->_openerCharacterSet;
    self->_openerCharacterSet = v13;
  }

  if (!self->_germanApostrophePrecedingSet)
  {
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"sxzSXZ"];
    germanApostrophePrecedingSet = self->_germanApostrophePrecedingSet;
    self->_germanApostrophePrecedingSet = v15;
  }

  if (!self->_dutchApostropheFollowingSet)
  {
    v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"nstNST"];
    dutchApostropheFollowingSet = self->_dutchApostropheFollowingSet;
    self->_dutchApostropheFollowingSet = v17;
  }

  if (!self->_cornerBracketCharacterSet)
  {
    v19 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"「」『』"];
    cornerBracketCharacterSet = self->_cornerBracketCharacterSet;
    self->_cornerBracketCharacterSet = v19;
  }

  if (!self->_bookTitleMarkCharacterSet)
  {
    self->_bookTitleMarkCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"《》〈〉"];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (id)_chineseContextualVariantMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TISmartPunctuationController__chineseContextualVariantMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_chineseContextualVariantMapping___onceToken != -1)
  {
    dispatch_once(&_chineseContextualVariantMapping___onceToken, block);
  }

  v2 = _chineseContextualVariantMapping___chineseContextualVariantMapping;

  return v2;
}

void __64__TISmartPunctuationController__chineseContextualVariantMapping__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v1 = [v4 pathForResource:@"ChineseContextualVariantMapping" ofType:@"plist"];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v1];
    v3 = _chineseContextualVariantMapping___chineseContextualVariantMapping;
    _chineseContextualVariantMapping___chineseContextualVariantMapping = v2;
  }
}

@end