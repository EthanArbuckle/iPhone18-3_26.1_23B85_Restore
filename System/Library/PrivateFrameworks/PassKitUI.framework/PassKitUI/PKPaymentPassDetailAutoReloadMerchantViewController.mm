@interface PKPaymentPassDetailAutoReloadMerchantViewController
- (PKPaymentPassDetailAutoReloadMerchantViewController)initWithPass:(id)pass viewStyle:(int64_t)style delegate:(id)delegate;
@end

@implementation PKPaymentPassDetailAutoReloadMerchantViewController

- (PKPaymentPassDetailAutoReloadMerchantViewController)initWithPass:(id)pass viewStyle:(int64_t)style delegate:(id)delegate
{
  passCopy = pass;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = PKPaymentPassDetailAutoReloadMerchantViewController;
  v10 = -[PKDynamicTableViewController initWithStyle:](&v19, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    if (style == 2)
    {
      PKBridgeButtonTextColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] linkColor];
    }
    v13 = ;

    v14 = [[PKPaymentPassDetailAutoReloadMerchantSectionController alloc] initWithPass:passCopy delegate:0];
    [(PKPaymentPassDetailAutoReloadMerchantSectionController *)v14 setSetupDelegate:delegateCopy];
    [(PKPaymentPassDetailSectionController *)v14 setLinkTextColor:v13];
    [v11 addObject:v14];
    if ([PKPaymentAutoReloadSetupSectionController validForPaymentPass:passCopy])
    {
      v15 = [[PKPaymentAutoReloadSetupSectionController alloc] initWithDelegate:delegateCopy];
      [(PKPaymentPassDetailSectionController *)v15 setLinkTextColor:v13];
      [v11 addObject:v15];
    }

    [(PKDynamicTableViewController *)v10 setSectionControllers:v11];
    navigationItem = [(PKPaymentPassDetailAutoReloadMerchantViewController *)v10 navigationItem];
    v17 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
    [navigationItem setTitle:v17];
  }

  return v10;
}

@end