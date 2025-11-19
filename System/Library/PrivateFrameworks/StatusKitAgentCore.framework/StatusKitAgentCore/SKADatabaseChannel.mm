@interface SKADatabaseChannel
+ (id)logger;
- (MPStatusKitOutgoingRatchet)currentOutgoingRatchet;
- (SKADatabaseChannel)initWithChannelToken:(id)a3 channelType:(int64_t)a4 identifier:(id)a5 personal:(BOOL)a6 decommissioned:(BOOL)a7 currentOutgoingRatchetState:(id)a8 dateCreated:(id)a9 statusType:(id)a10 presenceIdentifier:(id)a11 serviceIdentifier:(id)a12 invitedUsers:(id)a13 presenceServerKey:(id)a14 presencePeerKey:(id)a15 presenceMembershipKey:(id)a16;
- (SKADatabaseChannel)initWithCoreDataChannels:(id)a3;
@end

@implementation SKADatabaseChannel

- (SKADatabaseChannel)initWithChannelToken:(id)a3 channelType:(int64_t)a4 identifier:(id)a5 personal:(BOOL)a6 decommissioned:(BOOL)a7 currentOutgoingRatchetState:(id)a8 dateCreated:(id)a9 statusType:(id)a10 presenceIdentifier:(id)a11 serviceIdentifier:(id)a12 invitedUsers:(id)a13 presenceServerKey:(id)a14 presencePeerKey:(id)a15 presenceMembershipKey:(id)a16
{
  v49 = a3;
  v48 = a5;
  obj = a8;
  v46 = a8;
  v47 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v24 = a16;
  v50.receiver = self;
  v50.super_class = SKADatabaseChannel;
  v25 = [(SKADatabaseChannel *)&v50 init];
  if (v25)
  {
    v26 = [v49 copy];
    channelToken = v25->_channelToken;
    v25->_channelToken = v26;

    v25->_channelType = a4;
    v28 = [v48 copy];
    identifier = v25->_identifier;
    v25->_identifier = v28;

    v25->_personal = a6;
    v25->_decommissioned = a7;
    v30 = [v47 copy];
    dateChannelCreated = v25->_dateChannelCreated;
    v25->_dateChannelCreated = v30;

    objc_storeStrong(&v25->_currentOutgoingRatchetState, obj);
    v32 = [v18 copy];
    statusType = v25->_statusType;
    v25->_statusType = v32;

    v34 = [v19 copy];
    presenceIdentifier = v25->_presenceIdentifier;
    v25->_presenceIdentifier = v34;

    v36 = [v20 copy];
    serviceIdentifier = v25->_serviceIdentifier;
    v25->_serviceIdentifier = v36;

    v38 = [v21 copy];
    invitedUsers = v25->_invitedUsers;
    v25->_invitedUsers = v38;

    objc_storeStrong(&v25->_presenceServerKey, a14);
    objc_storeStrong(&v25->_presencePeerKey, a15);
    objc_storeStrong(&v25->_presenceMembershipKey, a16);
  }

  return v25;
}

+ (id)logger
{
  if (logger_onceToken_9 != -1)
  {
    +[SKADatabaseChannel logger];
  }

  v3 = logger__logger_9;

  return v3;
}

uint64_t __28__SKADatabaseChannel_logger__block_invoke()
{
  logger__logger_9 = os_log_create("com.apple.StatusKit", "SKADatabaseChannel");

  return MEMORY[0x2821F96F8]();
}

- (MPStatusKitOutgoingRatchet)currentOutgoingRatchet
{
  if (self->_currentOutgoingRatchetState)
  {
    v3 = objc_alloc(MEMORY[0x277D28550]);
    currentOutgoingRatchetState = self->_currentOutgoingRatchetState;
    v11 = 0;
    v5 = [v3 initWithData:currentOutgoingRatchetState error:&v11];
    v6 = v11;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = +[SKADatabaseChannel logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SKADatabaseChannel(CurrentOutgoingRatchet) *)v7 currentOutgoingRatchet];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SKADatabaseChannel)initWithCoreDataChannels:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v39 + 1) + 8 * v8) invitedUsers];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            v13 = 0;
            do
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [[SKADatabaseInvitedUser alloc] initWithCoreDataInvitedUser:*(*(&v35 + 1) + 8 * v13)];
              [v4 addObject:v14];

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v6);
  }

  v15 = [obj firstObject];
  v29 = [v15 channelToken];
  v31 = [v15 channelType];
  v30 = [v15 identifier];
  v28 = [v15 personal];
  v27 = [v15 decomissioned];
  v26 = [v15 currentOutgoingRatchetState];
  v25 = [v15 dateChannelCreated];
  v24 = [v15 statusType];
  v23 = [v15 presenceIdentifier];
  v16 = [v15 serviceIdentifier];
  v17 = [v4 copy];
  v18 = [v15 serverKey];
  v19 = [v15 peerKey];
  v20 = [v15 membershipKey];
  v33 = [(SKADatabaseChannel *)self initWithChannelToken:v29 channelType:v31 identifier:v30 personal:v28 decommissioned:v27 currentOutgoingRatchetState:v26 dateCreated:v25 statusType:v24 presenceIdentifier:v23 serviceIdentifier:v16 invitedUsers:v17 presenceServerKey:v18 presencePeerKey:v19 presenceMembershipKey:v20];

  v21 = *MEMORY[0x277D85DE8];
  return v33;
}

@end