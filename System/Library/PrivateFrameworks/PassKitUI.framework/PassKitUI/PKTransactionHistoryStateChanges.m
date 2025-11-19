@interface PKTransactionHistoryStateChanges
- (void)setAccount:(id)a3;
- (void)setActionItems:(id)a3;
- (void)setAssociatedInstallmentPlan:(id)a3;
- (void)setAssociatedReceipt:(id)a3;
- (void)setFeaturedTransaction:(id)a3;
- (void)setFeaturedTransactionActions:(id)a3;
- (void)setGroup:(id)a3;
- (void)setGroups:(id)a3;
- (void)setPeerPaymentPendingRequest:(id)a3;
- (void)setSelectedTransactions:(id)a3;
- (void)setTransactionHistory:(id)a3;
- (void)setType:(unint64_t)a3;
@end

@implementation PKTransactionHistoryStateChanges

- (void)setType:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setType:a3];
  self->_typeChanged = 1;
}

- (void)setFeaturedTransaction:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setFeaturedTransaction:a3];
  self->_featuredTransactionChanged = 1;
}

- (void)setSelectedTransactions:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setSelectedTransactions:a3];
  self->_selectedTransactionsChanged = 1;
}

- (void)setAssociatedInstallmentPlan:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setAssociatedInstallmentPlan:a3];
  self->_associatedInstallmentPlanChanged = 1;
}

- (void)setAssociatedReceipt:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setAssociatedReceipt:a3];
  self->_associatedReceiptChanged = 1;
}

- (void)setFeaturedTransactionActions:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setFeaturedTransactionActions:a3];
  self->_featuredTransactionActionsChanged = 1;
}

- (void)setActionItems:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setActionItems:a3];
  self->_actionItemsChanged = 1;
}

- (void)setGroup:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setGroup:a3];
  self->_groupChanged = 1;
}

- (void)setGroups:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setGroups:a3];
  self->_groupsChanged = 1;
}

- (void)setTransactionHistory:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setTransactionHistory:a3];
  self->_transactionHistoryChanged = 1;
}

- (void)setAccount:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setAccount:a3];
  self->_accountChanged = 1;
}

- (void)setPeerPaymentPendingRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryStateChanges;
  [(PKMutableTransactionHistoryState *)&v4 setPeerPaymentPendingRequest:a3];
  self->_peerPaymentPendingRequestChanged = 1;
}

@end