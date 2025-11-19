@interface PKAccountSupportTopicsSectionController
- (PKAccountSupportTopicsSectionController)initWithAccount:(id)a3 topics:(id)a4 sectionTitle:(id)a5 delegate:(id)a6;
- (id)_decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)headerAttributedStringForIdentifier:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKAccountSupportTopicsSectionController

- (PKAccountSupportTopicsSectionController)initWithAccount:(id)a3 topics:(id)a4 sectionTitle:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = PKAccountSupportTopicsSectionController;
  v15 = [(PKPaymentSetupListSectionController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v14);
    objc_storeStrong(&v16->_account, a3);
    objc_storeStrong(&v16->_topics, a4);
    objc_storeStrong(&v16->_sectionTitle, a5);
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

- (id)headerAttributedStringForIdentifier:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  sectionTitle = self->_sectionTitle;
  v11[0] = *MEMORY[0x1E69DB648];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC70], 0, 0);
  v12[0] = v6;
  v11[1] = *MEMORY[0x1E69DB650];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v4 initWithString:sectionTitle attributes:v8];

  return v9;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_topics];

  return v5;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKAccountSupportTopicsSectionController;
  v4 = a3;
  v5 = [(PKPaymentSetupListSectionController *)&v8 defaultListLayout];
  [v5 setFooterMode:{1, v8.receiver, v8.super_class}];
  v6 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v5 layoutEnvironment:v4];

  return v6;
}

- (void)didSelectItem:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];

    v5 = v8;
    v6 = [v5 explanation];
    if (v6)
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

- (id)_decorateListCell:(id)a3 forRowItem:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  v6 = a4;
  v7 = a3;
  v8 = [v5 valueCellConfiguration];
  v9 = [v6 title];

  [v8 setText:v9];
  [v7 setContentConfiguration:v8];
  v10 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v7 setAccessories:v11];

  return v8;
}

@end