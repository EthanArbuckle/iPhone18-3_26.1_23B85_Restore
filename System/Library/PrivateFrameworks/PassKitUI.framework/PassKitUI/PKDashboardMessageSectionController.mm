@interface PKDashboardMessageSectionController
- (PKDashboardMessageSectionController)initWithMessages:(id)a3 delegate:(id)a4;
- (PKDashboardMessageSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_decorateCell:(id)a3 forItem:(id)a4;
- (void)messagesView:(id)a3 scrolledToMessageWithIdentifier:(id)a4;
- (void)updateWithMessages:(id)a3 currentMessageIndex:(unint64_t)a4;
@end

@implementation PKDashboardMessageSectionController

- (PKDashboardMessageSectionController)initWithMessages:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKDashboardMessageSectionController;
  v8 = [(PKDashboardMessageSectionController *)&v12 init];
  if (v8)
  {
    v9 = [[PKDashboardMessageRowItem alloc] initWithMessages:v6 currentMessageIndex:0 messagesViewDelegate:v8];
    item = v8->_item;
    v8->_item = v9;

    objc_storeWeak(&v8->_delegate, v7);
    [(PKDashboardMessageSectionController *)v8 updateWithMessages:v6 currentMessageIndex:0];
  }

  return v8;
}

- (void)updateWithMessages:(id)a3 currentMessageIndex:(unint64_t)a4
{
  v10 = a3;
  v6 = [(PKDashboardMessageRowItem *)self->_item messages];
  if (!PKEqualObjects())
  {

    goto LABEL_5;
  }

  v7 = [(PKDashboardMessageRowItem *)self->_item currentMessageIndex];

  v8 = v10;
  if (v7 != a4)
  {
LABEL_5:
    [(PKDashboardMessageRowItem *)self->_item setMessages:v10];
    [(PKDashboardMessageRowItem *)self->_item setCurrentMessageIndex:a4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:1];

    v8 = v10;
  }
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"dashboardMessage";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_item;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69DC800];
    v6 = objc_opt_class();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PKDashboardMessageSectionController_cellRegistrationForItem___block_invoke;
    v9[3] = &unk_1E801C2D8;
    objc_copyWeak(&v10, &location);
    v7 = [v5 registrationWithCellClass:v6 configurationHandler:v9];
    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = 0;
  }

  objc_destroyWeak(&location);

  return v7;
}

void __63__PKDashboardMessageSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decorateCell:v7 forItem:v6];
}

- (void)_decorateCell:(id)a3 forItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PKDashboardMessagesView alloc];
  v12 = [(PKDashboardMessagesView *)v7 initWithInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v8 = [v5 messagesViewDelegate];
  [(PKDashboardMessagesView *)v12 setDelegate:v8];

  v9 = [v5 messages];
  v10 = [v5 currentMessageIndex];

  [(PKDashboardMessagesView *)v12 updateWithMessages:v9 currentIndex:v10];
  [v6 setHostedContentView:v12];
  v11 = [v6 backgroundConfiguration];
  [v11 setBackgroundInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [v6 setBackgroundConfiguration:v11];
}

- (void)messagesView:(id)a3 scrolledToMessageWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 messagesView:v10 scrolledToMessageWithIdentifier:v6];
  }
}

- (PKDashboardMessageSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end