@interface AssessmentPayloadStore
+ (_TtC3asd22AssessmentPayloadStore)shared;
- (void)fetchFor:(NSString *)for withBindings:(NSDictionary *)bindings completionHandler:(id)handler;
@end

@implementation AssessmentPayloadStore

+ (_TtC3asd22AssessmentPayloadStore)shared
{
  v2 = static AssessmentPayloadStore.shared.getter();

  return v2;
}

- (void)fetchFor:(NSString *)for withBindings:(NSDictionary *)bindings completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = for;
  v9[3] = bindings;
  v9[4] = v8;
  v9[5] = self;
  forCopy = for;
  bindingsCopy = bindings;
  selfCopy = self;

  sub_1000CAD58(&unk_1005CEF88, v9);
}

@end