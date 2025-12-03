@interface TPCustodianRecoveryKey
+ (id)custodianRecoveryKeyWithData:(id)data sig:(id)sig keyFactory:(id)factory;
+ (id)peerIDForData:(id)data sig:(id)sig peerIDHashAlgo:(int64_t)algo;
- (BOOL)isEqual:(id)equal;
- (TPCustodianRecoveryKey)initWithUUID:(id)d signingPublicKey:(id)key encryptionPublicKey:(id)publicKey kind:(int)kind data:(id)data sig:(id)sig peerID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation TPCustodianRecoveryKey

- (unint64_t)hash
{
  data = [(TPCustodianRecoveryKey *)self data];
  v4 = [data hash];
  v5 = [(TPCustodianRecoveryKey *)self sig];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      data = [(TPCustodianRecoveryKey *)self data];
      data2 = [(TPCustodianRecoveryKey *)v5 data];
      if ([data isEqualToData:data2])
      {
        v8 = [(TPCustodianRecoveryKey *)self sig];
        v9 = [(TPCustodianRecoveryKey *)v5 sig];
        v10 = [v8 isEqualToData:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
  [v5 setUuid:v6];

  [v5 setSigningPublicKey:self->_signingPublicKey];
  [v5 setEncryptionPublicKey:self->_encryptionPublicKey];
  v7 = [(NSString *)self->_peerID copyWithZone:zone];
  [v5 setPeerID:v7];

  [v5 setKind:self->_kind];
  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [TPPBCustodianRecoveryKey alloc];
  data = [(TPCustodianRecoveryKey *)self data];
  v5 = [(TPPBCustodianRecoveryKey *)v3 initWithData:data];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dictionaryRepresentation = [(TPPBCustodianRecoveryKey *)v5 dictionaryRepresentation];
  [v6 addEntriesFromDictionary:dictionaryRepresentation];

  peerID = [(TPCustodianRecoveryKey *)self peerID];
  [v6 setObject:peerID forKeyedSubscript:@"peerID"];

  return v6;
}

- (TPCustodianRecoveryKey)initWithUUID:(id)d signingPublicKey:(id)key encryptionPublicKey:(id)publicKey kind:(int)kind data:(id)data sig:(id)sig peerID:(id)iD
{
  dCopy = d;
  keyCopy = key;
  publicKeyCopy = publicKey;
  dataCopy = data;
  sigCopy = sig;
  iDCopy = iD;
  v32.receiver = self;
  v32.super_class = TPCustodianRecoveryKey;
  v21 = [(TPCustodianRecoveryKey *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_uuid, d);
    objc_storeStrong(&v22->_signingPublicKey, key);
    objc_storeStrong(&v22->_encryptionPublicKey, publicKey);
    v22->_kind = kind;
    v23 = [dataCopy copy];
    data = v22->_data;
    v22->_data = v23;

    v25 = [sigCopy copy];
    sig = v22->_sig;
    v22->_sig = v25;

    v27 = +[TPStringTable defaultTable];
    v28 = [v27 stringWithString:iDCopy];
    peerID = v22->_peerID;
    v22->_peerID = v28;
  }

  return v22;
}

+ (id)custodianRecoveryKeyWithData:(id)data sig:(id)sig keyFactory:(id)factory
{
  dataCopy = data;
  sigCopy = sig;
  factoryCopy = factory;
  v10 = [[TPPBCustodianRecoveryKey alloc] initWithData:dataCopy];
  v11 = v10;
  if (v10)
  {
    signingPublicKey = [(TPPBCustodianRecoveryKey *)v10 signingPublicKey];
    v13 = [factoryCopy keyFromSPKI:signingPublicKey];

    if (v13 && checkTypesafeSignature(v13, sigCopy, dataCopy, @"TPPB.CustodianRecoveryKey"))
    {
      encryptionPublicKey = [(TPPBCustodianRecoveryKey *)v11 encryptionPublicKey];
      v15 = [factoryCopy keyFromSPKI:encryptionPublicKey];

      if (v15)
      {
        v16 = [TPCustodianRecoveryKey peerIDForData:dataCopy sig:sigCopy peerIDHashAlgo:1];
        v17 = [TPCustodianRecoveryKey alloc];
        v18 = objc_alloc(MEMORY[0x277CCAD78]);
        uuid = [(TPPBCustodianRecoveryKey *)v11 uuid];
        v20 = [v18 initWithUUIDString:uuid];
        v21 = [(TPCustodianRecoveryKey *)v17 initWithUUID:v20 signingPublicKey:v13 encryptionPublicKey:v15 kind:[(TPPBCustodianRecoveryKey *)v11 kind] data:dataCopy sig:sigCopy peerID:v16];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)peerIDForData:(id)data sig:(id)sig peerIDHashAlgo:(int64_t)algo
{
  sigCopy = sig;
  dataCopy = data;
  v9 = [[TPHashBuilder alloc] initWithAlgo:algo];
  [(TPHashBuilder *)v9 updateWithData:dataCopy];

  [(TPHashBuilder *)v9 updateWithData:sigCopy];
  finalHash = [(TPHashBuilder *)v9 finalHash];

  return finalHash;
}

@end