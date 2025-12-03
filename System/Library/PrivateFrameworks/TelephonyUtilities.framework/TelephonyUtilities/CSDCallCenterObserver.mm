@interface CSDCallCenterObserver
- (CSDCallCenterObserverDelegate)delegate;
- (CSDCallContainer)callContainer;
- (id)activeConversationForCall:(id)call;
- (id)callChanged;
- (void)handleSharePlayTrigger:(id)trigger;
- (void)setCallChanged:(id)changed;
- (void)setDelegate:(id)delegate;
- (void)setTriggers:(unint64_t)triggers;
@end

@implementation CSDCallCenterObserver

- (CSDCallContainer)callContainer
{
  selfCopy = self;
  v3 = sub_1000131E8();

  return v3;
}

- (id)activeConversationForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v6 = sub_100044B4C(callCopy);

  return v6;
}

- (CSDCallCenterObserverDelegate)delegate
{
  v2 = sub_1002C8E94();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002C8F04();
}

- (void)setTriggers:(unint64_t)triggers
{
  selfCopy = self;
  sub_1002C8FD4(triggers);
}

- (id)callChanged
{
  v2 = sub_1002C93DC();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100028100;
    v6[3] = &unk_100624C90;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCallChanged:(id)changed
{
  v4 = _Block_copy(changed);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100008E9C;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1002C94C4(v4, v5);
}

- (void)handleSharePlayTrigger:(id)trigger
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002C9D80(v9);

  (*(v5 + 8))(v9, v4);
}

@end