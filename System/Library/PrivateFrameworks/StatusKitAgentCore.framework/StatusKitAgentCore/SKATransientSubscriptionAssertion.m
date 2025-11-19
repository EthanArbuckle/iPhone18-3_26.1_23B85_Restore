@interface SKATransientSubscriptionAssertion
+ (id)logger;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransientSubscription:(id)a3;
- (SKATransientSubscriptionAssertion)initWithSubscriptionIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SKATransientSubscriptionAssertion

- (SKATransientSubscriptionAssertion)initWithSubscriptionIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKATransientSubscriptionAssertion;
  v5 = [(SKATransientSubscriptionAssertion *)&v13 init];
  if (v5)
  {
    v6 = +[SKATransientSubscriptionAssertion logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Creating TransientSubscriptionAssertion for channel %@", buf, 0xCu);
    }

    v7 = [v4 copy];
    subscriptionIdentifier = v5->_subscriptionIdentifier;
    v5->_subscriptionIdentifier = v7;

    v9 = _os_activity_create(&dword_220099000, "TransientSubscriptionAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v5->_osActivity;
    v5->_osActivity = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKATransientSubscriptionAssertion *)self subscriptionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p subscriptionIdentifier = %@", v4, self, v5];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKATransientSubscriptionAssertion *)self isEqualToTransientSubscription:v4];

  return v5;
}

- (BOOL)isEqualToTransientSubscription:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(SKATransientSubscriptionAssertion *)v4 subscriptionIdentifier];
    if (v6 || self->_subscriptionIdentifier)
    {
      v7 = [(SKATransientSubscriptionAssertion *)v5 subscriptionIdentifier];
      v8 = [v7 isEqualToString:self->_subscriptionIdentifier];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SKATransientSubscriptionAssertion *)self subscriptionIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKATransientSubscriptionAssertion logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    subscriptionIdentifier = self->_subscriptionIdentifier;
    *buf = 138412290;
    v8 = subscriptionIdentifier;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing TransientSubscriptionAssertion for channel %@, releasing os_activity", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SKATransientSubscriptionAssertion;
  [(SKATransientSubscriptionAssertion *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)logger
{
  if (logger_onceToken_26 != -1)
  {
    +[SKATransientSubscriptionAssertion logger];
  }

  v3 = logger__logger_26;

  return v3;
}

uint64_t __43__SKATransientSubscriptionAssertion_logger__block_invoke()
{
  logger__logger_26 = os_log_create("com.apple.StatusKit", "SKATransientSubscriptionAssertion");

  return MEMORY[0x2821F96F8]();
}

@end