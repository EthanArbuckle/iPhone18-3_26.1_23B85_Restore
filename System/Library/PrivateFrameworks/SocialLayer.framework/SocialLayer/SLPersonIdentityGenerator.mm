@interface SLPersonIdentityGenerator
- (SLPersonIdentityGenerator)init;
- (void)generateLocalIdentityForDocumentIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)generatePersonIdentitiesForHandles:(NSArray *)a3 documentIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)generateProofForIdentity:(SWPersonIdentity *)a3 documentIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)signData:(NSData *)a3 documentIdentifier:(NSString *)a4 trackingPreventionSalt:(NSData *)a5 completionHandler:(id)a6;
@end

@implementation SLPersonIdentityGenerator

- (void)generatePersonIdentitiesForHandles:(NSArray *)a3 documentIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_76Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_81Tu, v17);
}

- (void)generateLocalIdentityForDocumentIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_61Tu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_66Tu, v15);
}

- (void)generateProofForIdentity:(SWPersonIdentity *)a3 documentIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_46Tu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_51Tu, v17);
}

- (void)signData:(NSData *)a3 documentIdentifier:(NSString *)a4 trackingPreventionSalt:(NSData *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTATu;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTATu, v19);
}

- (SLPersonIdentityGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end