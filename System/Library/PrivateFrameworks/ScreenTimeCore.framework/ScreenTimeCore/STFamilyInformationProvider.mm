@interface STFamilyInformationProvider
+ (id)_targetableMemberFromPrimitiveMember:(id)a3;
- (BOOL)validateAddressIsAllowed:(id)a3;
- (STFamilyInformationProvider)initWithFamilyCirclePrimitives:(id)a3 deviceInformationPrimitives:(id)a4 contactStorePrimitives:(id)a5;
- (STFamilyProvidingObserver)observer;
- (STMessageTransportMessageAddress)returnAddress;
- (id)_fetchFamilyMemberWithPredicate:(id)a3;
- (id)_refreshFamilyMemberCacheWithError:(id *)a3;
- (id)appleIDForUserDSID:(id)a3;
- (id)fetchNumberOfContactsForUserID:(id)a3;
- (id)fetchTargetableFamilyMembersWithError:(id *)a3;
- (id)userDSIDForAppleID:(id)a3;
- (void)primitives:(id)a3 didFetchFamilyMembers:(id)a4 error:(id)a5;
@end

@implementation STFamilyInformationProvider

- (STFamilyInformationProvider)initWithFamilyCirclePrimitives:(id)a3 deviceInformationPrimitives:(id)a4 contactStorePrimitives:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = STFamilyInformationProvider;
  v11 = [(STFamilyInformationProvider *)&v21 init];
  v11->_queuedCompletionHandlersLock._os_unfair_lock_opaque = 0;
  familyCirclePrimitives = v11->_familyCirclePrimitives;
  v11->_familyCirclePrimitives = v8;
  v13 = v8;

  [(STFamilyCirclePrimitives *)v11->_familyCirclePrimitives setDelegate:v11];
  deviceInformationPrimitives = v11->_deviceInformationPrimitives;
  v11->_deviceInformationPrimitives = v9;
  v15 = v9;

  contactStorePrimitives = v11->_contactStorePrimitives;
  v11->_contactStorePrimitives = v10;
  v17 = v10;

  v18 = objc_opt_new();
  cachedFamilyMembers = v11->_cachedFamilyMembers;
  v11->_cachedFamilyMembers = v18;

  return v11;
}

- (id)_refreshFamilyMemberCacheWithError:(id *)a3
{
  v11 = 0;
  v5 = [(STFamilyInformationProvider *)self _fetchFamilyMembersWithTimeout:60 forceServerCacheRefresh:0 error:&v11];
  v6 = v11;
  if (!v5)
  {
    v7 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100114CA0();
    }

    if (a3 && v6)
    {
      v8 = v6;
      *a3 = v6;
    }

    v5 = objc_opt_new();
  }

  v9 = [v5 copy];
  [(STFamilyInformationProvider *)self setCachedFamilyMembers:v9];

  return v5;
}

- (id)_fetchFamilyMemberWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(STFamilyInformationProvider *)self cachedFamilyMembers];
  v6 = [v5 filteredSetUsingPredicate:v4];
  v7 = [v6 anyObject];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to find family member in cache. Attempting to fault in family member with cache refresh.", buf, 2u);
    }

    v10 = [(STFamilyInformationProvider *)self cachedFamilyMembers];
    v11 = [v10 copy];

    v20 = 0;
    v12 = [(STFamilyInformationProvider *)self _refreshFamilyMemberCacheWithError:&v20];
    v13 = v20;
    if ([v11 isEqualToSet:v12])
    {
      v14 = v13;
    }

    else
    {
      v19 = v13;
      v15 = [(STFamilyInformationProvider *)self fetchTargetableFamilyMembersWithError:&v19];
      v14 = v19;

      if (v14 && [v14 code] == 31)
      {
        v16 = +[STLog familyInformationProvider];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Family cache refresh timed out.", buf, 2u);
        }
      }

      else
      {
        v16 = [(STFamilyInformationProvider *)self observer];
        [v16 familyProvider:self didUpdateTargetableFamilyMembers:v15];
      }
    }

    v17 = [v12 filteredSetUsingPredicate:v4];
    v8 = [v17 anyObject];
  }

  return v8;
}

