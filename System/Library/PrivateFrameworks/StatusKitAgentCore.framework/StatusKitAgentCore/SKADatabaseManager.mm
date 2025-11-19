@interface SKADatabaseManager
+ (id)logger;
- (BOOL)activePresenceAssertionsExistWithDatabaseContext:(id)a3;
- (BOOL)activePresenceSubscriptionForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (BOOL)clearPersistentHistoryIfNeeded;
- (BOOL)clearPresentDevicesForChannel:(id)a3 databaseContext:(id)a4;
- (BOOL)copyInvitedUsersFromChannel:(id)a3 toChannel:(id)a4 databaseContext:(id)a5;
- (BOOL)createOrUpdateOrDeleteSubscribedLocalStatus:(id)a3 databaseContext:(id)a4 error:(id *)a5;
- (BOOL)createOrUpdatePresentDevice:(id)a3 channel:(id)a4 databaseContext:(id)a5;
- (BOOL)createOrUpdatePublishedLocalStatusDevices:(id)a3 databaseContext:(id)a4 error:(id *)a5;
- (BOOL)createOrUpdatePublishedLocalStatuses:(id)a3 databaseContext:(id)a4 error:(id *)a5;
- (BOOL)decommissionAllOldChannelsWithPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5;
- (BOOL)decommissionAllPersonalChannelsWithStatusTypeIdentifier:(id)a3 databaseContext:(id)a4;
- (BOOL)decommissionChannelWithIdentifier:(id)a3 databaseContext:(id)a4;
- (BOOL)deleteAllInvitedUsersForPersonalChannel:(id)a3 databaseContext:(id)a4;
- (BOOL)deleteAllPresenceAssertionsWithDatabaseContext:(id)a3;
- (BOOL)deleteAllPresenceSubscriptionsWithDatabaseContext:(id)a3;
- (BOOL)deleteInvitedUserForHandle:(id)a3 personalChannel:(id)a4 databaseContext:(id)a5;
- (BOOL)deleteInvitedUserForHandle:(id)a3 presenceChannel:(id)a4 databaseContext:(id)a5;
- (BOOL)deletePendingPublishRequestWithWithUniqueIdentifier:(id)a3 databaseContext:(id)a4;
- (BOOL)deletePersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4;
- (BOOL)deletePresenceAssertionForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5;
- (BOOL)deletePresentDevice:(id)a3 channel:(id)a4 databaseContext:(id)a5;
- (BOOL)deletePublishedLocalStatusDevices:(id)a3 databaseContext:(id)a4 error:(id *)a5;
- (BOOL)deleteRemovedUserWithHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5;
- (BOOL)deleteRemovedUserWithHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (BOOL)deleteSubscriptionAssertionWithSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5;
- (BOOL)incrementPendingPublishRequestRetryCountWithUniqueIdentifier:(id)a3 databaseContext:(id)a4;
- (BOOL)saveContextIfNeeded:(id)a3;
- (BOOL)setCurrentCheckpointForChannel:(id)a3 checkpoint:(unint64_t)a4 databaseContext:(id)a5;
- (SKADatabaseManager)initWithDatabaseProvider:(id)a3 delegate:(id)a4;
- (SKADatabaseManagingDelegate)delegate;
- (id)_existingChannelCheckpointForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingChannelsForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingChannelsForDatabaseChannel:(id)a3 databaseContext:(id)a4;
- (id)_existingDecommissionedChannelsWithDatabaseContext:(id)a3;
- (id)_existingInvitedUsersForDatabaseInvitedUser:(id)a3 databaseChannel:(id)a4 databaseContext:(id)a5;
- (id)_existingInvitedUsersForInvitedHandle:(id)a3 channel:(id)a4 databaseContext:(id)a5;
- (id)_existingPendingPublishRequestForUniqueIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingPendingPublishRequestsForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingPendingPublishRequestsWithDatabaseContext:(id)a3;
- (id)_existingPersonalChannelForDatabaseChannel:(id)a3 databaseContext:(id)a4;
- (id)_existingPersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingPersonalChannelsForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingPresenceSubscriptionForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (id)_existingPresentDeviceForChannel:(id)a3 deviceIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingPresentDevicesForChannel:(id)a3 databaseContext:(id)a4;
- (id)_existingReceivedInvitationsForChannelIdentifier:(id)a3 sortedByDateReceived:(BOOL)a4 databaseContect:(id)a5;
- (id)_existingReceivedInvitationsForHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingReceivedInvitationsForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingRemovedUsersForHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingRemovedUsersForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingSubscriptionAssertionForSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingSubscriptionAssertionsForStatusTypeIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5;
- (id)_existingTransientSubscriptionHistoryForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (id)allExistingChannelsForHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5;
- (id)allExistingChannelsForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (id)allExistingChannelsForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5;
- (id)allExistingChannelsForStatusTypeIdentifier:(id)a3 includingPersonalChannel:(BOOL)a4 databaseContext:(id)a5;
- (id)allExistingPresenceSubscriptionsForDatabaseContext:(id)a3;
- (id)allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext:(id)a3;
- (id)allPublishedLocalStatusDevicesInDatabaseContext:(id)a3 error:(id *)a4;
- (id)allPublishedLocalStatusesInDatabaseContext:(id)a3 error:(id *)a4;
- (id)allSubscribedLocalStatusesInDatabaseContext:(id)a3 error:(id *)a4;
- (id)createChannelForStatusTypeIdentifier:(id)a3 channelIdentifier:(id)a4 databaseContext:(id)a5;
- (id)createGeneratedEncryptionKeyWithOriginalOutgoingRatchetState:(id)a3 personalChannel:(id)a4 databaseContext:(id)a5;
- (id)createInvitedUserWithHandle:(id)a3 senderHandle:(id)a4 invitationPayload:(id)a5 channel:(id)a6 databaseContext:(id)a7;
- (id)createOrUpdatePresenceAssertionForPresenceIdentifier:(id)a3 presenceOptions:(id)a4 assertionOptions:(id)a5 payload:(id)a6 databaseContext:(id)a7;
- (id)createOrUpdatePresenceSubscriptionForChannelIdentifier:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5;
- (id)createOrUpdateTransientSubscriptionHistoryForChannelIdentifier:(id)a3 lastSubscriptionDate:(id)a4 databaseContext:(id)a5;
- (id)createPendingPublishRequestWithUniqueIdentifier:(id)a3 dateCreated:(id)a4 payloadData:(id)a5 statusTypeIdentifier:(id)a6 databaseContext:(id)a7;
- (id)createPersonalChannelForStatusTypeIdentifier:(id)a3 channelIdentifier:(id)a4 channelToken:(id)a5 databaseContext:(id)a6;
- (id)createPresenceChannelForPresenceIdentifier:(id)a3 channelIdentifier:(id)a4 channelToken:(id)a5 peerKey:(id)a6 serverKey:(id)a7 membershipKey:(id)a8 creationDate:(id)a9 options:(id)a10 databaseContext:(id)a11;
- (id)createReceivedInvitationForChannel:(id)a3 senderHandle:(id)a4 invitedHandle:(id)a5 invitationIdentifier:(id)a6 dateInvitationCreated:(id)a7 incomingRatchetState:(id)a8 presenceIdentifier:(id)a9 channelToken:(id)a10 serverKey:(id)a11 peerKey:(id)a12 invitationPayload:(id)a13 databaseContext:(id)a14;
- (id)createRemovedUserWithHandle:(id)a3 dateRemoved:(id)a4 presenceIdentifier:(id)a5 databaseContext:(id)a6;
- (id)createRemovedUserWithHandle:(id)a3 dateRemoved:(id)a4 statusTypeIdentifier:(id)a5 databaseContext:(id)a6;
- (id)createStatusWithUniqueIdentifier:(id)a3 dateCreated:(id)a4 datePublished:(id)a5 dateReceived:(id)a6 dateExpired:(id)a7 rawData:(id)a8 channelIdentifier:(id)a9 databaseContext:(id)a10;
- (id)createSubscriptionAssertionForSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 statusTypeIdentifier:(id)a5 databaseContext:(id)a6;
- (id)existingChannelForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (id)existingChannelForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5;
- (id)existingChannelForSubscriptionIdentifier:(id)a3 databaseContext:(id)a4;
- (id)existingInvitedUsersForInvitedHandle:(id)a3 onChannel:(id)a4 databaseContext:(id)a5;
- (id)existingInvitedUsersForPersonalChannel:(id)a3 databaseContext:(id)a4;
- (id)existingPendingPublishRequestForUniqueIdentifier:(id)a3 withDatabaseContext:(id)a4;
- (id)existingPendingPublishRequestsForStatusTypeIdentifier:(id)a3 withDatabaseContext:(id)a4;
- (id)existingPendingPublishRequestsWithDatabaseContext:(id)a3;
- (id)existingPersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4;
- (id)existingPresenceAssertionForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5;
- (id)existingPresenceSubscriptionForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (id)existingRecentTransientSubscriptionHistoriesWithLimit:(int64_t)a3 databaseContext:(id)a4;
- (id)existingRemovedUserWithHandle:(id)a3 presenceIdentifier:(id)a4 withDatabaseContext:(id)a5;
- (id)existingRemovedUserWithHandle:(id)a3 statusTypeIdentifier:(id)a4 withDatabaseContext:(id)a5;
- (id)existingStatusForChannel:(id)a3 databaseContext:(id)a4;
- (id)existingStatusForUniqueIdentifier:(id)a3 databaseContext:(id)a4;
- (id)existingSubscriptionAssertionForSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5;
- (id)existingSubscriptionAssertionsForStatusTypeIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5;
- (id)generatedEncryptionKeysForPersonalChannel:(id)a3 databaseContext:(id)a4;
- (id)presentDevicesForChannel:(id)a3 databaseContext:(id)a4;
- (id)receivedInvitationsForChannel:(id)a3 databaseContext:(id)a4;
- (id)receivedInvitationsForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5;
- (id)updateInvitationPayload:(id)a3 onExistingInvitedUser:(id)a4 channel:(id)a5 databaseContext:(id)a6;
- (id)updatePersonalChannel:(id)a3 withCurrentOutgoingRatchetState:(id)a4 databaseContext:(id)a5;
- (unint64_t)currentCheckpointForChannel:(id)a3 databaseContext:(id)a4;
- (void)_deleteAllPresenceSubscriptionsAndAssertionsIfNecessary;
- (void)cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext:(id)a3;
- (void)cleanupDecommissionedChannelsWithDatabaseContext:(id)a3;
- (void)cleanupOldChannelsForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5;
- (void)cleanupOldReceivedInvitationsForChannelIdentifier:(id)a3 excludingInvitation:(id)a4 databaseContext:(id)a5;
- (void)cleanupOldStatusUpdatesForChannelIdentifier:(id)a3 excludingStatusUniqueIdentifier:(id)a4 databaseContext:(id)a5;
- (void)deletePresenceSubscriptionsForChannelIdentifier:(id)a3 databaseContext:(id)a4;
- (void)deletePresenceSubscriptionsForPresenceIdentifier:(id)a3 databaseContext:(id)a4;
- (void)deviceToDeviceEncryptedDatabaseCapableWithCompletion:(id)a3;
- (void)logMostDuplicatedChannelFromDatabaseContext:(id)a3;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation SKADatabaseManager

- (SKADatabaseManager)initWithDatabaseProvider:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SKADatabaseManager;
  v9 = [(SKADatabaseManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseProvider, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = +[SKASystemMonitor sharedInstance];
    [v11 addListener:v10];

    [(SKADatabaseManager *)v10 _deleteAllPresenceSubscriptionsAndAssertionsIfNecessary];
  }

  return v10;
}

- (id)existingPersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SKADatabaseManager_existingPersonalChannelForStatusTypeIdentifier_databaseContext___block_invoke;
  v12[3] = &unk_27843E3A0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v9 performBlockAndWait:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __85__SKADatabaseManager_existingPersonalChannelForStatusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPersonalChannelForStatusTypeIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v2)
  {
    v3 = [SKADatabaseChannel alloc];
    v9[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v5 = [(SKADatabaseChannel *)v3 initWithCoreDataChannels:v4];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_existingPersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4
{
  v34[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = +[Channel fetchRequest];
  v7 = MEMORY[0x277CCA920];
  v27 = v5;
  v8 = [Channel predicateForStatusTypeIdentifier:v5];
  v34[0] = v8;
  v9 = [Channel predicateForPersonal:1];
  v34[1] = v9;
  v10 = [Channel predicateForDecommissioned:0];
  v34[2] = v10;
  v11 = +[Channel predicateForChannelTypeStatus];
  v34[3] = v11;
  v12 = +[Channel predicateForCreationDateNotNil];
  v34[4] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
  v14 = [v7 andPredicateWithSubpredicates:v13];
  [v6 setPredicate:v14];

  v15 = [Channel sortDescriptorForCreationDateAscending:1];
  v33 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [v6 setSortDescriptors:v16];

  [v6 setFetchLimit:1];
  v28 = 0;
  v17 = [v26 executeFetchRequest:v6 error:&v28];

  v18 = v28;
  if (v18)
  {
    v19 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingPersonalChannelForStatusTypeIdentifier:databaseContext:];
    }

    v20 = 0;
    v21 = v27;
  }

  else
  {
    v19 = [v17 firstObject];
    v22 = +[SKADatabaseManager logger];
    v21 = v27;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v19 identifier];
      *buf = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Fetch request for personal status channel type %@ completed with result: %@", buf, 0x16u);
    }

    if (v19)
    {
      v19 = v19;
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_existingDecommissionedChannelsWithDatabaseContext:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[Channel fetchRequest];
  v5 = [Channel predicateForDecommissioned:1];
  [v4 setPredicate:v5];

  v6 = [Channel sortDescriptorForCreationDateAscending:0];
  v19[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v4 setSortDescriptors:v7];

  v16 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v16];

  v9 = v16;
  v10 = +[SKADatabaseManager logger];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingDecommissionedChannelsWithDatabaseContext:];
    }

LABEL_5:
    v12 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 count];
    *buf = 134217984;
    v18 = v13;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Fetch request for decommissioned personal channels completed with %ld results", buf, 0xCu);
  }

  if (!v8)
  {
    goto LABEL_5;
  }

  v12 = v8;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_existingPersonalChannelsForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4
{
  v34[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = +[Channel fetchRequest];
  v7 = MEMORY[0x277CCA920];
  v27 = v5;
  v8 = [Channel predicateForStatusTypeIdentifier:v5];
  v34[0] = v8;
  v9 = [Channel predicateForPersonal:1];
  v34[1] = v9;
  v10 = [Channel predicateForDecommissioned:0];
  v34[2] = v10;
  v11 = +[Channel predicateForChannelTypeStatus];
  v34[3] = v11;
  v12 = +[Channel predicateForCreationDateNotNil];
  v34[4] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
  v14 = [v7 andPredicateWithSubpredicates:v13];
  [v6 setPredicate:v14];

  v15 = [Channel sortDescriptorForCreationDateAscending:1];
  v33 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [v6 setSortDescriptors:v16];

  v28 = 0;
  v17 = [v26 executeFetchRequest:v6 error:&v28];

  v18 = v28;
  if (v18)
  {
    v19 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingPersonalChannelForStatusTypeIdentifier:databaseContext:];
    }

    v20 = 0;
    v21 = v27;
  }

  else
  {
    v19 = [v17 firstObject];
    v22 = +[SKADatabaseManager logger];
    v21 = v27;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v19 identifier];
      *buf = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Fetch request for personal status channel type %@ completed with result: %@", buf, 0x16u);
    }

    if (v19)
    {
      v20 = [v17 copy];
    }

    else
    {
      v20 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)deletePersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SKADatabaseManager_deletePersonalChannelForStatusTypeIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __83__SKADatabaseManager_deletePersonalChannelForStatusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingPersonalChannelForStatusTypeIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v2)
  {
    [*(a1 + 48) deleteObject:v2];
    v3 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deleted existing channel.", v5, 2u);
    }

    v4 = 1;
  }

  else
  {
    v3 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __83__SKADatabaseManager_deletePersonalChannelForStatusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }

    v4 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v4;
}

- (id)existingChannelForSubscriptionIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__SKADatabaseManager_existingChannelForSubscriptionIdentifier_databaseContext___block_invoke;
  v12[3] = &unk_27843E3A0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v9 performBlockAndWait:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __79__SKADatabaseManager_existingChannelForSubscriptionIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _existingChannelsForChannelIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  if ([v5 count])
  {
    v2 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:v5];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)existingChannelForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__SKADatabaseManager_existingChannelForPresenceIdentifier_isPersonal_databaseContext___block_invoke;
  v14[3] = &unk_27843E3C8;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  v18 = a4;
  v11 = v9;
  v16 = v11;
  v17 = &v19;
  [v11 performBlockAndWait:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __86__SKADatabaseManager_existingChannelForPresenceIdentifier_isPersonal_databaseContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _existingChannelsForPresenceIdentifier:*(a1 + 40) isPersonal:*(a1 + 64) databaseContext:*(a1 + 48)];
  if ([v5 count])
  {
    v2 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:v5];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)_existingChannelsForDatabaseChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 isPersonal];

  v10 = [(SKADatabaseManager *)self _existingChannelsForChannelIdentifier:v8 isPersonal:v9 databaseContext:v6];

  return v10;
}

- (id)_existingPersonalChannelForDatabaseChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = [(SKADatabaseManager *)self _existingChannelsForDatabaseChannel:v6 databaseContext:a4];
  if ([v7 count] != 1)
  {
    v8 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SKADatabaseManager _existingPersonalChannelForDatabaseChannel:v6 databaseContext:v8];
    }
  }

  v9 = [v7 firstObject];

  return v9;
}

