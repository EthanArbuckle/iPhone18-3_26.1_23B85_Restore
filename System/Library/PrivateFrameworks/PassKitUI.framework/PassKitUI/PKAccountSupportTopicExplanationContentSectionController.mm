@interface PKAccountSupportTopicExplanationContentSectionController
- (PKAccountSupportTopicExplanationContentSectionController)initWithContent:(id)content;
- (id)cellRegistrationForItem:(id)item;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
@end

@implementation PKAccountSupportTopicExplanationContentSectionController

- (PKAccountSupportTopicExplanationContentSectionController)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = PKAccountSupportTopicExplanationContentSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, content);
  }

  return v7;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = v5;
  if (self->_content)
  {
    v9[0] = self->_content;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 appendItems:v7];
  }

  else
  {
    [v5 appendItems:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (id)cellRegistrationForItem:(id)item
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();

  return [v3 registrationWithCellClass:v4 configurationHandler:&__block_literal_global_85];
}

@end