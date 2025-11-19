@interface TPTypedSignedData
- (BOOL)checkSignatureWithKey:(id)a3;
- (TPTypedSignedData)initWithData:(id)a3 key:(id)a4 signatureTypeName:(id)a5 error:(id *)a6;
- (TPTypedSignedData)initWithData:(id)a3 sig:(id)a4 pubkey:(id)a5 sigTypeName:(id)a6;
@end

@implementation TPTypedSignedData

- (BOOL)checkSignatureWithKey:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [(TPTypedSignedData *)self sigValidationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TPTypedSignedData_checkSignatureWithKey___block_invoke;
  block[3] = &unk_279DEDC30;
  block[4] = self;
  v6 = v4;
  v17 = v6;
  v18 = &v24;
  v19 = &v20;
  dispatch_sync(v5, block);

  if (*(v25 + 24) == 1)
  {
    v7 = *(v21 + 24);
  }

  else
  {
    v8 = [(TPTypedSignedData *)self sig];
    v9 = [(TPTypedSignedData *)self data];
    v10 = [(TPTypedSignedData *)self sigTypeName];
    v7 = checkTypesafeSignature(v6, v8, v9, v10);

    v11 = [(TPTypedSignedData *)self sigValidationQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__TPTypedSignedData_checkSignatureWithKey___block_invoke_2;
    v13[3] = &unk_279DEDC58;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_sync(v11, v13);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v7 & 1;
}

void __43__TPTypedSignedData_checkSignatureWithKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastSigValidationPubkey];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) lastSigValidationResult];
  }
}

uint64_t __43__TPTypedSignedData_checkSignatureWithKey___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setLastSigValidationPubkey:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setLastSigValidationResult:v2];
}

- (TPTypedSignedData)initWithData:(id)a3 key:(id)a4 signatureTypeName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = typesafeSignature(v11, v10, v12, a6);
  if (v13)
  {
    v14 = [v11 publicKey];
    self = [(TPTypedSignedData *)self initWithData:v10 sig:v13 pubkey:v14 sigTypeName:v12];

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TPTypedSignedData)initWithData:(id)a3 sig:(id)a4 pubkey:(id)a5 sigTypeName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = TPTypedSignedData;
  v15 = [(TPTypedSignedData *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_data, a3);
    objc_storeStrong(&v16->_sig, a4);
    objc_storeStrong(&v16->_sigTypeName, a6);
    objc_storeStrong(&v16->_lastSigValidationPubkey, a5);
    v16->_lastSigValidationResult = v13 != 0;
    v17 = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.security.TPTypedSignedData_%@", v14];
    v19 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(v19, v20);
    sigValidationQueue = v16->_sigValidationQueue;
    v16->_sigValidationQueue = v21;

    objc_autoreleasePoolPop(v17);
  }

  return v16;
}

@end