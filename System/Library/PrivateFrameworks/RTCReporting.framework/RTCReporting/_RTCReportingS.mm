@interface _RTCReportingS
+ (BOOL)closeEphemeralSessiontWithSessionId:(id)id;
+ (BOOL)sendOneMessageWithSessionInfo:(id)info userInfo:(id)userInfo category:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload error:(id *)error;
+ (id)_privacyLogs:(id *)logs;
+ (id)createEphemeralSessionWithSessionInfo:(id)info userInfo:(id)userInfo error:(id *)error;
+ (id)getPersistentIdentifierForDNU:(BOOL)u;
+ (id)newHierarchyTokenFromParentToken:(id)token;
- (BOOL)sendMessageWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload error:(id *)error;
- (BOOL)sendMessageWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)uploadDataArray:(id)array completionHandler:(id)handler;
- (BOOL)uploadFileWithURL:(id)l completionHandler:(id)handler;
- (RTCReportingMessageSentNotifier)messageSentDelegate;
- (_RTCReportingS)initWithSessionInfo:(id)info userInfo:(id)userInfo frameworksToCheck:(id)check;
- (_RTCReportingS)initWithSessionInfo:(id)info userInfo:(id)userInfo frameworksToCheck:(id)check aggregationBlock:(id)block;
- (id)getReportingSessionID;
- (id)messageLoggingBlock;
- (void)fetchReportingStatesWithUserInfo:(id)info fetchComplete:(id)complete;
- (void)flushMessages;
- (void)flushMessagesWithCompletion:(id)completion;
- (void)setMessageLoggingBlock:(id)block;
- (void)setMessageSentDelegate:(id)delegate;
- (void)startConfigurationWithCompletionHandler:(id)handler;
- (void)startLogTimerWithInterval:(int)interval reportingMultiplier:(int)multiplier category:(unsigned __int16)category type:(unsigned __int16)type;
- (void)stopLogTimer;
- (void)terminateSessionWithCompletion:(id)completion;
- (void)unregisterPeriodTaskForModule:(unsigned int)module;
- (void)updateSharedDataForKey:(id)key value:(id)value;
- (void)updateSharedDataWithDictionary:(id)dictionary;
@end

@implementation _RTCReportingS

+ (id)newHierarchyTokenFromParentToken:(id)token
{
  tokenCopy = token;
  static _RTCReportingS.newHierarchyTokenFromParentToken(_:)();
  v5 = v4;

  return v5;
}

- (_RTCReportingS)initWithSessionInfo:(id)info userInfo:(id)userInfo frameworksToCheck:(id)check
{
  sub_223C48258();
  sub_223C48258();
  if (check)
  {
    sub_223C483A8();
  }

  _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)();
  return result;
}

- (_RTCReportingS)initWithSessionInfo:(id)info userInfo:(id)userInfo frameworksToCheck:(id)check aggregationBlock:(id)block
{
  v8 = _Block_copy(block);
  v9 = sub_223C48258();
  if (userInfo)
  {
    userInfo = sub_223C48258();
  }

  if (check)
  {
    check = sub_223C483A8();
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

  return _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:aggregationBlock:)(v9, userInfo, check, v10);
}

- (void)startConfigurationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_223C34774;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  _RTCReportingS.startConfiguration(completionHandler:)();
  sub_223C28024(v5);
}

