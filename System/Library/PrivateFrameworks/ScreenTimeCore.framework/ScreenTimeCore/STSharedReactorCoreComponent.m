@interface STSharedReactorCoreComponent
+ (id)buildAddressesFromTargetableFamilyMembers:(id)a3 signedInUserHasMultipleDevices:(BOOL)a4;
+ (id)buildAddressesOfParentsFromTargetableFamilyMembers:(id)a3;
+ (id)targetableParentsInTargetableFamilyMembers:(id)a3;
@end

@implementation STSharedReactorCoreComponent

+ (id)targetableParentsInTargetableFamilyMembers:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"%K == YES", @"isParent"];
  v5 = [v3 filteredSetUsingPredicate:v4];

  return v5;
}

+ (id)buildAddressesFromTargetableFamilyMembers:(id)a3 signedInUserHasMultipleDevices:(BOOL)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
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
        if (![v12 isSignedInMember] || a4)
        {
          v14 = [STMessageTransportMessageAddress alloc];
          v13 = [v12 dsid];
          v15 = [(STMessageTransportMessageAddress *)v14 initWithUserDSID:v13];
          [v6 addObject:v15];
        }

        else
        {
          v13 = +[STLog reactorCore];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not including self-address as user only has one device", v18, 2u);
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

+ (id)buildAddressesOfParentsFromTargetableFamilyMembers:(id)a3
{
  v3 = [a1 targetableParentsInTargetableFamilyMembers:a3];
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
        v12 = [v10 dsid];
        v13 = [(STMessageTransportMessageAddress *)v11 initWithUserDSID:v12];
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