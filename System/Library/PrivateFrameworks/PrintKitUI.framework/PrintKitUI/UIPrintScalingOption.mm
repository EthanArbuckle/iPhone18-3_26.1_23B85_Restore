@interface UIPrintScalingOption
- (BOOL)keyboardShowing;
- (BOOL)stepperWillFit;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (UIPrintScalingOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paperScaleStepperChanged:(id)a3;
- (void)paperScaleTextFieldDidChange;
- (void)printPanelDidChangeSize;
- (void)saveScaleValueToPrintInfo:(int64_t)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintScalingOption

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF1F0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = UIPrintScalingOption;
  [(UIPrintScalingOption *)&v5 dealloc];
}

- (UIPrintScalingOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v13.receiver = self;
  v13.super_class = UIPrintScalingOption;
  v4 = [(UIPrintOption *)&v13 initWithPrintInfo:a3 printPanelViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIPrintOption *)v4 printPanelViewController];
    -[UIPrintOption setShouldShow:](v5, "setShouldShow:", [v6 shouldShowScaling]);

    v7 = [(UIPrintOption *)v5 printInfo];
    [v7 addObserver:v5 forKeyPath:0x2871AF1F0 options:0 context:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v5 selector:sel_printPanelDidChangeSize name:@"UIPrintPanelDidChangeSizeNotification" object:0];

    v9 = [(UIPrintOption *)v5 printPanelViewController];
    v10 = [v9 printOptionsTableView];
    [v10 frame];
    [(UIPrintScalingOption *)v5 setSavedTableViewWidth:v11];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v2 = self;
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  [v4 rectForRowAtIndexPath:v5];
  v7 = v6;

  v8 = objc_alloc(MEMORY[0x277D75AC0]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintScalingOption *)v2 savedTextLabelWidth];
  v11 = v10;
  [v9 frame];
  LOBYTE(v2) = v11 < v7 - (v12 + 76.0) + -48.0;

  return v2;
}

- (void)printPanelDidChangeSize
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self tableViewCell];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIPrintOption *)self printPanelViewController];
    v6 = [v5 printOptionsTableView];
    [v6 frame];
    v8 = v7;
    [(UIPrintScalingOption *)self savedTableViewWidth];
    v10 = v9;

    if (v8 != v10)
    {
      v11 = [(UIPrintOption *)self printPanelViewController];
      v12 = [v11 printOptionsTableView];
      [v12 frame];
      [(UIPrintScalingOption *)self setSavedTableViewWidth:v13];

      v14 = [(UIPrintOption *)self printPanelViewController];
      v15 = [v14 printOptionsTableView];
      v16 = [(UIPrintOption *)self tableViewCell];
      v17 = [v15 indexPathForCell:v16];

      if (v17)
      {
        v18 = [(UIPrintScalingOption *)self stepperWillFit];
        v19 = [(UIPrintScalingOption *)self scaleStepper];
        v20 = v19 == 0;

        if (((v18 ^ v20) & 1) == 0)
        {
          v21 = [(UIPrintOption *)self printPanelViewController];
          v22 = [v21 printOptionsTableView];
          v24[0] = v17;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
          [v22 reloadRowsAtIndexPaths:v23 withRowAnimation:0];
        }
      }
    }
  }
}

