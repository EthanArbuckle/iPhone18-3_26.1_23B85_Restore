@interface VSTwoFactorDigitView
- (BOOL)canBecomeFirstResponder;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (UITextInputDelegate)inputDelegate;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (VSTwoFactorDigitView)initWithDigitCount:(unint64_t)a3;
- (VSTwoFactorDigitViewDelegate)delegate;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setCodeText:(id)a3;
- (void)setupDigitViews;
@end

@implementation VSTwoFactorDigitView

- (VSTwoFactorDigitView)initWithDigitCount:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = VSTwoFactorDigitView;
  v4 = [(VSTwoFactorDigitView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_digitCount = a3;
    v4->_keyboardType = 4;
    v4->_returnKeyType = 11;
    objc_storeStrong(&v4->_textContentType, *MEMORY[0x277D77020]);
    [(VSTwoFactorDigitView *)v5 setupDigitViews];
    [(VSTwoFactorDigitView *)v5 addTarget:v5 action:sel_onTouchUpInside_ forControlEvents:64];
  }

  return v5;
}

- (void)setCodeText:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [(VSTwoFactorDigitView *)self digitCount];
    v7 = [v5 length];
    if (v6 >= v7)
    {
      v6 = v7;
    }

    v8 = [v5 substringToIndex:v6];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [codeText substringToIndex:index] parameter must not be nil."];
    }

    v9 = [v5 substringToIndex:v6];
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
  v24 = self;
  v11 = [(VSTwoFactorDigitView *)self digits];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = &stru_2880B8BB0;
        if ([(__CFString *)v9 length]&& v14 < v10)
        {
          v26 = [(__CFString *)v9 characterAtIndex:v14];
          v18 = [MEMORY[0x277CCACA8] stringWithCharacters:&v26 length:1];
        }

        v19 = [v17 label];
        [v19 setText:v18];

        ++v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  objc_storeStrong(&v24->_codeText, v9);
  v24->_hasText = v10 != 0;
  v20 = [(VSTwoFactorDigitView *)v24 delegate];
  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21 = [(__CFString *)v9 copy];
    [v20 twoFactorDigitView:v24 textDidChange:v21];
  }

  v22 = [(__CFString *)v9 length];
  if (v22 == [(VSTwoFactorDigitView *)v24 digitCount])
  {
    [(VSTwoFactorDigitView *)v24 resignFirstResponder];
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
  v4 = [(VSTwoFactorDigitView *)self digitCount];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
        v16 = [v15 topAnchor];
        v17 = [(VSTwoFactorDigitView *)self topAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];
        [v18 setActive:1];

        v19 = [v15 bottomAnchor];
        v20 = [(VSTwoFactorDigitView *)self bottomAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];
        [v21 setActive:1];

        v22 = [v15 leftAnchor];
        if (v14)
        {
          v23 = [v14 rightAnchor];
          [v22 constraintEqualToAnchor:v23 constant:10.0];
        }

        else
        {
          v23 = [(VSTwoFactorDigitView *)self leftAnchor];
          [v22 constraintEqualToAnchor:v23];
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

  v25 = [(VSTwoFactorDigitView *)self widthAnchor];
  v26 = [v25 constraintEqualToConstant:v5 * 50.0 + -10.0];
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

  v4 = [(VSTwoFactorDigitView *)self codeText];
  if ([v4 length])
  {
    v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
    [(VSTwoFactorDigitView *)self setCodeText:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)insertText:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSTwoFactorDigitView *)self codeText];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v8 = [v7 invertedSet];

    v9 = [(VSTwoFactorDigitView *)self codeText];
    v10 = [v9 copy];
    v11 = [v10 componentsSeparatedByCharactersInSet:v8];
    v12 = [v11 componentsJoinedByString:&stru_2880B8BB0];

    if (!v12)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[[[self codeText] copy] componentsSeparatedByCharactersInSet:removalCharacters] componentsJoinedByString:@] parameter must not be nil."];
    }

    v13 = [(VSTwoFactorDigitView *)self codeText];
    v14 = [v13 copy];
    v15 = [v14 componentsSeparatedByCharactersInSet:v8];
    v16 = [v15 componentsJoinedByString:&stru_2880B8BB0];
  }

  else
  {
    v16 = &stru_2880B8BB0;
  }

  v17 = [(__CFString *)v16 stringByAppendingString:v4];
  if ([(VSTwoFactorDigitView *)self autocapitalizationType])
  {
    v18 = [v17 uppercaseString];

    v17 = v18;
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

- (CGRect)firstRectForRange:(id)a3
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

- (CGRect)caretRectForPosition:(id)a3
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