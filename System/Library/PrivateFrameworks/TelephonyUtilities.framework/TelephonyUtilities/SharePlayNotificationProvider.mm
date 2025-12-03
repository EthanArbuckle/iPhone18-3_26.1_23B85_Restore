@interface SharePlayNotificationProvider
- (void)conversationManager:(id)manager conversation:(id)conversation launchStateChanged:(unint64_t)changed forActivitySession:(id)session;
- (void)conversationManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice;
- (void)foregroundApplicationChanged:(id)changed;
@end

@implementation SharePlayNotificationProvider

- (void)foregroundApplicationChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100453828(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)conversationManager:(id)manager conversation:(id)conversation participant:(id)participant addedNotice:(id)notice
{
  managerCopy = manager;
  conversationCopy = conversation;
  participantCopy = participant;
  noticeCopy = notice;
  selfCopy = self;
  sub_100454630(selfCopy, conversationCopy, participantCopy, noticeCopy);
}

- (void)conversationManager:(id)manager conversation:(id)conversation launchStateChanged:(unint64_t)changed forActivitySession:(id)session
{
  managerCopy = manager;
  conversationCopy = conversation;
  sessionCopy = session;
  selfCopy = self;
  sub_100454F34(selfCopy, conversationCopy, changed, sessionCopy);
}

@end