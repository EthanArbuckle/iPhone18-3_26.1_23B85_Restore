@interface WFSwiftAppShortcutDataSource
- (WFSwiftAppShortcutDataSource)initWithAppShortcutsProvider:(id)a3 denyListEnvironment:(unint64_t)a4 organizationStyle:(int64_t)a5;
- (id)fetchAppShortcutForBundleIdentifiers:(id)a3 localeIdentifier:(id)a4 error:(id *)a5;
- (void)appShortcutsChanged;
@end

@implementation WFSwiftAppShortcutDataSource

- (WFSwiftAppShortcutDataSource)initWithAppShortcutsProvider:(id)a3 denyListEnvironment:(unint64_t)a4 organizationStyle:(int64_t)a5
{
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();

  return sub_1CA5FB11C(v8, a4, a5, self);
}

- (id)fetchAppShortcutForBundleIdentifiers:(id)a3 localeIdentifier:(id)a4 error:(id *)a5
{
  v6 = sub_1CA94C658();
  sub_1CA94C3A8();
  v7 = self;
  sub_1CA5F8928(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445A0, &qword_1CA983900);
  v8 = sub_1CA94C1A8();

  return v8;
}

- (void)appShortcutsChanged
{
  v2 = self;
  sub_1CA5FA5A4();
}

@end