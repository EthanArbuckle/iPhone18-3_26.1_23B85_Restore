@interface RMStatusSubscriptionsSubscriber
- (BOOL)_updateStatusSubscriptionUIsForManagementSource:(id)source;
- (BOOL)_updateStatusSubscriptionsForManagementSource:(id)source;
- (RMStatusSubscriptionsSubscriber)init;
- (id)_getActiveStatusSubscriptionConfigurationsFromManagementSource:(id)source onlyMissingUI:(BOOL)i;
- (id)_getStatusSubscriptionsFromManagementSource:(id)source;
- (id)_makeStatusSubscriptionWithManagementSource:(id)source declaration:(id)declaration context:(id)context;
- (id)reportDetails;
- (void)applyChangedConfigurationsTypes:(id)types;
- (void)fetchMissingConfigurationUIs;
@end

@implementation RMStatusSubscriptionsSubscriber

- (RMStatusSubscriptionsSubscriber)init
{
  v9.receiver = self;
  v9.super_class = RMStatusSubscriptionsSubscriber;
  v2 = [(RMStatusSubscriptionsSubscriber *)&v9 init];
  if (v2)
  {
    v3 = +[RMPersistentController sharedController];
    persistentContainer = [v3 persistentContainer];

    newBackgroundContext = [persistentContainer newBackgroundContext];
    [(NSManagedObjectContext *)newBackgroundContext setAutomaticallyMergesChangesFromParent:1];
    [(NSManagedObjectContext *)newBackgroundContext setMergePolicy:NSMergeByPropertyStoreTrumpMergePolicy];
    v6 = [NSString stringWithFormat:@"RMStatusSubscriptionsSubscriber"];
    [(NSManagedObjectContext *)newBackgroundContext setTransactionAuthor:v6];

    context = v2->_context;
    v2->_context = newBackgroundContext;
  }

  return v2;
}

- (void)applyChangedConfigurationsTypes:(id)types
{
  v4 = +[RMLog statusSubscriptionsSubscriber];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating status subscriptions", buf, 2u);
  }

  [(RMStatusSubscriptionsSubscriber *)self context];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A764;
  v6[3] = &unk_1000D1270;
  v7 = v6[4] = self;
  v5 = v7;
  [v5 performBlockAndWait:v6];
}

