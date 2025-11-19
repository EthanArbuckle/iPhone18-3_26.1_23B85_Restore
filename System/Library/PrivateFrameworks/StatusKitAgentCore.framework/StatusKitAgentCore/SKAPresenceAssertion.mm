@interface SKAPresenceAssertion
+ (id)logger;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPresenceAssertion:(id)a3;
- (SKAPresenceAssertion)initWithCoreDataPresenceAssertion:(id)a3;
- (SKAPresenceAssertion)initWithPresenceIdentifier:(id)a3 presenceOptions:(id)a4 assertionOptions:(id)a5 payload:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SKAPresenceAssertion

- (SKAPresenceAssertion)initWithCoreDataPresenceAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 options];
  v6 = objc_alloc(MEMORY[0x277D68100]);
  v7 = [v5 serviceIdentifier];
  v8 = [v6 initWithServiceIdentifier:v7];

  [v8 setIsPersonal:{objc_msgSend(v5, "isPersonal")}];
  [v8 setIsDaemonIdleExitEnabled:1];
  v9 = [v5 clientSpecifiedURI];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D18A48]);
    v11 = [v5 clientSpecifiedURI];
    v12 = [v10 initWithUnprefixedURI:v11];
    [v8 setClientSpecifiedURI:v12];
  }

  v13 = [objc_alloc(MEMORY[0x277D680E8]) initWithPriority:{objc_msgSend(v4, "pushPriority")}];
  v14 = objc_alloc(MEMORY[0x277D68108]);
  v15 = [v4 payload];
  v16 = [v14 initWithData:v15];

  v17 = [SKAPresenceAssertion alloc];
  v18 = [v4 presenceIdentifier];

  v19 = [(SKAPresenceAssertion *)v17 initWithPresenceIdentifier:v18 presenceOptions:v8 assertionOptions:v13 payload:v16];
  return v19;
}

- (SKAPresenceAssertion)initWithPresenceIdentifier:(id)a3 presenceOptions:(id)a4 assertionOptions:(id)a5 payload:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SKAPresenceAssertion;
  v14 = [(SKAPresenceAssertion *)&v22 init];
  if (v14)
  {
    v15 = +[SKAPresenceAssertion logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Creating PresenceAssertion for identifier %@", buf, 0xCu);
    }

    v16 = [v10 copy];
    presenceIdentifier = v14->_presenceIdentifier;
    v14->_presenceIdentifier = v16;

    objc_storeStrong(&v14->_payload, a6);
    objc_storeStrong(&v14->_presenceOptions, a4);
    objc_storeStrong(&v14->_assertionOptions, a5);
    v18 = _os_activity_create(&dword_220099000, "PresenceAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v14->_osActivity;
    v14->_osActivity = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKAPresenceAssertion *)self presenceIdentifier];
  v6 = [(SKAPresenceAssertion *)self presenceOptions];
  v7 = [(SKAPresenceAssertion *)self assertionOptions];
  v8 = [v3 stringWithFormat:@"<%@: %p presenceIdentifier = %@ presenceOptions = %@ assertionOptions = %@", v4, self, v5, v6, v7];;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKAPresenceAssertion *)self isEqualToPresenceAssertion:v4];

  return v5;
}

- (BOOL)isEqualToPresenceAssertion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(SKAPresenceAssertion *)v4 presenceIdentifier];
    if (v6 || self->_presenceIdentifier)
    {
      v7 = [(SKAPresenceAssertion *)v5 presenceIdentifier];
      v8 = [v7 isEqualToString:self->_presenceIdentifier];
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
  v2 = [(SKAPresenceAssertion *)self presenceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKAPresenceAssertion logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    presenceIdentifier = self->_presenceIdentifier;
    *buf = 138412290;
    v8 = presenceIdentifier;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing PresenceAssertion for channel %@, releasing os_activity", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SKAPresenceAssertion;
  [(SKAPresenceAssertion *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)logger
{
  if (logger_onceToken_16 != -1)
  {
    +[SKAPresenceAssertion logger];
  }

  v3 = logger__logger_16;

  return v3;
}

uint64_t __30__SKAPresenceAssertion_logger__block_invoke()
{
  logger__logger_16 = os_log_create("com.apple.StatusKit", "SKAPresenceAssertion");

  return MEMORY[0x2821F96F8]();
}

@end