@interface SKAPresenceSubscriptionAssertion
+ (id)logger;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPresenceSubscription:(id)a3;
- (SKAPresenceSubscriptionAssertion)initWithChannelIdentifier:(id)a3 presenceIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SKAPresenceSubscriptionAssertion

- (SKAPresenceSubscriptionAssertion)initWithChannelIdentifier:(id)a3 presenceIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SKAPresenceSubscriptionAssertion;
  v8 = [(SKAPresenceSubscriptionAssertion *)&v18 init];
  if (v8)
  {
    v9 = +[SKAPresenceSubscriptionAssertion logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Creating PresenceSubscriptionAssertion for channel %@", buf, 0xCu);
    }

    v10 = [v6 copy];
    channelIdentifier = v8->_channelIdentifier;
    v8->_channelIdentifier = v10;

    v12 = [v7 copy];
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
  v5 = [(SKAPresenceSubscriptionAssertion *)self channelIdentifier];
  v6 = [(SKAPresenceSubscriptionAssertion *)self presenceIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p channelIdentifier = %@, presenceIdentifier: %@", v4, self, v5, v6];;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKAPresenceSubscriptionAssertion *)self isEqualToPresenceSubscription:v4];

  return v5;
}

- (BOOL)isEqualToPresenceSubscription:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = [(SKAPresenceSubscriptionAssertion *)v4 channelIdentifier];
    if (v6 || self->_channelIdentifier)
    {
      v7 = [(SKAPresenceSubscriptionAssertion *)v5 channelIdentifier];
      v8 = [v7 isEqualToString:self->_channelIdentifier];
    }

    else
    {
      v8 = 1;
    }

    v9 = [(SKAPresenceSubscriptionAssertion *)v5 presenceIdentifier];
    if (v9 || self->_presenceIdentifier)
    {
      v10 = [(SKAPresenceSubscriptionAssertion *)v5 presenceIdentifier];
      v11 = [v10 isEqualToString:self->_presenceIdentifier];
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
  v3 = [(SKAPresenceSubscriptionAssertion *)self channelIdentifier];
  v4 = [v3 hash];
  v5 = [(SKAPresenceSubscriptionAssertion *)self presenceIdentifier];
  v6 = [v5 hash];

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