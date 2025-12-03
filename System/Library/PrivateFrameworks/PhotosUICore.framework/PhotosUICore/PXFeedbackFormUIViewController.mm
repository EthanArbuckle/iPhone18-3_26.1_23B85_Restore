@interface PXFeedbackFormUIViewController
- (BOOL)_isSelectedRow:(id)row inSection:(int64_t)section;
- (PXFeedbackFormUIViewController)initWithDelegate:(id)delegate positiveKeys:(id)keys negativeKeys:(id)negativeKeys wantsCustomFeedbackSection:(BOOL)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_feedbackKeyForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_feedbackFormSectionForSectionIndex:(int64_t)index;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_markCell:(id)cell asSelected:(BOOL)selected;
- (void)_setSelectionStateForKey:(id)key inSection:(int64_t)section to:(BOOL)to;
- (void)finishWithSuccess:(BOOL)success;
- (void)sendFeedback:(id)feedback;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXFeedbackFormUIViewController

- (int64_t)_feedbackFormSectionForSectionIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_sections objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)_markCell:(id)cell asSelected:(BOOL)selected
{
  selectedCopy = selected;
  cellCopy = cell;
  v6 = cellCopy;
  if (selectedCopy)
  {
    [cellCopy setAccessoryType:3];
    [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
  }

  else
  {
    [cellCopy setAccessoryType:0];
    [MEMORY[0x1E69DC888] labelColor];
  }
  v8 = ;
  textLabel = [v6 textLabel];

  [textLabel setTextColor:v8];
}

- (id)_feedbackKeyForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[PXFeedbackFormUIViewController _feedbackFormSectionForSectionIndex:](self, "_feedbackFormSectionForSectionIndex:", [pathCopy section]);
  v6 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackKeys;
  if (!v5)
  {
    v6 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackKeys;
  }

  v7 = *(&self->super.super.super.isa + *v6);
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (void)_setSelectionStateForKey:(id)key inSection:(int64_t)section to:(BOOL)to
{
  toCopy = to;
  keyCopy = key;
  v9 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:section];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:toCopy];
  v12 = v10;
  v11 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackValues;
  if (!v9)
  {
    v11 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackValues;
  }

  [*(&self->super.super.super.isa + *v11) setObject:v10 forKeyedSubscript:keyCopy];
}

