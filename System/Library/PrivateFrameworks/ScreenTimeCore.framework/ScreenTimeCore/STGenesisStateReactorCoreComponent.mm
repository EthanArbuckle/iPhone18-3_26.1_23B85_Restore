@interface STGenesisStateReactorCoreComponent
+ (id)updateExpiredAwaitingResponseFamilyMemberGenesisStateItemsToPending:(id)pending;
+ (id)updateFamilyMemberGenesisStateItems:(id)items receivedMessage:(id)message;
+ (id)updateFamilyMemberGenesisStateItems:(id)items targetableFamilyMembers:(id)members;
+ (id)updatePendingFamilyMemberGenesisStateItemsToAwaitingResponse:(id)response;
@end

@implementation STGenesisStateReactorCoreComponent

+ (id)updateFamilyMemberGenesisStateItems:(id)items receivedMessage:(id)message
{
  itemsCopy = items;
  returnAddress = [message returnAddress];
  userDSID = [returnAddress userDSID];

  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        userID = [v14 userID];
        dsid = [userID dsid];
        v17 = [dsid isEqualToNumber:userDSID];

        if (v17)
        {
          v18 = [v14 itemWithUpdatedState:2];

          v14 = v18;
        }

        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = [v8 copy];

  return v19;
}

+ (id)updateFamilyMemberGenesisStateItems:(id)items targetableFamilyMembers:(id)members
{
  itemsCopy = items;
  membersCopy = members;
  v7 = objc_opt_new();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003FEC8;
  v26[3] = &unk_1001A40E8;
  v8 = objc_opt_new();
  v27 = v8;
  [itemsCopy enumerateObjectsUsingBlock:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = membersCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (([v14 isSignedInMember] & 1) == 0)
        {
          dsid = [v14 dsid];
          v16 = [v8 objectForKeyedSubscript:dsid];

          if (!v16)
          {
            v17 = [STUserID alloc];
            dsid2 = [v14 dsid];
            v19 = [v17 initWithDSID:dsid2];

            v16 = [[STFamilyMemberGenesisStateItem alloc] initWithUserID:v19 genesisState:0];
          }

          [v7 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = [v7 copy];

  return v20;
}

+ (id)updatePendingFamilyMemberGenesisStateItemsToAwaitingResponse:(id)response
{
  responseCopy = response;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = responseCopy;
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

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![v10 genesisState])
        {
          v11 = [v10 itemWithUpdatedState:1];

          v10 = v11;
        }

        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)updateExpiredAwaitingResponseFamilyMemberGenesisStateItemsToPending:(id)pending
{
  pendingCopy = pending;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = pendingCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138543362;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([(STFamilyMemberGenesisStateItem *)v11 genesisState]== 1 && [(STFamilyMemberGenesisStateItem *)v11 expired])
        {
          v12 = +[STLog familyMemberGenesisStateStore];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            userID = [(STFamilyMemberGenesisStateItem *)v11 userID];
            *buf = v19;
            v25 = userID;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting expired state to pending for user: %{public}@", buf, 0xCu);
          }

          v14 = [STFamilyMemberGenesisStateItem alloc];
          userID2 = [(STFamilyMemberGenesisStateItem *)v11 userID];
          v16 = [(STFamilyMemberGenesisStateItem *)v14 initWithUserID:userID2 genesisState:0];

          v11 = v16;
        }

        [v4 addObject:{v11, v19, v20}];
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = [v4 copy];

  return v17;
}

@end