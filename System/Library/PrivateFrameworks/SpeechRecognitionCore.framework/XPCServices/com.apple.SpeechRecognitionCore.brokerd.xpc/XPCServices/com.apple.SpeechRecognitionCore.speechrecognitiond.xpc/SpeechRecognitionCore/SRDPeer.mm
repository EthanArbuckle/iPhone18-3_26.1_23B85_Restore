@interface SRDPeer
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer)init;
- (void)addOtherContext:(id)a3;
- (void)brokerIntro:(id)a3 reply:(id)a4;
- (void)clientUpdateWithMessage:(id)a3;
- (void)crashServer;
- (void)helloWithObjectID:(int64_t)a3 liveAudio:(BOOL)a4 deviceUID:(id)a5 locale:(id)a6 flags:(unint64_t)a7 reply:(id)a8;
- (void)legacySendMessage:(id)a3 reply:(id)a4;
- (void)logUpdates;
- (void)phoneticNeighborsWithText:(id)a3 reply:(id)a4;
- (void)pingWithObjectID:(int64_t)a3;
- (void)releaseResult:(unint64_t)a3;
- (void)resetRecognition;
- (void)sendVitamins;
- (void)setResetRecognitionMode:(unint64_t)a3;
- (void)setSecureFieldFocused:(BOOL)a3;
@end

@implementation SRDPeer

- (void)helloWithObjectID:(int64_t)a3 liveAudio:(BOOL)a4 deviceUID:(id)a5 locale:(id)a6 flags:(unint64_t)a7 reply:(id)a8
{
  v12 = _Block_copy(a8);
  if (a5)
  {
    v13 = sub_1000C9B04();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_1000C9B04();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = self;
  sub_1000518D0(a4, v13, a5, v15, v17, a7, v18);
}

- (void)pingWithObjectID:(int64_t)a3
{
  v4 = self;
  sub_10004DF20(a3);
}

- (void)crashServer
{
  v2 = self;
  sub_10004DFA4();
}

- (void)legacySendMessage:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_10004E01C(v8, sub_1000537C0, v7);
}

- (void)clientUpdateWithMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004E46C(v4);
}

- (void)setSecureFieldFocused:(BOOL)a3
{
  v4 = self;
  sub_10004EBC4(a3);
}

- (void)releaseResult:(unint64_t)a3
{
  v4 = self;
  sub_10004EF5C(a3);
}

- (void)addOtherContext:(id)a3
{
  v4 = sub_1000C9B74();
  v5 = self;
  sub_10004F670(v4);
}

- (void)resetRecognition
{
  v2 = self;
  sub_10004FA8C();
}

- (void)setResetRecognitionMode:(unint64_t)a3
{
  v4 = self;
  sub_10004FB04(a3);
}

- (void)brokerIntro:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    sub_1000C9B04();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100053794;
  }

  v7 = self;
  sub_100051BBC(v6);
  sub_100053784(v6);
}

- (void)logUpdates
{
  v2 = self;
  sub_100050364();
}

- (void)sendVitamins
{
  v2 = self;
  sub_1000503DC();
}

- (void)phoneticNeighborsWithText:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1000C9B04();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100050774(v6, v8, sub_1000549EC, v9);
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiondP33_75FD5A1F1407B6CD2818F6068F35A2997SRDPeer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end