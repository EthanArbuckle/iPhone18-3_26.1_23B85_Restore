@interface SKAGeneratedEncryptionKey
+ (id)logger;
- (MPStatusKitIncomingRatchet)incomingRatchet;
- (MPStatusKitOutgoingRatchet)outgoingRatchet;
- (SKAGeneratedEncryptionKey)initWithCoreDataGeneratedEncryptionKey:(id)key;
- (SKAGeneratedEncryptionKey)initWithOriginalOutgoingRatchetState:(id)state dateGenerated:(id)generated;
@end

@implementation SKAGeneratedEncryptionKey

- (SKAGeneratedEncryptionKey)initWithCoreDataGeneratedEncryptionKey:(id)key
{
  keyCopy = key;
  originalOutgoingRatchetState = [keyCopy originalOutgoingRatchetState];
  dateGenerated = [keyCopy dateGenerated];

  v7 = [(SKAGeneratedEncryptionKey *)self initWithOriginalOutgoingRatchetState:originalOutgoingRatchetState dateGenerated:dateGenerated];
  return v7;
}

- (SKAGeneratedEncryptionKey)initWithOriginalOutgoingRatchetState:(id)state dateGenerated:(id)generated
{
  stateCopy = state;
  generatedCopy = generated;
  v12.receiver = self;
  v12.super_class = SKAGeneratedEncryptionKey;
  v9 = [(SKAGeneratedEncryptionKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalOutgoingRatchetState, state);
    objc_storeStrong(&v10->_dateGenerated, generated);
  }

  return v10;
}

+ (id)logger
{
  if (logger_onceToken_12 != -1)
  {
    +[SKAGeneratedEncryptionKey logger];
  }

  v3 = logger__logger_12;

  return v3;
}

uint64_t __35__SKAGeneratedEncryptionKey_logger__block_invoke()
{
  logger__logger_12 = os_log_create("com.apple.StatusKit", "SKAGeneratedEncryptionKey");

  return MEMORY[0x2821F96F8]();
}

- (MPStatusKitOutgoingRatchet)outgoingRatchet
{
  v2 = self->_originalOutgoingRatchetState;
  if (v2)
  {
    v14 = 0;
    v3 = [objc_alloc(MEMORY[0x277D28550]) initWithData:v2 error:&v14];
    v4 = v14;
    if (!v3)
    {
      v5 = +[SKAGeneratedEncryptionKey logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(SKAGeneratedEncryptionKey(Ratchets) *)v4 outgoingRatchet];
      }
    }
  }

  else
  {
    v4 = +[SKAGeneratedEncryptionKey logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SKAGeneratedEncryptionKey(Ratchets) *)v4 outgoingRatchet:v6];
    }

    v3 = 0;
  }

  return v3;
}

- (MPStatusKitIncomingRatchet)incomingRatchet
{
  outgoingRatchet = [(SKAGeneratedEncryptionKey *)self outgoingRatchet];
  v3 = outgoingRatchet;
  if (outgoingRatchet)
  {
    currentSubscriptionKeys = [outgoingRatchet currentSubscriptionKeys];
    if (currentSubscriptionKeys)
    {
      v5 = objc_alloc(MEMORY[0x277D28548]);
      index = [currentSubscriptionKeys index];
      chainKey = [currentSubscriptionKeys chainKey];
      signingKey = [currentSubscriptionKeys signingKey];
      v25 = 0;
      v9 = [v5 initWithIndex:index chainKey:chainKey signingKey:signingKey error:&v25];
    }

    else
    {
      chainKey = +[SKAGeneratedEncryptionKey logger];
      if (os_log_type_enabled(chainKey, OS_LOG_TYPE_ERROR))
      {
        [(SKAGeneratedEncryptionKey(Ratchets) *)chainKey incomingRatchet:v17];
      }

      v9 = 0;
    }
  }

  else
  {
    currentSubscriptionKeys = +[SKAGeneratedEncryptionKey logger];
    if (os_log_type_enabled(currentSubscriptionKeys, OS_LOG_TYPE_ERROR))
    {
      [(SKAGeneratedEncryptionKey(Ratchets) *)currentSubscriptionKeys incomingRatchet:v10];
    }

    v9 = 0;
  }

  return v9;
}

@end