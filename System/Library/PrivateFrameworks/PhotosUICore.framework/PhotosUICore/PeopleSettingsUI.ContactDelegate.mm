@interface PeopleSettingsUI.ContactDelegate
- (_TtCV12PhotosUICore16PeopleSettingsUIP33_E1EA5DB3545FF0DE93FEB1445B7F370215ContactDelegate)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
@end

@implementation PeopleSettingsUI.ContactDelegate

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  sub_1A3C52C70(0, &qword_1EB13B2E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  objCClassFromMetadata = [ObjCClassFromMetadata sharedInstance];
  identifier = [contactCopy identifier];
  if (!identifier)
  {
    sub_1A524C674();
    v13 = sub_1A524C634();

    identifier = v13;
  }

  v14 = identifier;
  [objCClassFromMetadata setDebugContactIdentifier_];
}

- (_TtCV12PhotosUICore16PeopleSettingsUIP33_E1EA5DB3545FF0DE93FEB1445B7F370215ContactDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PeopleSettingsUI.ContactDelegate *)&v3 init];
}

@end