@interface IntentHandler
- (_TtC21AlarmIntentsExtension13IntentHandler)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_10000137C(intentCopy, v8);

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