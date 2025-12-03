@interface UIPrintScalingOption
- (BOOL)keyboardShowing;
- (BOOL)stepperWillFit;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (UIPrintScalingOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)paperScaleStepperChanged:(id)changed;
- (void)paperScaleTextFieldDidChange;
- (void)printPanelDidChangeSize;
- (void)saveScaleValueToPrintInfo:(int64_t)info;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintScalingOption

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF1F0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = UIPrintScalingOption;
  [(UIPrintScalingOption *)&v5 dealloc];
}

- (UIPrintScalingOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v13.receiver = self;
  v13.super_class = UIPrintScalingOption;
  v4 = [(UIPrintOption *)&v13 initWithPrintInfo:info printPanelViewController:controller];
  v5 = v4;
  if (v4)
  {
    printPanelViewController = [(UIPrintOption *)v4 printPanelViewController];
    -[UIPrintOption setShouldShow:](v5, "setShouldShow:", [printPanelViewController shouldShowScaling]);

    printInfo = [(UIPrintOption *)v5 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF1F0 options:0 context:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_printPanelDidChangeSize name:@"UIPrintPanelDidChangeSizeNotification" object:0];

    printPanelViewController2 = [(UIPrintOption *)v5 printPanelViewController];
    printOptionsTableView = [printPanelViewController2 printOptionsTableView];
    [printOptionsTableView frame];
    [(UIPrintScalingOption *)v5 setSavedTableViewWidth:v11];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__UIPrintScalingOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)stepperWillFit
{
  selfCopy = self;
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  [printOptionsTableView rectForRowAtIndexPath:v5];
  v7 = v6;

  v8 = objc_alloc(MEMORY[0x277D75AC0]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintScalingOption *)selfCopy savedTextLabelWidth];
  v11 = v10;
  [v9 frame];
  LOBYTE(selfCopy) = v11 < v7 - (v12 + 76.0) + -48.0;

  return selfCopy;
}

- (void)printPanelDidChangeSize
{
  v24[1] = *MEMORY[0x277D85DE8];
  tableViewCell = [(UIPrintOption *)self tableViewCell];
  if (tableViewCell)
  {
    v4 = tableViewCell;
    printPanelViewController = [(UIPrintOption *)self printPanelViewController];
    printOptionsTableView = [printPanelViewController printOptionsTableView];
    [printOptionsTableView frame];
    v8 = v7;
    [(UIPrintScalingOption *)self savedTableViewWidth];
    v10 = v9;

    if (v8 != v10)
    {
      printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
      printOptionsTableView2 = [printPanelViewController2 printOptionsTableView];
      [printOptionsTableView2 frame];
      [(UIPrintScalingOption *)self setSavedTableViewWidth:v13];

      printPanelViewController3 = [(UIPrintOption *)self printPanelViewController];
      printOptionsTableView3 = [printPanelViewController3 printOptionsTableView];
      tableViewCell2 = [(UIPrintOption *)self tableViewCell];
      v17 = [printOptionsTableView3 indexPathForCell:tableViewCell2];

      if (v17)
      {
        stepperWillFit = [(UIPrintScalingOption *)self stepperWillFit];
        scaleStepper = [(UIPrintScalingOption *)self scaleStepper];
        v20 = scaleStepper == 0;

        if (((stepperWillFit ^ v20) & 1) == 0)
        {
          printPanelViewController4 = [(UIPrintOption *)self printPanelViewController];
          printOptionsTableView4 = [printPanelViewController4 printOptionsTableView];
          v24[0] = v17;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
          [printOptionsTableView4 reloadRowsAtIndexPaths:v23 withRowAnimation:0];
        }
      }
    }
  }
}

