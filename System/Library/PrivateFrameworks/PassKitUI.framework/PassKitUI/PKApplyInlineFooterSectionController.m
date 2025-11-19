@interface PKApplyInlineFooterSectionController
- (PKApplyInlineFooterSectionController)initWithController:(id)a3 applyPage:(id)a4 content:(id)a5 delegate:(id)a6;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_configureContentSection:(id)a3;
- (void)didTapFooterLink:(id)a3;
@end

@implementation PKApplyInlineFooterSectionController

- (PKApplyInlineFooterSectionController)initWithController:(id)a3 applyPage:(id)a4 content:(id)a5 delegate:(id)a6
{
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PKApplyInlineFooterSectionController;
  v13 = [(PKApplyCollectionViewSectionController *)&v18 initWithController:a3 applyPage:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v12);
    objc_storeStrong(&v14->_content, a5);
    v15 = [v11 footerText];
    identifier = v14->_identifier;
    v14->_identifier = v15;
  }

  return v14;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_identifier;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  identifier = self->_identifier;
  v8 = v5;
  v9 = identifier;
  v10 = v9;
  if (v9 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !v9)
  {

    goto LABEL_9;
  }

  v11 = [(NSString *)v8 isEqualToString:v9];

  if (v11)
  {
LABEL_7:
    [(PKApplyInlineFooterSectionController *)self _configureContentSection:v6];
  }

LABEL_9:

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  identifier = self->_identifier;
  v9 = v7;
  v10 = identifier;
  v11 = v10;
  if (v10 == v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [(NSString *)v9 isEqualToString:v10];
    }
  }

  v20.receiver = self;
  v20.super_class = PKApplyInlineFooterSectionController;
  v13 = [(PKApplyCollectionViewSectionController *)&v20 layoutWithLayoutEnvironment:v6 sectionIdentifier:v9];
  [v13 contentInsets];
  v16 = v15;
  if (v12)
  {
    v17 = 16.0;
  }

  else
  {
    v17 = v14;
  }

  v18 = PKSetupListViewConstantsViewMargin();
  [v13 setContentInsets:{v17, v18, v16, v18}];

  return v13;
}

- (void)didTapFooterLink:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didTapFooterLink:v5];
  }
}

- (void)_configureContentSection:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PKApplySavingsInlineTermsRow alloc] initWithContent:self->_content delegate:self];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 appendItems:v6];
}

@end