- (id)createPrintOptionTableViewCell
{
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Scaling" value:@"Scaling" table:@"Localizable"];
  v8 = [v5 textLabel];
  [v8 setText:v7];

  v9 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Scaling" value:@"Scaling" table:@"Localizable"];
  [v9 setText:v11];

  [v5 setContentConfiguration:v9];
  [v5 setSelectionStyle:0];
  [(UIPrintOption *)self setTableViewCell:v5];
  v12 = objc_alloc(MEMORY[0x277D75D18]);
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *(MEMORY[0x277CBF3A0] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
  [(UIPrintScalingOption *)self setScaleView:v17];

  v18 = [(UIPrintScalingOption *)self scaleView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(UIPrintScalingOption *)self scaleView];
  [v19 setUserInteractionEnabled:1];

  v20 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v13, v14, v15, v16}];
  [(UIPrintScalingOption *)self setScaleTextField:v20];

  v21 = [(UIPrintScalingOption *)self scaleTextField];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(UIPrintScalingOption *)self scaleTextField];
  [v22 setDelegate:self];

  v23 = [(UIPrintScalingOption *)self scaleTextField];
  [v23 setTextAlignment:1];

  v24 = [(UIPrintScalingOption *)self scaleTextField];
  [v24 setKeyboardType:4];

  v25 = [(UIPrintScalingOption *)self scaleTextField];
  [v25 setBorderStyle:3];

  v26 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  v27 = [(UIPrintScalingOption *)self scaleTextField];
  [v27 setBackgroundColor:v26];

  v28 = [(UIPrintScalingOption *)self scaleView];
  v29 = [(UIPrintScalingOption *)self scaleTextField];
  [v28 addSubview:v29];

  v82 = @"scaleText";
  v30 = [(UIPrintScalingOption *)self scaleTextField];
  v83[0] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];

  v32 = [(UIPrintScalingOption *)self scaleView];
  v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[scaleText]|" options:0 metrics:0 views:v31];
  [v32 addConstraints:v33];

  v34 = [(UIPrintScalingOption *)self scaleView];
  v35 = MEMORY[0x277CCAAD0];
  v36 = [(UIPrintScalingOption *)self scaleTextField];
  v37 = [v35 constraintWithItem:v36 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:76.0];
  [v34 addConstraint:v37];

  [(UIPrintScalingOption *)self savedTextLabelWidth];
  if (v38 == 0.0)
  {
    v39 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"Scaling" value:@"Scaling" table:@"Localizable"];
    [v39 setText:v41];

    v42 = [v9 textProperties];
    v43 = [v42 font];
    [v39 setFont:v43];

    [v39 setNumberOfLines:1];
    [v39 sizeToFit];
    [v39 frame];
    [(UIPrintScalingOption *)self setSavedTextLabelWidth:v44];
  }

  if ([(UIPrintScalingOption *)self stepperWillFit])
  {
    v45 = [objc_alloc(MEMORY[0x277D75AC0]) initWithFrame:{v13, v14, v15, v16}];
    [(UIPrintScalingOption *)self setScaleStepper:v45];

    v46 = [(UIPrintScalingOption *)self scaleStepper];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

    v47 = [(UIPrintScalingOption *)self scaleStepper];
    [v47 setMinimumValue:1.0];

    v48 = [(UIPrintScalingOption *)self scaleStepper];
    [v48 setMaximumValue:400.0];

    v49 = [(UIPrintScalingOption *)self scaleStepper];
    [v49 addTarget:self action:sel_paperScaleStepperChanged_ forControlEvents:4096];

    v50 = [(UIPrintScalingOption *)self scaleView];
    v51 = [(UIPrintScalingOption *)self scaleStepper];
    [v50 addSubview:v51];

    v80[0] = @"scaleText";
    v52 = [(UIPrintScalingOption *)self scaleTextField];
    v80[1] = @"scaleStepper";
    v81[0] = v52;
    v53 = [(UIPrintScalingOption *)self scaleStepper];
    v81[1] = v53;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];

    v55 = [(UIPrintScalingOption *)self scaleView];
    v56 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[scaleText]-[scaleStepper]|" options:0 metrics:0 views:v54];
    [v55 addConstraints:v56];

    v57 = [(UIPrintScalingOption *)self scaleView];
    v58 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[scaleStepper]|" options:0 metrics:0 views:v54];
    [v57 addConstraints:v58];

    v31 = v54;
  }

  else
  {
    v59 = [(UIPrintScalingOption *)self scaleView];
    v60 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[scaleText]|" options:0 metrics:0 views:v31];
    [v59 addConstraints:v60];

    [(UIPrintScalingOption *)self setScaleStepper:0];
  }

  v61 = [(UIPrintScalingOption *)self scaleView];
  [v61 layoutIfNeeded];

  v62 = objc_alloc(MEMORY[0x277D75D18]);
  v63 = [(UIPrintScalingOption *)self scaleView];
  [v63 bounds];
  v64 = [v62 initWithFrame:?];

  [v64 setUserInteractionEnabled:1];
  v65 = [(UIPrintScalingOption *)self scaleView];
  [v64 addSubview:v65];

  [v5 setAccessoryView:v64];
  v66 = [MEMORY[0x277D75418] currentDevice];
  v67 = [v66 userInterfaceIdiom];

  if (!v67)
  {
    v68 = objc_alloc_init(MEMORY[0x277D75C58]);
    [v68 sizeToFit];
    v69 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v70 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissKeyboard];
    v71 = [(UIPrintOption *)self printPanelViewController];
    v72 = [v71 controlTintColor];
    [v70 setTintColor:v72];

    v79[0] = v69;
    v79[1] = v70;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
    [v68 setItems:v73];

    v74 = [(UIPrintScalingOption *)self scaleTextField];
    [v74 setInputAccessoryView:v68];
  }

  v75 = [MEMORY[0x277CCAB98] defaultCenter];
  v76 = *MEMORY[0x277D770B0];
  v77 = [(UIPrintScalingOption *)self scaleTextField];
  [v75 addObserver:self selector:sel_paperScaleTextFieldDidChange name:v76 object:v77];

  [(UIPrintScalingOption *)self updateFromPrintInfo];

  return v5;
}

