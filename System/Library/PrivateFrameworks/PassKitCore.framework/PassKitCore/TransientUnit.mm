@interface TransientUnit
- (id)commutePlanUnit;
@end

@implementation TransientUnit

- (id)commutePlanUnit
{
  planType = self->_planType;
  v4 = [PKTransactionCommutePlanUnit alloc];
  identifier = self->_identifier;
  if (planType == 1)
  {
    v6 = [v4 initWithCountPlanIdentifier:identifier currencyCode:self->_currency value:self->_value label:self->_label];
  }

  else
  {
    v6 = [v4 initWithTimedPlanIdentifier:identifier label:self->_label];
  }

  return v6;
}

@end