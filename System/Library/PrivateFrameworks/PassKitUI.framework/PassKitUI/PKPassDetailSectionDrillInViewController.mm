@interface PKPassDetailSectionDrillInViewController
- (PKPassDetailSectionDrillInViewController)initWithPass:(id)pass field:(id)field useBridgeStyle:(BOOL)style isShowingSecureInformation:(BOOL)information;
@end

@implementation PKPassDetailSectionDrillInViewController

- (PKPassDetailSectionDrillInViewController)initWithPass:(id)pass field:(id)field useBridgeStyle:(BOOL)style isShowingSecureInformation:(BOOL)information
{
  informationCopy = information;
  styleCopy = style;
  v25[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  fieldCopy = field;
  v24.receiver = self;
  v24.super_class = PKPassDetailSectionDrillInViewController;
  v12 = [(PKDynamicTableViewController *)&v24 init];
  if (v12)
  {
    v13 = [PKConfigurablePassDetailSectionsController alloc];
    sectionIdentifiers = [fieldCopy sectionIdentifiers];
    v15 = [(PKConfigurablePassDetailSectionsController *)v13 initWithPaymentPass:passCopy forSelectSections:sectionIdentifiers];
    sectionController = v12->_sectionController;
    v12->_sectionController = v15;

    [(PKConfigurablePassDetailSectionsController *)v12->_sectionController setUseBridgeStyle:styleCopy];
    v25[0] = v12->_sectionController;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(PKDynamicTableViewController *)v12 setSectionControllers:v17];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKPassDetailSectionDrillInViewController *)v12 navigationItem];
      v19 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v19 configureWithOpaqueBackground];
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [v19 setBackgroundColor:systemBackgroundColor];

      [navigationItem setStandardAppearance:v19];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:1.0];
    }

    localizedTitle = [fieldCopy localizedTitle];
    [(PKPassDetailSectionDrillInViewController *)v12 setTitle:localizedTitle];

    if (informationCopy)
    {
      tableView = [(PKPassDetailSectionDrillInViewController *)v12 tableView];
      [tableView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
    }
  }

  return v12;
}

@end