- (void)updateFromPrintInfo
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 scalingFactor];
  v5 = v4 * 100.0;
  v6 = round(v4 * 100.0);

  v7 = [(UIPrintScalingOption *)self scaleStepper];
  [v7 setValue:v6];

  v8 = [(UIPrintScalingOption *)self scaleTextField];
  v9 = [v8 isEditing];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v14 localizedStringForKey:@"%ld%%" value:@"%ld%%" table:@"Localizable"];
    v12 = [v10 localizedStringWithFormat:v11, llround(v5)];
    v13 = [(UIPrintScalingOption *)self scaleTextField];
    [v13 setText:v12];
  }
}

- (void)saveScaleValueToPrintInfo:(int64_t)a3
{
  v4 = a3 / 100.0;
  v5 = [(UIPrintOption *)self printInfo];
  [v5 scalingFactor];
  v7 = v6;

  if (v4 != v7)
  {
    v8 = [(UIPrintOption *)self printInfo];
    [v8 setScalingFactor:v4];

    v9 = [(UIPrintOption *)self printInfo];
    v10 = [v9 printPaper];
    [v10 setScalingFactor:v4];

    v13 = [(UIPrintOption *)self printPanelViewController];
    v11 = [v13 printInteractionController];
    v12 = [v11 paper];
    [v12 setScalingFactor:v4];
  }
}

- (void)paperScaleStepperChanged:(id)a3
{
  [a3 value];
  v5 = vcvtmd_s64_f64(v4);

  [(UIPrintScalingOption *)self saveScaleValueToPrintInfo:v5];
}

- (void)paperScaleTextFieldDidChange
{
  v3 = [(UIPrintScalingOption *)self scaleTextField];
  v4 = [v3 text];
  v5 = [v4 integerValue];

  v6 = [(UIPrintScalingOption *)self scaleStepper];
  [v6 setValue:v5];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  if ([v9 length])
  {
    if ([v8 keyboardType] == 4 && (objc_msgSend(MEMORY[0x277CCA900], "decimalDigitCharacterSet"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "invertedSet"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "rangeOfCharacterFromSet:", v11), v11, v10, v12 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v15 = 0;
    }

    else
    {
      v13 = [v8 text];
      v14 = [v13 stringByReplacingCharactersInRange:location withString:{length, v9}];

      v15 = [v14 length] <= 4 && (objc_msgSend(v14, "integerValue") - 1) < 0x190;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintOption *)self printInfo];
  [v5 scalingFactor];
  *&v6 = v6 * 100.0;
  v7 = llroundf(*&v6);

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v7];
  [v4 setText:v8];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 integerValue];

  if (v6)
  {
    v7 = v6;
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
  [v4 setText:v11];

  v12 = [(UIPrintScalingOption *)self scaleStepper];
  [v12 setValue:v7];
}

- (BOOL)keyboardShowing
{
  v2 = [(UIPrintScalingOption *)self scaleTextField];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)dismissKeyboard
{
  v3 = [(UIPrintScalingOption *)self scaleTextField];
  v4 = [(UIPrintScalingOption *)self scaleTextField];
  v5 = [(UIPrintScalingOption *)self scaleTextField];
  v6 = [v5 beginningOfDocument];
  v7 = [(UIPrintScalingOption *)self scaleTextField];
  v8 = [v7 beginningOfDocument];
  v9 = [v4 textRangeFromPosition:v6 toPosition:v8];
  [v3 setSelectedTextRange:v9];

  v10 = [(UIPrintScalingOption *)self scaleTextField];
  [v10 resignFirstResponder];
}

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(UIPrintScalingOption *)self scaleTextField];
  v8 = [v7 isEditing];

  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
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
        v16 = [v15 identifier];
        v17 = [v16 isEqualToString:v13];

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
    v19 = [MEMORY[0x277CBEA60] array];
    v15 = [v18 menuWithChildren:v19];
  }

  return v15;
}

@end