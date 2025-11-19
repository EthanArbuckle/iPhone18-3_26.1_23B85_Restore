@interface UIPrintCopiesOption
- (BOOL)keyboardShowing;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (UIPrintCopiesOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)copiesStepperChanged:(id)a3;
- (void)copiesTextFieldDidChange;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintCopiesOption

- (UIPrintCopiesOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = UIPrintCopiesOption;
  v7 = [(UIPrintOption *)&v11 initWithPrintInfo:a3 printPanelViewController:v6];
  if (v7)
  {
    v8 = [v6 printInteractionController];
    -[UIPrintOption setShouldShow:](v7, "setShouldShow:", [v8 _canShowCopies]);

    v9 = [(UIPrintOption *)v7 printInfo];
    [v9 addObserver:v7 forKeyPath:0x2871AF170 options:0 context:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF170];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = UIPrintCopiesOption;
  [(UIPrintCopiesOption *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__UIPrintCopiesOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)createPrintOptionTableViewCell
{
  v59[2] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Copies" value:@"Copies" table:@"Localizable"];
  v8 = [v5 textLabel];
  [v8 setText:v7];

  v9 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Copies" value:@"Copies" table:@"Localizable"];
  [v9 setText:v11];

  [v5 setContentConfiguration:v9];
  [v5 setSelectionStyle:0];
  v12 = objc_alloc(MEMORY[0x277D75D18]);
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *(MEMORY[0x277CBF3A0] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setUserInteractionEnabled:1];
  v18 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v13, v14, v15, v16}];
  [(UIPrintCopiesOption *)self setCopiesTextField:v18];

  v19 = [(UIPrintCopiesOption *)self copiesTextField];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [(UIPrintCopiesOption *)self copiesTextField];
  [v20 setDelegate:self];

  v21 = [(UIPrintCopiesOption *)self copiesTextField];
  [v21 setTextAlignment:1];

  v22 = [(UIPrintCopiesOption *)self copiesTextField];
  [v22 setKeyboardType:4];

  v23 = [(UIPrintCopiesOption *)self copiesTextField];
  [v23 setBorderStyle:3];

  v24 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  v25 = [(UIPrintCopiesOption *)self copiesTextField];
  [v25 setBackgroundColor:v24];

  v26 = [(UIPrintCopiesOption *)self copiesTextField];
  [v17 addSubview:v26];

  v27 = [MEMORY[0x277D75418] currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (!v28)
  {
    v29 = objc_alloc_init(MEMORY[0x277D75C58]);
    [v29 sizeToFit];
    v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissKeyboard];
    v32 = [(UIPrintOption *)self printPanelViewController];
    v33 = [v32 controlTintColor];
    [v31 setTintColor:v33];

    v59[0] = v30;
    v59[1] = v31;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    [v29 setItems:v34];

    v35 = [(UIPrintCopiesOption *)self copiesTextField];
    [v35 setInputAccessoryView:v29];
  }

  v36 = [objc_alloc(MEMORY[0x277D75AC0]) initWithFrame:{v13, v14, v15, v16}];
  [(UIPrintCopiesOption *)self setCopiesStepper:v36];

  v37 = [(UIPrintCopiesOption *)self copiesStepper];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(UIPrintCopiesOption *)self copiesStepper];
  [v38 setMinimumValue:1.0];

  v39 = [(UIPrintCopiesOption *)self copiesStepper];
  [v39 setMaximumValue:999.0];

  v40 = [(UIPrintCopiesOption *)self copiesStepper];
  [v40 addTarget:self action:sel_copiesStepperChanged_ forControlEvents:4096];

  v41 = [(UIPrintCopiesOption *)self copiesStepper];
  [v17 addSubview:v41];

  v57[0] = @"copiesText";
  v42 = [(UIPrintCopiesOption *)self copiesTextField];
  v57[1] = @"copiesStepper";
  v58[0] = v42;
  v43 = [(UIPrintCopiesOption *)self copiesStepper];
  v58[1] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[copiesText]-[copiesStepper]|" options:0 metrics:0 views:v44];
  [v17 addConstraints:v45];

  v46 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[copiesText]|" options:0 metrics:0 views:v44];
  [v17 addConstraints:v46];

  v47 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[copiesStepper]|" options:0 metrics:0 views:v44];
  [v17 addConstraints:v47];

  v48 = MEMORY[0x277CCAAD0];
  v49 = [(UIPrintCopiesOption *)self copiesTextField];
  v50 = [v48 constraintWithItem:v49 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:76.0];
  [v17 addConstraint:v50];

  [v17 layoutIfNeeded];
  [v17 bounds];
  [v17 setFrame:?];
  v51 = objc_alloc(MEMORY[0x277D75D18]);
  [v17 bounds];
  v52 = [v51 initWithFrame:?];
  [v52 setUserInteractionEnabled:1];
  [v52 addSubview:v17];
  [v5 setAccessoryView:v52];
  v53 = [MEMORY[0x277CCAB98] defaultCenter];
  v54 = *MEMORY[0x277D770B0];
  v55 = [(UIPrintCopiesOption *)self copiesTextField];
  [v53 addObserver:self selector:sel_copiesTextFieldDidChange name:v54 object:v55];

  [(UIPrintCopiesOption *)self updateFromPrintInfo];
  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)updateFromPrintInfo
{
  v3 = [(UIPrintOption *)self printInfo];
  v4 = [v3 copies];

  v5 = [(UIPrintCopiesOption *)self copiesStepper];
  [v5 setValue:v4];

  v6 = [(UIPrintCopiesOption *)self copiesTextField];
  v7 = [v6 isEditing];

  if ((v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v4];
    v8 = [(UIPrintCopiesOption *)self copiesTextField];
    [v8 setText:v9];
  }
}

