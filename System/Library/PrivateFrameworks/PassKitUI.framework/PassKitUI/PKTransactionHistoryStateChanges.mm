@interface PKTransactionHistoryStateChanges
- (void)setAccount:(id)account;
- (void)setActionItems:(id)items;
- (void)setAssociatedInstallmentPlan:(id)plan;
- (void)setAssociatedReceipt:(id)receipt;
- (void)setFeaturedTransaction:(id)transaction;
- (void)setFeaturedTransactionActions:(id)actions;
- (void)setGroup:(id)group;
- (void)setGroups:(id)groups;
- (void)setPeerPaymentPendingRequest:(id)request;
- (void)setSelectedTransactions:(id)transactions;
- (void)setTransactionHistory:(id)history;
- (void)setType:(unint64_t)type;
@end

@implementation PKTransactionHistoryStateChanges

- (void)setType:(unint64_t)type
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setType:type];
  self->_typeChanged = 1;
}

- (void)setFeaturedTransaction:(id)transaction
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setFeaturedTransaction:transaction];
  self->_featuredTransactionChanged = 1;
}

- (void)setSelectedTransactions:(id)transactions
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setSelectedTransactions:transactions];
  self->_selectedTransactionsChanged = 1;
}

- (void)setAssociatedInstallmentPlan:(id)plan
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setAssociatedInstallmentPlan:plan];
  self->_associatedInstallmentPlanChanged = 1;
}

- (void)setAssociatedReceipt:(id)receipt
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setAssociatedReceipt:receipt];
  self->_associatedReceiptChanged = 1;
}

- (void)setFeaturedTransactionActions:(id)actions
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setFeaturedTransactionActions:actions];
  self->_featuredTransactionActionsChanged = 1;
}

- (void)setActionItems:(id)items
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setActionItems:items];
  self->_actionItemsChanged = 1;
}

- (void)setGroup:(id)group
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setGroup:group];
  self->_groupChanged = 1;
}

- (void)setGroups:(id)groups
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setGroups:groups];
  self->_groupsChanged = 1;
}

- (void)setTransactionHistory:(id)history
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setTransactionHistory:history];
  self->_transactionHistoryChanged = 1;
}

- (void)setAccount:(id)account
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setAccount:account];
  self->_accountChanged = 1;
}

- (void)setPeerPaymentPendingRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setPeerPaymentPendingRequest:request];
  self->_peerPaymentPendingRequestChanged = 1;
}

@end