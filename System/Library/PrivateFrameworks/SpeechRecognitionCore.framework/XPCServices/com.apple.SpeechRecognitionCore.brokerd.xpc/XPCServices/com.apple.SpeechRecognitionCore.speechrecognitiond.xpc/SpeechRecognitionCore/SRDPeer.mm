@interface SRDPeer
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer)init;
- (void)addOtherContext:(id)context;
- (void)brokerIntro:(id)intro reply:(id)reply;
- (void)clientUpdateWithMessage:(id)message;
- (void)crashServer;
- (void)helloWithObjectID:(int64_t)d liveAudio:(BOOL)audio deviceUID:(id)iD locale:(id)locale flags:(unint64_t)flags reply:(id)reply;
- (void)legacySendMessage:(id)message reply:(id)reply;
- (void)logUpdates;
- (void)phoneticNeighborsWithText:(id)text reply:(id)reply;
- (void)pingWithObjectID:(int64_t)d;
- (void)releaseResult:(unint64_t)result;
- (void)resetRecognition;
- (void)sendVitamins;
- (void)setResetRecognitionMode:(unint64_t)mode;
- (void)setSecureFieldFocused:(BOOL)focused;
@end

@implementation SRDPeer

- (void)helloWithObjectID:(int64_t)d liveAudio:(BOOL)audio deviceUID:(id)iD locale:(id)locale flags:(unint64_t)flags reply:(id)reply
{
  v12 = _Block_copy(reply);
  if (iD)
  {
    v13 = sub_1000C9B04();
    iD = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_1000C9B04();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  selfCopy = self;
  sub_1000518D0(audio, v13, iD, v15, v17, flags, v18);
}

- (void)pingWithObjectID:(int64_t)d
{
  selfCopy = self;
  sub_10004DF20(d);
}

- (void)crashServer
{
  selfCopy = self;
  sub_10004DFA4();
}

- (void)legacySendMessage:(id)message reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  messageCopy = message;
  selfCopy = self;
  sub_10004E01C(messageCopy, sub_1000537C0, v7);
}

- (void)clientUpdateWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_10004E46C(messageCopy);
}

- (void)setSecureFieldFocused:(BOOL)focused
{
  selfCopy = self;
  sub_10004EBC4(focused);
}

- (void)releaseResult:(unint64_t)result
{
  selfCopy = self;
  sub_10004EF5C(result);
}

- (void)addOtherContext:(id)context
{
  v4 = sub_1000C9B74();
  selfCopy = self;
  sub_10004F670(v4);
}

- (void)resetRecognition
{
  selfCopy = self;
  sub_10004FA8C();
}

- (void)setResetRecognitionMode:(unint64_t)mode
{
  selfCopy = self;
  sub_10004FB04(mode);
}

- (void)brokerIntro:(id)intro reply:(id)reply
{
  v6 = _Block_copy(reply);
  if (intro)
  {
    sub_1000C9B04();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100053794;
  }

  selfCopy = self;
  sub_100051BBC(v6);
  sub_100053784(v6);
}

- (void)logUpdates
{
  selfCopy = self;
  sub_100050364();
}

- (void)sendVitamins
{
  selfCopy = self;
  sub_1000503DC();
}

- (void)phoneticNeighborsWithText:(id)text reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_1000C9B04();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100050774(v6, v8, sub_1000549EC, v9);
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end