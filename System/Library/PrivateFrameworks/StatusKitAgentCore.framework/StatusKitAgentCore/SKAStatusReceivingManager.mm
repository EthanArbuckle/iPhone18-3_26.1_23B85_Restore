@interface SKAStatusReceivingManager
+ (id)logger;
- (SKAStatusReceivingManager)initWithDatabaseManager:(id)manager encryptionManager:(id)encryptionManager delegate:(id)delegate;
- (SKAStatusReceivingManagingDelegate)delegate;
- (void)handleIncomingStatusData:(id)data onChannelIdentifier:(id)identifier dateReceived:(id)received dateExpired:(id)expired serverTime:(id)time;
@end

@implementation SKAStatusReceivingManager

- (SKAStatusReceivingManager)initWithDatabaseManager:(id)manager encryptionManager:(id)encryptionManager delegate:(id)delegate
{
  managerCopy = manager;
  encryptionManagerCopy = encryptionManager;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = SKAStatusReceivingManager;
  v12 = [(SKAStatusReceivingManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseManager, manager);
    objc_storeStrong(&v13->_encryptionManager, encryptionManager);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_DEFAULT, 0);

    v16 = dispatch_queue_create("com.apple.StatusKit.StatusReceivingManager.cleanup", v15);
    backgroundCleanupQueue = v13->_backgroundCleanupQueue;
    v13->_backgroundCleanupQueue = v16;
  }

  return v13;
}

