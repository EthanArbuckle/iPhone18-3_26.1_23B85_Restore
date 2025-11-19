@interface SSLabelPickerViewController
- (CTUserLabel)chosenLabel;
- (SSLabelPickerViewController)initWithAssociatedPlanItem:(id)a3 initialLabel:(id)a4 predefinedUserLabels:(id)a5;
- (id)customLabelRowValue;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_doneButtonTapped;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSLabelPickerViewController

- (SSLabelPickerViewController)initWithAssociatedPlanItem:(id)a3 initialLabel:(id)a4 predefinedUserLabels:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SSLabelPickerViewController;
  v12 = [(OBTableWelcomeController *)&v15 initWithTitle:0 detailText:0 symbolName:0 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_associatedPlanItem, a3);
    objc_storeStrong(&v13->_initialLabel, a4);
    objc_storeStrong(&v13->_predefinedUserLabels, a5);
  }

  return v13;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = SSLabelPickerViewController;
  [(TSOBTableWelcomeController *)&v35 viewDidLoad];
  initialLabel = self->_initialLabel;
  if (!initialLabel)
  {
    v4 = [(NSArray *)self->_predefinedUserLabels objectAtIndexedSubscript:0];
    v5 = self->_initialLabel;
    self->_initialLabel = v4;

    initialLabel = self->_initialLabel;
  }

  v6 = [(CTUserLabel *)initialLabel indexInPredefinedLabels:self->_predefinedUserLabels];
  if (v6 == -1)
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
    objc_storeStrong(&self->_customLabel, self->_initialLabel);
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
  }

  objc_storeStrong(&self->_chosenLabelIndexPath, v7);
  v8 = [(OBBaseWelcomeController *)self navigationItem];
  [v8 setRightBarButtonItem:0 animated:0];

  v9 = [(OBBaseWelcomeController *)self navigationItem];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped];
  [v9 setLeftBarButtonItem:v10 animated:0];

  v11 = [(CTCellularPlanItem *)self->_associatedPlanItem phoneNumber];
  v12 = [v11 length];

  associatedPlanItem = self->_associatedPlanItem;
  if (v12)
  {
    v14 = [(CTCellularPlanItem *)associatedPlanItem phoneNumber];
    v15 = [v14 formattedPhoneNumber];
  }

  else
  {
    v17 = [(CTCellularPlanItem *)associatedPlanItem carrierName];
    v18 = [v17 length];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v14 localizedStringForKey:@"TITLE_%@_PLAN" value:&stru_28753DF48 table:@"Localizable"];
      v21 = [(CTCellularPlanItem *)self->_associatedPlanItem carrierName];
      v16 = [v19 stringWithFormat:v20, v21];

      goto LABEL_11;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CELLULAR_PLAN_LABEL" value:&stru_28753DF48 table:@"Localizable"];
  }

  v16 = v15;