- (void)fetchMissingConfigurationUIs
{
  v3 = +[RMLog statusSubscriptionsSubscriber];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating status subscription UIs", buf, 2u);
  }

  [(RMStatusSubscriptionsSubscriber *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006AB50;
  v5[3] = &unk_1000D1270;
  v6 = v5[4] = self;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

- (id)reportDetails
{
  v10[0] = @"Internal";
  v9[0] = @"Location";
  v9[1] = @"Identifier";
  identifier = [(RMStatusSubscriptionsSubscriber *)self identifier];
  v10[1] = identifier;
  v9[2] = @"ConfigurationTypes";
  configurationTypes = [(RMStatusSubscriptionsSubscriber *)self configurationTypes];
  allObjects = [configurationTypes allObjects];
  v6 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (BOOL)_updateStatusSubscriptionsForManagementSource:(id)source
{
  sourceCopy = source;
  v5 = [(RMStatusSubscriptionsSubscriber *)self _getStatusSubscriptionsFromManagementSource:sourceCopy];
  if (v5)
  {
    selfCopy = self;
    v6 = [(RMStatusSubscriptionsSubscriber *)self _getActiveStatusSubscriptionConfigurationsFromManagementSource:sourceCopy];
    allKeys = [v5 allKeys];
    v8 = [NSSet setWithArray:allKeys];

    v100 = v6;
    allKeys2 = [v6 allKeys];
    v10 = [NSSet setWithArray:allKeys2];

    v139 = 0;
    v138 = 0;
    v137 = 0;
    v91 = v10;
    v92 = v8;
    [RMStoreDeclarationKey synchronizeOldKeys:v8 newKeys:v10 returningUnchangedKeys:&v139 returningApplyKeys:&v138 returningRemoveKeys:&v137];
    v90 = v139;
    v11 = v138;
    v12 = v137;
    +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v11 count]);
    v135[0] = _NSConcreteStackBlock;
    v135[1] = 3221225472;
    v135[2] = sub_10006BBE8;
    v13 = v135[3] = &unk_1000D2B20;
    v136 = v13;
    v93 = v11;
    [v11 enumerateObjectsUsingBlock:v135];
    v88 = v13;
    v89 = v12;
    v14 = [v13 setByAddingObjectsFromSet:v12];
    v94 = [v14 count] != 0;
    managedObjectContext = [sourceCopy managedObjectContext];
    v15 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CAE4(v14);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    obj = v14;
    v109 = sourceCopy;
    v101 = v5;
    v102 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
    if (v102)
    {
      v97 = *v132;
      do
      {
        for (i = 0; i != v102; i = i + 1)
        {
          if (*v132 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v105 = *(*(&v131 + 1) + 8 * i);
          v17 = [v5 objectForKeyedSubscript:?];
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v107 = v17;
          items = [v17 items];
          v19 = [items countByEnumeratingWithState:&v127 objects:v149 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v128;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v128 != v21)
                {
                  objc_enumerationMutation(items);
                }

                v23 = *(*(&v127 + 1) + 8 * j);
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                subscribedStatusKeyPaths = [v23 subscribedStatusKeyPaths];
                v25 = [subscribedStatusKeyPaths copy];

                v26 = [v25 countByEnumeratingWithState:&v123 objects:v148 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v124;
                  do
                  {
                    for (k = 0; k != v27; k = k + 1)
                    {
                      if (*v124 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      [*(*(&v123 + 1) + 8 * k) removeStatusSubscriptionItemsObject:v23];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v123 objects:v148 count:16];
                  }

                  while (v27);
                }
              }

              v20 = [items countByEnumeratingWithState:&v127 objects:v149 count:16];
            }

            while (v20);
          }

          [managedObjectContext deleteObject:v107];
          sourceCopy = v109;
          identifier = [v109 identifier];
          declarationIdentifier = [v105 declarationIdentifier];
          declarationServerToken = [v105 declarationServerToken];
          v122 = 0;
          v33 = [RMConfigurationStatusArchiver removeStatusForStoreIdentifier:identifier declarationIdentifier:declarationIdentifier declarationServerToken:declarationServerToken error:&v122];
          v34 = v122;

          v5 = v101;
          if ((v33 & 1) == 0)
          {
            v35 = +[RMLog statusSubscriptionsSubscriber];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v144 = v34;
              _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Status subscription status removal failed: %{public}@", buf, 0xCu);
            }
          }
        }

        v102 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
      }

      while (v102);
    }

    v36 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CB5C(v93);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v95 = v93;
    v37 = [v95 countByEnumeratingWithState:&v118 objects:v147 count:16];
    if (v37)
    {
      v38 = v37;
      v103 = *v119;
      do
      {
        v39 = 0;
        v106 = v38;
        do
        {
          if (*v119 != v103)
          {
            objc_enumerationMutation(v95);
          }

          applyKey = [*(*(&v118 + 1) + 8 * v39) applyKey];
          v41 = [v100 objectForKeyedSubscript:applyKey];
          payload = [v41 payload];

          v108 = v41;
          if (payload)
          {
            payload2 = [v41 payload];
            v117 = 0;
            v44 = [RMModelManagementStatusSubscriptionsDeclaration loadData:payload2 serializationType:0 error:&v117];
            v45 = v117;

            if (v44)
            {
              v98 = applyKey;
              if ([v44 isSupportedForPlatform:+[RMModelSharedDefinitions currentPlatform](RMModelSharedDefinitions scope:"currentPlatform") enrollmentType:{+[RMBundle managementScope](RMBundle, "managementScope"), objc_msgSend(sourceCopy, "enrollmentType")}])
              {
                v46 = [(RMStatusSubscriptionsSubscriber *)selfCopy _makeStatusSubscriptionWithManagementSource:sourceCopy declaration:v44 context:managedObjectContext];
                v47 = +[RMExternalStatusPublisher sharedPublisher];
                identifier2 = [sourceCopy identifier];
                [v47 publishStatusKeys:v46 storeIdentifier:identifier2];

                identifier3 = [sourceCopy identifier];
                declarationIdentifier2 = [applyKey declarationIdentifier];
                v51 = applyKey;
                v52 = declarationIdentifier2;
                declarationServerToken2 = [v51 declarationServerToken];
                identifier4 = [(RMStatusSubscriptionsSubscriber *)selfCopy identifier];
                v114 = v45;
                v94 = 1;
                LOBYTE(v47) = [RMConfigurationStatusArchiver persistStatusForStoreIdentifier:identifier3 declarationIdentifier:v52 declarationServerToken:declarationServerToken2 sourceIdentifier:identifier4 validity:1 reasons:0 error:&v114];
                v55 = v114;

                if ((v47 & 1) == 0)
                {
                  v56 = +[RMLog statusSubscriptionsSubscriber];
                  v57 = v106;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v144 = v55;
                    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Status subscription status persist for success failed: %{public}@", buf, 0xCu);
                  }

                  v94 = 1;
                  goto LABEL_58;
                }

LABEL_54:
                sourceCopy = v109;
                v57 = v106;
              }

              else
              {
                v67 = +[RMLog statusSubscriptionsSubscriber];
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v144 = v44;
                  _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Declaration not supported: %{public}@", buf, 0xCu);
                }

                v68 = [RMModelStatusReason reasonWithCode:@"Error.ConfigurationNotSupported" description:@"Configuration not supported" underlyingError:v45];
                v141 = v68;
                v46 = [NSArray arrayWithObjects:&v141 count:1];

                identifier5 = [sourceCopy identifier];
                declarationIdentifier3 = [applyKey declarationIdentifier];
                v71 = applyKey;
                v72 = declarationIdentifier3;
                declarationServerToken3 = [v71 declarationServerToken];
                identifier6 = [(RMStatusSubscriptionsSubscriber *)selfCopy identifier];
                v115 = v45;
                LOBYTE(v68) = [RMConfigurationStatusArchiver persistStatusForStoreIdentifier:identifier5 declarationIdentifier:v72 declarationServerToken:declarationServerToken3 sourceIdentifier:identifier6 validity:0 reasons:v46 error:&v115];
                v55 = v115;

                if (v68)
                {
                  goto LABEL_54;
                }

                v75 = +[RMLog statusSubscriptionsSubscriber];
                v57 = v106;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v144 = v55;
                  _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "Status subscription status persist for error failed: %{public}@", buf, 0xCu);
                }

LABEL_58:
                sourceCopy = v109;
              }

              v62 = v98;
              goto LABEL_60;
            }
          }

          else
          {
            v45 = +[RMErrorUtilities createInternalError];
          }

          v58 = +[RMLog statusSubscriptionsSubscriber];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v144 = v41;
            v145 = 2114;
            v146 = v45;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Unable to de-serialize declaration %{public}@: %{public}@", buf, 0x16u);
          }

          v59 = [RMModelStatusReason reasonWithCode:@"Error.ConfigurationIsInvalid" description:@"Configuration is invalid" underlyingError:v45];
          v142 = v59;
          v44 = [NSArray arrayWithObjects:&v142 count:1];

          identifier7 = [sourceCopy identifier];
          declarationIdentifier4 = [applyKey declarationIdentifier];
          v62 = applyKey;
          declarationServerToken4 = [applyKey declarationServerToken];
          identifier8 = [(RMStatusSubscriptionsSubscriber *)selfCopy identifier];
          v116 = v45;
          v65 = [RMConfigurationStatusArchiver persistStatusForStoreIdentifier:identifier7 declarationIdentifier:declarationIdentifier4 declarationServerToken:declarationServerToken4 sourceIdentifier:identifier8 validity:0 reasons:v44 error:&v116];
          v55 = v116;

          if (v65)
          {
            v66 = v108;
            sourceCopy = v109;
            v57 = v106;
            goto LABEL_61;
          }

          v46 = +[RMLog statusSubscriptionsSubscriber];
          v57 = v106;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v144 = v55;
            _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Status subscription status persist for error failed: %{public}@", buf, 0xCu);
          }

          sourceCopy = v109;
