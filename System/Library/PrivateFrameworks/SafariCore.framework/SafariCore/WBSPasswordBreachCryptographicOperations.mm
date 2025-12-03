@interface WBSPasswordBreachCryptographicOperations
- (WBSPasswordBreachCryptographicOperations)initWithConfiguration:(id)configuration;
- (_CCECCryptor)_hashToCurve:(id)curve;
- (id)_blindPasswordHash:(id)hash;
- (id)_bucketIdentifierWithBitCount:(unint64_t)count ofData:(id)data;
- (id)_encodePasswordForLowFrequencyBucket:(id)bucket withHashSmoothingBits:(unsigned __int8)bits;
- (id)_exportHashToCurve:(id)curve;
- (id)_exportKeyFromCryptor:(_CCECCryptor *)cryptor;
- (id)encodePasswordForHighFrequencyBucket:(id)bucket;
- (id)encodePasswordForLowFrequencyBucket:(id)bucket;
- (id)generateFakeEncodedPasswordForHighFrequencyBucket;
- (id)generateFakeEncodedPasswordForLowFrequencyBucket;
- (id)unblindHash:(id)hash;
- (void)dealloc;
- (void)generateFakeEncodedPasswordForHighFrequencyBucket;
@end

@implementation WBSPasswordBreachCryptographicOperations

- (WBSPasswordBreachCryptographicOperations)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = WBSPasswordBreachCryptographicOperations;
  v6 = [(WBSPasswordBreachCryptographicOperations *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_blindingKeys = CCECCryptorGenerateBlindingKeys();
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_blindingKeys)
  {
    CCECCryptorBlindingKeysRelease();
  }

  v3.receiver = self;
  v3.super_class = WBSPasswordBreachCryptographicOperations;
  [(WBSPasswordBreachCryptographicOperations *)&v3 dealloc];
}

- (id)encodePasswordForHighFrequencyBucket:(id)bucket
{
  v4 = [bucket dataUsingEncoding:4];
  highFrequencyBucketHashSalt = [(WBSPasswordBreachConfiguration *)self->_configuration highFrequencyBucketHashSalt];
  v6 = [highFrequencyBucketHashSalt dataUsingEncoding:4];

  v7 = [v4 safari_scryptHashWithSalt:v6 N:-[WBSPasswordBreachConfiguration highFrequencyBucketHashWorkFactor](self->_configuration r:"highFrequencyBucketHashWorkFactor") p:-[WBSPasswordBreachConfiguration highFrequencyBucketScryptBlockSizeR](self->_configuration keyLength:{"highFrequencyBucketScryptBlockSizeR"), -[WBSPasswordBreachConfiguration highFrequencyBucketScryptParallelismFactorP](self->_configuration, "highFrequencyBucketScryptParallelismFactorP"), 32}];

  return v7;
}

- (id)_bucketIdentifierWithBitCount:(unint64_t)count ofData:(id)data
{
  v9 = 0;
  [data getBytes:&v9 length:4];
  v5 = bswap32(v9) >> -count;
  v9 = v5;
  v6 = count >> 2;
  if ((count & 3) != 0)
  {
    v6 = (v6 + 1);
  }

  else
  {
    v6 = v6;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0*x", v6, v5];

  return v7;
}

- (id)_encodePasswordForLowFrequencyBucket:(id)bucket withHashSmoothingBits:(unsigned __int8)bits
{
  bitsCopy = bits;
  v5 = [bucket dataUsingEncoding:4];
  v6 = [v5 mutableCopy];

  [v6 appendBytes:&bitsCopy length:1];
  lowFrequencyBucketHashSalt = [(WBSPasswordBreachConfiguration *)self->_configuration lowFrequencyBucketHashSalt];
  v8 = [lowFrequencyBucketHashSalt dataUsingEncoding:4];

  v9 = [v6 safari_scryptHashWithSalt:v8 N:-[WBSPasswordBreachConfiguration lowFrequencyBucketHashWorkFactor](self->_configuration r:"lowFrequencyBucketHashWorkFactor") p:-[WBSPasswordBreachConfiguration lowFrequencyBucketScryptBlockSizeR](self->_configuration keyLength:{"lowFrequencyBucketScryptBlockSizeR"), -[WBSPasswordBreachConfiguration lowFrequencyBucketScryptParallelismFactorP](self->_configuration, "lowFrequencyBucketScryptParallelismFactorP"), 32}];
  v10 = [(WBSPasswordBreachCryptographicOperations *)self _bucketIdentifierWithBitCount:[(WBSPasswordBreachConfiguration *)self->_configuration lowFrequencyBucketIdentifierBitCount] ofData:v9];
  v11 = [[WBSPair alloc] initWithFirst:v10 second:v9];

  return v11;
}

- (id)encodePasswordForLowFrequencyBucket:(id)bucket
{
  v4 = [(WBSPasswordBreachCryptographicOperations *)self _encodePasswordForLowFrequencyBucket:bucket withHashSmoothingBits:0];
  v5 = [WBSPair alloc];
  first = [v4 first];
  second = [v4 second];
  v8 = [(WBSPasswordBreachCryptographicOperations *)self _blindPasswordHash:second];
  v9 = [(WBSPair *)v5 initWithFirst:first second:v8];

  return v9;
}

- (id)_exportKeyFromCryptor:(_CCECCryptor *)cryptor
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CCECCryptorExportKey();
  if (v3)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(WBSPasswordBreachCryptographicOperations *)v4 _exportKeyFromCryptor:v5];
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:256];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_exportHashToCurve:(id)curve
{
  curveCopy = curve;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_alloc_init(WBSScopeExitHandler);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__WBSPasswordBreachCryptographicOperations__exportHashToCurve___block_invoke;
  v9[3] = &unk_1E7CF0630;
  v9[4] = &v10;
  [(WBSScopeExitHandler *)v5 setHandler:v9];
  v6 = [(WBSPasswordBreachCryptographicOperations *)self _hashToCurve:curveCopy];
  v11[3] = v6;
  if (v6)
  {
    v7 = [(WBSPasswordBreachCryptographicOperations *)self _exportKeyFromCryptor:v6];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __63__WBSPasswordBreachCryptographicOperations__exportHashToCurve___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    JUMPOUT(0x1B8CBFB80);
  }

  return result;
}

