@interface WFAppIntentsControlMetadata
- (CHSControlIdentity)identity;
- (void)presentIfPossibleInUserInterface:(WFUserInterfaceHost *)interface completionBlock:(id)block;
@end

@implementation WFAppIntentsControlMetadata

- (CHSControlIdentity)identity
{
  v2 = ControlMetadata.identity.getter();

  return v2;
}

- (void)presentIfPossibleInUserInterface:(WFUserInterfaceHost *)interface completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  v7[2] = interface;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1CA67052C(&unk_1CA990748, v7);
}

@end