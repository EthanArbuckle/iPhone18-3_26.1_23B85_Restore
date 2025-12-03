@interface TPSGenerativeModelsAvailabilityValidation
- (TPSGenerativeModelsAvailabilityValidation)init;
- (TPSGenerativeModelsAvailabilityValidation)initWithTargetContext:(id)context;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSGenerativeModelsAvailabilityValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_232DB6568(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (TPSGenerativeModelsAvailabilityValidation)initWithTargetContext:(id)context
{
  sub_232E01470();
  v4 = sub_232E01450();

  v7.receiver = self;
  v7.super_class = type metadata accessor for GenerativeModelsAvailabilityValidation();
  v5 = [(TPSTargetingValidation *)&v7 initWithTargetContext:v4];

  return v5;
}

- (TPSGenerativeModelsAvailabilityValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeModelsAvailabilityValidation();
  return [(TPSGenerativeModelsAvailabilityValidation *)&v3 init];
}

@end