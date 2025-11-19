@interface PKApplyFocusedPickerViewController
- (PKApplyFocusedPickerViewController)initWithPicker:(id)a3;
- (id)_recomputeSections;
- (void)didSelectCell;
- (void)recomputeSectionsWithReload:(BOOL)a3;
- (void)reloadDataAnimated:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKApplyFocusedPickerViewController

- (PKApplyFocusedPickerViewController)initWithPicker:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKApplyFocusedPickerViewController;
  v6 = [(PKApplyFocusedPickerViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, a3);
    v8 = [[PKApplyListPickerSectionController alloc] initWithPicker:v7->_picker];
    pickerSectionController = v7->_pickerSectionController;
    v7->_pickerSectionController = v8;

    [(PKApplyCollectionViewSectionController *)v7->_pickerSectionController setDynamicCollectionDelegate:v7];
  }

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKApplyFocusedPickerViewController;
  [(PKDynamicCollectionViewController *)&v8 viewDidLoad];
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  [(PKApplyFocusedPickerViewController *)self recomputeSectionsWithReload:0];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];
  v5 = [(PKApplyFocusedPickerViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(PKApplyFocusedPickerViewController *)self navigationItem];
  v7 = [(PKPaymentSetupFieldPicker *)self->_picker localizedDisplayName];
  [v6 setTitle:v7];

  [v6 setBackButtonDisplayMode:0];
}

- (id)_recomputeSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPaymentSetupFieldPicker *)self->_picker pickerType]== 2)
  {
    [v3 addObject:self->_pickerSectionController];
  }

  v4 = [v3 copy];

  return v4;
}

- (void)reloadDataAnimated:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PKApplyFocusedPickerViewController;
  [(PKDynamicCollectionViewController *)&v6 reloadDataAnimated:?];
  v5 = [(PKApplyFocusedPickerViewController *)self _recomputeSections];
  [(PKDynamicCollectionViewController *)self setSections:v5 animated:v3];
}

- (void)recomputeSectionsWithReload:(BOOL)a3
{
  v3 = a3;
  v7 = [(PKApplyFocusedPickerViewController *)self _recomputeSections];
  if (v3)
  {
    [(PKDynamicCollectionViewController *)self setSections:v7 animated:1];
  }

  v5 = [(PKApplyFocusedPickerViewController *)self dynamicCollectionDelegate];
  v6 = v5;
  if (v5)
  {
    [v5 recomputeSectionsWithReload:v3];
  }
}

- (void)didSelectCell
{
  v3 = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];

  if (v3)
  {
    v5 = [(PKApplyFocusedPickerViewController *)self navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

@end