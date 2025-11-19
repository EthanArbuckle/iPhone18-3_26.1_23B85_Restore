@interface FindMyLocateSession
- (id)meDeviceUpdateCallback;
- (id)shareMyLocationUpdateCallback;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)a3;
- (void)isMyLocationEnabledWithCompletionHandler:(id)a3;
- (void)setMeDeviceUpdateCallback:(id)a3;
- (void)setShareMyLocationUpdateCallback:(id)a3;
- (void)startMonitoringPrefrenceChangesWithCompletionHandler:(id)a3;
- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)a3;
@end

@implementation FindMyLocateSession

- (id)meDeviceUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26585C13C;
    aBlock[3] = &block_descriptor_104;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeDeviceUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_265862218;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_265800D20(v7);
}

- (id)shareMyLocationUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26585C5B4;
    aBlock[3] = &block_descriptor;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShareMyLocationUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2658621E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_265800D20(v7);
}

- (void)startMonitoringPrefrenceChangesWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_265864E50();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A178;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26586A180;
  v12[5] = v11;
  v13 = self;
  sub_265860B24(0, 0, v7, &unk_26586A188, v12);
}

- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_265864E50();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A158;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26586A160;
  v12[5] = v11;
  v13 = self;
  sub_265860B24(0, 0, v7, &unk_26586A168, v12);
}

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_265864E50();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A138;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26586A140;
  v12[5] = v11;
  v13 = self;
  sub_265860B24(0, 0, v7, &unk_26586A148, v12);
}

- (void)isMyLocationEnabledWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_265864E50();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A0F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26586A100;
  v12[5] = v11;
  v13 = self;
  sub_265860B24(0, 0, v7, &unk_26586A110, v12);
}

@end