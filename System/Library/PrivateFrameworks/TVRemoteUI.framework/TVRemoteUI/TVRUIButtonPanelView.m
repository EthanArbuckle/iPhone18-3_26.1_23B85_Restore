@interface TVRUIButtonPanelView
- (TVRUIButtonPanelView)initWithPrimaryButtonType:(int64_t)a3 secondaryLeftButtons:(id)a4 secondaryRightButtons:(id)a5 styleProvider:(id)a6 glassEnabled:(BOOL)a7;
- (_TVRUIEventDelegate)buttonEventDelegate;
- (id)_processButtons:(id)a3;
- (id)_searchButton;
- (id)initPagedPanelWithPrimaryButtonType:(int64_t)a3 secondaryLeftButtons:(id)a4 styleProvider:(id)a5;
- (void)_buttonPressed:(id)a3;
- (void)_buttonReleased:(id)a3;
- (void)_buttonTapped:(id)a3;
- (void)_configureButton:(id)a3;
- (void)_disableButton:(id)a3;
- (void)_enableButton:(id)a3;
- (void)_sendButtonPressed:(int64_t)a3;
- (void)_sendButtonReleased:(int64_t)a3;
- (void)_sendButtonTapped:(int64_t)a3;
- (void)disableButtons;
- (void)disableSearchButton;
- (void)enableButtonsForDevice:(id)a3;
- (void)enableSearchButton;
- (void)layoutSubviews;
- (void)setButtonEventDelegate:(id)a3;
@end

@implementation TVRUIButtonPanelView

- (TVRUIButtonPanelView)initWithPrimaryButtonType:(int64_t)a3 secondaryLeftButtons:(id)a4 secondaryRightButtons:(id)a5 styleProvider:(id)a6 glassEnabled:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = TVRUIButtonPanelView;
  v15 = [(TVRUIButtonPanelView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_styleProvider, a6);
    v16->_solariumGlassEnabled = a7;
    v17 = [[TVRUIButton alloc] initWithType:a3 hasTapAction:0 buttonLocation:0];
    primaryButton = v16->_primaryButton;
    v16->_primaryButton = v17;

    [(TVRUIButtonPanelView *)v16 addSubview:v16->_primaryButton];
    [(TVRUIButtonPanelView *)v16 _configureButton:v16->_primaryButton];
    v19 = [(TVRUIButtonPanelView *)v16 _processButtons:v12];
    leftButtons = v16->_leftButtons;
    v16->_leftButtons = v19;

    v21 = [(TVRUIButtonPanelView *)v16 _processButtons:v13];
    rightButtons = v16->_rightButtons;
    v16->_rightButtons = v21;
  }

  return v16;
}

- (id)initPagedPanelWithPrimaryButtonType:(int64_t)a3 secondaryLeftButtons:(id)a4 styleProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = TVRUIButtonPanelView;
  v10 = [(TVRUIButtonPanelView *)&v26 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_styleProvider, a5);
    v12 = [[TVRUIButton alloc] initWithType:a3 hasTapAction:0];
    primaryButton = v11->_primaryButton;
    v11->_primaryButton = v12;

    [(TVRUIButtonPanelView *)v11 addSubview:v11->_primaryButton];
    [(TVRUIButtonPanelView *)v11 _configureButton:v11->_primaryButton];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"TVRemoteUIPageButtonText" value:&stru_287E6AEF8 table:@"Localizable"];

    v16 = [(TVRUIStyleProvider *)v11->_styleProvider maxPagingTitleLength];
    if ([v15 length] > v16)
    {
      v17 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [TVRUIButtonPanelView initPagedPanelWithPrimaryButtonType:v15 secondaryLeftButtons:v16 styleProvider:v17];
      }

      v18 = [v15 substringWithRange:{0, 4}];

      v15 = v18;
    }

    v19 = [TVRUIPagingButton alloc];
    v20 = [(TVRUIButtonPanelView *)v11 styleProvider];
    v21 = [(TVRUIPagingButton *)v19 initWithTitle:v15 styleProvider:v20];
    pagingButton = v11->_pagingButton;
    v11->_pagingButton = v21;

    [(TVRUIButtonPanelView *)v11 addSubview:v11->_pagingButton];
    v23 = [(TVRUIButtonPanelView *)v11 _processButtons:v8];
    leftButtons = v11->_leftButtons;
    v11->_leftButtons = v23;
  }

  return v11;
}

