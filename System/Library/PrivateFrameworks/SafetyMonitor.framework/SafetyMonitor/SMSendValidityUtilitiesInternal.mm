@interface SMSendValidityUtilitiesInternal
+ (id)sendValidityAlertMessageFor:(int64_t)for;
- (SMSendValidityUtilitiesInternal)init;
@end

@implementation SMSendValidityUtilitiesInternal

+ (id)sendValidityAlertMessageFor:(int64_t)for
{
  static SendValidity.sendValidity(from:)(for, &v5);
  SendValidity.alertErrorMessage.getter();
  v3 = sub_2645D397C();

  return v3;
}

- (SMSendValidityUtilitiesInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SendValidityUtilities();
  return [(SMSendValidityUtilitiesInternal *)&v3 init];
}

@end