- (id)fetchTargetableFamilyMembersWithError:(id *)a3
{
  v5 = [(STFamilyInformationProvider *)self cachedFamilyMembers];
  if (![v5 count])
  {
    v6 = [(STFamilyInformationProvider *)self _refreshFamilyMemberCacheWithError:a3];

    v5 = v6;
  }

  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v5 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [STFamilyInformationProvider _targetableMemberFromPrimitiveMember:*(*(&v16 + 1) + 8 * i), v16];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

+ (id)_targetableMemberFromPrimitiveMember:(id)a3
{
  v3 = a3;
  v4 = [v3 dsid];
  v5 = [v3 altDSID];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v3 memberType];
    if ((v7 - 1) >= 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [STTargetableFamilyMember alloc];
    v10 = [v3 firstName];
    v11 = -[STTargetableFamilyMember initWithDSID:altDSID:firstName:memberType:isSignedInMember:isParent:](v9, "initWithDSID:altDSID:firstName:memberType:isSignedInMember:isParent:", v4, v6, v10, v8, [v3 isMe], objc_msgSend(v3, "isParent"));
  }

  else
  {
    v12 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100114D14();
    }

    v11 = 0;
  }

  return v11;
}

- (id)fetchNumberOfContactsForUserID:(id)a3
{
  v4 = a3;
  [(STFamilyInformationProvider *)self cachedFamilyMembers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 dsid];
        v12 = [v4 dsid];
        v13 = [v11 isEqualToNumber:v12];

        if (v13)
        {
          v17 = [(STFamilyInformationProvider *)self contactStorePrimitives];
          v18 = [v10 opaqueMember];
          v16 = [v17 numberOfContactsForOpaqueFamilyMember:v18];

          v15 = v5;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = [NSError alloc];
  v15 = [v14 initWithDomain:STErrorDomain code:11 userInfo:0];
  v16 = [STResult failure:v15];
LABEL_11:

  return v16;
}

- (BOOL)validateAddressIsAllowed:(id)a3
{
  v4 = [STFamilyInformationProvider _predicateForFetchingFamilyMemberWithAppleID:a3];
  v5 = [(STFamilyInformationProvider *)self _fetchFamilyMemberWithPredicate:v4];

  return v5 != 0;
}

- (STMessageTransportMessageAddress)returnAddress
{
  v3 = +[STFamilyInformationProvider _predicateForFetchingFamilyMemberMe];
  v4 = [(STFamilyInformationProvider *)self _fetchFamilyMemberWithPredicate:v3];

  if (v4)
  {
    v5 = [STMessageTransportMessageAddress alloc];
    v6 = [v4 dsid];
    v7 = [(STFamilyInformationProvider *)self deviceInformationPrimitives];
    v8 = [v7 deviceUUID];
    v9 = [(STMessageTransportMessageAddress *)v5 initWithUserDSID:v6 deviceIdentifier:v8];
  }

  else
  {
    v10 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100114D88();
    }

    v9 = 0;
  }

  return v9;
}

- (id)appleIDForUserDSID:(id)a3
{
  v4 = [STFamilyInformationProvider _predicateForFetchingFamilyMemberWithDSID:a3];
  v5 = [(STFamilyInformationProvider *)self _fetchFamilyMemberWithPredicate:v4];

  if (v5)
  {
    v6 = [v5 appleID];
    v7 = [v6 copy];
  }

  else
  {
    v8 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100114DC4();
    }

    v7 = 0;
  }

  return v7;
}

- (id)userDSIDForAppleID:(id)a3
{
  v4 = [STFamilyInformationProvider _predicateForFetchingFamilyMemberWithAppleID:a3];
  v5 = [(STFamilyInformationProvider *)self _fetchFamilyMemberWithPredicate:v4];

  if (v5)
  {
    v6 = [v5 dsid];
    v7 = [v6 copy];
  }

  else
  {
    v8 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100114E00();
    }

    v7 = 0;
  }

  return v7;
}

- (void)primitives:(id)a3 didFetchFamilyMembers:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v16 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v10;
      v17 = "Family circle fetched empty family - error: %{public}@";
      v18 = v16;
      v19 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }

LABEL_12:

    v20 = objc_opt_new();
    [(STFamilyInformationProvider *)self setCachedFamilyMembers:v20];

    v14 = [(STFamilyInformationProvider *)self observer];
    [v14 familyProviderDidLeaveFamily:self];
    goto LABEL_13;
  }

  if (![v9 count])
  {
    v16 = +[STLog familyInformationProvider];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Family circle fetched empty family";
      v18 = v16;
      v19 = 2;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = [v9 copy];
  [(STFamilyInformationProvider *)self setCachedFamilyMembers:v11];

  v21 = 0;
  v12 = [(STFamilyInformationProvider *)self fetchTargetableFamilyMembersWithError:&v21];
  v13 = v21;
  v14 = v13;
  if (!v13 || [v13 code] != 31)
  {
    v15 = [(STFamilyInformationProvider *)self observer];
    [v15 familyProvider:self didUpdateTargetableFamilyMembers:v12];
  }

LABEL_13:
}

- (STFamilyProvidingObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->observer);

  return WeakRetained;
}

@end