@interface PKTransitCardNumberViewController
+ (BOOL)canShowForPass:(id)pass;
- (PKTransitCardNumberViewController)initWithPass:(id)pass;
@end

@implementation PKTransitCardNumberViewController

- (PKTransitCardNumberViewController)initWithPass:(id)pass
{
  v15[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v14.receiver = self;
  v14.super_class = PKTransitCardNumberViewController;
  v6 = -[PKDynamicTableViewController initWithStyle:](&v14, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
    v8 = [[PKPassDetailsCardInfoSectionController alloc] initWithPass:v7->_pass sectionMode:1 detailViewStyle:0 delegate:0];
    cardInfoSectionController = v7->_cardInfoSectionController;
    v7->_cardInfoSectionController = v8;

    [(PKPassDetailsCardInfoSectionController *)v7->_cardInfoSectionController setHideSectionTitles:1];
    v15[0] = v7->_cardInfoSectionController;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(PKDynamicTableViewController *)v7 setSectionControllers:v10];

    navigationItem = [(PKTransitCardNumberViewController *)v7 navigationItem];
    v12 = PKLocalizedString(&cfstr_SettingsViewTr.isa, 0);
    [navigationItem setTitle:v12];
  }

  return v7;
}

+ (BOOL)canShowForPass:(id)pass
{
  passCopy = pass;
  v4 = [passCopy activationState] != 2 && +[PKPassDetailsCardInfoSectionController hasCompactDetailsForPaymentPass:](PKPassDetailsCardInfoSectionController, "hasCompactDetailsForPaymentPass:", passCopy);

  return v4;
}

@end