- (BOOL)_isSelectedRow:(id)row inSection:(int64_t)section
{
  rowCopy = row;
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:section];
  v8 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackValues;
  if (!v7)
  {
    v8 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackValues;
  }

  v9 = [*(&self->super.super.super.isa + *v8) objectForKeyedSubscript:rowCopy];

  bOOLValue = [v9 BOOLValue];
  return bOOLValue;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = pathCopy;
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v13 = [view cellForRowAtIndexPath:pathCopy];
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackKeyForIndexPath:pathCopy];
  v8 = -[PXFeedbackFormUIViewController _isSelectedRow:inSection:](self, "_isSelectedRow:inSection:", v7, [pathCopy section]);
  section = [pathCopy section];

  if (v8)
  {
    [(PXFeedbackFormUIViewController *)self _setSelectionStateForKey:v7 inSection:section to:0];
    [v13 setSelected:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v11 = 0;
  }

  else
  {
    [(PXFeedbackFormUIViewController *)self _setSelectionStateForKey:v7 inSection:section to:1];
    [v13 setSelected:1];
    labelColor = [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
    v11 = 3;
  }

  textLabel = [v13 textLabel];
  [textLabel setTextColor:labelColor];

  [v13 setAccessoryType:v11];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  if (-[PXFeedbackFormUIViewController _feedbackFormSectionForSectionIndex:](self, "_feedbackFormSectionForSectionIndex:", [path section]) == 2)
  {
    v7 = 500.0;
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"SwitchCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"SwitchCell"];
      textLabel = [v8 textLabel];
      [textLabel setLineBreakMode:0];

      textLabel2 = [v8 textLabel];
      [textLabel2 setNumberOfLines:0];

      [v8 setSelectionStyle:0];
    }

    contentView = [v8 contentView];
    [contentView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v13 = v12;

    v7 = v13 + 10.0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v31[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (-[PXFeedbackFormUIViewController _feedbackFormSectionForSectionIndex:](self, "_feedbackFormSectionForSectionIndex:", [pathCopy section]) == 2)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"OpenFeedbackCell"];
    if (v8)
    {
      goto LABEL_10;
    }

    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"OpenFeedbackCell"];
    [v8 frame];
    v10 = v9;
    [v8 frame];
    v12 = v11;
    [v8 frame];
    [v8 setFrame:{v10, v12}];
    if (!self->_customFeedbackTextView)
    {
      v13 = objc_alloc(MEMORY[0x1E69DD168]);
      [v8 frame];
      v14 = [v13 initWithFrame:?];
      customFeedbackTextView = self->_customFeedbackTextView;
      self->_customFeedbackTextView = v14;

      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UITextView *)self->_customFeedbackTextView setTextColor:labelColor];

      [(UITextView *)self->_customFeedbackTextView setKeyboardType:0];
      [(UITextView *)self->_customFeedbackTextView setReturnKeyType:0];
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UITextView *)self->_customFeedbackTextView setBackgroundColor:systemBackgroundColor];

      [(UITextView *)self->_customFeedbackTextView setDelegate:self];
      v18 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
      [(UITextView *)self->_customFeedbackTextView setFont:v18];

      [(UITextView *)self->_customFeedbackTextView setUserInteractionEnabled:1];
      v19 = objc_alloc(MEMORY[0x1E69DD180]);
      v20 = [v19 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v20 sizeToFit];
      [v20 setBarStyle:0];
      v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      v31[0] = v21;
      v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneButtonWasPressedOnCustomFeedbackView];
      v31[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      [v20 setItems:v23];

      [(UITextView *)self->_customFeedbackTextView setInputAccessoryView:v20];
    }

    contentView = [v8 contentView];
    [contentView addSubview:self->_customFeedbackTextView];
  }

  else
  {
    contentView = [(PXFeedbackFormUIViewController *)self _feedbackKeyForIndexPath:pathCopy];
    v25 = PXLocalizedStringFromTable(contentView, @"PXFeedbackCollection");
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"SwitchCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"SwitchCell"];
      textLabel = [v8 textLabel];
      [textLabel setText:v25];

      [v8 setSelected:{-[PXFeedbackFormUIViewController _isSelectedRow:inSection:](self, "_isSelectedRow:inSection:", contentView, objc_msgSend(pathCopy, "section"))}];
    }

    -[PXFeedbackFormUIViewController _markCell:asSelected:](self, "_markCell:asSelected:", v8, -[PXFeedbackFormUIViewController _isSelectedRow:inSection:](self, "_isSelectedRow:inSection:", contentView, [pathCopy section]));
    textLabel2 = [v8 textLabel];
    [textLabel2 setText:v25];
  }

