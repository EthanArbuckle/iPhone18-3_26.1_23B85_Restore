@interface TUMomentsProvider
- (BOOL)isEqualToProvider:(id)provider;
- (TUMomentsProvider)initWithCall:(id)call;
- (TUMomentsProvider)initWithConversation:(id)conversation;
- (id)description;
@end

@implementation TUMomentsProvider

- (TUMomentsProvider)initWithCall:(id)call
{
  callCopy = call;
  v16.receiver = self;
  v16.super_class = TUMomentsProvider;
  v5 = [(TUMomentsProvider *)&v16 init];
  if (v5)
  {
    providerContext = [callCopy providerContext];
    v7 = [providerContext objectForKeyedSubscript:@"TUCallFaceTimeRemoteIDSDestinationKey"];

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v8;
    if (v7)
    {
      [(NSDictionary *)v8 setObject:v7 forKeyedSubscript:v7];
    }

    remoteIDSDestinations = v5->_remoteIDSDestinations;
    v5->_remoteIDSDestinations = v9;
    v11 = v9;

    v5->_streamToken = [callCopy videoStreamToken];
    providerContext2 = [callCopy providerContext];
    v13 = [providerContext2 objectForKeyedSubscript:@"TUCallFaceTimeRemoteMomentsAvailableKey"];
    v5->_remoteMomentsAvailable = [v13 BOOLValue];

    requesterID = v5->_requesterID;
    v5->_requesterID = 0;
  }

  return v5;
}

- (TUMomentsProvider)initWithConversation:(id)conversation
{
  v35 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v33.receiver = self;
  v33.super_class = TUMomentsProvider;
  v5 = [(TUMomentsProvider *)&v33 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    v8 = [activeRemoteParticipants countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(activeRemoteParticipants);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          avcIdentifier = [v12 avcIdentifier];
          if (avcIdentifier)
          {
            v14 = avcIdentifier;
            activeIDSDestination = [v12 activeIDSDestination];

            if (activeIDSDestination)
            {
              activeIDSDestination2 = [v12 activeIDSDestination];
              avcIdentifier2 = [v12 avcIdentifier];
              [v6 setObject:activeIDSDestination2 forKeyedSubscript:avcIdentifier2];
            }
          }
        }

        v9 = [activeRemoteParticipants countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    if ([conversationCopy isOneToOneModeEnabled] && !objc_msgSend(v6, "count") && (objc_msgSend(conversationCopy, "isBackedByGroupSession") & 1) == 0)
    {
      activeRemoteParticipants2 = [conversationCopy activeRemoteParticipants];
      allObjects = [activeRemoteParticipants2 allObjects];
      firstObject = [allObjects firstObject];
      activeIDSDestination3 = [firstObject activeIDSDestination];

      if (activeIDSDestination3)
      {
        [v6 setObject:activeIDSDestination3 forKeyedSubscript:activeIDSDestination3];
      }
    }

    v22 = [v6 copy];
    remoteIDSDestinations = v5->_remoteIDSDestinations;
    v5->_remoteIDSDestinations = v22;

    v5->_streamToken = [conversationCopy avcSessionToken];
    v5->_remoteMomentsAvailable = 1;
    avcSessionIdentifier = [conversationCopy avcSessionIdentifier];
    v25 = [avcSessionIdentifier copy];
    requesterID = v5->_requesterID;
    v5->_requesterID = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToProvider:(id)provider
{
  providerCopy = provider;
  streamToken = [(TUMomentsProvider *)self streamToken];
  if (streamToken == [providerCopy streamToken])
  {
    remoteIDSDestinations = [(TUMomentsProvider *)self remoteIDSDestinations];
    remoteIDSDestinations2 = [providerCopy remoteIDSDestinations];
    if ([remoteIDSDestinations isEqualToDictionary:remoteIDSDestinations2])
    {
      requesterID = [providerCopy requesterID];
      requesterID2 = [(TUMomentsProvider *)self requesterID];
      if (requesterID == requesterID2)
      {
        v12 = 1;
      }

      else
      {
        requesterID3 = [(TUMomentsProvider *)self requesterID];
        requesterID4 = [providerCopy requesterID];
        v12 = [requesterID3 isEqualToString:requesterID4];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" streamToken=%ld", -[TUMomentsProvider streamToken](self, "streamToken")];
  remoteIDSDestinations = [(TUMomentsProvider *)self remoteIDSDestinations];
  [v3 appendFormat:@" remoteIDSDestinations=%@", remoteIDSDestinations];

  requesterID = [(TUMomentsProvider *)self requesterID];
  [v3 appendFormat:@" requesterID=%@", requesterID];

  [v3 appendString:@">"];

  return v3;
}

@end