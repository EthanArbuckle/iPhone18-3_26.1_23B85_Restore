@interface TPTypedSignedData
- (BOOL)checkSignatureWithKey:(id)key;
- (TPTypedSignedData)initWithData:(id)data key:(id)key signatureTypeName:(id)name error:(id *)error;
- (TPTypedSignedData)initWithData:(id)data sig:(id)sig pubkey:(id)pubkey sigTypeName:(id)name;
@end

@implementation TPTypedSignedData

- (BOOL)checkSignatureWithKey:(id)key
{
  keyCopy = key;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  sigValidationQueue = [(TPTypedSignedData *)self sigValidationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TPTypedSignedData_checkSignatureWithKey___block_invoke;
  block[3] = &unk_279DEDC30;
  block[4] = self;
  v6 = keyCopy;
  v17 = v6;
  v18 = &v24;
  v19 = &v20;
  dispatch_sync(sigValidationQueue, block);

  if (*(v25 + 24) == 1)
  {
    v7 = *(v21 + 24);
  }

  else
  {
    v8 = [(TPTypedSignedData *)self sig];
    data = [(TPTypedSignedData *)self data];
    sigTypeName = [(TPTypedSignedData *)self sigTypeName];
    v7 = checkTypesafeSignature(v6, v8, data, sigTypeName);

    sigValidationQueue2 = [(TPTypedSignedData *)self sigValidationQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__TPTypedSignedData_checkSignatureWithKey___block_invoke_2;
    v13[3] = &unk_279DEDC58;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_sync(sigValidationQueue2, v13);
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

- (TPTypedSignedData)initWithData:(id)data key:(id)key signatureTypeName:(id)name error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  nameCopy = name;
  v13 = typesafeSignature(keyCopy, dataCopy, nameCopy, error);
  if (v13)
  {
    publicKey = [keyCopy publicKey];
    self = [(TPTypedSignedData *)self initWithData:dataCopy sig:v13 pubkey:publicKey sigTypeName:nameCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TPTypedSignedData)initWithData:(id)data sig:(id)sig pubkey:(id)pubkey sigTypeName:(id)name
{
  dataCopy = data;
  sigCopy = sig;
  pubkeyCopy = pubkey;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = TPTypedSignedData;
  v15 = [(TPTypedSignedData *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_data, data);
    objc_storeStrong(&v16->_sig, sig);
    objc_storeStrong(&v16->_sigTypeName, name);
    objc_storeStrong(&v16->_lastSigValidationPubkey, pubkey);
    v16->_lastSigValidationResult = pubkeyCopy != 0;
    v17 = objc_autoreleasePoolPush();
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.security.TPTypedSignedData_%@", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(uTF8String, v20);
    sigValidationQueue = v16->_sigValidationQueue;
    v16->_sigValidationQueue = v21;

    objc_autoreleasePoolPop(v17);
  }

  return v16;
}

@end