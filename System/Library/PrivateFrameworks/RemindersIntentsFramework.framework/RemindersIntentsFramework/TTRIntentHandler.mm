@interface TTRIntentHandler
- (id)handlerForIntent:(id)intent;
@end

@implementation TTRIntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  TTRIntentHandler.handler(for:)(intentCopy, v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_261D86B64();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

@end