@interface SKASubscriptionChanges
+ (id)logger;
- (BOOL)hasSubscriptionChanges;
- (SKASubscriptionChanges)initWithStatusUnsubscriptions:(id)unsubscriptions presenceUnsubscriptions:(id)presenceUnsubscriptions statusSubscriptions:(id)subscriptions presenceSubscriptions:(id)presenceSubscriptions;
- (id)channelsForAction:(unint64_t)action;
@end

@implementation SKASubscriptionChanges

- (SKASubscriptionChanges)initWithStatusUnsubscriptions:(id)unsubscriptions presenceUnsubscriptions:(id)presenceUnsubscriptions statusSubscriptions:(id)subscriptions presenceSubscriptions:(id)presenceSubscriptions
{
  unsubscriptionsCopy = unsubscriptions;
  presenceUnsubscriptionsCopy = presenceUnsubscriptions;
  subscriptionsCopy = subscriptions;
  presenceSubscriptionsCopy = presenceSubscriptions;
  v18.receiver = self;
  v18.super_class = SKASubscriptionChanges;
  v15 = [(SKASubscriptionChanges *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_statusUnsubscriptions, unsubscriptions);
    objc_storeStrong(&v16->_presenceUnsubscriptions, presenceUnsubscriptions);
    objc_storeStrong(&v16->_statusSubscriptions, subscriptions);
    objc_storeStrong(&v16->_presenceSubscriptions, presenceSubscriptions);
  }

  return v16;
}

- (id)channelsForAction:(unint64_t)action
{
  if (action > 1)
  {
    if (action == 2)
    {
      statusSubscriptions = [(SKASubscriptionChanges *)self statusSubscriptions];
      goto LABEL_13;
    }

    if (action == 3)
    {
      statusSubscriptions = [(SKASubscriptionChanges *)self presenceSubscriptions];
      goto LABEL_13;
    }
  }

  else
  {
    if (!action)
    {
      statusSubscriptions = [(SKASubscriptionChanges *)self statusUnsubscriptions];
      goto LABEL_13;
    }

    if (action == 1)
    {
      statusSubscriptions = [(SKASubscriptionChanges *)self presenceUnsubscriptions];
      goto LABEL_13;
    }
  }

  v5 = +[SKASubscriptionChanges logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SKASubscriptionChanges *)action channelsForAction:v5];
  }

  statusSubscriptions = 0;
LABEL_13:

  return statusSubscriptions;
}

- (BOOL)hasSubscriptionChanges
{
  statusSubscriptions = [(SKASubscriptionChanges *)self statusSubscriptions];
  if ([statusSubscriptions count])
  {
    v4 = 1;
  }

  else
  {
    statusUnsubscriptions = [(SKASubscriptionChanges *)self statusUnsubscriptions];
    if ([statusUnsubscriptions count])
    {
      v4 = 1;
    }

    else
    {
      presenceSubscriptions = [(SKASubscriptionChanges *)self presenceSubscriptions];
      if ([presenceSubscriptions count])
      {
        v4 = 1;
      }

      else
      {
        presenceUnsubscriptions = [(SKASubscriptionChanges *)self presenceUnsubscriptions];
        v4 = [presenceUnsubscriptions count] != 0;
      }
    }
  }

  return v4;
}

+ (id)logger
{
  if (logger_onceToken_25 != -1)
  {
    +[SKASubscriptionChanges logger];
  }

  v3 = logger__logger_25;

  return v3;
}

uint64_t __32__SKASubscriptionChanges_logger__block_invoke()
{
  logger__logger_25 = os_log_create("com.apple.StatusKit", "SKASubscriptionChanges");

  return MEMORY[0x2821F96F8]();
}

- (void)channelsForAction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Unexpected SKASubscriptionAction type: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end