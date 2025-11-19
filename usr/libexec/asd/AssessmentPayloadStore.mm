@interface AssessmentPayloadStore
+ (_TtC3asd22AssessmentPayloadStore)shared;
- (void)fetchFor:(NSString *)a3 withBindings:(NSDictionary *)a4 completionHandler:(id)a5;
@end

@implementation AssessmentPayloadStore

+ (_TtC3asd22AssessmentPayloadStore)shared
{
  v2 = static AssessmentPayloadStore.shared.getter();

  return v2;
}

- (void)fetchFor:(NSString *)a3 withBindings:(NSDictionary *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1000CAD58(&unk_1005CEF88, v9);
}

@end