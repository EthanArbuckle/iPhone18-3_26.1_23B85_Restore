@interface GMDeviceSceneViewController
+ (void)prepareSceneWithCompletionHandler:(id)a3;
- (_TtC14VoiceTriggerUI27GMDeviceSceneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation GMDeviceSceneViewController

- (void)viewDidLoad
{
  v2 = self;
  GMDeviceSceneViewController.viewDidLoad()();
}

+ (void)prepareSceneWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_27292E314();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_272934D18;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_272934D28;
  v13[5] = v12;
  sub_2729123F8(0, 0, v8, &unk_272934D38, v13);
}

- (_TtC14VoiceTriggerUI27GMDeviceSceneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end