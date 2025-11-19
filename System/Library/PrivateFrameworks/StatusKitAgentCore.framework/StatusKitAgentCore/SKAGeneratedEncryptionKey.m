@interface SKAGeneratedEncryptionKey
+ (id)logger;
- (MPStatusKitIncomingRatchet)incomingRatchet;
- (MPStatusKitOutgoingRatchet)outgoingRatchet;
- (SKAGeneratedEncryptionKey)initWithCoreDataGeneratedEncryptionKey:(id)a3;
- (SKAGeneratedEncryptionKey)initWithOriginalOutgoingRatchetState:(id)a3 dateGenerated:(id)a4;
@end

@implementation SKAGeneratedEncryptionKey

- (SKAGeneratedEncryptionKey)initWithCoreDataGeneratedEncryptionKey:(id)a3
{
  v4 = a3;
  v5 = [v4 originalOutgoingRatchetState];
  v6 = [v4 dateGenerated];

  v7 = [(SKAGeneratedEncryptionKey *)self initWithOriginalOutgoingRatchetState:v5 dateGenerated:v6];
  return v7;
}

- (SKAGeneratedEncryptionKey)initWithOriginalOutgoingRatchetState:(id)a3 dateGenerated:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKAGeneratedEncryptionKey;
  v9 = [(SKAGeneratedEncryptionKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalOutgoingRatchetState, a3);
    objc_storeStrong(&v10->_dateGenerated, a4);
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
  v2 = [(SKAGeneratedEncryptionKey *)self outgoingRatchet];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentSubscriptionKeys];
    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277D28548]);
      v6 = [v4 index];
      v7 = [v4 chainKey];
      v8 = [v4 signingKey];
      v25 = 0;
      v9 = [v5 initWithIndex:v6 chainKey:v7 signingKey:v8 error:&v25];
    }

    else
    {
      v7 = +[SKAGeneratedEncryptionKey logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SKAGeneratedEncryptionKey(Ratchets) *)v7 incomingRatchet:v17];
      }

      v9 = 0;
    }
  }

  else
  {
    v4 = +[SKAGeneratedEncryptionKey logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SKAGeneratedEncryptionKey(Ratchets) *)v4 incomingRatchet:v10];
    }

    v9 = 0;
  }

  return v9;
}

@end