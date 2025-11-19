@interface PKPaymentAutoReloadSetupSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (PKPaymentAutoReloadSetupSectionController)initWithDelegate:(id)a3;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPaymentAutoReloadSetupSectionController

- (PKPaymentAutoReloadSetupSectionController)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentAutoReloadSetupSectionController;
  v6 = [(PKPaymentPassDetailSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"AutoReloadSetupSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPaymentAutoReloadSetupSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = a3;
  v4 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:v3];
  if (v4)
  {
    v5 = [v3 activationState] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v6 = a3;
  v7 = PKLocalizedPaymentString(&cfstr_PassDetailsUse.isa);
  v8 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v7 forTableView:v6];

  [v8 setSelectionStyle:3];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v7 = a4;
  if (PKEqualObjects())
  {
    [v8 deselectRowAtIndexPath:v7 animated:1];
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentPassDetailAutoReloadActionSectionControllerDelegate *)self->_delegate presentAutoReloadSetupViewController];
    }
  }
}

@end