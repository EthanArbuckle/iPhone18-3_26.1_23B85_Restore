@interface IntentHandler
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000013D4(v4, v8);

  sub_100001818(v8, v8[3]);
  v6 = sub_100002160();
  sub_10000185C(v8);

  return v6;
}

@end