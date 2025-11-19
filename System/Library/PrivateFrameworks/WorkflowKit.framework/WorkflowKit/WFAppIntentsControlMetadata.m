@interface WFAppIntentsControlMetadata
- (CHSControlIdentity)identity;
- (void)presentIfPossibleInUserInterface:(WFUserInterfaceHost *)a3 completionBlock:(id)a4;
@end

@implementation WFAppIntentsControlMetadata

- (CHSControlIdentity)identity
{
  v2 = ControlMetadata.identity.getter();

  return v2;
}

- (void)presentIfPossibleInUserInterface:(WFUserInterfaceHost *)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_1CA67052C(&unk_1CA990748, v7);
}

@end