@interface PKExtractedUIFlowItem
- (PKExtractedUIFlowItem)init;
- (id)viewControllerWithCompletion:(id)a3;
- (void)preflightWithCompletion:(id)a3;
@end

@implementation PKExtractedUIFlowItem

- (void)preflightWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  ExtractedUIFlowItem.preflight(completion:)(sub_1BD1B6B00, v5);
}

- (id)viewControllerWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
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