- (BOOL)sendMessageWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload error:(id *)error
{
  if (payload)
  {
    v10 = sub_223C48258();
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  v16.value._rawValue = v10;
  _RTCReportingS.sendMessage(category:type:payload:)(category, type, v16);

  if (v12)
  {
    if (error)
    {
      v13 = sub_223C48048();

      v14 = v13;
      *error = v13;
    }

    else
    {
    }
  }

  return v12 == 0;
}

- (BOOL)sendMessageWithDictionary:(id)dictionary error:(id *)error
{
  if (dictionary)
  {
    v6 = sub_223C48258();
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  v12.value._rawValue = v6;
  _RTCReportingS.sendMessage(dictionary:)(v12);

  if (v8)
  {
    if (error)
    {
      v9 = sub_223C48048();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (id)getReportingSessionID
{
  selfCopy = self;
  _RTCReportingS.getReportingSessionID()();

  v3 = sub_223C48318();

  return v3;
}

- (void)flushMessages
{
  selfCopy = self;
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

- (void)setMessageLoggingBlock:(id)block
{
  v4 = _Block_copy(block);
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

  selfCopy = self;
  _RTCReportingS.messageLoggingBlock.setter(v4, v5);
}

- (RTCReportingMessageSentNotifier)messageSentDelegate
{
  v2 = _RTCReportingS.messageSentDelegate.getter();

  return v2;
}

- (void)setMessageSentDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _RTCReportingS.messageSentDelegate.setter();
}

- (void)fetchReportingStatesWithUserInfo:(id)info fetchComplete:(id)complete
{
  v5 = _Block_copy(complete);
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

  selfCopy = self;
  _RTCReportingS.fetchReportingStates(userInfo:fetchComplete:)(v6, v5, v7);
  sub_223C28024(v5);
}

- (void)flushMessagesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_223C45A90;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  _RTCReportingS.flushMessages(completion:)();
  sub_223C28024(v5);
}

+ (id)getPersistentIdentifierForDNU:(BOOL)u
{
  v3 = sub_223C48318();

  return v3;
}

+ (BOOL)sendOneMessageWithSessionInfo:(id)info userInfo:(id)userInfo category:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload error:(id *)error
{
  v11 = sub_223C48258();
  v12 = sub_223C48258();
  if (payload)
  {
    payload = sub_223C48258();
  }

  swift_getObjCClassMetadata();
  static _RTCReportingS.sendOneMessage(sessionInfo:userInfo:category:type:payload:)(v11, v12, category, type, payload);

  return 1;
}

+ (id)createEphemeralSessionWithSessionInfo:(id)info userInfo:(id)userInfo error:(id *)error
{
  sub_223C48258();
  sub_223C48258();

  v5 = sub_223C48318();

  return v5;
}

+ (BOOL)closeEphemeralSessiontWithSessionId:(id)id
{
  sub_223C48328();

  return 0;
}

- (void)updateSharedDataWithDictionary:(id)dictionary
{
  sub_223C48258();
  selfCopy = self;
  _RTCReportingS.updateSharedData(dictionary:)(selfCopy);
}

- (void)updateSharedDataForKey:(id)key value:(id)value
{
  sub_223C48328();
  valueCopy = value;
  v7._countAndFlagsBits = self;
  countAndFlagsBits = v7._countAndFlagsBits;
  _RTCReportingS.updateSharedData(key:value:)(v7, v9);
}

- (void)startLogTimerWithInterval:(int)interval reportingMultiplier:(int)multiplier category:(unsigned __int16)category type:(unsigned __int16)type
{
  selfCopy = self;
  _RTCReportingS.startLogTimer(interval:reportingMultiplier:category:type:)(interval, multiplier, category, type);
}

- (void)stopLogTimer
{
  selfCopy = self;
  _RTCReportingS.stopLogTimer()();
}

- (void)unregisterPeriodTaskForModule:(unsigned int)module
{
  selfCopy = self;
  _RTCReportingS.unregisterPeriodicTask(module:)(module);
}

- (BOOL)uploadFileWithURL:(id)l completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_223C45A98;
  }

  lCopy = l;
  selfCopy = self;
  _RTCReportingS.uploadFile(URL:completionHandler:)();
  sub_223C28024(v6);

  return 0;
}

- (BOOL)uploadDataArray:(id)array completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_223C483A8();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_223C45110;
  }

  selfCopy = self;
  _RTCReportingS.uploadFile(URL:completionHandler:)();
  sub_223C28024(v5);

  return 0;
}

- (void)terminateSessionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  _RTCReportingS.terminateSession(completion:)(v7, v6);
  sub_223C28024(v7);
}

+ (id)_privacyLogs:(id *)logs
{
  static _RTCReportingS._privacyLogs()();
  sub_223C480C8();
  v3 = sub_223C48398();

  return v3;
}

@end