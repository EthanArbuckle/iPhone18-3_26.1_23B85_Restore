@interface PKPaymentSetupTableViewController
- (NSAttributedString)footerAttributedText;
- (PKPaymentSetupDockView)dockView;
- (PKPaymentSetupTableViewController)initWithContext:(int64_t)a3;
- (PKPaymentSetupTableViewController)initWithStyle:(int64_t)a3 context:(int64_t)a4;
- (id)addFooterStyleAttributes:(id)a3;
- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4;
- (void)_keyboardWillChange:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)setFooterAttributedText:(id)a3;
- (void)setHideFooterBlurView:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableViewDidFinishReload:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentSetupTableViewController

- (PKPaymentSetupTableViewController)initWithContext:(int64_t)a3
{
  v5 = [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1];

  return [(PKPaymentSetupTableViewController *)self initWithStyle:v5 context:a3];
}

- (PKPaymentSetupTableViewController)initWithStyle:(int64_t)a3 context:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = PKPaymentSetupTableViewController;
  v6 = [(PKPaymentSetupTableViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_context = a4;
    v8 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:a3];
    tableViewController = v7->_tableViewController;
    v7->_tableViewController = v8;

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v10 = [(PKPaymentSetupTableViewController *)v7 navigationItem];
      [v10 pkui_setupScrollEdgeChromelessAppearance];
      [v10 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v11 addObserver:v7 selector:sel__keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
    [v11 addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v3 dealloc];
}

- (void)loadView
{
  [(PKPaymentSetupTableViewController *)self addChildViewController:self->_tableViewController];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  containerView = self->_containerView;
  self->_containerView = v4;

  [(PKPaymentSetupTableViewController *)self setView:self->_containerView];
  v6 = [(UITableViewController *)self->_tableViewController tableView];
  tableView = self->_tableView;
  self->_tableView = v6;

  v8 = self->_tableView;
  v9 = PKProvisioningBackgroundColor();
  [(UITableView *)v8 setBackgroundColor:v9];

  [(UITableView *)self->_tableView setAutoresizingMask:0];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v10 = *MEMORY[0x1E69B9A68];
  [(UITableView *)self->_tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9A68]];
  v14 = [(UITableView *)self->_tableView backgroundColor];
  [(UIView *)self->_containerView setBackgroundColor:v14];
  [(UIView *)self->_containerView addSubview:self->_tableView];
  [(UITableViewController *)self->_tableViewController didMoveToParentViewController:self];
  v11 = self->_containerView;
  v12 = [(PKPaymentSetupTableViewController *)self footerTextView];
  [(UIView *)v11 addSubview:v12];

  v13 = [(PKPaymentSetupTableViewController *)self view];
  [v13 setAccessibilityIdentifier:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v10 viewWillAppear:?];
  context = self->_context;
  v6 = [(PKPaymentSetupTableViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, v6);

  v7 = [(PKPaymentSetupTableViewController *)self tableView];
  if (([v7 allowsMultipleSelection] & 1) == 0)
  {
    selectedIndexPath = self->_selectedIndexPath;
    v9 = [v7 indexPathForSelectedRow];
    LODWORD(selectedIndexPath) = [(NSIndexPath *)selectedIndexPath isEqual:v9];

    if (selectedIndexPath)
    {
      [v7 deselectRowAtIndexPath:self->_selectedIndexPath animated:v3];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v5 viewDidAppear:a3];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(UITableView *)self->_tableView endEditing:1];
  v5.receiver = self;
  v5.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  v58.receiver = self;
  v58.super_class = PKPaymentSetupTableViewController;
  [(PKPaymentSetupTableViewController *)&v58 viewWillLayoutSubviews];
  v3 = [(PKPaymentSetupTableViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v53 = v12;
  [v3 layoutMargins];
  v14 = v13;
  v16 = v15;
  rect_16 = v7;
  rect_24 = v11;
  v17 = v9;
  v18 = v5;
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    v17 = v9;
    v18 = v5;
    if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      v17 = v9 - (v14 + v16);
      if (_UISolariumFeatureFlagEnabled())
      {
        v19 = v9 - PKSetupListViewConstantsViewMargin();
      }

      else
      {
        v20 = [v3 readableContentGuide];
        [v20 layoutFrame];
        v19 = fmin(v21, 536.0);
      }

      v18 = v5 + v14;
      v7 = v7 + 0.0;
      if (v19 >= v17)
      {
        v11 = rect_24;
      }

      else
      {
        PKSizeAlignedInRect();
        v18 = v22;
        v7 = v23;
        v17 = v24;
        v11 = v25;
      }
    }
  }

  rect = v5;
  [(UITableView *)self->_tableView setFrame:v18, v7, v17, v11];
  [(UITableView *)self->_tableView contentInset];
  v27 = v26;
  rect_8 = v28;
  v30 = v29;
  dockView = self->_dockView;
  if (!dockView)
  {
    v61.origin.x = v18;
    v61.origin.y = v7;
    v61.size.width = v17;
    v61.size.height = v11;
    CGRectGetMaxY(v61);
    v34 = 0.0;
    goto LABEL_26;
  }

  v52 = v26;
  [(PKPaymentSetupDockView *)dockView sizeThatFits:v9, 1.79769313e308];
  v33 = v32;
  v34 = v32;
  if (self->_keyboardVisible)
  {
    v34 = v32;
    if (!CGRectIsNull(self->_keyboardFrame))
    {
      v35 = [v3 window];
      v36 = v35;
      v34 = v33;
      if (v35)
      {
        [v35 convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [v3 convertRect:0 fromView:?];
        v38 = fmax(v33 - fmax(rect_16 + rect_24 - v37, 0.0), 0.0);
        if (v38 <= v53)
        {
          v34 = v53;
        }

        else
        {
          v34 = v38;
        }
      }
    }
  }

  if (!self->_blurringView)
  {
    v62.origin.x = rect;
    v62.origin.y = rect_16;
    v62.size.height = rect_24;
    v62.size.width = v9;
    [(PKPaymentSetupDockView *)self->_dockView setFrame:0.0, CGRectGetMaxY(v62) - v33, v9, v33];
    goto LABEL_22;
  }

  v51 = v30;
  v59.origin.x = v18;
  v59.origin.y = v7;
  v59.size.width = v17;
  v59.size.height = v11;
  v39 = CGRectGetMaxY(v59) - (v53 + v33);
  v60.origin.x = rect;
  v60.origin.y = rect_16;
  v60.size.height = rect_24;
  v60.size.width = v9;
  [(_PKVisibilityBackdropView *)self->_blurringView setFrame:rect, v39, v9, CGRectGetMaxY(v60) - v39];
  v40 = [(_UIBackdropView *)self->_blurringView contentView];
  [v40 bounds];

  PKSizeAlignedInRect();
  [(PKPaymentSetupDockView *)self->_dockView setFrame:?];
  if (self->_hideFooterBlurView)
  {
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:0.0];
LABEL_22:
    v27 = v52;
    goto LABEL_26;
  }

  tableView = self->_tableView;
  [(_PKVisibilityBackdropView *)self->_blurringView bounds];
  [(UITableView *)tableView convertRect:self->_blurringView fromView:?];
  v43 = v42;
  [(UITableView *)self->_tableView contentSize];
  v45 = v44;
  [(UITableView *)self->_tableView bounds];
  v63.size.height = fmin(v46, v45 - v63.origin.y);
  v47 = fmin(fmax(CGRectGetMaxY(v63) - v43, 0.0), 30.0) / 30.0;
  v27 = v52;
  if (self->_backdropWeight != v47)
  {
    self->_backdropWeight = v47;
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:?];
  }

  v30 = v51;
LABEL_26:
  [(UITableView *)self->_tableView setContentInset:v27, rect_8, v34, v30, *&v51];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:v27, rect_8, v34, v30];
  v48 = PKSetupListViewConstantsViewMargin();
  [(UITableView *)self->_tableView setLayoutMargins:0.0, v48, 0.0, v48];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v49 = self->_tableView;
    v50 = [(PKPaymentSetupTableViewController *)self navigationItem];
    [(UITableView *)v49 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v50];
  }
}

