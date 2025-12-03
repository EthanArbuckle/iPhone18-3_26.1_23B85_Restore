@interface HiddenAppsSettingsListViewModel
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
@end

@implementation HiddenAppsSettingsListViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(HiddenAppsSettingsListViewModel *)&v6 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v5 = sub_2B4C(&unk_38E10, &qword_2B770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  selfCopy = self;
  sub_2A4A4();
  v10 = sub_2A4C4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = selfCopy;
  v12 = selfCopy;
  sub_642C(0, 0, v8, &unk_2B780, v11);

  sub_6958(v8);
}

@end