- (id)_existingChannelsForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[Channel fetchRequest];
  v8 = MEMORY[0x277CCA920];
  v9 = [Channel predicateForChannelIdentifier:v5];
  v21[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v11 = [v8 andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v11];

  v18 = 0;
  v12 = [v6 executeFetchRequest:v7 error:&v18];

  v13 = v18;
  if (v13)
  {
    v14 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingChannelsForChannelIdentifier:isPersonal:databaseContext:];
    }
  }

  if (v12)
  {
    if ([v12 count])
    {
      goto LABEL_13;
    }

    v15 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Fetch request for channel by identifier %@ found no match.", buf, 0xCu);
    }
  }

  else
  {
    v15 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingChannelsForChannelIdentifier:databaseContext:];
    }

    v12 = MEMORY[0x277CBEBF8];
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)existingChannelForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__SKADatabaseManager_existingChannelForHandle_statusTypeIdentifier_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __84__SKADatabaseManager_existingChannelForHandle_statusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingReceivedInvitationsForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 invitationIdentifier];
    v6 = [v4 senderHandle];
    v7 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2048;
      v23 = [v2 count];
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Preferring invitation %@ from %@ among %ld result(s)", &v18, 0x20u);
    }

    v8 = [v4 channel];
    v9 = [v8 identifier];

    v10 = [v9 length];
    v11 = +[SKADatabaseManager logger];
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Invitation %@ corresponds to channelIdentifier: %@", &v18, 0x16u);
      }

      v12 = [*(a1 + 32) _existingChannelsForChannelIdentifier:v9 databaseContext:*(a1 + 56)];
      if ([v12 count])
      {
        v13 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:v12];
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      else
      {
        v15 = +[SKADatabaseManager logger];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __84__SKADatabaseManager_existingChannelForHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
        }
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __84__SKADatabaseManager_existingChannelForHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_2();
    }

    goto LABEL_17;
  }

  v5 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) handleString];
    v16 = *(a1 + 48);
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "No received invitation found matching handle %@ statusTypeIdentifier: %@", &v18, 0x16u);
LABEL_17:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)allExistingChannelsForHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SKADatabaseManager_allExistingChannelsForHandle_presenceIdentifier_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __86__SKADatabaseManager_allExistingChannelsForHandle_presenceIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingReceivedInvitationsForHandle:*(a1 + 40) presenceIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  context = objc_autoreleasePoolPush();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 channel];
        v11 = [v10 identifier];

        [*(a1 + 56) refreshObject:v9 mergeChanges:0];
        if ([v11 length])
        {
          [v3 addObject:v11];
        }

        else
        {
          v12 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 40);
            *buf = 138412546;
            v34 = v9;
            v35 = 2112;
            v36 = v13;
            _os_log_error_impl(&dword_220099000, v12, OS_LOG_TYPE_ERROR, "Invitation does not correspond to any channel. ReceivedInvitation: %@ handle: %@", buf, 0x16u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [*(a1 + 32) _existingChannelsForChannelIdentifier:v19 databaseContext:*(a1 + 56)];
        if ([v20 count])
        {
          v21 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:v20];
          [*(*(*(a1 + 64) + 8) + 40) addObject:v21];
        }

        else
        {
          v21 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v19;
            _os_log_error_impl(&dword_220099000, &v21->super, OS_LOG_TYPE_ERROR, "Channel not found for channel identifier: %@", buf, 0xCu);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)allExistingChannelsForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__SKADatabaseManager_allExistingChannelsForHandle_statusTypeIdentifier_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __88__SKADatabaseManager_allExistingChannelsForHandle_statusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingReceivedInvitationsForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  context = objc_autoreleasePoolPush();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 channel];
        v11 = [v10 identifier];

        [*(a1 + 56) refreshObject:v9 mergeChanges:0];
        if ([v11 length])
        {
          [v3 addObject:v11];
        }

        else
        {
          v12 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 40);
            *buf = 138412546;
            v34 = v9;
            v35 = 2112;
            v36 = v13;
            _os_log_error_impl(&dword_220099000, v12, OS_LOG_TYPE_ERROR, "Invitation does not correspond to any channel. ReceivedInvitation: %@ handle: %@", buf, 0x16u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [*(a1 + 32) _existingChannelsForChannelIdentifier:v19 databaseContext:*(a1 + 56)];
        if ([v20 count])
        {
          v21 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:v20];
          [*(*(*(a1 + 64) + 8) + 40) addObject:v21];
        }

        else
        {
          v21 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v19;
            _os_log_error_impl(&dword_220099000, &v21->super, OS_LOG_TYPE_ERROR, "Channel not found for channel identifier: %@", buf, 0xCu);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logMostDuplicatedChannelFromDatabaseContext:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = &unk_2833EBA50;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SKADatabaseManager_logMostDuplicatedChannelFromDatabaseContext___block_invoke;
  v8[3] = &unk_27843E418;
  v4 = v3;
  v9 = v4;
  v10 = &v25;
  v11 = &v19;
  v12 = &v13;
  [v4 performBlockAndWait:v8];
  if (v20[5] && v14[5] && [v26[5] integerValue])
  {
    v31[0] = &unk_2833EBA68;
    v5 = [v20[5] clientIDFromPresenceIdentifier];
    v31[1] = &unk_2833EBA80;
    v32[0] = v5;
    v32[1] = v26[5];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [SKACALogger logEvent:3 withMetadata:v6];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void __66__SKADatabaseManager_logMostDuplicatedChannelFromDatabaseContext___block_invoke(void *a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = +[Channel fetchRequest];
  v3 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v3 setName:@"count"];
  v4 = MEMORY[0x277CCA9C0];
  v5 = +[Channel identifierKeyPath];
  v6 = [v4 expressionForKeyPath:v5];
  v49[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v8 = [v4 expressionForFunction:@"count:" arguments:v7];
  [v3 setExpression:v8];

  [v3 setExpressionResultType:200];
  v9 = +[Channel identifierKeyPath];
  v48[0] = v9;
  v10 = +[Channel presenceIdentifierKeyPath];
  v48[1] = v10;
  v48[2] = v3;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  [v2 setPropertiesToFetch:v11];

  v12 = +[Channel identifierKeyPath];
  v47[0] = v12;
  v13 = +[Channel presenceIdentifierKeyPath];
  v47[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  [v2 setPropertiesToGroupBy:v14];

  [v2 setResultType:2];
  v15 = a1[4];
  v43 = 0;
  v16 = [v15 executeFetchRequest:v2 error:&v43];
  v17 = v43;
  if (v17)
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v17;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Error fetching grouped data: %@", buf, 0xCu);
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v36 = v16;
      v37 = v3;
      v38 = v2;
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 objectForKey:@"count"];
          v26 = [v25 integerValue];
          if (v26 > [*(*(a1[5] + 8) + 40) integerValue])
          {
            objc_storeStrong((*(a1[5] + 8) + 40), v25);
            v27 = +[Channel presenceIdentifierKeyPath];
            v28 = [v23 objectForKey:v27];
            v29 = *(a1[6] + 8);
            v30 = *(v29 + 40);
            *(v29 + 40) = v28;

            v31 = +[Channel identifierKeyPath];
            v32 = [v23 objectForKey:v31];
            v33 = *(a1[7] + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v32;
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v20);
      v3 = v37;
      v2 = v38;
      v17 = 0;
      v16 = v36;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)allExistingChannelsForStatusTypeIdentifier:(id)a3 includingPersonalChannel:(BOOL)a4 databaseContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __106__SKADatabaseManager_allExistingChannelsForStatusTypeIdentifier_includingPersonalChannel_databaseContext___block_invoke;
  v16 = &unk_27843E440;
  v9 = v7;
  v17 = v9;
  v20 = a4;
  v10 = v8;
  v18 = v10;
  v19 = &v21;
  [v10 performBlockAndWait:&v13];
  v11 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __106__SKADatabaseManager_allExistingChannelsForStatusTypeIdentifier_includingPersonalChannel_databaseContext___block_invoke(uint64_t a1)
{
  v59[3] = *MEMORY[0x277D85DE8];
  v2 = +[Channel fetchRequest];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = (a1 + 32);
  v5 = [Channel predicateForStatusTypeIdentifier:*(a1 + 32)];
  [v3 addObject:v5];

  if ((*(a1 + 56) & 1) == 0)
  {
    v6 = [Channel predicateForPersonal:0];
    [v3 addObject:v6];
  }

  v43 = v3;
  if ([v3 count] <= 1)
  {
    [v3 firstObject];
  }

  else
  {
    [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v3];
  }
  v42 = ;
  [v2 setPredicate:?];
  v7 = [Channel sortDescriptorForStatusTypeIdentifierOrderedAscending:1];
  v59[0] = v7;
  v8 = [Channel sortDescriptorForPersonalOrderedAscending:0];
  v59[1] = v8;
  v9 = [Channel sortDescriptorForChannelIdentifierOrderedAscending:1];
  v59[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
  [v2 setSortDescriptors:v10];

  v11 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v4;
    *buf = 138412290;
    v56 = v12;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Beginning fetch request for channel by status type identifier %@", buf, 0xCu);
  }

  v13 = *(a1 + 40);
  v52 = 0;
  v14 = [v13 executeFetchRequest:v2 error:&v52];
  v15 = v52;
  if (v15)
  {
    v16 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __106__SKADatabaseManager_allExistingChannelsForStatusTypeIdentifier_includingPersonalChannel_databaseContext___block_invoke_cold_1((a1 + 32));
    }

LABEL_11:
    v18 = v42;
    v17 = v43;
    goto LABEL_34;
  }

  v19 = [v14 count];
  v16 = +[SKADatabaseManager logger];
  v20 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (v20)
    {
      v38 = *v4;
      *buf = 138412290;
      v56 = v38;
      _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Fetch request for channel by status type identifier %@ found no match.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v41 = v2;
  if (v20)
  {
    v21 = *v4;
    v22 = [v14 count];
    *buf = 138412546;
    v56 = v21;
    v57 = 2048;
    v58 = v22;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Fetch request for channel by status type identifier %@ completed with %ld result(s)", buf, 0x16u);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v40 = v14;
  v23 = v14;
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v48 + 1) + 8 * i);
        v29 = [v28 identifier];
        if ([v29 length])
        {
          v30 = [v16 objectForKeyedSubscript:v29];
          if (!v30)
          {
            v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v16 setObject:v30 forKeyedSubscript:v29];
          }

          [v30 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(context);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = [v16 allValues];
  v32 = [v31 countByEnumeratingWithState:&v44 objects:v53 count:16];
  v2 = v41;
  v15 = 0;
  if (v32)
  {
    v33 = v32;
    v34 = *v45;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:*(*(&v44 + 1) + 8 * j)];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v33);
  }

  v18 = v42;
  v17 = v43;
  v14 = v40;
LABEL_34:

  v37 = *MEMORY[0x277D85DE8];
}

- (id)allExistingChannelsForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __90__SKADatabaseManager_allExistingChannelsForPresenceIdentifier_isPersonal_databaseContext___block_invoke;
  v16 = &unk_27843E440;
  v9 = v7;
  v17 = v9;
  v20 = a4;
  v10 = v8;
  v18 = v10;
  v19 = &v21;
  [v10 performBlockAndWait:&v13];
  v11 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __90__SKADatabaseManager_allExistingChannelsForPresenceIdentifier_isPersonal_databaseContext___block_invoke(uint64_t a1)
{
  v58[5] = *MEMORY[0x277D85DE8];
  v2 = +[Channel fetchRequest];
  v3 = MEMORY[0x277CCA920];
  v4 = [Channel predicateForPresenceIdentifier:*(a1 + 32)];
  v58[0] = v4;
  v5 = [Channel predicateForDecommissioned:0];
  v58[1] = v5;
  v6 = +[Channel predicateForChannelTypePresence];
  v58[2] = v6;
  v41 = (a1 + 32);
  v7 = [Channel predicateForPersonal:*(a1 + 56)];
  v58[3] = v7;
  v8 = +[Channel predicateForCreationDateNotNil];
  v58[4] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
  v10 = [v3 andPredicateWithSubpredicates:v9];
  [v2 setPredicate:v10];

  v11 = [Channel sortDescriptorForCreationDateAscending:0];
  v57 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [v2 setSortDescriptors:v12];

  v13 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *v41;
    *buf = 138412290;
    v54 = v14;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Beginning fetch request for channel by presence identifier %@", buf, 0xCu);
  }

  v15 = *(a1 + 40);
  v50 = 0;
  v16 = [v15 executeFetchRequest:v2 error:&v50];
  v17 = v50;
  if (v17)
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __90__SKADatabaseManager_allExistingChannelsForPresenceIdentifier_isPersonal_databaseContext___block_invoke_cold_1(v41);
    }
  }

  else
  {
    v19 = [v16 count];
    v18 = +[SKADatabaseManager logger];
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v40 = v2;
      if (v20)
      {
        v21 = *v41;
        v22 = [v16 count];
        *buf = 138412546;
        v54 = v21;
        v55 = 2048;
        v56 = v22;
        _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Fetch request for channel by presence identifier %@ completed with %ld result(s)", buf, 0x16u);
      }

      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      context = objc_autoreleasePoolPush();
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = v16;
      v24 = [v23 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v47;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v47 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v46 + 1) + 8 * i);
            v29 = [v28 identifier];
            if ([v29 length])
            {
              v30 = [v18 objectForKeyedSubscript:v29];
              if (!v30)
              {
                v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v18 setObject:v30 forKeyedSubscript:v29];
              }

              [v30 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v25);
      }

      objc_autoreleasePoolPop(context);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v31 = [v18 allValues];
      v32 = [v31 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v43;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v43 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [[SKADatabaseChannel alloc] initWithCoreDataChannels:*(*(&v42 + 1) + 8 * j)];
            [*(*(*(a1 + 48) + 8) + 40) addObject:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v33);
      }

      v2 = v40;
      v17 = 0;
    }

    else if (v20)
    {
      v37 = *v41;
      *buf = 138412290;
      v54 = v37;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Fetch request for channel by presence identifier %@ found no match.", buf, 0xCu);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)createPersonalChannelForStatusTypeIdentifier:(id)a3 channelIdentifier:(id)a4 channelToken:(id)a5 databaseContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__SKADatabaseManager_createPersonalChannelForStatusTypeIdentifier_channelIdentifier_channelToken_databaseContext___block_invoke;
  v21[3] = &unk_27843E3F0;
  v14 = v13;
  v22 = v14;
  v15 = v10;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v17 = v12;
  v25 = v17;
  v26 = &v27;
  [v14 performBlockAndWait:v21];
  v18 = [(SKADatabaseManager *)self delegate];
  [v18 databaseManager:self didCreateChannel:v28[5]];

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v19;
}

void __114__SKADatabaseManager_createPersonalChannelForStatusTypeIdentifier_channelIdentifier_channelToken_databaseContext___block_invoke(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [[Channel alloc] initWithContext:a1[4]];
  [(Channel *)v2 setStatusType:a1[5]];
  [(Channel *)v2 setChannelType:0];
  [(Channel *)v2 setDecomissioned:0];
  [(Channel *)v2 setPersonal:1];
  [(Channel *)v2 setIdentifier:a1[6]];
  [(Channel *)v2 setChannelToken:a1[7]];
  v3 = [MEMORY[0x277CBEAA8] now];
  [(Channel *)v2 setDateChannelCreated:v3];
  v4 = a1[4];
  v13 = 0;
  [v4 save:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __114__SKADatabaseManager_createPersonalChannelForStatusTypeIdentifier_channelIdentifier_channelToken_databaseContext___block_invoke_cold_1();
    }
  }

  v7 = [SKADatabaseChannel alloc];
  v14[0] = v2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9 = [(SKADatabaseChannel *)v7 initWithCoreDataChannels:v8];
  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)createPresenceChannelForPresenceIdentifier:(id)a3 channelIdentifier:(id)a4 channelToken:(id)a5 peerKey:(id)a6 serverKey:(id)a7 membershipKey:(id)a8 creationDate:(id)a9 options:(id)a10 databaseContext:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v36 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v54 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __165__SKADatabaseManager_createPresenceChannelForPresenceIdentifier_channelIdentifier_channelToken_peerKey_serverKey_membershipKey_creationDate_options_databaseContext___block_invoke;
  v38[3] = &unk_27843E468;
  v24 = v23;
  v39 = v24;
  v35 = v16;
  v40 = v35;
  v25 = v17;
  v41 = v25;
  v26 = v18;
  v42 = v26;
  v27 = v21;
  v43 = v27;
  v28 = v19;
  v44 = v28;
  v29 = v20;
  v45 = v29;
  v30 = v36;
  v46 = v30;
  v31 = v22;
  v47 = v31;
  v48 = &v49;
  [v24 performBlockAndWait:v38];
  v32 = [(SKADatabaseManager *)self delegate];
  [v32 databaseManager:self didCreateChannel:v50[5]];

  v33 = v50[5];
  _Block_object_dispose(&v49, 8);

  return v33;
}

void __165__SKADatabaseManager_createPresenceChannelForPresenceIdentifier_channelIdentifier_channelToken_peerKey_serverKey_membershipKey_creationDate_options_databaseContext___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [[Channel alloc] initWithContext:*(a1 + 32)];
  [(Channel *)v2 setPresenceIdentifier:*(a1 + 40)];
  [(Channel *)v2 setChannelType:1];
  [(Channel *)v2 setDecomissioned:0];
  [(Channel *)v2 setIdentifier:*(a1 + 48)];
  [(Channel *)v2 setChannelToken:*(a1 + 56)];
  [(Channel *)v2 setDateChannelCreated:*(a1 + 64)];
  [(Channel *)v2 setPeerKey:*(a1 + 72)];
  [(Channel *)v2 setServerKey:*(a1 + 80)];
  [(Channel *)v2 setMembershipKey:*(a1 + 88)];
  -[Channel setPersonal:](v2, "setPersonal:", [*(a1 + 96) isPersonal]);
  v3 = [*(a1 + 96) serviceIdentifier];
  [(Channel *)v2 setServiceIdentifier:v3];

  v4 = *(a1 + 32);
  v13 = 0;
  [v4 save:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __165__SKADatabaseManager_createPresenceChannelForPresenceIdentifier_channelIdentifier_channelToken_peerKey_serverKey_membershipKey_creationDate_options_databaseContext___block_invoke_cold_1();
    }
  }

  v7 = [SKADatabaseChannel alloc];
  v14[0] = v2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9 = [(SKADatabaseChannel *)v7 initWithCoreDataChannels:v8];
  v10 = *(*(a1 + 104) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)createChannelForStatusTypeIdentifier:(id)a3 channelIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __93__SKADatabaseManager_createChannelForStatusTypeIdentifier_channelIdentifier_databaseContext___block_invoke;
  v20 = &unk_27843E3A0;
  v11 = v10;
  v21 = v11;
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v24 = &v25;
  [v11 performBlockAndWait:&v17];
  v14 = [(SKADatabaseManager *)self delegate:v17];
  [v14 databaseManager:self didCreateChannel:v26[5]];

  v15 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v15;
}

void __93__SKADatabaseManager_createChannelForStatusTypeIdentifier_channelIdentifier_databaseContext___block_invoke(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [[Channel alloc] initWithContext:a1[4]];
  [(Channel *)v2 setStatusType:a1[5]];
  [(Channel *)v2 setChannelType:0];
  [(Channel *)v2 setPersonal:0];
  [(Channel *)v2 setDecomissioned:0];
  [(Channel *)v2 setIdentifier:a1[6]];
  v3 = a1[4];
  v12 = 0;
  [v3 save:&v12];
  v4 = v12;
  if (v4)
  {
    v5 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __93__SKADatabaseManager_createChannelForStatusTypeIdentifier_channelIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v6 = [SKADatabaseChannel alloc];
  v13[0] = v2;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [(SKADatabaseChannel *)v6 initWithCoreDataChannels:v7];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)updatePersonalChannel:(id)a3 withCurrentOutgoingRatchetState:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__SKADatabaseManager_updatePersonalChannel_withCurrentOutgoingRatchetState_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = &v21;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __92__SKADatabaseManager_updatePersonalChannel_withCurrentOutgoingRatchetState_databaseContext___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  [v2 setCurrentOutgoingRatchetState:*(a1 + 56)];
  v3 = *(a1 + 48);
  v12 = 0;
  [v3 save:&v12];
  v4 = v12;
  if (v4)
  {
    v5 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __92__SKADatabaseManager_updatePersonalChannel_withCurrentOutgoingRatchetState_databaseContext___block_invoke_cold_1();
    }
  }

  v6 = [SKADatabaseChannel alloc];
  v13[0] = v2;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [(SKADatabaseChannel *)v6 initWithCoreDataChannels:v7];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)decommissionAllPersonalChannelsWithStatusTypeIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__SKADatabaseManager_decommissionAllPersonalChannelsWithStatusTypeIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __94__SKADatabaseManager_decommissionAllPersonalChannelsWithStatusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPersonalChannelsForStatusTypeIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) setDecomissioned:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 48);
  v11 = 0;
  [v7 save:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __94__SKADatabaseManager_decommissionAllPersonalChannelsWithStatusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)decommissionAllOldChannelsWithPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__SKADatabaseManager_decommissionAllOldChannelsWithPresenceIdentifier_isPersonal_databaseContext___block_invoke;
  v13[3] = &unk_27843E3C8;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v17 = a4;
  v11 = v9;
  v15 = v11;
  v16 = &v18;
  [v11 performBlockAndWait:v13];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

