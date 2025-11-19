@interface INFriendLocationResolutionResult
+ (id)confirmationRequiredWithINFriendLocationToConfirm:(id)a3;
+ (id)disambiguationWithINFriendLocationsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedINFriendLocation:(id)a3;
@end

@implementation INFriendLocationResolutionResult

+ (id)successWithResolvedINFriendLocation:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA6960(v4);

  return v5;
}

+ (id)disambiguationWithINFriendLocationsToDisambiguate:(id)a3
{
  type metadata accessor for INFriendLocation();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA6A14(v3);

  return v4;
}

+ (id)confirmationRequiredWithINFriendLocationToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA6B78(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA6C7C();
}

@end