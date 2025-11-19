@interface TISmartPunctuationController
+ (id)_chineseContextualVariantMapping;
- (TISmartPunctuationController)init;
- (id)_alternatingStringForInputString:(id)a3 isLockedInput:(BOOL)a4 hasMarkedText:(BOOL)a5;
- (id)_checkInput:(id)a3 forContextualChinesePunctuationInDocumentState:(id)a4;
- (id)_checkInput:(id)a3 forContextualDashesInDocumentState:(id)a4;
- (id)_checkInput:(id)a3 forContextualEllipsesInDocumentState:(id)a4;
- (id)_checkInput:(id)a3 forContextualQuotesInDocumentState:(id)a4;
- (id)smartPunctuationOutputForInput:(id)a3 isLockedInput:(BOOL)a4 documentState:(id)a5;
- (id)smartPunctuationResultsForString:(id)a3;
- (id)smartPunctuationedStringForString:(id)a3;
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

- (id)_checkInput:(id)a3 forContextualEllipsesInDocumentState:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"."] && (objc_msgSend(v5, "contextBeforeInput"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasSuffix:", @".."), v6, v7))
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

- (id)_checkInput:(id)a3 forContextualDashesInDocumentState:(id)a4
{
  v6 = a4;
  if (![a3 isEqualToString:@"-"])
  {
    goto LABEL_18;
  }

  [(TISmartPunctuationController *)self _initializeDashCharacterSetsIfNecessary];
  v7 = [v6 contextBeforeInput];
  v8 = [v7 length];

  v9 = [v6 contextBeforeInput];
  v10 = [v9 rangeOfCharacterFromSet:self->_dashCharacterSet options:12 range:{0, v8}];
  v12 = v11;

  v13 = [v6 contextBeforeInput];
  v41 = [v13 rangeOfCharacterFromSet:self->_enDashCharacterSet options:12 range:{0, v8}];
  v15 = v14;

  v16 = [v6 contextBeforeInput];
  v42 = [v16 rangeOfCharacterFromSet:self->_emDashCharacterSet options:12 range:{0, v8}];
  v18 = v17;

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      v19 = [v6 contextBeforeInput];
      v20 = [v19 rangeOfCharacterFromSet:self->_dashCharacterSet options:12 range:{v10 - 1, 1}];
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
    v25 = [v6 contextBeforeInput];
    v26 = v10 + v12 == [v25 length];

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
  v28 = [v6 contextBeforeInput];
  v29 = v27 == [v28 length];

  if (v18)
  {
LABEL_15:
    v30 = [v6 contextBeforeInput];
    LODWORD(v18) = v42 + v18 == [v30 length];
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
    v33 = [v6 contextBeforeInput];
    v34 = [v33 substringToIndex:v10];

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

- (id)_checkInput:(id)a3 forContextualChinesePunctuationInDocumentState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"「"])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isEqualToString:@"」"];
  }

  if ([v6 isEqualToString:@"《"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 isEqualToString:@"》"];
  }

  v10 = [(TISmartPunctuationController *)self smartPunctuationOptions];
  v11 = [v10 locale];
  v12 = [v11 localeIdentifier];
  v13 = [v12 isEqualToString:@"zh-Hans"];

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
    v17 = [v7 contextBeforeInput];
    v18 = [v17 rangeOfCharacterFromSet:v16 options:4];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
    }

    else
    {
      v21 = [v17 substringWithRange:{v18, v19}];
      v22 = [objc_opt_class() _chineseContextualVariantMapping];
      v23 = [v22 objectForKeyedSubscript:v6];
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

- (id)_checkInput:(id)a3 forContextualQuotesInDocumentState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 rangeOfString:@"'"];
  v10 = v8;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 rangeOfString:@""];
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

  v16 = [(TISmartPunctuationController *)self smartPunctuationOptions];
  if (v16)
  {
    [(TISmartPunctuationController *)self _initializeQuoteCharacterSetsIfNecessary];
    v17 = [v7 contextBeforeInput];
    v18 = v17;
    v19 = v16;
    v20 = v14;
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = &stru_1EF56D550;
    }

    v22 = [v6 substringToIndex:v15];
    v23 = [(__CFString *)v21 stringByAppendingString:v22];

    v54 = v15;
    v55 = v20;
    v24 = v15 + v20;
    v16 = v19;
    v25 = v23;
    v26 = [v6 substringFromIndex:v24];
    v56 = v7;
    v27 = [v7 contextAfterInput];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_1EF56D550;
    }

    v30 = [v26 stringByAppendingString:v29];

    v31 = [v25 _lastLongCharacter];
    v53 = v30;
    v52 = [v30 _firstLongCharacter];
    v51 = [v25 length] == 0;
    v32 = [(NSCharacterSet *)self->_whitespaceAndNewlineCharacterSet characterIsMember:v31];
    v33 = [(NSCharacterSet *)self->_openerCharacterSet characterIsMember:v31];
    v34 = [v16 leftSingleQuote];
    [v25 rangeOfString:v34 options:12];
    v50 = v35;

    v36 = [v16 leftDoubleQuote];
    [v25 rangeOfString:v36 options:12];
    v38 = v37;

    v39 = [(NSCharacterSet *)self->_alphanumericCharacterSet characterIsMember:v31];
    v40 = [(NSCharacterSet *)self->_alphanumericCharacterSet characterIsMember:v52];
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
      v43 = ;
    }

    else
    {
      if (!v41 && v38 == 0)
      {
        v46 = v39 && v40;
        v47 = self->_smartPunctuationOptions;
        v45 = v55;
        v7 = v56;
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

      v43 = [(TISmartPunctuationOptions *)self->_smartPunctuationOptions leftSingleQuote];
    }

    v44 = v43;
    v45 = v55;
    v7 = v56;
LABEL_26:
    v48 = [v6 stringByReplacingCharactersInRange:v54 withString:{v45, v44, v50}];

    v13 = objc_alloc_init(TIKeyboardOutput);
    [(TIKeyboardOutput *)v13 insertText:v48];

    goto LABEL_27;
  }

  v13 = 0;
