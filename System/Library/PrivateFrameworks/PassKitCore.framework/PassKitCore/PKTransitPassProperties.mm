@interface PKTransitPassProperties
- (NSString)transitBalanceCurrencyCode;
- (PKFelicaPassProperties)felicaProperties;
@end

@implementation PKTransitPassProperties

- (PKFelicaPassProperties)felicaProperties
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)transitBalanceCurrencyCode
{
  balanceAmount = [(PKStoredValuePassProperties *)self balanceAmount];
  currency = [balanceAmount currency];

  return currency;
}

@end