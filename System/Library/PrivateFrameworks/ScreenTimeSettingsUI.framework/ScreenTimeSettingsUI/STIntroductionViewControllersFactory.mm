@interface STIntroductionViewControllersFactory
+ (id)makeControllerUsing:(id)using creatingNavigationController:(BOOL)controller;
+ (id)makeIntroPresetsViewControllerWithIntroductionModel:(id)model settingsPresetViewModel:(id)viewModel name:(id)name updateExistingSettings:(BOOL)settings continueHandler:(id)handler;
+ (id)makeIntroductionAppAndWebsiteActivityViewControllerWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler;
+ (id)makeIntroductionCommunicationLimitsViewControllerWithChildName:(id)name limitType:(int64_t)type continueHandler:(id)handler;
+ (id)makeIntroductionCommunicationLimitsViewControllerWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler;
+ (id)makeIntroductionCommunicationSafetyViewControllerWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler;
+ (id)makeIntroductionDowntimeViewControllerWithIntroductionModel:(id)model continueHandler:(id)handler;
+ (id)makeIntroductionPasscodeViewControllerWithIntroductionModel:(id)model childName:(id)name askForRecoveryForAppleID:(BOOL)d altDSID:(id)iD isChildOrNotSignedIntoiCloud:(BOOL)cloud continueHandler:(id)handler;
+ (id)makeIntroductionWelcomeViewControllerWithChildName:(id)name forceParentalControls:(BOOL)controls continueHandler:(id)handler endHandler:(id)endHandler;
- (_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory)init;
@end

@implementation STIntroductionViewControllersFactory

+ (id)makeIntroductionWelcomeViewControllerWithChildName:(id)name forceParentalControls:(BOOL)controls continueHandler:(id)handler endHandler:(id)endHandler
{
  v9 = _Block_copy(handler);
  v10 = _Block_copy(endHandler);
  if (name)
  {
    v11 = sub_264CC45DC();
    name = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = _s20ScreenTimeSettingsUI36STIntroductionViewControllersFactoryC023makeIntroductionWelcomeF10Controller9childName21forceParentalControls15continueHandler03endS0So06UIViewL0CSSSg_SbyycyyctFZ_0(v11, name, controls, sub_264C8A820, v13, sub_264C8A820, v14);

  return v15;
}

+ (id)makeIntroPresetsViewControllerWithIntroductionModel:(id)model settingsPresetViewModel:(id)viewModel name:(id)name updateExistingSettings:(BOOL)settings continueHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = sub_264CC45DC();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  viewModelCopy = viewModel;
  v16 = sub_264C8A09C(model, viewModelCopy, v11, v13, settings, sub_264C8A820, v14);
  swift_unknownObjectRelease();

  return v16;
}

+ (id)makeIntroductionAppAndWebsiteActivityViewControllerWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_264CC45DC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_264C8A740(0, &qword_27FFA9C28);
  v11 = sub_264C8971C(model, v7, v9, sub_264C8A820, v10, &block_descriptor_63);

  return v11;
}

+ (id)makeIntroductionDowntimeViewControllerWithIntroductionModel:(id)model continueHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(STIntroDowntimeViewController);
  v11[4] = sub_264C8A820;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264C89FD8;
  v11[3] = &block_descriptor_44;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithIntroductionModel:model continueHandler:v8];
  _Block_release(v8);

  return v9;
}

+ (id)makeIntroductionCommunicationSafetyViewControllerWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_264CC45DC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_264C8A740(0, &qword_27FFA9C20);
  v11 = sub_264C8971C(model, v7, v9, sub_264C8A820, v10, &block_descriptor_72);

  return v11;
}

+ (id)makeIntroductionCommunicationLimitsViewControllerWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_264C8A820;
  *(v8 + 24) = v7;
  v9 = objc_allocWithZone(STIntroCommunicationLimitsViewController);
  v13[4] = sub_264C88D5C;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_264C8A01C;
  v13[3] = &block_descriptor_33;
  v10 = _Block_copy(v13);
  v11 = [v9 initWithChildName:name limitType:0 continueHandler:v10];
  _Block_release(v10);

  return v11;
}

+ (id)makeIntroductionCommunicationLimitsViewControllerWithChildName:(id)name limitType:(int64_t)type continueHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(STIntroCommunicationLimitsViewController);
  v13[4] = sub_264C8A72C;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_264C8A01C;
  v13[3] = &block_descriptor_22;
  v10 = _Block_copy(v13);
  v11 = [v9 initWithChildName:name limitType:type continueHandler:v10];
  _Block_release(v10);

  return v11;
}

+ (id)makeIntroductionPasscodeViewControllerWithIntroductionModel:(id)model childName:(id)name askForRecoveryForAppleID:(BOOL)d altDSID:(id)iD isChildOrNotSignedIntoiCloud:(BOOL)cloud continueHandler:(id)handler
{
  v13 = _Block_copy(handler);
  if (name)
  {
    v14 = sub_264CC45DC();
    name = v15;
    if (iD)
    {
LABEL_3:
      v16 = sub_264CC45DC();
      iD = v17;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  modelCopy = model;
  v20 = sub_264C8A444(modelCopy, v14, name, d, v16, iD, cloud, sub_264C8A724, v18);

  return v20;
}

+ (id)makeControllerUsing:(id)using creatingNavigationController:(BOOL)controller
{
  controllerCopy = controller;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  if (controllerCopy)
  {
    v6 = v5;
    initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];

    v5 = initWithRootViewController_;
  }

  return v5;
}

- (_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STIntroductionViewControllersFactory();
  return [(STIntroductionViewControllersFactory *)&v3 init];
}

@end