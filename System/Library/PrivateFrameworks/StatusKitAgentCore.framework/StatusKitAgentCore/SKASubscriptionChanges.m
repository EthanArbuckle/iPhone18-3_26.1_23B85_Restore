@interface SKASubscriptionChanges
+ (id)logger;
- (BOOL)hasSubscriptionChanges;
- (SKASubscriptionChanges)initWithStatusUnsubscriptions:(id)a3 presenceUnsubscriptions:(id)a4 statusSubscriptions:(id)a5 presenceSubscriptions:(id)a6;
- (id)channelsForAction:(unint64_t)a3;
@end

@implementation SKASubscriptionChanges

- (SKASubscriptionChanges)initWithStatusUnsubscriptions:(id)a3 presenceUnsubscriptions:(id)a4 statusSubscriptions:(id)a5 presenceSubscriptions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SKASubscriptionChanges;
  v15 = [(SKASubscriptionChanges *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_statusUnsubscriptions, a3);
    objc_storeStrong(&v16->_presenceUnsubscriptions, a4);
    objc_storeStrong(&v16->_statusSubscriptions, a5);
    objc_storeStrong(&v16->_presenceSubscriptions, a6);
  }

  return v16;
}

- (id)channelsForAction:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(SKASubscriptionChanges *)self statusSubscriptions];
      goto LABEL_13;
    }

    if (a3 == 3)
    {
      v4 = [(SKASubscriptionChanges *)self presenceSubscriptions];
      goto LABEL_13;
    }
  }

  else
  {
    if (!a3)
    {
      v4 = [(SKASubscriptionChanges *)self statusUnsubscriptions];
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      v4 = [(SKASubscriptionChanges *)self presenceUnsubscriptions];
      goto LABEL_13;
    }
  }

  v5 = +[SKASubscriptionChanges logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SKASubscriptionChanges *)a3 channelsForAction:v5];
  }

  v4 = 0;
LABEL_13:

  return v4;
}

- (BOOL)hasSubscriptionChanges
{
  v3 = [(SKASubscriptionChanges *)self statusSubscriptions];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SKASubscriptionChanges *)self statusUnsubscriptions];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(SKASubscriptionChanges *)self presenceSubscriptions];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(SKASubscriptionChanges *)self presenceUnsubscriptions];
        v4 = [v7 count] != 0;
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