@interface WFToolKitTypedValueContent
- (void)resolveWithVariableSource:(WFVariableDataSource *)source completionHandler:(id)handler;
@end

@implementation WFToolKitTypedValueContent

- (void)resolveWithVariableSource:(WFVariableDataSource *)source completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = source;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1000639A8();
}

@end