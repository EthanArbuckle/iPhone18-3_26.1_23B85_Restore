@interface PKExtractedUIFlowItem
- (PKExtractedUIFlowItem)init;
- (id)viewControllerWithCompletion:(id)completion;
- (void)preflightWithCompletion:(id)completion;
@end

@implementation PKExtractedUIFlowItem

- (void)preflightWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  ExtractedUIFlowItem.preflight(completion:)(sub_1BD1B6B00, v5);
}

- (id)viewControllerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = ExtractedUIFlowItem.viewController(completion:)(sub_1BD166E88, v5);

  return v7;
}

- (PKExtractedUIFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end