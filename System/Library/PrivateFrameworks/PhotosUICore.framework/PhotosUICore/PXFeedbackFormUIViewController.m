@interface PXFeedbackFormUIViewController
- (BOOL)_isSelectedRow:(id)a3 inSection:(int64_t)a4;
- (PXFeedbackFormUIViewController)initWithDelegate:(id)a3 positiveKeys:(id)a4 negativeKeys:(id)a5 wantsCustomFeedbackSection:(BOOL)a6;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_feedbackKeyForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_feedbackFormSectionForSectionIndex:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_markCell:(id)a3 asSelected:(BOOL)a4;
- (void)_setSelectionStateForKey:(id)a3 inSection:(int64_t)a4 to:(BOOL)a5;
- (void)finishWithSuccess:(BOOL)a3;
- (void)sendFeedback:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXFeedbackFormUIViewController

- (int64_t)_feedbackFormSectionForSectionIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_sections objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)_markCell:(id)a3 asSelected:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    [v5 setAccessoryType:3];
    [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
  }

  else
  {
    [v5 setAccessoryType:0];
    [MEMORY[0x1E69DC888] labelColor];
  }
  v8 = ;
  v7 = [v6 textLabel];

  [v7 setTextColor:v8];
}

- (id)_feedbackKeyForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[PXFeedbackFormUIViewController _feedbackFormSectionForSectionIndex:](self, "_feedbackFormSectionForSectionIndex:", [v4 section]);
  v6 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackKeys;
  if (!v5)
  {
    v6 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackKeys;
  }

  v7 = *(&self->super.super.super.isa + *v6);
  v8 = [v4 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (void)_setSelectionStateForKey:(id)a3 inSection:(int64_t)a4 to:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:a4];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v12 = v10;
  v11 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackValues;
  if (!v9)
  {
    v11 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackValues;
  }

  [*(&self->super.super.super.isa + *v11) setObject:v10 forKeyedSubscript:v8];
}

- (BOOL)_isSelectedRow:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:a4];
  v8 = &OBJC_IVAR___PXFeedbackFormUIViewController__negativeFeedbackValues;
  if (!v7)
  {
    v8 = &OBJC_IVAR___PXFeedbackFormUIViewController__positiveFeedbackValues;
  }

  v9 = [*(&self->super.super.super.isa + *v8) objectForKeyedSubscript:v6];

  v10 = [v9 BOOLValue];
  return v10;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 section] == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v13 = [a3 cellForRowAtIndexPath:v6];
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackKeyForIndexPath:v6];
  v8 = -[PXFeedbackFormUIViewController _isSelectedRow:inSection:](self, "_isSelectedRow:inSection:", v7, [v6 section]);
  v9 = [v6 section];

  if (v8)
  {
    [(PXFeedbackFormUIViewController *)self _setSelectionStateForKey:v7 inSection:v9 to:0];
    [v13 setSelected:0];
    v10 = [MEMORY[0x1E69DC888] labelColor];
    v11 = 0;
  }

  else
  {
    [(PXFeedbackFormUIViewController *)self _setSelectionStateForKey:v7 inSection:v9 to:1];
    [v13 setSelected:1];
    v10 = [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
    v11 = 3;
  }

  v12 = [v13 textLabel];
  [v12 setTextColor:v10];

  [v13 setAccessoryType:v11];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  if (-[PXFeedbackFormUIViewController _feedbackFormSectionForSectionIndex:](self, "_feedbackFormSectionForSectionIndex:", [a4 section]) == 2)
  {
    v7 = 500.0;
  }

  else
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"SwitchCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"SwitchCell"];
      v9 = [v8 textLabel];
      [v9 setLineBreakMode:0];

      v10 = [v8 textLabel];
      [v10 setNumberOfLines:0];

      [v8 setSelectionStyle:0];
    }

    v11 = [v8 contentView];
    [v11 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v13 = v12;

    v7 = v13 + 10.0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (-[PXFeedbackFormUIViewController _feedbackFormSectionForSectionIndex:](self, "_feedbackFormSectionForSectionIndex:", [v7 section]) == 2)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"OpenFeedbackCell"];
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

      v16 = [MEMORY[0x1E69DC888] labelColor];
      [(UITextView *)self->_customFeedbackTextView setTextColor:v16];

      [(UITextView *)self->_customFeedbackTextView setKeyboardType:0];
      [(UITextView *)self->_customFeedbackTextView setReturnKeyType:0];
      v17 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UITextView *)self->_customFeedbackTextView setBackgroundColor:v17];

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

    v24 = [v8 contentView];
    [v24 addSubview:self->_customFeedbackTextView];
  }

  else
  {
    v24 = [(PXFeedbackFormUIViewController *)self _feedbackKeyForIndexPath:v7];
    v25 = PXLocalizedStringFromTable(v24, @"PXFeedbackCollection");
    v8 = [v6 dequeueReusableCellWithIdentifier:@"SwitchCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"SwitchCell"];
      v26 = [v8 textLabel];
      [v26 setText:v25];

      [v8 setSelected:{-[PXFeedbackFormUIViewController _isSelectedRow:inSection:](self, "_isSelectedRow:inSection:", v24, objc_msgSend(v7, "section"))}];
    }

    -[PXFeedbackFormUIViewController _markCell:asSelected:](self, "_markCell:asSelected:", v8, -[PXFeedbackFormUIViewController _isSelectedRow:inSection:](self, "_isSelectedRow:inSection:", v24, [v7 section]));
    v27 = [v8 textLabel];
    [v27 setText:v25];
  }

