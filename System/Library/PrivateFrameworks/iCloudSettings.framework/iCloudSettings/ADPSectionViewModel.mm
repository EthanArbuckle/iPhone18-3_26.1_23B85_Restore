@interface ADPSectionViewModel
- (_TtC14iCloudSettings19ADPSectionViewModel)init;
- (void)beginEnablementFlow:(id)flow;
- (void)presentAccountRecoveryFlow;
- (void)remoteUIDidDismiss:(id)dismiss;
- (void)remoteUIDidReceiveHTTPResponse:(id)response;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)setDelegate:(id)delegate;
@end

@implementation ADPSectionViewModel

- (_TtC14iCloudSettings19ADPSectionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)beginEnablementFlow:(id)flow
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (flow)
  {
    sub_2759B84C8();
    v16 = sub_2759B8508();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_2759B8508();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = sub_2759BA518();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_27586FBC8(v15, v13, &unk_280A0EB10, &qword_2759C0740);
  sub_2759BA4C8();
  selfCopy = self;
  v20 = sub_2759BA4B8();
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v20;
  v22[3] = v23;
  v22[4] = selfCopy;
  sub_2758B4BD0(v13, v22 + v21);
  sub_27587D460(0, 0, v8, &unk_2759C6500, v22);

  sub_27586BF04(v15, &unk_280A0EB10, &qword_2759C0740);
}

- (void)setDelegate:(id)delegate
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2759BA4C8();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v11 = sub_2759BA4B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = selfCopy;
  v12[5] = delegate;
  sub_27587D460(0, 0, v8, &unk_2759C64F8, v12);

  swift_unknownObjectRelease();
}

- (void)presentAccountRecoveryFlow
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2759BA4C8();
  selfCopy = self;
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = selfCopy;
  sub_27587D460(0, 0, v6, &unk_2759C64F0, v10);
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_2759B8248();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2759B81F8();
  v15 = sub_2759BA518();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_2759BA4C8();
  selfCopy = self;
  errorCopy = error;
  v18 = selfCopy;
  v19 = sub_2759BA4B8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = error;
  v20[5] = v18;
  sub_27587D460(0, 0, v9, &unk_2759C64E8, v20);

  (*(v11 + 8))(v14, v10);
}

- (void)remoteUIDidReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  v7.super._internal = self;
  internal = v7.super._internal;
  v7.super.super.isa = responseCopy;
  ADPSectionViewModel.remoteUIDidReceiveHTTPResponse(_:)(v7);
}

- (void)remoteUIDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s14iCloudSettings19ADPSectionViewModelC18remoteUIDidDismissyySo18RemoteUIControllerCF_0();
}

@end