- (id)createPrintOptionTableViewCell
{
  v83[1] = *MEMORY[0x277D85DE8];
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Scaling" value:@"Scaling" table:@"Localizable"];
  textLabel = [v5 textLabel];
  [textLabel setText:v7];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Scaling" value:@"Scaling" table:@"Localizable"];
  [valueCellConfiguration setText:v11];

  [v5 setContentConfiguration:valueCellConfiguration];
  [v5 setSelectionStyle:0];
  [(UIPrintOption *)self setTableViewCell:v5];
  v12 = objc_alloc(MEMORY[0x277D75D18]);
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *(MEMORY[0x277CBF3A0] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
  [(UIPrintScalingOption *)self setScaleView:v17];

  scaleView = [(UIPrintScalingOption *)self scaleView];
  [scaleView setTranslatesAutoresizingMaskIntoConstraints:0];

  scaleView2 = [(UIPrintScalingOption *)self scaleView];
  [scaleView2 setUserInteractionEnabled:1];

  v20 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v13, v14, v15, v16}];
  [(UIPrintScalingOption *)self setScaleTextField:v20];

  scaleTextField = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField setTranslatesAutoresizingMaskIntoConstraints:0];

  scaleTextField2 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField2 setDelegate:self];

  scaleTextField3 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField3 setTextAlignment:1];

  scaleTextField4 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField4 setKeyboardType:4];

  scaleTextField5 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField5 setBorderStyle:3];

  tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  scaleTextField6 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField6 setBackgroundColor:tertiarySystemGroupedBackgroundColor];

  scaleView3 = [(UIPrintScalingOption *)self scaleView];
  scaleTextField7 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleView3 addSubview:scaleTextField7];

  v82 = @"scaleText";
  scaleTextField8 = [(UIPrintScalingOption *)self scaleTextField];
  v83[0] = scaleTextField8;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];

  scaleView4 = [(UIPrintScalingOption *)self scaleView];
  v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[scaleText]|" options:0 metrics:0 views:v31];
  [scaleView4 addConstraints:v33];

  scaleView5 = [(UIPrintScalingOption *)self scaleView];
  v35 = MEMORY[0x277CCAAD0];
  scaleTextField9 = [(UIPrintScalingOption *)self scaleTextField];
  v37 = [v35 constraintWithItem:scaleTextField9 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:76.0];
  [scaleView5 addConstraint:v37];

  [(UIPrintScalingOption *)self savedTextLabelWidth];
  if (v38 == 0.0)
  {
    v39 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"Scaling" value:@"Scaling" table:@"Localizable"];
    [v39 setText:v41];

    textProperties = [valueCellConfiguration textProperties];
    font = [textProperties font];
    [v39 setFont:font];

    [v39 setNumberOfLines:1];
    [v39 sizeToFit];
    [v39 frame];
    [(UIPrintScalingOption *)self setSavedTextLabelWidth:v44];
  }

  if ([(UIPrintScalingOption *)self stepperWillFit])
  {
    v45 = [objc_alloc(MEMORY[0x277D75AC0]) initWithFrame:{v13, v14, v15, v16}];
    [(UIPrintScalingOption *)self setScaleStepper:v45];

    scaleStepper = [(UIPrintScalingOption *)self scaleStepper];
    [scaleStepper setTranslatesAutoresizingMaskIntoConstraints:0];

    scaleStepper2 = [(UIPrintScalingOption *)self scaleStepper];
    [scaleStepper2 setMinimumValue:1.0];

    scaleStepper3 = [(UIPrintScalingOption *)self scaleStepper];
    [scaleStepper3 setMaximumValue:400.0];

    scaleStepper4 = [(UIPrintScalingOption *)self scaleStepper];
    [scaleStepper4 addTarget:self action:sel_paperScaleStepperChanged_ forControlEvents:4096];

    scaleView6 = [(UIPrintScalingOption *)self scaleView];
    scaleStepper5 = [(UIPrintScalingOption *)self scaleStepper];
    [scaleView6 addSubview:scaleStepper5];

    v80[0] = @"scaleText";
    scaleTextField10 = [(UIPrintScalingOption *)self scaleTextField];
    v80[1] = @"scaleStepper";
    v81[0] = scaleTextField10;
    scaleStepper6 = [(UIPrintScalingOption *)self scaleStepper];
    v81[1] = scaleStepper6;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];

    scaleView7 = [(UIPrintScalingOption *)self scaleView];
    v56 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[scaleText]-[scaleStepper]|" options:0 metrics:0 views:v54];
    [scaleView7 addConstraints:v56];

    scaleView8 = [(UIPrintScalingOption *)self scaleView];
    v58 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[scaleStepper]|" options:0 metrics:0 views:v54];
    [scaleView8 addConstraints:v58];

    v31 = v54;
  }

  else
  {
    scaleView9 = [(UIPrintScalingOption *)self scaleView];
    v60 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[scaleText]|" options:0 metrics:0 views:v31];
    [scaleView9 addConstraints:v60];

    [(UIPrintScalingOption *)self setScaleStepper:0];
  }

  scaleView10 = [(UIPrintScalingOption *)self scaleView];
  [scaleView10 layoutIfNeeded];

  v62 = objc_alloc(MEMORY[0x277D75D18]);
  scaleView11 = [(UIPrintScalingOption *)self scaleView];
  [scaleView11 bounds];
  v64 = [v62 initWithFrame:?];

  [v64 setUserInteractionEnabled:1];
  scaleView12 = [(UIPrintScalingOption *)self scaleView];
  [v64 addSubview:scaleView12];

  [v5 setAccessoryView:v64];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v68 = objc_alloc_init(MEMORY[0x277D75C58]);
    [v68 sizeToFit];
    v69 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v70 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissKeyboard];
    printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
    controlTintColor = [printPanelViewController2 controlTintColor];
    [v70 setTintColor:controlTintColor];

    v79[0] = v69;
    v79[1] = v70;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
    [v68 setItems:v73];

    scaleTextField11 = [(UIPrintScalingOption *)self scaleTextField];
    [scaleTextField11 setInputAccessoryView:v68];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v76 = *MEMORY[0x277D770B0];
  scaleTextField12 = [(UIPrintScalingOption *)self scaleTextField];
  [defaultCenter addObserver:self selector:sel_paperScaleTextFieldDidChange name:v76 object:scaleTextField12];

  [(UIPrintScalingOption *)self updateFromPrintInfo];

  return v5;
}