void __98__SKADatabaseManager_decommissionAllOldChannelsWithPresenceIdentifier_isPersonal_databaseContext___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) existingChannelForPresenceIdentifier:*(a1 + 40) isPersonal:*(a1 + 64) databaseContext:*(a1 + 48)];
  v3 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 identifier];
    v5 = *(a1 + 40);
    *buf = 138412546;
    v43 = v4;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Decommissioning all old channels besides representative channel (%@) for presence identifier %@", buf, 0x16u);
  }

  v6 = +[Channel fetchRequest];
  v7 = MEMORY[0x277CCA920];
  v8 = [Channel predicateForPresenceIdentifier:*(a1 + 40)];
  v41[0] = v8;
  v9 = [Channel predicateForDecommissioned:0];
  v41[1] = v9;
  v10 = +[Channel predicateForChannelTypePresence];
  v41[2] = v10;
  v11 = [Channel predicateForPersonal:*(a1 + 64)];
  v41[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v13 = [v7 andPredicateWithSubpredicates:v12];
  [v6 setPredicate:v13];

  [v6 setFetchLimit:10];
  v32 = v6;
  v33 = a1;
  v14 = *(a1 + 48);
  v39 = 0;
  v15 = [v14 executeFetchRequest:v6 error:&v39];
  v31 = v39;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = [v21 identifier];
        v23 = [v2 identifier];
        v24 = [v22 isEqualToString:v23];

        if ((v24 & 1) == 0)
        {
          v25 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v21 identifier];
            *buf = 138412290;
            v43 = v26;
            _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Decommissioning channel: %@", buf, 0xCu);
          }

          [v21 setDecomissioned:1];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v18);
  }

  v27 = *(v33 + 48);
  v34 = 0;
  [v27 save:&v34];
  v28 = v34;
  if (v28)
  {
    v29 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __94__SKADatabaseManager_decommissionAllPersonalChannelsWithStatusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }

    *(*(*(v33 + 56) + 8) + 24) = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)decommissionChannelWithIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SKADatabaseManager_decommissionChannelWithIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __72__SKADatabaseManager_decommissionChannelWithIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingChannelsForChannelIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) setDecomissioned:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 48);
  v11 = 0;
  [v7 save:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __94__SKADatabaseManager_decommissionAllPersonalChannelsWithStatusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)createGeneratedEncryptionKeyWithOriginalOutgoingRatchetState:(id)a3 personalChannel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __115__SKADatabaseManager_createGeneratedEncryptionKeyWithOriginalOutgoingRatchetState_personalChannel_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v20 = &v21;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __115__SKADatabaseManager_createGeneratedEncryptionKeyWithOriginalOutgoingRatchetState_personalChannel_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  [v2 setCurrentOutgoingRatchetState:*(a1 + 56)];
  v3 = [[GeneratedEncryptionKey alloc] initWithContext:*(a1 + 48)];
  [(GeneratedEncryptionKey *)v3 setOriginalOutgoingRatchetState:*(a1 + 56)];
  v4 = [MEMORY[0x277CBEAA8] date];
  [(GeneratedEncryptionKey *)v3 setDateGenerated:v4];

  [v2 addGeneratedEncryptionKeysObject:v3];
  v5 = *(a1 + 48);
  v11 = 0;
  [v5 save:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __93__SKADatabaseManager_createChannelForStatusTypeIdentifier_channelIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v8 = [[SKAGeneratedEncryptionKey alloc] initWithCoreDataGeneratedEncryptionKey:v3];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)generatedEncryptionKeysForPersonalChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __80__SKADatabaseManager_generatedEncryptionKeysForPersonalChannel_databaseContext___block_invoke;
  v17 = &unk_27843E490;
  v18 = self;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [v10 performBlockAndWait:&v14];
  v12 = [v9 copy];

  return v12;
}

void __80__SKADatabaseManager_generatedEncryptionKeysForPersonalChannel_databaseContext___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 generatedEncryptionKeys];
    v6 = MEMORY[0x277CCAC98];
    v7 = +[GeneratedEncryptionKey dateGeneratedKeyPath];
    v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

    v25[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v10 = [v5 sortedArrayUsingDescriptors:v9];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = [SKAGeneratedEncryptionKey alloc];
          v18 = [(SKAGeneratedEncryptionKey *)v17 initWithCoreDataGeneratedEncryptionKey:v16, v20];
          if (v18)
          {
            [*(a1 + 56) addObject:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v5 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__SKADatabaseManager_generatedEncryptionKeysForPersonalChannel_databaseContext___block_invoke_cold_1(v2);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __94__SKADatabaseManager_allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext___block_invoke;
  v12 = &unk_27843E330;
  v13 = v3;
  v14 = v4;
  v5 = v4;
  v6 = v3;
  [v6 performBlockAndWait:&v9];
  v7 = [v5 copy];

  return v7;
}

void __94__SKADatabaseManager_allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[SubscriptionAssertion fetchRequest];
  v3 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Beginning fetch request for active subscription assertions", buf, 2u);
  }

  v4 = *(a1 + 32);
  v21 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v21];
  v6 = v21;
  v7 = +[SKADatabaseManager logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __94__SKADatabaseManager_allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Fetch request for active subscription assertions completed", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 channelIdentifier];
        [*(a1 + 32) refreshObject:v14 mergeChanges:0];
        if ([v15 length])
        {
          [*(a1 + 40) addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_existingSubscriptionAssertionForSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SubscriptionAssertion fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [SubscriptionAssertion predicateForChannelIdentifier:v9];

  v23[0] = v12;
  v13 = [SubscriptionAssertion predicateForApplicationIdentifier:v8];

  v23[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  [v10 setFetchLimit:1];
  v22 = 0;
  v16 = [v7 executeFetchRequest:v10 error:&v22];

  v17 = v22;
  if (v17)
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __94__SKADatabaseManager_allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext___block_invoke_cold_1();
    }
  }

  v19 = [v16 firstObject];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)existingSubscriptionAssertionForSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __115__SKADatabaseManager_existingSubscriptionAssertionForSubscriptionIdentifier_applicationIdentifier_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __115__SKADatabaseManager_existingSubscriptionAssertionForSubscriptionIdentifier_applicationIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingSubscriptionAssertionForSubscriptionIdentifier:*(a1 + 40) applicationIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  if (v2)
  {
    v6 = v2;
    v3 = [[SKADatabaseSubscriptionAssertion alloc] initWithCoreDataSubscriptionAssertion:v2];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (id)existingSubscriptionAssertionsForStatusTypeIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__SKADatabaseManager_existingSubscriptionAssertionsForStatusTypeIdentifier_applicationIdentifier_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __114__SKADatabaseManager_existingSubscriptionAssertionsForStatusTypeIdentifier_applicationIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingSubscriptionAssertionsForStatusTypeIdentifier:*(a1 + 40) applicationIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [SKADatabaseSubscriptionAssertion alloc];
        v11 = [(SKADatabaseSubscriptionAssertion *)v10 initWithCoreDataSubscriptionAssertion:v9, v16];
        [*(a1 + 56) refreshObject:v9 mergeChanges:0];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_existingSubscriptionAssertionsForStatusTypeIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SubscriptionAssertion fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [SubscriptionAssertion predicateForStatusTypeIdentifier:v9];

  v22[0] = v12;
  v13 = [SubscriptionAssertion predicateForApplicationIdentifier:v8];

  v22[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  [v10 setFetchLimit:1];
  v21 = 0;
  v16 = [v7 executeFetchRequest:v10 error:&v21];

  v17 = v21;
  if (v17)
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __94__SKADatabaseManager_allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext___block_invoke_cold_1();
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)createSubscriptionAssertionForSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 statusTypeIdentifier:(id)a5 databaseContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __134__SKADatabaseManager_createSubscriptionAssertionForSubscriptionIdentifier_applicationIdentifier_statusTypeIdentifier_databaseContext___block_invoke;
  v19[3] = &unk_27843E3F0;
  v13 = v12;
  v20 = v13;
  v14 = v9;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v24 = &v25;
  [v13 performBlockAndWait:v19];
  v17 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __134__SKADatabaseManager_createSubscriptionAssertionForSubscriptionIdentifier_applicationIdentifier_statusTypeIdentifier_databaseContext___block_invoke(void *a1)
{
  v2 = [[SubscriptionAssertion alloc] initWithContext:a1[4]];
  [(SubscriptionAssertion *)v2 setChannelIdentifier:a1[5]];
  [(SubscriptionAssertion *)v2 setApplicationIdentifier:a1[6]];
  [(SubscriptionAssertion *)v2 setStatusTypeIdentifier:a1[7]];
  v3 = a1[4];
  v9 = 0;
  [v3 save:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __134__SKADatabaseManager_createSubscriptionAssertionForSubscriptionIdentifier_applicationIdentifier_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v6 = [[SKADatabaseSubscriptionAssertion alloc] initWithCoreDataSubscriptionAssertion:v2];
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)deleteSubscriptionAssertionWithSubscriptionIdentifier:(id)a3 applicationIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__SKADatabaseManager_deleteSubscriptionAssertionWithSubscriptionIdentifier_applicationIdentifier_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v20;
  [v13 performBlockAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __114__SKADatabaseManager_deleteSubscriptionAssertionWithSubscriptionIdentifier_applicationIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingSubscriptionAssertionForSubscriptionIdentifier:*(a1 + 40) applicationIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  if (v2)
  {
    [*(a1 + 56) deleteObject:v2];
    v3 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deleted existing assertion.", v5, 2u);
    }

    v4 = 1;
  }

  else
  {
    v3 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __114__SKADatabaseManager_deleteSubscriptionAssertionWithSubscriptionIdentifier_applicationIdentifier_databaseContext___block_invoke_cold_1();
    }

    v4 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v4;
}

- (id)_existingTransientSubscriptionHistoryForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = +[TransientSubscriptionHistory fetchRequest];
  v8 = MEMORY[0x277CCA920];
  v9 = [TransientSubscriptionHistory predicateForChannelIdentifier:v6];

  v19[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v11 = [v8 andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v11];

  [v7 setFetchLimit:1];
  v18 = 0;
  v12 = [v5 executeFetchRequest:v7 error:&v18];

  v13 = v18;
  if (v13)
  {
    v14 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingTransientSubscriptionHistoryForChannelIdentifier:databaseContext:];
    }
  }

  v15 = [v12 firstObject];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)createOrUpdateTransientSubscriptionHistoryForChannelIdentifier:(id)a3 lastSubscriptionDate:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __122__SKADatabaseManager_createOrUpdateTransientSubscriptionHistoryForChannelIdentifier_lastSubscriptionDate_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = &v21;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __122__SKADatabaseManager_createOrUpdateTransientSubscriptionHistoryForChannelIdentifier_lastSubscriptionDate_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingTransientSubscriptionHistoryForChannelIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  v3 = +[SKADatabaseManager logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Found existing transient subscription history. Updating lastSubscrionDate.", buf, 2u);
    }

    [v2 setLastSubscriptionDate:*(a1 + 56)];
    v5 = *(a1 + 48);
    v17 = 0;
    [v5 save:&v17];
    v6 = v17;
    if (v6)
    {
      v7 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __122__SKADatabaseManager_createOrUpdateTransientSubscriptionHistoryForChannelIdentifier_lastSubscriptionDate_databaseContext___block_invoke_cold_1();
      }
    }

    v8 = [[SKADatabaseTransientSubscriptionHistory alloc] initWithCoreDataTransientSubscriptionHistory:v2];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Could not find existing transient subscription history. Creating a new one.", buf, 2u);
    }

    v6 = [[TransientSubscriptionHistory alloc] initWithContext:*(a1 + 48)];
    [(TransientSubscriptionHistory *)v6 setChannelIdentifier:*(a1 + 40)];
    [(TransientSubscriptionHistory *)v6 setLastSubscriptionDate:*(a1 + 56)];
    v11 = *(a1 + 48);
    v16 = 0;
    [v11 save:&v16];
    v10 = v16;
    if (v10)
    {
      v12 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __122__SKADatabaseManager_createOrUpdateTransientSubscriptionHistoryForChannelIdentifier_lastSubscriptionDate_databaseContext___block_invoke_cold_1();
      }
    }

    v13 = [[SKADatabaseTransientSubscriptionHistory alloc] initWithCoreDataTransientSubscriptionHistory:v6];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (id)existingRecentTransientSubscriptionHistoriesWithLimit:(int64_t)a3 databaseContext:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__SKADatabaseManager_existingRecentTransientSubscriptionHistoriesWithLimit_databaseContext___block_invoke;
  v10[3] = &unk_27843E4B8;
  v10[4] = self;
  v13 = a3;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  [v7 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __92__SKADatabaseManager_existingRecentTransientSubscriptionHistoriesWithLimit_databaseContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingTransientSubscriptionHistoryWithLimit:*(a1 + 56) orderedByLastSubscriptionDateAscending:0 databaseContext:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [SKADatabaseTransientSubscriptionHistory alloc];
        v11 = [(SKADatabaseTransientSubscriptionHistory *)v10 initWithCoreDataTransientSubscriptionHistory:v9, v16];
        [*(a1 + 40) refreshObject:v9 mergeChanges:0];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x277D85DE8];
}

- (id)createInvitedUserWithHandle:(id)a3 senderHandle:(id)a4 invitationPayload:(id)a5 channel:(id)a6 databaseContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105__SKADatabaseManager_createInvitedUserWithHandle_senderHandle_invitationPayload_channel_databaseContext___block_invoke;
  v24[3] = &unk_27843E4E0;
  v17 = v13;
  v25 = v17;
  v18 = v12;
  v26 = v18;
  v27 = self;
  v19 = v15;
  v28 = v19;
  v20 = v16;
  v29 = v20;
  v21 = v14;
  v30 = v21;
  v31 = &v32;
  [v20 performBlockAndWait:v24];
  v22 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v22;
}

void __105__SKADatabaseManager_createInvitedUserWithHandle_senderHandle_invitationPayload_channel_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) normalizedHandleString];
  v3 = [*(a1 + 40) normalizedHandleString];
  v4 = [*(a1 + 48) _existingPersonalChannelForDatabaseChannel:*(a1 + 56) databaseContext:*(a1 + 64)];
  if (v4)
  {
    v5 = [[InvitedUser alloc] initWithContext:*(a1 + 64)];
    [(InvitedUser *)v5 setInvitedHandle:v3];
    v6 = [*(a1 + 72) payloadData];
    [(InvitedUser *)v5 setInvitationPayload:v6];

    v7 = [*(a1 + 72) dateCreated];
    [(InvitedUser *)v5 setDateInvitationPayloadCreated:v7];

    [(InvitedUser *)v5 setSenderHandle:v2];
    [v4 addInvitedUsersObject:v5];
    v8 = *(a1 + 64);
    v14 = 0;
    [v8 save:&v14];
    v9 = v14;
    if (v9)
    {
      v10 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __105__SKADatabaseManager_createInvitedUserWithHandle_senderHandle_invitationPayload_channel_databaseContext___block_invoke_cold_1();
      }
    }

    v11 = [[SKADatabaseInvitedUser alloc] initWithCoreDataInvitedUser:v5];
    v12 = *(*(a1 + 80) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (BOOL)copyInvitedUsersFromChannel:(id)a3 toChannel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__SKADatabaseManager_copyInvitedUsersFromChannel_toChannel_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v19 = &v20;
  [v12 performBlockAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __76__SKADatabaseManager_copyInvitedUsersFromChannel_toChannel_databaseContext___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  v3 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 56) databaseContext:*(a1 + 48)];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ([v2 objectID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) != 0))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    v25 = v2;
    v9 = [v2 invitedUsers];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [[InvitedUser alloc] initWithContext:*(a1 + 48)];
          v16 = [v14 invitedHandle];
          [(InvitedUser *)v15 setInvitedHandle:v16];

          v17 = [v14 invitationPayload];
          [(InvitedUser *)v15 setInvitationPayload:v17];

          v18 = [v14 dateInvitationPayloadCreated];
          [(InvitedUser *)v15 setDateInvitationPayloadCreated:v18];

          v19 = [v14 senderHandle];
          [(InvitedUser *)v15 setSenderHandle:v19];

          [v4 addInvitedUsersObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }

    v20 = *(a1 + 48);
    v26 = 0;
    [v20 save:&v26];
    v21 = v26;
    if (v21)
    {
      v22 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __76__SKADatabaseManager_copyInvitedUsersFromChannel_toChannel_databaseContext___block_invoke_cold_1();
      }

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v2 = v25;
    *(*(*(a1 + 64) + 8) + 24) = v23;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)updateInvitationPayload:(id)a3 onExistingInvitedUser:(id)a4 channel:(id)a5 databaseContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke;
  v20[3] = &unk_27843E508;
  v20[4] = self;
  v14 = v11;
  v21 = v14;
  v15 = v12;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v17 = v10;
  v24 = v17;
  v25 = &v26;
  [v16 performBlockAndWait:v20];
  v18 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v18;
}

