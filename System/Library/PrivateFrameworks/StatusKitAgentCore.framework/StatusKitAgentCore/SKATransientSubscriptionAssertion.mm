@interface SKATransientSubscriptionAssertion
+ (id)logger;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransientSubscription:(id)subscription;
- (SKATransientSubscriptionAssertion)initWithSubscriptionIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SKATransientSubscriptionAssertion

- (SKATransientSubscriptionAssertion)initWithSubscriptionIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SKATransientSubscriptionAssertion;
  v5 = [(SKATransientSubscriptionAssertion *)&v13 init];
  if (v5)
  {
    v6 = +[SKATransientSubscriptionAssertion logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Creating TransientSubscriptionAssertion for channel %@", buf, 0xCu);
    }

    v7 = [identifierCopy copy];
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
  subscriptionIdentifier = [(SKATransientSubscriptionAssertion *)self subscriptionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p subscriptionIdentifier = %@", v4, self, subscriptionIdentifier];;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKATransientSubscriptionAssertion *)self isEqualToTransientSubscription:equalCopy];

  return v5;
}

- (BOOL)isEqualToTransientSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v5 = subscriptionCopy;
  if (subscriptionCopy == self)
  {
    v8 = 1;
  }

  else
  {
    subscriptionIdentifier = [(SKATransientSubscriptionAssertion *)subscriptionCopy subscriptionIdentifier];
    if (subscriptionIdentifier || self->_subscriptionIdentifier)
    {
      subscriptionIdentifier2 = [(SKATransientSubscriptionAssertion *)v5 subscriptionIdentifier];
      v8 = [subscriptionIdentifier2 isEqualToString:self->_subscriptionIdentifier];
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
  subscriptionIdentifier = [(SKATransientSubscriptionAssertion *)self subscriptionIdentifier];
  v3 = [subscriptionIdentifier hash];

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