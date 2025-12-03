@interface SKAPresenceMembershipKey
+ (id)logger;
- (BOOL)_generateKey;
- (BOOL)_generateKeyFromKeyData:(id)data;
- (NSData)privateKeyMaterial;
- (NSData)publicKeyMaterial;
- (SKAPresenceMembershipKey)initWithNewKeyMaterial;
- (SKAPresenceMembershipKey)initWithPrivateKeyMaterial:(id)material;
- (id)signPayload:(id)payload;
- (void)_generateKey;
- (void)dealloc;
- (void)privateKeyMaterial;
- (void)publicKeyMaterial;
@end

@implementation SKAPresenceMembershipKey

- (SKAPresenceMembershipKey)initWithNewKeyMaterial
{
  v6.receiver = self;
  v6.super_class = SKAPresenceMembershipKey;
  v2 = [(SKAPresenceMembershipKey *)&v6 init];
  v3 = v2;
  if (v2 && ![(SKAPresenceMembershipKey *)v2 _generateKey])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (SKAPresenceMembershipKey)initWithPrivateKeyMaterial:(id)material
{
  materialCopy = material;
  v9.receiver = self;
  v9.super_class = SKAPresenceMembershipKey;
  v5 = [(SKAPresenceMembershipKey *)&v9 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (![materialCopy length] || objc_msgSend(materialCopy, "length") != 97)
  {
    v7 = +[SKAPresenceMembershipKey logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceMembershipKey initWithPrivateKeyMaterial:v7];
    }

    goto LABEL_9;
  }

  if (![(SKAPresenceMembershipKey *)v5 _generateKeyFromKeyData:materialCopy])
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v6 = v5;
LABEL_10:

  return v6;
}

- (void)dealloc
{
  if ([(SKAPresenceMembershipKey *)self privateKey])
  {
    CFRelease([(SKAPresenceMembershipKey *)self privateKey]);
  }

  v3.receiver = self;
  v3.super_class = SKAPresenceMembershipKey;
  [(SKAPresenceMembershipKey *)&v3 dealloc];
}

- (id)signPayload:(id)payload
{
  payloadCopy = payload;
  if ([(SKAPresenceMembershipKey *)self privateKey])
  {
    error = 0;
    privateKey = [(SKAPresenceMembershipKey *)self privateKey];
    v6 = SecKeyCreateSignature(privateKey, *MEMORY[0x277CDC300], payloadCopy, &error);
    if (v6)
    {
      v10 = 769;
      v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v10 length:2];
      [v7 appendData:v6];
    }

    else
    {
      v8 = +[SKAPresenceMembershipKey logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceMembershipKey signPayload:?];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSData)publicKeyMaterial
{
  if ([(SKAPresenceMembershipKey *)self privateKey])
  {
    v3 = SecKeyCopyPublicKey([(SKAPresenceMembershipKey *)self privateKey]);
    error = 0;
    v4 = SecKeyCopyExternalRepresentation(v3, &error);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = +[SKAPresenceMembershipKey logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SKAPresenceMembershipKey *)&error publicKeyMaterial];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)privateKeyMaterial
{
  if ([(SKAPresenceMembershipKey *)self privateKey])
  {
    error = 0;
    v3 = SecKeyCopyExternalRepresentation([(SKAPresenceMembershipKey *)self privateKey], &error);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = +[SKAPresenceMembershipKey logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SKAPresenceMembershipKey *)&error privateKeyMaterial];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_generateKey
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC018];
  v10[0] = *MEMORY[0x277CDC028];
  v10[1] = v3;
  v11[0] = *MEMORY[0x277CDC040];
  v11[1] = &unk_2833EB9C0;
  v10[2] = *MEMORY[0x277CDC5C8];
  v11[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = 0;
  v5 = SecKeyCreateRandomKey(v4, &v9);
  if (v5)
  {
    if ([(SKAPresenceMembershipKey *)self privateKey])
    {
      CFRelease([(SKAPresenceMembershipKey *)self privateKey]);
    }

    [(SKAPresenceMembershipKey *)self setPrivateKey:v5];
  }

  else
  {
    v6 = +[SKAPresenceMembershipKey logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SKAPresenceMembershipKey *)&v9 _generateKey];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)_generateKeyFromKeyData:(id)data
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC040];
  v5 = *MEMORY[0x277CDC018];
  v16[0] = *MEMORY[0x277CDC028];
  v16[1] = v5;
  v17[0] = v4;
  v17[1] = &unk_2833EB9C0;
  v6 = *MEMORY[0x277CDBFF0];
  v7 = *MEMORY[0x277CDBFD0];
  v16[2] = *MEMORY[0x277CDBFE0];
  v16[3] = v7;
  v17[2] = v6;
  v17[3] = MEMORY[0x277CBEC38];
  v8 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  v10 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:4];
  v15 = 0;
  v11 = SecKeyCreateWithData(dataCopy, v10, &v15);

  if (v11)
  {
    if ([(SKAPresenceMembershipKey *)self privateKey])
    {
      CFRelease([(SKAPresenceMembershipKey *)self privateKey]);
    }

    [(SKAPresenceMembershipKey *)self setPrivateKey:v11];
  }

  else
  {
    v12 = +[SKAPresenceMembershipKey logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceMembershipKey _generateKeyFromKeyData:?];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

+ (id)logger
{
  if (logger_onceToken_0 != -1)
  {
    +[SKAPresenceMembershipKey logger];
  }

  v3 = logger__logger_0;

  return v3;
}

uint64_t __34__SKAPresenceMembershipKey_logger__block_invoke()
{
  logger__logger_0 = os_log_create("com.apple.StatusKit", "SKAPresenceMembershipKey");

  return MEMORY[0x2821F96F8]();
}

- (void)signPayload:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Signing completed with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)publicKeyMaterial
{
  OUTLINED_FUNCTION_2_0(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Public key externalization completed with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)privateKeyMaterial
{
  OUTLINED_FUNCTION_2_0(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Private key externalization completed with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_generateKey
{
  OUTLINED_FUNCTION_2_0(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Membership key generation completed with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_generateKeyFromKeyData:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v1, v2, "Membership key generation from data completed with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end