void __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingInvitedUsersForDatabaseInvitedUser:*(a1 + 40) databaseChannel:*(a1 + 48) databaseContext:*(a1 + 56)];
  if ([v3 count])
  {
    if ([v3 count] >= 2)
    {
      v4 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke_cold_1(v3, v2);
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          v11 = [*(a1 + 64) payloadData];
          [v10 setInvitationPayload:v11];

          v12 = [*(a1 + 64) dateCreated];
          [v10 setDateInvitationPayloadCreated:v12];

          v13 = [[SKADatabaseInvitedUser alloc] initWithCoreDataInvitedUser:v10];
          v14 = *(*(a1 + 72) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    v16 = *(a1 + 56);
    v20 = 0;
    [v16 save:&v20];
    v17 = v20;
    if (v17)
    {
      v18 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke_cold_2();
      }
    }
  }

  else
  {
    v17 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke_cold_3(v2);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)existingInvitedUsersForInvitedHandle:(id)a3 onChannel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__SKADatabaseManager_existingInvitedUsersForInvitedHandle_onChannel_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v20 = &v21;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __85__SKADatabaseManager_existingInvitedUsersForInvitedHandle_onChannel_databaseContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v2)
  {
    v3 = [*(a1 + 32) _existingInvitedUsersForInvitedHandle:*(a1 + 56) channel:v2 databaseContext:*(a1 + 48)];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = [SKADatabaseInvitedUser alloc];
          v12 = [(SKADatabaseInvitedUser *)v11 initWithCoreDataInvitedUser:v10, v17];
          [*(a1 + 48) refreshObject:v10 mergeChanges:0];
          if (v12)
          {
            [v4 addObject:v12];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)existingInvitedUsersForPersonalChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__SKADatabaseManager_existingInvitedUsersForPersonalChannel_databaseContext___block_invoke;
  v12[3] = &unk_27843E3A0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v9 performBlockAndWait:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __77__SKADatabaseManager_existingInvitedUsersForPersonalChannel_databaseContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [v3 invitedUsers];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [[SKADatabaseInvitedUser alloc] initWithCoreDataInvitedUser:v10];
          [*(a1 + 48) refreshObject:v10 mergeChanges:0];
          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v4 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__SKADatabaseManager_existingInvitedUsersForPersonalChannel_databaseContext___block_invoke_cold_1(v2);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_existingInvitedUsersForDatabaseInvitedUser:(id)a3 databaseChannel:(id)a4 databaseContext:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [(SKADatabaseManager *)self _existingPersonalChannelForDatabaseChannel:a4 databaseContext:v8];
  v11 = [v9 invitedHandle];
  v12 = [v9 senderHandle];

  v13 = +[InvitedUser fetchRequest];
  v14 = MEMORY[0x277CCA920];
  v15 = [InvitedUser predicateForInvitedHandle:v11];
  v29[0] = v15;
  v16 = [InvitedUser predicateForSenderHandle:v12];
  v29[1] = v16;
  v17 = [InvitedUser predicateForChannel:v10];
  v29[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v19 = [v14 andPredicateWithSubpredicates:v18];
  [v13 setPredicate:v19];

  v26 = 0;
  v20 = [v8 executeFetchRequest:v13 error:&v26];

  v21 = v26;
  v22 = +[SKADatabaseManager logger];
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingInvitedUsersForDatabaseInvitedUser:databaseChannel:databaseContext:];
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v20;
    _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Fetch request for invited user executed with results: %@", buf, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_existingInvitedUsersForInvitedHandle:(id)a3 channel:(id)a4 databaseContext:(id)a5
{
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 normalizedHandleString];
  if ([v10 length])
  {
    v11 = +[InvitedUser fetchRequest];
    v12 = MEMORY[0x277CCA920];
    v13 = [InvitedUser predicateForInvitedHandle:v10];
    v26[0] = v13;
    v14 = [InvitedUser predicateForChannel:v8];
    v26[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v16 = [v12 andPredicateWithSubpredicates:v15];
    [v11 setPredicate:v16];

    v23 = 0;
    v17 = [v9 executeFetchRequest:v11 error:&v23];
    v18 = v23;
    v19 = +[SKADatabaseManager logger];
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SKADatabaseManager _existingInvitedUsersForDatabaseInvitedUser:databaseChannel:databaseContext:];
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Fetch request for invited user executed with results: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingInvitedUsersForInvitedHandle:v7 channel:? databaseContext:?];
    }

    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)deleteInvitedUserForHandle:(id)a3 personalChannel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v19 = &v20;
  [v12 performBlockAndWait:v15];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

void __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v3)
  {
    v4 = [*(a1 + 32) _existingInvitedUsersForInvitedHandle:*(a1 + 56) channel:v3 databaseContext:*(a1 + 48)];
    if ([v4 count])
    {
      v20 = v4;
      v21 = v3;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v24;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v23 + 1) + 8 * i);
            v11 = [SKADatabaseManager logger:v20];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 56);
              *buf = 138412290;
              v28 = v12;
              _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Deleting existing invited user with handle: %@", buf, 0xCu);
            }

            [*(a1 + 48) deleteObject:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v7);
      }

      v13 = *(a1 + 48);
      v22 = 0;
      [v13 save:&v22];
      v14 = v22;
      if (v14)
      {
        v15 = +[SKADatabaseManager logger];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_1();
        }

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v4 = v20;
      v3 = v21;
      *(*(*(a1 + 64) + 8) + 24) = v16;
    }

    else
    {
      v18 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_2((a1 + 56));
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    v17 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_3(v2);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteInvitedUserForHandle:(id)a3 presenceChannel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SKADatabaseManager_deleteInvitedUserForHandle_presenceChannel_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v19 = &v20;
  [v12 performBlockAndWait:v15];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

void __81__SKADatabaseManager_deleteInvitedUserForHandle_presenceChannel_databaseContext___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingChannelsForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [*(a1 + 32) _existingInvitedUsersForInvitedHandle:*(a1 + 56) channel:v4 databaseContext:*(a1 + 48)];
    if ([v5 count])
    {
      v22 = v3;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v5;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            v12 = +[SKADatabaseManager logger];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a1 + 56);
              *buf = 138412290;
              v29 = v13;
              _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Deleting existing invited user with handle: %@", buf, 0xCu);
            }

            [*(a1 + 48) deleteObject:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v8);
      }

      v14 = *(a1 + 48);
      v23 = 0;
      [v14 save:&v23];
      v15 = v23;
      if (v15)
      {
        v16 = +[SKADatabaseManager logger];
        v5 = v21;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_1();
        }

        v17 = 0;
        v3 = v22;
      }

      else
      {
        v17 = 1;
        v3 = v22;
        v5 = v21;
      }

      *(*(*(a1 + 64) + 8) + 24) = v17;
    }

    else
    {
      v19 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_2((a1 + 56));
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_3(v2);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteAllInvitedUsersForPersonalChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SKADatabaseManager_deleteAllInvitedUsersForPersonalChannel_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __78__SKADatabaseManager_deleteAllInvitedUsersForPersonalChannel_databaseContext___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPersonalChannelForDatabaseChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 invitedUsers];
    v6 = [v5 count];
    v7 = +[SKADatabaseManager logger];
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 count];
        v10 = [v4 identifier];
        *buf = 134218242;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Deleting all %ld existing invited users for channel %@", buf, 0x16u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(a1 + 48) deleteObject:*(*(&v23 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      v16 = *(a1 + 48);
      v22 = 0;
      [v16 save:&v22];
      v17 = v22;
      if (v17)
      {
        v18 = +[SKADatabaseManager logger];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __78__SKADatabaseManager_deleteAllInvitedUsersForPersonalChannel_databaseContext___block_invoke_cold_1();
        }

        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      *(*(*(a1 + 56) + 8) + 24) = v19;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __78__SKADatabaseManager_deleteAllInvitedUsersForPersonalChannel_databaseContext___block_invoke_cold_2();
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    v20 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_3(v2);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)createStatusWithUniqueIdentifier:(id)a3 dateCreated:(id)a4 datePublished:(id)a5 dateReceived:(id)a6 dateExpired:(id)a7 rawData:(id)a8 channelIdentifier:(id)a9 databaseContext:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __148__SKADatabaseManager_createStatusWithUniqueIdentifier_dateCreated_datePublished_dateReceived_dateExpired_rawData_channelIdentifier_databaseContext___block_invoke;
  v33[3] = &unk_27843E530;
  v23 = v22;
  v34 = v23;
  v24 = v15;
  v35 = v24;
  v25 = v21;
  v36 = v25;
  v26 = v16;
  v37 = v26;
  v27 = v17;
  v38 = v27;
  v28 = v18;
  v39 = v28;
  v29 = v20;
  v40 = v29;
  v30 = v19;
  v41 = v30;
  v42 = &v43;
  [v23 performBlockAndWait:v33];
  v31 = v44[5];

  _Block_object_dispose(&v43, 8);

  return v31;
}

void __148__SKADatabaseManager_createStatusWithUniqueIdentifier_dateCreated_datePublished_dateReceived_dateExpired_rawData_channelIdentifier_databaseContext___block_invoke(void *a1)
{
  v2 = [[Status alloc] initWithContext:a1[4]];
  [(Status *)v2 setUniqueIdentifier:a1[5]];
  [(Status *)v2 setChannelIdentifier:a1[6]];
  [(Status *)v2 setDateCreated:a1[7]];
  [(Status *)v2 setDatePublished:a1[8]];
  [(Status *)v2 setDateReceived:a1[9]];
  [(Status *)v2 setRawData:a1[10]];
  [(Status *)v2 setDateExpired:a1[11]];
  v3 = a1[4];
  v9 = 0;
  [v3 save:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __148__SKADatabaseManager_createStatusWithUniqueIdentifier_dateCreated_datePublished_dateReceived_dateExpired_rawData_channelIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v6 = [[SKADatabaseStatus alloc] initWithCoreDataStatus:v2];
  v7 = *(a1[12] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)existingStatusForChannel:(id)a3 databaseContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SKADatabaseManager_existingStatusForChannel_databaseContext___block_invoke;
  v11[3] = &unk_27843E558;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __63__SKADatabaseManager_existingStatusForChannel_databaseContext___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = +[Status fetchRequest];
  v3 = [*(a1 + 32) identifier];
  v4 = [Status predicateForChannelIdentifier:v3];
  [v2 setPredicate:v4];

  v5 = [Status sortDescriptorForDateCreatedAscending:0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v2 setSortDescriptors:v6];

  [v2 setFetchLimit:1];
  v7 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Beginning lookup of most recent status for channel", buf, 2u);
  }

  v8 = *(a1 + 40);
  v21 = 0;
  v9 = [v8 executeFetchRequest:v2 error:&v21];
  v10 = v21;
  if (v10)
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __63__SKADatabaseManager_existingStatusForChannel_databaseContext___block_invoke_cold_1();
    }

LABEL_6:

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
    goto LABEL_11;
  }

  v14 = [v9 count];
  v11 = +[SKADatabaseManager logger];
  v15 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Fetch request for status by channel found no match.", buf, 2u);
    }

    goto LABEL_6;
  }

  if (v15)
  {
    v16 = [v9 count];
    *buf = 134217984;
    v23 = v16;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Fetch request for status by channel completed with %ld result(s)", buf, 0xCu);
  }

  v13 = [v9 firstObject];
  v17 = [[SKADatabaseStatus alloc] initWithCoreDataStatus:v13];
  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];
}

- (id)existingStatusForUniqueIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SKADatabaseManager_existingStatusForUniqueIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E558;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __72__SKADatabaseManager_existingStatusForUniqueIdentifier_databaseContext___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[Status fetchRequest];
  v3 = [Status predicateForStatusUniqueIdentifier:a1[4]];
  [v2 setPredicate:v3];

  [v2 setFetchLimit:1];
  v4 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Beginning lookup of most recent status for unique id", buf, 2u);
  }

  v5 = a1[5];
  v18 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v18];
  v7 = v18;
  if (v7)
  {
    v8 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__SKADatabaseManager_existingStatusForUniqueIdentifier_databaseContext___block_invoke_cold_1();
    }

LABEL_6:

    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
    goto LABEL_11;
  }

  v11 = [v6 count];
  v8 = +[SKADatabaseManager logger];
  v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Fetch request for status by unique id found no match.", buf, 2u);
    }

    goto LABEL_6;
  }

  if (v12)
  {
    v13 = [v6 count];
    *buf = 134217984;
    v20 = v13;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Fetch request for status by unique id completed with %ld result(s)", buf, 0xCu);
  }

  v10 = [v6 firstObject];
  v14 = [[SKADatabaseStatus alloc] initWithCoreDataStatus:v10];
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)currentCheckpointForChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SKADatabaseManager_currentCheckpointForChannel_databaseContext___block_invoke;
  v12[3] = &unk_27843E3A0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v9 performBlockAndWait:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __66__SKADatabaseManager_currentCheckpointForChannel_databaseContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _existingChannelCheckpointForChannelIdentifier:v3 databaseContext:*(a1 + 48)];

  v5 = +[SKADatabaseManager logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [v4 checkpoint];
      v8 = [*(a1 + 40) identifier];
      v11 = 134218242;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Found existing checkpoint %lld for channel %@", &v11, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = [v4 checkpoint];
  }

  else
  {
    if (v6)
    {
      v9 = [*(a1 + 40) identifier];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "No existing checkpoint for channel: %@. Creating a new checkpoint", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)setCurrentCheckpointForChannel:(id)a3 checkpoint:(unint64_t)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SKADatabaseManager_setCurrentCheckpointForChannel_checkpoint_databaseContext___block_invoke;
  v13[3] = &unk_27843E580;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v11 = v9;
  v16 = &v18;
  v17 = a4;
  v15 = v11;
  [v11 performBlockAndWait:v13];
  LOBYTE(a4) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return a4;
}

void __80__SKADatabaseManager_setCurrentCheckpointForChannel_checkpoint_databaseContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _existingChannelCheckpointForChannelIdentifier:v3 databaseContext:*(a1 + 48)];

  if (v4)
  {
    [(ChannelCheckpoint *)v4 setCheckpoint:*(a1 + 64)];
    v5 = *(a1 + 48);
    v18 = 0;
    [v5 save:&v18];
    v6 = v18;
    v7 = +[SKADatabaseManager logger];
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __80__SKADatabaseManager_setCurrentCheckpointForChannel_checkpoint_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 40) identifier];
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Updated checkpoint for channel: %@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v9 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) identifier];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "No existing checkpoint for channel: %@. Creating a new checkpoint", buf, 0xCu);
    }

    v4 = [[ChannelCheckpoint alloc] initWithContext:*(a1 + 48)];
    v11 = [*(a1 + 40) identifier];
    [(ChannelCheckpoint *)v4 setChannelID:v11];

    [(ChannelCheckpoint *)v4 setCheckpoint:*(a1 + 64)];
    v12 = *(a1 + 48);
    v17 = 0;
    [v12 save:&v17];
    v6 = v17;
    if (v6)
    {
      v13 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __80__SKADatabaseManager_setCurrentCheckpointForChannel_checkpoint_databaseContext___block_invoke_cold_2();
      }

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_existingChannelCheckpointForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ChannelCheckpoint fetchRequest];
  v8 = [ChannelCheckpoint predicateForChannelIdentifier:v6];

  [v7 setPredicate:v8];
  [v7 setFetchLimit:1];
  v14 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v14];

  v10 = v14;
  if (v10)
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingChannelCheckpointForChannelIdentifier:databaseContext:];
    }
  }

  v12 = [v9 firstObject];

  return v12;
}

- (id)presentDevicesForChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __63__SKADatabaseManager_presentDevicesForChannel_databaseContext___block_invoke;
  v16 = &unk_27843E3A0;
  v17 = self;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v20 = &v21;
  [v9 performBlockAndWait:&v13];
  v10 = objc_alloc(MEMORY[0x277CBEA60]);
  v11 = [v10 initWithArray:{v22[5], v13, v14, v15, v16, v17}];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __63__SKADatabaseManager_presentDevicesForChannel_databaseContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPresentDevicesForChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [objc_alloc(MEMORY[0x277D68118]) initWithCoreDataPresentDevice:*(*(&v9 + 1) + 8 * v6)];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)createOrUpdatePresentDevice:(id)a3 channel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__SKADatabaseManager_createOrUpdatePresentDevice_channel_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v20;
  [v13 performBlockAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __74__SKADatabaseManager_createOrUpdatePresentDevice_channel_databaseContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [*(a1 + 48) deviceIdentifier];
  v5 = [v2 _existingPresentDeviceForChannel:v3 deviceIdentifier:v4 databaseContext:*(a1 + 56)];

  if (!v5)
  {
    v5 = [[PresentDevice alloc] initWithContext:*(a1 + 56)];
  }

  v6 = [*(a1 + 48) handle];
  v7 = [v6 handleString];
  [(PresentDevice *)v5 setHandle:v7];

  v8 = [*(a1 + 48) presencePayload];
  v9 = [v8 payloadData];
  [(PresentDevice *)v5 setPresencePayload:v9];

  v10 = [*(a1 + 48) deviceIdentifier];
  [(PresentDevice *)v5 setDeviceIdentifier:v10];

  v11 = [*(a1 + 48) deviceTokenURI];
  [(PresentDevice *)v5 setDeviceTokenURI:v11];

  v12 = [*(a1 + 48) assertionTime];
  [(PresentDevice *)v5 setAssertionTime:v12];

  -[PresentDevice setIsSelfDevice:](v5, "setIsSelfDevice:", [*(a1 + 48) isSelfDevice]);
  -[PresentDevice setIsSelfHandle:](v5, "setIsSelfHandle:", [*(a1 + 48) isSelfHandle]);
  v13 = [*(a1 + 40) identifier];
  [(PresentDevice *)v5 setChannelID:v13];

  v14 = *(a1 + 56);
  v19 = 0;
  [v14 save:&v19];
  v15 = v19;
  v16 = +[SKADatabaseManager logger];
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __74__SKADatabaseManager_createOrUpdatePresentDevice_channel_databaseContext___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Persisted new present device", v18, 2u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (void)cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke;
  v5[3] = &unk_27843E5A8;
  v6 = v3;
  v4 = v3;
  [v4 performBlock:v5];
}

void __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = +[PresentDevice fetchRequest];
  [v2 setFetchLimit:50];
  v3 = *(a1 + 32);
  v37 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v37];
  v5 = v37;
  if (v5)
  {
    v6 = v5;
    v7 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke_cold_1();
    }
  }

  else
  {
    v25 = v4;
    v26 = v2;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v4;
    v29 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    v6 = 0;
    if (v29)
    {
      v28 = *v34;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          v9 = v6;
          if (*v34 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v11 = +[Channel fetchRequest];
          v12 = MEMORY[0x277CCA920];
          v13 = [v10 channelID];
          v14 = [Channel predicateForChannelIdentifier:v13];
          v40[0] = v14;
          v15 = [Channel predicateForDecommissioned:0];
          v40[1] = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
          v17 = [v12 andPredicateWithSubpredicates:v16];
          [v11 setPredicate:v17];

          [v11 setFetchLimit:1];
          v18 = *(a1 + 32);
          v32 = v9;
          v19 = [v18 executeFetchRequest:v11 error:&v32];
          v6 = v32;

          if (v6)
          {
            v20 = +[SKADatabaseManager logger];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v6;
              _os_log_error_impl(&dword_220099000, v20, OS_LOG_TYPE_ERROR, "Error executing fetch for subscription validation. Error: %@", buf, 0xCu);
            }
          }

          else if (![v19 count])
          {
            v21 = +[SKADatabaseManager logger];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v39 = v10;
              _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Deleting present device: %@", buf, 0xCu);
            }

            [*(a1 + 32) deleteObject:v10];
          }

          objc_autoreleasePoolPop(context);
        }

        v29 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v29);
    }

    v22 = *(a1 + 32);
    v31 = 0;
    [v22 save:&v31];
    v7 = v31;
    if (v7)
    {
      v23 = +[SKADatabaseManager logger];
      v4 = v25;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke_cold_2();
      }

      v2 = v26;
    }

    else
    {
      v4 = v25;
      v2 = v26;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearPresentDevicesForChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SKADatabaseManager_clearPresentDevicesForChannel_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __68__SKADatabaseManager_clearPresentDevicesForChannel_databaseContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPresentDevicesForChannel:*(a1 + 40) databaseContext:*(a1 + 48)];
  if ([v2 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1 + 48) deleteObject:*(*(&v16 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v5);
    }

    v8 = *(a1 + 48);
    v15 = 0;
    [v8 save:&v15];
    v9 = v15;
    v10 = +[SKADatabaseManager logger];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __68__SKADatabaseManager_clearPresentDevicesForChannel_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Deleted existing present devices", buf, 2u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v12 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) identifier];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Could not find existing present devices on channel identifier %@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)deletePresentDevice:(id)a3 channel:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__SKADatabaseManager_deletePresentDevice_channel_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v20;
  [v13 performBlockAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __66__SKADatabaseManager_deletePresentDevice_channel_databaseContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) identifier];
  v5 = [*(a1 + 48) deviceIdentifier];
  v6 = [v2 _existingPresentDeviceForChannel:v4 deviceIdentifier:v5 databaseContext:*(a1 + 56)];

  if (v6)
  {
    [*(a1 + 56) deleteObject:v6];
    v7 = *(a1 + 56);
    v14 = 0;
    [v7 save:&v14];
    v8 = v14;
    v9 = +[SKADatabaseManager logger];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __68__SKADatabaseManager_clearPresentDevicesForChannel_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Deleted existing present device: %@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __66__SKADatabaseManager_deletePresentDevice_channel_databaseContext___block_invoke_cold_2(v3, (a1 + 48));
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_existingPresentDeviceForChannel:(id)a3 deviceIdentifier:(id)a4 databaseContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __88__SKADatabaseManager__existingPresentDeviceForChannel_deviceIdentifier_databaseContext___block_invoke;
  v19 = &unk_27843E5D0;
  v10 = v7;
  v20 = v10;
  v11 = v8;
  v21 = v11;
  v23 = &v24;
  v12 = v9;
  v22 = v12;
  [v12 performBlockAndWait:&v16];
  if ([v25[5] count] >= 2)
  {
    v13 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingPresentDeviceForChannel:deviceIdentifier:databaseContext:];
    }
  }

  v14 = [v25[5] firstObject];

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __88__SKADatabaseManager__existingPresentDeviceForChannel_deviceIdentifier_databaseContext___block_invoke(void *a1)
{
  v2 = +[PresentDevice fetchRequest];
  v3 = [PresentDevice predicateForChannelIdentifier:a1[4] deviceIdentifier:a1[5]];
  [v2 setPredicate:v3];

  v4 = a1[6];
  v10 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v10];
  v6 = v10;
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke_cold_1();
    }
  }
}

