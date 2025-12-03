@interface PKAccountSupportTopicsSectionController
- (PKAccountSupportTopicsSectionController)initWithAccount:(id)account topics:(id)topics sectionTitle:(id)title delegate:(id)delegate;
- (id)_decorateListCell:(id)cell forRowItem:(id)item;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKAccountSupportTopicsSectionController

- (PKAccountSupportTopicsSectionController)initWithAccount:(id)account topics:(id)topics sectionTitle:(id)title delegate:(id)delegate
{
  accountCopy = account;
  topicsCopy = topics;
  titleCopy = title;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = PKAccountSupportTopicsSectionController;
  v15 = [(PKPaymentSetupListSectionController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v16->_topics, topics);
    objc_storeStrong(&v16->_sectionTitle, title);
    objc_initWeak(&location, v16);
    v17 = MEMORY[0x1E69DC800];
    v18 = objc_opt_class();
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __88__PKAccountSupportTopicsSectionController_initWithAccount_topics_sectionTitle_delegate___block_invoke;
    v24 = &unk_1E8012088;
    objc_copyWeak(&v25, &location);
    v19 = [v17 registrationWithCellClass:v18 configurationHandler:&v21];
    [(PKPaymentSetupListSectionController *)v16 setCellRegistration:v19, v21, v22, v23, v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __88__PKAccountSupportTopicsSectionController_initWithAccount_topics_sectionTitle_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained _decorateListCell:v9 forRowItem:v6];
  }
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  sectionTitle = self->_sectionTitle;
  v11[0] = *MEMORY[0x1E69DB648];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC70], 0, 0);
  v12[0] = v6;
  v11[1] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12[1] = secondaryLabelColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v4 initWithString:sectionTitle attributes:v8];

  return v9;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_topics];

  return v5;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKAccountSupportTopicsSectionController;
  environmentCopy = environment;
  defaultListLayout = [(PKPaymentSetupListSectionController *)&v8 defaultListLayout];
  [defaultListLayout setFooterMode:{1, v8.receiver, v8.super_class}];
  v6 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];

  return v6;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];

    v5 = itemCopy;
    explanation = [v5 explanation];
    if (explanation)
    {
    }

    else if ([v5 supportsBusinessChat])
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 openBusinessChatForTopic:v5];
LABEL_7:

      goto LABEL_8;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 showExplanationForTopic:v5];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_decorateListCell:(id)cell forRowItem:(id)item
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  itemCopy = item;
  cellCopy = cell;
  valueCellConfiguration = [v5 valueCellConfiguration];
  title = [itemCopy title];

  [valueCellConfiguration setText:title];
  [cellCopy setContentConfiguration:valueCellConfiguration];
  v10 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [cellCopy setAccessories:v11];

  return valueCellConfiguration;
}

@end