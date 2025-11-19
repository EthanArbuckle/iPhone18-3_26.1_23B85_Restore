@interface TUMomentsProvider
- (BOOL)isEqualToProvider:(id)a3;
- (TUMomentsProvider)initWithCall:(id)a3;
- (TUMomentsProvider)initWithConversation:(id)a3;
- (id)description;
@end

@implementation TUMomentsProvider

- (TUMomentsProvider)initWithCall:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TUMomentsProvider;
  v5 = [(TUMomentsProvider *)&v16 init];
  if (v5)
  {
    v6 = [v4 providerContext];
    v7 = [v6 objectForKeyedSubscript:@"TUCallFaceTimeRemoteIDSDestinationKey"];

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v8;
    if (v7)
    {
      [(NSDictionary *)v8 setObject:v7 forKeyedSubscript:v7];
    }

    remoteIDSDestinations = v5->_remoteIDSDestinations;
    v5->_remoteIDSDestinations = v9;
    v11 = v9;

    v5->_streamToken = [v4 videoStreamToken];
    v12 = [v4 providerContext];
    v13 = [v12 objectForKeyedSubscript:@"TUCallFaceTimeRemoteMomentsAvailableKey"];
    v5->_remoteMomentsAvailable = [v13 BOOLValue];

    requesterID = v5->_requesterID;
    v5->_requesterID = 0;
  }

  return v5;
}

- (TUMomentsProvider)initWithConversation:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v7 = [v4 activeRemoteParticipants];
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v12 avcIdentifier];
          if (v13)
          {
            v14 = v13;
            v15 = [v12 activeIDSDestination];

            if (v15)
            {
              v16 = [v12 activeIDSDestination];
              v17 = [v12 avcIdentifier];
              [v6 setObject:v16 forKeyedSubscript:v17];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    if ([v4 isOneToOneModeEnabled] && !objc_msgSend(v6, "count") && (objc_msgSend(v4, "isBackedByGroupSession") & 1) == 0)
    {
      v18 = [v4 activeRemoteParticipants];
      v19 = [v18 allObjects];
      v20 = [v19 firstObject];
      v21 = [v20 activeIDSDestination];

      if (v21)
      {
        [v6 setObject:v21 forKeyedSubscript:v21];
      }
    }

    v22 = [v6 copy];
    remoteIDSDestinations = v5->_remoteIDSDestinations;
    v5->_remoteIDSDestinations = v22;

    v5->_streamToken = [v4 avcSessionToken];
    v5->_remoteMomentsAvailable = 1;
    v24 = [v4 avcSessionIdentifier];
    v25 = [v24 copy];
    requesterID = v5->_requesterID;
    v5->_requesterID = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsProvider *)self streamToken];
  if (v5 == [v4 streamToken])
  {
    v6 = [(TUMomentsProvider *)self remoteIDSDestinations];
    v7 = [v4 remoteIDSDestinations];
    if ([v6 isEqualToDictionary:v7])
    {
      v8 = [v4 requesterID];
      v9 = [(TUMomentsProvider *)self requesterID];
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        v10 = [(TUMomentsProvider *)self requesterID];
        v11 = [v4 requesterID];
        v12 = [v10 isEqualToString:v11];
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
  v4 = [(TUMomentsProvider *)self remoteIDSDestinations];
  [v3 appendFormat:@" remoteIDSDestinations=%@", v4];

  v5 = [(TUMomentsProvider *)self requesterID];
  [v3 appendFormat:@" requesterID=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

@end