@interface IntentHandler
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000014CC(v8);

  sub_100001A08(v8, v8[3]);
  v6 = sub_100001C84();
  sub_100001A4C(v8);

  return v6;
}

@end