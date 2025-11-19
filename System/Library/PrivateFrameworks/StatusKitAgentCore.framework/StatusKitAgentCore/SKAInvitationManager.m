@interface SKAInvitationManager
+ (id)_unableToFindExistingInvitationForHandlesError:(id)a3;
+ (id)logger;
- (BOOL)_rollEncryptionKeyForChannel:(id)a3 databaseContext:(id)a4 error:(id *)a5;
- (BOOL)_sendInvitationMessageForChannel:(id)a3 toInvitedUsers:(id)a4 subscriptionKeys:(id)a5 error:(id *)a6;
- (BOOL)_sendInvitationMessageForPresenceChannel:(id)a3 toInvitedUsers:(id)a4 error:(id *)a5;
- (BOOL)_validateInvitedHandle:(id)a3;
- (BOOL)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:(id)a3 error:(id *)a4;
- (SKAInvitationManager)initWithMessagingProvider:(id)a3 databaseManager:(id)a4 accountProvider:(id)a5 channelManager:(id)a6 presenceManager:(id)a7 trafficMode:(BOOL)a8;
- (SKAInvitationManagingDelegate)delegate;
- (id)_addInvitedHandles:(id)a3 senderHandle:(id)a4 toDatabaseForPersonalChannel:(id)a5 withInvitationPayload:(id)a6 databaseContext:(id)a7;
- (id)_addInvitedHandles:(id)a3 senderHandle:(id)a4 toDatabaseForPresenceChannel:(id)a5 databaseContext:(id)a6;
- (id)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:(id)a3 databaseContext:(id)a4 invitationWasSentViaKeyRoll:(BOOL *)a5 error:(id *)a6;
- (id)_updateOrCreateInvitedUserWithHandle:(id)a3 senderHandle:(id)a4 onChannel:(id)a5 withInvitationPayload:(id)a6 databaseContext:(id)a7;
- (id)_validateInvitedHandles:(id)a3;
- (id)invitationMessageForPresenceChannel:(id)a3;
- (int64_t)handleIncomingInvitationMessage:(id)a3 fromHandle:(id)a4 fromID:(id)a5 fromMergeID:(id)a6 toHandle:(id)a7 messageGuid:(id)a8;
- (void)_createPersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4 completion:(id)a5;
- (void)_findOrCreatePersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4 completion:(id)a5;
- (void)_isHandleInviteable:(id)a3 completion:(id)a4;
- (void)_isPresenceHandleInviteable:(id)a3 completion:(id)a4;
- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:(id)a3 incomingChannel:(id)a4 senderHandle:(id)a5 invitedHandle:(id)a6 dateInvitationCreated:(id)a7 databaseContext:(id)a8;
- (void)acceptInvitationMessage:(id)a3 fromHandle:(id)a4 toHandle:(id)a5 messageGuid:(id)a6 existingChannel:(id)a7 databaseContext:(id)a8;
- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forPresenceIdentifier:(id)a5 completion:(id)a6;
- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6;
- (void)isHandleInviteable:(id)a3 fromHandle:(id)a4 completion:(id)a5;
- (void)isPresenceHandleInviteable:(id)a3 fromHandle:(id)a4 completion:(id)a5;
- (void)outgoingMessageWithIdentifier:(id)a3 fromHandle:(id)a4 toHandle:(id)a5 didSendWithSuccess:(BOOL)a6;
- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:(id)a3 forHandles:(id)a4 completion:(id)a5;
- (void)revokeInvitationFromPresenceChannelWithPresenceIdentifier:(id)a3 forHandles:(id)a4 completion:(id)a5;
- (void)rollPersonalChannelWithStatusTypeIdentifier:(id)a3 completion:(id)a4;
- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:(id)a3 toHandles:(id)a4 fromSenderHandle:(id)a5 withInvitationPayload:(id)a6 completion:(id)a7;
- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:(id)a3 toHandles:(id)a4 fromSenderHandle:(id)a5 options:(id)a6 completion:(id)a7;
- (void)shouldAcceptInvitationMessageForPresenceIdentifier:(id)a3 fromHandle:(id)a4 fromMergeID:(id)a5 inServiceFirewall:(id)a6 databaseContext:(id)a7 completion:(id)a8;
@end

@implementation SKAInvitationManager

- (SKAInvitationManager)initWithMessagingProvider:(id)a3 databaseManager:(id)a4 accountProvider:(id)a5 channelManager:(id)a6 presenceManager:(id)a7 trafficMode:(BOOL)a8
{
  v31 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v33.receiver = self;
  v33.super_class = SKAInvitationManager;
  v18 = [(SKAInvitationManager *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messagingProvider, a3);
    objc_storeStrong(&v19->_databaseManager, a4);
    objc_storeStrong(&v19->_channelManager, a6);
    objc_storeStrong(&v19->_accountProvider, a5);
    objc_storeStrong(&v19->_presenceManager, a7);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_DEFAULT, 0);

    v22 = dispatch_queue_create("com.apple.StatusKit.InvitationManager.cleanup", v21);
    backgroundCleanupQueue = v19->_backgroundCleanupQueue;
    v19->_backgroundCleanupQueue = v22;

    v19->_trafficModeEnabled = a8;
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outgoingInvitationMapping = v19->_outgoingInvitationMapping;
    v19->_outgoingInvitationMapping = v24;

    v19->_presenceEnabledByServer = [SKAServerBag presenceEnabledByServer:v30];
    v26 = [[SKARateLimiter alloc] initWithLastRequestTimePrefsKey:@"reverseInviteResetTime" requestsCountPrefsKey:@"reverseInviteCount" maxRequestsBagKey:@"shared-channels-max-reverse-invite-count" defaultMaxRequests:5 resetTimeBagKey:@"shared-channels-reverse-invite-reset-time-seconds" defaultResetTime:30];
    rateLimiter = v19->_rateLimiter;
    v19->_rateLimiter = v26;

    if (v19->_trafficModeEnabled)
    {
      v28 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "In Traffic Mode--will drop incoming status invitations", buf, 2u);
      }
    }
  }

  return v19;
}

- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:(id)a3 toHandles:(id)a4 fromSenderHandle:(id)a5 withInvitationPayload:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SKAInvitationManager *)self _validateInvitedHandles:v13];
  if ([v17 count])
  {
    v18 = [(SKAInvitationManager *)self resolveSenderHandleWithPreferredSenderHandle:v14];
    if (v18)
    {
      objc_initWeak(&location, self);
      v19 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke;
      v24[3] = &unk_27843DC98;
      objc_copyWeak(&v30, &location);
      v29 = v16;
      v25 = v17;
      v18 = v18;
      v26 = v18;
      v27 = v15;
      v20 = v19;
      v28 = v20;
      [(SKAInvitationManager *)self _findOrCreatePersonalChannelForStatusTypeIdentifier:v12 databaseContext:v20 completion:v24];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
      }

      v23 = [SKAError errorWithCode:500];
      (*(v16 + 2))(v16, 0, v23);
    }
  }

  else
  {
    v21 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
    }

    v18 = [SKAError errorWithCode:501];
    (*(v16 + 2))(v16, 0, v18);
  }
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (v6)
  {
    v8 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
    v9 = v5;
    goto LABEL_20;
  }

  v10 = +[SKAInvitationManager logger];
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Adding invited handles %@ to database for channel: %@", buf, 0x16u);
    }

    v13 = [WeakRetained _addInvitedHandles:*(a1 + 32) senderHandle:*(a1 + 40) toDatabaseForPersonalChannel:v5 withInvitationPayload:*(a1 + 48) databaseContext:*(a1 + 56)];
    v27 = 0;
    v14 = *(a1 + 56);
    v26 = 0;
    v9 = [WeakRetained _ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:v5 databaseContext:v14 invitationWasSentViaKeyRoll:&v27 error:&v26];
    v15 = v26;

    if (v15)
    {
      v16 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_2((a1 + 32));
      }
    }

    else
    {
      if (v27 != 1)
      {
        v19 = [v9 currentOutgoingRatchet];
        v20 = [v19 currentSubscriptionKeys];

        v25 = 0;
        v21 = [WeakRetained _sendInvitationMessageForChannel:v9 toInvitedUsers:v13 subscriptionKeys:v20 error:&v25];
        v22 = v25;
        if (v21)
        {
          v23 = *(*(a1 + 64) + 16);
        }

        else
        {
          v24 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_3();
          }

          v23 = *(*(a1 + 64) + 16);
        }

        v23();

        goto LABEL_19;
      }

      v16 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v29 = v17;
        _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Invitations for newly invited handles %@ was already sent during key roll, skipping individual message send.", buf, 0xCu);
      }
    }

    (*(*(a1 + 64) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_4();
  }

  v9 = [SKAError errorWithCode:1101];
  (*(*(a1 + 64) + 16))();
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:(id)a3 toHandles:(id)a4 fromSenderHandle:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![(SKAInvitationManager *)self presenceEnabledByServer])
  {
    v26 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    goto LABEL_11;
  }

  v17 = [v15 serviceIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [v15 serviceIdentifier];
    v20 = [SKAServerBag presenceEnabledByServerForServiceIdentifier:v19];

    if (!v20)
    {
      v26 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:v15 toHandles:? fromSenderHandle:? options:? completion:?];
      }

