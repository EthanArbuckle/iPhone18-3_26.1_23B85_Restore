@interface UIWebFormAccessory
+ (id)toolbarWithItems:(id)items;
- (UIWebFormAccessory)initWithInputAssistantItem:(id)item;
- (UIWebFormAccessoryDelegate)delegate;
- (void)_applyTreatmentToAutoFillLabel;
- (void)_nextTapped:(id)tapped;
- (void)_previousTapped:(id)tapped;
- (void)_refreshAutofillPresentation;
- (void)_setRenderConfig:(id)config;
- (void)_updateFrame;
- (void)autoFill:(id)fill;
- (void)clear:(id)clear;
- (void)dealloc;
- (void)done:(id)done;
- (void)hideAutoFillButton;
- (void)initForUCB:(id)b;
- (void)layoutSubviews;
- (void)setClearVisible:(BOOL)visible;
- (void)setNextPreviousItemsVisible:(BOOL)visible;
- (void)showAutoFillButton;
- (void)showAutoFillButtonWithTitle:(id)title;
@end

@implementation UIWebFormAccessory

+ (id)toolbarWithItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(UIToolbar);
  [(UIToolbar *)v4 setBarStyle:0];
  [(UIToolbar *)v4 setTranslucent:1];
  [(UIView *)v4 setAutoresizingMask:18];
  [(UIToolbar *)v4 setItems:itemsCopy];

  return v4;
}

