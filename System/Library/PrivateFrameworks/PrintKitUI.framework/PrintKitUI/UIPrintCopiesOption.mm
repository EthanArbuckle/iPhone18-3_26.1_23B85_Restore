@interface UIPrintCopiesOption
- (BOOL)keyboardShowing;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (UIPrintCopiesOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)copiesStepperChanged:(id)changed;
- (void)copiesTextFieldDidChange;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintCopiesOption

- (UIPrintCopiesOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = UIPrintCopiesOption;
  v7 = [(UIPrintOption *)&v11 initWithPrintInfo:info printPanelViewController:controllerCopy];
  if (v7)
  {
    printInteractionController = [controllerCopy printInteractionController];
    -[UIPrintOption setShouldShow:](v7, "setShouldShow:", [printInteractionController _canShowCopies]);

    printInfo = [(UIPrintOption *)v7 printInfo];
    [printInfo addObserver:v7 forKeyPath:0x2871AF170 options:0 context:0];
  }

  return v7;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF170];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = UIPrintCopiesOption;
  [(UIPrintCopiesOption *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
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
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Copies" value:@"Copies" table:@"Localizable"];
  textLabel = [v5 textLabel];
  [textLabel setText:v7];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Copies" value:@"Copies" table:@"Localizable"];
  [valueCellConfiguration setText:v11];

  [v5 setContentConfiguration:valueCellConfiguration];
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

  copiesTextField = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField setTranslatesAutoresizingMaskIntoConstraints:0];

  copiesTextField2 = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField2 setDelegate:self];

  copiesTextField3 = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField3 setTextAlignment:1];

  copiesTextField4 = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField4 setKeyboardType:4];

  copiesTextField5 = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField5 setBorderStyle:3];

  tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  copiesTextField6 = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField6 setBackgroundColor:tertiarySystemGroupedBackgroundColor];

  copiesTextField7 = [(UIPrintCopiesOption *)self copiesTextField];
  [v17 addSubview:copiesTextField7];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v29 = objc_alloc_init(MEMORY[0x277D75C58]);
    [v29 sizeToFit];
    v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissKeyboard];
    printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
    controlTintColor = [printPanelViewController2 controlTintColor];
    [v31 setTintColor:controlTintColor];

    v59[0] = v30;
    v59[1] = v31;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    [v29 setItems:v34];

    copiesTextField8 = [(UIPrintCopiesOption *)self copiesTextField];
    [copiesTextField8 setInputAccessoryView:v29];
  }

  v36 = [objc_alloc(MEMORY[0x277D75AC0]) initWithFrame:{v13, v14, v15, v16}];
  [(UIPrintCopiesOption *)self setCopiesStepper:v36];

  copiesStepper = [(UIPrintCopiesOption *)self copiesStepper];
  [copiesStepper setTranslatesAutoresizingMaskIntoConstraints:0];

  copiesStepper2 = [(UIPrintCopiesOption *)self copiesStepper];
  [copiesStepper2 setMinimumValue:1.0];

  copiesStepper3 = [(UIPrintCopiesOption *)self copiesStepper];
  [copiesStepper3 setMaximumValue:999.0];

  copiesStepper4 = [(UIPrintCopiesOption *)self copiesStepper];
  [copiesStepper4 addTarget:self action:sel_copiesStepperChanged_ forControlEvents:4096];

  copiesStepper5 = [(UIPrintCopiesOption *)self copiesStepper];
  [v17 addSubview:copiesStepper5];

  v57[0] = @"copiesText";
  copiesTextField9 = [(UIPrintCopiesOption *)self copiesTextField];
  v57[1] = @"copiesStepper";
  v58[0] = copiesTextField9;
  copiesStepper6 = [(UIPrintCopiesOption *)self copiesStepper];
  v58[1] = copiesStepper6;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[copiesText]-[copiesStepper]|" options:0 metrics:0 views:v44];
  [v17 addConstraints:v45];

  v46 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[copiesText]|" options:0 metrics:0 views:v44];
  [v17 addConstraints:v46];

  v47 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[copiesStepper]|" options:0 metrics:0 views:v44];
  [v17 addConstraints:v47];

  v48 = MEMORY[0x277CCAAD0];
  copiesTextField10 = [(UIPrintCopiesOption *)self copiesTextField];
  v50 = [v48 constraintWithItem:copiesTextField10 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:76.0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v54 = *MEMORY[0x277D770B0];
  copiesTextField11 = [(UIPrintCopiesOption *)self copiesTextField];
  [defaultCenter addObserver:self selector:sel_copiesTextFieldDidChange name:v54 object:copiesTextField11];

  [(UIPrintCopiesOption *)self updateFromPrintInfo];
  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)updateFromPrintInfo
{
  printInfo = [(UIPrintOption *)self printInfo];
  copies = [printInfo copies];

  copiesStepper = [(UIPrintCopiesOption *)self copiesStepper];
  [copiesStepper setValue:copies];

  copiesTextField = [(UIPrintCopiesOption *)self copiesTextField];
  isEditing = [copiesTextField isEditing];

  if ((isEditing & 1) == 0)
  {
    v9 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", copies];
    copiesTextField2 = [(UIPrintCopiesOption *)self copiesTextField];
    [copiesTextField2 setText:v9];
  }
}

