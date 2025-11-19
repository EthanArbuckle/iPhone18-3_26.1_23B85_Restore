@interface _RTCReportingS
+ (BOOL)closeEphemeralSessiontWithSessionId:(id)a3;
+ (BOOL)sendOneMessageWithSessionInfo:(id)a3 userInfo:(id)a4 category:(unsigned __int16)a5 type:(unsigned __int16)a6 payload:(id)a7 error:(id *)a8;
+ (id)_privacyLogs:(id *)a3;
+ (id)createEphemeralSessionWithSessionInfo:(id)a3 userInfo:(id)a4 error:(id *)a5;
+ (id)getPersistentIdentifierForDNU:(BOOL)a3;
+ (id)newHierarchyTokenFromParentToken:(id)a3;
- (BOOL)sendMessageWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5 error:(id *)a6;
- (BOOL)sendMessageWithDictionary:(id)a3 error:(id *)a4;
- (BOOL)uploadDataArray:(id)a3 completionHandler:(id)a4;
- (BOOL)uploadFileWithURL:(id)a3 completionHandler:(id)a4;
- (RTCReportingMessageSentNotifier)messageSentDelegate;
- (_RTCReportingS)initWithSessionInfo:(id)a3 userInfo:(id)a4 frameworksToCheck:(id)a5;
- (_RTCReportingS)initWithSessionInfo:(id)a3 userInfo:(id)a4 frameworksToCheck:(id)a5 aggregationBlock:(id)a6;
- (id)getReportingSessionID;
- (id)messageLoggingBlock;
- (void)fetchReportingStatesWithUserInfo:(id)a3 fetchComplete:(id)a4;
- (void)flushMessages;
- (void)flushMessagesWithCompletion:(id)a3;
- (void)setMessageLoggingBlock:(id)a3;
- (void)setMessageSentDelegate:(id)a3;
- (void)startConfigurationWithCompletionHandler:(id)a3;
- (void)startLogTimerWithInterval:(int)a3 reportingMultiplier:(int)a4 category:(unsigned __int16)a5 type:(unsigned __int16)a6;
- (void)stopLogTimer;
- (void)terminateSessionWithCompletion:(id)a3;
- (void)unregisterPeriodTaskForModule:(unsigned int)a3;
- (void)updateSharedDataForKey:(id)a3 value:(id)a4;
- (void)updateSharedDataWithDictionary:(id)a3;
@end

@implementation _RTCReportingS

+ (id)newHierarchyTokenFromParentToken:(id)a3
{
  v3 = a3;
  static _RTCReportingS.newHierarchyTokenFromParentToken(_:)();
  v5 = v4;

  return v5;
}

- (_RTCReportingS)initWithSessionInfo:(id)a3 userInfo:(id)a4 frameworksToCheck:(id)a5
{
  sub_223C48258();
  sub_223C48258();
  if (a5)
  {
    sub_223C483A8();
  }

  _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)();
  return result;
}

- (_RTCReportingS)initWithSessionInfo:(id)a3 userInfo:(id)a4 frameworksToCheck:(id)a5 aggregationBlock:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_223C48258();
  if (a4)
  {
    a4 = sub_223C48258();
  }

  if (a5)
  {
    a5 = sub_223C483A8();
  }

  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v10 = sub_223C45140;
  }

  else
  {
    v10 = 0;
  }

  return _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:aggregationBlock:)(v9, a4, a5, v10);
}

- (void)startConfigurationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_223C34774;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  _RTCReportingS.startConfiguration(completionHandler:)();
  sub_223C28024(v5);
}

- (BOOL)sendMessageWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5 error:(id *)a6
{
  if (a5)
  {
    v10 = sub_223C48258();
  }

  else
  {
    v10 = 0;
  }

  v11 = self;
  v16.value._rawValue = v10;
  _RTCReportingS.sendMessage(category:type:payload:)(a3, a4, v16);

  if (v12)
  {
    if (a6)
    {
      v13 = sub_223C48048();

      v14 = v13;
      *a6 = v13;
    }

    else
    {
    }
  }

  return v12 == 0;
}

