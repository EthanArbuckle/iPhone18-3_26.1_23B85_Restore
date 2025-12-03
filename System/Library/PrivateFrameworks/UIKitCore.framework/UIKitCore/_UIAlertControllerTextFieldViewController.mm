@interface _UIAlertControllerTextFieldViewController
- (BOOL)resignFirstResponder;
- (_UIAlertControllerTextFieldViewController)init;
- (_UIAlertControllerTextFieldViewControllerContaining)container;
- (double)_bottomMarginForTextFields;
- (id)addTextFieldWithPlaceholder:(id)placeholder;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)textFieldAtIndex:(int64_t)index;
- (id)textFieldContainerViews;
- (void)_returnKeyPressedInTextField:(id)field;
- (void)_updatePreferredContentSize;
- (void)removeAllTextFields;
- (void)setHidden:(BOOL)hidden;
- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)responder;
- (void)setVisualStyle:(id)style;
- (void)updateTextFieldStyle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
    collectionView = [(UICollectionViewController *)v5 collectionView];
    [collectionView setCollectionViewLayout:v5->_collectionViewLayout];

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFieldViews = v5->textFieldViews;
    v5->textFieldViews = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    textFields = v5->textFields;
    v5->textFields = v9;

    collectionView2 = [(UICollectionViewController *)v5 collectionView];
    [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIAlertTextFieldTableIdentifier"];

    collectionView3 = [(UICollectionViewController *)v5 collectionView];
    [collectionView3 setAllowsSelection:0];

    collectionView4 = [(UICollectionViewController *)v5 collectionView];
    [collectionView4 setBackgroundColor:0];

    collectionView5 = [(UICollectionViewController *)v5 collectionView];
    [collectionView5 setScrollEnabled:0];

    collectionView6 = [(UICollectionViewController *)v5 collectionView];
    [collectionView6 _setFirstResponderKeyboardAvoidanceEnabled:0];

    v5->_textFieldsCanBecomeFirstResponder = 1;
  }

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _UIAlertControllerTextFieldViewController;
  [(UIViewController *)&v4 viewDidLoad];
  view = [(UIViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = _UIAlertControllerTextFieldViewController;
  [(UICollectionViewController *)&v10 viewWillAppear:appear];
  collectionView = [(UICollectionViewController *)self collectionView];
  [(UIAlertControllerVisualStyle *)self->_visualStyle textFieldContentInset];
  [collectionView setContentInset:?];

  firstObject = [(NSMutableArray *)self->textFields firstObject];
  if ([(_UIAlertControllerTextFieldViewController *)self textFieldsCanBecomeFirstResponder]&& ![UISystemInputViewController canUseSystemInputViewControllerForResponder:firstObject])
  {
    transitionCoordinator = [(UIViewController *)self transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(UIViewController *)self transitionCoordinator];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60___UIAlertControllerTextFieldViewController_viewWillAppear___block_invoke;
      v8[3] = &unk_1E70F3B98;
      v9 = firstObject;
      [transitionCoordinator2 animateAlongsideTransition:v8 completion:0];
    }

    else
    {
      [firstObject becomeFirstResponder];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  collectionViewLayout = self->_collectionViewLayout;
  view = [(UIViewController *)self view];
  [view bounds];
  [(UICollectionViewFlowLayout *)collectionViewLayout setEstimatedItemSize:CGRectGetWidth(v6), 24.0];

  v5.receiver = self;
  v5.super_class = _UIAlertControllerTextFieldViewController;
  [(UIViewController *)&v5 viewWillLayoutSubviews];
}

- (void)setVisualStyle:(id)style
{
  objc_storeStrong(&self->_visualStyle, style);

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
    view = [(UIViewController *)self view];
    UIRoundToViewScale(view);
    v9 = v8;

    return v9;
  }
}

- (id)addTextFieldWithPlaceholder:(id)placeholder
{
  textFieldViews = self->textFieldViews;
  placeholderCopy = placeholder;
  if ([(NSMutableArray *)textFieldViews count])
  {
    lastObject = [(NSMutableArray *)self->textFieldViews lastObject];
    [lastObject setContainerView:0];
  }

  v7 = [_UIAlertControllerTextFieldView alloc];
  v8 = [(_UIAlertControllerTextFieldView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  textField = [(_UIAlertControllerTextFieldView *)v8 textField];
  [textField setAutocorrectionType:1];
  [textField setAutocapitalizationType:0];
  [textField setSmartQuotesType:1];
  [textField setSmartDashesType:1];
  [textField setPlaceholder:placeholderCopy];

  [textField setAdjustsFontForContentSizeCategory:1];
  [textField addTarget:self action:sel__returnKeyPressedInTextField_ forControlEvents:0x80000];
  [(NSMutableArray *)self->textFieldViews addObject:v8];
  [(NSMutableArray *)self->textFields addObject:textField];
  [(_UIAlertControllerTextFieldViewController *)self updateTextFieldStyle];
  collectionView = [(UICollectionViewController *)self collectionView];
  [collectionView reloadData];

  return textField;
}

- (void)_returnKeyPressedInTextField:(id)field
{
  fieldCopy = field;
  container = [(_UIAlertControllerTextFieldViewController *)self container];
  _shouldSupportReturnKeyPresses = [container _shouldSupportReturnKeyPresses];

  v6 = fieldCopy;
  if (_shouldSupportReturnKeyPresses)
  {
    textFieldView = [fieldCopy textFieldView];
    v8 = [(NSMutableArray *)self->textFieldViews indexOfObject:textFieldView];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8 + 1;
      if (v8 + 1 <= ([(NSMutableArray *)self->textFieldViews count]- 1))
      {
        container2 = [(NSMutableArray *)self->textFieldViews objectAtIndex:v9];
        textField = [container2 textField];
        [textField becomeFirstResponder];
      }

      else
      {
        container2 = [(_UIAlertControllerTextFieldViewController *)self container];
        [container2 _returnKeyPressedInLastTextField];
      }
    }

    v6 = fieldCopy;
  }
}

- (void)setHidden:(BOOL)hidden
{
  self->_hidden = hidden;
  isHidden = [(_UIAlertControllerTextFieldViewController *)self isHidden];
  if (isHidden)
  {
    [(UIViewController *)self setPreferredContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    [(_UIAlertControllerTextFieldViewController *)self _updatePreferredContentSize];
  }

  view = [(UIViewController *)self view];
  [view setHidden:isHidden];
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

- (id)textFieldAtIndex:(int64_t)index
{
  v3 = [(NSMutableArray *)self->textFieldViews objectAtIndex:index];
  textField = [v3 textField];

  return textField;
}

- (id)textFieldContainerViews
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
        containerView = [v9 containerView];

        if (containerView)
        {
          containerView2 = [v9 containerView];
          [array addObject:containerView2];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)removeAllTextFields
{
  [(NSMutableArray *)self->textFieldViews removeAllObjects];
  [(NSMutableArray *)self->textFields removeAllObjects];
  collectionView = [(UICollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)responder
{
  if (self->_textFieldsCanBecomeFirstResponder != responder)
  {
    responderCopy = responder;
    self->_textFieldsCanBecomeFirstResponder = responder;
    firstObject = [(NSMutableArray *)self->textFields firstObject];
    v6 = firstObject;
    if (responderCopy)
    {
      [firstObject becomeFirstResponder];
    }

    else
    {
      [firstObject resignFirstResponder];
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  textFieldViews = self->textFieldViews;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSMutableArray objectAtIndex:](textFieldViews, "objectAtIndex:", [pathCopy row]);
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIAlertTextFieldTableIdentifier" forIndexPath:pathCopy];

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

    resignFirstResponder = [v9 resignFirstResponder];
  }

  else
  {
LABEL_9:

    v9 = 0;
LABEL_12:
    resignFirstResponder = 1;
  }

  v13.receiver = self;
  v13.super_class = _UIAlertControllerTextFieldViewController;
  resignFirstResponder2 = [(UIResponder *)&v13 resignFirstResponder];

  return resignFirstResponder2 & resignFirstResponder;
}

- (_UIAlertControllerTextFieldViewControllerContaining)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end