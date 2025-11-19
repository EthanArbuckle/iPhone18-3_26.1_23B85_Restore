@interface INSaveParkingLocationIntentHandler
- (_TtC7SiriGeo34INSaveParkingLocationIntentHandler)init;
- (void)handleSaveParkingLocation:(id)a3 completion:(id)a4;
- (void)resolveParkingLocationForSaveParkingLocation:(INSaveParkingLocationIntent *)a3 withCompletion:(id)a4;
@end

@implementation INSaveParkingLocationIntentHandler

- (void)resolveParkingLocationForSaveParkingLocation:(INSaveParkingLocationIntent *)a3 withCompletion:(id)a4
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
  v14[4] = &async function pointer to partial apply for @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTATu;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTATu, v15);
}

- (void)handleSaveParkingLocation:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  INSaveParkingLocationIntentHandler.handle(intent:completion:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> (), v7);
}

- (_TtC7SiriGeo34INSaveParkingLocationIntentHandler)init
{
  v3 = OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(&self->super.isa + v3) = OS_os_log.init(subsystem:category:)();
  v4 = (&self->super.isa + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion);
  v5 = type metadata accessor for INSaveParkingLocationIntentHandler();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(INSaveParkingLocationIntentHandler *)&v7 init];
}

@end