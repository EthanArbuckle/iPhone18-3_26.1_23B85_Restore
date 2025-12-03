@interface TPSWalletHasPaymentMethodsValidation
- (TPSWalletHasPaymentMethodsValidation)init;
- (TPSWalletHasPaymentMethodsValidation)initWithTargetContext:(id)context;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSWalletHasPaymentMethodsValidation

- (void)validateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_232E016B0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_232DDF68C;
  v12[6] = v10;
  selfCopy = self;
  sub_232DF55C8(0, 0, v8, &unk_232E082F8, v12);
}

- (TPSWalletHasPaymentMethodsValidation)initWithTargetContext:(id)context
{
  sub_232E01470();
  v4 = sub_232E01450();

  v7.receiver = self;
  v7.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  v5 = [(TPSTargetingValidation *)&v7 initWithTargetContext:v4];

  return v5;
}

- (TPSWalletHasPaymentMethodsValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  return [(TPSWalletHasPaymentMethodsValidation *)&v3 init];
}

@end