- (id)_processButtons:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) integerValue];
        v12 = [[TVRUIButton alloc] initWithType:v11 hasTapAction:[TVRUIButton buttonLocation:"buttonTypeHasTapAction:" buttonTypeHasTapAction:v11], 0];
        [(TVRUIButtonPanelView *)self addSubview:v12];
        [(TVRUIButtonPanelView *)self _configureButton:v12];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = TVRUIButtonPanelView;
  [(TVRUIButtonPanelView *)&v51 layoutSubviews];
  v3 = [(TVRUIButtonPanelView *)self styleProvider];
  [v3 primaryButtonSize];
  v5 = v4;

  [(TVRUIButtonPanelView *)self bounds];
  v6 = CGRectGetWidth(v52) * 0.5 - v5 * 0.5;
  [(TVRUIButtonPanelView *)self bounds];
  v7 = CGRectGetHeight(v53) * 0.5 - v5 * 0.5;
  v8 = [(TVRUIButtonPanelView *)self primaryButton];
  [v8 setFrame:{v6, v7, v5, v5}];

  v9 = [(TVRUIButtonPanelView *)self styleProvider];
  [v9 secondaryButtonSize];
  v11 = v10;

  v12 = [(TVRUIButtonPanelView *)self styleProvider];
  [v12 controlPanelInsets];
  v14 = v13;

  [(TVRUIButtonPanelView *)self bounds];
  v16 = (v15 - v5) * 0.5;
  v17 = [(TVRUIButtonPanelView *)self pagingButton];

  if (v17)
  {
    [(TVRUIButtonPanelView *)self bounds];
    v18 = CGRectGetWidth(v54) - v14 - v11;
    v19 = [(TVRUIButtonPanelView *)self pagingButton];
    [v19 setFrame:{v18, v16, v11, v5}];
  }

  v20 = [(TVRUIButtonPanelView *)self rightButtons];
  v21 = [v20 count];

  if (v21 == 1)
  {
    v22 = [(TVRUIButtonPanelView *)self primaryButton];
    [v22 frame];
    v24 = v14 + v5 + v23;
    [(TVRUIButtonPanelView *)self bounds];
    v26 = (v25 - v11) * 0.5;

    v27 = 0;
  }

  else
  {
    v28 = [(TVRUIButtonPanelView *)self rightButtons];
    v29 = [v28 count];

    if (v29 != 2)
    {
      goto LABEL_8;
    }

    [(TVRUIButtonPanelView *)self bounds];
    v30 = CGRectGetWidth(v55) - v14 - v11;
    v31 = [(TVRUIButtonPanelView *)self rightButtons];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setFrame:{v30, v16, v11, v11}];

    [(TVRUIButtonPanelView *)self bounds];
    v24 = CGRectGetWidth(v56) - v14 - v11;
    [(TVRUIButtonPanelView *)self bounds];
    v26 = v33 - v16 - v11;
    v27 = 1;
  }

  v34 = [(TVRUIButtonPanelView *)self rightButtons];
  v35 = [v34 objectAtIndexedSubscript:v27];
  [v35 setFrame:{v24, v26, v11, v11}];

LABEL_8:
  v36 = [(TVRUIButtonPanelView *)self leftButtons];
  v37 = [v36 count];

  if (v37 == 1)
  {
    v38 = [(TVRUIButtonPanelView *)self primaryButton];
    [v38 frame];
    v14 = v39 - v14 - v11;
    [(TVRUIButtonPanelView *)self bounds];
    v41 = (v40 - v11) * 0.5;

    v42 = [(TVRUIButtonPanelView *)self leftButtons];
    v43 = v42;
    v44 = 0;
  }

  else
  {
    v45 = [(TVRUIButtonPanelView *)self leftButtons];
    v46 = [v45 count];

    if (v46 != 2)
    {
      return;
    }

    v47 = [(TVRUIButtonPanelView *)self leftButtons];
    v48 = [v47 objectAtIndexedSubscript:0];
    [v48 setFrame:{v14, v16, v11, v11}];

    [(TVRUIButtonPanelView *)self bounds];
    v41 = v49 - v16 - v11;
    v42 = [(TVRUIButtonPanelView *)self leftButtons];
    v43 = v42;
    v44 = 1;
  }

  v50 = [v42 objectAtIndexedSubscript:v44];
  [v50 setFrame:{v14, v41, v11, v11}];
}

- (void)setButtonEventDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonEventDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_buttonEventDelegate, obj);
    pagingButton = self->_pagingButton;
    v7 = v5;
    [(TVRUIPagingButton *)pagingButton setButtonEventDelegate:obj];
  }
}

