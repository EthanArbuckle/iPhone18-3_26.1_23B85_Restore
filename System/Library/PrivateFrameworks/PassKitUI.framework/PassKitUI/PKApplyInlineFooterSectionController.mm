@interface PKApplyInlineFooterSectionController
- (PKApplyInlineFooterSectionController)initWithController:(id)controller applyPage:(id)page content:(id)content delegate:(id)delegate;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_configureContentSection:(id)section;
- (void)didTapFooterLink:(id)link;
@end

@implementation PKApplyInlineFooterSectionController

- (PKApplyInlineFooterSectionController)initWithController:(id)controller applyPage:(id)page content:(id)content delegate:(id)delegate
{
  contentCopy = content;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PKApplyInlineFooterSectionController;
  v13 = [(PKApplyCollectionViewSectionController *)&v18 initWithController:controller applyPage:page];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v14->_content, content);
    footerText = [contentCopy footerText];
    identifier = v14->_identifier;
    v14->_identifier = footerText;
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

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  identifier = self->_identifier;
  v8 = identifierCopy;
  identifierCopy2 = identifier;
  v10 = identifierCopy2;
  if (identifierCopy2 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !identifierCopy2)
  {

    goto LABEL_9;
  }

  v11 = [(NSString *)v8 isEqualToString:identifierCopy2];

  if (v11)
  {
LABEL_7:
    [(PKApplyInlineFooterSectionController *)self _configureContentSection:v6];
  }

LABEL_9:

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  identifier = self->_identifier;
  v9 = identifierCopy;
  identifierCopy2 = identifier;
  v11 = identifierCopy2;
  if (identifierCopy2 == v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v9 && identifierCopy2)
    {
      v12 = [(NSString *)v9 isEqualToString:identifierCopy2];
    }
  }

  v20.receiver = self;
  v20.super_class = PKApplyInlineFooterSectionController;
  v13 = [(PKApplyCollectionViewSectionController *)&v20 layoutWithLayoutEnvironment:environmentCopy sectionIdentifier:v9];
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

- (void)didTapFooterLink:(id)link
{
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didTapFooterLink:linkCopy];
  }
}

- (void)_configureContentSection:(id)section
{
  v7[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v5 = [[PKApplySavingsInlineTermsRow alloc] initWithContent:self->_content delegate:self];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [sectionCopy appendItems:v6];
}

@end