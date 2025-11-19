@interface PKPagedTransactionListDataSourceData
- (PKPagedTransactionListDataSourceData)initWithWalletTotalCount:(id)a3 bankConnectTotalCount:(id)a4 transactions:(id)a5 transactionIdentifiers:(id)a6 transactionSourceIdentifiers:(id)a7 transactionSourceIdentifierToPass:(id)a8 transactionIDToFPANID:(id)a9 fpanIDToPass:(id)a10 transactionIDToInstitution:(id)a11;
@end

@implementation PKPagedTransactionListDataSourceData

- (PKPagedTransactionListDataSourceData)initWithWalletTotalCount:(id)a3 bankConnectTotalCount:(id)a4 transactions:(id)a5 transactionIdentifiers:(id)a6 transactionSourceIdentifiers:(id)a7 transactionSourceIdentifierToPass:(id)a8 transactionIDToFPANID:(id)a9 fpanIDToPass:(id)a10 transactionIDToInstitution:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = PKPagedTransactionListDataSourceData;
  v19 = [(PKPagedTransactionListDataSourceData *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_walletTotalCount, a3);
    objc_storeStrong(&v20->_bankConnectTotalCount, a4);
    objc_storeStrong(&v20->_transactions, a5);
    objc_storeStrong(&v20->_transactionIdentifiers, a6);
    objc_storeStrong(&v20->_transactionSourceIdentifiers, a7);
    objc_storeStrong(&v20->_transactionSourceIdentifierToPass, a8);
    objc_storeStrong(&v20->_transactionIDToFPANID, a9);
    objc_storeStrong(&v20->_fpanIDToPass, a10);
    objc_storeStrong(&v20->_transactionIDToInstitution, a11);
  }

  return v20;
}

@end