- (id)_existingPresentDevicesForChannel:(id)a3 databaseContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PresentDevice fetchRequest];
  v8 = [v6 identifier];

  v9 = [PresentDevice predicateForChannel:v8];
  [v7 setPredicate:v9];

  v14 = 0;
  v10 = [v5 executeFetchRequest:v7 error:&v14];

  v11 = v14;
  if (v11)
  {
    v12 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke_cold_1();
    }
  }

  return v10;
}

- (id)existingPresenceAssertionForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__SKADatabaseManager_existingPresenceAssertionForPresenceIdentifier_isPersonal_databaseContext___block_invoke;
  v14[3] = &unk_27843E3C8;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  v18 = a4;
  v11 = v9;
  v16 = v11;
  v17 = &v19;
  [v11 performBlockAndWait:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __96__SKADatabaseManager_existingPresenceAssertionForPresenceIdentifier_isPersonal_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingPresenceAssertionForPresenceIdentifier:*(a1 + 40) isPersonal:*(a1 + 64) databaseContext:*(a1 + 48)];
  if (v2)
  {
    v6 = v2;
    v3 = [[SKAPresenceAssertion alloc] initWithCoreDataPresenceAssertion:v2];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (BOOL)activePresenceAssertionsExistWithDatabaseContext:(id)a3
{
  v3 = a3;
  v4 = +[PresenceAssertion fetchRequest];
  [v4 setFetchLimit:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SKADatabaseManager_activePresenceAssertionsExistWithDatabaseContext___block_invoke;
  v10[3] = &unk_27843E5F8;
  v13 = &v14;
  v5 = v3;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  [v5 performBlockAndWait:v10];
  v7 = [v15[5] firstObject];
  v8 = v7 != 0;

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __71__SKADatabaseManager_activePresenceAssertionsExistWithDatabaseContext___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__SKADatabaseManager_activePresenceAssertionsExistWithDatabaseContext___block_invoke_cold_1();
    }
  }
}

- (id)createOrUpdatePresenceAssertionForPresenceIdentifier:(id)a3 presenceOptions:(id)a4 assertionOptions:(id)a5 payload:(id)a6 databaseContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __132__SKADatabaseManager_createOrUpdatePresenceAssertionForPresenceIdentifier_presenceOptions_assertionOptions_payload_databaseContext___block_invoke;
  v24[3] = &unk_27843E4E0;
  v24[4] = self;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v16;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  v21 = v15;
  v29 = v21;
  v30 = &v31;
  [v19 performBlockAndWait:v24];
  v22 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v22;
}

void __132__SKADatabaseManager_createOrUpdatePresenceAssertionForPresenceIdentifier_presenceOptions_assertionOptions_payload_databaseContext___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPresenceAssertionForPresenceIdentifier:*(a1 + 40) isPersonal:objc_msgSend(*(a1 + 48) databaseContext:{"isPersonal"), *(a1 + 56)}];
  v3 = +[SKADatabaseManager logger];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 138412290;
      v24 = v2;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Found existing presence assertion, updating: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Could not find existing presence assertion. Creating a new one.", buf, 2u);
    }

    v2 = [[PresenceAssertion alloc] initWithContext:*(a1 + 56)];
  }

  [(PresenceAssertion *)v2 setPresenceIdentifier:*(a1 + 40)];
  -[PresenceAssertion setPushPriority:](v2, "setPushPriority:", [*(a1 + 64) priority]);
  v5 = [*(a1 + 72) payloadData];
  [(PresenceAssertion *)v2 setPayload:v5];

  v6 = [(PresenceAssertion *)v2 options];

  if (!v6)
  {
    v7 = [[PresenceOptions alloc] initWithContext:*(a1 + 56)];
    [(PresenceAssertion *)v2 setOptions:v7];
  }

  v8 = [*(a1 + 48) serviceIdentifier];
  v9 = [(PresenceAssertion *)v2 options];
  [v9 setServiceIdentifier:v8];

  v10 = [*(a1 + 48) isPersonal];
  v11 = [(PresenceAssertion *)v2 options];
  [v11 setIsPersonal:v10];

  v12 = [*(a1 + 48) clientSpecifiedURI];
  v13 = [v12 unprefixedURI];
  v14 = [(PresenceAssertion *)v2 options];
  [v14 setClientSpecifiedURI:v13];

  v15 = *(a1 + 56);
  v22 = 0;
  [v15 save:&v22];
  v16 = v22;
  if (v16)
  {
    v17 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __132__SKADatabaseManager_createOrUpdatePresenceAssertionForPresenceIdentifier_presenceOptions_assertionOptions_payload_databaseContext___block_invoke_cold_1();
    }
  }

  v18 = [[SKAPresenceAssertion alloc] initWithCoreDataPresenceAssertion:v2];
  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)deletePresenceAssertionForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__SKADatabaseManager_deletePresenceAssertionForPresenceIdentifier_isPersonal_databaseContext___block_invoke;
  v13[3] = &unk_27843E3C8;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v17 = a4;
  v11 = v9;
  v15 = v11;
  v16 = &v18;
  [v11 performBlockAndWait:v13];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

void __94__SKADatabaseManager_deletePresenceAssertionForPresenceIdentifier_isPersonal_databaseContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPresenceAssertionForPresenceIdentifier:*(a1 + 40) isPersonal:*(a1 + 64) databaseContext:*(a1 + 48)];
  if (v3)
  {
    v4 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v2;
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Deleting existing presence assertion with presence identifier: %@", buf, 0xCu);
    }

    [*(a1 + 48) deleteObject:v3];
    v6 = *(a1 + 48);
    v11 = 0;
    [v6 save:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __94__SKADatabaseManager_deletePresenceAssertionForPresenceIdentifier_isPersonal_databaseContext___block_invoke_cold_1(v2);
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteAllPresenceAssertionsWithDatabaseContext:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[PresenceAssertion fetchRequest];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SKADatabaseManager_deleteAllPresenceAssertionsWithDatabaseContext___block_invoke;
  v9[3] = &unk_27843E558;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [v5 performBlockAndWait:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __69__SKADatabaseManager_deleteAllPresenceAssertionsWithDatabaseContext___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v26 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v26];
  v5 = v26;
  if (v5)
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__SKADatabaseManager_activePresenceAssertionsExistWithDatabaseContext___block_invoke_cold_1();
    }

LABEL_20:

    goto LABEL_21;
  }

  if ([v4 count])
  {
    v19 = 0;
    v20 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [SKADatabaseManager logger:v19];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 presenceIdentifier];
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Deleting existing presence assertion with presence identifier: %@", buf, 0xCu);
          }

          [*(a1 + 32) deleteObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v9);
    }

    v15 = *(a1 + 32);
    v21 = 0;
    [v15 save:&v21];
    v6 = v21;
    if (v6)
    {
      v16 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __69__SKADatabaseManager_deleteAllPresenceAssertionsWithDatabaseContext___block_invoke_cold_2();
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v5 = v19;
    v4 = v20;
    *(*(*(a1 + 48) + 8) + 24) = v17;
    goto LABEL_20;
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)allExistingPresenceSubscriptionsForDatabaseContext:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __73__SKADatabaseManager_allExistingPresenceSubscriptionsForDatabaseContext___block_invoke;
  v10 = &unk_27843E620;
  v4 = v3;
  v11 = v4;
  v12 = &v13;
  [v4 performBlockAndWait:&v7];
  v5 = [v14[5] copy];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __73__SKADatabaseManager_allExistingPresenceSubscriptionsForDatabaseContext___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[PresenceSubscription fetchRequest];
  v3 = *(a1 + 32);
  v25 = 0;
  v19 = v2;
  v4 = [v3 executeFetchRequest:? error:?];
  v18 = v25;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = [SKAPresenceSubscriptionAssertion alloc];
        v12 = [v9 channelIdentifier];
        v13 = [v12 copy];
        v14 = [v9 presenceIdentifier];
        v15 = [v14 copy];
        v16 = [(SKAPresenceSubscriptionAssertion *)v11 initWithChannelIdentifier:v13 presenceIdentifier:v15];
        [v10 addObject:v16];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)activePresenceSubscriptionForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v4 = [(SKADatabaseManager *)self existingPresenceSubscriptionForChannelIdentifier:a3 databaseContext:a4];
  v5 = v4 != 0;

  return v5;
}

- (id)existingPresenceSubscriptionForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__SKADatabaseManager_existingPresenceSubscriptionForChannelIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E558;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __87__SKADatabaseManager_existingPresenceSubscriptionForChannelIdentifier_databaseContext___block_invoke(void *a1)
{
  v2 = +[PresenceSubscription fetchRequest];
  v3 = [PresenceSubscription predicateForChannelIdentifier:a1[4]];
  [v2 setPredicate:v3];

  [v2 setFetchLimit:1];
  v4 = a1[5];
  v16 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v16];
  v6 = v16;
  v7 = [v5 firstObject];

  if (v7)
  {
    v8 = [SKAPresenceSubscriptionAssertion alloc];
    v9 = [v5 firstObject];
    v10 = [v9 channelIdentifier];
    v11 = [v5 firstObject];
    v12 = [v11 presenceIdentifier];
    v13 = [(SKAPresenceSubscriptionAssertion *)v8 initWithChannelIdentifier:v10 presenceIdentifier:v12];
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (id)_existingPresenceSubscriptionForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SKADatabaseManager__existingPresenceSubscriptionForChannelIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E558;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __88__SKADatabaseManager__existingPresenceSubscriptionForChannelIdentifier_databaseContext___block_invoke(void *a1)
{
  v2 = +[PresenceSubscription fetchRequest];
  v3 = [PresenceSubscription predicateForChannelIdentifier:a1[4]];
  [v2 setPredicate:v3];

  [v2 setFetchLimit:1];
  v4 = a1[5];
  v10 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v10];
  v6 = v10;
  v7 = [v5 firstObject];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)createOrUpdatePresenceSubscriptionForChannelIdentifier:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__SKADatabaseManager_createOrUpdatePresenceSubscriptionForChannelIdentifier_presenceIdentifier_databaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = &v21;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __112__SKADatabaseManager_createOrUpdatePresenceSubscriptionForChannelIdentifier_presenceIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPresenceSubscriptionForChannelIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (!v2)
  {
    v3 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Could not find existing presence subscription for presence identifier: %@, persisting new subscription", buf, 0xCu);
    }

    v2 = [[PresenceSubscription alloc] initWithContext:*(a1 + 48)];
  }

  [(PresenceSubscription *)v2 setPresenceIdentifier:*(a1 + 56)];
  [(PresenceSubscription *)v2 setChannelIdentifier:*(a1 + 40)];
  v5 = *(a1 + 48);
  v11 = 0;
  [v5 save:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __112__SKADatabaseManager_createOrUpdatePresenceSubscriptionForChannelIdentifier_presenceIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [[SKAPresenceSubscriptionAssertion alloc] initWithChannelIdentifier:*(a1 + 40) presenceIdentifier:*(a1 + 56)];
    v9 = *(*(a1 + 64) + 8);
    v7 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deletePresenceSubscriptionsForChannelIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SKADatabaseManager_deletePresenceSubscriptionsForChannelIdentifier_databaseContext___block_invoke;
  v9[3] = &unk_27843E330;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v7 performBlockAndWait:v9];
}

void __86__SKADatabaseManager_deletePresenceSubscriptionsForChannelIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[PresenceSubscription fetchRequest];
  v3 = [PresenceSubscription predicateForChannelIdentifier:*(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v21 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v21];
  v6 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 40) deleteObject:*(*(&v17 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 40);
  v16 = 0;
  [v12 save:&v16];
  v13 = v16;
  if (v13)
  {
    v14 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __86__SKADatabaseManager_deletePresenceSubscriptionsForChannelIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deletePresenceSubscriptionsForPresenceIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SKADatabaseManager_deletePresenceSubscriptionsForPresenceIdentifier_databaseContext___block_invoke;
  v9[3] = &unk_27843E330;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v7 performBlockAndWait:v9];
}

void __87__SKADatabaseManager_deletePresenceSubscriptionsForPresenceIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[PresenceSubscription fetchRequest];
  v3 = [PresenceSubscription predicateForPresenceIdentifier:*(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v21 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v21];
  v6 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 40) deleteObject:*(*(&v17 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 40);
  v16 = 0;
  [v12 save:&v16];
  v13 = v16;
  if (v13)
  {
    v14 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __86__SKADatabaseManager_deletePresenceSubscriptionsForChannelIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteAllPresenceSubscriptionsWithDatabaseContext:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SKADatabaseManager_deleteAllPresenceSubscriptionsWithDatabaseContext___block_invoke;
  v7[3] = &unk_27843E620;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __72__SKADatabaseManager_deleteAllPresenceSubscriptionsWithDatabaseContext___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = +[PresenceSubscription fetchRequest];
  v3 = *(a1 + 32);
  v26 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v26];
  v5 = v26;
  if (v5)
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__SKADatabaseManager_deleteAllPresenceSubscriptionsWithDatabaseContext___block_invoke_cold_1();
    }

LABEL_20:

    goto LABEL_21;
  }

  if ([v4 count])
  {
    v20 = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 presenceIdentifier];
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Deleting existing presence subscription with presence identifier: %@", buf, 0xCu);
          }

          [*(a1 + 32) deleteObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v9);
    }

    v15 = *(a1 + 32);
    v21 = 0;
    [v15 save:&v21];
    v6 = v21;
    if (v6)
    {
      v16 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __72__SKADatabaseManager_deleteAllPresenceSubscriptionsWithDatabaseContext___block_invoke_cold_2();
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v2 = v20;
    *(*(*(a1 + 40) + 8) + 24) = v17;
    v4 = v19;
    goto LABEL_20;
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllPresenceSubscriptionsAndAssertionsIfNecessary
{
  v3 = +[SKASystemMonitor sharedInstance];
  if (([v3 isUnderFirstDataProtectionLock] & 1) == 0 && objc_msgSend(v3, "isFirstProcessLaunchOfBootSession"))
  {
    v4 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Clearing presence assertions and subscriptions as this is our first launch this boot session", v7, 2u);
    }

    v5 = [(SKADatabaseManager *)self newBackgroundContext];
    [(SKADatabaseManager *)self deleteAllPresenceAssertionsWithDatabaseContext:v5];

    v6 = [(SKADatabaseManager *)self newBackgroundContext];
    [(SKADatabaseManager *)self deleteAllPresenceSubscriptionsWithDatabaseContext:v6];
  }
}

- (void)cleanupOldStatusUpdatesForChannelIdentifier:(id)a3 excludingStatusUniqueIdentifier:(id)a4 databaseContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__SKADatabaseManager_cleanupOldStatusUpdatesForChannelIdentifier_excludingStatusUniqueIdentifier_databaseContext___block_invoke;
  v13[3] = &unk_27843E358;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  [v11 performBlockAndWait:v13];
}

void __114__SKADatabaseManager_cleanupOldStatusUpdatesForChannelIdentifier_excludingStatusUniqueIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v2 = +[Status fetchRequest];
  v3 = [Status predicateForChannelIdentifier:*(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [Status sortDescriptorForDateCreatedAscending:0];
  v44[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:20];
  v6 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v43 = v7;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Beginning database cleanup of statuses on channel identifier: %@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  v40 = 0;
  v9 = [v8 executeFetchRequest:v2 error:&v40];
  v10 = v40;
  if (v10)
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __114__SKADatabaseManager_cleanupOldStatusUpdatesForChannelIdentifier_excludingStatusUniqueIdentifier_databaseContext___block_invoke_cold_1();
    }

    goto LABEL_6;
  }

  v13 = [v9 count];
  v11 = +[SKADatabaseManager logger];
  v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v34 = v2;
    if (v14)
    {
      v15 = [v9 count];
      *buf = 134217984;
      v43 = v15;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Fetch request for status cleanup completed with %ld result(s)", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v9;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      v20 = 1;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          if (v20)
          {
            v23 = +[SKADatabaseManager logger];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v22 uniqueIdentifier];
              *buf = 138412290;
              v43 = v24;
              _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Keeping status %@ because it is our most recent status", buf, 0xCu);
            }

LABEL_21:

            goto LABEL_25;
          }

          v25 = *(a1 + 48);
          v26 = [*(*(&v36 + 1) + 8 * i) uniqueIdentifier];
          v27 = [v25 isEqualToString:v26];

          v23 = +[SKADatabaseManager logger];
          v28 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v27)
          {
            if (v28)
            {
              v29 = [v22 uniqueIdentifier];
              *buf = 138412290;
              v43 = v29;
              _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Keeping status %@ because it is excluded from this cleanup request", buf, 0xCu);
            }

            goto LABEL_21;
          }

          if (v28)
          {
            v30 = [v22 uniqueIdentifier];
            *buf = 138412290;
            v43 = v30;
            _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Deleting status %@ as it is no longer the most recent", buf, 0xCu);
          }

          [*(a1 + 40) deleteObject:v22];