- (void)handleIncomingStatusData:(id)data onChannelIdentifier:(id)identifier dateReceived:(id)received dateExpired:(id)expired serverTime:(id)time
{
  v60 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  expiredCopy = expired;
  timeCopy = time;
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v16 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForSubscriptionIdentifier:identifierCopy databaseContext:newBackgroundContext];
  v17 = v16;
  if (v16)
  {
    v18 = dataCopy;
    v51 = v16;
    statusType = [v16 statusType];
    v20 = [SKAServerBag statusEnabledByServerForStatusTypeIdentifier:statusType];

    v21 = +[SKAStatusReceivingManager logger];
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = identifierCopy;
        _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Found channel matching channel identifier: %@.", buf, 0xCu);
      }

      dataCopy = v18;
      v23 = [(SKAStatusEncryptionManaging *)self->_encryptionManager extractEnvelopeFromStatusEnvelopeData:v18];
      v22 = v23;
      v17 = v51;
      if (v23)
      {
        v48 = timeCopy;
        statusUniqueIdentifier = [v23 statusUniqueIdentifier];
        datePublished = [v22 datePublished];
        dateCreated = [v22 dateCreated];
        statusType2 = [v51 statusType];
        v26 = [statusType2 isEqualToString:@"com.apple.offgrid.status"];

        if (v26)
        {
          v27 = +[SKAStatusReceivingManager logger];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = @"com.apple.offgrid.status";
            _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Status type is %@, overriding creation date to make it most recent", buf, 0xCu);
          }

          v28 = [MEMORY[0x277CBEAA8] now];

          +[SKAServerBag statusValidityForOffGridPayload];
          v29 = [datePublished dateByAddingTimeInterval:?];

          v30 = v28;
          expiredCopy = v29;
        }

        else
        {
          v30 = dateCreated;
        }

        v47 = v30;
        timeCopy = v48;
        [v30 timeIntervalSinceDate:v48];
        v33 = v32;
        dataCopy = v18;
        if ([statusUniqueIdentifier length])
        {
          if (datePublished)
          {
            v31 = statusUniqueIdentifier;
            if (v33 <= 300.0)
            {
              v34 = [(SKADatabaseManaging *)self->_databaseManager existingStatusForUniqueIdentifier:statusUniqueIdentifier databaseContext:newBackgroundContext];
              v35 = +[SKAStatusReceivingManager logger];
              v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
              if (v34)
              {
                if (v36)
                {
                  *buf = 138412546;
                  v57 = statusUniqueIdentifier;
                  v58 = 2112;
                  v59 = v34;
                  _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, "We've already received a status with this unique identifier (%@), ignoring. Existing status: %@", buf, 0x16u);
                }
              }

              else
              {
                if (v36)
                {
                  *buf = 138412546;
                  v57 = statusUniqueIdentifier;
                  v58 = 2112;
                  v59 = identifierCopy;
                  _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, "Received new status %@ for channel %@", buf, 0x16u);
                }

                v35 = [(SKADatabaseManaging *)self->_databaseManager createStatusWithUniqueIdentifier:statusUniqueIdentifier dateCreated:v47 datePublished:datePublished dateReceived:v48 dateExpired:expiredCopy rawData:dataCopy channelIdentifier:identifierCopy databaseContext:newBackgroundContext];
                v37 = +[SKAStatusReceivingManager logger];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v57 = statusUniqueIdentifier;
                  _os_log_impl(&dword_220099000, v37, OS_LOG_TYPE_DEFAULT, "Saved incoming status update to database with unique identifier: %@", buf, 0xCu);
                }

                if (expiredCopy && ([MEMORY[0x277CBEAA8] now], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "timeIntervalSince1970"), v40 = v39, objc_msgSend(expiredCopy, "timeIntervalSince1970"), v42 = v41, v38, v40 > v42))
                {
                  WeakRetained = +[SKAStatusReceivingManager logger];
                  v44 = expiredCopy;
                  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_220099000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Not informing delegate of status because it has expired", buf, 2u);
                  }
                }

                else
                {
                  v44 = expiredCopy;
                  WeakRetained = objc_loadWeakRetained(&self->_delegate);
                  [WeakRetained statusReceivingManager:self didReceiveStatusUpdate:v35 onChannel:v51];
                }

                objc_initWeak(buf, self);
                backgroundCleanupQueue = self->_backgroundCleanupQueue;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __110__SKAStatusReceivingManager_handleIncomingStatusData_onChannelIdentifier_dateReceived_dateExpired_serverTime___block_invoke;
                block[3] = &unk_27843F768;
                objc_copyWeak(&v55, buf);
                v53 = identifierCopy;
                v54 = statusUniqueIdentifier;
                dispatch_async(backgroundCleanupQueue, block);

                objc_destroyWeak(&v55);
                objc_destroyWeak(buf);
                expiredCopy = v44;
                v31 = statusUniqueIdentifier;
                timeCopy = v48;
              }
            }

            else
            {
              v34 = +[SKAStatusReceivingManager logger];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                [SKAStatusReceivingManager handleIncomingStatusData:onChannelIdentifier:dateReceived:dateExpired:serverTime:];
              }
            }
          }

          else
          {
            v34 = +[SKAStatusReceivingManager logger];
            v31 = statusUniqueIdentifier;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [SKAStatusReceivingManager handleIncomingStatusData:onChannelIdentifier:dateReceived:dateExpired:serverTime:];
            }
          }
        }

        else
        {
          v34 = +[SKAStatusReceivingManager logger];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [SKAStatusReceivingManager handleIncomingStatusData:onChannelIdentifier:dateReceived:dateExpired:serverTime:];
          }

          v31 = statusUniqueIdentifier;
        }

        v17 = v51;
      }

      else
      {
        v31 = +[SKAStatusReceivingManager logger];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SKAStatusReceivingManager handleIncomingStatusData:onChannelIdentifier:dateReceived:dateExpired:serverTime:];
        }
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v17 = v51;
      [SKAStatusReceivingManager handleIncomingStatusData:v51 onChannelIdentifier:v22 dateReceived:? dateExpired:? serverTime:?];
      dataCopy = v18;
    }

    else
    {
      dataCopy = v18;
      v17 = v51;
    }
  }

  else
  {
    v22 = +[SKAStatusReceivingManager logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusReceivingManager handleIncomingStatusData:onChannelIdentifier:dateReceived:dateExpired:serverTime:];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __110__SKAStatusReceivingManager_handleIncomingStatusData_onChannelIdentifier_dateReceived_dateExpired_serverTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained databaseManager];
  v3 = [v2 newBackgroundContext];

  v4 = [WeakRetained databaseManager];
  [v4 cleanupOldStatusUpdatesForChannelIdentifier:*(a1 + 32) excludingStatusUniqueIdentifier:*(a1 + 40) databaseContext:v3];
}

+ (id)logger
{
  if (logger_onceToken_30 != -1)
  {
    +[SKAStatusReceivingManager logger];
  }

  v3 = logger__logger_30;

  return v3;
}

uint64_t __35__SKAStatusReceivingManager_logger__block_invoke()
{
  logger__logger_30 = os_log_create("com.apple.StatusKit", "SKAStatusReceivingManager");

  return MEMORY[0x2821F96F8]();
}

- (SKAStatusReceivingManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleIncomingStatusData:(void *)a1 onChannelIdentifier:(NSObject *)a2 dateReceived:dateExpired:serverTime:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 statusType];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Status type %@ disabled by server. Dropping incoming status update", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end