@interface SKAPresenceSubscriptionAssertion
+ (id)logger;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPresenceSubscription:(id)subscription;
- (SKAPresenceSubscriptionAssertion)initWithChannelIdentifier:(id)identifier presenceIdentifier:(id)presenceIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SKAPresenceSubscriptionAssertion

- (SKAPresenceSubscriptionAssertion)initWithChannelIdentifier:(id)identifier presenceIdentifier:(id)presenceIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  presenceIdentifierCopy = presenceIdentifier;
  v18.receiver = self;
  v18.super_class = SKAPresenceSubscriptionAssertion;
  v8 = [(SKAPresenceSubscriptionAssertion *)&v18 init];
  if (v8)
  {
    v9 = +[SKAPresenceSubscriptionAssertion logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = identifierCopy;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Creating PresenceSubscriptionAssertion for channel %@", buf, 0xCu);
    }

    v10 = [identifierCopy copy];
    channelIdentifier = v8->_channelIdentifier;
    v8->_channelIdentifier = v10;

    v12 = [presenceIdentifierCopy copy];
    presenceIdentifier = v8->_presenceIdentifier;
    v8->_presenceIdentifier = v12;

    v14 = _os_activity_create(&dword_220099000, "PresenceSubscriptionAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v8->_osActivity;
    v8->_osActivity = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  channelIdentifier = [(SKAPresenceSubscriptionAssertion *)self channelIdentifier];
  presenceIdentifier = [(SKAPresenceSubscriptionAssertion *)self presenceIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p channelIdentifier = %@, presenceIdentifier: %@", v4, self, channelIdentifier, presenceIdentifier];;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKAPresenceSubscriptionAssertion *)self isEqualToPresenceSubscription:equalCopy];

  return v5;
}

- (BOOL)isEqualToPresenceSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v5 = subscriptionCopy;
  if (subscriptionCopy == self)
  {
    v12 = 1;
  }

  else
  {
    channelIdentifier = [(SKAPresenceSubscriptionAssertion *)subscriptionCopy channelIdentifier];
    if (channelIdentifier || self->_channelIdentifier)
    {
      channelIdentifier2 = [(SKAPresenceSubscriptionAssertion *)v5 channelIdentifier];
      v8 = [channelIdentifier2 isEqualToString:self->_channelIdentifier];
    }

    else
    {
      v8 = 1;
    }

    presenceIdentifier = [(SKAPresenceSubscriptionAssertion *)v5 presenceIdentifier];
    if (presenceIdentifier || self->_presenceIdentifier)
    {
      presenceIdentifier2 = [(SKAPresenceSubscriptionAssertion *)v5 presenceIdentifier];
      v11 = [presenceIdentifier2 isEqualToString:self->_presenceIdentifier];
    }

    else
    {
      v11 = 1;
    }

    v12 = v8 & v11;
  }

  return v12;
}

- (unint64_t)hash
{
  channelIdentifier = [(SKAPresenceSubscriptionAssertion *)self channelIdentifier];
  v4 = [channelIdentifier hash];
  presenceIdentifier = [(SKAPresenceSubscriptionAssertion *)self presenceIdentifier];
  v6 = [presenceIdentifier hash];

  return v6 ^ v4;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKAPresenceSubscriptionAssertion logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SKAPresenceSubscriptionAssertion *)self description];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing PresenceSubscriptionAssertion for channel %@, releasing os_activity", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SKAPresenceSubscriptionAssertion;
  [(SKAPresenceSubscriptionAssertion *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)logger
{
  if (logger_onceToken_23 != -1)
  {
    +[SKAPresenceSubscriptionAssertion logger];
  }

  v3 = logger__logger_23;

  return v3;
}

uint64_t __42__SKAPresenceSubscriptionAssertion_logger__block_invoke()
{
  logger__logger_23 = os_log_create("com.apple.StatusKit", "SKAPresenceSubscriptionAssertion");

  return MEMORY[0x2821F96F8]();
}

@end