LABEL_10:
  v28 = [v8 textLabel];
  [v28 setNumberOfLines:0];

  v29 = [v8 textLabel];
  [v29 setLineBreakMode:0];

  [v8 setSelectionStyle:0];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:a4];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXFeedbackFormUIViewController *)self _feedbackFormSectionForSectionIndex:a4];
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

- (void)finishWithSuccess:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXFeedbackFormUIViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PXFeedbackFormUIViewController *)self delegate];
    [v7 userDidFinish:v3];
  }

  else
  {

    [(PXFeedbackFormUIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)sendFeedback:(id)a3
{
  v9 = a3;
  if (self->_wantsCustomFeedbackSection)
  {
    v4 = [(UITextView *)self->_customFeedbackTextView text];
  }

  else
  {
    v4 = &stru_1F1741150;
  }

  v5 = [(PXFeedbackFormUIViewController *)self delegate];
  [v5 userSentPositiveFeedback:self->_positiveFeedbackValues negativeFeedback:self->_negativeFeedbackValues customFeedback:v4];

  v6 = [(PXFeedbackFormUIViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_8;
  }

  v7 = [(PXFeedbackFormUIViewController *)self delegate];
  v8 = [v7 shouldContinuePresentingFormAfterFeedback];

  if ((v8 & 1) == 0)
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
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(PXFeedbackFormUIViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(PXFeedbackFormUIViewController *)self tableViewController];
  v6 = [v5 view];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(PXFeedbackFormUIViewController *)self view];
  [v7 addSubview:v6];

  v8 = [(PXFeedbackFormUIViewController *)self view];
  v9 = [v8 safeAreaLayoutGuide];

  v10 = MEMORY[0x1E696ACD8];
  v29 = v9;
  v11 = [v9 topAnchor];
  v12 = [v6 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v32[0] = v13;
  v14 = [v9 bottomAnchor];
  v15 = [v6 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v32[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v10 activateConstraints:v17];

  v28 = _NSDictionaryOfVariableBindings(&cfstr_Feedbacktablev.isa, v6, 0);
  v18 = [(PXFeedbackFormUIViewController *)self view];
  v19 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[feedbackTableView]-0-|" options:0 metrics:0 views:v28];
  [v18 addConstraints:v19];

  v20 = PXLocalizedStringFromTable(@"FeedbackFormPanel.sendButton.title", @"PXFeedbackCollection");
  v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v20 style:0 target:self action:sel_sendFeedback_];
  v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v23 = PXLocalizedStringFromTable(@"FeedbackCollectionPanel.cancelButton.title", @"PXFeedbackCollection");
  v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v23 style:0 target:self action:sel_cancelFeedback_];
  v31 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v26 = [(PXFeedbackFormUIViewController *)self navigationItem];
  [v26 setLeftBarButtonItems:v25];

  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v22, v21, 0}];
  [(PXFeedbackFormUIViewController *)self setToolbarItems:v27];
}

- (PXFeedbackFormUIViewController)initWithDelegate:(id)a3 positiveKeys:(id)a4 negativeKeys:(id)a5 wantsCustomFeedbackSection:(BOOL)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v62.receiver = self;
  v62.super_class = PXFeedbackFormUIViewController;
  v13 = [(PXFeedbackFormUIViewController *)&v62 init];
  v14 = v13;
  if (v13)
  {
    v47 = v12;
    v49 = v11;
    v51 = v10;
    v13->_userLikedIt = 0;
    v13->_wantsCustomFeedbackSection = a6;
    objc_storeStrong(&v13->_positiveFeedbackKeys, a4);
    v15 = [MEMORY[0x1E695DF90] dictionary];
    positiveFeedbackValues = v14->_positiveFeedbackValues;
    v14->_positiveFeedbackValues = v15;

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

    objc_storeStrong(&v14->_negativeFeedbackKeys, a5);
    v24 = [MEMORY[0x1E695DF90] dictionary];
    negativeFeedbackValues = v14->_negativeFeedbackValues;
    v14->_negativeFeedbackValues = v24;

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

    v34 = [(PXFeedbackFormUIViewController *)v14 tableViewController];
    v35 = [v34 view];
    [v35 setDataSource:v14];

    v36 = [(PXFeedbackFormUIViewController *)v14 tableViewController];
    v37 = [v36 view];
    [v37 setDelegate:v14];

    v10 = v51;
    [(PXFeedbackFormUIViewController *)v14 setDelegate:v51];
    v14->_wantsPositiveFeedbackSection = 1;
    v38 = [(PXFeedbackFormUIViewController *)v14 delegate];
    LOBYTE(v37) = objc_opt_respondsToSelector();

    if (v37)
    {
      v39 = [(PXFeedbackFormUIViewController *)v14 delegate];
      v14->_wantsPositiveFeedbackSection = [v39 wantsPositiveFeedbackSection];
    }

    v14->_wantsNegativeFeedbackSection = 1;
    v40 = [(PXFeedbackFormUIViewController *)v14 delegate:v47];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      v42 = [(PXFeedbackFormUIViewController *)v14 delegate];
      v14->_wantsNegativeFeedbackSection = [v42 wantsNegativeFeedbackSection];
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

    v12 = v48;
    v11 = v50;
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