@interface SKADatabaseChannel
+ (id)logger;
- (MPStatusKitOutgoingRatchet)currentOutgoingRatchet;
- (SKADatabaseChannel)initWithChannelToken:(id)token channelType:(int64_t)type identifier:(id)identifier personal:(BOOL)personal decommissioned:(BOOL)decommissioned currentOutgoingRatchetState:(id)state dateCreated:(id)created statusType:(id)self0 presenceIdentifier:(id)self1 serviceIdentifier:(id)self2 invitedUsers:(id)self3 presenceServerKey:(id)self4 presencePeerKey:(id)self5 presenceMembershipKey:(id)self6;
- (SKADatabaseChannel)initWithCoreDataChannels:(id)channels;
@end

@implementation SKADatabaseChannel

- (SKADatabaseChannel)initWithChannelToken:(id)token channelType:(int64_t)type identifier:(id)identifier personal:(BOOL)personal decommissioned:(BOOL)decommissioned currentOutgoingRatchetState:(id)state dateCreated:(id)created statusType:(id)self0 presenceIdentifier:(id)self1 serviceIdentifier:(id)self2 invitedUsers:(id)self3 presenceServerKey:(id)self4 presencePeerKey:(id)self5 presenceMembershipKey:(id)self6
{
  tokenCopy = token;
  identifierCopy = identifier;
  obj = state;
  stateCopy = state;
  createdCopy = created;
  statusTypeCopy = statusType;
  presenceIdentifierCopy = presenceIdentifier;
  serviceIdentifierCopy = serviceIdentifier;
  usersCopy = users;
  keyCopy = key;
  peerKeyCopy = peerKey;
  membershipKeyCopy = membershipKey;
  v50.receiver = self;
  v50.super_class = SKADatabaseChannel;
  v25 = [(SKADatabaseChannel *)&v50 init];
  if (v25)
  {
    v26 = [tokenCopy copy];
    channelToken = v25->_channelToken;
    v25->_channelToken = v26;

    v25->_channelType = type;
    v28 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v28;

    v25->_personal = personal;
    v25->_decommissioned = decommissioned;
    v30 = [createdCopy copy];
    dateChannelCreated = v25->_dateChannelCreated;
    v25->_dateChannelCreated = v30;

    objc_storeStrong(&v25->_currentOutgoingRatchetState, obj);
    v32 = [statusTypeCopy copy];
    statusType = v25->_statusType;
    v25->_statusType = v32;

    v34 = [presenceIdentifierCopy copy];
    presenceIdentifier = v25->_presenceIdentifier;
    v25->_presenceIdentifier = v34;

    v36 = [serviceIdentifierCopy copy];
    serviceIdentifier = v25->_serviceIdentifier;
    v25->_serviceIdentifier = v36;

    v38 = [usersCopy copy];
    invitedUsers = v25->_invitedUsers;
    v25->_invitedUsers = v38;

    objc_storeStrong(&v25->_presenceServerKey, key);
    objc_storeStrong(&v25->_presencePeerKey, peerKey);
    objc_storeStrong(&v25->_presenceMembershipKey, membershipKey);
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

- (SKADatabaseChannel)initWithCoreDataChannels:(id)channels
{
  v45 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = channelsCopy;
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

        invitedUsers = [*(*(&v39 + 1) + 8 * v8) invitedUsers];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = [invitedUsers countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                objc_enumerationMutation(invitedUsers);
              }

              v14 = [[SKADatabaseInvitedUser alloc] initWithCoreDataInvitedUser:*(*(&v35 + 1) + 8 * v13)];
              [v4 addObject:v14];

              ++v13;
            }

            while (v11 != v13);
            v11 = [invitedUsers countByEnumeratingWithState:&v35 objects:v43 count:16];
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

  firstObject = [obj firstObject];
  channelToken = [firstObject channelToken];
  channelType = [firstObject channelType];
  identifier = [firstObject identifier];
  personal = [firstObject personal];
  decomissioned = [firstObject decomissioned];
  currentOutgoingRatchetState = [firstObject currentOutgoingRatchetState];
  dateChannelCreated = [firstObject dateChannelCreated];
  statusType = [firstObject statusType];
  presenceIdentifier = [firstObject presenceIdentifier];
  serviceIdentifier = [firstObject serviceIdentifier];
  v17 = [v4 copy];
  serverKey = [firstObject serverKey];
  peerKey = [firstObject peerKey];
  membershipKey = [firstObject membershipKey];
  v33 = [(SKADatabaseChannel *)self initWithChannelToken:channelToken channelType:channelType identifier:identifier personal:personal decommissioned:decomissioned currentOutgoingRatchetState:currentOutgoingRatchetState dateCreated:dateChannelCreated statusType:statusType presenceIdentifier:presenceIdentifier serviceIdentifier:serviceIdentifier invitedUsers:v17 presenceServerKey:serverKey presencePeerKey:peerKey presenceMembershipKey:membershipKey];

  v21 = *MEMORY[0x277D85DE8];
  return v33;
}

@end