LABEL_27:

LABEL_28:

  return v13;
}

- (id)_alternatingStringForInputString:(id)a3 isLockedInput:(BOOL)a4 hasMarkedText:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = @"";
  if (([v8 containsString:@""] & 1) == 0)
  {
    v13 = [v8 containsString:@"'"];
    if (v13)
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v11 = [v8 containsString:@"“"];
      if (v11 & 1) != 0 || ([v8 containsString:@"”"])
      {
        v13 = 0;
        v10 = v11 ^ 1;
        p_leftDoubleQuotationMarkInserted = &self->_leftDoubleQuotationMarkInserted;
        goto LABEL_17;
      }

      if ([v8 containsString:@"‘"])
      {
        v10 = 0;
        v11 = 1;
      }

      else
      {
        if (![v8 containsString:@"’"])
        {
          goto LABEL_6;
        }

        v11 = 0;
        v10 = 1;
      }
    }

    if (!a5)
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
  if (v13 && !v6)
  {
    if (*p_leftDoubleQuotationMarkInserted)
    {
      v18 = v12;
    }

    else
    {
      v18 = v15;
    }

    v16 = [v8 stringByReplacingOccurrencesOfString:v9 withString:v18];
    v11 = !*p_leftDoubleQuotationMarkInserted;
    goto LABEL_21;
  }

