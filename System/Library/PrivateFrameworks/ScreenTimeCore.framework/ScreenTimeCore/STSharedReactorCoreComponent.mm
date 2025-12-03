@interface STSharedReactorCoreComponent
+ (id)buildAddressesFromTargetableFamilyMembers:(id)members signedInUserHasMultipleDevices:(BOOL)devices;
+ (id)buildAddressesOfParentsFromTargetableFamilyMembers:(id)members;
+ (id)targetableParentsInTargetableFamilyMembers:(id)members;
@end

@implementation STSharedReactorCoreComponent

+ (id)targetableParentsInTargetableFamilyMembers:(id)members
{
  membersCopy = members;
  v4 = [NSPredicate predicateWithFormat:@"%K == YES", @"isParent"];
  v5 = [membersCopy filteredSetUsingPredicate:v4];

  return v5;
}

+ (id)buildAddressesFromTargetableFamilyMembers:(id)members signedInUserHasMultipleDevices:(BOOL)devices
{
  membersCopy = members;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = membersCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (![v12 isSignedInMember] || devices)
        {
          v14 = [STMessageTransportMessageAddress alloc];
          dsid = [v12 dsid];
          v15 = [(STMessageTransportMessageAddress *)v14 initWithUserDSID:dsid];
          [v6 addObject:v15];
        }

        else
        {
          dsid = +[STLog reactorCore];
          if (os_log_type_enabled(dsid, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, dsid, OS_LOG_TYPE_DEFAULT, "Not including self-address as user only has one device", v18, 2u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [v6 copy];

  return v16;
}

+ (id)buildAddressesOfParentsFromTargetableFamilyMembers:(id)members
{
  v3 = [self targetableParentsInTargetableFamilyMembers:members];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [STMessageTransportMessageAddress alloc];
        dsid = [v10 dsid];
        v13 = [(STMessageTransportMessageAddress *)v11 initWithUserDSID:dsid];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

@end