LABEL_25:
          v20 = 0;
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        v20 = 0;
      }

      while (v18);
    }

    v31 = *(a1 + 40);
    v35 = 0;
    [v31 save:&v35];
    v11 = v35;
    if (v11)
    {
      v32 = +[SKADatabaseManager logger];
      v2 = v34;
      v10 = 0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __114__SKADatabaseManager_cleanupOldStatusUpdatesForChannelIdentifier_excludingStatusUniqueIdentifier_databaseContext___block_invoke_cold_2();
      }

      v9 = v33;
    }

    else
    {
      v9 = v33;
      v2 = v34;
      v10 = 0;
    }
  }

  else if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Fetch request for cleanup of statuses found no matches.", buf, 2u);
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_existingPendingPublishRequestForUniqueIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PendingPublishRequest fetchRequest];
  v8 = [PendingPublishRequest predicateForStatusUniqueIdentifier:v6];

  [v7 setPredicate:v8];
  [v7 setFetchLimit:1];
  v14 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v14];

  v10 = v14;
  if (v10)
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingPendingPublishRequestForUniqueIdentifier:databaseContext:];
    }
  }

  v12 = [v9 firstObject];

  return v12;
}

- (id)_existingPendingPublishRequestsForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PendingPublishRequest fetchRequest];
  v8 = [PendingPublishRequest predicateForStatusTypeIdentifier:v6];

  [v7 setPredicate:v8];
  v13 = 0;
  v9 = [v5 executeFetchRequest:v7 error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingPendingPublishRequestForUniqueIdentifier:databaseContext:];
    }
  }

  return v9;
}

- (id)_existingPendingPublishRequestsWithDatabaseContext:(id)a3
{
  v3 = a3;
  v4 = +[PendingPublishRequest fetchRequest];
  v9 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v9];

  v6 = v9;
  if (v6)
  {
    v7 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingPendingPublishRequestForUniqueIdentifier:databaseContext:];
    }
  }

  return v5;
}

- (id)createPendingPublishRequestWithUniqueIdentifier:(id)a3 dateCreated:(id)a4 payloadData:(id)a5 statusTypeIdentifier:(id)a6 databaseContext:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __131__SKADatabaseManager_createPendingPublishRequestWithUniqueIdentifier_dateCreated_payloadData_statusTypeIdentifier_databaseContext___block_invoke;
  v23[3] = &unk_27843E508;
  v16 = v15;
  v24 = v16;
  v17 = v12;
  v25 = v17;
  v18 = v11;
  v26 = v18;
  v19 = v13;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  v29 = &v30;
  [v16 performBlockAndWait:v23];
  v21 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v21;
}

void __131__SKADatabaseManager_createPendingPublishRequestWithUniqueIdentifier_dateCreated_payloadData_statusTypeIdentifier_databaseContext___block_invoke(void *a1)
{
  v2 = [[PendingPublishRequest alloc] initWithContext:a1[4]];
  [(PendingPublishRequest *)v2 setDateCreated:a1[5]];
  [(PendingPublishRequest *)v2 setStatusUniqueIdentifier:a1[6]];
  [(PendingPublishRequest *)v2 setPayloadData:a1[7]];
  [(PendingPublishRequest *)v2 setStatusTypeIdentifier:a1[8]];
  [(PendingPublishRequest *)v2 setRetryCount:0];
  v3 = a1[4];
  v9 = 0;
  [v3 save:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __131__SKADatabaseManager_createPendingPublishRequestWithUniqueIdentifier_dateCreated_payloadData_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v6 = [[SKADatabasePendingPublishRequest alloc] initWithCoreDataPendingPublishRequest:v2];
  v7 = *(a1[9] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)existingPendingPublishRequestForUniqueIdentifier:(id)a3 withDatabaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__SKADatabaseManager_existingPendingPublishRequestForUniqueIdentifier_withDatabaseContext___block_invoke;
  v12[3] = &unk_27843E3A0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v9 performBlockAndWait:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __91__SKADatabaseManager_existingPendingPublishRequestForUniqueIdentifier_withDatabaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingPendingPublishRequestForUniqueIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v2)
  {
    v6 = v2;
    v3 = [[SKADatabasePendingPublishRequest alloc] initWithCoreDataPendingPublishRequest:v2];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (id)existingPendingPublishRequestsForStatusTypeIdentifier:(id)a3 withDatabaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SKADatabaseManager_existingPendingPublishRequestsForStatusTypeIdentifier_withDatabaseContext___block_invoke;
  v12[3] = &unk_27843E3A0;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v9 performBlockAndWait:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __96__SKADatabaseManager_existingPendingPublishRequestsForStatusTypeIdentifier_withDatabaseContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPendingPublishRequestsForStatusTypeIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [[SKADatabasePendingPublishRequest alloc] initWithCoreDataPendingPublishRequest:v7];
        [*(a1 + 48) refreshObject:v7 mergeChanges:0];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)existingPendingPublishRequestsWithDatabaseContext:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__SKADatabaseManager_existingPendingPublishRequestsWithDatabaseContext___block_invoke;
  v8[3] = &unk_27843E558;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __72__SKADatabaseManager_existingPendingPublishRequestsWithDatabaseContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingPendingPublishRequestsWithDatabaseContext:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [[SKADatabasePendingPublishRequest alloc] initWithCoreDataPendingPublishRequest:v7];
        [*(a1 + 40) refreshObject:v7 mergeChanges:0];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)deletePendingPublishRequestWithWithUniqueIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPendingPublishRequestForUniqueIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  if (v3)
  {
    [*(a1 + 48) deleteObject:v3];
    v4 = *(a1 + 48);
    v11 = 0;
    [v4 save:&v11];
    v5 = v11;
    v6 = +[SKADatabaseManager logger];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v2;
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Deleted existing pending publish request with identifier: %@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v8 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke_cold_2(v2);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)incrementPendingPublishRequestRetryCountWithUniqueIdentifier:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__SKADatabaseManager_incrementPendingPublishRequestRetryCountWithUniqueIdentifier_databaseContext___block_invoke;
  v11[3] = &unk_27843E3A0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __99__SKADatabaseManager_incrementPendingPublishRequestRetryCountWithUniqueIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingPendingPublishRequestForUniqueIdentifier:*(a1 + 40) databaseContext:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    [v3 setRetryCount:{objc_msgSend(v3, "retryCount") + 1}];
    v5 = *(a1 + 48);
    v12 = 0;
    [v5 save:&v12];
    v6 = v12;
    v7 = +[SKADatabaseManager logger];
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __99__SKADatabaseManager_incrementPendingPublishRequestRetryCountWithUniqueIdentifier_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v2;
        *buf = 138412290;
        v14 = v10;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Incremented pending publish request rc with identifier: %@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v9 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke_cold_2(v2);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)createRemovedUserWithHandle:(id)a3 dateRemoved:(id)a4 statusTypeIdentifier:(id)a5 databaseContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_statusTypeIdentifier_databaseContext___block_invoke;
  v19[3] = &unk_27843E3F0;
  v13 = v12;
  v20 = v13;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v9;
  v23 = v16;
  v24 = &v25;
  [v13 performBlockAndWait:v19];
  v17 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __99__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_statusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [[RemovedUser alloc] initWithContext:*(a1 + 32)];
  [(RemovedUser *)v2 setDateRemoved:*(a1 + 40)];
  [(RemovedUser *)v2 setStatusTypeIdentifier:*(a1 + 48)];
  v3 = [*(a1 + 56) normalizedHandleString];
  [(RemovedUser *)v2 setRemovedHandle:v3];

  v4 = *(a1 + 32);
  v10 = 0;
  [v4 save:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v7 = [[SKADatabaseRemovedUser alloc] initWithCoreDataRemovedUser:v2];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)existingRemovedUserWithHandle:(id)a3 statusTypeIdentifier:(id)a4 withDatabaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93__SKADatabaseManager_existingRemovedUserWithHandle_statusTypeIdentifier_withDatabaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __93__SKADatabaseManager_existingRemovedUserWithHandle_statusTypeIdentifier_withDatabaseContext___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _existingRemovedUsersForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  v2 = [v6 firstObject];
  if (v2)
  {
    v3 = [[SKADatabaseRemovedUser alloc] initWithCoreDataRemovedUser:v2];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (BOOL)deleteRemovedUserWithHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v20;
  [v13 performBlockAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingRemovedUsersForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  if ([v3 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 56) deleteObject:*(*(&v17 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v9 = *(a1 + 56);
    v16 = 0;
    [v9 save:&v16];
    v10 = v16;
    v11 = +[SKADatabaseManager logger];
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v2;
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Deleted existing removed user with handle: %@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    v13 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_2(v2);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_existingRemovedUsersForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[RemovedUser fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [RemovedUser predicateForHandle:v9];

  v22[0] = v12;
  v13 = [RemovedUser predicateForStatusTypeIdentifier:v8];

  v22[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  [v10 setFetchLimit:1];
  v21 = 0;
  v16 = [v7 executeFetchRequest:v10 error:&v21];

  v17 = v21;
  if (v17)
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingRemovedUsersForHandle:statusTypeIdentifier:databaseContext:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)createRemovedUserWithHandle:(id)a3 dateRemoved:(id)a4 presenceIdentifier:(id)a5 databaseContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_presenceIdentifier_databaseContext___block_invoke;
  v19[3] = &unk_27843E3F0;
  v13 = v12;
  v20 = v13;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v9;
  v23 = v16;
  v24 = &v25;
  [v13 performBlockAndWait:v19];
  v17 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __97__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_presenceIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [[RemovedUser alloc] initWithContext:*(a1 + 32)];
  [(RemovedUser *)v2 setDateRemoved:*(a1 + 40)];
  [(RemovedUser *)v2 setPresenceIdentifier:*(a1 + 48)];
  v3 = [*(a1 + 56) normalizedHandleString];
  [(RemovedUser *)v2 setRemovedHandle:v3];

  v4 = *(a1 + 32);
  v10 = 0;
  [v4 save:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
    }
  }

  v7 = [[SKADatabaseRemovedUser alloc] initWithCoreDataRemovedUser:v2];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)existingRemovedUserWithHandle:(id)a3 presenceIdentifier:(id)a4 withDatabaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__SKADatabaseManager_existingRemovedUserWithHandle_presenceIdentifier_withDatabaseContext___block_invoke;
  v16[3] = &unk_27843E3F0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __91__SKADatabaseManager_existingRemovedUserWithHandle_presenceIdentifier_withDatabaseContext___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _existingRemovedUsersForHandle:*(a1 + 40) presenceIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  v2 = [v6 firstObject];
  if (v2)
  {
    v3 = [[SKADatabaseRemovedUser alloc] initWithCoreDataRemovedUser:v2];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (BOOL)deleteRemovedUserWithHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__SKADatabaseManager_deleteRemovedUserWithHandle_presenceIdentifier_databaseContext___block_invoke;
  v15[3] = &unk_27843E3F0;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v20;
  [v13 performBlockAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __85__SKADatabaseManager_deleteRemovedUserWithHandle_presenceIdentifier_databaseContext___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _existingRemovedUsersForHandle:*(a1 + 40) presenceIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  if ([v3 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 56) deleteObject:*(*(&v17 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v9 = *(a1 + 56);
    v16 = 0;
    [v9 save:&v16];
    v10 = v16;
    v11 = +[SKADatabaseManager logger];
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v2;
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Deleted existing removed user with handle: %@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    v13 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_2(v2);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_existingRemovedUsersForHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[RemovedUser fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [RemovedUser predicateForHandle:v9];

  v22[0] = v12;
  v13 = [RemovedUser predicateForPresenceIdentifier:v8];

  v22[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  [v10 setFetchLimit:1];
  v21 = 0;
  v16 = [v7 executeFetchRequest:v10 error:&v21];

  v17 = v21;
  if (v17)
  {
    v18 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingRemovedUsersForHandle:statusTypeIdentifier:databaseContext:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_existingReceivedInvitationsForHandle:(id)a3 presenceIdentifier:(id)a4 databaseContext:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ReceivedInvitation fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [ReceivedInvitation predicateForSenderHandle:v7];
  v37[0] = v12;
  v13 = [ReceivedInvitation predicateForPresenceIdentifier:v8];
  v37[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  v16 = [ReceivedInvitation sortDescriptorForDateInvitationCreatedOrderedAscending:0];
  v36 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v10 setSortDescriptors:v17];

  [v10 setFetchLimit:50];
  v18 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v7 handleString];
    *buf = 138412546;
    v33 = v19;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Beginning fetch request for ReceivedInvitation from handle %@ presenceIdentifier: %@", buf, 0x16u);
  }

  v31 = 0;
  v20 = [v9 executeFetchRequest:v10 error:&v31];

  v21 = v31;
  if (v21)
  {
    v22 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingReceivedInvitationsForHandle:presenceIdentifier:databaseContext:];
    }
  }

  else
  {
    v23 = [v20 count];
    v22 = +[SKADatabaseManager logger];
    v24 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = [v20 count];
      *buf = 134217984;
      v33 = v25;
      v26 = "Fetch request for ReceivedInvitation by handle completed with %ld result(s)";
      v27 = v22;
      v28 = 12;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_12;
      }

      *buf = 0;
      v26 = "Fetch request for ReceivedInvitation by handle found no match.";
      v27 = v22;
      v28 = 2;
    }

    _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
  }

LABEL_12:

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_existingReceivedInvitationsForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ReceivedInvitation fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [ReceivedInvitation predicateForSenderHandle:v7];
  v37[0] = v12;
  v13 = [ReceivedInvitation predicateForStatusTypeIdentifier:v8];
  v37[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  v16 = [ReceivedInvitation sortDescriptorForDateInvitationCreatedOrderedAscending:0];
  v36 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v10 setSortDescriptors:v17];

  [v10 setFetchLimit:50];
  v18 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v7 handleString];
    *buf = 138412546;
    v33 = v19;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Beginning fetch request for ReceivedInvitation from handle %@ statusTypeIdentifier: %@", buf, 0x16u);
  }

  v31 = 0;
  v20 = [v9 executeFetchRequest:v10 error:&v31];

  v21 = v31;
  if (v21)
  {
    v22 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingReceivedInvitationsForHandle:presenceIdentifier:databaseContext:];
    }
  }

  else
  {
    v23 = [v20 count];
    v22 = +[SKADatabaseManager logger];
    v24 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = [v20 count];
      *buf = 134217984;
      v33 = v25;
      v26 = "Fetch request for ReceivedInvitation by handle completed with %ld result(s)";
      v27 = v22;
      v28 = 12;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_12;
      }

      *buf = 0;
      v26 = "Fetch request for ReceivedInvitation by handle found no match.";
      v27 = v22;
      v28 = 2;
    }

    _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
  }

LABEL_12:

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)createReceivedInvitationForChannel:(id)a3 senderHandle:(id)a4 invitedHandle:(id)a5 invitationIdentifier:(id)a6 dateInvitationCreated:(id)a7 incomingRatchetState:(id)a8 presenceIdentifier:(id)a9 channelToken:(id)a10 serverKey:(id)a11 peerKey:(id)a12 invitationPayload:(id)a13 databaseContext:(id)a14
{
  v36 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v38 = a7;
  v39 = a8;
  v45 = a9;
  v40 = a10;
  v43 = a11;
  v44 = a12;
  v22 = a13;
  v23 = a14;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy_;
  v65 = __Block_byref_object_dispose_;
  v66 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __232__SKADatabaseManager_createReceivedInvitationForChannel_senderHandle_invitedHandle_invitationIdentifier_dateInvitationCreated_incomingRatchetState_presenceIdentifier_channelToken_serverKey_peerKey_invitationPayload_databaseContext___block_invoke;
  v46[3] = &unk_27843E648;
  v37 = v36;
  v47 = v37;
  v48 = self;
  v24 = v23;
  v49 = v24;
  v42 = v19;
  v50 = v42;
  v35 = v20;
  v51 = v35;
  v25 = v21;
  v52 = v25;
  v26 = v38;
  v53 = v26;
  v27 = v39;
  v54 = v27;
  v28 = v22;
  v55 = v28;
  v29 = v40;
  v56 = v29;
  v30 = v45;
  v57 = v30;
  v31 = v43;
  v58 = v31;
  v32 = v44;
  v59 = v32;
  v60 = &v61;
  [v24 performBlockAndWait:v46];
  v33 = v62[5];

  _Block_object_dispose(&v61, 8);

  return v33;
}

void __232__SKADatabaseManager_createReceivedInvitationForChannel_senderHandle_invitedHandle_invitationIdentifier_dateInvitationCreated_incomingRatchetState_presenceIdentifier_channelToken_serverKey_peerKey_invitationPayload_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) _existingChannelsForDatabaseChannel:*(a1 + 32) databaseContext:*(a1 + 48)];
  if (![v3 count])
  {
    v4 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __232__SKADatabaseManager_createReceivedInvitationForChannel_senderHandle_invitedHandle_invitationIdentifier_dateInvitationCreated_incomingRatchetState_presenceIdentifier_channelToken_serverKey_peerKey_invitationPayload_databaseContext___block_invoke_cold_1();
    }
  }

  v5 = [v3 firstObject];
  v6 = [*(a1 + 56) normalizedHandleString];
  v7 = [*(a1 + 64) normalizedHandleString];
  v8 = [*(a1 + 32) statusType];
  v9 = [[ReceivedInvitation alloc] initWithContext:*(a1 + 48)];
  [(ReceivedInvitation *)v9 setSenderHandle:v6];
  [(ReceivedInvitation *)v9 setInvitedHandle:v7];
  [(ReceivedInvitation *)v9 setStatusTypeIdentifier:v8];
  [(ReceivedInvitation *)v9 setInvitationIdentifier:*(a1 + 72)];
  [(ReceivedInvitation *)v9 setDateInvitationCreated:*(a1 + 80)];
  [(ReceivedInvitation *)v9 setIncomingRatchetState:*(a1 + 88)];
  [(ReceivedInvitation *)v9 setInvitationPayload:*(a1 + 96)];
  [(ReceivedInvitation *)v9 setChannelToken:*(a1 + 104)];
  [(ReceivedInvitation *)v9 setPresenceIdentifier:*(a1 + 112)];
  [(ReceivedInvitation *)v9 setServerKey:*(a1 + 120)];
  [(ReceivedInvitation *)v9 setPeerKey:*(a1 + 128)];
  [v5 addReceivedInvitationsObject:v9];
  v10 = *(a1 + 48);
  v16 = 0;
  [v10 save:&v16];
  v11 = v16;
  if (v11)
  {
    v12 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __232__SKADatabaseManager_createReceivedInvitationForChannel_senderHandle_invitedHandle_invitationIdentifier_dateInvitationCreated_incomingRatchetState_presenceIdentifier_channelToken_serverKey_peerKey_invitationPayload_databaseContext___block_invoke_cold_2();
    }
  }

  v13 = [[SKADatabaseReceivedInvitation alloc] initWithCoreDataReceivedInvitation:v9];
  v14 = *(*(a1 + 136) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)_existingReceivedInvitationsForChannelIdentifier:(id)a3 sortedByDateReceived:(BOOL)a4 databaseContect:(id)a5
{
  v6 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v32 = a5;
  v9 = [(SKADatabaseManager *)self _existingChannelsForChannelIdentifier:v8 databaseContext:?];
  if ([v9 count])
  {
    v29 = v6;
    v31 = v8;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v16 receivedInvitations];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v34;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v34 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [v10 addObject:*(*(&v33 + 1) + 8 * j)];
              }

              v19 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v19);
          }

          [v32 refreshObject:v16 mergeChanges:0];
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    if (v29)
    {
      v22 = MEMORY[0x277CCAC98];
      v23 = +[ReceivedInvitation dateInvitationCreatedKeyPath];
      v24 = [v22 sortDescriptorWithKey:v23 ascending:0];

      v41 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v26 = [v10 sortedArrayUsingDescriptors:v25];
    }

    else
    {
      v26 = [v10 copy];
    }

    v9 = v30;
    v8 = v31;
  }

  else
  {
    v10 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKADatabaseManager _existingReceivedInvitationsForChannelIdentifier:sortedByDateReceived:databaseContect:];
    }

    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)receivedInvitationsForChannel:(id)a3 databaseContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__SKADatabaseManager_receivedInvitationsForChannel_databaseContext___block_invoke;
  v17 = &unk_27843E490;
  v18 = v6;
  v19 = self;
  v20 = v7;
  v21 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [v10 performBlockAndWait:&v14];
  v12 = [v9 copy];

  return v12;
}

