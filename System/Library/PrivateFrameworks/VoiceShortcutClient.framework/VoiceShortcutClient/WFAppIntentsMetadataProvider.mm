@interface WFAppIntentsMetadataProvider
+ (id)daemonProvider;
+ (id)sharedProvider;
- (LNMetadataProvider)metadataProvider;
- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers;
- (id)examplePhrasesForBundleIdentifier:(id)identifier useCache:(BOOL)cache;
- (void)cacheDebouncerFire;
- (void)cacheDebouncerPoke;
- (void)purge;
@end

@implementation WFAppIntentsMetadataProvider

- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers
{
  sub_1B1DEA98C(0, &qword_1EB7835B0, 0x1E69AC858);
  sub_1B1F1A9B0();
  selfCopy = self;
  sub_1B1DEA9CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784700, &qword_1B1F2CC38);
  v5 = sub_1B1F1A6F0();

  return v5;
}

+ (id)sharedProvider
{
  v2 = static WFAppIntentsMetadataProvider.shared()();

  return v2;
}

- (LNMetadataProvider)metadataProvider
{
  v2 = sub_1B1E1DAD8();

  return v2;
}

+ (id)daemonProvider
{
  v2 = static WFAppIntentsMetadataProvider.daemon()();

  return v2;
}

- (void)cacheDebouncerPoke
{
  selfCopy = self;
  sub_1B1E1ED34();
}

- (void)cacheDebouncerFire
{
  selfCopy = self;
  sub_1B1E1F104();
}

- (void)purge
{
  selfCopy = self;
  sub_1B1E1F470();
}

- (id)examplePhrasesForBundleIdentifier:(id)identifier useCache:(BOOL)cache
{
  v6 = sub_1B1F1A890();
  v8 = v7;
  selfCopy = self;
  sub_1B1E1FA84(v6, v8, cache);

  sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
  v10 = sub_1B1F1A9A0();

  return v10;
}

@end