- (void)initForUCB:(id)b
{
  v37[1] = *MEMORY[0x1E69E9840];
  bCopy = b;
  v4 = [UIButton buttonWithType:1];
  [v4 addTarget:self action:sel_autoFill_ forControlEvents:64];
  [(UIView *)self bounds];
  v6 = v5;
  [v4 setFrame:{0.0, 0.0, 0.0}];
  v7 = +[UIColor labelColor];
  [v4 setTintColor:v7];

  titleLabel = [v4 titleLabel];
  [titleLabel setFrame:{0.0, 0.0, 0.0, v6}];
  [titleLabel setNumberOfLines:2];
  v8 = [[UIBarButtonItem alloc] initWithCustomView:v4];
  autofill = self->_autofill;
  self->_autofill = v8;

  v10 = [UIBarButtonItem alloc];
  v11 = [UIImage kitImageNamed:@"UIButtonBarArrowUp"];
  v12 = [(UIBarButtonItem *)v10 initWithImage:v11 style:0 target:self action:sel__previousTapped_];
  previousItem = self->_previousItem;
  self->_previousItem = v12;

  v14 = +[UIColor blackColor];
  [(UIBarButtonItem *)self->_previousItem setTintColor:v14];

  [(UIBarButtonItem *)self->_previousItem setEnabled:0];
  v15 = [UIBarButtonItem alloc];
  v16 = [UIImage kitImageNamed:@"UIButtonBarArrowDown"];
  v17 = [(UIBarButtonItem *)v15 initWithImage:v16 style:0 target:self action:sel__nextTapped_];
  nextItem = self->_nextItem;
  self->_nextItem = v17;

  v19 = +[UIColor blackColor];
  [(UIBarButtonItem *)self->_nextItem setTintColor:v19];

  [(UIBarButtonItem *)self->_nextItem setEnabled:0];
  v20 = [UIBarButtonItemGroup alloc];
  v37[0] = self->_autofill;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v22 = [(UIBarButtonItemGroup *)v20 initWithBarButtonItems:v21 representativeItem:0];
  buttonGroupAutoFill = self->_buttonGroupAutoFill;
  self->_buttonGroupAutoFill = v22;

  [(UIBarButtonItemGroup *)self->_buttonGroupAutoFill setHidden:1];
  v24 = [UIBarButtonItemGroup alloc];
  v25 = self->_nextItem;
  v36[0] = self->_previousItem;
  v36[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v27 = [(UIBarButtonItemGroup *)v24 initWithBarButtonItems:v26 representativeItem:0];
  buttonGroupNavigation = self->_buttonGroupNavigation;
  self->_buttonGroupNavigation = v27;

  v29 = bCopy;
  leadingBarButtonGroups = [v29 leadingBarButtonGroups];
  v31 = [leadingBarButtonGroups mutableCopy];

  [v31 addObject:self->_buttonGroupAutoFill];
  [v29 setLeadingBarButtonGroups:v31];
  trailingBarButtonGroups = [v29 trailingBarButtonGroups];
  v33 = [trailingBarButtonGroups mutableCopy];

  [v33 addObject:self->_buttonGroupNavigation];
  [v29 setTrailingBarButtonGroups:v33];
}

- (UIWebFormAccessory)initWithInputAssistantItem:(id)item
{
  itemCopy = item;
  v5 = [(UIView *)self init];
  if (v5)
  {
    if (UIWebCurrentUserInterfaceIdiomIsSmallScreen())
    {
      [(UIInputView *)v5 setContentRatio:1.0];
      array = [MEMORY[0x1E695DF70] array];
      v7 = _UISolariumEnabled();
      v8 = [UIBarButtonItem alloc];
      v9 = v8;
      if (v7)
      {
        v10 = [UIImage systemImageNamed:@"chevron.up"];
        v11 = [(UIBarButtonItem *)v9 initWithImage:v10 style:0 target:v5 action:sel__previousTapped_];
        previousItem = v5->_previousItem;
        v5->_previousItem = v11;
      }

      else
      {
        v14 = [(UIBarButtonItem *)v8 initWithBarButtonSystemItem:103 target:v5 action:sel__previousTapped_];
        v10 = v5->_previousItem;
        v5->_previousItem = v14;
      }

      [(UIBarButtonItem *)v5->_previousItem setEnabled:0];
      [array addObject:v5->_previousItem];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
        nextPreviousSpacer = v5->_nextPreviousSpacer;
        v5->_nextPreviousSpacer = v15;

        [(UIBarButtonItem *)v5->_nextPreviousSpacer setWidth:6.0];
        [array addObject:v5->_nextPreviousSpacer];
      }

      v17 = _UISolariumEnabled();
      v18 = [UIBarButtonItem alloc];
      v19 = v18;
      if (v17)
      {
        v20 = [UIImage systemImageNamed:@"chevron.down"];
        v21 = [(UIBarButtonItem *)v19 initWithImage:v20 style:0 target:v5 action:sel__nextTapped_];
        nextItem = v5->_nextItem;
        v5->_nextItem = v21;
      }

      else
      {
        v23 = [(UIBarButtonItem *)v18 initWithBarButtonSystemItem:104 target:v5 action:sel__nextTapped_];
        v20 = v5->_nextItem;
        v5->_nextItem = v23;
      }

      [(UIBarButtonItem *)v5->_nextItem setEnabled:0];
      [array addObject:v5->_nextItem];
      v24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      flexibleSpaceItem = v5->_flexibleSpaceItem;
      v5->_flexibleSpaceItem = v24;

      v26 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
      autofillSpacer = v5->_autofillSpacer;
      v5->_autofillSpacer = v26;

      [(UIBarButtonItem *)v5->_autofillSpacer setWidth:6.0];
      if (_UISolariumEnabled())
      {
        [(UIBarButtonItem *)v5->_flexibleSpaceItem setHidesSharedBackground:0];
        [(UIBarButtonItem *)v5->_autofillSpacer setHidesSharedBackground:0];
      }

      v28 = _UISolariumEnabled();
      v29 = [UIBarButtonItem alloc];
      v30 = v29;
      if (v28)
      {
        v31 = [UIImage systemImageNamed:@"checkmark"];
        v32 = [(UIBarButtonItem *)v30 initWithImage:v31 style:0 target:v5 action:sel_done_];
        doneButton = v5->_doneButton;
        v5->_doneButton = v32;
      }

      else
      {
        v34 = [(UIBarButtonItem *)v29 initWithBarButtonSystemItem:0 target:v5 action:sel_done_];
        v31 = v5->_doneButton;
        v5->_doneButton = v34;
      }

      [array addObject:v5->_flexibleSpaceItem];
      [array addObject:v5->_doneButton];
      v35 = [UIWebFormAccessory toolbarWithItems:array];
      leftToolbar = v5->_leftToolbar;
      v5->_leftToolbar = v35;

      leftContentView = [(UIInputView *)v5 leftContentView];
      [leftContentView addSubview:v5->_leftToolbar];

      v38 = [UIWebFormAccessory toolbarWithItems:MEMORY[0x1E695E0F0]];
      rightToolbar = v5->_rightToolbar;
      v5->_rightToolbar = v38;

      rightContentView = [(UIInputView *)v5 rightContentView];
      [rightContentView addSubview:v5->_rightToolbar];

      [(UIWebFormAccessory *)v5 _updateFrame];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__orientationDidChange_ name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];

      v42 = v5;
    }

    else
    {
      v5->_usesUCB = 1;
      [(UIWebFormAccessory *)v5 initForUCB:itemCopy];
      v13 = v5;
    }
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIWebFormAccessory;
  [(UIView *)&v4 dealloc];
}

