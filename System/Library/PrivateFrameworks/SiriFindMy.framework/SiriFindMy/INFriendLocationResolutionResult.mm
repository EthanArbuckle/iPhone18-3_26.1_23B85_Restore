@interface INFriendLocationResolutionResult
+ (id)confirmationRequiredWithINFriendLocationToConfirm:(id)confirm;
+ (id)disambiguationWithINFriendLocationsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedINFriendLocation:(id)location;
@end

@implementation INFriendLocationResolutionResult

+ (id)successWithResolvedINFriendLocation:(id)location
{
  swift_getObjCClassMetadata();
  locationCopy = location;
  v5 = sub_266DA6960(locationCopy);

  return v5;
}

+ (id)disambiguationWithINFriendLocationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INFriendLocation();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA6A14(v3);

  return v4;
}

+ (id)confirmationRequiredWithINFriendLocationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266DA6B78(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA6C7C();
}

@end