- (void)copiesStepperChanged:(id)changed
{
  [changed value];
  v5 = vcvtmd_s64_f64(v4);
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setCopies:v5];

  copiesTextField = [(UIPrintCopiesOption *)self copiesTextField];
  isEditing = [copiesTextField isEditing];

  if (isEditing)
  {
    v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v5];
    copiesTextField2 = [(UIPrintCopiesOption *)self copiesTextField];
    [copiesTextField2 setText:v10];
  }
}

- (void)copiesTextFieldDidChange
{
  copiesTextField = [(UIPrintCopiesOption *)self copiesTextField];
  text = [copiesTextField text];
  integerValue = [text integerValue];

  copiesStepper = [(UIPrintCopiesOption *)self copiesStepper];
  [copiesStepper setValue:integerValue];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([stringCopy length])
  {
    if ([fieldCopy keyboardType] == 4)
    {
      decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      invertedSet = [decimalDigitCharacterSet invertedSet];
      v13 = [stringCopy rangeOfCharacterFromSet:invertedSet];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
        goto LABEL_13;
      }
    }

    text = [fieldCopy text];
    v15 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    if ([v15 length] > 4)
    {
      goto LABEL_5;
    }

    integerValue = [v15 integerValue];
    copiesStepper = [(UIPrintCopiesOption *)self copiesStepper];
    [copiesStepper minimumValue];
    v16 = v19 <= integerValue;
    if (v19 <= integerValue)
    {
      copiesStepper2 = [(UIPrintCopiesOption *)self copiesStepper];
      [copiesStepper2 maximumValue];
      v22 = v21;

      if (v22 < integerValue)
      {
LABEL_5:
        v16 = 0;
LABEL_11:

        goto LABEL_13;
      }

      copiesStepper = [(UIPrintOption *)self printInfo];
      [copiesStepper setCopies:integerValue];
    }

    goto LABEL_11;
  }

  v16 = 1;
LABEL_13:

  return v16;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  integerValue = [text integerValue];

  printInfo = [(UIPrintOption *)self printInfo];
  v9 = printInfo;
  if (integerValue)
  {
    copies = [printInfo copies];

    if (integerValue == copies)
    {
      return;
    }

    printInfo = [(UIPrintOption *)self printInfo];
    v9 = printInfo;
    v8 = integerValue;
  }

  else
  {
    v8 = 1;
  }

  [printInfo setCopies:v8];
}

- (BOOL)keyboardShowing
{
  copiesTextField = [(UIPrintCopiesOption *)self copiesTextField];
  isFirstResponder = [copiesTextField isFirstResponder];

  return isFirstResponder;
}

- (void)dismissKeyboard
{
  copiesTextField = [(UIPrintCopiesOption *)self copiesTextField];
  copiesTextField2 = [(UIPrintCopiesOption *)self copiesTextField];
  copiesTextField3 = [(UIPrintCopiesOption *)self copiesTextField];
  beginningOfDocument = [copiesTextField3 beginningOfDocument];
  copiesTextField4 = [(UIPrintCopiesOption *)self copiesTextField];
  beginningOfDocument2 = [copiesTextField4 beginningOfDocument];
  v9 = [copiesTextField2 textRangeFromPosition:beginningOfDocument toPosition:beginningOfDocument2];
  [copiesTextField setSelectedTextRange:v9];

  copiesTextField5 = [(UIPrintCopiesOption *)self copiesTextField];
  [copiesTextField5 resignFirstResponder];
}

- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  actionsCopy = actions;
  v6 = [actionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(actionsCopy);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:v9];

      if (v13)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [actionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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