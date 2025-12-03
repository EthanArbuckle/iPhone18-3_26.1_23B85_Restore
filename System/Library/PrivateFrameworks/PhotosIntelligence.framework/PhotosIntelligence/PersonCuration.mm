@interface PersonCuration
+ (id)fetchCuratedAssetsForPerson:(id)person options:(id)options useSummary:(BOOL)summary;
+ (id)fetchCuratedAssetsForSocialGroup:(id)group options:(id)options useSummary:(BOOL)summary includeOthersInSocialGroupAssets:(BOOL)assets;
@end

@implementation PersonCuration

+ (id)fetchCuratedAssetsForPerson:(id)person options:(id)options useSummary:(BOOL)summary
{
  swift_getObjCClassMetadata();
  personCopy = person;
  optionsCopy = options;
  v10 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:)(personCopy, options, summary);

  return v10;
}

+ (id)fetchCuratedAssetsForSocialGroup:(id)group options:(id)options useSummary:(BOOL)summary includeOthersInSocialGroupAssets:(BOOL)assets
{
  swift_getObjCClassMetadata();
  groupCopy = group;
  optionsCopy = options;
  v12 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:includeOthersInSocialGroupAssets:)(groupCopy, options, summary, assets);

  return v12;
}

@end