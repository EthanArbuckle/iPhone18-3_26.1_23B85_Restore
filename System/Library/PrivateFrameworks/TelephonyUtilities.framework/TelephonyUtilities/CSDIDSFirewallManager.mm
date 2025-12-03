@interface CSDIDSFirewallManager
+ (id)predicateForUpgrade;
- (CSDIDSFirewallManager)initWithService:(id)service chManager:(id)manager featureFlags:(id)flags serverBag:(id)bag queue:(id)queue;
- (CSDIDSFirewallManager)initWithService:(id)service queue:(id)queue;
- (id)latestRecentOutgoingFacetimeCallWithRemoteParticipantHandle:(id)handle sinceDate:(id)date noDeletedCallsPredicate:(id)predicate;
- (void)allCallHistoryDeleted;
- (void)recentCallsDeleted:(id)deleted;
- (void)updateFirewallWithCallHistoryIfNecessary;
@end

@implementation CSDIDSFirewallManager

- (CSDIDSFirewallManager)initWithService:(id)service chManager:(id)manager featureFlags:(id)flags serverBag:(id)bag queue:(id)queue
{
  serviceCopy = service;
  managerCopy = manager;
  flagsCopy = flags;
  bagCopy = bag;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = CSDIDSFirewallManager;
  v17 = [(CSDIDSFirewallManager *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_service, service);
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_featureFlags, flags);
    objc_storeStrong(&v18->_serverBag, bag);
    objc_storeStrong(&v18->_chManager, manager);
  }

  return v18;
}

- (CSDIDSFirewallManager)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  service = self->_service;
  self->_service = serviceCopy;
  v9 = serviceCopy;

  queue = self->_queue;
  self->_queue = queueCopy;
  v11 = queueCopy;

  v12 = objc_alloc_init(TUFeatureFlags);
  v13 = objc_alloc_init(CSDSharedConversationServerBag);
  v14 = objc_alloc_init(CHManager);
  v15 = [(CSDIDSFirewallManager *)self initWithService:v9 chManager:v14 featureFlags:v12 serverBag:v13 queue:v11];

  return v15;
}

- (void)updateFirewallWithCallHistoryIfNecessary
{
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 integerForKey:@"kLastIDSFirewallVersionDefaultsKey"];

  if (!v4)
  {
    featureFlags = [(CSDIDSFirewallManager *)self featureFlags];
    offrampEnabled = [featureFlags offrampEnabled];

    if (offrampEnabled)
    {
      queue = [(CSDIDSFirewallManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001EA6CC;
      block[3] = &unk_100619D38;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)recentCallsDeleted:(id)deleted
{
  deletedCopy = deleted;
  selfCopy = self;
  featureFlags = [(CSDIDSFirewallManager *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = deletedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting calls from IDS firewall if necessary: %@", buf, 0xCu);
    }

    v35 = +[NSMutableDictionary dictionary];
    v36 = +[NSMutableSet set];
    v8 = +[NSCalendar currentCalendar];
    serverBag = [(CSDIDSFirewallManager *)selfCopy serverBag];
    idsFirewallCHExpiryTimeDays = [serverBag idsFirewallCHExpiryTimeDays];
    v11 = +[NSDate date];
    v34 = [v8 dateByAddingUnit:16 value:idsFirewallCHExpiryTimeDays toDate:v11 options:0];

    v12 = +[NSMutableArray array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v32 = deletedCopy;
    v13 = deletedCopy;
    v14 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v50;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(v13);
          }

          uniqueId = [*(*(&v49 + 1) + 8 * i) uniqueId];
          v19 = [NSPredicate predicateWithFormat:@"unique_id != %@", uniqueId];
          [v12 addObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v15);
    }

    v33 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      v24 = kCHServiceProviderFaceTime;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v45 + 1) + 8 * j);
          serviceProvider = [v26 serviceProvider];
          v28 = [serviceProvider isEqualToString:v24];

          if (v28)
          {
            validRemoteParticipantHandles = [v26 validRemoteParticipantHandles];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1001EAED0;
            v38[3] = &unk_10061E2A0;
            v39 = v35;
            v40 = selfCopy;
            v41 = v34;
            v42 = v33;
            v43 = v26;
            v44 = v36;
            [validRemoteParticipantHandles enumerateObjectsUsingBlock:v38];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v22);
    }

    v30 = sub_100004778();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v36;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Removing handle(s) from firewall %@", buf, 0xCu);
    }

    service = [(CSDIDSFirewallManager *)selfCopy service];
    [service removeFirewallEntries:v36];

    deletedCopy = v32;
  }
}

- (void)allCallHistoryDeleted
{
  featureFlags = [(CSDIDSFirewallManager *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    service = [(CSDIDSFirewallManager *)self service];
    [service removeAllFirewallEntries];
  }
}

- (id)latestRecentOutgoingFacetimeCallWithRemoteParticipantHandle:(id)handle sinceDate:(id)date noDeletedCallsPredicate:(id)predicate
{
  predicateCopy = predicate;
  handleCopy = handle;
  v10 = [CHRecentCall predicateForCallsLessThanDate:date];
  v11 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:handleCopy];

  v12 = [CHRecentCall predicateForCallsWithServiceProvider:kCHServiceProviderFaceTime];
  v13 = [CHRecentCall predicateForCallsWithStatusOriginated:1];
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = predicateCopy;
  v14 = [NSArray arrayWithObjects:v20 count:5];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  chManager = [(CSDIDSFirewallManager *)self chManager];
  v17 = [chManager callsWithPredicate:v15 limit:1 offset:0 batchSize:1];
  firstObject = [v17 firstObject];

  return firstObject;
}

+ (id)predicateForUpgrade
{
  v2 = objc_alloc_init(CSDSharedConversationServerBag);
  v3 = +[NSCalendar currentCalendar];
  idsFirewallCHExpiryTimeDays = [(CSDSharedConversationServerBag *)v2 idsFirewallCHExpiryTimeDays];
  v5 = +[NSDate date];
  v6 = [v3 dateByAddingUnit:16 value:idsFirewallCHExpiryTimeDays toDate:v5 options:0];

  v7 = [CHRecentCall predicateForCallsLessThanDate:v6];
  v8 = [CHRecentCall predicateForCallsWithServiceProvider:kCHServiceProviderFaceTime];
  v9 = [CHRecentCall predicateForCallsWithStatusOriginated:1];
  v10 = [NSArray arrayWithObjects:v7, v8, v9, 0];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  return v11;
}

@end