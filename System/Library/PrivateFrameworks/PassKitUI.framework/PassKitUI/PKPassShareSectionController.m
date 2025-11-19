@interface PKPassShareSectionController
- (PKPassShareSectionController)initWithIdentifiers:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
@end

@implementation PKPassShareSectionController

- (PKPassShareSectionController)initWithIdentifiers:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPassShareSectionController;
  v3 = [(PKPaymentSetupListSectionController *)&v6 initWithIdentifiers:a3];
  v4 = v3;
  if (v3)
  {
    [(PKPaymentSetupListSectionController *)v3 setHeaderDirectionalLayoutMargins:8.0, 0.0, 8.0, 0.0];
  }

  return v4;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = PKPassShareSectionController;
  v7 = [(PKPaymentSetupListSectionController *)&v19 layoutWithLayoutEnvironment:a3 sectionIdentifier:v6];
  [v7 contentInsets];
  v10 = v9;
  v12 = v11;
  v13 = 6.0;
  if (self->_useCompactInsets)
  {
    v14 = 6.0;
  }

  else
  {
    v15 = v8;
    v16 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:v6];

    if (v16)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 22.0;
    }

    if (!self->_useCompactInsets)
    {
      v17 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:v6];

      if (v17)
      {
        v13 = v15;
      }

      else
      {
        v13 = 10.0;
      }
    }
  }

  [v7 setContentInsets:{v14, v10, v13, v12}];

  return v7;
}

@end