@interface IntentHandler
- (_TtC21AlarmIntentsExtension13IntentHandler)init;
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000137C(v4, v8);

  sub_1000015E8(v8, v8[3]);
  v6 = sub_100001860();
  sub_10000162C(v8);

  return v6;
}

- (_TtC21AlarmIntentsExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

@end