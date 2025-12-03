@interface SKAAccountProvider
- (SKAAccountProvider)init;
- (void)refreshCredentialForPrimaryAccountWithCompletion:(id)completion;
@end

@implementation SKAAccountProvider

- (SKAAccountProvider)init
{
  swift_defaultActor_initialize();
  *self->accountStore = 0;
  *&self->_anon_60[8] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for SKAAccountProvider();
  return [(SKAAccountProvider *)&v4 init];
}

- (void)refreshCredentialForPrimaryAccountWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

@end