void __68__SKADatabaseManager_receivedInvitationsForChannel_databaseContext___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] identifier];
  v3 = [a1[5] _existingReceivedInvitationsForChannelIdentifier:v2 sortedByDateReceived:1 databaseContect:a1[6]];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [[SKADatabaseReceivedInvitation alloc] initWithCoreDataReceivedInvitation:v8];
        [a1[6] refreshObject:v8 mergeChanges:0];
        if (v9)
        {
          [a1[7] addObject:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)receivedInvitationsForPresenceIdentifier:(id)a3 isPersonal:(BOOL)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__SKADatabaseManager_receivedInvitationsForPresenceIdentifier_isPersonal_databaseContext___block_invoke;
  v16[3] = &unk_27843E670;
  v16[4] = self;
  v17 = v8;
  v20 = a4;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [v12 performBlockAndWait:v16];
  v14 = [v11 copy];

  return v14;
}

void __90__SKADatabaseManager_receivedInvitationsForPresenceIdentifier_isPersonal_databaseContext___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _existingChannelsForPresenceIdentifier:*(a1 + 40) isPersonal:*(a1 + 64) databaseContext:*(a1 + 48)];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v13 = *v20;
    do
    {
      v2 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [*(*(&v19 + 1) + 8 * v2) identifier];
        v4 = [*(a1 + 32) _existingReceivedInvitationsForChannelIdentifier:v3 sortedByDateReceived:1 databaseContect:*(a1 + 48)];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v16;
          do
          {
            v8 = 0;
            do
            {
              if (*v16 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v15 + 1) + 8 * v8);
              v10 = [[SKADatabaseReceivedInvitation alloc] initWithCoreDataReceivedInvitation:v9];
              [*(a1 + 48) refreshObject:v9 mergeChanges:0];
              if (v10)
              {
                [*(a1 + 56) addObject:v10];
              }

              ++v8;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v6);
        }

        ++v2;
      }

      while (v2 != v14);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cleanupOldReceivedInvitationsForChannelIdentifier:(id)a3 excludingInvitation:(id)a4 databaseContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__SKADatabaseManager_cleanupOldReceivedInvitationsForChannelIdentifier_excludingInvitation_databaseContext___block_invoke;
  v14[3] = &unk_27843E490;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  [v12 performBlockAndWait:v14];
}

void __108__SKADatabaseManager_cleanupOldReceivedInvitationsForChannelIdentifier_excludingInvitation_databaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingReceivedInvitationsForChannelIdentifier:*(a1 + 40) sortedByDateReceived:1 databaseContect:*(a1 + 48)];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __108__SKADatabaseManager_cleanupOldReceivedInvitationsForChannelIdentifier_excludingInvitation_databaseContext___block_invoke_2;
  v9[3] = &unk_27843E698;
  v10 = *(a1 + 56);
  v4 = v3;
  v11 = v4;
  v12 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v9];
  v5 = *(a1 + 48);
  v8 = 0;
  [v5 save:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __108__SKADatabaseManager_cleanupOldReceivedInvitationsForChannelIdentifier_excludingInvitation_databaseContext___block_invoke_cold_1();
    }
  }
}

void __108__SKADatabaseManager_cleanupOldReceivedInvitationsForChannelIdentifier_excludingInvitation_databaseContext___block_invoke_2(id *a1, void *a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 senderHandle];
  if (a3 >= 5)
  {
    v7 = [v5 invitationIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = [a1[4] invitationIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = [v5 invitationIdentifier];
        v12 = [a1[4] invitationIdentifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    if (![v6 length] || objc_msgSend(a1[5], "containsObject:", v6))
    {
      v14 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 invitationIdentifier];
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Deleting invitation %@ as it is no longer the most recent", &v17, 0xCu);
      }

      [a1[6] deleteObject:v5];
    }
  }

LABEL_12:
  if ([v6 length])
  {
    [a1[5] addObject:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cleanupDecommissionedChannelsWithDatabaseContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SKADatabaseManager_cleanupDecommissionedChannelsWithDatabaseContext___block_invoke;
  v6[3] = &unk_27843E330;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performBlock:v6];
}

void __71__SKADatabaseManager_cleanupDecommissionedChannelsWithDatabaseContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingDecommissionedChannelsWithDatabaseContext:*(a1 + 40)];
  if ([v2 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SKADatabaseManager_cleanupDecommissionedChannelsWithDatabaseContext___block_invoke_2;
    v9[3] = &unk_27843E6C0;
    v10 = *(a1 + 40);
    [v2 enumerateObjectsUsingBlock:v9];
    v3 = *(a1 + 40);
    v8 = 0;
    [v3 save:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = +[SKADatabaseManager logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __71__SKADatabaseManager_cleanupDecommissionedChannelsWithDatabaseContext___block_invoke_cold_1();
      }
    }

    v6 = v10;
  }

  else
  {
    v6 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "No decomissioned channel to clean up", v7, 2u);
    }
  }
}

void __71__SKADatabaseManager_cleanupDecommissionedChannelsWithDatabaseContext___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = +[SKADatabaseManager logger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3 < 6)
  {
    if (v7)
    {
      v9 = [v5 identifier];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Not deleting channel %@ as it is in our most recent decommissioned channels", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = [v5 identifier];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Deleting channel %@ as it is decommissioned and not recent", &v11, 0xCu);
    }

    [*(a1 + 32) deleteObject:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cleanupOldChannelsForHandle:(id)a3 statusTypeIdentifier:(id)a4 databaseContext:(id)a5
{
  v5 = [SKADatabaseManager logger:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Channel cleanup is disabled.", v6, 2u);
  }
}

- (void)deviceToDeviceEncryptedDatabaseCapableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SKADatabaseManager *)self databaseProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SKADatabaseManager_deviceToDeviceEncryptedDatabaseCapableWithCompletion___block_invoke;
  v7[3] = &unk_27843DD10;
  v8 = v4;
  v6 = v4;
  [v5 deviceToDeviceEncryptedDatabaseCapableWithCompletion:v7];
}

- (id)allPublishedLocalStatusesInDatabaseContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SKADatabaseManager_allPublishedLocalStatusesInDatabaseContext_error___block_invoke;
  v10[3] = &unk_27843E6E8;
  v6 = v5;
  v11 = v6;
  v12 = &v14;
  v13 = &v20;
  [v6 performBlockAndWait:v10];
  v7 = v21[5];
  if (v7)
  {
    v8 = v7;
  }

  else if (a4)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __71__SKADatabaseManager_allPublishedLocalStatusesInDatabaseContext_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = +[PublishedLocalStatus fetchRequest];
  v3 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Beginning fetch request for all published local statuses", buf, 2u);
  }

  v4 = *(a1 + 32);
  v23 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v23];
  v6 = v23;
  v7 = v23;
  v8 = +[SKADatabaseManager logger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__SKADatabaseManager_allPublishedLocalStatusesInDatabaseContext_error___block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Fetch request for all published local statuses completed", buf, 2u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          [*(a1 + 32) refreshObject:v16 mergeChanges:{0, v19}];
          v17 = [[SKADatabasePublishedLocalStatus alloc] initWithCoreDataPublishedLocalStatus:v16];
          [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)createOrUpdatePublishedLocalStatuses:(id)a3 databaseContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__SKADatabaseManager_createOrUpdatePublishedLocalStatuses_databaseContext_error___block_invoke;
  v13[3] = &unk_27843E710;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v24;
  v17 = &v18;
  [v10 performBlockAndWait:v13];
  v11 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __81__SKADatabaseManager_createOrUpdatePublishedLocalStatuses_databaseContext_error___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v63;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v62 + 1) + 8 * i) identifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v5);
  }

  v9 = +[PublishedLocalStatus fetchRequest];
  v10 = [PublishedLocalStatus predicateForPublishedLocalStatusIdentifiers:v2];
  [v9 setPredicate:v10];

  v11 = *(a1 + 40);
  v61 = 0;
  v12 = [v11 executeFetchRequest:v9 error:&v61];
  v13 = v61;
  v14 = v61;
  v15 = v14;
  if (v12)
  {
    v48 = v14;
    v50 = v9;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v49 = v12;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v58;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v58 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v57 + 1) + 8 * j);
          v23 = [v22 identifier];
          [v16 setObject:v22 forKeyedSubscript:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v19);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = *(a1 + 32);
    v25 = [v24 countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v25)
    {
      v26 = v25;
      v51 = a1;
      v27 = *v54;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v53 + 1) + 8 * k);
          v30 = [v29 identifier];
          v31 = [v16 objectForKeyedSubscript:v30];

          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = [[PublishedLocalStatus alloc] initWithContext:*(v51 + 40)];
          }

          v33 = v32;
          v34 = [v29 creationDate];
          [(PublishedLocalStatus *)v33 setCreationDate:v34];

          v35 = [v29 keyDomain];
          [(PublishedLocalStatus *)v33 setKeyDomain:v35];

          v36 = [v29 identifier];
          [(PublishedLocalStatus *)v33 setIdentifier:v36];

          v37 = [v29 keyName];
          [(PublishedLocalStatus *)v33 setKeyName:v37];

          v38 = [v29 modificationDate];
          [(PublishedLocalStatus *)v33 setModificationDate:v38];

          v39 = [v29 payload];
          [(PublishedLocalStatus *)v33 setPayload:v39];

          -[PublishedLocalStatus setTargetDevicesFlags:](v33, "setTargetDevicesFlags:", [v29 targetDevicesFlags]);
        }

        v26 = [v24 countByEnumeratingWithState:&v53 objects:v68 count:16];
      }

      while (v26);

      v40 = *(v51 + 40);
      v52 = 0;
      v41 = [v40 save:&v52];
      v42 = v52;
      v43 = v52;
      v44 = +[SKADatabaseManager logger];
      v45 = v44;
      if (v41)
      {
        v12 = v49;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v51 + 32), "count")}];
          *buf = 138412290;
          v67 = v46;
          _os_log_impl(&dword_220099000, v45, OS_LOG_TYPE_DEFAULT, "createOrUpdatePublishedLocalStatuses saved {statuses.count: %@}", buf, 0xCu);
        }

        *(*(*(v51 + 48) + 8) + 24) = 1;
      }

      else
      {
        v12 = v49;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          __81__SKADatabaseManager_createOrUpdatePublishedLocalStatuses_databaseContext_error___block_invoke_cold_1();
        }

        *(*(*(v51 + 48) + 8) + 24) = 0;
        objc_storeStrong((*(*(v51 + 56) + 8) + 40), v42);
      }

      v9 = v50;
    }

    else
    {

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v12 = v49;
      v9 = v50;
    }

    v15 = v48;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
    v16 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __81__SKADatabaseManager_createOrUpdatePublishedLocalStatuses_databaseContext_error___block_invoke_cold_2();
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)allPublishedLocalStatusDevicesInDatabaseContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__SKADatabaseManager_allPublishedLocalStatusDevicesInDatabaseContext_error___block_invoke;
  v10[3] = &unk_27843E6E8;
  v6 = v5;
  v11 = v6;
  v12 = &v14;
  v13 = &v20;
  [v6 performBlockAndWait:v10];
  v7 = v21[5];
  if (v7)
  {
    v8 = v7;
  }

  else if (a4)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __76__SKADatabaseManager_allPublishedLocalStatusDevicesInDatabaseContext_error___block_invoke(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = +[PublishedLocalStatusDevice fetchRequest];
  v3 = a1[4];
  v24 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v24];
  v5 = v24;
  v6 = v24;
  v7 = +[SKADatabaseManager logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__SKADatabaseManager_allPublishedLocalStatusDevicesInDatabaseContext_error___block_invoke_cold_1();
    }

    objc_storeStrong((*(a1[5] + 8) + 40), v5);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "allPublishedLocalStatusDevicesInDatabaseContext fetch success {devices.count: %@}", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v4;
    v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = [SKADatabasePublishedLocalStatusDevice alloc];
          v18 = [(SKADatabasePublishedLocalStatusDevice *)v17 initWithCoreDataPublishedLocalStatusDevice:v16, v20];
          [*(*(a1[6] + 8) + 40) addObject:v18];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)createOrUpdatePublishedLocalStatusDevices:(id)a3 databaseContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__SKADatabaseManager_createOrUpdatePublishedLocalStatusDevices_databaseContext_error___block_invoke;
  v13[3] = &unk_27843E710;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v24;
  v17 = &v18;
  [v10 performBlockAndWait:v13];
  v11 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __86__SKADatabaseManager_createOrUpdatePublishedLocalStatusDevices_databaseContext_error___block_invoke(uint64_t a1)
{
  v147 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v133 objects:v146 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v134;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v134 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v133 + 1) + 8 * i) idsIdentifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v133 objects:v146 count:16];
    }

    while (v5);
  }

  v9 = +[PublishedLocalStatusDevice fetchRequest];
  v10 = [PublishedLocalStatusDevice predicateForPublishedLocalStatusDeviceIdentifiers:v2];
  [v9 setPredicate:v10];

  v11 = *(a1 + 40);
  v132 = 0;
  v88 = v9;
  v12 = [v11 executeFetchRequest:v9 error:&v132];
  v13 = v132;
  v87 = v132;
  if (v12)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v86 = v12;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v128 objects:v145 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v129;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v129 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v128 + 1) + 8 * j);
          v21 = [v20 idsIdentifier];
          [v14 setObject:v20 forKeyedSubscript:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v128 objects:v145 count:16];
      }

      while (v17);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v22 = *(a1 + 32);
    v94 = [v22 countByEnumeratingWithState:&v124 objects:v144 count:16];
    if (!v94)
    {

      *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_83:
      v9 = v88;
      v12 = v86;
      goto LABEL_84;
    }

    v92 = *v125;
    v93 = v22;
    v90 = a1;
    v91 = v2;
    v89 = v14;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v125 != v92)
        {
          objc_enumerationMutation(v22);
        }

        v97 = v23;
        v101 = *(*(&v124 + 1) + 8 * v23);
        v24 = [v101 idsIdentifier];
        v25 = [v14 objectForKeyedSubscript:v24];

        v100 = v25;
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = [[PublishedLocalStatusDevice alloc] initWithContext:*(a1 + 40)];
        }

        v27 = v26;
        v28 = [v101 idsIdentifier];
        [(PublishedLocalStatusDevice *)v27 setIdsIdentifier:v28];

        v99 = v27;
        -[PublishedLocalStatusDevice setSource:](v27, "setSource:", [v101 discoverySource]);
        v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v30 = [v101 pendingStatuses];
        v31 = [v30 countByEnumeratingWithState:&v120 objects:v143 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v121;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v121 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = [*(*(&v120 + 1) + 8 * k) identifier];
              [v29 addObject:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v120 objects:v143 count:16];
          }

          while (v32);
        }

        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v36 = [v101 deliveredStatuses];
        v37 = [v36 countByEnumeratingWithState:&v116 objects:v142 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v117;
          do
          {
            for (m = 0; m != v38; ++m)
            {
              if (*v117 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = [*(*(&v116 + 1) + 8 * m) identifier];
              [v29 addObject:v41];
            }

            v38 = [v36 countByEnumeratingWithState:&v116 objects:v142 count:16];
          }

          while (v38);
        }

        v42 = +[PublishedLocalStatus fetchRequest];
        v43 = [PublishedLocalStatus predicateForPublishedLocalStatusIdentifiers:v29];
        [v42 setPredicate:v43];

        v44 = *(a1 + 40);
        v115 = 0;
        v45 = [v44 executeFetchRequest:v42 error:&v115];
        v98 = v115;
        if (v45)
        {
          v96 = v42;
          v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v95 = v45;
          v47 = v45;
          v48 = [v47 countByEnumeratingWithState:&v111 objects:v141 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v112;
            do
            {
              for (n = 0; n != v49; ++n)
              {
                if (*v112 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = *(*(&v111 + 1) + 8 * n);
                v53 = [v52 identifier];
                [v46 setObject:v52 forKeyedSubscript:v53];
              }

              v49 = [v47 countByEnumeratingWithState:&v111 objects:v141 count:16];
            }

            while (v49);
          }

          v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v55 = [v101 pendingStatuses];
          v56 = [v55 countByEnumeratingWithState:&v107 objects:v140 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v108;
            do
            {
              for (ii = 0; ii != v57; ++ii)
              {
                if (*v108 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = [*(*(&v107 + 1) + 8 * ii) identifier];
                v61 = [v46 objectForKeyedSubscript:v60];

                if (v61)
                {
                  [v54 addObject:v61];
                }
              }

              v57 = [v55 countByEnumeratingWithState:&v107 objects:v140 count:16];
            }

            while (v57);
          }

          v62 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v63 = [v101 deliveredStatuses];
          v64 = [v63 countByEnumeratingWithState:&v103 objects:v139 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v104;
            do
            {
              for (jj = 0; jj != v65; ++jj)
              {
                if (*v104 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = [*(*(&v103 + 1) + 8 * jj) identifier];
                v69 = [v46 objectForKeyedSubscript:v68];

                if (v69)
                {
                  [v62 addObject:v69];
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v103 objects:v139 count:16];
            }

            while (v65);
          }

          v70 = +[SKADatabaseManager logger];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v138 = v54;
            _os_log_impl(&dword_220099000, v70, OS_LOG_TYPE_DEFAULT, "createOrUpdatePublishedLocalStatusDevices setting devices. {pendingStatuses: %@}", buf, 0xCu);
          }

          v71 = +[SKADatabaseManager logger];
          v14 = v89;
          v22 = v93;
          v72 = v99;
          v45 = v95;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v138 = v54;
            _os_log_impl(&dword_220099000, v71, OS_LOG_TYPE_DEFAULT, "createOrUpdatePublishedLocalStatusDevices setting devices. {deliveredStatuses: %@}", buf, 0xCu);
          }

          [(PublishedLocalStatusDevice *)v99 setPendingStatuses:v54];
          [(PublishedLocalStatusDevice *)v99 setDeliveredStatuses:v62];

          a1 = v90;
          v2 = v91;
          v42 = v96;
          v73 = v98;
        }

        else
        {
          v74 = +[SKADatabaseManager logger];
          v73 = v98;
          v72 = v99;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v138 = v98;
            _os_log_error_impl(&dword_220099000, v74, OS_LOG_TYPE_ERROR, "createOrUpdatePublishedLocalStatusDevices failed to fetch PublishedLocalStatusDevice {error: %@}", buf, 0xCu);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v75 = *(*(a1 + 56) + 8);
          v76 = v98;
          v46 = *(v75 + 40);
          *(v75 + 40) = v76;
          v22 = v93;
        }

        if (!v45)
        {

          goto LABEL_83;
        }

        v23 = v97 + 1;
      }

      while (v97 + 1 != v94);
      v94 = [v22 countByEnumeratingWithState:&v124 objects:v144 count:16];
      if (v94)
      {
        continue;
      }

      break;
    }

    v77 = *(a1 + 40);
    v102 = 0;
    v78 = [v77 save:&v102];
    v79 = v102;
    v80 = v102;
    v81 = +[SKADatabaseManager logger];
    v82 = v81;
    if (v78)
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
        *buf = 138412290;
        v138 = v83;
        _os_log_impl(&dword_220099000, v82, OS_LOG_TYPE_DEFAULT, "createOrUpdatePublishedLocalStatusDevices saved {devices.count: %@}", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        __86__SKADatabaseManager_createOrUpdatePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_1();
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v79);
    }

    v12 = v86;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
    v14 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v84 = v87;
      __86__SKADatabaseManager_createOrUpdatePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_2();
      goto LABEL_85;
    }
  }

  v9 = v88;