- (void)setHideFooterBlurView:(BOOL)a3
{
  self->_hideFooterBlurView = a3;
  v3 = [(PKPaymentSetupTableViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKPaymentSetupTableViewController__keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPaymentSetupTableViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __55__PKPaymentSetupTableViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  v4 = *(v2 + 1056);
  v5 = *(v2 + 1064);
  v6 = *(v2 + 1072);
  *(v2 + 1080) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1048);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1064) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1048), v16);
}

- (void)_keyboardWillChange:(id)a3
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__PKPaymentSetupTableViewController__keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPaymentSetupTableViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __57__PKPaymentSetupTableViewController__keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 131;
  v4 = *(v2 + 131);
  v5 = *(v2 + 132);
  v6 = *(v2 + 133);
  v7 = *(v2 + 134);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1048), v13);
}

- (void)_keyboardWillHide:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PKPaymentSetupTableViewController__keyboardWillHide___block_invoke;
  v3[3] = &unk_1E8010EB8;
  v3[4] = self;
  [(PKPaymentSetupTableViewController *)self _updateLayoutForKeyboardAction:v3];
}

BOOL __55__PKPaymentSetupTableViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1048);
  *(v1 + 1080) = 0;
  v2 = (*(a1 + 32) + 1048);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1048);
  v4 = *(*(a1 + 32) + 1056);
  v5 = *(*(a1 + 32) + 1064);
  v6 = *(*(a1 + 32) + 1072);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaymentSetupTableViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      [v5 layoutIfNeeded];
      if (v4[2](v4))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __68__PKPaymentSetupTableViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (PKPaymentSetupDockView)dockView
{
  dockView = self->_dockView;
  if (!dockView)
  {
    v4 = [PKPaymentSetupDockView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(PKPaymentSetupDockView *)v4 initWithFrame:self->_context context:*MEMORY[0x1E695F058], v6, v7, v8];
    v10 = self->_dockView;
    self->_dockView = v9;

    [(PKPaymentSetupDockView *)self->_dockView setPrimaryButton:0];
    if (_UISolariumEnabled())
    {
      v11 = [(PKPaymentSetupTableViewController *)self view];
      [v11 addSubview:self->_dockView];
      v12 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_tableView edge:4 style:0];
      [(PKPaymentSetupDockView *)self->_dockView addInteraction:v12];
      v13 = [(PKPaymentSetupTableViewController *)self view];
      [v13 addSubview:self->_dockView];
    }

    else
    {
      v14 = [[_PKVisibilityBackdropView alloc] initWithFrame:-2 privateStyle:v5, v6, v7, v8];
      blurringView = self->_blurringView;
      self->_blurringView = v14;

      [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
      [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
      backdropWeight = 0.0;
      if (!self->_hideFooterBlurView)
      {
        backdropWeight = self->_backdropWeight;
      }

      [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:backdropWeight];
      v11 = [(_UIBackdropView *)self->_blurringView contentView];
      [v11 addSubview:self->_dockView];
      v12 = [(PKPaymentSetupTableViewController *)self view];
      [v12 addSubview:self->_blurringView];
      [v12 setNeedsLayout];
    }

    dockView = self->_dockView;
  }

  return dockView;
}

- (NSAttributedString)footerAttributedText
{
  v2 = [(PKPaymentSetupDockView *)self->_dockView additionalView];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 attributedText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFooterAttributedText:(id)a3
{
  if (a3)
  {
    v13 = [a3 copy];
    v4 = [(PKPaymentSetupTableViewController *)self addFooterStyleAttributes:v13];
    v5 = objc_alloc_init(PKHyperlinkTextView);
    v6 = PKGenericOnboardingPresenter(self, 0);
    v7 = [(PKPaymentSetupTableViewController *)self context];
    v8 = [(PKPaymentSetupTableViewController *)self navigationController];
    v9 = PKOpenURLModallyHyperlinkAction(v7, v8);
    v10 = PKGenericHyperlinkAction(v6, v9);

    [(PKHyperlinkTextView *)v5 setAction:v10];
    [(PKHyperlinkTextView *)v5 setAttributedText:v4];
    v11 = [(PKPaymentSetupTableViewController *)self dockView];
    [v11 setAdditionalView:v5];
    [v11 setAdditionalViewBottomPadding:11.0];
  }

  else
  {
    dockView = self->_dockView;

    [(PKPaymentSetupDockView *)dockView setAdditionalView:?];
  }
}

- (id)addFooterStyleAttributes:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 mutableCopy];
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v5 setLineBreakMode:0];
    [v5 setAlignment:PKOBKTextAlignment()];
    v12[0] = *MEMORY[0x1E69DB648];
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
    v7 = *MEMORY[0x1E69DB688];
    v13[0] = v6;
    v13[1] = v5;
    v8 = *MEMORY[0x1E69DB650];
    v12[1] = v7;
    v12[2] = v8;
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

    [v4 addAttributes:v10 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)tableViewDidFinishReload:(id)a3
{
  if (self->_dockView)
  {
    v3 = [(PKPaymentSetupTableViewController *)self view];
    [v3 setNeedsLayout];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (self->_tableView == a3)
  {
    v10 = v6;
    v7 = [a3 allowsMultipleSelection];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [v10 copy];
      selectedIndexPath = self->_selectedIndexPath;
      self->_selectedIndexPath = v8;

      v6 = v10;
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKPaymentSetupTableViewController *)self view];
  [v3 setNeedsLayout];
}

- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4
{
  v4 = a4;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || (PKPaymentSetupContextIsBridge())
  {
    v5 = 2030;
  }

  else if ([v4 userInterfaceStyle] == 2)
  {
    v5 = 2030;
  }

  else
  {
    v5 = 2010;
  }

  return v5;
}

@end