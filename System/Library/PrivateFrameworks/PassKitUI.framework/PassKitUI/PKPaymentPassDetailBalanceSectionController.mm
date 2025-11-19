@interface PKPaymentPassDetailBalanceSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (PKPaymentPassDetailBalanceSectionController)initWithDelegate:(id)a3;
- (PKPaymentPassDetailWrapperSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)setBalance:(id)a3;
@end

@implementation PKPaymentPassDetailBalanceSectionController

- (PKPaymentPassDetailBalanceSectionController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPaymentPassDetailBalanceSectionController;
  v5 = [(PKPaymentPassDetailSectionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)setBalance:(id)a3
{
  objc_storeStrong(&self->_balance, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(PKPaymentPassDetailBalanceSectionController *)self sectionIdentifiers];
  [WeakRetained reloadSections:v4];
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
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPaymentPassDetailBalanceSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = [a3 devicePrimaryPaymentApplication];
  v4 = [v3 paymentNetworkIdentifier] == 135;

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v6 = a3;
  v7 = PKLocalizedPaymentString(&cfstr_PassDetailsDef.isa);
  v8 = [(PKCurrencyAmount *)self->_balance formattedStringValue];
  v9 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v7 detailText:v8 cellStyle:1 forTableView:v6];

  [v9 setSelectionStyle:0];

  return v9;
}

- (PKPaymentPassDetailWrapperSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end