- (void)copiesStepperChanged:(id)a3
{
  [a3 value];
  v5 = vcvtmd_s64_f64(v4);
  v6 = [(UIPrintOption *)self printInfo];
  [v6 setCopies:v5];

  v7 = [(UIPrintCopiesOption *)self copiesTextField];
  v8 = [v7 isEditing];

  if (v8)
  {
    v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v5];
    v9 = [(UIPrintCopiesOption *)self copiesTextField];
    [v9 setText:v10];
  }
}

- (void)copiesTextFieldDidChange
{
  v3 = [(UIPrintCopiesOption *)self copiesTextField];
  v4 = [v3 text];
  v5 = [v4 integerValue];

  v6 = [(UIPrintCopiesOption *)self copiesStepper];
  [v6 setValue:v5];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([v10 length])
  {
    if ([v9 keyboardType] == 4)
    {
      v11 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v12 = [v11 invertedSet];
      v13 = [v10 rangeOfCharacterFromSet:v12];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
        goto LABEL_13;
      }
    }

    v14 = [v9 text];
    v15 = [v14 stringByReplacingCharactersInRange:location withString:{length, v10}];

    if ([v15 length] > 4)
    {
      goto LABEL_5;
    }

    v17 = [v15 integerValue];
    v18 = [(UIPrintCopiesOption *)self copiesStepper];
    [v18 minimumValue];
    v16 = v19 <= v17;
    if (v19 <= v17)
    {
      v20 = [(UIPrintCopiesOption *)self copiesStepper];
      [v20 maximumValue];
      v22 = v21;

      if (v22 < v17)
      {
LABEL_5:
        v16 = 0;
LABEL_11:

        goto LABEL_13;
      }

      v18 = [(UIPrintOption *)self printInfo];
      [v18 setCopies:v17];
    }

    goto LABEL_11;
  }

  v16 = 1;
LABEL_13:

  return v16;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 integerValue];

  v6 = [(UIPrintOption *)self printInfo];
  v9 = v6;
  if (v5)
  {
    v7 = [v6 copies];

    if (v5 == v7)
    {
      return;
    }

    v6 = [(UIPrintOption *)self printInfo];
    v9 = v6;
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  [v6 setCopies:v8];
}

- (BOOL)keyboardShowing
{
  v2 = [(UIPrintCopiesOption *)self copiesTextField];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)dismissKeyboard
{
  v3 = [(UIPrintCopiesOption *)self copiesTextField];
  v4 = [(UIPrintCopiesOption *)self copiesTextField];
  v5 = [(UIPrintCopiesOption *)self copiesTextField];
  v6 = [v5 beginningOfDocument];
  v7 = [(UIPrintCopiesOption *)self copiesTextField];
  v8 = [v7 beginningOfDocument];
  v9 = [v4 textRangeFromPosition:v6 toPosition:v8];
  [v3 setSelectedTextRange:v9];

  v10 = [(UIPrintCopiesOption *)self copiesTextField];
  [v10 resignFirstResponder];
}

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a5;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277D76D60];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v9];

      if (v13)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

@end