LABEL_17:
  v16 = 0;
  if ((v11 & 1) == 0 && (v10 & 1) == 0)
  {
    v16 = 0;
    if ((v13 & v6) != 1)
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

- (id)smartPunctuationOutputForInput:(id)a3 isLockedInput:(BOOL)a4 documentState:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v8 || ![(TISmartPunctuationController *)self smartQuotesEnabled]&& ![(TISmartPunctuationController *)self smartDashesEnabled])
  {
    v11 = 0;
    goto LABEL_27;
  }

  if ([(TISmartPunctuationController *)self smartQuotesEnabled])
  {
    if ([(TISmartPunctuationController *)self autoQuoteType]!= 2 || v6)
    {
      if ([(TISmartPunctuationController *)self autoQuoteType]== 1)
      {
        v12 = [v9 markedText];
        v13 = -[TISmartPunctuationController _alternatingStringForInputString:isLockedInput:hasMarkedText:](self, "_alternatingStringForInputString:isLockedInput:hasMarkedText:", v8, v6, [v12 length] != 0);

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
      v10 = [(TISmartPunctuationController *)self _checkInput:v8 forContextualQuotesInDocumentState:v9];
    }

    if (!v10 && !v6)
    {
      v10 = [(TISmartPunctuationController *)self _checkInput:v8 forContextualChinesePunctuationInDocumentState:v9];
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
    v14 = [(TISmartPunctuationController *)self _checkInput:v8 forContextualDashesInDocumentState:v9];
    v11 = [(TISmartPunctuationController *)self _checkInput:v8 forContextualEllipsesInDocumentState:v9];
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

- (id)smartPunctuationedStringForString:(id)a3
{
  v4 = a3;
  if ([v4 length] && (-[TISmartPunctuationController smartQuotesEnabled](self, "smartQuotesEnabled") || -[TISmartPunctuationController smartDashesEnabled](self, "smartDashesEnabled")))
  {
    v25 = [v4 mutableCopy];
    v27 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-'"];
    v5 = [v4 length];
    if (v5)
    {
      v6 = v5;
      v26 = self;
      while (1)
      {
        v7 = [v4 rangeOfCharacterFromSet:v27 options:4 range:{0, v6}];
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_12;
        }

        v9 = v7;
        v10 = v8;
        v11 = [v4 substringToIndex:v7];
        v12 = [v4 substringFromIndex:v9 + v10];
        v13 = [v4 substringWithRange:{v9, v10}];
        v28 = v11;
        v14 = [TIDocumentState documentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
        v15 = [(TISmartPunctuationController *)self smartPunctuationOutputForInput:v13 isLockedInput:0 documentState:v14];
        v16 = [v15 insertionText];
        if (![v16 length])
        {
          goto LABEL_10;
        }

        [v15 insertionText];
        v18 = v17 = v4;
        v19 = [v18 isEqualToString:v13];

        v4 = v17;
        if ((v19 & 1) == 0)
        {
          break;
        }

LABEL_11:
        v6 = v9 - [v15 deletionCount];

        self = v26;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      v20 = v9 - [v15 deletionCount];
      v21 = [v15 deletionCount];
      v16 = [v15 insertionText];
      v22 = v21 + v10;
      v4 = v17;
      [v25 replaceCharactersInRange:v20 withString:{v22, v16}];
LABEL_10:

      goto LABEL_11;
    }

LABEL_12:

    v23 = v25;
  }

  else
  {
    v23 = v4;
  }

  return v23;
}

- (id)smartPunctuationResultsForString:(id)a3
{
  v4 = a3;
  if ([(TISmartPunctuationController *)self smartQuotesEnabled]|| [(TISmartPunctuationController *)self smartDashesEnabled])
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v28 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-'"];
    v5 = [v4 length];
    if (v5)
    {
      v6 = v5;
      v27 = self;
      while (1)
      {
        v7 = [v4 rangeOfCharacterFromSet:v28 options:4 range:{0, v6}];
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_11;
        }

        v9 = v7;
        v10 = v8;
        v11 = [v4 substringToIndex:v7];
        v12 = [v4 substringFromIndex:v9 + v10];
        v13 = [v4 substringWithRange:{v9, v10}];
        v29 = v11;
        v14 = [TIDocumentState documentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
        v15 = [(TISmartPunctuationController *)self smartPunctuationOutputForInput:v13 isLockedInput:0 documentState:v14];
        v16 = [v15 insertionText];
        if (![v16 length])
        {
          goto LABEL_9;
        }

        [v15 insertionText];
        v18 = v17 = v4;
        v19 = [v18 isEqualToString:v13];

        v4 = v17;
        if ((v19 & 1) == 0)
        {
          break;
        }

LABEL_10:
        v6 = v9 - [v15 deletionCount];

        self = v27;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      v26 = v9 - [v15 deletionCount];
      v20 = [v15 deletionCount];
      v21 = objc_alloc(MEMORY[0x1E696AED0]);
      v22 = [v15 insertionText];
      v23 = v21;
      v4 = v17;
      v16 = [v23 initWithRange:v26 replacementString:{v20 + v10, v22}];

      [v25 addObject:v16];
LABEL_9:

      goto LABEL_10;
    }

LABEL_11:
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  return v25;
}

- (void)_initializeDashCharacterSetsIfNecessary
{
  if (!self->_decimalDigitCharacterSet)
  {
    v3 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    decimalDigitCharacterSet = self->_decimalDigitCharacterSet;
    self->_decimalDigitCharacterSet = v3;
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
    v3 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    alphanumericCharacterSet = self->_alphanumericCharacterSet;
    self->_alphanumericCharacterSet = v3;
  }

  if (!self->_whitespaceAndNewlineCharacterSet)
  {
    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    whitespaceAndNewlineCharacterSet = self->_whitespaceAndNewlineCharacterSet;
    self->_whitespaceAndNewlineCharacterSet = v5;
  }

  if (!self->_decimalDigitCharacterSet)
  {
    v7 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    decimalDigitCharacterSet = self->_decimalDigitCharacterSet;
    self->_decimalDigitCharacterSet = v7;
  }

  if (!self->_punctuationCharacterSet)
  {
    v9 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    punctuationCharacterSet = self->_punctuationCharacterSet;
    self->_punctuationCharacterSet = v9;
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
  block[4] = a1;
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