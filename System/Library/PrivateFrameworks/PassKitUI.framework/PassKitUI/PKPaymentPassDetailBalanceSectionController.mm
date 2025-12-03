@interface PKPaymentPassDetailBalanceSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (PKPaymentPassDetailBalanceSectionController)initWithDelegate:(id)delegate;
- (PKPaymentPassDetailWrapperSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)setBalance:(id)balance;
@end

@implementation PKPaymentPassDetailBalanceSectionController

- (PKPaymentPassDetailBalanceSectionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PKPaymentPassDetailBalanceSectionController;
  v5 = [(PKPaymentPassDetailSectionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setBalance:(id)balance
{
  objc_storeStrong(&self->_balance, balance);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  sectionIdentifiers = [(PKPaymentPassDetailBalanceSectionController *)self sectionIdentifiers];
  [WeakRetained reloadSections:sectionIdentifiers];
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"BalanceSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment]|| !self->_balance)
  {
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPaymentPassDetailBalanceSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
  v4 = [devicePrimaryPaymentApplication paymentNetworkIdentifier] == 135;

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  v7 = PKLocalizedPaymentString(&cfstr_PassDetailsDef.isa);
  formattedStringValue = [(PKCurrencyAmount *)self->_balance formattedStringValue];
  v9 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v7 detailText:formattedStringValue cellStyle:1 forTableView:viewCopy];

  [v9 setSelectionStyle:0];

  return v9;
}

- (PKPaymentPassDetailWrapperSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end