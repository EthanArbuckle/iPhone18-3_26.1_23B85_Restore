@interface SPCrypto
+ (_CCECCryptor)diversifyKey:(id)key entropyData:(id)data;
+ (_CCECCryptor)importKey:(id)key fromFormat:(unsigned int)format;
+ (id)antiTrackingKeyFromSharedSecretKey:(id)key;
+ (id)compactKey:(id)key;
+ (id)deriveKeyWithKeyData:(id)data sharedData:(id)sharedData keyLength:(unint64_t)length;
+ (id)deriveWithPublicKey:(id)key sharedSecretKey:(id *)secretKey;
+ (id)exportKey:(_CCECCryptor *)key toFormat:(unsigned int)format;
+ (id)ratchetSharedSecretKey:(id)key ratchetCount:(unint64_t)count;
+ (void)generateTokensWithPublicKey:(id)key sharedSecretKey:(id)secretKey initialRatchetsToSkip:(unint64_t)skip ratchetStep:(id)step;
@end

@implementation SPCrypto

+ (void)generateTokensWithPublicKey:(id)key sharedSecretKey:(id)secretKey initialRatchetsToSkip:(unint64_t)skip ratchetStep:(id)step
{
  keyCopy = key;
  stepCopy = step;
  v15 = 0;
  v11 = [SPCrypto ratchetSharedSecretKey:secretKey ratchetCount:skip];
  do
  {
    v12 = v11;
    v14 = v11;
    v13 = [SPCrypto deriveWithPublicKey:keyCopy sharedSecretKey:&v14];
    v11 = v14;

    stepCopy[2](stepCopy, v11, v13, &v15);
  }

  while (!v15);
}

+ (id)compactKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length] == 57 && (v4 = +[SPCrypto importKey:fromFormat:](SPCrypto, "importKey:fromFormat:", keyCopy, 0)) != 0)
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

+ (_CCECCryptor)importKey:(id)key fromFormat:(unsigned int)format
{
  keyCopy = key;
  [keyCopy bytes];
  [keyCopy length];

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

+ (id)exportKey:(_CCECCryptor *)key toFormat:(unsigned int)format
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

+ (_CCECCryptor)diversifyKey:(id)key entropyData:(id)data
{
  dataCopy = data;
  v6 = [SPCrypto importKey:key fromFormat:0];
  if (v6)
  {
    v7 = [dataCopy mutableCopy];
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

+ (id)antiTrackingKeyFromSharedSecretKey:(id)key
{
  keyCopy = key;
  v4 = [@"diversify" dataUsingEncoding:4];
  v5 = [SPCrypto deriveKeyWithKeyData:keyCopy sharedData:v4 keyLength:72];

  return v5;
}

+ (id)deriveKeyWithKeyData:(id)data sharedData:(id)sharedData keyLength:(unint64_t)length
{
  dataCopy = data;
  v8 = MEMORY[0x277CBEB28];
  sharedDataCopy = sharedData;
  v10 = [[v8 alloc] initWithLength:length];
  [sharedDataCopy bytes];
  [sharedDataCopy length];

  if (CCKDFParametersCreateAnsiX963() || ([dataCopy bytes], objc_msgSend(dataCopy, "length"), objc_msgSend(v10, "mutableBytes"), objc_msgSend(v10, "length"), CCDeriveKey()))
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (id)ratchetSharedSecretKey:(id)key ratchetCount:(unint64_t)count
{
  keyCopy = key;
  v6 = [@"update" dataUsingEncoding:4];
  v7 = keyCopy;
  if (count)
  {
    v7 = keyCopy;
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
      --count;
    }

    while (count);
  }

  return v7;
}

+ (id)deriveWithPublicKey:(id)key sharedSecretKey:(id *)secretKey
{
  keyCopy = key;
  v6 = [SPCrypto ratchetSharedSecretKey:*secretKey ratchetCount:1];
  v7 = [SPCrypto antiTrackingKeyFromSharedSecretKey:v6];
  if (v7 && (v8 = [SPCrypto diversifyKey:keyCopy entropyData:v7]) != 0)
  {
    v9 = v8;
    v10 = [SPCrypto exportKey:v8 toFormat:0];
    MEMORY[0x2667376D0](v9);
    v11 = v6;
    *secretKey = v6;
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