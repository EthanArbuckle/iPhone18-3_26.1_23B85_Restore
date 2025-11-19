@interface TPSGenerativeModelsAvailabilityValidation
- (TPSGenerativeModelsAvailabilityValidation)init;
- (TPSGenerativeModelsAvailabilityValidation)initWithTargetContext:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSGenerativeModelsAvailabilityValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_232DB6568(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (TPSGenerativeModelsAvailabilityValidation)initWithTargetContext:(id)a3
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