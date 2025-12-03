@interface PKPagedTransactionListDataSourceData
- (PKPagedTransactionListDataSourceData)initWithWalletTotalCount:(id)count bankConnectTotalCount:(id)totalCount transactions:(id)transactions transactionIdentifiers:(id)identifiers transactionSourceIdentifiers:(id)sourceIdentifiers transactionSourceIdentifierToPass:(id)pass transactionIDToFPANID:(id)d fpanIDToPass:(id)self0 transactionIDToInstitution:(id)self1;
@end

@implementation PKPagedTransactionListDataSourceData

- (PKPagedTransactionListDataSourceData)initWithWalletTotalCount:(id)count bankConnectTotalCount:(id)totalCount transactions:(id)transactions transactionIdentifiers:(id)identifiers transactionSourceIdentifiers:(id)sourceIdentifiers transactionSourceIdentifierToPass:(id)pass transactionIDToFPANID:(id)d fpanIDToPass:(id)self0 transactionIDToInstitution:(id)self1
{
  countCopy = count;
  totalCountCopy = totalCount;
  transactionsCopy = transactions;
  identifiersCopy = identifiers;
  sourceIdentifiersCopy = sourceIdentifiers;
  passCopy = pass;
  dCopy = d;
  toPassCopy = toPass;
  institutionCopy = institution;
  v30.receiver = self;
  v30.super_class = PKPagedTransactionListDataSourceData;
  v19 = [(PKPagedTransactionListDataSourceData *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_walletTotalCount, count);
    objc_storeStrong(&v20->_bankConnectTotalCount, totalCount);
    objc_storeStrong(&v20->_transactions, transactions);
    objc_storeStrong(&v20->_transactionIdentifiers, identifiers);
    objc_storeStrong(&v20->_transactionSourceIdentifiers, sourceIdentifiers);
    objc_storeStrong(&v20->_transactionSourceIdentifierToPass, pass);
    objc_storeStrong(&v20->_transactionIDToFPANID, d);
    objc_storeStrong(&v20->_fpanIDToPass, toPass);
    objc_storeStrong(&v20->_transactionIDToInstitution, institution);
  }

  return v20;
}

@end