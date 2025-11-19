@interface PKPassDetailSectionDrillInViewController
- (PKPassDetailSectionDrillInViewController)initWithPass:(id)a3 field:(id)a4 useBridgeStyle:(BOOL)a5 isShowingSecureInformation:(BOOL)a6;
@end

@implementation PKPassDetailSectionDrillInViewController

- (PKPassDetailSectionDrillInViewController)initWithPass:(id)a3 field:(id)a4 useBridgeStyle:(BOOL)a5 isShowingSecureInformation:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v24.receiver = self;
  v24.super_class = PKPassDetailSectionDrillInViewController;
  v12 = [(PKDynamicTableViewController *)&v24 init];
  if (v12)
  {
    v13 = [PKConfigurablePassDetailSectionsController alloc];
    v14 = [v11 sectionIdentifiers];
    v15 = [(PKConfigurablePassDetailSectionsController *)v13 initWithPaymentPass:v10 forSelectSections:v14];
    sectionController = v12->_sectionController;
    v12->_sectionController = v15;

    [(PKConfigurablePassDetailSectionsController *)v12->_sectionController setUseBridgeStyle:v7];
    v25[0] = v12->_sectionController;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(PKDynamicTableViewController *)v12 setSectionControllers:v17];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v18 = [(PKPassDetailSectionDrillInViewController *)v12 navigationItem];
      v19 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v19 configureWithOpaqueBackground];
      v20 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [v19 setBackgroundColor:v20];

      [v18 setStandardAppearance:v19];
      [v18 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:1.0];
    }

    v21 = [v11 localizedTitle];
    [(PKPassDetailSectionDrillInViewController *)v12 setTitle:v21];

    if (v6)
    {
      v22 = [(PKPassDetailSectionDrillInViewController *)v12 tableView];
      [v22 pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
    }
  }

  return v12;
}

@end