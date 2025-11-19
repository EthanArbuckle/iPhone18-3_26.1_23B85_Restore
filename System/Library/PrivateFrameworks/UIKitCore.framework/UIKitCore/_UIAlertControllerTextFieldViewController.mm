@interface _UIAlertControllerTextFieldViewController
- (BOOL)resignFirstResponder;
- (_UIAlertControllerTextFieldViewController)init;
- (_UIAlertControllerTextFieldViewControllerContaining)container;
- (double)_bottomMarginForTextFields;
- (id)addTextFieldWithPlaceholder:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)textFieldAtIndex:(int64_t)a3;
- (id)textFieldContainerViews;
- (void)_returnKeyPressedInTextField:(id)a3;
- (void)_updatePreferredContentSize;
- (void)removeAllTextFields;
- (void)setHidden:(BOOL)a3;
- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)a3;
- (void)setVisualStyle:(id)a3;
- (void)updateTextFieldStyle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation _UIAlertControllerTextFieldViewController

- (_UIAlertControllerTextFieldViewController)init
{
  v3 = objc_alloc_init(UICollectionViewFlowLayout);
  v17.receiver = self;
  v17.super_class = _UIAlertControllerTextFieldViewController;
  v4 = [(UICollectionViewController *)&v17 initWithCollectionViewLayout:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_collectionViewLayout, v3);
    [(UICollectionViewFlowLayout *)v5->_collectionViewLayout setMinimumLineSpacing:0.0];
    v6 = [(UICollectionViewController *)v5 collectionView];
    [v6 setCollectionViewLayout:v5->_collectionViewLayout];

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFieldViews = v5->textFieldViews;
    v5->textFieldViews = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFields = v5->textFields;
    v5->textFields = v9;

    v11 = [(UICollectionViewController *)v5 collectionView];
    [v11 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIAlertTextFieldTableIdentifier"];

    v12 = [(UICollectionViewController *)v5 collectionView];
    [v12 setAllowsSelection:0];

    v13 = [(UICollectionViewController *)v5 collectionView];
    [v13 setBackgroundColor:0];

    v14 = [(UICollectionViewController *)v5 collectionView];
    [v14 setScrollEnabled:0];

    v15 = [(UICollectionViewController *)v5 collectionView];
    [v15 _setFirstResponderKeyboardAvoidanceEnabled:0];

    v5->_textFieldsCanBecomeFirstResponder = 1;
  }

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _UIAlertControllerTextFieldViewController;
  [(UIViewController *)&v4 viewDidLoad];
  v3 = [(UIViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = _UIAlertControllerTextFieldViewController;
  [(UICollectionViewController *)&v10 viewWillAppear:a3];
  v4 = [(UICollectionViewController *)self collectionView];
  [(UIAlertControllerVisualStyle *)self->_visualStyle textFieldContentInset];
  [v4 setContentInset:?];

  v5 = [(NSMutableArray *)self->textFields firstObject];
  if ([(_UIAlertControllerTextFieldViewController *)self textFieldsCanBecomeFirstResponder]&& ![UISystemInputViewController canUseSystemInputViewControllerForResponder:v5])
  {
    v6 = [(UIViewController *)self transitionCoordinator];

    if (v6)
    {
      v7 = [(UIViewController *)self transitionCoordinator];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60___UIAlertControllerTextFieldViewController_viewWillAppear___block_invoke;
      v8[3] = &unk_1E70F3B98;
      v9 = v5;
      [v7 animateAlongsideTransition:v8 completion:0];
    }

    else
    {
      [v5 becomeFirstResponder];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  collectionViewLayout = self->_collectionViewLayout;
  v4 = [(UIViewController *)self view];
  [v4 bounds];
  [(UICollectionViewFlowLayout *)collectionViewLayout setEstimatedItemSize:CGRectGetWidth(v6), 24.0];

  v5.receiver = self;
  v5.super_class = _UIAlertControllerTextFieldViewController;
  [(UIViewController *)&v5 viewWillLayoutSubviews];
}

- (void)setVisualStyle:(id)a3
{
  objc_storeStrong(&self->_visualStyle, a3);

  [(_UIAlertControllerTextFieldViewController *)self updateTextFieldStyle];
}

- (double)_bottomMarginForTextFields
{
  if (_UISolariumEnabled())
  {
    [(UIAlertControllerVisualStyle *)self->_visualStyle _topItemsViewBottomMargin];
    return v3 * 0.5;
  }

  else
  {
    v5 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleHeadline" addingSymbolicTraits:0 options:2];
    v6 = [off_1E70ECC18 fontWithDescriptor:v5 size:0.0];
    [v6 _scaledValueForValue:24.0];
    v7 = [(UIViewController *)self view];
    UIRoundToViewScale(v7);
    v9 = v8;

    return v9;
  }
}

- (id)addTextFieldWithPlaceholder:(id)a3
{
  textFieldViews = self->textFieldViews;
  v5 = a3;
  if ([(NSMutableArray *)textFieldViews count])
  {
    v6 = [(NSMutableArray *)self->textFieldViews lastObject];
    [v6 setContainerView:0];
  }

  v7 = [_UIAlertControllerTextFieldView alloc];
  v8 = [(_UIAlertControllerTextFieldView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = [(_UIAlertControllerTextFieldView *)v8 textField];
  [v9 setAutocorrectionType:1];
  [v9 setAutocapitalizationType:0];
  [v9 setSmartQuotesType:1];
  [v9 setSmartDashesType:1];
  [v9 setPlaceholder:v5];

  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 addTarget:self action:sel__returnKeyPressedInTextField_ forControlEvents:0x80000];
  [(NSMutableArray *)self->textFieldViews addObject:v8];
  [(NSMutableArray *)self->textFields addObject:v9];
  [(_UIAlertControllerTextFieldViewController *)self updateTextFieldStyle];
  v10 = [(UICollectionViewController *)self collectionView];
  [v10 reloadData];

  return v9;
}

- (void)_returnKeyPressedInTextField:(id)a3
{
  v12 = a3;
  v4 = [(_UIAlertControllerTextFieldViewController *)self container];
  v5 = [v4 _shouldSupportReturnKeyPresses];

  v6 = v12;
  if (v5)
  {
    v7 = [v12 textFieldView];
    v8 = [(NSMutableArray *)self->textFieldViews indexOfObject:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8 + 1;
      if (v8 + 1 <= ([(NSMutableArray *)self->textFieldViews count]- 1))
      {
        v10 = [(NSMutableArray *)self->textFieldViews objectAtIndex:v9];
        v11 = [v10 textField];
        [v11 becomeFirstResponder];
      }

      else
      {
        v10 = [(_UIAlertControllerTextFieldViewController *)self container];
        [v10 _returnKeyPressedInLastTextField];
      }
    }

    v6 = v12;
  }
}

- (void)setHidden:(BOOL)a3
{
  self->_hidden = a3;
  v4 = [(_UIAlertControllerTextFieldViewController *)self isHidden];
  if (v4)
  {
    [(UIViewController *)self setPreferredContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    [(_UIAlertControllerTextFieldViewController *)self _updatePreferredContentSize];
  }

  v5 = [(UIViewController *)self view];
  [v5 setHidden:v4];
}

- (void)_updatePreferredContentSize
{
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  if ([(NSMutableArray *)self->textFieldViews count])
  {
    [(UIAlertControllerVisualStyle *)self->_visualStyle textFieldContentInset];
    v6 = v5;
    v8 = v7;
    v9 = [(NSMutableArray *)self->textFieldViews objectAtIndex:0];
    [v9 systemLayoutSizeFittingSize:{v4, v3}];
    v11 = v10;
    if (_UISolariumEnabled())
    {
      v11 = 48.0;
    }

    v12 = v11 * [(_UIAlertControllerTextFieldViewController *)self numberOfTextFields];
    [(_UIAlertControllerTextFieldViewController *)self _bottomMarginForTextFields];
    v3 = v12 + v8 + v6 + v13;

    v4 = 0.0;
  }

  [(UIViewController *)self setPreferredContentSize:v4, v3];
}

- (id)textFieldAtIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->textFieldViews objectAtIndex:a3];
  v4 = [v3 textField];

  return v4;
}

- (id)textFieldContainerViews
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->textFieldViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 containerView];

        if (v10)
        {
          v11 = [v9 containerView];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)removeAllTextFields
{
  [(NSMutableArray *)self->textFieldViews removeAllObjects];
  [(NSMutableArray *)self->textFields removeAllObjects];
  v3 = [(UICollectionViewController *)self collectionView];
  [v3 reloadData];
}

- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)a3
{
  if (self->_textFieldsCanBecomeFirstResponder != a3)
  {
    v4 = a3;
    self->_textFieldsCanBecomeFirstResponder = a3;
    v5 = [(NSMutableArray *)self->textFields firstObject];
    v6 = v5;
    if (v4)
    {
      [v5 becomeFirstResponder];
    }

    else
    {
      [v5 resignFirstResponder];
    }
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  textFieldViews = self->textFieldViews;
  v7 = a4;
  v8 = a3;
  v9 = -[NSMutableArray objectAtIndex:](textFieldViews, "objectAtIndex:", [v7 row]);
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:@"UIAlertTextFieldTableIdentifier" forIndexPath:v7];

  [v10 setBackgroundColor:0];
  [(UIAlertControllerVisualStyle *)self->_visualStyle textFieldHorizontalMargin];
  [v10 setTextField:v9 horizontalMargin:?];

  return v10;
}

- (void)updateTextFieldStyle
{
  v3 = [(NSMutableArray *)self->textFieldViews count];
  textFieldViews = self->textFieldViews;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65___UIAlertControllerTextFieldViewController_updateTextFieldStyle__block_invoke;
  v5[3] = &unk_1E70F3F88;
  v5[4] = self;
  v5[5] = v3;
  [(NSMutableArray *)textFieldViews enumerateObjectsUsingBlock:v5];
  [(_UIAlertControllerTextFieldViewController *)self _updatePreferredContentSize];
}

- (BOOL)resignFirstResponder
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->textFields;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      if ([v8 isFirstResponder])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = [v9 resignFirstResponder];
  }

  else
  {
LABEL_9:

    v9 = 0;
LABEL_12:
    v10 = 1;
  }

  v13.receiver = self;
  v13.super_class = _UIAlertControllerTextFieldViewController;
  v11 = [(UIResponder *)&v13 resignFirstResponder];

  return v11 & v10;
}

- (_UIAlertControllerTextFieldViewControllerContaining)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end