LABEL_11:

      v21 = [SKAError errorWithCode:100];
      v16[2](v16, 0, v21);
      goto LABEL_19;
    }
  }

  v21 = [(SKAInvitationManager *)self _validateInvitedHandles:v13];
  if ([v21 count])
  {
    v22 = [(SKAInvitationManager *)self resolveSenderHandleWithPreferredSenderHandle:v14];
    if (v22)
    {
      objc_initWeak(&location, self);
      v23 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
      v24 = [(SKAInvitationManager *)self presenceManager];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke;
      v30[3] = &unk_27843DCC0;
      objc_copyWeak(&v35, &location);
      v34 = v16;
      v31 = v21;
      v22 = v22;
      v32 = v22;
      v25 = v23;
      v33 = v25;
      [v24 findOrCreatePresenceChannelForPresenceIdentifier:v12 options:v15 databaseContext:v25 completion:v30];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
      }

      v29 = [SKAError errorWithCode:500];
      v16[2](v16, 0, v29);
    }
  }

  else
  {
    v27 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
    }

    v22 = [SKAError errorWithCode:501];
    v16[2](v16, 0, v22);
  }

LABEL_19:
}

void __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = +[SKAInvitationManager logger];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Adding invited handles %@ to database for channel: %@", buf, 0x16u);
    }

    v11 = [WeakRetained _addInvitedHandles:*(a1 + 32) senderHandle:*(a1 + 40) toDatabaseForPresenceChannel:v5 databaseContext:*(a1 + 48)];
    v17 = 0;
    v12 = [WeakRetained _sendInvitationMessageForPresenceChannel:v5 toInvitedUsers:v11 error:&v17];
    v13 = v17;
    if (v12)
    {
      v14 = *(*(a1 + 56) + 16);
    }

    else
    {
      v15 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_3();
      }

      v14 = *(*(a1 + 56) + 16);
    }

    v14();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) invitationMessageForPresenceChannel:a2];
    v7 = [*(a1 + 40) messagingProvider];
    v8 = [v6 copy];
    v16 = 0;
    v17 = 0;
    v9 = [v7 sendMessageToSelfDevices:v8 limitToPresenceCapable:1 identifier:&v17 error:&v16];
    v10 = v17;
    v11 = v16;

    v12 = +[SKAInvitationManager logger];
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Presence invitation sent successfully to self-account devices. ID:%@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_220099000, v13, OS_LOG_TYPE_ERROR, "Self presence invitation send failed with error: %@ message: %@, ID:%@.  Maybe no other device on account?", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  databaseManager = self->_databaseManager;
  v8 = a3;
  v9 = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  v10 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:v8 databaseContext:v9];

  if (!v10)
  {
    v17 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    v18 = 1100;
    goto LABEL_13;
  }

  v11 = [(SKADatabaseManaging *)self->_databaseManager deleteAllInvitedUsersForPersonalChannel:v10 databaseContext:v9];
  v12 = +[SKAInvitationManager logger];
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    v18 = 504;
LABEL_13:
    v16 = [SKAError errorWithCode:v18];
    v6[2](v6, v16);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Finished deleting all invited user database records for channel %@, initiating key roll", buf, 0xCu);
  }

  v21 = 0;
  v14 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v10 databaseContext:v9 error:&v21];
  v15 = v21;
  v16 = v15;
  if (v14)
  {
    v6[2](v6, 0);
  }

  else if (v15)
  {
    v6[2](v6, v15);
  }

  else
  {
    v20 = [SKAError errorWithCode:401];
    v6[2](v6, v20);
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:(id)a3 forHandles:(id)a4 completion:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40 = v8;
  v11 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v12 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:v8 databaseContext:?];
  if (!v12)
  {
    v32 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:forHandles:completion:];
    }

    v33 = [SKAError errorWithCode:1100];
    goto LABEL_27;
  }

  v38 = v10;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v49 count:16];
  v15 = 0x27843D000uLL;
  if (!v14)
  {

LABEL_24:
    v34 = [*(v15 + 1024) logger];
    v10 = v38;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    v33 = [*(v15 + 1024) _unableToFindExistingInvitationForHandlesError:v13];
LABEL_27:
    v30 = v33;
    v10[2](v10, v33);
    goto LABEL_28;
  }

  v16 = v14;
  obj = v13;
  v37 = v9;
  v39 = 0;
  v17 = *v44;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v44 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v43 + 1) + 8 * i);
      v20 = v12;
      v21 = [(SKADatabaseManaging *)self->_databaseManager deleteInvitedUserForHandle:v19 personalChannel:v12 databaseContext:v11, v37];
      v22 = v15;
      v23 = [*(v15 + 1024) logger];
      v24 = v23;
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v19;
          _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "Successfully deleted database record for invited user: %@.  Adding to removed users", buf, 0xCu);
        }

        databaseManager = self->_databaseManager;
        v24 = [MEMORY[0x277CBEAA8] now];
        v26 = [(SKADatabaseManaging *)databaseManager createRemovedUserWithHandle:v19 dateRemoved:v24 statusTypeIdentifier:v40 databaseContext:v11];
        v39 = 1;
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v48 = v19;
        _os_log_error_impl(&dword_220099000, v24, OS_LOG_TYPE_ERROR, "Unable to find database record for invited user attempted to delete: %@", buf, 0xCu);
      }

      v12 = v20;

      v15 = v22;
    }

    v16 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  }

  while (v16);
  v13 = obj;

  v9 = v37;
  if ((v39 & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = [*(v22 + 1024) logger];
  v10 = v38;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Finished deleting database records for uninvited users, initiating key roll", buf, 2u);
  }

  v42 = 0;
  v28 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v12 databaseContext:v11 error:&v42];
  v29 = v42;
  v30 = v29;
  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained invitationManager:self didRevokeInvitationOnChannel:v12];

    v38[2](v38, 0);
  }

  else if (v29)
  {
    v38[2](v38, v29);
  }

  else
  {
    v36 = [SKAError errorWithCode:401];
    v38[2](v38, v36);
  }

LABEL_28:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)revokeInvitationFromPresenceChannelWithPresenceIdentifier:(id)a3 forHandles:(id)a4 completion:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SKAInvitationManager *)self presenceEnabledByServer])
  {
    v11 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    v33 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v8 isPersonal:0 databaseContext:v11];
    if (v33)
    {
      v31 = v10;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v30 = v9;
        v32 = v8;
        v15 = 0;
        v16 = *v37;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            v19 = [(SKADatabaseManaging *)self->_databaseManager deleteInvitedUserForHandle:v18 personalChannel:v33 databaseContext:v11, v30];
            v20 = +[SKAInvitationManager logger];
            v21 = v20;
            if (v19)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v41 = v18;
                _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Successfully deleted database record for invited user: %@.  Adding to removed users", buf, 0xCu);
              }

              databaseManager = self->_databaseManager;
              v21 = [MEMORY[0x277CBEAA8] now];
              v23 = [(SKADatabaseManaging *)databaseManager createRemovedUserWithHandle:v18 dateRemoved:v21 presenceIdentifier:v32 databaseContext:v11];
              v15 = 1;
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v18;
              _os_log_error_impl(&dword_220099000, v21, OS_LOG_TYPE_ERROR, "Unable to find database record for invited user attempted to delete: %@", buf, 0xCu);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v14);

        v8 = v32;
        v9 = v30;
        if (v15)
        {
          v24 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "Finished deleting database records for uninvited users, initiating key roll", buf, 2u);
          }

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __104__SKAInvitationManager_revokeInvitationFromPresenceChannelWithPresenceIdentifier_forHandles_completion___block_invoke;
          v34[3] = &unk_27843DD10;
          v10 = v31;
          v35 = v31;
          [(SKAInvitationManager *)self rollPresenceChannelWithPresenceIdentifier:v32 isPersonal:0 completion:v34];
          v25 = v35;
          goto LABEL_31;
        }
      }

      else
      {
      }

      v28 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
      }

      v25 = [SKAInvitationManager _unableToFindExistingInvitationForHandlesError:v12];
      v10 = v31;
    }

    else
    {
      v27 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:forHandles:completion:];
      }

      v25 = [SKAError errorWithCode:901];
    }

    (*(v10 + 2))(v10, v25);
LABEL_31:

    goto LABEL_32;
  }

  v26 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
  }

  v11 = [SKAError errorWithCode:100];
  (*(v10 + 2))(v10, v11);
LABEL_32:

  v29 = *MEMORY[0x277D85DE8];
}

