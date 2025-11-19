@interface MusicMomentHandler
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
@end

@implementation MusicMomentHandler

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = _sIeyB_Ieg_TRTA_2;
  v13[6] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:), v13);
}

@end