LABEL_10:
  textLabel3 = [v8 textLabel];
  [textLabel3 setNumberOfLines:0];

  textLabel4 = [v8 textLabel];
  [textLabel4 setLineBreakMode:0];

  [v8 setSelectionStyle:0];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:section];
  if (v7 > 2)
  {
    v8 = &stru_1F1741150;
  }

  else
  {
    v8 = off_1E7733F28[v7];
  }

  if ([(__CFString *)v8 isEqualToString:&stru_1F1741150])
  {
    objc_exception_throw([objc_alloc(MEMORY[0x1E695DF30]) initWithName:@"PXFeedbackFormSectionValueNotFound" reason:@"Unsupported PXFeedbackFormSection Value" userInfo:0]);
  }

  v9 = PXLocalizedStringFromTable(v8, @"PXFeedbackCollection");

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:section];
  if (!v7)
  {
    v8 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackKeys;
    goto LABEL_7;
  }

  if (v7 != 2)
  {
    if (v7 != 1)
    {
      goto LABEL_9;
    }

    v8 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackKeys;
LABEL_7:
    v9 = [*(&self->super.super.super.isa + *v8) count];
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_9:
    objc_exception_throw([objc_alloc(MEMORY[0x1E695DF30]) initWithName:@"PXFeedbackFormSectionValueNotFound" reason:@"Unsupported PXFeedbackFormSection Value" userInfo:0]);
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (void)finishWithSuccess:(BOOL)success
{
  successCopy = success;
  delegate = [(PXFeedbackFormUIViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PXFeedbackFormUIViewController *)self delegate];
    [delegate2 userDidFinish:successCopy];
  }

  else
  {

    [(PXFeedbackFormUIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)sendFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if (self->_wantsCustomFeedbackSection)
  {
    text = [(UITextView *)self->_customFeedbackTextView text];
  }

  else
  {
    text = &stru_1F1741150;
  }

  delegate = [(PXFeedbackFormUIViewController *)self delegate];
  [delegate userSentPositiveFeedback:self->_positiveFeedbackValues negativeFeedback:self->_negativeFeedbackValues customFeedback:text];

  delegate2 = [(PXFeedbackFormUIViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_8;
  }

  delegate3 = [(PXFeedbackFormUIViewController *)self delegate];
  shouldContinuePresentingFormAfterFeedback = [delegate3 shouldContinuePresentingFormAfterFeedback];

  if ((shouldContinuePresentingFormAfterFeedback & 1) == 0)
  {
LABEL_8:
    [(PXFeedbackFormUIViewController *)self finishWithSuccess:1];
  }
}

- (void)viewDidLoad
{
  v32[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PXFeedbackFormUIViewController;
  [(PXFeedbackFormUIViewController *)&v30 viewDidLoad];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  view = [(PXFeedbackFormUIViewController *)self view];
  [view setBackgroundColor:whiteColor];

  tableViewController = [(PXFeedbackFormUIViewController *)self tableViewController];
  view2 = [tableViewController view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(PXFeedbackFormUIViewController *)self view];
  [view3 addSubview:view2];

  view4 = [(PXFeedbackFormUIViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];

  v10 = MEMORY[0x1E696ACD8];
  v29 = safeAreaLayoutGuide;
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [view2 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v13;
  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v10 activateConstraints:v17];

  v28 = _NSDictionaryOfVariableBindings(&cfstr_Feedbacktablev.isa, view2, 0);
  view5 = [(PXFeedbackFormUIViewController *)self view];
  v19 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[feedbackTableView]-0-|" options:0 metrics:0 views:v28];
  [view5 addConstraints:v19];

  v20 = PXLocalizedStringFromTable(@"FeedbackFormPanel.sendButton.title", @"PXFeedbackCollection");
  v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v20 style:0 target:self action:sel_sendFeedback_];
  v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v23 = PXLocalizedStringFromTable(@"FeedbackCollectionPanel.cancelButton.title", @"PXFeedbackCollection");
  v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v23 style:0 target:self action:sel_cancelFeedback_];
  v31 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  navigationItem = [(PXFeedbackFormUIViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:v25];

  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v22, v21, 0}];
  [(PXFeedbackFormUIViewController *)self setToolbarItems:v27];
}

- (PXFeedbackFormUIViewController)initWithDelegate:(id)delegate positiveKeys:(id)keys negativeKeys:(id)negativeKeys wantsCustomFeedbackSection:(BOOL)section
{
  v65 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  keysCopy = keys;
  negativeKeysCopy = negativeKeys;
  v62.receiver = self;
  v62.super_class = PXFeedbackFormUIViewController;
  v13 = [(PXFeedbackFormUIViewController *)&v62 init];
  v14 = v13;
  if (v13)
  {
    v47 = negativeKeysCopy;
    v49 = keysCopy;
    v51 = delegateCopy;
    v13->_userLikedIt = 0;
    v13->_wantsCustomFeedbackSection = section;
    objc_storeStrong(&v13->_positiveFeedbackKeys, keys);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    positiveFeedbackValues = v14->_positiveFeedbackValues;
    v14->_positiveFeedbackValues = dictionary;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v17 = v14->_positiveFeedbackKeys;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v59;
      do
      {
        v21 = 0;
        do
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v58 + 1) + 8 * v21);
          v23 = [MEMORY[0x1E696AD98] numberWithBool:{0, v47, v49}];
          [(NSMutableDictionary *)v14->_positiveFeedbackValues setObject:v23 forKeyedSubscript:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v19);
    }

    objc_storeStrong(&v14->_negativeFeedbackKeys, negativeKeys);
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    negativeFeedbackValues = v14->_negativeFeedbackValues;
    v14->_negativeFeedbackValues = dictionary2;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = v14->_negativeFeedbackKeys;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v55;
      do
      {
        v30 = 0;
        do
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v54 + 1) + 8 * v30);
          v32 = [MEMORY[0x1E696AD98] numberWithBool:{0, v47, v49}];
          [(NSMutableDictionary *)v14->_negativeFeedbackValues setObject:v32 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v28);
    }

    v33 = objc_opt_new();
    [(PXFeedbackFormUIViewController *)v14 setTableViewController:v33];

    tableViewController = [(PXFeedbackFormUIViewController *)v14 tableViewController];
    view = [tableViewController view];
    [view setDataSource:v14];

    tableViewController2 = [(PXFeedbackFormUIViewController *)v14 tableViewController];
    view2 = [tableViewController2 view];
    [view2 setDelegate:v14];

    delegateCopy = v51;
    [(PXFeedbackFormUIViewController *)v14 setDelegate:v51];
    v14->_wantsPositiveFeedbackSection = 1;
    delegate = [(PXFeedbackFormUIViewController *)v14 delegate];
    LOBYTE(view2) = objc_opt_respondsToSelector();

    if (view2)
    {
      delegate2 = [(PXFeedbackFormUIViewController *)v14 delegate];
      v14->_wantsPositiveFeedbackSection = [delegate2 wantsPositiveFeedbackSection];
    }

    v14->_wantsNegativeFeedbackSection = 1;
    v40 = [(PXFeedbackFormUIViewController *)v14 delegate:v47];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      delegate3 = [(PXFeedbackFormUIViewController *)v14 delegate];
      v14->_wantsNegativeFeedbackSection = [delegate3 wantsNegativeFeedbackSection];
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __104__PXFeedbackFormUIViewController_initWithDelegate_positiveKeys_negativeKeys_wantsCustomFeedbackSection___block_invoke;
    v52[3] = &unk_1E7733F08;
    v43 = v14;
    v53 = v43;
    v44 = __104__PXFeedbackFormUIViewController_initWithDelegate_positiveKeys_negativeKeys_wantsCustomFeedbackSection___block_invoke(v52);
    sections = v43->_sections;
    v43->_sections = v44;

    negativeKeysCopy = v48;
    keysCopy = v50;
  }

  return v14;
}

id __104__PXFeedbackFormUIViewController_initWithDelegate_positiveKeys_negativeKeys_wantsCustomFeedbackSection___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4[994] == 1)
  {
    [v2 addObject:&unk_1F190AED0];
    v4 = *(a1 + 32);
  }

  if (v4[995] == 1)
  {
    [v3 addObject:&unk_1F190AEE8];
    v4 = *(a1 + 32);
  }

  if (v4[993] == 1)
  {
    [v3 addObject:&unk_1F190AF00];
  }

  return v3;
}

@end