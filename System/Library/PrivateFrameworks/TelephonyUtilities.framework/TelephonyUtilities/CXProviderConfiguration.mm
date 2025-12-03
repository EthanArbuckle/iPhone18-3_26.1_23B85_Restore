@interface CXProviderConfiguration
- (NSArray)emergencyTUHandles;
- (NSArray)emergencyTULabeledHandles;
- (NSOrderedSet)prioritizedTUSenderIdentities;
- (NSSet)supportedTUHandleTypes;
@end

@implementation CXProviderConfiguration

- (NSSet)supportedTUHandleTypes
{
  supportedHandleTypes = [(CXProviderConfiguration *)self supportedHandleTypes];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [supportedHandleTypes count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  supportedHandleTypes2 = [(CXProviderConfiguration *)self supportedHandleTypes];
  v6 = [supportedHandleTypes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(supportedHandleTypes2);
        }

        integerValue = [*(*(&v16 + 1) + 8 * i) integerValue];
        if (integerValue == 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        if (integerValue == 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = v11;
        }

        v13 = [NSNumber numberWithInteger:v12];
        [v4 addObject:v13];
      }

      v7 = [supportedHandleTypes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSArray)emergencyTUHandles
{
  emergencyHandles = [(CXProviderConfiguration *)self emergencyHandles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [emergencyHandles count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  emergencyHandles2 = [(CXProviderConfiguration *)self emergencyHandles];
  v6 = [emergencyHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(emergencyHandles2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        tuHandle = [v11 tuHandle];
        if (tuHandle)
        {
          [v4 addObject:tuHandle];
        }

        else
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TUHandle generated from CXLabelHandle %@", buf, 0xCu);
          }
        }
      }

      v8 = [emergencyHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSArray)emergencyTULabeledHandles
{
  emergencyLabeledHandles = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [emergencyLabeledHandles count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  emergencyLabeledHandles2 = [(CXProviderConfiguration *)self emergencyLabeledHandles];
  v6 = [emergencyLabeledHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(emergencyLabeledHandles2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        tuLabeledHandle = [v11 tuLabeledHandle];
        if (tuLabeledHandle)
        {
          [v4 addObject:tuLabeledHandle];
        }

        else
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TULabeledHandle generated from CXLabelHandle %@", buf, 0xCu);
          }
        }
      }

      v8 = [emergencyLabeledHandles2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSOrderedSet)prioritizedTUSenderIdentities
{
  prioritizedSenderIdentities = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v4 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [prioritizedSenderIdentities count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  prioritizedSenderIdentities2 = [(CXProviderConfiguration *)self prioritizedSenderIdentities];
  v6 = [prioritizedSenderIdentities2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(prioritizedSenderIdentities2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        tuSenderIdentity = [v11 tuSenderIdentity];
        if (tuSenderIdentity)
        {
          [v4 addObject:tuSenderIdentity];
        }

        else
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TUSenderIdentity generated from CXSenderIdentity %@", buf, 0xCu);
          }
        }
      }

      v8 = [prioritizedSenderIdentities2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  return v14;
}

@end