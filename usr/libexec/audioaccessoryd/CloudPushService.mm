@interface CloudPushService
+ (_TtC15audioaccessoryd16CloudPushService)shared;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)start;
@end

@implementation CloudPushService

+ (_TtC15audioaccessoryd16CloudPushService)shared
{
  if (qword_1002F7AC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100300E00;

  return v3;
}

- (void)start
{
  selfCopy = self;
  sub_10016A394();
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    tokenCopy = token;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_10016C684(v9, v11);
  sub_1000FF5CC(v9, v11);
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    topicCopy = topic;
    identifierCopy = identifier;
    selfCopy = self;
    v14 = tokenCopy;
    tokenCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (topic)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  connectionCopy2 = connection;
  topicCopy2 = topic;
  identifierCopy2 = identifier;
  selfCopy2 = self;
  v16 = 0xF000000000000000;
  if (!topic)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (identifier)
  {
LABEL_4:
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
  v22 = 0;
LABEL_8:
  sub_10016C89C(tokenCopy, v16, v17, v19, v20, v22);

  sub_1000FF5CC(tokenCopy, v16);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_10016CB2C(message);
}

@end