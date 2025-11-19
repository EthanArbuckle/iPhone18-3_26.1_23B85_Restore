@interface PersonCuration
+ (id)fetchCuratedAssetsForPerson:(id)a3 options:(id)a4 useSummary:(BOOL)a5;
+ (id)fetchCuratedAssetsForSocialGroup:(id)a3 options:(id)a4 useSummary:(BOOL)a5 includeOthersInSocialGroupAssets:(BOOL)a6;
@end

@implementation PersonCuration

+ (id)fetchCuratedAssetsForPerson:(id)a3 options:(id)a4 useSummary:(BOOL)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:)(v8, a4, a5);

  return v10;
}

+ (id)fetchCuratedAssetsForSocialGroup:(id)a3 options:(id)a4 useSummary:(BOOL)a5 includeOthersInSocialGroupAssets:(BOOL)a6
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  v12 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:includeOthersInSocialGroupAssets:)(v10, a4, a5, a6);

  return v12;
}

@end