@interface PaymentAutomaticSelectionCriterion
+ (id)_propertySettersForCriterion;
@end

@implementation PaymentAutomaticSelectionCriterion

+ (id)_propertySettersForCriterion
{
  v4[0] = @"type";
  v4[1] = @"mask";
  v5[0] = &stru_100861CA0;
  v5[1] = &stru_100861CC0;
  v4[2] = @"supports_express";
  v4[3] = @"supports_in_session_express";
  v5[2] = &stru_100861CE0;
  v5[3] = &stru_100861D00;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end