LABEL_60:
          v66 = v108;

LABEL_61:
          v39 = v39 + 1;
        }

        while (v57 != v39);
        v38 = [v95 countByEnumeratingWithState:&v118 objects:v147 count:16];
      }

      while (v38);
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    subscribedStatusKeyPaths2 = [sourceCopy subscribedStatusKeyPaths];
    v77 = [subscribedStatusKeyPaths2 countByEnumeratingWithState:&v110 objects:v140 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = 0;
      v80 = *v111;
      do
      {
        for (m = 0; m != v78; m = m + 1)
        {
          if (*v111 != v80)
          {
            objc_enumerationMutation(subscribedStatusKeyPaths2);
          }

          v82 = *(*(&v110 + 1) + 8 * m);
          statusSubscriptionItems = [v82 statusSubscriptionItems];
          v84 = [statusSubscriptionItems count];

          if (!v84)
          {
            [managedObjectContext deleteObject:v82];
            ++v79;
          }
        }

        v78 = [subscribedStatusKeyPaths2 countByEnumeratingWithState:&v110 objects:v140 count:16];
      }

      while (v78);
    }

    v86 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CBD4();
    }

    v5 = v101;
    v85 = v94;
  }

  else
  {
    v85 = 0;
  }

  return v85;
}

- (id)_getStatusSubscriptionsFromManagementSource:(id)source
{
  sourceCopy = source;
  v4 = +[RMStatusSubscription fetchRequest];
  v25 = sourceCopy;
  v5 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d)", @"managementSource", sourceCopy, @"sourceType", 1];
  [v4 setPredicate:v5];

  v30 = 0;
  v6 = [v4 execute:&v30];
  v7 = v30;
  if (v6)
  {
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = v7;
      v21 = v6;
      v22 = v4;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          identifier = [(RMStatusSubscriptionsSubscriber *)self identifier];
          identifier2 = [v25 identifier];
          sourceIdentifier = [v13 sourceIdentifier];
          sourceServerToken = [v13 sourceServerToken];
          v18 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:identifier storeIdentifier:identifier2 declarationIdentifier:sourceIdentifier declarationServerToken:sourceServerToken];

          [v8 setObject:v13 forKeyedSubscript:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
      v6 = v21;
      v4 = v22;
      v7 = v20;
    }
  }

  else
  {
    obj = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_10006CC48();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateStatusSubscriptionUIsForManagementSource:(id)source
{
  sourceCopy = source;
  v5 = [(RMStatusSubscriptionsSubscriber *)self _getActiveStatusSubscriptionConfigurationsFromManagementSource:sourceCopy onlyMissingUI:1];
  v6 = [v5 count];
  if (v6)
  {
    v17 = v6;
    managedObjectContext = [sourceCopy managedObjectContext];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues = [v5 allValues];
    v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [[RMConfigurationPayloadUI alloc] initWithContext:managedObjectContext];
          [(RMConfigurationPayloadUI *)v14 setVisible:0];
          [v13 setUi:v14];
        }

        v10 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v6 = v17;
  }

  v15 = v6 != 0;

  return v15;
}

