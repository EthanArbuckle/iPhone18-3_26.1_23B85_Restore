@interface WFSwiftAppShortcutDataSource
- (WFSwiftAppShortcutDataSource)initWithAppShortcutsProvider:(id)provider denyListEnvironment:(unint64_t)environment organizationStyle:(int64_t)style;
- (id)fetchAppShortcutForBundleIdentifiers:(id)identifiers localeIdentifier:(id)identifier error:(id *)error;
- (void)appShortcutsChanged;
@end

@implementation WFSwiftAppShortcutDataSource

- (WFSwiftAppShortcutDataSource)initWithAppShortcutsProvider:(id)provider denyListEnvironment:(unint64_t)environment organizationStyle:(int64_t)style
{
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();

  return sub_1CA5FB11C(v8, environment, style, self);
}

- (id)fetchAppShortcutForBundleIdentifiers:(id)identifiers localeIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_1CA94C658();
  sub_1CA94C3A8();
  selfCopy = self;
  sub_1CA5F8928(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445A0, &qword_1CA983900);
  v8 = sub_1CA94C1A8();

  return v8;
}

- (void)appShortcutsChanged
{
  selfCopy = self;
  sub_1CA5FA5A4();
}

@end