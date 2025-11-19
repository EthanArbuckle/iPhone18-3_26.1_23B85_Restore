@interface PeopleSettingsUI.ContactDelegate
- (_TtCV12PhotosUICore16PeopleSettingsUIP33_E1EA5DB3545FF0DE93FEB1445B7F370215ContactDelegate)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
@end

@implementation PeopleSettingsUI.ContactDelegate

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  sub_1A3C52C70(0, &qword_1EB13B2E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = [ObjCClassFromMetadata sharedInstance];
  v12 = [v9 identifier];
  if (!v12)
  {
    sub_1A524C674();
    v13 = sub_1A524C634();

    v12 = v13;
  }

  v14 = v12;
  [v11 setDebugContactIdentifier_];
}

- (_TtCV12PhotosUICore16PeopleSettingsUIP33_E1EA5DB3545FF0DE93FEB1445B7F370215ContactDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PeopleSettingsUI.ContactDelegate *)&v3 init];
}

@end