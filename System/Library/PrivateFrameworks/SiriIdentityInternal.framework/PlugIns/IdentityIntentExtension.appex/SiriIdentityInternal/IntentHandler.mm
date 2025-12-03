@interface IntentHandler
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_100001304(intentCopy, v8);

  sub_100001778(v8, v8[3]);
  v6 = sub_100001994();
  sub_1000017BC(v8);

  return v6;
}

@end