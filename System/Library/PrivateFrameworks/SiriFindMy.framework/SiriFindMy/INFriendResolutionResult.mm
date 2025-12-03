@interface INFriendResolutionResult
+ (id)confirmationRequiredWithINFriendToConfirm:(id)confirm;
+ (id)disambiguationWithINFriendsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedINFriend:(id)friend;
@end

@implementation INFriendResolutionResult

+ (id)successWithResolvedINFriend:(id)friend
{
  swift_getObjCClassMetadata();
  friendCopy = friend;
  v5 = sub_266DA5B28(friendCopy);

  return v5;
}

+ (id)disambiguationWithINFriendsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INFriend();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA5B8C(v3);

  return v4;
}

+ (id)confirmationRequiredWithINFriendToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266DA5C84(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA620C();
}

@end