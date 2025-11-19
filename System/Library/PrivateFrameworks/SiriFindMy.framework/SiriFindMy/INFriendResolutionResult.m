@interface INFriendResolutionResult
+ (id)confirmationRequiredWithINFriendToConfirm:(id)a3;
+ (id)disambiguationWithINFriendsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedINFriend:(id)a3;
@end

@implementation INFriendResolutionResult

+ (id)successWithResolvedINFriend:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA5B28(v4);

  return v5;
}

+ (id)disambiguationWithINFriendsToDisambiguate:(id)a3
{
  type metadata accessor for INFriend();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA5B8C(v3);

  return v4;
}

+ (id)confirmationRequiredWithINFriendToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA5C84(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA620C();
}

@end