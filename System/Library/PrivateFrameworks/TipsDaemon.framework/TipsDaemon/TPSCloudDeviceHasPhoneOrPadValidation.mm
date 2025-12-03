@interface TPSCloudDeviceHasPhoneOrPadValidation
- (TPSCloudDeviceHasPhoneOrPadValidation)init;
- (TPSCloudDeviceHasPhoneOrPadValidation)initWithTargetContext:(id)context;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSCloudDeviceHasPhoneOrPadValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_232DF6DDC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (TPSCloudDeviceHasPhoneOrPadValidation)initWithTargetContext:(id)context
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