LABEL_84:
  v84 = v87;
LABEL_85:

  v85 = *MEMORY[0x277D85DE8];
}

- (BOOL)deletePublishedLocalStatusDevices:(id)a3 databaseContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SKADatabaseManager_deletePublishedLocalStatusDevices_databaseContext_error___block_invoke;
  v13[3] = &unk_27843E710;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v24;
  v17 = &v18;
  [v10 performBlockAndWait:v13];
  v11 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __78__SKADatabaseManager_deletePublishedLocalStatusDevices_databaseContext_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = +[PublishedLocalStatusDevice fetchRequest];
  v3 = [PublishedLocalStatusDevice predicateForPublishedLocalStatusDeviceIdentifiers:*(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v27 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v27];
  v6 = v27;
  v7 = v27;
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 40) deleteObject:*(*(&v23 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v10);

      v13 = *(a1 + 40);
      v22 = 0;
      v14 = [v13 save:&v22];
      v15 = v22;
      v16 = v22;
      v17 = +[SKADatabaseManager logger];
      v18 = v17;
      if (v14)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
          *buf = 138412290;
          v29 = v19;
          _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "deletePublishedLocalStatusDevices saved {deviceIdentifiers.count: %@}", buf, 0xCu);
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
        [*(a1 + 40) reset];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __78__SKADatabaseManager_deletePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_1();
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
      }
    }

    else
    {

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    v20 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __78__SKADatabaseManager_deletePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_2();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)createOrUpdateOrDeleteSubscribedLocalStatus:(id)a3 databaseContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__SKADatabaseManager_createOrUpdateOrDeleteSubscribedLocalStatus_databaseContext_error___block_invoke;
  v13[3] = &unk_27843E710;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v24;
  v17 = &v18;
  [v10 performBlockAndWait:v13];
  v11 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __88__SKADatabaseManager_createOrUpdateOrDeleteSubscribedLocalStatus_databaseContext_error___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = +[SubscribedLocalStatus fetchRequest];
  v3 = [*(a1 + 32) identifier];
  v4 = [SubscribedLocalStatus predicateForSubscribedLocalStatusIdentifier:v3];
  [v2 setPredicate:v4];

  v5 = *(a1 + 40);
  v48 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v48];
  v7 = v48;
  v8 = v48;
  if (!v6)
  {
    v23 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __88__SKADatabaseManager_createOrUpdateOrDeleteSubscribedLocalStatus_databaseContext_error___block_invoke_cold_2();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_33;
  }

  v41 = v2;
  if (![v6 count])
  {
    v24 = [*(a1 + 32) payload];

    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = [[SubscribedLocalStatus alloc] initWithContext:*(a1 + 40)];
    v26 = [*(a1 + 32) creationDate];
    [(SubscribedLocalStatus *)v25 setCreationDate:v26];

    v27 = [*(a1 + 32) modificationDate];
    [(SubscribedLocalStatus *)v25 setModificationDate:v27];

    v28 = [*(a1 + 32) identifier];
    [(SubscribedLocalStatus *)v25 setIdentifier:v28];

    v29 = [*(a1 + 32) idsIdentifier];
    [(SubscribedLocalStatus *)v25 setIdsIdentifier:v29];

    v30 = [*(a1 + 32) payload];
    [(SubscribedLocalStatus *)v25 setPayload:v30];

    v31 = [*(a1 + 32) keyName];
    [(SubscribedLocalStatus *)v25 setKeyName:v31];

    v32 = [*(a1 + 32) keyDomain];
    [(SubscribedLocalStatus *)v25 setKeyDomain:v32];

    goto LABEL_23;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (!v10)
  {

    goto LABEL_28;
  }

  v11 = v10;
  v40 = v8;
  v12 = *v45;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v44 + 1) + 8 * i);
      v15 = [*(a1 + 32) payload];

      if (v15)
      {
        v16 = [*(a1 + 32) payload];
        v17 = [v14 payload];
        v18 = [v16 isEqualToData:v17];

        if (v18)
        {
          v19 = 0;
          continue;
        }

        v20 = [*(a1 + 32) payload];
        [v14 setPayload:v20];

        v21 = [*(a1 + 32) idsIdentifier];
        [v14 setIdsIdentifier:v21];

        v22 = [*(a1 + 32) modificationDate];
        [v14 setModificationDate:v22];
      }

      else
      {
        [*(a1 + 40) deleteObject:v14];
      }

      v19 = 1;
    }

    v11 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  }

  while (v11);

  v8 = v40;
  if (!v19)
  {
LABEL_28:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = v41;
    goto LABEL_33;
  }

LABEL_23:
  v33 = *(a1 + 40);
  v43 = 0;
  v34 = [v33 save:&v43];
  v35 = v43;
  v36 = v43;
  v37 = +[SKADatabaseManager logger];
  v38 = v37;
  if (v34)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v38, OS_LOG_TYPE_DEFAULT, "createOrUpdateOrDeleteSubscribedLocalStatus saved", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      __88__SKADatabaseManager_createOrUpdateOrDeleteSubscribedLocalStatus_databaseContext_error___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v35);
  }

  v2 = v41;
  [*(a1 + 40) reset];

LABEL_33:
  v39 = *MEMORY[0x277D85DE8];
}

- (id)allSubscribedLocalStatusesInDatabaseContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SKADatabaseManager_allSubscribedLocalStatusesInDatabaseContext_error___block_invoke;
  v10[3] = &unk_27843E6E8;
  v6 = v5;
  v11 = v6;
  v12 = &v20;
  v13 = &v14;
  [v6 performBlockAndWait:v10];
  v7 = v21[5];
  if (v7)
  {
    v8 = v7;
  }

  else if (a4)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __72__SKADatabaseManager_allSubscribedLocalStatusesInDatabaseContext_error___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = +[SubscribedLocalStatus fetchRequest];
  v3 = a1[4];
  v24 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v24];
  v5 = v24;
  v6 = v24;
  v7 = v6;
  if (v4)
  {
    v19 = v6;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[SKADatabaseSubscribedLocalStatus alloc] initWithCoreDataSubscribedLocalStatus:*(*(&v20 + 1) + 8 * v13)];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v7 = v19;
  }

  else
  {
    v15 = +[SKADatabaseManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __72__SKADatabaseManager_allSubscribedLocalStatusesInDatabaseContext_error___block_invoke_cold_1();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v5);
    v8 = 0;
  }

  v16 = *(a1[5] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v8;

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveContextIfNeeded:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SKADatabaseManager_saveContextIfNeeded___block_invoke;
  v7[3] = &unk_27843E620;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __42__SKADatabaseManager_saveContextIfNeeded___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v5 = 0;
    v3 = [v2 save:&v5];
    v4 = v5;
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (BOOL)clearPersistentHistoryIfNeeded
{
  v2 = [(SKADatabaseManager *)self databaseProvider];
  v3 = [v2 clearPersistentHistoryIfNeeded];

  return v3;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = +[SKADatabaseManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Received did leave first unlock notification.", v4, 2u);
  }

  [(SKADatabaseManager *)self _deleteAllPresenceSubscriptionsAndAssertionsIfNecessary];
}

+ (id)logger
{
  if (logger_onceToken_13 != -1)
  {
    +[SKADatabaseManager logger];
  }

  v3 = logger__logger_13;

  return v3;
}

uint64_t __28__SKADatabaseManager_logger__block_invoke()
{
  logger__logger_13 = os_log_create("com.apple.StatusKit", "SKADatabaseManager");

  return MEMORY[0x2821F96F8]();
}

- (SKADatabaseManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_existingPersonalChannelForStatusTypeIdentifier:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching personal status channel. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingDecommissionedChannelsWithDatabaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching decommissioned channel. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__SKADatabaseManager_deletePersonalChannelForStatusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_existingPersonalChannelForDatabaseChannel:(void *)a1 databaseContext:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_220099000, a2, OS_LOG_TYPE_FAULT, "More than one personal channel exists for channel identifier: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_existingChannelsForChannelIdentifier:isPersonal:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error executing fetch for subscription validation. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingChannelsForChannelIdentifier:isPersonal:databaseContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_existingChannelsForChannelIdentifier:databaseContext:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Fetch request for channels by identifier %@ returned a nil result", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingChannelsForPresenceIdentifier:isPersonal:databaseContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Error executing fetch for channels by presence identifier %@. Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_existingChannelsForPresenceIdentifier:isPersonal:databaseContext:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Fetch request for channels by presence identifier %@ returned a nil result", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKADatabaseManager_existingChannelForHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Could not find any channels associated with channel identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKADatabaseManager_existingChannelForHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Invitation does not correspond to any channel. InvitationIdentifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __106__SKADatabaseManager_allExistingChannelsForStatusTypeIdentifier_includingPersonalChannel_databaseContext___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error executing fetch for channel by status type identifier %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __90__SKADatabaseManager_allExistingChannelsForPresenceIdentifier_isPersonal_databaseContext___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error executing fetch for channel by presence identifier %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __114__SKADatabaseManager_createPersonalChannelForStatusTypeIdentifier_channelIdentifier_channelToken_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing new personal channel. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __165__SKADatabaseManager_createPresenceChannelForPresenceIdentifier_channelIdentifier_channelToken_peerKey_serverKey_membershipKey_creationDate_options_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing new presence channel. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__SKADatabaseManager_createChannelForStatusTypeIdentifier_channelIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing channel invitation. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__SKADatabaseManager_updatePersonalChannel_withCurrentOutgoingRatchetState_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for updated outgoing ratchet state. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __94__SKADatabaseManager_decommissionAllPersonalChannelsWithStatusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for decommissioning. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__SKADatabaseManager_generatedEncryptionKeysForPersonalChannel_databaseContext___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find generated ratchet keys matching database channel. Channel: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __94__SKADatabaseManager_allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching subscription assertions. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __134__SKADatabaseManager_createSubscriptionAssertionForSubscriptionIdentifier_applicationIdentifier_statusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing persistent subscription assertion. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__SKADatabaseManager_deleteSubscriptionAssertionWithSubscriptionIdentifier_applicationIdentifier_databaseContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_existingTransientSubscriptionHistoryForChannelIdentifier:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching transientSubscriptionHistory. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingTransientSubscriptionHistoryWithLimit:orderedByLastSubscriptionDateAscending:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching transientSubscriptionHistories. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __122__SKADatabaseManager_createOrUpdateTransientSubscriptionHistoryForChannelIdentifier_lastSubscriptionDate_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing transient subscription history. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __105__SKADatabaseManager_createInvitedUserWithHandle_senderHandle_invitationPayload_channel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing invited user. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SKADatabaseManager_copyInvitedUsersFromChannel_toChannel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for copying invited users. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke_cold_1(void *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 count];
  v3 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

void __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for updating invitation payload on invited user. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__SKADatabaseManager_updateInvitationPayload_onExistingInvitedUser_channel_databaseContext___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Error finding core data invited user to update invitation. No match for SKADatabaseInvitedUser: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __77__SKADatabaseManager_existingInvitedUsersForPersonalChannel_databaseContext___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Error finding core data channel matching SKADatabaseChannel: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_existingInvitedUsersForDatabaseInvitedUser:databaseChannel:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching invited user. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingInvitedUsersForInvitedHandle:(void *)a1 channel:databaseContext:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 handleString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting invited users by handle. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find existing invited user matching handle: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __81__SKADatabaseManager_deleteInvitedUserForHandle_personalChannel_databaseContext___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find existing database channel matching channel %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __78__SKADatabaseManager_deleteAllInvitedUsersForPersonalChannel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting all invited users. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SKADatabaseManager_deleteAllInvitedUsersForPersonalChannel_databaseContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __148__SKADatabaseManager_createStatusWithUniqueIdentifier_dateCreated_datePublished_dateReceived_dateExpired_rawData_channelIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing status. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SKADatabaseManager_existingStatusForChannel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error executing fetch for status by channel. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SKADatabaseManager_existingStatusForUniqueIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error executing fetch for status by unique id. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__SKADatabaseManager_setCurrentCheckpointForChannel_checkpoint_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for channel checkpoint. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__SKADatabaseManager_setCurrentCheckpointForChannel_checkpoint_databaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing checkpoint. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingChannelCheckpointForChannelIdentifier:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching pending requests. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__SKADatabaseManager_createOrUpdatePresentDevice_channel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing present device. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error executing fetch for presentDevicesForChannel: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKADatabaseManager_cleanUpPresentDevicesWithoutActiveChannelsWithDatabaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for clearing present devices without active channels with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__SKADatabaseManager_clearPresentDevicesForChannel_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting present device. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SKADatabaseManager_deletePresentDevice_channel_databaseContext___block_invoke_cold_2(id *a1, id *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  v10 = [*a2 deviceIdentifier];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_existingPresentDeviceForChannel:deviceIdentifier:databaseContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_existingPresenceAssertionForPresenceIdentifier:isPersonal:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching presence assertion. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SKADatabaseManager_activePresenceAssertionsExistWithDatabaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching presence assertions. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __132__SKADatabaseManager_createOrUpdatePresenceAssertionForPresenceIdentifier_presenceOptions_assertionOptions_payload_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context while storing presence assertion. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __94__SKADatabaseManager_deletePresenceAssertionForPresenceIdentifier_isPersonal_databaseContext___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error saving managed object context for deleting presence assertion by presence identifier %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __69__SKADatabaseManager_deleteAllPresenceAssertionsWithDatabaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting presence assertions. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __112__SKADatabaseManager_createOrUpdatePresenceSubscriptionForChannelIdentifier_presenceIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing presence subscription. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__SKADatabaseManager_deletePresenceSubscriptionsForChannelIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving deleted presence subscription error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SKADatabaseManager_deleteAllPresenceSubscriptionsWithDatabaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching presence subscription. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SKADatabaseManager_deleteAllPresenceSubscriptionsWithDatabaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting presence subscription. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__SKADatabaseManager_cleanupOldStatusUpdatesForChannelIdentifier_excludingStatusUniqueIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error executing fetch for status cleanup. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__SKADatabaseManager_cleanupOldStatusUpdatesForChannelIdentifier_excludingStatusUniqueIdentifier_databaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for status cleanup. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingPendingPublishRequestForUniqueIdentifier:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching pending requests. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __131__SKADatabaseManager_createPendingPublishRequestWithUniqueIdentifier_dateCreated_payloadData_statusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing pending publish request. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting pending publish request. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__SKADatabaseManager_deletePendingPublishRequestWithWithUniqueIdentifier_databaseContext___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find existing pending publish request with identifier: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __99__SKADatabaseManager_incrementPendingPublishRequestRetryCountWithUniqueIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for incrementing pending publish request. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __99__SKADatabaseManager_createRemovedUserWithHandle_dateRemoved_statusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing removed user. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for deleting removed user. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__SKADatabaseManager_deleteRemovedUserWithHandle_statusTypeIdentifier_databaseContext___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Could not find existing removed user with handle: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_existingRemovedUsersForHandle:statusTypeIdentifier:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching removed users. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingReceivedInvitationsForHandle:presenceIdentifier:databaseContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error executing fetch for ReceivedInvitation by handle. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __232__SKADatabaseManager_createReceivedInvitationForChannel_senderHandle_invitedHandle_invitationIdentifier_dateInvitationCreated_incomingRatchetState_presenceIdentifier_channelToken_serverKey_peerKey_invitationPayload_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Could not find core data channel to match channel identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __232__SKADatabaseManager_createReceivedInvitationForChannel_senderHandle_invitedHandle_invitationIdentifier_dateInvitationCreated_incomingRatchetState_presenceIdentifier_channelToken_serverKey_peerKey_invitationPayload_databaseContext___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for storing received invitation. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_existingReceivedInvitationsForChannelIdentifier:sortedByDateReceived:databaseContect:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Could not find any existing channels matching channel identifier. Returning no received invitations. Channel identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __108__SKADatabaseManager_cleanupOldReceivedInvitationsForChannelIdentifier_excludingInvitation_databaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for invitation cleanup. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SKADatabaseManager_cleanupDecommissionedChannelsWithDatabaseContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error saving managed object context for decommissioned channel cleanup. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SKADatabaseManager_allPublishedLocalStatusesInDatabaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Error fetching all published local statuses. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__SKADatabaseManager_createOrUpdatePublishedLocalStatuses_databaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "createOrUpdatePublishedLocalStatuses save failed {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__SKADatabaseManager_createOrUpdatePublishedLocalStatuses_databaseContext_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "createOrUpdatePublishedLocalStatuses failed to fetch local statuses {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SKADatabaseManager_allPublishedLocalStatusDevicesInDatabaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "allPublishedLocalStatusDevicesInDatabaseContext failed to fetch PublishedLocalStatusDevice. {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__SKADatabaseManager_createOrUpdatePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "createOrUpdatePublishedLocalStatusDevices save failed {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__SKADatabaseManager_createOrUpdatePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "createOrUpdatePublishedLocalStatusDevices failed to fetch published local status devices {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SKADatabaseManager_deletePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "deletePublishedLocalStatusDevices save failed {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SKADatabaseManager_deletePublishedLocalStatusDevices_databaseContext_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "deletePublishedLocalStatusDevices failed to PublishedLocalStatusDevice {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __88__SKADatabaseManager_createOrUpdateOrDeleteSubscribedLocalStatus_databaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "createOrUpdateOrDeleteSubscribedLocalStatus save failed {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __88__SKADatabaseManager_createOrUpdateOrDeleteSubscribedLocalStatus_databaseContext_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "createOrUpdateOrDeleteSubscribedLocalStatus failed to SubscribedLocalStatus {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SKADatabaseManager_allSubscribedLocalStatusesInDatabaseContext_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "allSubscribedLocalStatusesInDatabaseContext failed to fetch SKADatabaseSubscribedLocalStatus. {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end