- (_CCECCryptor)_hashToCurve:(id)curve
{
  curveCopy = curve;
  v4 = [@"P256-SHA256-SSWU-RO-PBAv1" dataUsingEncoding:4];
  [v4 length];
  [v4 bytes];
  [curveCopy length];
  [curveCopy bytes];

  v5 = CCECCryptorH2C();
  if (!v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [WBSPasswordBreachCryptographicOperations _hashToCurve:v6];
    }
  }

  return v5;
}

- (id)_blindPasswordHash:(id)hash
{
  hashCopy = hash;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = objc_alloc_init(WBSScopeExitHandler);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__WBSPasswordBreachCryptographicOperations__blindPasswordHash___block_invoke;
  v12[3] = &unk_1E7CF31E0;
  v12[4] = &v17;
  v12[5] = &v13;
  [(WBSScopeExitHandler *)v5 setHandler:v12];
  v6 = [(WBSPasswordBreachCryptographicOperations *)self _hashToCurve:hashCopy];
  v18[3] = v6;
  if (v6)
  {
    blindingKeys = self->_blindingKeys;
    v8 = CCECCryptorBlind();
    v14[3] = v8;
    if (v8)
    {
      v9 = [(WBSPasswordBreachCryptographicOperations *)self _exportKeyFromCryptor:v8];
      goto LABEL_7;
    }

    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [WBSPasswordBreachCryptographicOperations _blindPasswordHash:v10];
    }
  }

  v9 = 0;
LABEL_7:

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

uint64_t __63__WBSPasswordBreachCryptographicOperations__blindPasswordHash___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    MEMORY[0x1B8CBFB80]();
  }

  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {

    JUMPOUT(0x1B8CBFB80);
  }

  return result;
}

- (id)unblindHash:(id)hash
{
  hashCopy = hash;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = objc_alloc_init(WBSScopeExitHandler);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__WBSPasswordBreachCryptographicOperations_unblindHash___block_invoke;
  v14[3] = &unk_1E7CF31E0;
  v14[4] = &v19;
  v14[5] = &v15;
  [(WBSScopeExitHandler *)v5 setHandler:v14];
  [hashCopy bytes];
  [hashCopy length];
  v6 = CCECCryptorImportKey();
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordBreachCryptographicOperations *)v6 unblindHash:v7];
    }

LABEL_4:
    v8 = 0;
    goto LABEL_7;
  }

  blindingKeys = self->_blindingKeys;
  v10 = v20[3];
  v11 = CCECCryptorUnblind();
  v16[3] = v11;
  if (!v11)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachCryptographicOperations unblindHash:v13];
    }

    goto LABEL_4;
  }

  v8 = [(WBSPasswordBreachCryptographicOperations *)self _exportKeyFromCryptor:v11];
LABEL_7:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

uint64_t __56__WBSPasswordBreachCryptographicOperations_unblindHash___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    MEMORY[0x1B8CBFB80]();
  }

  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {

    JUMPOUT(0x1B8CBFB80);
  }

  return result;
}

- (id)generateFakeEncodedPasswordForHighFrequencyBucket
{
  v10[1] = *MEMORY[0x1E69E9840];
  fakePasswordLengthBytes = [(WBSPasswordBreachConfiguration *)self->_configuration fakePasswordLengthBytes];
  v3 = v10 - ((fakePasswordLengthBytes + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = SecRandomCopyBytes(*MEMORY[0x1E697B308], fakePasswordLengthBytes, v3);
  if (v4)
  {
    v5 = v4;
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordBreachCryptographicOperations *)v5 generateFakeEncodedPasswordForHighFrequencyBucket];
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:fakePasswordLengthBytes];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)generateFakeEncodedPasswordForLowFrequencyBucket
{
  generateFakeEncodedPasswordForHighFrequencyBucket = [(WBSPasswordBreachCryptographicOperations *)self generateFakeEncodedPasswordForHighFrequencyBucket];
  if (generateFakeEncodedPasswordForHighFrequencyBucket)
  {
    v4 = [(WBSPasswordBreachCryptographicOperations *)self _bucketIdentifierWithBitCount:[(WBSPasswordBreachConfiguration *)self->_configuration lowFrequencyBucketIdentifierBitCount] ofData:generateFakeEncodedPasswordForHighFrequencyBucket];
    v5 = [(WBSPasswordBreachCryptographicOperations *)self _blindPasswordHash:generateFakeEncodedPasswordForHighFrequencyBucket];
    if (v5)
    {
      v6 = [[WBSPair alloc] initWithFirst:v4 second:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_exportKeyFromCryptor:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67240192;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1B8447000, a2, OS_LOG_TYPE_FAULT, "Failed to export key. CCECCryptorExportKey returned status %{public}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unblindHash:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67240192;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Failed to import server blinded key. CCECCryptorImportKey returned status %{public}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)generateFakeEncodedPasswordForHighFrequencyBucket
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Failed to generate random bytes for fake password: %d.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end