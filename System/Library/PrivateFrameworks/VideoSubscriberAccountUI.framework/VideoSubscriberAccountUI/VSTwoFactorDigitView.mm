@interface VSTwoFactorDigitView
- (BOOL)canBecomeFirstResponder;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (UITextInputDelegate)inputDelegate;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (VSTwoFactorDigitView)initWithDigitCount:(unint64_t)count;
- (VSTwoFactorDigitViewDelegate)delegate;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)setCodeText:(id)text;
- (void)setupDigitViews;
@end

@implementation VSTwoFactorDigitView

- (VSTwoFactorDigitView)initWithDigitCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = VSTwoFactorDigitView;
  v4 = [(VSTwoFactorDigitView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_digitCount = count;
    v4->_keyboardType = 4;
    v4->_returnKeyType = 11;
    objc_storeStrong(&v4->_textContentType, *MEMORY[0x277D77020]);
    [(VSTwoFactorDigitView *)v5 setupDigitViews];
    [(VSTwoFactorDigitView *)v5 addTarget:v5 action:sel_onTouchUpInside_ forControlEvents:64];
  }

  return v5;
}

- (void)setCodeText:(id)text
{
  v32 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v25 = textCopy;
  if (textCopy)
  {
    v5 = textCopy;
    digitCount = [(VSTwoFactorDigitView *)self digitCount];
    v7 = [v5 length];
    if (digitCount >= v7)
    {
      digitCount = v7;
    }

    v8 = [v5 substringToIndex:digitCount];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [codeText substringToIndex:index] parameter must not be nil."];
    }

    v9 = [v5 substringToIndex:digitCount];
  }

  else
  {
    v9 = &stru_2880B8BB0;
  }

  v10 = [(__CFString *)v9 length];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  digits = [(VSTwoFactorDigitView *)self digits];
  v12 = [digits countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(digits);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = &stru_2880B8BB0;
        if ([(__CFString *)v9 length]&& v14 < v10)
        {
          v26 = [(__CFString *)v9 characterAtIndex:v14];
          v18 = [MEMORY[0x277CCACA8] stringWithCharacters:&v26 length:1];
        }

        label = [v17 label];
        [label setText:v18];

        ++v14;
      }

      v13 = [digits countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  objc_storeStrong(&selfCopy->_codeText, v9);
  selfCopy->_hasText = v10 != 0;
  delegate = [(VSTwoFactorDigitView *)selfCopy delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21 = [(__CFString *)v9 copy];
    [delegate twoFactorDigitView:selfCopy textDidChange:v21];
  }

  v22 = [(__CFString *)v9 length];
  if (v22 == [(VSTwoFactorDigitView *)selfCopy digitCount])
  {
    [(VSTwoFactorDigitView *)selfCopy resignFirstResponder];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Will become first responder.", v4, 2u);
  }

  return 1;
}

- (void)setupDigitViews
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  digitCount = [(VSTwoFactorDigitView *)self digitCount];
  v5 = digitCount;
  if (digitCount)
  {
    v6 = digitCount;
    do
    {
      v7 = objc_alloc_init(VSDigitView);
      [(VSDigitView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addObject:v7];
      [(VSTwoFactorDigitView *)self addSubview:v7];

      --v6;
    }

    while (v6);
  }

  [(VSTwoFactorDigitView *)self setDigits:v3];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v28 = v5;
    v11 = 0;
    v12 = *v30;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v29 + 1) + 8 * v13);
        topAnchor = [v15 topAnchor];
        topAnchor2 = [(VSTwoFactorDigitView *)self topAnchor];
        v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v18 setActive:1];

        bottomAnchor = [v15 bottomAnchor];
        bottomAnchor2 = [(VSTwoFactorDigitView *)self bottomAnchor];
        v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v21 setActive:1];

        leftAnchor = [v15 leftAnchor];
        if (v14)
        {
          rightAnchor = [v14 rightAnchor];
          [leftAnchor constraintEqualToAnchor:rightAnchor constant:10.0];
        }

        else
        {
          rightAnchor = [(VSTwoFactorDigitView *)self leftAnchor];
          [leftAnchor constraintEqualToAnchor:rightAnchor];
        }
        v24 = ;
        [v24 setActive:1];

        v11 = v15;
        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);

    v5 = v28;
  }

  widthAnchor = [(VSTwoFactorDigitView *)self widthAnchor];
  v26 = [widthAnchor constraintEqualToConstant:v5 * 50.0 + -10.0];
  [v26 setActive:1];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)deleteBackward
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VSTwoFactorDigitView deleteBackward]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v7, 0xCu);
  }

  codeText = [(VSTwoFactorDigitView *)self codeText];
  if ([codeText length])
  {
    v5 = [codeText substringToIndex:{objc_msgSend(codeText, "length") - 1}];
    [(VSTwoFactorDigitView *)self setCodeText:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)insertText:(id)text
{
  v23 = *MEMORY[0x277D85DE8];
  textCopy = text;
  codeText = [(VSTwoFactorDigitView *)self codeText];
  v6 = [codeText length];

  if (v6)
  {
    alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    invertedSet = [alphanumericCharacterSet invertedSet];

    codeText2 = [(VSTwoFactorDigitView *)self codeText];
    v10 = [codeText2 copy];
    v11 = [v10 componentsSeparatedByCharactersInSet:invertedSet];
    v12 = [v11 componentsJoinedByString:&stru_2880B8BB0];

    if (!v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[[[self codeText] copy] componentsSeparatedByCharactersInSet:removalCharacters] componentsJoinedByString:@] parameter must not be nil."];
    }

    codeText3 = [(VSTwoFactorDigitView *)self codeText];
    v14 = [codeText3 copy];
    v15 = [v14 componentsSeparatedByCharactersInSet:invertedSet];
    v16 = [v15 componentsJoinedByString:&stru_2880B8BB0];
  }

  else
  {
    v16 = &stru_2880B8BB0;
  }

  v17 = [(__CFString *)v16 stringByAppendingString:textCopy];
  if ([(VSTwoFactorDigitView *)self autocapitalizationType])
  {
    uppercaseString = [v17 uppercaseString];

    v17 = uppercaseString;
  }

  v19 = VSDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v17;
    _os_log_impl(&dword_270DD4000, v19, OS_LOG_TYPE_DEFAULT, "Will set updated text to: %@", &v21, 0xCu);
  }

  [(VSTwoFactorDigitView *)self setCodeText:v17];
  v20 = *MEMORY[0x277D85DE8];
}

- (UITextPosition)beginningOfDocument
{
  v2 = objc_alloc_init(MEMORY[0x277D75C20]);

  return v2;
}

- (UITextPosition)endOfDocument
{
  v2 = objc_alloc_init(MEMORY[0x277D75C20]);

  return v2;
}

- (CGRect)firstRectForRange:(id)range
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (VSTwoFactorDigitViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end