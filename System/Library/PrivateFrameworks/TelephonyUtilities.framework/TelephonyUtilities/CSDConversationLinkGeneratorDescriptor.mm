@interface CSDConversationLinkGeneratorDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (int64_t)hash;
- (void)setIdentifier:(id)identifier;
@end

@implementation CSDConversationLinkGeneratorDescriptor

- (NSString)identifier
{
  sub_1003DFA5C();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_1003DFB08(v4, v6);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1003DFC14(v8);

  sub_10004975C(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1003DFD8C();

  return v3;
}

@end