- (id)_getActiveStatusSubscriptionConfigurationsFromManagementSource:(id)source onlyMissingUI:(BOOL)i
{
  iCopy = i;
  sourceCopy = source;
  v6 = +[RMConfigurationPayload fetchRequest];
  if (iCopy)
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == YES) AND (%K == NULL)", @"managementSource", sourceCopy, @"declarationType", RMConfigurationTypeManagementStatusSubscription, @"state.active", @"ui"];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == YES)", @"managementSource", sourceCopy, @"declarationType", RMConfigurationTypeManagementStatusSubscription, @"state.active", v22];
  }
  v7 = ;
  [v6 setPredicate:v7];

  v33 = 0;
  v8 = [v6 execute:&v33];
  v9 = v33;
  if (v8)
  {
    v28 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = v9;
      v24 = v8;
      v25 = v6;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          identifier = [(RMStatusSubscriptionsSubscriber *)self identifier];
          [sourceCopy identifier];
          v17 = v16 = sourceCopy;
          identifier2 = [v14 identifier];
          serverToken = [v14 serverToken];
          v20 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:identifier storeIdentifier:v17 declarationIdentifier:identifier2 declarationServerToken:serverToken];

          sourceCopy = v16;
          [v28 setObject:v14 forKeyedSubscript:v20];
        }

        v11 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
      v8 = v24;
      v6 = v25;
      v9 = v23;
    }
  }

  else
  {
    obj = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_10006CCB0();
    }

    v28 = 0;
  }

  return v28;
}

