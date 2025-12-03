@interface SKAPresenceEncryptionKey
+ (id)logger;
- (BOOL)_initializeNewKeyMaterial;
- (NSData)keyMaterial;
- (SKAPresenceEncryptionKey)initWithKeyMaterial:(id)material;
- (SKAPresenceEncryptionKey)initWithNewKeyMaterial;
- (id)_randomBytesWithLength:(unint64_t)length error:(id *)error;
- (id)decryptPayload:(id)payload;
- (id)encryptPayload:(id)payload;
@end

@implementation SKAPresenceEncryptionKey

- (SKAPresenceEncryptionKey)initWithNewKeyMaterial
{
  v6.receiver = self;
  v6.super_class = SKAPresenceEncryptionKey;
  v2 = [(SKAPresenceEncryptionKey *)&v6 init];
  v3 = v2;
  if (v2 && ![(SKAPresenceEncryptionKey *)v2 _initializeNewKeyMaterial])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (SKAPresenceEncryptionKey)initWithKeyMaterial:(id)material
{
  materialCopy = material;
  v10.receiver = self;
  v10.super_class = SKAPresenceEncryptionKey;
  v6 = [(SKAPresenceEncryptionKey *)&v10 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  if ([materialCopy length] && objc_msgSend(materialCopy, "length") == 32)
  {
    objc_storeStrong(&v6->_keyData, material);
LABEL_5:
    v7 = v6;
    goto LABEL_9;
  }

  v8 = +[SKAPresenceEncryptionKey logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SKAPresenceEncryptionKey initWithKeyMaterial:];
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)encryptPayload:(id)payload
{
  payloadCopy = payload;
  if (![payloadCopy length])
  {
    v6 = +[SKAPresenceEncryptionKey logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceEncryptionKey encryptPayload:];
    }

    goto LABEL_9;
  }

  v19 = 0;
  v5 = [(SKAPresenceEncryptionKey *)self _randomBytesWithLength:12 error:&v19];
  v6 = v5;
  if (v19)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_12;
  }

  [v5 length];
  v6 = v6;
  keyData = [(SKAPresenceEncryptionKey *)self keyData];
  [keyData length];

  keyData2 = [(SKAPresenceEncryptionKey *)self keyData];
  v9 = [payloadCopy length];
  v10 = payloadCopy;
  v11 = [MEMORY[0x277CBEB28] dataWithLength:v9];
  v12 = [MEMORY[0x277CBEB28] dataWithLength:16];
  v18 = keyData2;
  [keyData2 bytes];
  [v6 bytes];
  [v10 bytes];
  mutableBytes = [v11 mutableBytes];
  mutableBytes2 = [v12 mutableBytes];
  if (CCCryptorGCMOneshotEncrypt())
  {
    v14 = [SKAPresenceEncryptionKey logger:v9];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceEncryptionKey encryptPayload:];
    }

    v15 = 0;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v15 appendData:{v6, v9, mutableBytes, mutableBytes2, 16}];
    [v15 appendData:v11];
    [v15 appendData:v12];
  }

LABEL_12:

  return v15;
}

- (id)decryptPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy length] > 0x1C)
  {
    v5 = [payloadCopy subdataWithRange:{0, 12}];
    v7 = [payloadCopy length];
    v8 = v7 - 16;
    v9 = [payloadCopy subdataWithRange:{12, v7 - 28}];
    v10 = [payloadCopy subdataWithRange:{v8, 16}];
    [v5 length];
    keyData = [(SKAPresenceEncryptionKey *)self keyData];
    [keyData length];

    keyData2 = [(SKAPresenceEncryptionKey *)self keyData];
    v13 = [v9 length];
    v14 = v9;
    v20 = [v10 length];
    v15 = [MEMORY[0x277CBEB28] dataWithLength:v13];
    [keyData2 bytes];
    [v5 bytes];
    [v14 bytes];
    mutableBytes = [v15 mutableBytes];
    bytes = [v10 bytes];
    if (CCCryptorGCMOneshotDecrypt())
    {
      v17 = [SKAPresenceEncryptionKey logger:v13];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceEncryptionKey decryptPayload:];
      }

      v6 = 0;
    }

    else
    {
      v6 = v15;
    }
  }

  else
  {
    v5 = +[SKAPresenceEncryptionKey logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceEncryptionKey decryptPayload:];
    }

    v6 = 0;
  }

  return v6;
}

- (NSData)keyMaterial
{
  keyData = [(SKAPresenceEncryptionKey *)self keyData];
  if (![keyData length])
  {
    v6 = 0;
    goto LABEL_5;
  }

  keyData2 = [(SKAPresenceEncryptionKey *)self keyData];
  v5 = [keyData2 length];

  if (v5 == 32)
  {
    keyData = [(SKAPresenceEncryptionKey *)self keyData];
    v6 = [keyData copy];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (BOOL)_initializeNewKeyMaterial
{
  v8 = 0;
  v3 = [(SKAPresenceEncryptionKey *)self _randomBytesWithLength:32 error:&v8];
  v4 = v8;
  v5 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v3 length:{"bytes"), objc_msgSend(v3, "length")}];
  keyData = self->_keyData;
  self->_keyData = v5;

  return v4 == 0;
}

- (id)_randomBytesWithLength:(unint64_t)length error:(id *)error
{
  v6 = [MEMORY[0x277CBEB28] dataWithLength:?];
  Bytes = CCRandomGenerateBytes([v6 mutableBytes], length);
  if (Bytes)
  {
    v8 = Bytes;
    v9 = +[SKAPresenceEncryptionKey logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceEncryptionKey _randomBytesWithLength:error:];
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not generate random bytes. %i", v8];
    v11 = [SKAError errorWithCode:400 customDescription:v10];
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[SKAPresenceEncryptionKey logger];
  }

  v3 = logger__logger;

  return v3;
}

uint64_t __34__SKAPresenceEncryptionKey_logger__block_invoke()
{
  logger__logger = os_log_create("com.apple.StatusKit", "SKAPresenceEncryptionKey");

  return MEMORY[0x2821F96F8]();
}

- (void)encryptPayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decryptPayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_randomBytesWithLength:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end