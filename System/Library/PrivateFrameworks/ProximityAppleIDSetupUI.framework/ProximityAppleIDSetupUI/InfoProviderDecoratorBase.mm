@interface InfoProviderDecoratorBase
- (void)authenticateWithAccount:(id)account with:(id)with completion:(id)completion;
- (void)didPerformLocalAuthenticationWithCompletion:(id)completion;
- (void)fetchManifestWithCompletion:(id)completion;
- (void)fetchViewDetailsWithDevicePair:(id)pair completion:(id)completion;
- (void)shouldPerformLocalAuthenticationWithCompletion:(id)completion;
- (void)signInSucceededWithAccount:(id)account completion:(id)completion;
@end

@implementation InfoProviderDecoratorBase

- (void)fetchManifestWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->underlyingInfoProvider;
  v8[4] = sub_261126130;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2611262F0;
  v8[3] = &block_descriptor_74;
  v7 = _Block_copy(v8);

  [v6 fetchManifestWithCompletion_];

  _Block_release(v7);
}

- (void)fetchViewDetailsWithDevicePair:(id)pair completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->underlyingInfoProvider;
  v11[4] = sub_2611262CC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2611262F0;
  v11[3] = &block_descriptor_68;
  v9 = _Block_copy(v11);
  pairCopy = pair;

  [v8 fetchViewDetailsWithDevicePair:pairCopy completion:v9];

  _Block_release(v9);
}

- (void)authenticateWithAccount:(id)account with:(id)with completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->underlyingInfoProvider;
  v14[4] = sub_2611262C8;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2611252A4;
  v14[3] = &block_descriptor_62;
  v11 = _Block_copy(v14);
  accountCopy = account;
  withCopy = with;

  [v10 authenticateWithAccount:accountCopy with:withCopy completion:v11];

  _Block_release(v11);
}

- (void)signInSucceededWithAccount:(id)account completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->underlyingInfoProvider;
  v11[4] = sub_2611262F4;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_261149B54;
  v11[3] = &block_descriptor_55;
  v9 = _Block_copy(v11);
  accountCopy = account;

  [v8 signInSucceededWithAccount:accountCopy completion:v9];

  _Block_release(v9);
}

- (void)shouldPerformLocalAuthenticationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->underlyingInfoProvider;
  v8[4] = sub_261126128;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_261125670;
  v8[3] = &block_descriptor_48;
  v7 = _Block_copy(v8);

  [v6 shouldPerformLocalAuthenticationWithCompletion_];

  _Block_release(v7);
}

- (void)didPerformLocalAuthenticationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->underlyingInfoProvider;
  v8[4] = sub_261126120;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_261149B54;
  v8[3] = &block_descriptor_42;
  v7 = _Block_copy(v8);

  [v6 didPerformLocalAuthenticationWithCompletion_];

  _Block_release(v7);
}

@end