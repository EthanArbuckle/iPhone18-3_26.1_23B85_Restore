@interface TPSGenerativeModelsUseCaseAvailabilityValidation
- (TPSGenerativeModelsUseCaseAvailabilityValidation)init;
- (TPSGenerativeModelsUseCaseAvailabilityValidation)initWithTargetContext:(id)context;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSGenerativeModelsUseCaseAvailabilityValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_232DE8ECC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (TPSGenerativeModelsUseCaseAvailabilityValidation)initWithTargetContext:(id)context
{
  sub_232E01470();
  v4 = sub_232E01450();

  v7.receiver = self;
  v7.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  v5 = [(TPSTargetingValidation *)&v7 initWithTargetContext:v4];

  return v5;
}

- (TPSGenerativeModelsUseCaseAvailabilityValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  return [(TPSGenerativeModelsUseCaseAvailabilityValidation *)&v3 init];
}

@end