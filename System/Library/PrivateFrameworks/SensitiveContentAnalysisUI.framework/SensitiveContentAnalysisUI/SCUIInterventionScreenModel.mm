@interface SCUIInterventionScreenModel
- (NSArray)actions;
- (NSArray)bullets;
- (NSString)emoji;
- (NSString)imageName;
- (NSString)subtitle;
- (NSString)title;
- (SCUIInterventionScreenModel)init;
- (SCUIReportAuthority)authority;
- (id)nextModel;
- (int64_t)interventionType;
- (int64_t)workflow;
- (void)bypassInterventionForContainer:(id)a3 delegate:(id)a4;
- (void)didAskForMoreHelpWithPresentingViewController:(id)a3;
- (void)setAuthority:(id)a3;
@end

@implementation SCUIInterventionScreenModel

- (SCUIReportAuthority)authority
{
  v3 = OBJC_IVAR___SCUIInterventionScreenModel_authority;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAuthority:(id)a3
{
  v5 = OBJC_IVAR___SCUIInterventionScreenModel_authority;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (int64_t)workflow
{
  v2 = self;
  v3 = sub_1BC6E4800();

  return v3;
}

- (int64_t)interventionType
{
  v2 = self;
  v3 = sub_1BC6E4990();

  return v3;
}

- (id)nextModel
{
  v3 = type metadata accessor for InterventionConfig(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  sub_1BC66FDD8(self + OBJC_IVAR___SCUIInterventionScreenModel_config, &v16[-v9], type metadata accessor for InterventionConfig);
  v17 = 5;
  v11 = *(v4 + 40);
  v12 = self;
  sub_1BC665984(&v17);
  sub_1BC66FDD8(v10, v8, type metadata accessor for InterventionConfig);
  v13 = objc_allocWithZone(type metadata accessor for InterventionScreenModel());
  v14 = InterventionScreenModel.init(screen:config:participantContactCache:)(1, v8, 0);

  sub_1BC66FE40(v10, type metadata accessor for InterventionConfig);

  return v14;
}

- (SCUIInterventionScreenModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)title
{
  sub_1BC75BDE0();
  v3 = self;
  v4 = sub_1BC75C210();
  sub_1BC66C60C(&v7, v4);

  v5 = sub_1BC75BB30();

  return v5;
}

- (NSString)subtitle
{
  v2 = self;
  sub_1BC66D37C(v5);

  if (v5[1])
  {
    v3 = sub_1BC75BB30();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)imageName
{
  if (*(&self->super.isa + OBJC_IVAR___SCUIInterventionScreenModel_screen) > 1)
  {
    result = sub_1BC75C3D0();
    __break(1u);
  }

  else
  {
    v2 = sub_1BC75BB30();

    return v2;
  }

  return result;
}

- (NSString)emoji
{
  if (*(&self->super.isa + OBJC_IVAR___SCUIInterventionScreenModel_screen) > 1)
  {
    result = sub_1BC75C3D0();
    __break(1u);
  }

  else
  {
    v2 = sub_1BC75BB30();

    return v2;
  }

  return result;
}

- (NSArray)bullets
{
  swift_getObjectType();
  v3 = self + OBJC_IVAR___SCUIInterventionScreenModel_config;
  v4 = *(type metadata accessor for InterventionConfig(0) + 20);
  v5 = *(&self->super.isa + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  v6 = self;
  v7 = sub_1BC66B9E4();
  static InterventionScreenModel.generateBullets(for:layout:screen:canShowScreenTimePasscodeWarningBullet:participantContactCache:)(&v3[v4], v3, v5, v7 & 1, *(&v6->super.isa + OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F0, &qword_1BC761168);
  v8 = sub_1BC75BCF0();

  return v8;
}

- (NSArray)actions
{
  v2 = self;
  InterventionScreenModel.actions.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC118, &unk_1BC761098);
  v3 = sub_1BC75BCF0();

  return v3;
}

- (void)bypassInterventionForContainer:(id)a3 delegate:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1BC6A8FC0(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)didAskForMoreHelpWithPresentingViewController:(id)a3
{
  v5 = self + *(type metadata accessor for InterventionConfig(0) + 20);
  v6 = a3;
  v12 = self;
  v7 = sub_1BC6F39FC();
  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7;
  }

  v10 = [objc_allocWithZone(SCUIMoreHelpWebViewController) initWithType_];
  if (v10)
  {
    v11 = v10;
    [v6 presentViewController:v10 animated:1 completion:0];
  }
}

@end