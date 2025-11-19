@interface IntentHandler
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001470(v4, v8);

  sub_10000187C(v8, v8[3]);
  v6 = sub_1000019EC();
  sub_100001920(v8);

  return v6;
}

@end