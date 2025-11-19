@interface PNAssetFetcherOptions
- (CLSCurationContext)curationContext;
- (NSArray)fetchLimiters;
- (NSArray)limiters;
- (PFPseudoRandomNumberGenerator)randomGenerator;
- (PHFetchOptions)fetchOptions;
- (id)curationPredicate;
- (id)initFetchOptionsWithExcludeUUIDs:(id)a3 minimumSceneVersion:(signed __int16)a4 predicate:(id)a5;
- (void)setCurationContext:(id)a3;
- (void)setFetchLimiters:(id)a3;
- (void)setLimiters:(id)a3;
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

- (void)setLimiters:(id)a3
{
  type metadata accessor for AssetFetcherLimiter();
  v4 = sub_1C7550B5C();
  v5 = self;
  AssetFetcherOptions.limiters.setter(v4);
}

- (PFPseudoRandomNumberGenerator)randomGenerator
{
  v2 = self;
  v3 = sub_1C71CE784();

  return v3;
}

- (CLSCurationContext)curationContext
{
  v2 = self;
  v3 = sub_1C71CE890();

  return v3;
}

- (void)setCurationContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C71CF204(v4);
}

- (id)initFetchOptionsWithExcludeUUIDs:(id)a3 minimumSceneVersion:(signed __int16)a4 predicate:(id)a5
{
  v8 = sub_1C7550B5C();
  v9 = a5;
  v10 = self;
  v11 = sub_1C71CDE24(v8, a4, a5);

  return v11;
}

- (id)curationPredicate
{
  v2 = self;
  v3 = sub_1C71CE494();

  return v3;
}

- (NSArray)fetchLimiters
{
  v2 = self;
  AssetFetcherOptions.fetchLimiters.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F60);
  v3 = sub_1C7550B3C();

  return v3;
}

- (void)setFetchLimiters:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F60);
  v4 = sub_1C7550B5C();
  v5 = self;
  AssetFetcherOptions.fetchLimiters.setter(v4);
}

@end