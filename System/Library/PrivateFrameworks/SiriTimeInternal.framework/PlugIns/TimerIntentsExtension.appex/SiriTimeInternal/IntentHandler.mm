@interface IntentHandler
- (_TtC21TimerIntentsExtension13IntentHandler)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_1000013CC(intentCopy, v8);

  sub_10000169C(v8, v8[3]);
  v6 = sub_100001EF4();
  sub_1000016E0(v8);

  return v6;
}

- (_TtC21TimerIntentsExtension13IntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v3 init];
}

@end