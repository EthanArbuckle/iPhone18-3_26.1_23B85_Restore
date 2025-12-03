@interface IntentHandler
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_100001470(intentCopy, v8);

  sub_10000187C(v8, v8[3]);
  v6 = sub_1000019EC();
  sub_100001920(v8);

  return v6;
}

@end