void __104__SKAInvitationManager_revokeInvitationFromPresenceChannelWithPresenceIdentifier_forHandles_completion___block_invoke(uint64_t a1, int a2)
{
  v4 = +[SKAInvitationManager logger];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Finished rolling presence channel", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Error rolling presence channel", v7, 2u);
    }

    v6 = [SKAError errorWithCode:401];
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Received request to roll encryption key for personal channel with statusTypeIdentifier: %@", buf, 0xCu);
  }

  v8 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v9 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:v6 databaseContext:v8];
  if (v9)
  {
    v16 = 0;
    v10 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v9 databaseContext:v8 error:&v16];
    v11 = v16;
    if (!v10)
    {
      v12 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:];
      }

      if (a4)
      {
        v13 = v11;
        *a4 = v11;
      }
    }
  }

  else
  {
    v11 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:];
    }

    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)outgoingMessageWithIdentifier:(id)a3 fromHandle:(id)a4 toHandle:(id)a5 didSendWithSuccess:(BOOL)a6
{
  v6 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v9;
    v25 = 1024;
    v26 = v6;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Received callback for message with identifier: %@ did send with success: %d", &v23, 0x12u);
  }

  if (!v6)
  {
    v11 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:];
    }

    v12 = [(SKAInvitationManager *)self outgoingInvitationMapping];
    v13 = [v12 valueForKey:v9];

    if (v13)
    {
      v14 = [v13 channelIdentifier];
      v15 = [v13 toHandle];
      v16 = [v14 length];
      if (a5 && v16)
      {
        v17 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
        v18 = [(SKAInvitationManager *)self databaseManager];
        v19 = [v18 existingChannelForSubscriptionIdentifier:v14 databaseContext:v17];

        if (v19)
        {
          v20 = [(SKAInvitationManager *)self databaseManager];
          [v20 deleteInvitedUserForHandle:v15 presenceChannel:v19 databaseContext:v17];
        }

        else
        {
          v20 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:];
          }
        }
      }
    }

    else
    {
      v14 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:];
      }
    }
  }

  v21 = [(SKAInvitationManager *)self outgoingInvitationMapping];
  [v21 removeObjectForKey:v9];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)rollPersonalChannelWithStatusTypeIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Received request to roll personal channel with statusTypeIdentifier: %@", buf, 0xCu);
  }

  v9 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v10 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:v6 databaseContext:v9];
  if (v10)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke;
    v13[3] = &unk_27843DD38;
    v17 = v7;
    v13[4] = self;
    v14 = v10;
    v15 = v9;
    v16 = v6;
    [(SKAInvitationManager *)self _createPersonalChannelForStatusTypeIdentifier:v16 databaseContext:v15 completion:v13];
  }

  else
  {
    v11 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager rollPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    (*(v7 + 2))(v7, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_3();
    }

    goto LABEL_11;
  }

  v8 = [*(a1 + 32) databaseManager];
  v9 = [v8 copyInvitedUsersFromChannel:*(a1 + 40) toChannel:v5 databaseContext:*(a1 + 48)];

  if (!v9)
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
    }

LABEL_11:

    (*(*(a1 + 64) + 16))();
    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v19 = 0;
  [v10 _rollEncryptionKeyForChannel:v5 databaseContext:v11 error:&v19];
  v12 = v19;
  v13 = +[SKAInvitationManager logger];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Successfully rolled personal channel with statusTypeIdentifier: %@", buf, 0xCu);
    }

    v14 = [*(a1 + 32) databaseManager];
    v17 = [*(a1 + 40) identifier];
    [v14 decommissionChannelWithIdentifier:v17 databaseContext:*(a1 + 48)];
  }

  (*(*(a1 + 64) + 16))();
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

void __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v19 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_3();
    }
  }

  else
  {
    v8 = [*(a1 + 32) databaseManager];
    v9 = [v8 copyInvitedUsersFromChannel:*(a1 + 40) toChannel:v5 databaseContext:*(a1 + 48)];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) invitedUsers];
      v28 = 0;
      v12 = [v10 _sendInvitationMessageForPresenceChannel:v5 toInvitedUsers:v11 error:&v28];
      v13 = v28;

      if (v13 || (v12 & 1) == 0)
      {
        v20 = [*(a1 + 40) invitedUsers];
        v21 = [v20 count];

        v22 = +[SKAInvitationManager logger];
        v23 = v22;
        if (v13 || v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
          }

          goto LABEL_27;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 56);
          *buf = 138412290;
          v30 = v24;
          _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Successfully rolled presence channel with presenceIdentifier: %@", buf, 0xCu);
        }

        v25 = [*(a1 + 32) databaseManager];
        v26 = [v25 decommissionAllOldChannelsWithPresenceIdentifier:*(a1 + 56) isPersonal:*(a1 + 72) databaseContext:*(a1 + 48)];

        if (v26)
        {
LABEL_24:
          v23 = [*(a1 + 32) delegate];
          [v23 invitationManager:*(a1 + 32) didRollChannelFromExistingChannel:*(a1 + 40)];
LABEL_27:

          (*(*(a1 + 64) + 16))();
          goto LABEL_28;
        }

        v18 = +[SKAInvitationManager logger];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v14 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 56);
          *buf = 138412290;
          v30 = v15;
          _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Successfully rolled presence channel with presenceIdentifier: %@", buf, 0xCu);
        }

        v16 = [*(a1 + 32) databaseManager];
        v17 = [v16 decommissionAllOldChannelsWithPresenceIdentifier:*(a1 + 56) isPersonal:*(a1 + 72) databaseContext:*(a1 + 48)];

        if (v17)
        {
          goto LABEL_24;
        }

        v18 = +[SKAInvitationManager logger];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }

      __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_3((a1 + 56));
      goto LABEL_23;
    }

    v19 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 64) + 16))();
LABEL_28:

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_rollEncryptionKeyForChannel:(id)a3 databaseContext:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Generating new outgoing ratchet", buf, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x277D28550]);
  v12 = [v11 serializedData];
  v13 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Storing newly generated outgoing ratchet", buf, 2u);
  }

  v14 = [(SKADatabaseManaging *)self->_databaseManager createGeneratedEncryptionKeyWithOriginalOutgoingRatchetState:v12 personalChannel:v8 databaseContext:v9];
  v15 = [(SKADatabaseManaging *)self->_databaseManager existingInvitedUsersForPersonalChannel:v8 databaseContext:v9];

  v16 = [v15 count];
  v17 = +[SKAInvitationManager logger];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Not sending any invitations following key roll as there are no invited users for channel %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (v18)
  {
    v19 = [v15 count];
    *buf = 134217984;
    v30 = v19;
    _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Messaging %ld existing invited users with the newly generated subscription keys", buf, 0xCu);
  }

  v17 = [v11 currentSubscriptionKeys];
  v28 = 0;
  v20 = [(SKAInvitationManager *)self _sendInvitationMessageForChannel:v8 toInvitedUsers:v15 subscriptionKeys:v17 error:&v28];
  v21 = v28;
  v22 = v21;
  if (v20)
  {

LABEL_12:
    v23 = 1;
    goto LABEL_18;
  }

  v24 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager _rollEncryptionKeyForChannel:databaseContext:error:];
  }

  if (a5)
  {
    v25 = v22;
    *a5 = v22;
  }

  v23 = 0;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_sendInvitationMessageForChannel:(id)a3 toInvitedUsers:(id)a4 subscriptionKeys:(id)a5 error:(id *)a6
{
  v84 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count])
  {
    v59 = a6;
    v56 = v10;
    v12 = objc_alloc(MEMORY[0x277D28548]);
    v13 = [v11 index];
    v14 = [v11 chainKey];
    v15 = v11;
    v16 = v14;
    v60 = v15;
    v17 = [v15 signingKey];
    v74 = 0;
    v18 = [v12 initWithIndex:v13 chainKey:v16 signingKey:v17 error:&v74];
    v57 = v74;

    if (v18)
    {
      v63 = [v18 serializedData];
      if ([v63 length])
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v10 = v56;
        obj = v56;
        v19 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
        if (v19)
        {
          v20 = v19;
          v58 = 0;
          v21 = *v71;
          v61 = *v71;
          v62 = self;
          do
          {
            v22 = 0;
            v64 = v20;
            do
            {
              if (*v71 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v70 + 1) + 8 * v22);
              v24 = [v23 invitedSKHandle];
              if (v24)
              {
                v25 = [v23 senderSKHandle];
                v26 = [v23 invitationPayload];
                v27 = [(SKAInvitationManager *)self _validateInvitedHandle:v25];
                v28 = +[SKAInvitationManager logger];
                v29 = v28;
                if (v27)
                {
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = [v60 index];
                    v31 = [v25 handleString];
                    v32 = [v24 handleString];
                    *buf = 134218754;
                    v76 = v30;
                    v77 = 2112;
                    v78 = v31;
                    v79 = 2112;
                    v80 = v32;
                    v81 = 2112;
                    v82 = v26;
                    _os_log_impl(&dword_220099000, v29, OS_LOG_TYPE_DEFAULT, "Sending invitation message with new encryption key ratchet index %ld from handle %@ to %@ with invitation payload %@", buf, 0x2Au);
                  }

                  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v33 = [v67 statusType];
                  [v29 setObject:v33 forKeyedSubscript:@"s"];

                  v34 = [v67 identifier];
                  [v29 setObject:v34 forKeyedSubscript:@"c"];

                  v35 = [v63 base64EncodedStringWithOptions:0];
                  [v29 setObject:v35 forKeyedSubscript:@"r"];

                  v36 = MEMORY[0x277CCABB0];
                  v37 = [MEMORY[0x277CBEAA8] date];
                  [v37 timeIntervalSince1970];
                  v38 = [v36 numberWithDouble:?];
                  [v29 setObject:v38 forKeyedSubscript:@"d"];

                  v66 = v26;
                  v39 = [v26 payloadData];
                  v40 = v39;
                  if (v39)
                  {
                    v41 = [v39 base64EncodedStringWithOptions:0];
                    [v29 setObject:v41 forKeyedSubscript:@"p"];
                  }

                  messagingProvider = self->_messagingProvider;
                  v43 = [v29 copy];
                  v68 = 0;
                  v69 = 0;
                  v44 = [(SKAMessagingProviding *)messagingProvider sendMessage:v43 toHandle:v24 fromHandle:v25 limitToPresenceCapable:0 identifier:&v69 error:&v68];
                  v45 = v69;
                  v46 = v68;

                  v47 = +[SKAPowerLogger shared];
                  [v47 logEvent:2 ofType:0 onDatabaseChannel:v67];

                  v48 = +[SKAInvitationManager logger];
                  v49 = v48;
                  if (v44)
                  {
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v76 = v45;
                      _os_log_impl(&dword_220099000, v49, OS_LOG_TYPE_DEFAULT, "Invitation sent successfully. ID: %@", buf, 0xCu);
                    }

                    v58 = 1;
                    v26 = v66;
                  }

                  else
                  {
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v76 = v46;
                      v77 = 2112;
                      v78 = v29;
                      v79 = 2112;
                      v80 = v45;
                      _os_log_error_impl(&dword_220099000, v49, OS_LOG_TYPE_ERROR, "Invitation send failed with error: %@ message: %@ ID: %@", buf, 0x20u);
                    }

                    v26 = v66;
                    if (v59)
                    {
                      v50 = v46;
                      *v59 = v46;
                    }
                  }

                  v21 = v61;
                  self = v62;
                  v20 = v64;
                }

                else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v76 = v25;
                  _os_log_error_impl(&dword_220099000, v29, OS_LOG_TYPE_ERROR, "Database InvitedUser sender handle fails validation, not inviting from %@", buf, 0xCu);
                }
              }

              else
              {
                v25 = +[SKAInvitationManager logger];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v76 = v23;
                  _os_log_error_impl(&dword_220099000, v25, OS_LOG_TYPE_ERROR, "Database InvitedUser does not have an invited SKHandle: %@", buf, 0xCu);
                }
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
          }

          while (v20);
          v10 = v56;
          v11 = v60;
          v51 = v58;
        }

        else
        {
          v51 = 0;
          v11 = v60;
        }
      }

      else
      {
        obj = +[SKAInvitationManager logger];
        v10 = v56;
        v11 = v60;
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
        }

        v51 = 0;
      }
    }

    else
    {
      v52 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
      }

      v10 = v56;
      v11 = v60;
      if (v59)
      {
        [SKAError errorWithCode:404 underlyingError:v57];
        *v59 = v51 = 0;
      }

      else
      {
        v51 = 0;
      }
    }
  }

  else
  {
    v57 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
    }

    v51 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v51 & 1;
}

