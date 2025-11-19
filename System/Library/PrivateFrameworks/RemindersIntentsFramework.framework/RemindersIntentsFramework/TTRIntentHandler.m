@interface TTRIntentHandler
- (id)handlerForIntent:(id)a3;
@end

@implementation TTRIntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  TTRIntentHandler.handler(for:)(v4, v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_261D86B64();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

@end