- (BOOL)sendMessageWithDictionary:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = sub_223C48258();
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  v12.value._rawValue = v6;
  _RTCReportingS.sendMessage(dictionary:)(v12);

  if (v8)
  {
    if (a4)
    {
      v9 = sub_223C48048();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (id)getReportingSessionID
{
  v2 = self;
  _RTCReportingS.getReportingSessionID()();

  v3 = sub_223C48318();

  return v3;
}

- (void)flushMessages
{
  v2 = self;
  _RTCReportingS.flushMessages()();
}

- (id)messageLoggingBlock
{
  v2 = _RTCReportingS.messageLoggingBlock.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_223C3E9F8;
    v6[3] = &block_descriptor_50;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMessageLoggingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_223C45148;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  _RTCReportingS.messageLoggingBlock.setter(v4, v5);
}

- (RTCReportingMessageSentNotifier)messageSentDelegate
{
  v2 = _RTCReportingS.messageSentDelegate.getter();

  return v2;
}

- (void)setMessageSentDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _RTCReportingS.messageSentDelegate.setter();
}

- (void)fetchReportingStatesWithUserInfo:(id)a3 fetchComplete:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_223C48258();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_223C34650;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  _RTCReportingS.fetchReportingStates(userInfo:fetchComplete:)(v6, v5, v7);
  sub_223C28024(v5);
}

- (void)flushMessagesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_223C45A90;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  _RTCReportingS.flushMessages(completion:)();
  sub_223C28024(v5);
}

+ (id)getPersistentIdentifierForDNU:(BOOL)a3
{
  v3 = sub_223C48318();

  return v3;
}

+ (BOOL)sendOneMessageWithSessionInfo:(id)a3 userInfo:(id)a4 category:(unsigned __int16)a5 type:(unsigned __int16)a6 payload:(id)a7 error:(id *)a8
{
  v11 = sub_223C48258();
  v12 = sub_223C48258();
  if (a7)
  {
    a7 = sub_223C48258();
  }

  swift_getObjCClassMetadata();
  static _RTCReportingS.sendOneMessage(sessionInfo:userInfo:category:type:payload:)(v11, v12, a5, a6, a7);

  return 1;
}

+ (id)createEphemeralSessionWithSessionInfo:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  sub_223C48258();
  sub_223C48258();

  v5 = sub_223C48318();

  return v5;
}

+ (BOOL)closeEphemeralSessiontWithSessionId:(id)a3
{
  sub_223C48328();

  return 0;
}

- (void)updateSharedDataWithDictionary:(id)a3
{
  sub_223C48258();
  v4 = self;
  _RTCReportingS.updateSharedData(dictionary:)(v4);
}

- (void)updateSharedDataForKey:(id)a3 value:(id)a4
{
  sub_223C48328();
  v6 = a4;
  v7._countAndFlagsBits = self;
  countAndFlagsBits = v7._countAndFlagsBits;
  _RTCReportingS.updateSharedData(key:value:)(v7, v9);
}

- (void)startLogTimerWithInterval:(int)a3 reportingMultiplier:(int)a4 category:(unsigned __int16)a5 type:(unsigned __int16)a6
{
  v10 = self;
  _RTCReportingS.startLogTimer(interval:reportingMultiplier:category:type:)(a3, a4, a5, a6);
}

- (void)stopLogTimer
{
  v2 = self;
  _RTCReportingS.stopLogTimer()();
}

- (void)unregisterPeriodTaskForModule:(unsigned int)a3
{
  v4 = self;
  _RTCReportingS.unregisterPeriodicTask(module:)(a3);
}

- (BOOL)uploadFileWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_223C45A98;
  }

  v7 = a3;
  v8 = self;
  _RTCReportingS.uploadFile(URL:completionHandler:)();
  sub_223C28024(v6);

  return 0;
}

- (BOOL)uploadDataArray:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_223C483A8();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_223C45110;
  }

  v6 = self;
  _RTCReportingS.uploadFile(URL:completionHandler:)();
  sub_223C28024(v5);

  return 0;
}

- (void)terminateSessionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_223C45100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  _RTCReportingS.terminateSession(completion:)(v7, v6);
  sub_223C28024(v7);
}

+ (id)_privacyLogs:(id *)a3
{
  static _RTCReportingS._privacyLogs()();
  sub_223C480C8();
  v3 = sub_223C48398();

  return v3;
}

@end