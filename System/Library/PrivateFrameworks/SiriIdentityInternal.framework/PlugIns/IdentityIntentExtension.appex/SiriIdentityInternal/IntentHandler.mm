@interface IntentHandler
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001304(v4, v8);

  sub_100001778(v8, v8[3]);
  v6 = sub_100001994();
  sub_1000017BC(v8);

  return v6;
}

@end