@interface SNSetRestrictionsThunk
- (SNSetRestrictionsThunk)initWithDictionary:(id)dictionary;
- (SNSetRestrictionsThunk)initWithDictionary:(id)dictionary context:(id)context;
- (SNSetRestrictionsThunk)initWithThunk:(id)thunk;
- (void)siriNetwork_invokeThunk;
@end

@implementation SNSetRestrictionsThunk

- (SNSetRestrictionsThunk)initWithThunk:(id)thunk
{
  v3 = _Block_copy(thunk);
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

- (SNSetRestrictionsThunk)initWithDictionary:(id)dictionary context:(id)context
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  SNSetRestrictionsThunk.init(dictionary:context:)(v5, context);
  return result;
}

- (SNSetRestrictionsThunk)initWithDictionary:(id)dictionary
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  SNSetRestrictionsThunk.init(dictionary:)();
  return result;
}

- (void)siriNetwork_invokeThunk
{
  selfCopy = self;
  SNSetRestrictionsThunk.siriNetwork_invokeThunk()();
}

@end