- (BOOL)_sendInvitationMessageForPresenceChannel:(id)a3 toInvitedUsers:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v7 = a4;
  if (![v7 count])
  {
    obj = +[SKAInvitationManager logger];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
    }

    goto LABEL_26;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (!v39)
  {
LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  v33 = a5;
  v32 = v7;
  v34 = 0;
  v38 = *v43;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v43 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v42 + 1) + 8 * i);
      v10 = [v9 invitedSKHandle];
      if (v10)
      {
        v11 = [v9 senderSKHandle];
        v12 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 handleString];
          *buf = 138412290;
          v47 = v13;
          _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Sending presence invitation message to handle %@", buf, 0xCu);
        }

        v14 = [(SKAInvitationManager *)self invitationMessageForPresenceChannel:v37];
        messagingProvider = self->_messagingProvider;
        v16 = [v14 copy];
        v40 = 0;
        v41 = 0;
        v17 = [(SKAMessagingProviding *)messagingProvider sendMessage:v16 toHandle:v10 fromHandle:v11 limitToPresenceCapable:1 identifier:&v41 error:&v40];
        v18 = v41;
        v19 = v40;

        v20 = +[SKAPowerLogger shared];
        [v20 logEvent:2 ofType:0 onDatabaseChannel:v37];

        v21 = +[SKAInvitationManager logger];
        v22 = v21;
        if (v17)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v18;
            _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Presence invitation sent successfully. ID:%@", buf, 0xCu);
          }

          v23 = [SKAOutgoingInvitationState alloc];
          v24 = [v10 copy];
          v25 = [v11 copy];
          v26 = [v37 identifier];
          v27 = [(SKAOutgoingInvitationState *)v23 initWithToHandle:v24 fromHandle:v25 channelIdentifier:v26];

          [(NSMutableDictionary *)self->_outgoingInvitationMapping setObject:v27 forKeyedSubscript:v18];
          v34 = 1;
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v47 = v19;
            v48 = 2112;
            v49 = v14;
            v50 = 2112;
            v51 = v18;
            _os_log_error_impl(&dword_220099000, v22, OS_LOG_TYPE_ERROR, "Presence invitation send failed with error: %@ message: %@, ID:%@", buf, 0x20u);
          }

          if (v33)
          {
            v28 = v19;
            *v33 = v19;
          }
        }
      }

      else
      {
        v11 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v47 = v9;
          _os_log_error_impl(&dword_220099000, v11, OS_LOG_TYPE_ERROR, "Database InvitedUser does not have an invited SKHandle: %@", buf, 0xCu);
        }
      }
    }

    v39 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  }

  while (v39);
  v7 = v32;
  v29 = v34;
LABEL_27:

  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

- (id)invitationMessageForPresenceChannel:(id)a3
{
  v4 = a3;
  v5 = [v4 presenceServerKey];
  v6 = [v4 presencePeerKey];
  v7 = [v4 presenceMembershipKey];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [v4 presenceIdentifier];
  [v8 setObject:v9 forKeyedSubscript:@"pr"];

  v10 = [v4 identifier];
  [v8 setObject:v10 forKeyedSubscript:@"c"];

  v11 = [v4 channelToken];
  v12 = [v11 base64EncodedStringWithOptions:0];
  [v8 setObject:v12 forKeyedSubscript:@"ct"];

  v13 = [v5 base64EncodedStringWithOptions:0];
  [v8 setObject:v13 forKeyedSubscript:@"sk"];

  v14 = [v6 base64EncodedStringWithOptions:0];
  [v8 setObject:v14 forKeyedSubscript:@"pk"];

  v15 = [v7 base64EncodedStringWithOptions:0];
  [v8 setObject:v15 forKeyedSubscript:@"mk"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [(SKAInvitationManager *)self channelManager];
  v18 = [v17 serverTime];
  [v18 timeIntervalSince1970];
  v19 = [v16 numberWithDouble:?];
  [v8 setObject:v19 forKeyedSubscript:@"d"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [v4 dateChannelCreated];
  [v21 timeIntervalSince1970];
  v22 = [v20 numberWithDouble:?];
  [v8 setObject:v22 forKeyedSubscript:@"cd"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isPersonal")}];
  [v8 setObject:v23 forKeyedSubscript:@"ip"];

  v24 = [v4 serviceIdentifier];

  [v8 setObject:v24 forKeyedSubscript:@"si"];

  return v8;
}

- (id)_validateInvitedHandles:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138412290;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([(SKAInvitationManager *)self _validateInvitedHandle:v12, v19, v20])
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = v12;
            _os_log_error_impl(&dword_220099000, v13, OS_LOG_TYPE_ERROR, "Invited handle failed validation, ignoring: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  v14 = [v5 array];
  v15 = [v14 count];
  if (v15 != [v6 count])
  {
    v16 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _validateInvitedHandles:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_validateInvitedHandle:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D18A48]);
  v5 = [v3 handleString];
  v6 = [v4 initWithUnprefixedURI:v5];

  if (!v6 || ([v3 handleString], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, !v8))
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _validateInvitedHandle:];
    }

    goto LABEL_7;
  }

  v9 = [v6 unprefixedURI];
  v10 = [v9 length];

  if (!v10)
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _validateInvitedHandle:v6];
    }

LABEL_7:

    v11 = 0;
    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (int64_t)handleIncomingInvitationMessage:(id)a3 fromHandle:(id)a4 fromID:(id)a5 fromMergeID:(id)a6 toHandle:(id)a7 messageGuid:(id)a8
{
  v75 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v15;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Incoming invitation from handle: %@", buf, 0xCu);
  }

  v21 = [v14 ska_stringForKey:@"c"];
  if ([v21 length])
  {
    v63 = v18;
    v22 = [v14 ska_dateFromUnixTimestampForKey:@"d"];
    v23 = v22;
    if (!v22)
    {
      v26 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      goto LABEL_79;
    }

    v58 = v22;
    v24 = v15;
    v25 = v19;
    v60 = v16;
    v26 = [v14 ska_stringForKey:@"s"];
    v27 = [v14 ska_stringForKey:@"pr"];
    v59 = v21;
    v62 = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    v28 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForSubscriptionIdentifier:v21 databaseContext:?];
    v29 = +[SKAPowerLogger shared];
    v61 = v28;
    [v29 logEvent:2 ofType:1 onDatabaseChannel:v28];

    if (-[NSObject length](v26, "length") && [v27 length])
    {
      v30 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v27;
      v19 = v25;
LABEL_10:
      v15 = v24;
      v23 = v58;
      v21 = v59;
LABEL_78:

      v16 = v60;
LABEL_79:

      v18 = v63;
      goto LABEL_80;
    }

    v57 = v27;
    if ([v26 length])
    {
      v33 = +[SKAInvitationManager logger];
      v19 = v25;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v33, OS_LOG_TYPE_DEFAULT, "Treating invite as a status invite", buf, 2u);
      }

      v15 = v24;
      if (self->_trafficModeEnabled)
      {
        v30 = +[SKAInvitationManager logger];
        v23 = v58;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }

