@interface PNAssetFetcherOptions
- (CLSCurationContext)curationContext;
- (NSArray)fetchLimiters;
- (NSArray)limiters;
- (PFPseudoRandomNumberGenerator)randomGenerator;
- (PHFetchOptions)fetchOptions;
- (id)curationPredicate;
- (id)initFetchOptionsWithExcludeUUIDs:(id)ds minimumSceneVersion:(signed __int16)version predicate:(id)predicate;
- (void)setCurationContext:(id)context;
- (void)setFetchLimiters:(id)limiters;
- (void)setLimiters:(id)limiters;
@end

@implementation PNAssetFetcherOptions

- (PHFetchOptions)fetchOptions
{
  v2 = AssetFetcherOptions.fetchOptions.getter();

  return v2;
}

- (NSArray)limiters
{
  AssetFetcherOptions.limiters.getter();
  type metadata accessor for AssetFetcherLimiter();
  v2 = sub_1C7550B3C();

  return v2;
}

- (void)setLimiters:(id)limiters
{
  type metadata accessor for AssetFetcherLimiter();
  v4 = sub_1C7550B5C();
  selfCopy = self;
  AssetFetcherOptions.limiters.setter(v4);
}

- (PFPseudoRandomNumberGenerator)randomGenerator
{
  selfCopy = self;
  v3 = sub_1C71CE784();

  return v3;
}

- (CLSCurationContext)curationContext
{
  selfCopy = self;
  v3 = sub_1C71CE890();

  return v3;
}

- (void)setCurationContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1C71CF204(contextCopy);
}

- (id)initFetchOptionsWithExcludeUUIDs:(id)ds minimumSceneVersion:(signed __int16)version predicate:(id)predicate
{
  v8 = sub_1C7550B5C();
  predicateCopy = predicate;
  selfCopy = self;
  v11 = sub_1C71CDE24(v8, version, predicate);

  return v11;
}

- (id)curationPredicate
{
  selfCopy = self;
  v3 = sub_1C71CE494();

  return v3;
}

- (NSArray)fetchLimiters
{
  selfCopy = self;
  AssetFetcherOptions.fetchLimiters.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F60);
  v3 = sub_1C7550B3C();

  return v3;
}

- (void)setFetchLimiters:(id)limiters
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F60);
  v4 = sub_1C7550B5C();
  selfCopy = self;
  AssetFetcherOptions.fetchLimiters.setter(v4);
}

@end