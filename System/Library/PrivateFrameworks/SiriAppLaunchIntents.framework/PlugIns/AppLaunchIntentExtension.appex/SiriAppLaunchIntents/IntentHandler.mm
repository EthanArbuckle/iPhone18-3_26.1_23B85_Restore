@interface IntentHandler
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_1000013D4(intentCopy, v8);

  sub_100001818(v8, v8[3]);
  v6 = sub_100002160();
  sub_10000185C(v8);

  return v6;
}

@end