- (void)updateFromPrintInfo
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo scalingFactor];
  v5 = v4 * 100.0;
  v6 = round(v4 * 100.0);

  scaleStepper = [(UIPrintScalingOption *)self scaleStepper];
  [scaleStepper setValue:v6];

  scaleTextField = [(UIPrintScalingOption *)self scaleTextField];
  isEditing = [scaleTextField isEditing];

  if ((isEditing & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v14 localizedStringForKey:@"%ld%%" value:@"%ld%%" table:@"Localizable"];
    v12 = [v10 localizedStringWithFormat:v11, llround(v5)];
    scaleTextField2 = [(UIPrintScalingOption *)self scaleTextField];
    [scaleTextField2 setText:v12];
  }
}

- (void)saveScaleValueToPrintInfo:(int64_t)info
{
  v4 = info / 100.0;
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo scalingFactor];
  v7 = v6;

  if (v4 != v7)
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    [printInfo2 setScalingFactor:v4];

    printInfo3 = [(UIPrintOption *)self printInfo];
    printPaper = [printInfo3 printPaper];
    [printPaper setScalingFactor:v4];

    printPanelViewController = [(UIPrintOption *)self printPanelViewController];
    printInteractionController = [printPanelViewController printInteractionController];
    paper = [printInteractionController paper];
    [paper setScalingFactor:v4];
  }
}

- (void)paperScaleStepperChanged:(id)changed
{
  [changed value];
  v5 = vcvtmd_s64_f64(v4);

  [(UIPrintScalingOption *)self saveScaleValueToPrintInfo:v5];
}

- (void)paperScaleTextFieldDidChange
{
  scaleTextField = [(UIPrintScalingOption *)self scaleTextField];
  text = [scaleTextField text];
  integerValue = [text integerValue];

  scaleStepper = [(UIPrintScalingOption *)self scaleStepper];
  [scaleStepper setValue:integerValue];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([stringCopy length])
  {
    if ([fieldCopy keyboardType] == 4 && (objc_msgSend(MEMORY[0x277CCA900], "decimalDigitCharacterSet"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "invertedSet"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(stringCopy, "rangeOfCharacterFromSet:", v11), v11, v10, v12 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v15 = 0;
    }

    else
    {
      text = [fieldCopy text];
      v14 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

      v15 = [v14 length] <= 4 && (objc_msgSend(v14, "integerValue") - 1) < 0x190;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo scalingFactor];
  *&v6 = v6 * 100.0;
  v7 = llroundf(*&v6);

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v7];
  [editingCopy setText:v8];
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  integerValue = [text integerValue];

  if (integerValue)
  {
    v7 = integerValue;
  }

  else
  {
    v7 = 100;
  }

  [(UIPrintScalingOption *)self saveScaleValueToPrintInfo:v7];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"%ld%%" value:@"%ld%%" table:@"Localizable"];
  v11 = [v8 localizedStringWithFormat:v10, v7];
  [editingCopy setText:v11];

  scaleStepper = [(UIPrintScalingOption *)self scaleStepper];
  [scaleStepper setValue:v7];
}

- (BOOL)keyboardShowing
{
  scaleTextField = [(UIPrintScalingOption *)self scaleTextField];
  isFirstResponder = [scaleTextField isFirstResponder];

  return isFirstResponder;
}

- (void)dismissKeyboard
{
  scaleTextField = [(UIPrintScalingOption *)self scaleTextField];
  scaleTextField2 = [(UIPrintScalingOption *)self scaleTextField];
  scaleTextField3 = [(UIPrintScalingOption *)self scaleTextField];
  beginningOfDocument = [scaleTextField3 beginningOfDocument];
  scaleTextField4 = [(UIPrintScalingOption *)self scaleTextField];
  beginningOfDocument2 = [scaleTextField4 beginningOfDocument];
  v9 = [scaleTextField2 textRangeFromPosition:beginningOfDocument toPosition:beginningOfDocument2];
  [scaleTextField setSelectedTextRange:v9];

  scaleTextField5 = [(UIPrintScalingOption *)self scaleTextField];
  [scaleTextField5 resignFirstResponder];
}

- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions
{
  v26 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  scaleTextField = [(UIPrintScalingOption *)self scaleTextField];
  isEditing = [scaleTextField isEditing];

  if (isEditing)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = actionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      v13 = *MEMORY[0x277D76D60];
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        identifier = [v15 identifier];
        v17 = [identifier isEqualToString:v13];

        if (v17)
        {
          break;
        }

        if (v11 == ++v14)
        {
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x277D75710];
    array = [MEMORY[0x277CBEA60] array];
    v15 = [v18 menuWithChildren:array];
  }

  return v15;
}

@end