LABEL_46:
        v31 = 0;
        v32 = v57;
        v21 = v59;
        goto LABEL_78;
      }

      v23 = v58;
      if ([v26 isEqualToString:@"com.apple.availability"])
      {
        v30 = +[SKAInvitationManager logger];
        v21 = v59;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }
      }

      else
      {
        v21 = v59;
        if ([SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v26])
        {
          v30 = [v14 ska_dataFrombase64EncodedStringForKey:@"r"];
          if ([v30 length])
          {
            [(SKAInvitationManager *)self acceptInvitationMessage:v14 fromHandle:v15 toHandle:v63 messageGuid:v19 existingChannel:v61 databaseContext:v62];
            v31 = 1;
LABEL_56:
            v32 = v57;
            goto LABEL_78;
          }

          v38 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
          }
        }

        else
        {
          v30 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
          }
        }
      }

      v31 = 0;
      goto LABEL_56;
    }

    v56 = v17;
    v34 = [v27 length];
    v35 = +[SKAInvitationManager logger];
    v30 = v35;
    v19 = v25;
    if (!v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v17 = v56;
      v32 = v57;
      goto LABEL_10;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v30, OS_LOG_TYPE_DEFAULT, "Treating invite as a presence invite", buf, 2u);
    }

    v17 = v56;
    v15 = v24;
    if (![(SKAInvitationManager *)self presenceEnabledByServer])
    {
      v30 = +[SKAInvitationManager logger];
      v23 = v58;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
      }

      goto LABEL_46;
    }

    v30 = [v14 ska_dataFrombase64EncodedStringForKey:@"ct"];
    v23 = v58;
    if (![v30 length])
    {
      +[SKAInvitationManager logger];
      v55 = v21 = v59;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v57;
      goto LABEL_77;
    }

    v55 = [v14 ska_dataFrombase64EncodedStringForKey:@"pk"];
    v21 = v59;
    if (![v55 length])
    {
      v54 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v57;
      goto LABEL_76;
    }

    v54 = [v14 ska_dataFrombase64EncodedStringForKey:@"sk"];
    if (![v54 length])
    {
      v53 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v57;
      goto LABEL_75;
    }

    v53 = [v14 ska_dataFrombase64EncodedStringForKey:@"mk"];
    if ([v53 length])
    {
      v36 = [(SKAInvitationManager *)self messagingProvider];
      v48 = [v36 isFromIDFromSelfAccount:v60];

      v37 = [v14 ska_numberForKey:@"ip"];
      v50 = [v37 BOOLValue];

      if (!v50 || (v48 & 1) != 0)
      {
        v39 = [v57 clientIDFromPresenceIdentifier];
        v17 = v56;
        v51 = v39;
        if (v39)
        {
          v40 = v39;
          v41 = [v39 isEqualToString:@"homed"];
          v42 = @"com.apple.private.alloy.status.keysharing";
          if (v41)
          {
            v42 = @"com.apple.private.alloy.home";
          }

          v47 = v42;
          if (([v40 isEqualToString:@"groupsessionservice"]& 1) != 0)
          {
            v43 = 1;
          }

          else
          {
            v43 = [v40 isEqualToString:@"mediaremoted"];
          }

          v32 = v57;
          if ((v48 & 1) == 0)
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke;
            v64[3] = &unk_27843DD88;
            v64[4] = self;
            v49 = v43;
            v65 = v14;
            v66 = v15;
            v67 = v63;
            v68 = v19;
            v69 = v61;
            v70 = v62;
            v72 = v49;
            v52 = v51;
            v71 = v52;
            v17 = v56;
            [(SKAInvitationManager *)self shouldAcceptInvitationMessageForPresenceIdentifier:v57 fromHandle:v66 fromMergeID:v56 inServiceFirewall:v47 databaseContext:v70 completion:v64];

            v31 = 2;
            goto LABEL_75;
          }

          [(SKAInvitationManager *)self acceptInvitationMessage:v14 fromHandle:v15 toHandle:v63 messageGuid:v19 existingChannel:v61 databaseContext:v62];
          v31 = 1;
LABEL_74:

LABEL_75:
LABEL_76:

LABEL_77:
          goto LABEL_78;
        }

        v44 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }
      }

      else
      {
        +[SKAInvitationManager logger];
        v51 = v17 = v56;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }
      }
    }

    else
    {
      v51 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }
    }

    v31 = 0;
    v32 = v57;
    goto LABEL_74;
  }

  v23 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
  }

  v31 = 0;
LABEL_80:

  v45 = *MEMORY[0x277D85DE8];
  return v31;
}

void __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);

    [v3 acceptInvitationMessage:v4 fromHandle:v5 toHandle:v6 messageGuid:v7 existingChannel:v8 databaseContext:v9];
  }

  else
  {
    v10 = *(a1 + 96);
    v11 = +[SKAInvitationManager logger];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (v10 == 1)
    {
      if (v12)
      {
        __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_2(a1);
      }

      [*(a1 + 32) acceptInvitationMessage:*(a1 + 40) fromHandle:*(a1 + 48) toHandle:*(a1 + 56) messageGuid:*(a1 + 64) existingChannel:*(a1 + 72) databaseContext:*(a1 + 80)];
    }

    else
    {
      if (v12)
      {
        __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_1(a1);
      }
    }
  }
}

- (void)shouldAcceptInvitationMessageForPresenceIdentifier:(id)a3 fromHandle:(id)a4 fromMergeID:(id)a5 inServiceFirewall:(id)a6 databaseContext:(id)a7 completion:(id)a8
{
  v63 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v40 = a4;
  v37 = a5;
  v38 = a6;
  v15 = a7;
  v41 = a8;
  v39 = v15;
  v16 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v14 isPersonal:0 databaseContext:v15];
  if (v16)
  {
    v17 = [(SKADatabaseManaging *)self->_databaseManager receivedInvitationsForPresenceIdentifier:v14 isPersonal:0 databaseContext:v15];
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      v20 = [v16 invitedUsers];
      *buf = 134218498;
      v58 = v19;
      v59 = 2048;
      v60 = [v20 count];
      v61 = 2112;
      v62 = v14;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Found %lu old invitations and %lu previously invited users for presence identifier: %@", buf, 0x20u);
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = [v16 invitedUsers];
    v23 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v23)
    {
      v24 = *v52;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = [*(*(&v51 + 1) + 8 * i) invitedSKHandle];
          if (v26)
          {
            [v21 addObject:v26];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v23);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = v17;
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v28)
    {
      v29 = *v48;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v48 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = [*(*(&v47 + 1) + 8 * j) senderSKHandle];
          if (v31)
          {
            [v21 addObject:v31];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v28);
    }

    v32 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v40;
      v59 = 2112;
      v60 = v21;
      _os_log_impl(&dword_220099000, v32, OS_LOG_TYPE_DEFAULT, "Querying if sender %@ is in list of valid sender handles: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    messagingProvider = self->_messagingProvider;
    v34 = [v21 copy];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke;
    v42[3] = &unk_27843DDD8;
    objc_copyWeak(&v46, buf);
    v43 = v40;
    v45 = v41;
    v44 = v38;
    [(SKAMessagingProviding *)messagingProvider listOfValidSenderHandles:v34 containsSenderMergeID:v37 completion:v42];

    objc_destroyWeak(&v46);
    objc_destroyWeak(buf);
  }

  else
  {
    v35 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, "Presence channel has never been seen before, accepting", buf, 2u);
    }

    (*(v41 + 2))(v41, 1);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    v5 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Sender %@ was in list of valid sender handles, accepting", buf, 0xCu);
    }

    v7 = *(*(a1 + 48) + 16);
