@interface PKPaymentPassDetailAutoReloadMerchantViewController
- (PKPaymentPassDetailAutoReloadMerchantViewController)initWithPass:(id)a3 viewStyle:(int64_t)a4 delegate:(id)a5;
@end

@implementation PKPaymentPassDetailAutoReloadMerchantViewController

- (PKPaymentPassDetailAutoReloadMerchantViewController)initWithPass:(id)a3 viewStyle:(int64_t)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = PKPaymentPassDetailAutoReloadMerchantViewController;
  v10 = -[PKDynamicTableViewController initWithStyle:](&v19, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [MEMORY[0x1E69DC888] linkColor];
    if (a4 == 2)
    {
      PKBridgeButtonTextColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] linkColor];
    }
    v13 = ;

    v14 = [[PKPaymentPassDetailAutoReloadMerchantSectionController alloc] initWithPass:v8 delegate:0];
    [(PKPaymentPassDetailAutoReloadMerchantSectionController *)v14 setSetupDelegate:v9];
    [(PKPaymentPassDetailSectionController *)v14 setLinkTextColor:v13];
    [v11 addObject:v14];
    if ([PKPaymentAutoReloadSetupSectionController validForPaymentPass:v8])
    {
      v15 = [[PKPaymentAutoReloadSetupSectionController alloc] initWithDelegate:v9];
      [(PKPaymentPassDetailSectionController *)v15 setLinkTextColor:v13];
      [v11 addObject:v15];
    }

    [(PKDynamicTableViewController *)v10 setSectionControllers:v11];
    v16 = [(PKPaymentPassDetailAutoReloadMerchantViewController *)v10 navigationItem];
    v17 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
    [v16 setTitle:v17];
  }

  return v10;
}

@end