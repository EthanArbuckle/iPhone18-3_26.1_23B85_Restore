@interface PKPaymentAutoReloadSetupSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (PKPaymentAutoReloadSetupSectionController)initWithDelegate:(id)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentAutoReloadSetupSectionController

- (PKPaymentAutoReloadSetupSectionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = PKPaymentAutoReloadSetupSectionController;
  v6 = [(PKPaymentPassDetailSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
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
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPaymentAutoReloadSetupSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  v4 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:passCopy];
  if (v4)
  {
    v5 = [passCopy activationState] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  v7 = PKLocalizedPaymentString(&cfstr_PassDetailsUse.isa);
  v8 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v7 forTableView:viewCopy];

  [v8 setSelectionStyle:3];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  if (PKEqualObjects())
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentPassDetailAutoReloadActionSectionControllerDelegate *)self->_delegate presentAutoReloadSetupViewController];
    }
  }
}

@end