- (void)_configureButton:(id)a3
{
  v5 = a3;
  [v5 addTarget:self action:sel__buttonPressed_ forControlEvents:1];
  [v5 addTarget:self action:sel__buttonReleased_ forControlEvents:448];
  if ([v5 hasTapAction])
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__buttonTapped_];
    [v4 setCancelsTouchesInView:0];
    [v5 addGestureRecognizer:v4];
  }
}

- (void)enableButtonsForDevice:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v6 = [(TVRUIButtonPanelView *)self primaryButton];
  v7 = [v5 arrayWithObject:v6];

  v8 = [(TVRUIButtonPanelView *)self leftButtons];
  [v7 addObjectsFromArray:v8];

  v9 = [(TVRUIButtonPanelView *)self rightButtons];
  [v7 addObjectsFromArray:v9];

  v10 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__TVRUIButtonPanelView_enableButtonsForDevice___block_invoke;
  v15[3] = &unk_279D883D8;
  v16 = v7;
  v17 = self;
  v18 = v4;
  v11 = v4;
  v12 = v7;
  [v10 animateWithDuration:v15 animations:0.24];
  v13 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Enabled panel buttons", v14, 2u);
  }
}

void __47__TVRUIButtonPanelView_enableButtonsForDevice___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [a1[5] _enableButton:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [a1[5] pagingButton];
  [v7 setEnabled:{objc_msgSend(a1[6], "supportsPaging")}];
}

- (void)_enableButton:(id)a3
{
  v3 = a3;
  [v3 setEnabled:1];
  [v3 setUserInteractionEnabled:1];
  [v3 setAlpha:1.0];
}

- (void)disableButtons
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(TVRUIButtonPanelView *)self primaryButton];
  v5 = [v3 arrayWithObject:v4];

  v6 = [(TVRUIButtonPanelView *)self leftButtons];
  [v5 addObjectsFromArray:v6];

  v7 = [(TVRUIButtonPanelView *)self rightButtons];
  [v5 addObjectsFromArray:v7];

  [(TVRUIPagingButton *)self->_pagingButton setEnabled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(TVRUIButtonPanelView *)self _disableButton:*(*(&v15 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Disabled panel buttons", v14, 2u);
  }
}

- (void)_disableButton:(id)a3
{
  v7 = a3;
  v4 = [(TVRUIButtonPanelView *)self styleProvider];
  [v4 disabledButtonAlpha];
  v6 = v5;

  [v7 setUserInteractionEnabled:0];
  [v7 setAlpha:v6];
}

- (void)disableSearchButton
{
  v3 = [(TVRUIButtonPanelView *)self _searchButton];
  [(TVRUIButtonPanelView *)self _disableButton:v3];
}

- (void)enableSearchButton
{
  v3 = [(TVRUIButtonPanelView *)self _searchButton];
  [(TVRUIButtonPanelView *)self _enableButton:v3];
}

- (id)_searchButton
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TVRUIButtonPanelView *)self rightButtons];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 buttonType] == 9998)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_buttonPressed:(id)a3
{
  v4 = a3;
  if (([v4 hasTapAction] & 1) == 0)
  {
    -[TVRUIButtonPanelView _sendButtonPressed:](self, "_sendButtonPressed:", [v4 buttonType]);
  }
}

- (void)_buttonReleased:(id)a3
{
  v4 = a3;
  if (([v4 hasTapAction] & 1) == 0)
  {
    -[TVRUIButtonPanelView _sendButtonReleased:](self, "_sendButtonReleased:", [v4 buttonType]);
  }
}

- (void)_buttonTapped:(id)a3
{
  v4 = [a3 view];
  -[TVRUIButtonPanelView _sendButtonTapped:](self, "_sendButtonTapped:", [v4 buttonType]);
}

- (void)_sendButtonPressed:(int64_t)a3
{
  v9 = [TVRUIButtonEvent createButtonEvent:1 buttonType:a3];
  v4 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_sendButtonReleased:(int64_t)a3
{
  v9 = [TVRUIButtonEvent createButtonEvent:2 buttonType:a3];
  v4 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_sendButtonTapped:(int64_t)a3
{
  v9 = [TVRUIButtonEvent createButtonEvent:0 buttonType:a3];
  v4 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIButtonPanelView *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (_TVRUIEventDelegate)buttonEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEventDelegate);

  return WeakRetained;
}

- (void)initPagedPanelWithPrimaryButtonType:(uint64_t)a1 secondaryLeftButtons:(uint64_t)a2 styleProvider:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_fault_impl(&dword_26CFEB000, log, OS_LOG_TYPE_FAULT, "Paging button title was longer than max allowable length of (%ld), title is %{public}@", &v3, 0x16u);
}

@end