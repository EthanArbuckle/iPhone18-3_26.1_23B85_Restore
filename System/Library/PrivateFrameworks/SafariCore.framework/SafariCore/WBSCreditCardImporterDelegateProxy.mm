@interface WBSCreditCardImporterDelegateProxy
- (WBSCreditCardImporterDelegateProxy)initWithDelegate:(id)delegate;
- (void)importCreditCardDataWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date;
@end

@implementation WBSCreditCardImporterDelegateProxy

- (WBSCreditCardImporterDelegateProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WBSCreditCardImporterDelegateProxy;
  v6 = [(WBSCreditCardImporterDelegateProxy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = v7;
  }

  return v7;
}

- (void)importCreditCardDataWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date
{
  delegate = self->_delegate;
  ++self->_numberOfCreditCardsImported;
  [(WBSCreditCardImporterDelegate *)delegate importCreditCardDataWithCardNumber:number cardName:name cardholderName:cardholderName cardExpirationMonth:month cardExpirationYear:year lastUsedDate:date];
}

@end