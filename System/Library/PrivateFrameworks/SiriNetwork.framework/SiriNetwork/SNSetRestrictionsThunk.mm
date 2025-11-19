@interface SNSetRestrictionsThunk
- (SNSetRestrictionsThunk)initWithDictionary:(id)a3;
- (SNSetRestrictionsThunk)initWithDictionary:(id)a3 context:(id)a4;
- (SNSetRestrictionsThunk)initWithThunk:(id)a3;
- (void)siriNetwork_invokeThunk;
@end

@implementation SNSetRestrictionsThunk

- (SNSetRestrictionsThunk)initWithThunk:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SNLinkRecommendationInfo?) -> ();
  }

  else
  {
    v5 = 0;
  }

  return SNSetRestrictionsThunk.init(thunk:)(v3, v5);
}

- (SNSetRestrictionsThunk)initWithDictionary:(id)a3 context:(id)a4
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  SNSetRestrictionsThunk.init(dictionary:context:)(v5, a4);
  return result;
}

- (SNSetRestrictionsThunk)initWithDictionary:(id)a3
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  SNSetRestrictionsThunk.init(dictionary:)();
  return result;
}

- (void)siriNetwork_invokeThunk
{
  v2 = self;
  SNSetRestrictionsThunk.siriNetwork_invokeThunk()();
}

@end