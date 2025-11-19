@interface SPCrypto
+ (_CCECCryptor)diversifyKey:(id)a3 entropyData:(id)a4;
+ (_CCECCryptor)importKey:(id)a3 fromFormat:(unsigned int)a4;
+ (id)antiTrackingKeyFromSharedSecretKey:(id)a3;
+ (id)compactKey:(id)a3;
+ (id)deriveKeyWithKeyData:(id)a3 sharedData:(id)a4 keyLength:(unint64_t)a5;
+ (id)deriveWithPublicKey:(id)a3 sharedSecretKey:(id *)a4;
+ (id)exportKey:(_CCECCryptor *)a3 toFormat:(unsigned int)a4;
+ (id)ratchetSharedSecretKey:(id)a3 ratchetCount:(unint64_t)a4;
+ (void)generateTokensWithPublicKey:(id)a3 sharedSecretKey:(id)a4 initialRatchetsToSkip:(unint64_t)a5 ratchetStep:(id)a6;
@end

@implementation SPCrypto

+ (void)generateTokensWithPublicKey:(id)a3 sharedSecretKey:(id)a4 initialRatchetsToSkip:(unint64_t)a5 ratchetStep:(id)a6
{
  v9 = a3;
  v10 = a6;
  v15 = 0;
  v11 = [SPCrypto ratchetSharedSecretKey:a4 ratchetCount:a5];
  do
  {
    v12 = v11;
    v14 = v11;
    v13 = [SPCrypto deriveWithPublicKey:v9 sharedSecretKey:&v14];
    v11 = v14;

    v10[2](v10, v11, v13, &v15);
  }

  while (!v15);
}

+ (id)compactKey:(id)a3
{
  v3 = a3;
  if ([v3 length] == 57 && (v4 = +[SPCrypto importKey:fromFormat:](SPCrypto, "importKey:fromFormat:", v3, 0)) != 0)
  {
    v5 = v4;
    v6 = [SPCrypto exportKey:v4 toFormat:2];
    MEMORY[0x2667376D0](v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (_CCECCryptor)importKey:(id)a3 fromFormat:(unsigned int)a4
{
  v4 = a3;
  [v4 bytes];
  [v4 length];

  v5 = CCECCryptorImportKey();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = LogCategory_Crypto();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SPCrypto *)v6 importKey:v7 fromFormat:v8, v9, v10, v11, v12, v13];
  }

  return 0;
}

+ (id)exportKey:(_CCECCryptor *)a3 toFormat:(unsigned int)a4
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:57];
  [v4 mutableBytes];
  v5 = CCECCryptorExportKey();
  if (v5)
  {
    v6 = v5;
    v7 = LogCategory_Crypto();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SPCrypto *)v6 exportKey:v7 toFormat:v8, v9, v10, v11, v12, v13];
    }

    v14 = 0;
  }

  else
  {
    v7 = [v4 subdataWithRange:{0, 57}];
    v14 = [v7 copy];
  }

  return v14;
}

+ (_CCECCryptor)diversifyKey:(id)a3 entropyData:(id)a4
{
  v5 = a4;
  v6 = [SPCrypto importKey:a3 fromFormat:0];
  if (v6)
  {
    v7 = [v5 mutableCopy];
    [v7 mutableBytes];
    [v7 length];
    v8 = CCECCryptorTwinDiversifyKey();
    if (v8)
    {
      v9 = v8;
      v10 = LogCategory_Crypto();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SPCrypto *)v9 diversifyKey:v10 entropyData:v11, v12, v13, v14, v15, v16];
      }

      v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)antiTrackingKeyFromSharedSecretKey:(id)a3
{
  v3 = a3;
  v4 = [@"diversify" dataUsingEncoding:4];
  v5 = [SPCrypto deriveKeyWithKeyData:v3 sharedData:v4 keyLength:72];

  return v5;
}

+ (id)deriveKeyWithKeyData:(id)a3 sharedData:(id)a4 keyLength:(unint64_t)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB28];
  v9 = a4;
  v10 = [[v8 alloc] initWithLength:a5];
  [v9 bytes];
  [v9 length];

  if (CCKDFParametersCreateAnsiX963() || ([v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v10, "mutableBytes"), objc_msgSend(v10, "length"), CCDeriveKey()))
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (id)ratchetSharedSecretKey:(id)a3 ratchetCount:(unint64_t)a4
{
  v5 = a3;
  v6 = [@"update" dataUsingEncoding:4];
  v7 = v5;
  if (a4)
  {
    v7 = v5;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [SPCrypto deriveKeyWithKeyData:v7 sharedData:v6 keyLength:32];
      v10 = v9;
      if (v9)
      {
        v11 = v7;
        v7 = v9;
      }

      else
      {
        v11 = LogCategory_Crypto();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(SPCrypto *)&v13 ratchetSharedSecretKey:v14 ratchetCount:v11];
        }
      }

      objc_autoreleasePoolPop(v8);
      --a4;
    }

    while (a4);
  }

  return v7;
}

+ (id)deriveWithPublicKey:(id)a3 sharedSecretKey:(id *)a4
{
  v5 = a3;
  v6 = [SPCrypto ratchetSharedSecretKey:*a4 ratchetCount:1];
  v7 = [SPCrypto antiTrackingKeyFromSharedSecretKey:v6];
  if (v7 && (v8 = [SPCrypto diversifyKey:v5 entropyData:v7]) != 0)
  {
    v9 = v8;
    v10 = [SPCrypto exportKey:v8 toFormat:0];
    MEMORY[0x2667376D0](v9);
    v11 = v6;
    *a4 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)importKey:(uint64_t)a3 fromFormat:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_2643D0000, a2, a3, "Error running CCECCryptorImportKey. Code: %d.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)exportKey:(uint64_t)a3 toFormat:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_2643D0000, a2, a3, "Error running CCECCryptorExportKey. Code: %d.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)diversifyKey:(uint64_t)a3 entropyData:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_2643D0000, a2, a3, "Error running CCECCryptorTwinDiversifyKey. Code: %d.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)ratchetSharedSecretKey:(os_log_t)log ratchetCount:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2643D0000, log, OS_LOG_TYPE_ERROR, "deriveKeyWithKeyData returned nil!", buf, 2u);
}

@end