- (void)_setRenderConfig:(id)config
{
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = [off_1E70ECC18 defaultFontForTextStyle:@"UICTFontTextStyleEmphasizedSubhead"];
  v6 = *off_1E70EC918;
  v12 = [v4 initWithObjectsAndKeys:{v5, *off_1E70EC918, 0}];

  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = otherButtonFont();
  v9 = [v7 initWithObjectsAndKeys:{v8, v6, 0}];

  v10 = 0;
  if (![(UIView *)self _lightStyleRenderConfig])
  {
    v10 = +[UIColor whiteColor];
    v11 = *off_1E70EC920;
    [v12 setObject:v10 forKey:*off_1E70EC920];
    [v9 setObject:v10 forKey:v11];
  }

  [(UIView *)self setTintColor:v10];
  [(UIBarButtonItem *)self->_doneButton setTitleTextAttributes:v12 forState:0];
  [(UIBarButtonItem *)self->_clearButton setTitleTextAttributes:v9 forState:0];
}

- (void)_updateFrame
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UIToolbar *)self->_leftToolbar sizeThatFits:v7, v9];
  v11 = v10;
  if (_UISolariumEnabled())
  {
    v12 = v11 + 10.0;
  }

  else
  {
    v12 = v11;
  }

  [(UIInputView *)self setFrame:v4, v6, v8, v12];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIWebFormAccessory;
  [(UIView *)&v5 layoutSubviews];
  if (!self->_usesUCB || ![(UIBarButtonItemGroup *)self->_buttonGroupAutoFill isHidden])
  {
    if (self->_autofill)
    {
      [(UIWebFormAccessory *)self _refreshAutofillPresentation];
      [(UIWebFormAccessory *)self _applyTreatmentToAutoFillLabel];
      _autoFillButton = [(UIWebFormAccessory *)self _autoFillButton];
      [_autoFillButton frame];
      [(UIBarButtonItem *)self->_autofill setWidth:v4];
    }
  }
}

- (void)done:(id)done
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained accessoryDone];
}

- (void)_previousTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained accessoryTab:0];
}

- (void)_nextTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained accessoryTab:1];
}

- (void)autoFill:(id)fill
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained accessoryAutoFill];
}

- (void)clear:(id)clear
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  [WeakRetained accessoryClear];
}

- (void)_refreshAutofillPresentation
{
  if (self->_autofill)
  {
    leftContentView = [(UIInputView *)self leftContentView];
    [leftContentView frame];
    MaxX = CGRectGetMaxX(v13);
    rightContentView = [(UIInputView *)self rightContentView];
    [rightContentView frame];
    MinX = CGRectGetMinX(v14);

    items = [(UIToolbar *)self->_leftToolbar items];
    v11 = [items mutableCopy];

    items2 = [(UIToolbar *)self->_rightToolbar items];
    v9 = [items2 mutableCopy];

    [v11 removeObject:self->_autofillSpacer];
    [v11 removeObject:self->_autofill];
    [v9 removeObject:self->_flexibleSpaceItem];
    [v9 removeObject:self->_autofill];
    if (MaxX == MinX)
    {
      v10 = [v11 indexOfObject:self->_nextItem];
      [v11 insertObject:self->_autofillSpacer atIndex:v10 + 1];
      [v11 insertObject:self->_autofill atIndex:v10 + 2];
    }

    else
    {
      [v9 insertObject:self->_flexibleSpaceItem atIndex:0];
      [v9 addObject:self->_autofill];
    }

    [(UIToolbar *)self->_leftToolbar setItems:v11];
    [(UIToolbar *)self->_rightToolbar setItems:v9];
  }
}

