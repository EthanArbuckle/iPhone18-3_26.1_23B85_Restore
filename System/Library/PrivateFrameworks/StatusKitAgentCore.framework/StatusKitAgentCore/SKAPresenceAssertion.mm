@interface SKAPresenceAssertion
+ (id)logger;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPresenceAssertion:(id)assertion;
- (SKAPresenceAssertion)initWithCoreDataPresenceAssertion:(id)assertion;
- (SKAPresenceAssertion)initWithPresenceIdentifier:(id)identifier presenceOptions:(id)options assertionOptions:(id)assertionOptions payload:(id)payload;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SKAPresenceAssertion

- (SKAPresenceAssertion)initWithCoreDataPresenceAssertion:(id)assertion
{
  assertionCopy = assertion;
  options = [assertionCopy options];
  v6 = objc_alloc(MEMORY[0x277D68100]);
  serviceIdentifier = [options serviceIdentifier];
  v8 = [v6 initWithServiceIdentifier:serviceIdentifier];

  [v8 setIsPersonal:{objc_msgSend(options, "isPersonal")}];
  [v8 setIsDaemonIdleExitEnabled:1];
  clientSpecifiedURI = [options clientSpecifiedURI];

  if (clientSpecifiedURI)
  {
    v10 = objc_alloc(MEMORY[0x277D18A48]);
    clientSpecifiedURI2 = [options clientSpecifiedURI];
    v12 = [v10 initWithUnprefixedURI:clientSpecifiedURI2];
    [v8 setClientSpecifiedURI:v12];
  }

  v13 = [objc_alloc(MEMORY[0x277D680E8]) initWithPriority:{objc_msgSend(assertionCopy, "pushPriority")}];
  v14 = objc_alloc(MEMORY[0x277D68108]);
  payload = [assertionCopy payload];
  v16 = [v14 initWithData:payload];

  v17 = [SKAPresenceAssertion alloc];
  presenceIdentifier = [assertionCopy presenceIdentifier];

  v19 = [(SKAPresenceAssertion *)v17 initWithPresenceIdentifier:presenceIdentifier presenceOptions:v8 assertionOptions:v13 payload:v16];
  return v19;
}

- (SKAPresenceAssertion)initWithPresenceIdentifier:(id)identifier presenceOptions:(id)options assertionOptions:(id)assertionOptions payload:(id)payload
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  assertionOptionsCopy = assertionOptions;
  payloadCopy = payload;
  v22.receiver = self;
  v22.super_class = SKAPresenceAssertion;
  v14 = [(SKAPresenceAssertion *)&v22 init];
  if (v14)
  {
    v15 = +[SKAPresenceAssertion logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = identifierCopy;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Creating PresenceAssertion for identifier %@", buf, 0xCu);
    }

    v16 = [identifierCopy copy];
    presenceIdentifier = v14->_presenceIdentifier;
    v14->_presenceIdentifier = v16;

    objc_storeStrong(&v14->_payload, payload);
    objc_storeStrong(&v14->_presenceOptions, options);
    objc_storeStrong(&v14->_assertionOptions, assertionOptions);
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
  presenceIdentifier = [(SKAPresenceAssertion *)self presenceIdentifier];
  presenceOptions = [(SKAPresenceAssertion *)self presenceOptions];
  assertionOptions = [(SKAPresenceAssertion *)self assertionOptions];
  v8 = [v3 stringWithFormat:@"<%@: %p presenceIdentifier = %@ presenceOptions = %@ assertionOptions = %@", v4, self, presenceIdentifier, presenceOptions, assertionOptions];;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKAPresenceAssertion *)self isEqualToPresenceAssertion:equalCopy];

  return v5;
}

- (BOOL)isEqualToPresenceAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = assertionCopy;
  if (assertionCopy == self)
  {
    v8 = 1;
  }

  else
  {
    presenceIdentifier = [(SKAPresenceAssertion *)assertionCopy presenceIdentifier];
    if (presenceIdentifier || self->_presenceIdentifier)
    {
      presenceIdentifier2 = [(SKAPresenceAssertion *)v5 presenceIdentifier];
      v8 = [presenceIdentifier2 isEqualToString:self->_presenceIdentifier];
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
  presenceIdentifier = [(SKAPresenceAssertion *)self presenceIdentifier];
  v3 = [presenceIdentifier hash];

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