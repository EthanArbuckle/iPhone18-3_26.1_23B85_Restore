@interface ICQAppLaunchLinkTracker
+ (ICQAppLaunchLinkTracker)shared;
- (BOOL)osUpgradeSinceLastShownForBundleID:(id)a3;
- (ICQAppLaunchLinkTracker)init;
- (id)allDaysSinceLastShown;
- (id)lastShownDateForBundleID:(id)a3;
- (int64_t)daysSinceLastShownForBundleID:(id)a3;
- (void)setLastShownDate:(id)a3 forBundleID:(id)a4;
@end

@implementation ICQAppLaunchLinkTracker

+ (ICQAppLaunchLinkTracker)shared
{
  if (qword_280C850C0 != -1)
  {
    swift_once();
  }

  v3 = qword_280C850C8;

  return v3;
}

- (id)lastShownDateForBundleID:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_2755EC98C();
  v10 = v9;
  v11 = self;
  sub_2755DEF5C(v8, v10, v7);

  v12 = sub_2755EC61C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2755EC5CC();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

- (int64_t)daysSinceLastShownForBundleID:(id)a3
{
  v4 = sub_2755EC98C();
  v6 = v5;
  v7 = self;
  v8 = sub_2755DF698(v4, v6);

  return v8;
}

- (id)allDaysSinceLastShown
{
  v2 = self;
  v3 = sub_2755DFDDC();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EA8, &qword_2755F40F0);
    v4 = sub_2755ECA0C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)osUpgradeSinceLastShownForBundleID:(id)a3
{
  v4 = sub_2755EC98C();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_2755E0BB8(v4, v6);

  return v4 & 1;
}

- (void)setLastShownDate:(id)a3 forBundleID:(id)a4
{
  v5 = sub_2755EC61C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755EC5EC();
  v10 = sub_2755EC98C();
  v12 = v11;
  v13 = self;
  sub_2755E0F94(v9, v10, v12);

  (*(v6 + 8))(v9, v5);
}

- (ICQAppLaunchLinkTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end