- (void)_applyTreatmentToAutoFillLabel
{
  _autoFillButton = [(UIWebFormAccessory *)self _autoFillButton];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__92;
  v29 = __Block_byref_object_dispose__92;
  v30 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __52__UIWebFormAccessory__applyTreatmentToAutoFillLabel__block_invoke;
  v22 = &unk_1E70FCDA0;
  v24 = &v25;
  v4 = _autoFillButton;
  v23 = v4;
  [UIView performWithoutAnimation:&v19];
  [v26[5] frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = otherButtonFont();
  [v26[5] setFont:v11];

  traitCollection = [(UIView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v14 = 180.0;
  }

  else
  {
    v14 = 200.0;
  }

  [v26[5] sizeThatFits:{1.79769313e308, v10}];
  if (v15 > v14)
  {
    v16 = [off_1E70ECC20 defaultFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote"];
    v17 = [off_1E70ECC18 fontWithDescriptor:v16 size:0.0];

    [v26[5] setFont:v17];
  }

  [v26[5] sizeThatFits:{v14, 1.79769313e308}];
  [v26[5] setFrame:{v6, v8, v18, v10}];
  [v4 frame];
  [v4 setFrame:?];

  _Block_object_dispose(&v25, 8);
}

void __52__UIWebFormAccessory__applyTreatmentToAutoFillLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleLabel];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)hideAutoFillButton
{
  if (self->_autofill)
  {
    items = [(UIToolbar *)self->_leftToolbar items];
    v5 = [items mutableCopy];

    [v5 removeObject:self->_autofill];
    [(UIToolbar *)self->_leftToolbar setItems:v5];
    if (self->_usesUCB)
    {
      [(UIBarButtonItemGroup *)self->_buttonGroupAutoFill setHidden:1];
    }

    else
    {
      autofill = self->_autofill;
      self->_autofill = 0;
    }
  }
}

- (void)showAutoFillButtonWithTitle:(id)title
{
  titleCopy = title;
  customView = [(UIBarButtonItem *)self->_autofill customView];
  if (!customView)
  {
    customView = [UIButton buttonWithType:1];
    [customView addTarget:self action:sel_autoFill_ forControlEvents:64];
    [(UIView *)self bounds];
    v6 = v5;
    [customView setFrame:{0.0, 0.0, 0.0}];
    titleLabel = [customView titleLabel];
    [titleLabel setFrame:{0.0, 0.0, 0.0, v6}];
    [titleLabel setNumberOfLines:2];
    v8 = [[UIBarButtonItem alloc] initWithCustomView:customView];
    autofill = self->_autofill;
    self->_autofill = v8;
  }

  v10 = [customView titleForState:0];
  v11 = [titleCopy isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    [customView setTitle:titleCopy forState:0];
  }

  if (self->_usesUCB)
  {
    [(UIBarButtonItemGroup *)self->_buttonGroupAutoFill setHidden:0];
  }

  [(UIView *)self setNeedsLayout];
}

- (void)showAutoFillButton
{
  if (self->_usesUCB || !self->_autofill)
  {
    [(UIWebFormAccessory *)self showAutoFillButtonWithTitle:&stru_1EFB14550];
  }
}

- (void)setClearVisible:(BOOL)visible
{
  if ((((self->_clearButton == 0) ^ visible) & 1) == 0)
  {
    items = [(UIToolbar *)self->_leftToolbar items];
    v10 = [items mutableCopy];

    if (self->_clearButton)
    {
      v5 = [v10 indexOfObject:?];
      [(UIWebFormAccessory *)self set_clearButton:0];
      [v10 removeObjectAtIndex:v5];
    }

    else
    {
      v6 = [v10 indexOfObject:self->_doneButton];
      v7 = _UINSLocalizedStringWithDefaultValue(@"Clear", @"Clear");
      v8 = [[UIBarButtonItem alloc] initWithTitle:v7 style:0 target:self action:sel_clear_];
      clearButton = self->_clearButton;
      self->_clearButton = v8;

      [v10 insertObject:self->_clearButton atIndex:v6];
    }

    [(UIToolbar *)self->_leftToolbar setItems:v10];
  }
}

- (void)setNextPreviousItemsVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (self->_usesUCB)
  {
    buttonGroupNavigation = self->_buttonGroupNavigation;
    v6 = !visible;

    [(UIBarButtonItemGroup *)buttonGroupNavigation setHidden:v6];
    return;
  }

  items = [(UIToolbar *)self->_leftToolbar items];
  v7 = [items containsObject:self->_previousItem];
  v8 = [items containsObject:self->_nextPreviousSpacer];
  v9 = [items containsObject:self->_nextItem];
  v10 = v9;
  if (!visibleCopy || (v7 ? (v11 = v8 == 0) : (v11 = 1), v11 || (v9 & 1) == 0))
  {
    if ((visibleCopy | v7 | v8 | v9))
    {
      v12 = [items mutableCopy];
      v13 = v12;
      if (visibleCopy)
      {
        if (v10)
        {
          if (v8)
          {
            goto LABEL_15;
          }
        }

        else
        {
          [v12 insertObject:self->_nextItem atIndex:0];
          if (v8)
          {
LABEL_15:
            if (v7)
            {
              goto LABEL_27;
            }

            goto LABEL_23;
          }
        }

        [v13 insertObject:self->_nextPreviousSpacer atIndex:0];
        if (v7)
        {
LABEL_27:
          [(UIToolbar *)self->_leftToolbar setItems:v13];
          [(UIView *)self setNeedsLayout];

          goto LABEL_28;
        }

LABEL_23:
        [v13 insertObject:self->_previousItem atIndex:0];
        goto LABEL_27;
      }

      if (v7)
      {
        [v12 removeObject:self->_previousItem];
        if (!v8)
        {
LABEL_19:
          if (!v10)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else if (!v8)
      {
        goto LABEL_19;
      }

      [v13 removeObject:self->_nextPreviousSpacer];
      if (!v10)
      {
        goto LABEL_27;
      }

LABEL_26:
      [v13 removeObject:self->_nextItem];
      goto LABEL_27;
    }
  }

LABEL_28:
}

- (UIWebFormAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end