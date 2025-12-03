@interface SSLabelPickerViewController
- (CTUserLabel)chosenLabel;
- (SSLabelPickerViewController)initWithAssociatedPlanItem:(id)item initialLabel:(id)label predefinedUserLabels:(id)labels;
- (id)customLabelRowValue;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_doneButtonTapped;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSLabelPickerViewController

- (SSLabelPickerViewController)initWithAssociatedPlanItem:(id)item initialLabel:(id)label predefinedUserLabels:(id)labels
{
  itemCopy = item;
  labelCopy = label;
  labelsCopy = labels;
  v15.receiver = self;
  v15.super_class = SSLabelPickerViewController;
  v12 = [(OBTableWelcomeController *)&v15 initWithTitle:0 detailText:0 symbolName:0 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_associatedPlanItem, item);
    objc_storeStrong(&v13->_initialLabel, label);
    objc_storeStrong(&v13->_predefinedUserLabels, labels);
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
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0 animated:0];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped];
  [navigationItem2 setLeftBarButtonItem:v10 animated:0];

  phoneNumber = [(CTCellularPlanItem *)self->_associatedPlanItem phoneNumber];
  v12 = [phoneNumber length];

  associatedPlanItem = self->_associatedPlanItem;
  if (v12)
  {
    phoneNumber2 = [(CTCellularPlanItem *)associatedPlanItem phoneNumber];
    formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
  }

  else
  {
    carrierName = [(CTCellularPlanItem *)associatedPlanItem carrierName];
    v18 = [carrierName length];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      phoneNumber2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [phoneNumber2 localizedStringForKey:@"TITLE_%@_PLAN" value:&stru_28753DF48 table:@"Localizable"];
      carrierName2 = [(CTCellularPlanItem *)self->_associatedPlanItem carrierName];
      v16 = [v19 stringWithFormat:v20, carrierName2];

      goto LABEL_11;
    }

    phoneNumber2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    formattedPhoneNumber = [phoneNumber2 localizedStringForKey:@"CELLULAR_PLAN_LABEL" value:&stru_28753DF48 table:@"Localizable"];
  }

  v16 = formattedPhoneNumber;
LABEL_11:

  navigationItem3 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem3 setTitle:v16];

  v23 = objc_alloc(MEMORY[0x277D75B40]);
  v24 = [v23 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v24];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDataSource:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setScrollEnabled:1];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setAllowsMultipleSelection:0];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 reloadData];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 layoutIfNeeded];

  [(SSLabelPickerViewController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSLabelPickerViewController;
  [(SSLabelPickerViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  view = [(SSLabelPickerViewController *)self view];
  [view layoutIfNeeded];

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
    tableView = [(OBTableWelcomeController *)self tableView];
    v6 = [(NSIndexPath *)tableView cellForRowAtIndexPath:v3];

    editableTextField = [v6 editableTextField];
    text = [editableTextField text];
    v9 = [v4 initWithLabel:text];

    v3 = tableView;
  }

  else
  {
    v9 = [(NSArray *)self->_predefinedUserLabels objectAtIndexedSubscript:[(NSIndexPath *)v3 row]];
  }

  return v9;
}

- (id)customLabelRowValue
{
  tableView = [(OBTableWelcomeController *)self tableView];
  customLabelIndexPath = [(SSLabelPickerViewController *)self customLabelIndexPath];
  v5 = [tableView cellForRowAtIndexPath:customLabelIndexPath];
  editableTextField = [v5 editableTextField];
  text = [editableTextField text];

  return text;
}

- (void)_doneButtonTapped
{
  view = [(SSLabelPickerViewController *)self view];
  [view endEditing:1];

  navigationController = [(SSLabelPickerViewController *)self navigationController];
  v4 = [navigationController popViewControllerAnimated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return [(NSArray *)self->_predefinedUserLabels count];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1000 reuseIdentifier:@"customlabel"];
    predefinedUserLabels = self->_predefinedUserLabels;
    chosenLabel = [(SSLabelPickerViewController *)self chosenLabel];
    v9 = [(NSArray *)predefinedUserLabels containsObject:chosenLabel];

    v10 = [(NSIndexPath *)self->_chosenLabelIndexPath isEqual:pathCopy];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"TYPE_LABEL_HERE" value:&stru_28753DF48 table:@"Localizable"];
    editableTextField = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [editableTextField setPlaceholder:v12];

    label = [(CTUserLabel *)self->_customLabel label];
    editableTextField2 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [editableTextField2 setText:label];

    editableTextField3 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [editableTextField3 setClearButtonMode:1];

    editableTextField4 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [editableTextField4 setReturnKeyType:0];

    editableTextField5 = [(TSCellularPlanLabelTableViewCell *)v6 editableTextField];
    [editableTextField5 setDelegate:self];

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

    textLabel = [(TSCellularPlanLabelTableViewCell *)v6 textLabel];
    [textLabel setEnabled:v19];

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
    v20 = [(NSIndexPath *)self->_chosenLabelIndexPath isEqual:pathCopy];
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
    v24 = [pathCopy row];

    v25 = [(NSArray *)v23 objectAtIndexedSubscript:v24];
    label2 = [v25 label];
    [(TSCellularPlanLabelTableViewCell *)v6 setLabelWithNoBadge:label2];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
    v10 = [viewCopy cellForRowAtIndexPath:v9];
    editableTextField = [v10 editableTextField];
    text = [editableTextField text];
    v13 = [text length];

    if (!v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:&stru_28753DF48];
      customLabel = self->_customLabel;
      self->_customLabel = v14;
    }

    goto LABEL_7;
  }

  if ([pathCopy section] == 1)
  {
    customLabelRowValue = [(SSLabelPickerViewController *)self customLabelRowValue];
    v8 = [customLabelRowValue length];

    if (v8)
    {
LABEL_7:
      objc_storeStrong(&self->_chosenLabelIndexPath, path);
    }
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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

    customLabelIndexPath = [(SSLabelPickerViewController *)self customLabelIndexPath];
    chosenLabelIndexPath = self->_chosenLabelIndexPath;
    self->_chosenLabelIndexPath = customLabelIndexPath;
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

@end