LABEL_12:
    v7();
    goto LABEL_13;
  }

  v8 = *(a1 + 40);
  v9 = +[SKAInvitationManager logger];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (!v8)
  {
    if (v10)
    {
      __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_2(a1);
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  if (v10)
  {
    __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_1(a1, (a1 + 40));
  }

  v11 = [WeakRetained messagingProvider];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111;
  v15[3] = &unk_27843DDB0;
  v16 = v12;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  [v11 isHandle:v16 inFirewallForService:v13 completion:v15];

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111(void *a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = +[SKAInvitationManager logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Sender %@ was in the firewall for %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111_cold_1(a1);
  }

  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)acceptInvitationMessage:(id)a3 fromHandle:(id)a4 toHandle:(id)a5 messageGuid:(id)a6 existingChannel:(id)a7 databaseContext:(id)a8
{
  v77 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v60 = a4;
  v58 = a5;
  v50 = a6;
  v57 = a7;
  v15 = a8;
  v49 = [v14 ska_stringForKey:@"c"];
  v59 = [v14 ska_dateFromUnixTimestampForKey:@"d"];
  v52 = [v14 ska_dataFrombase64EncodedStringForKey:@"r"];
  v51 = [v14 ska_dataFrombase64EncodedStringForKey:@"p"];
  v61 = [v14 ska_stringForKey:@"s"];
  v16 = [v14 ska_stringForKey:@"pr"];
  v55 = [v14 ska_dataFrombase64EncodedStringForKey:@"ct"];
  v54 = [v14 ska_dataFrombase64EncodedStringForKey:@"pk"];
  v53 = [v14 ska_dataFrombase64EncodedStringForKey:@"sk"];
  v48 = [v14 ska_dataFrombase64EncodedStringForKey:@"mk"];
  v17 = [v14 ska_dateFromUnixTimestampForKey:@"cd"];
  if (!v17)
  {
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:];
    }

    v19 = [(SKAInvitationManager *)self channelManager];
    v17 = [v19 serverTime];
  }

  v47 = [v14 ska_stringForKey:@"si"];
  v20 = [v14 ska_numberForKey:@"ip"];
  v21 = [v20 BOOLValue];

  v22 = [v61 length];
  v46 = v22 == 0;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v56 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v16 isPersonal:0 databaseContext:v15];
  if (v57)
  {
    v24 = v57;
LABEL_25:
    [(SKAInvitationManager *)self _sendReverseInvitationIfNeededForPresenceIdentifier:v16 incomingChannel:v24 senderHandle:v60 invitedHandle:v58 dateInvitationCreated:v59 databaseContext:v15];
    if ((v23 & 1) == 0)
    {
      v32 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v32, OS_LOG_TYPE_DEFAULT, "Storing received invitation", buf, 2u);
      }

      v33 = [(SKADatabaseManaging *)self->_databaseManager createReceivedInvitationForChannel:v24 senderHandle:v60 invitedHandle:v58 invitationIdentifier:v50 dateInvitationCreated:v59 incomingRatchetState:v52 presenceIdentifier:v16 channelToken:v55 serverKey:v53 peerKey:v54 invitationPayload:v51 databaseContext:v15];
      objc_initWeak(buf, self);
      v34 = os_transaction_create();
      backgroundCleanupQueue = self->_backgroundCleanupQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke;
      block[3] = &unk_27843DE00;
      objc_copyWeak(&v70, buf);
      v63 = v24;
      v64 = v60;
      v65 = v16;
      v66 = v15;
      v67 = v61;
      v68 = v33;
      v69 = v34;
      v36 = v34;
      v37 = v33;
      dispatch_async(backgroundCleanupQueue, block);

      objc_destroyWeak(&v70);
      objc_destroyWeak(buf);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained invitationManager:self didReceiveInvitationWithType:v46 forChannel:v24 withExistingChannel:v56];

    goto LABEL_30;
  }

  v25 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "No existing channel matches incoming invitation, creating new channel", buf, 2u);
  }

  if ([v61 length])
  {
    v24 = [(SKADatabaseManaging *)self->_databaseManager createChannelForStatusTypeIdentifier:v61 channelIdentifier:v49 databaseContext:v15];
  }

  else
  {
    if (![v16 length])
    {
      goto LABEL_31;
    }

    v44 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v16 isPersonal:0 databaseContext:v15];
    v45 = [objc_alloc(MEMORY[0x277D68100]) initWithServiceIdentifier:v47];
    [v45 setIsPersonal:v21];
    v24 = [(SKADatabaseManaging *)self->_databaseManager createPresenceChannelForPresenceIdentifier:v16 channelIdentifier:v49 channelToken:v55 peerKey:v54 serverKey:v53 membershipKey:v48 creationDate:v17 options:v45 databaseContext:v15];
    v43 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v16 isPersonal:0 databaseContext:v15];
    if (v44)
    {
      if (v24)
      {
        v26 = [v24 identifier];
        v27 = [v43 identifier];
        v41 = [v26 isEqualToString:v27];

        if (v41)
        {
          v42 = [(SKADatabaseManaging *)self->_databaseManager copyInvitedUsersFromChannel:v44 toChannel:v24 databaseContext:v15];
          v28 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v44 identifier];
            v29 = [v24 identifier];
            v30 = v29;
            v31 = @"NO";
            *buf = 138412802;
            v72 = v40;
            v73 = 2112;
            if (v42)
            {
              v31 = @"YES";
            }

            v74 = v29;
            v75 = 2112;
            v76 = v31;
            _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "Did copy invited users from channel %@ to %@: %@", buf, 0x20u);
          }
        }
      }
    }
  }

  if (v24)
  {
    goto LABEL_25;
  }

LABEL_31:
  v24 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:];
  }

LABEL_30:

  v39 = *MEMORY[0x277D85DE8];
}

void __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  v4 = [WeakRetained databaseManager];
  v5 = [v4 newBackgroundContext];

  v6 = [*(a1 + 32) channelType];
  if (v6)
  {
    if (v6 != 1)
    {
      v10 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke_cold_1((a1 + 32));
      }

      v9 = 0;
      goto LABEL_10;
    }

    v7 = [v3 databaseManager];
    v8 = [v7 allExistingChannelsForHandle:*(a1 + 40) presenceIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  }

  else
  {
    v7 = [v3 databaseManager];
    v8 = [v7 allExistingChannelsForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 64) databaseContext:*(a1 + 56)];
  }

  v9 = v8;