- (id)_makeStatusSubscriptionWithManagementSource:(id)source declaration:(id)declaration context:(id)context
{
  sourceCopy = source;
  declarationCopy = declaration;
  v8 = [RMStatusSubscription alloc];
  managedObjectContext = [sourceCopy managedObjectContext];
  v10 = [(RMStatusSubscription *)v8 initWithContext:managedObjectContext];

  [(RMStatusSubscription *)v10 setSourceType:1];
  declarationIdentifier = [declarationCopy declarationIdentifier];
  [(RMStatusSubscription *)v10 setSourceIdentifier:declarationIdentifier];

  declarationServerToken = [declarationCopy declarationServerToken];
  [(RMStatusSubscription *)v10 setSourceServerToken:declarationServerToken];

  v57 = v10;
  v53 = sourceCopy;
  [(RMStatusSubscription *)v10 setManagementSource:sourceCopy];
  v52 = declarationCopy;
  payloadStatusItems = [declarationCopy payloadStatusItems];
  v56 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [payloadStatusItems count]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = payloadStatusItems;
  v58 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v58)
  {
    v55 = *v67;
    do
    {
      v14 = 0;
      do
      {
        if (*v67 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v14;
        v15 = *(*(&v66 + 1) + 8 * v14);
        v16 = v57;
        v17 = v15;
        v18 = [RMStatusSubscriptionItem alloc];
        managedObjectContext2 = [(RMStatusSubscription *)v16 managedObjectContext];
        v20 = [(RMStatusSubscriptionItem *)v18 initWithContext:managedObjectContext2];

        v64 = v16;
        [(RMStatusSubscriptionItem *)v20 setSubscription:v16];
        payloadName = [v17 payloadName];
        [(RMStatusSubscriptionItem *)v20 setKeyPath:payloadName];

        [(RMStatusSubscriptionItem *)v20 setProperties:0];
        [(RMStatusSubscriptionItem *)v20 setPredicate:0];
        v22 = v17;
        payloadName2 = [v22 payloadName];
        if ([&__NSArray0__struct count])
        {
          v24 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [&__NSArray0__struct count]);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v25 = [&__NSArray0__struct countByEnumeratingWithState:&v79 objects:v83 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v80;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v80 != v27)
                {
                  objc_enumerationMutation(&__NSArray0__struct);
                }

                v29 = [payloadName2 stringByAppendingFormat:@".%@", *(*(&v79 + 1) + 8 * i)];
                [v24 addObject:v29];
              }

              v26 = [&__NSArray0__struct countByEnumeratingWithState:&v79 objects:v83 count:16];
            }

            while (v26);
          }
        }

        else
        {
          v24 = [NSSet setWithObject:payloadName2];
        }

        v30 = v20;
        v31 = v24;
        subscription = [(RMStatusSubscriptionItem *)v30 subscription];
        managementSource = [subscription managementSource];

        subscribedStatusKeyPaths = [managementSource subscribedStatusKeyPaths];
        v60 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v31];
        v35 = [subscribedStatusKeyPaths filteredSetUsingPredicate:?];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v75;
          do
          {
            for (j = 0; j != v37; j = j + 1)
            {
              if (*v75 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [*(*(&v74 + 1) + 8 * j) addStatusSubscriptionItemsObject:v30];
            }

            v37 = [v35 countByEnumeratingWithState:&v74 objects:v83 count:16];
          }

          while (v37);
        }

        v63 = v22;
        v61 = subscribedStatusKeyPaths;
        v40 = [subscribedStatusKeyPaths valueForKey:@"keyPath"];
        v62 = v31;
        v41 = [v31 mutableCopy];
        v59 = v40;
        [v41 minusSet:v40];
        managedObjectContext3 = [(RMStatusSubscriptionItem *)v30 managedObjectContext];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v43 = v41;
        v44 = [v43 countByEnumeratingWithState:&v70 objects:&v79 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v71;
          do
          {
            for (k = 0; k != v45; k = k + 1)
            {
              if (*v71 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v70 + 1) + 8 * k);
              v49 = [[RMSubscribedStatusKeyPath alloc] initWithContext:managedObjectContext3];
              [(RMSubscribedStatusKeyPath *)v49 setKeyPath:v48];
              [(RMSubscribedStatusKeyPath *)v49 setManagementSource:managementSource];
              [(RMSubscribedStatusKeyPath *)v49 addStatusSubscriptionItemsObject:v30];
            }

            v45 = [v43 countByEnumeratingWithState:&v70 objects:&v79 count:16];
          }

          while (v45);
        }

        payloadName3 = [v63 payloadName];
        [v56 addObject:payloadName3];

        v14 = v65 + 1;
      }

      while ((v65 + 1) != v58);
      v58 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v58);
  }

  return v56;
}

@end