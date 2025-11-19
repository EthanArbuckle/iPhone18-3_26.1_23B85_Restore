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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)transitBalanceCurrencyCode
{
  v2 = [(PKStoredValuePassProperties *)self balanceAmount];
  v3 = [v2 currency];

  return v3;
}

@end