LABEL_10:
  v11 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138412290;
    v33 = v12;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Cleaning up ReceivedInvitations from handle: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        v19 = [v3 databaseManager];
        v20 = [v18 identifier];
        [v19 cleanupOldReceivedInvitationsForChannelIdentifier:v20 excludingInvitation:*(a1 + 72) databaseContext:v5];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v21 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 40);
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Removing old channels for handle: %@", buf, 0xCu);
  }

  v23 = [v3 databaseManager];
  [v23 cleanupOldChannelsForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 64) databaseContext:v5];

  v24 = *(a1 + 80);
  v25 = objc_opt_self();

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:(id)a3 incomingChannel:(id)a4 senderHandle:(id)a5 invitedHandle:(id)a6 dateInvitationCreated:(id)a7 databaseContext:(id)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v14 length] && +[SKAServerBag presenceReverseInviteEnabledByServer](SKAServerBag, "presenceReverseInviteEnabledByServer"))
  {
    v40 = self;
    v20 = -[SKADatabaseManaging existingChannelForPresenceIdentifier:isPersonal:databaseContext:](self->_databaseManager, "existingChannelForPresenceIdentifier:isPersonal:databaseContext:", v14, [v15 isPersonal], v19);
    v21 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [v15 dateChannelCreated];
      v23 = v22 = v20;
      v24 = [v22 dateChannelCreated];
      *buf = 138412546;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "incoming channel creation date: %@ current channel creation date: %@", buf, 0x16u);

      v20 = v22;
    }

    if (v20)
    {
      v25 = [v15 dateChannelCreated];
      v26 = [v20 dateChannelCreated];
      v27 = v20;
      v28 = [v25 compare:v26];

      v29 = v28 == -1;
      v20 = v27;
      if (v29)
      {
        if ([(SKARateLimiter *)v40->_rateLimiter isUnderRequestLimit])
        {
          [(SKARateLimiter *)v40->_rateLimiter recordRequest];
          v30 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_220099000, v30, OS_LOG_TYPE_DEFAULT, "Received an invite but creation date is lower than current channel, sending reverse invite", buf, 2u);
          }

          v31 = [SKADatabaseInvitedUser alloc];
          v39 = [v16 normalizedHandleString];
          v32 = [v17 normalizedHandleString];
          v33 = [(SKADatabaseInvitedUser *)v31 initWithInvitedHandle:v39 senderHande:v32 invitationPayloadData:0 dateInvitationPayloadCreated:v18];
          v42 = v33;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];

          v41 = 0;
          v20 = v27;
          LOBYTE(v33) = [(SKAInvitationManager *)v40 _sendInvitationMessageForPresenceChannel:v27 toInvitedUsers:v34 error:&v41];
          v35 = v41;
          if ((v33 & 1) == 0)
          {
            v36 = v35;
            v37 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [SKAInvitationManager _sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:];
            }

            v20 = v27;
            v35 = v36;
          }
        }

        else
        {
          v34 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager _sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:];
          }
        }
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)isHandleInviteable:(id)a3 fromHandle:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && (-[SKAInvitationManager messagingProvider](self, "messagingProvider"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isHandleAvailableToMessageFrom:v9], v11, (v12 & 1) == 0))
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager isHandleInviteable:fromHandle:completion:];
    }

    v14 = [SKAError errorWithCode:500];
    v10[2](v10, 0, v14);
  }

  else
  {
    v13 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "fromHandle %@ is a valid sender handle for active iCloud account", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__SKAInvitationManager_isHandleInviteable_fromHandle_completion___block_invoke;
    v17[3] = &unk_27843DE28;
    v18 = v8;
    v19 = v10;
    [(SKAInvitationManager *)self _isHandleInviteable:v18 completion:v17];

    v14 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __65__SKAInvitationManager_isHandleInviteable_fromHandle_completion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "toHandle %@ inviteability check completed with result: %d", &v8, 0x12u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_isHandleInviteable:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKAInvitationManager *)self _validateInvitedHandle:v6])
  {
    v8 = [(SKAInvitationManager *)self messagingProvider];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SKAInvitationManager__isHandleInviteable_completion___block_invoke;
    v10[3] = &unk_27843DD10;
    v11 = v7;
    [v8 isHandleMessageable:v6 completion:v10];
  }

  else
  {
    v9 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _isHandleInviteable:completion:];
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)isPresenceHandleInviteable:(id)a3 fromHandle:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && (-[SKAInvitationManager messagingProvider](self, "messagingProvider"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isHandleAvailableToMessageFrom:v9], v11, (v12 & 1) == 0))
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager isHandleInviteable:fromHandle:completion:];
    }

    v14 = [SKAError errorWithCode:500];
    v10[2](v10, 0, v14);
  }

  else
  {
    v13 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "fromHandle %@ is a valid sender handle for active iCloud account", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__SKAInvitationManager_isPresenceHandleInviteable_fromHandle_completion___block_invoke;
    v17[3] = &unk_27843DE28;
    v18 = v8;
    v19 = v10;
    [(SKAInvitationManager *)self _isPresenceHandleInviteable:v18 completion:v17];

    v14 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __73__SKAInvitationManager_isPresenceHandleInviteable_fromHandle_completion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "toHandle %@ inviteability check completed with result: %d", &v8, 0x12u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_isPresenceHandleInviteable:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKAInvitationManager *)self _validateInvitedHandle:v6])
  {
    v8 = [(SKAInvitationManager *)self messagingProvider];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SKAInvitationManager__isPresenceHandleInviteable_completion___block_invoke;
    v10[3] = &unk_27843DD10;
    v11 = v7;
    [v8 isHandleMessageableForPresence:v6 completion:v10];
  }

  else
  {
    v9 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _isHandleInviteable:completion:];
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forStatusTypeIdentifier:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  databaseManager = self->_databaseManager;
  v14 = a5;
  v15 = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  v16 = [(SKAInvitationManager *)self databaseManager];
  v17 = [v16 existingRemovedUserWithHandle:v10 statusTypeIdentifier:v14 withDatabaseContext:v15];

  if (v17)
  {
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "handle %@ is present as a removed user", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__SKAInvitationManager_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke;
  v21[3] = &unk_27843DE50;
  v23 = v17 != 0;
  v22 = v12;
  v19 = v12;
  [(SKAInvitationManager *)self isHandleInviteable:v10 fromHandle:v11 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __94__SKAInvitationManager_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D680C8];
  v6 = a3;
  v7 = [[v5 alloc] initWithIsInvitable:a2 wasRemoved:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forPresenceIdentifier:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  databaseManager = self->_databaseManager;
  v14 = a5;
  v15 = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  v16 = [(SKAInvitationManager *)self databaseManager];
  v17 = [v16 existingRemovedUserWithHandle:v10 presenceIdentifier:v14 withDatabaseContext:v15];

  if (v17)
  {
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "handle %@ is present as a removed user", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__SKAInvitationManager_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke;
  v21[3] = &unk_27843DE50;
  v23 = v17 != 0;
  v22 = v12;
  v19 = v12;
  [(SKAInvitationManager *)self isPresenceHandleInviteable:v10 fromHandle:v11 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __92__SKAInvitationManager_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D680C8];
  v6 = a3;
  v7 = [[v5 alloc] initWithIsInvitable:a2 wasRemoved:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();
}

- (id)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:(id)a3 databaseContext:(id)a4 invitationWasSentViaKeyRoll:(BOOL *)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 currentOutgoingRatchet];
  v13 = +[SKAInvitationManager logger];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [v12 currentSubscriptionKeys];
      *buf = 134217984;
      v31 = [v15 index];
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Found existing encryption keys, attempting to ratchet forward from current ratchet index: %ld", buf, 0xCu);
    }

    if ([v12 ratchetForward])
    {
      v16 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v12 currentSubscriptionKeys];
        v18 = [v17 index];
        *buf = 134217984;
        v31 = v18;
        _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Ratchet forward succeeded. New ratchet index: %ld. Persisting this state.", buf, 0xCu);
      }

      v19 = [v12 serializedData];
      v20 = [(SKAInvitationManager *)self databaseManager];
      v21 = [v20 updatePersonalChannel:v10 withCurrentOutgoingRatchetState:v19 databaseContext:v11];

      *a5 = 0;
      if (!a6)
      {
        goto LABEL_22;
      }

LABEL_16:
      *a6 = 0;
      goto LABEL_22;
    }

    v28 = 0;
    v24 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v10 databaseContext:v11 error:&v28];
    v19 = v28;
    if (v24)
    {
LABEL_15:
      *a5 = 1;
      v21 = 0;
      if (!a6)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    v23 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:];
    }
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Channel has no existing encryption key data, initiating key roll to generate first key", buf, 2u);
    }

    v29 = 0;
    v22 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v10 databaseContext:v11 error:&v29];
    v19 = v29;
    if (v22)
    {
      goto LABEL_15;
    }

    v23 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:];
    }
  }

  if (a6)
  {
    v25 = v19;
    *a6 = v19;
  }

  v21 = 0;
  *a5 = 0;
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_addInvitedHandles:(id)a3 senderHandle:(id)a4 toDatabaseForPersonalChannel:(id)a5 withInvitationPayload:(id)a6 databaseContext:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v37 = a4;
  v13 = a5;
  v36 = a6;
  v14 = a7;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v12;
  v15 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v39;
    *&v16 = 138412290;
    v33 = v16;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        v21 = [v20 handleString];
        v22 = [v21 length];

        if (v22)
        {
          v23 = [(SKAInvitationManager *)self _updateOrCreateInvitedUserWithHandle:v20 senderHandle:v37 onChannel:v13 withInvitationPayload:v36 databaseContext:v14];
          if ([v23 count])
          {
            [v34 addObjectsFromArray:v23];
            databaseManager = self->_databaseManager;
            v25 = [v13 statusType];
            v26 = [(SKADatabaseManaging *)databaseManager existingRemovedUserWithHandle:v20 statusTypeIdentifier:v25 withDatabaseContext:v14];

            if (!v26)
            {
              goto LABEL_17;
            }

            v27 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v33;
              v43 = v20;
              _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Removing handle %@ from removed users because of invite", buf, 0xCu);
            }

            v28 = self->_databaseManager;
            v29 = [v13 statusType];
            [(SKADatabaseManaging *)v28 deleteRemovedUserWithHandle:v20 statusTypeIdentifier:v29 databaseContext:v14];
          }

          else
          {
            v29 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = v33;
              v43 = v20;
              _os_log_error_impl(&dword_220099000, v29, OS_LOG_TYPE_ERROR, "Error fetching or update invited user for handle: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v23 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v33;
            v43 = v20;
            _os_log_error_impl(&dword_220099000, v23, OS_LOG_TYPE_ERROR, "Invited handle has a nil handle string: %@", buf, 0xCu);
          }
        }

LABEL_17:
      }

      v17 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v17);
  }

  v30 = [v34 copy];
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_addInvitedHandles:(id)a3 senderHandle:(id)a4 toDatabaseForPresenceChannel:(id)a5 databaseContext:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v34 = a4;
  v11 = a5;
  v12 = a6;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v36;
    *&v14 = 138412290;
    v31 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v18 handleString];
        v20 = [v19 length];

        if (v20)
        {
          v21 = [(SKAInvitationManager *)self _updateOrCreateInvitedUserWithHandle:v18 senderHandle:v34 onChannel:v11 withInvitationPayload:0 databaseContext:v12];
          if ([v21 count])
          {
            [v32 addObjectsFromArray:v21];
            databaseManager = self->_databaseManager;
            v23 = [v11 presenceIdentifier];
            v24 = [(SKADatabaseManaging *)databaseManager existingRemovedUserWithHandle:v18 presenceIdentifier:v23 withDatabaseContext:v12];

            if (!v24)
            {
              goto LABEL_17;
            }

            v25 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v31;
              v40 = v18;
              _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Removing handle %@ from removed users because of invite", buf, 0xCu);
            }

            v26 = self->_databaseManager;
            v27 = [v11 presenceIdentifier];
            [(SKADatabaseManaging *)v26 deleteRemovedUserWithHandle:v18 presenceIdentifier:v27 databaseContext:v12];
          }

          else
          {
            v27 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = v31;
              v40 = v18;
              _os_log_error_impl(&dword_220099000, v27, OS_LOG_TYPE_ERROR, "Error fetching or update invited user for handle: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v21 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v31;
            v40 = v18;
            _os_log_error_impl(&dword_220099000, v21, OS_LOG_TYPE_ERROR, "Invited handle has a nil handle string: %@", buf, 0xCu);
          }
        }