LABEL_11:

  v22 = [(OBBaseWelcomeController *)self navigationItem];
  [v22 setTitle:v16];

  v23 = objc_alloc(MEMORY[0x277D75B40]);
  v24 = [v23 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v24];

  v25 = [(OBTableWelcomeController *)self tableView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(OBTableWelcomeController *)self tableView];
  [v26 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v27 = [(OBTableWelcomeController *)self tableView];
  v28 = [MEMORY[0x277D75348] clearColor];
  [v27 setBackgroundColor:v28];

  v29 = [(OBTableWelcomeController *)self tableView];
  [v29 setDataSource:self];

  v30 = [(OBTableWelcomeController *)self tableView];
  [v30 setDelegate:self];

  v31 = [(OBTableWelcomeController *)self tableView];
  [v31 setScrollEnabled:1];

  v32 = [(OBTableWelcomeController *)self tableView];
  [v32 setAllowsMultipleSelection:0];

  v33 = [(OBTableWelcomeController *)self tableView];
  [v33 reloadData];

  v34 = [(OBTableWelcomeController *)self tableView];
  [v34 layoutIfNeeded];

  [(SSLabelPickerViewController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSLabelPickerViewController;
  [(SSLabelPickerViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SSLabelPickerViewController *)self view];
  [v3 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = SSLabelPickerViewController;
  [(SSLabelPickerViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = SSLabelPickerViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (CTUserLabel)chosenLabel
{
  v3 = self->_chosenLabelIndexPath;
  if ([(NSIndexPath *)v3 section])
  {
    v4 = objc_alloc(MEMORY[0x277CF96F0]);
    v5 = [(OBTableWelcomeController *)self tableView];
    v6 = [(NSIndexPath *)v5 cellForRowAtIndexPath:v3];

    v7 = [v6 editableTextField];
    v8 = [v7 text];
    v9 = [v4 initWithLabel:v8];

    v3 = v5;
  }

  else
  {
    v9 = [(NSArray *)self->_predefinedUserLabels objectAtIndexedSubscript:[(NSIndexPath *)v3 row]];
  }

  return v9;
}

- (id)customLabelRowValue
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [(SSLabelPickerViewController *)self customLabelIndexPath];
  v5 = [v3 cellForRowAtIndexPath:v4];
  v6 = [v5 editableTextField];
  v7 = [v6 text];

  return v7;
}

- (void)_doneButtonTapped
{
  v3 = [(SSLabelPickerViewController *)self view];
  [v3 endEditing:1];

  v5 = [(SSLabelPickerViewController *)self navigationController];
  v4 = [v5 popViewControllerAnimated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return [(NSArray *)self->_predefinedUserLabels count];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CUSTOM_LABEL" value:&stru_28753DF48 table:@"Localizable"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1000 reuseIdentifier:@"customlabel"];
    predefinedUserLabels = self->_predefinedUserLabels;
    v8 = [(SSLabelPickerViewController *)self chosenLabel];
    v9 = [(NSArray *)predefinedUserLabels containsObject:v8];

    v10 = [(NSIndexPath *)self->_chosenLabelIndexPath isEqual:v5];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"TYPE_LABEL_HERE" value:&stru_28753DF48 table:@"Localizable"];
    v13 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [v13 setPlaceholder:v12];

    v14 = [(CTUserLabel *)self->_customLabel label];
    v15 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [v15 setText:v14];

    v16 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [v16 setClearButtonMode:1];

    v17 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [v17 setReturnKeyType:0];

    v18 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [v18 setDelegate:self];

    [(TSCellularPlanLabelTableViewCell *)v6 setSelectionStyle:0];
    [(TSCellularPlanLabelTableViewCell *)v6 setTextFieldOffset:0.01];
    if (v9)
    {
      v19 = 0;
    }

    else
    {
      self = [(CTUserLabel *)self->_customLabel label];
      v19 = [(SSLabelPickerViewController *)self length]== 0;
    }

    v27 = [(TSCellularPlanLabelTableViewCell *)v6 textLabel];
    [v27 setEnabled:v19];

    if (!v9)
    {
    }

    if (v10)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    [(TSCellularPlanLabelTableViewCell *)v6 setAccessoryType:v28];
  }

  else
  {
    v20 = [(NSIndexPath *)self->_chosenLabelIndexPath isEqual:v5];
    v21 = [[TSCellularPlanLabelTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"label"];
    v6 = v21;
    if (v20)
    {
      v22 = 3;
    }

    else
    {
      v22 = 0;
    }

    [(TSCellularPlanLabelTableViewCell *)v21 setAccessoryType:v22];
    v23 = self->_predefinedUserLabels;
    v24 = [v5 row];

    v25 = [(NSArray *)v23 objectAtIndexedSubscript:v24];
    v26 = [v25 label];
    [(TSCellularPlanLabelTableViewCell *)v6 setLabelWithNoBadge:v26];
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
    v10 = [v17 cellForRowAtIndexPath:v9];
    v11 = [v10 editableTextField];
    v12 = [v11 text];
    v13 = [v12 length];

    if (!v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:&stru_28753DF48];
      customLabel = self->_customLabel;
      self->_customLabel = v14;
    }

    goto LABEL_7;
  }

  if ([v6 section] == 1)
  {
    v7 = [(SSLabelPickerViewController *)self customLabelRowValue];
    v8 = [v7 length];

    if (v8)
    {
LABEL_7:
      objc_storeStrong(&self->_chosenLabelIndexPath, a4);
    }
  }

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 reloadData];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v16 = [a3 text];
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v16 stringByTrimmingCharactersInSet:v4];

  if ([v5 length])
  {
    if ([v5 length] >= 0x1F)
    {
      v6 = [v5 length];
      if (v6 >= 0x1E)
      {
        v7 = 30;
      }

      else
      {
        v7 = v6;
      }

      v8 = [v5 rangeOfComposedCharacterSequencesForRange:{0, v7}];
      v10 = [v5 substringWithRange:{v8, v9}];

      v5 = v10;
    }

    v11 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:v5];
    customLabel = self->_customLabel;
    self->_customLabel = v11;

    v13 = [(SSLabelPickerViewController *)self customLabelIndexPath];
    chosenLabelIndexPath = self->_chosenLabelIndexPath;
    self->_chosenLabelIndexPath = v13;
  }

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 reloadData];
}

@end