@interface CSDRelayCommonController
- (CSDRelayCommonController)initWithQueue:(id)queue;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (void)handlePlayDTMFToneForKeyMessage:(id)message;
- (void)handleRequestActionMessage:(id)message;
- (void)handleRequestedAnswerMessage:(id)message withBehavior:(int64_t)behavior;
- (void)handleSetTTYTypeMessage:(id)message;
- (void)handleSetUplinkMutedMessage:(id)message;
- (void)handleSuppressRingtoneMessage:(id)message;
- (void)handleUpdateSystemVolumeMessageFromHost:(id)host;
@end

@implementation CSDRelayCommonController

- (CSDRelayCommonController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CSDRelayCommonController;
  v6 = [(CSDRelayCommonController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callWithUniqueProxyIdentifier:identifierCopy];

  return v5;
}

- (void)handleRequestedAnswerMessage:(id)message withBehavior:(int64_t)behavior
{
  messageCopy = message;
  v6 = [TUAnswerRequest alloc];
  uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
  v11 = [v6 initWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  [v11 setBehavior:behavior];
  sourceIdentifier = [messageCopy sourceIdentifier];
  [v11 setSourceIdentifier:sourceIdentifier];

  endpointIDSDestination = [messageCopy endpointIDSDestination];

  [v11 setEndpointIDSDestination:endpointIDSDestination];
  v10 = +[TUCallCenter sharedInstance];
  [v10 answerWithRequest:v11];
}

- (void)handlePlayDTMFToneForKeyMessage:(id)message
{
  messageCopy = message;
  uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayCommonController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    dTMFKey = [messageCopy DTMFKey];
    if ([v6 isHostedOnCurrentDevice])
    {
      [v6 playRemoteDTMFToneForKey:dTMFKey];
    }

    else
    {
      [v6 playLocalDTMFToneForKey:dTMFKey];
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [messageCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleSetTTYTypeMessage:(id)message
{
  messageCopy = message;
  v5 = +[TUCallCenter sharedInstance];
  uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
  v7 = [v5 callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v7)
  {
    [v7 setTtyType:{objc_msgSend(messageCopy, "ttyType")}];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [messageCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v11 = 138412546;
      v12 = uniqueProxyIdentifier2;
      v13 = 2112;
      v14 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v11, 0x16u);
    }
  }
}

- (void)handleSetUplinkMutedMessage:(id)message
{
  messageCopy = message;
  v5 = +[TUCallCenter sharedInstance];
  uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
  v7 = [v5 callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v7)
  {
    provider = [v7 provider];
    isTinCanProvider = [provider isTinCanProvider];

    if (isTinCanProvider)
    {
      [messageCopy messageSendTime];
      v11 = v10;
      [v7 uplinkMutedSetTime];
      if (v11 <= v12)
      {
        v16 = sub_100004778();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          [messageCopy messageSendTime];
          v18 = v17;
          [v7 uplinkMutedSetTime];
          v20 = 138412802;
          v21 = messageCopy;
          v22 = 2048;
          v23 = v18;
          v24 = 2048;
          v25 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because messageSendTime (%f) <= call.uplinkMutedSetTime (%f)", &v20, 0x20u);
        }
      }

      else
      {
        [v7 setUplinkMuted:{objc_msgSend(messageCopy, "isUplinkMuted")}];
        [messageCopy messageSendTime];
        [v7 setUplinkMutedSetTime:?];
      }
    }

    else
    {
      [v7 setUplinkMuted:{objc_msgSend(messageCopy, "isUplinkMuted")}];
    }
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [messageCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v20 = 138412546;
      v21 = uniqueProxyIdentifier2;
      v22 = 2112;
      v23 = allCalls;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v20, 0x16u);
    }
  }
}

- (void)handleSuppressRingtoneMessage:(id)message
{
  messageCopy = message;
  uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayCommonController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 suppressRingtoneDueToRemoteSuppression];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [messageCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleUpdateSystemVolumeMessageFromHost:(id)host
{
  hostCopy = host;
  if ([hostCopy hasSystemVolume])
  {
    [hostCopy systemVolume];
    v4 = v3;
    v5 = +[TUAudioSystemController sharedAudioSystemController];
    LODWORD(v6) = v4;
    [v5 setActiveCategoryVolume:v6];
  }
}

- (void)handleRequestActionMessage:(id)message
{
  messageCopy = message;
  requestActionType = [messageCopy requestActionType];
  if (requestActionType > 35)
  {
    if (requestActionType == 36)
    {
      selfCopy4 = self;
      v7 = messageCopy;
      v8 = 2;
      goto LABEL_13;
    }

    if (requestActionType == 46)
    {
      selfCopy4 = self;
      v7 = messageCopy;
      v8 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (requestActionType == 19)
    {
      selfCopy4 = self;
      v7 = messageCopy;
      v8 = 0;
      goto LABEL_13;
    }

    if (requestActionType == 20)
    {
      selfCopy4 = self;
      v7 = messageCopy;
      v8 = 1;
LABEL_13:
      [(CSDRelayCommonController *)selfCopy4 handleRequestedAnswerMessage:v7 withBehavior:v8];
      goto LABEL_14;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = messageCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring received request action message because it has a request action type we don't know how to handle: %@", &v10, 0xCu);
  }

LABEL_14:
}

@end