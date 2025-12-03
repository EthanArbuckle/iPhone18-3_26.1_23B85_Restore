@interface PKApplyFocusedPickerViewController
- (PKApplyFocusedPickerViewController)initWithPicker:(id)picker;
- (id)_recomputeSections;
- (void)didSelectCell;
- (void)recomputeSectionsWithReload:(BOOL)reload;
- (void)reloadDataAnimated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation PKApplyFocusedPickerViewController

- (PKApplyFocusedPickerViewController)initWithPicker:(id)picker
{
  pickerCopy = picker;
  v11.receiver = self;
  v11.super_class = PKApplyFocusedPickerViewController;
  v6 = [(PKApplyFocusedPickerViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, picker);
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
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [(PKApplyFocusedPickerViewController *)self recomputeSectionsWithReload:0];
  v4 = PKProvisioningBackgroundColor();
  [collectionView setBackgroundColor:v4];
  view = [(PKApplyFocusedPickerViewController *)self view];
  [view setBackgroundColor:v4];

  navigationItem = [(PKApplyFocusedPickerViewController *)self navigationItem];
  localizedDisplayName = [(PKPaymentSetupFieldPicker *)self->_picker localizedDisplayName];
  [navigationItem setTitle:localizedDisplayName];

  [navigationItem setBackButtonDisplayMode:0];
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

- (void)reloadDataAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = PKApplyFocusedPickerViewController;
  [(PKDynamicCollectionViewController *)&v6 reloadDataAnimated:?];
  _recomputeSections = [(PKApplyFocusedPickerViewController *)self _recomputeSections];
  [(PKDynamicCollectionViewController *)self setSections:_recomputeSections animated:animatedCopy];
}

- (void)recomputeSectionsWithReload:(BOOL)reload
{
  reloadCopy = reload;
  _recomputeSections = [(PKApplyFocusedPickerViewController *)self _recomputeSections];
  if (reloadCopy)
  {
    [(PKDynamicCollectionViewController *)self setSections:_recomputeSections animated:1];
  }

  dynamicCollectionDelegate = [(PKApplyFocusedPickerViewController *)self dynamicCollectionDelegate];
  v6 = dynamicCollectionDelegate;
  if (dynamicCollectionDelegate)
  {
    [dynamicCollectionDelegate recomputeSectionsWithReload:reloadCopy];
  }
}

- (void)didSelectCell
{
  currentValue = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];

  if (currentValue)
  {
    navigationController = [(PKApplyFocusedPickerViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

@end