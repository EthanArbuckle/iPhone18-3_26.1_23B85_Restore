@interface STIntroductionViewControllersFactory
+ (id)makeControllerUsing:(id)a3 creatingNavigationController:(BOOL)a4;
+ (id)makeIntroPresetsViewControllerWithIntroductionModel:(id)a3 settingsPresetViewModel:(id)a4 name:(id)a5 updateExistingSettings:(BOOL)a6 continueHandler:(id)a7;
+ (id)makeIntroductionAppAndWebsiteActivityViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5;
+ (id)makeIntroductionCommunicationLimitsViewControllerWithChildName:(id)a3 limitType:(int64_t)a4 continueHandler:(id)a5;
+ (id)makeIntroductionCommunicationLimitsViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5;
+ (id)makeIntroductionCommunicationSafetyViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5;
+ (id)makeIntroductionDowntimeViewControllerWithIntroductionModel:(id)a3 continueHandler:(id)a4;
+ (id)makeIntroductionPasscodeViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 askForRecoveryForAppleID:(BOOL)a5 altDSID:(id)a6 isChildOrNotSignedIntoiCloud:(BOOL)a7 continueHandler:(id)a8;
+ (id)makeIntroductionWelcomeViewControllerWithChildName:(id)a3 forceParentalControls:(BOOL)a4 continueHandler:(id)a5 endHandler:(id)a6;
- (_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory)init;
@end

@implementation STIntroductionViewControllersFactory

+ (id)makeIntroductionWelcomeViewControllerWithChildName:(id)a3 forceParentalControls:(BOOL)a4 continueHandler:(id)a5 endHandler:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  if (a3)
  {
    v11 = sub_264CC45DC();
    a3 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = _s20ScreenTimeSettingsUI36STIntroductionViewControllersFactoryC023makeIntroductionWelcomeF10Controller9childName21forceParentalControls15continueHandler03endS0So06UIViewL0CSSSg_SbyycyyctFZ_0(v11, a3, a4, sub_264C8A820, v13, sub_264C8A820, v14);

  return v15;
}

+ (id)makeIntroPresetsViewControllerWithIntroductionModel:(id)a3 settingsPresetViewModel:(id)a4 name:(id)a5 updateExistingSettings:(BOOL)a6 continueHandler:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_264CC45DC();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = a4;
  v16 = sub_264C8A09C(a3, v15, v11, v13, a6, sub_264C8A820, v14);
  swift_unknownObjectRelease();

  return v16;
}

+ (id)makeIntroductionAppAndWebsiteActivityViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_264CC45DC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_264C8A740(0, &qword_27FFA9C28);
  v11 = sub_264C8971C(a3, v7, v9, sub_264C8A820, v10, &block_descriptor_63);

  return v11;
}

+ (id)makeIntroductionDowntimeViewControllerWithIntroductionModel:(id)a3 continueHandler:(id)a4
{
  v5 = _Block_copy(a4);
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
  v9 = [v7 initWithIntroductionModel:a3 continueHandler:v8];
  _Block_release(v8);

  return v9;
}

+ (id)makeIntroductionCommunicationSafetyViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_264CC45DC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_264C8A740(0, &qword_27FFA9C20);
  v11 = sub_264C8971C(a3, v7, v9, sub_264C8A820, v10, &block_descriptor_72);

  return v11;
}

+ (id)makeIntroductionCommunicationLimitsViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5
{
  v6 = _Block_copy(a5);
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
  v11 = [v9 initWithChildName:a4 limitType:0 continueHandler:v10];
  _Block_release(v10);

  return v11;
}

+ (id)makeIntroductionCommunicationLimitsViewControllerWithChildName:(id)a3 limitType:(int64_t)a4 continueHandler:(id)a5
{
  v7 = _Block_copy(a5);
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
  v11 = [v9 initWithChildName:a3 limitType:a4 continueHandler:v10];
  _Block_release(v10);

  return v11;
}

+ (id)makeIntroductionPasscodeViewControllerWithIntroductionModel:(id)a3 childName:(id)a4 askForRecoveryForAppleID:(BOOL)a5 altDSID:(id)a6 isChildOrNotSignedIntoiCloud:(BOOL)a7 continueHandler:(id)a8
{
  v13 = _Block_copy(a8);
  if (a4)
  {
    v14 = sub_264CC45DC();
    a4 = v15;
    if (a6)
    {
LABEL_3:
      v16 = sub_264CC45DC();
      a6 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = a3;
  v20 = sub_264C8A444(v19, v14, a4, a5, v16, a6, a7, sub_264C8A724, v18);

  return v20;
}

+ (id)makeControllerUsing:(id)a3 creatingNavigationController:(BOOL)a4
{
  v4 = a4;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  if (v4)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];

    v5 = v7;
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