LABEL_17:
      }

      v15 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v15);
  }

  v28 = [v32 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_updateOrCreateInvitedUserWithHandle:(id)a3 senderHandle:(id)a4 onChannel:(id)a5 withInvitationPayload:(id)a6 databaseContext:(id)a7
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = v14;
  v17 = [(SKADatabaseManaging *)self->_databaseManager existingInvitedUsersForInvitedHandle:v12 onChannel:v14 databaseContext:v16];
  v18 = 0x27843D000uLL;
  if (![v17 count])
  {
    goto LABEL_30;
  }

  v19 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v61 = [v17 count];
    v62 = 2112;
    v63 = v12;
    _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Found %ld existing invited user for invitedHandle %@ (ignoring sender handle).", buf, 0x16u);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v20 = v17;
  v52 = [v20 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v52)
  {

LABEL_30:
    v38 = [*(v18 + 1024) logger];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v61 = v12;
      v62 = 2112;
      v63 = v13;
      _os_log_impl(&dword_220099000, v38, OS_LOG_TYPE_DEFAULT, "Could not find an existing invited user matching handle: %@ and senderHandle %@, attempting to create a new one.", buf, 0x16u);
    }

    v39 = [(SKADatabaseManaging *)self->_databaseManager createInvitedUserWithHandle:v12 senderHandle:v13 invitationPayload:v15 channel:v50 databaseContext:v16];
    if (v39)
    {
      [v47 addObject:v39];
    }

    else
    {
      v40 = [*(v18 + 1024) logger];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager _updateOrCreateInvitedUserWithHandle:senderHandle:onChannel:withInvitationPayload:databaseContext:];
      }
    }

    goto LABEL_38;
  }

  v44 = v17;
  v45 = v12;
  v48 = 0;
  v51 = *v56;
  v46 = self;
  obj = v20;
  do
  {
    for (i = 0; i != v52; ++i)
    {
      if (*v56 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v55 + 1) + 8 * i);
      v23 = [v22 senderSKHandle];
      v24 = [v23 isNormalizedEqualToHandle:v13];
      v25 = v18;
      v26 = [*(v18 + 1024) logger];
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        if (v27)
        {
          v28 = [v13 handleString];
          *buf = 138412290;
          v61 = v28;
          _os_log_impl(&dword_220099000, v26, OS_LOG_TYPE_DEFAULT, "Existing invited user was invited from the same handle: %@. Updating payload, and not creating a new InvitedUser record.", buf, 0xCu);
        }

        v48 = 1;
      }

      else if (v27)
      {
        v29 = [v23 handleString];
        [v13 handleString];
        v30 = v16;
        v31 = v15;
        v33 = v32 = v13;
        *buf = 138412546;
        v61 = v29;
        v62 = 2112;
        v63 = v33;
        _os_log_impl(&dword_220099000, v26, OS_LOG_TYPE_DEFAULT, "Existing invited user was invited from %@, but we are attempting to invite from %@. Will update this users payload, but may still need to create a new InvitedUser record", buf, 0x16u);

        v13 = v32;
        v15 = v31;
        v16 = v30;
        self = v46;
      }

      v34 = [v22 invitationPayload];
      v35 = [*(v25 + 1024) logger];
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (v34 == v15)
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, "Invitation payload is already up to date", buf, 2u);
        }
      }

      else
      {
        if (v36)
        {
          *buf = 138412290;
          v61 = v22;
          _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, "Updating invitation payload on invitedUser: %@", buf, 0xCu);
        }

        v35 = [(SKADatabaseManaging *)self->_databaseManager updateInvitationPayload:v15 onExistingInvitedUser:v22 channel:v50 databaseContext:v16];
        if (v35)
        {
          [v47 addObject:v35];
        }

        else
        {
          v37 = [*(v25 + 1024) logger];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager _updateOrCreateInvitedUserWithHandle:v54 senderHandle:v37 onChannel:? withInvitationPayload:? databaseContext:?];
          }
        }
      }

      v18 = v25;
    }

    v52 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  }

  while (v52);

  v17 = v44;
  v12 = v45;
  if ((v48 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_38:
  v41 = [v47 copy];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)_findOrCreatePersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:v8 databaseContext:v9];
  if (v11)
  {
    v10[2](v10, v11, 0);
  }

  else
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Could not find an existing personal status channel, attempting to create a new one.", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__SKAInvitationManager__findOrCreatePersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke;
    v13[3] = &unk_27843DE78;
    v14 = v10;
    [(SKAInvitationManager *)self _createPersonalChannelForStatusTypeIdentifier:v8 databaseContext:v9 completion:v13];
  }
}

- (void)_createPersonalChannelForStatusTypeIdentifier:(id)a3 databaseContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[SKAPowerLogger shared];
  [v11 logEvent:1 ofType:0 channelType:0 identifier:v8];

  objc_initWeak(&location, self);
  channelManager = self->_channelManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke;
  v16[3] = &unk_27843DEF0;
  objc_copyWeak(&v20, &location);
  v16[4] = self;
  v13 = v8;
  v17 = v13;
  v14 = v10;
  v19 = v14;
  v15 = v9;
  v18 = v15;
  [(SKAChannelManaging *)channelManager createChannelWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v11 = WeakRetained;
  if (v9)
  {
    if ([v9 shouldReauthForRetry])
    {
      v12 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_cold_1();
      }

      v13 = [a1[4] accountProvider];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125;
      v17[3] = &unk_27843DEC8;
      v18 = a1[5];
      v19 = v11;
      objc_copyWeak(&v22, a1 + 8);
      v21 = a1[7];
      v20 = a1[6];
      [v13 refreshCredentialForPrimaryAccountWithCompletion:v17];

      objc_destroyWeak(&v22);
    }

    else
    {
      (*(a1[7] + 2))();
    }
  }

  else
  {
    v14 = [WeakRetained databaseManager];
    v15 = [v14 createPersonalChannelForStatusTypeIdentifier:a1[5] channelIdentifier:v7 channelToken:v8 databaseContext:a1[6]];

    v16 = +[SKAPowerLogger shared];
    [v16 logEvent:1 ofType:1 onDatabaseChannel:v15];

    (*(a1[7] + 2))();
  }
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAInvitationManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125_cold_1();
    }

    (*(a1[7] + 2))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, reattempting channel creation", buf, 2u);
    }

    v6 = +[SKAPowerLogger shared];
    [v6 logEvent:1 ofType:0 channelType:0 identifier:a1[4]];

    v7 = [a1[5] channelManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_126;
    v8[3] = &unk_27843DEA0;
    objc_copyWeak(&v12, a1 + 8);
    v11 = a1[7];
    v9 = a1[4];
    v10 = a1[6];
    [v7 createChannelWithCompletion:v8];

    objc_destroyWeak(&v12);
  }
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_126(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (v8)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = [WeakRetained databaseManager];
    v12 = [v11 createPersonalChannelForStatusTypeIdentifier:*(a1 + 32) channelIdentifier:v14 channelToken:v7 databaseContext:*(a1 + 40)];

    v13 = +[SKAPowerLogger shared];
    [v13 logEvent:1 ofType:1 onDatabaseChannel:v12];

    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_unableToFindExistingInvitationForHandlesError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
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
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) handleString];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not uninvite handle(s) %@ because we could not find an existing invitation for those handle(s)", v11];
  v13 = [SKAError errorWithCode:503 customDescription:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)logger
{
  if (logger_onceToken_4 != -1)
  {
    +[SKAInvitationManager logger];
  }

  v3 = logger__logger_4;

  return v3;
}

uint64_t __30__SKAInvitationManager_logger__block_invoke()
{
  logger__logger_4 = os_log_create("com.apple.StatusKit", "SKAInvitationManager");

  return MEMORY[0x2821F96F8]();
}

- (SKAInvitationManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Invitation was not sent for handles %@ due to key roll error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:(void *)a1 toHandles:fromSenderHandle:options:completion:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 serviceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v2, v3, "Presence has been disabled by the server for identifier %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:forHandles:completion:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Error encountered during key roll for statusTypeIdentifier: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rollPersonalChannelWithStatusTypeIdentifier:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rollPresenceChannelWithPresenceIdentifier:isPersonal:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rollEncryptionKeyForChannel:databaseContext:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateInvitedHandles:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Validated invited handle set does not match unvalidated handles. Unvalidated set may have contained duplicate or invalid handles. Validated: %@ Unvalidated: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateInvitedHandle:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 unprefixedURI];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v2, v3, "Unprefixed uri for invited handle is nil: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_validateInvitedHandle:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_220099000, v2, OS_LOG_TYPE_FAULT, "Invitation was rejected for sender insecurity, dropping: %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  v7 = v3;
  _os_log_fault_impl(&dword_220099000, v4, OS_LOG_TYPE_FAULT, "Allowing invitation for allowlisted client %@: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_220099000, v4, v5, "Sender %@ was not in list of valid sender handles, checking firewall for %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isHandleInviteable:fromHandle:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isHandleInviteable:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateOrCreateInvitedUserWithHandle:(os_log_t)log senderHandle:onChannel:withInvitationPayload:databaseContext:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_220099000, log, OS_LOG_TYPE_ERROR, "Received a nil updated user from call to updateInvitationPayload", buf, 2u);
}

- (void)_updateOrCreateInvitedUserWithHandle:senderHandle:onChannel:withInvitationPayload:databaseContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end