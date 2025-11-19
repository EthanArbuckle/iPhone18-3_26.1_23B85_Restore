@interface TUConversation
- (BOOL)anyActiveParticipantHasAV;
- (BOOL)isEligibleForCall;
- (BOOL)shouldAdvertiseConversationHandoff;
- (NSSet)activeRemoteParticipantCXHandles;
@end

@implementation TUConversation

- (BOOL)isEligibleForCall
{
  v3 = objc_alloc_init(TUFeatureFlags);
  if ([v3 avLessSharePlayEnabled])
  {
    v4 = [(TUConversation *)self avMode]!= 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)anyActiveParticipantHasAV
{
  v3 = objc_alloc_init(TUFeatureFlags);
  if ([v3 avLessSharePlayEnabled])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(TUConversation *)self activeRemoteParticipants];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v9 + 1) + 8 * i) audioVideoMode])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (NSSet)activeRemoteParticipantCXHandles
{
  v3 = [(TUConversation *)self activeRemoteParticipants];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(TUConversation *)self activeRemoteParticipants];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) handle];
        v11 = [CXHandle handleWithTUHandle:v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (BOOL)shouldAdvertiseConversationHandoff
{
  if (([(TUConversation *)self isScreening]& 1) != 0 || ([(TUConversation *)self isContinuitySession]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(TUConversation *)self isNearbySession]^ 1;
  }
}

@end