@interface PKTransitCardNumberViewController
+ (BOOL)canShowForPass:(id)a3;
- (PKTransitCardNumberViewController)initWithPass:(id)a3;
@end

@implementation PKTransitCardNumberViewController

- (PKTransitCardNumberViewController)initWithPass:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PKTransitCardNumberViewController;
  v6 = -[PKDynamicTableViewController initWithStyle:](&v14, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
    v8 = [[PKPassDetailsCardInfoSectionController alloc] initWithPass:v7->_pass sectionMode:1 detailViewStyle:0 delegate:0];
    cardInfoSectionController = v7->_cardInfoSectionController;
    v7->_cardInfoSectionController = v8;

    [(PKPassDetailsCardInfoSectionController *)v7->_cardInfoSectionController setHideSectionTitles:1];
    v15[0] = v7->_cardInfoSectionController;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(PKDynamicTableViewController *)v7 setSectionControllers:v10];

    v11 = [(PKTransitCardNumberViewController *)v7 navigationItem];
    v12 = PKLocalizedString(&cfstr_SettingsViewTr.isa, 0);
    [v11 setTitle:v12];
  }

  return v7;
}

+ (BOOL)canShowForPass:(id)a3
{
  v3 = a3;
  v4 = [v3 activationState] != 2 && +[PKPassDetailsCardInfoSectionController hasCompactDetailsForPaymentPass:](PKPassDetailsCardInfoSectionController, "hasCompactDetailsForPaymentPass:", v3);

  return v4;
}

@end