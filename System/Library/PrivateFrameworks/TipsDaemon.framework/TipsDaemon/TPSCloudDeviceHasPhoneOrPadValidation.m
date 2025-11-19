@interface TPSCloudDeviceHasPhoneOrPadValidation
- (TPSCloudDeviceHasPhoneOrPadValidation)init;
- (TPSCloudDeviceHasPhoneOrPadValidation)initWithTargetContext:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSCloudDeviceHasPhoneOrPadValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_232DF6DDC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (TPSCloudDeviceHasPhoneOrPadValidation)initWithTargetContext:(id)a3
{
  sub_232E01470();
  v4 = sub_232E01450();

  v7.receiver = self;
  v7.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  v5 = [(TPSTargetingValidation *)&v7 initWithTargetContext:v4];

  return v5;
}

- (TPSCloudDeviceHasPhoneOrPadValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  return [(TPSCloudDeviceHasPhoneOrPadValidation *)&v3 init];
}

@end