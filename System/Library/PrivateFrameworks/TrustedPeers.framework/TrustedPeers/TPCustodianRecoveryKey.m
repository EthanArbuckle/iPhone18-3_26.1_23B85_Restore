@interface TPCustodianRecoveryKey
+ (id)custodianRecoveryKeyWithData:(id)a3 sig:(id)a4 keyFactory:(id)a5;
+ (id)peerIDForData:(id)a3 sig:(id)a4 peerIDHashAlgo:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (TPCustodianRecoveryKey)initWithUUID:(id)a3 signingPublicKey:(id)a4 encryptionPublicKey:(id)a5 kind:(int)a6 data:(id)a7 sig:(id)a8 peerID:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation TPCustodianRecoveryKey

- (unint64_t)hash
{
  v3 = [(TPCustodianRecoveryKey *)self data];
  v4 = [v3 hash];
  v5 = [(TPCustodianRecoveryKey *)self sig];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TPCustodianRecoveryKey *)self data];
      v7 = [(TPCustodianRecoveryKey *)v5 data];
      if ([v6 isEqualToData:v7])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
  [v5 setUuid:v6];

  [v5 setSigningPublicKey:self->_signingPublicKey];
  [v5 setEncryptionPublicKey:self->_encryptionPublicKey];
  v7 = [(NSString *)self->_peerID copyWithZone:a3];
  [v5 setPeerID:v7];

  [v5 setKind:self->_kind];
  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [TPPBCustodianRecoveryKey alloc];
  v4 = [(TPCustodianRecoveryKey *)self data];
  v5 = [(TPPBCustodianRecoveryKey *)v3 initWithData:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(TPPBCustodianRecoveryKey *)v5 dictionaryRepresentation];
  [v6 addEntriesFromDictionary:v7];

  v8 = [(TPCustodianRecoveryKey *)self peerID];
  [v6 setObject:v8 forKeyedSubscript:@"peerID"];

  return v6;
}

- (TPCustodianRecoveryKey)initWithUUID:(id)a3 signingPublicKey:(id)a4 encryptionPublicKey:(id)a5 kind:(int)a6 data:(id)a7 sig:(id)a8 peerID:(id)a9
{
  v31 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v32.receiver = self;
  v32.super_class = TPCustodianRecoveryKey;
  v21 = [(TPCustodianRecoveryKey *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_uuid, a3);
    objc_storeStrong(&v22->_signingPublicKey, a4);
    objc_storeStrong(&v22->_encryptionPublicKey, a5);
    v22->_kind = a6;
    v23 = [v18 copy];
    data = v22->_data;
    v22->_data = v23;

    v25 = [v19 copy];
    sig = v22->_sig;
    v22->_sig = v25;

    v27 = +[TPStringTable defaultTable];
    v28 = [v27 stringWithString:v20];
    peerID = v22->_peerID;
    v22->_peerID = v28;
  }

  return v22;
}

+ (id)custodianRecoveryKeyWithData:(id)a3 sig:(id)a4 keyFactory:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[TPPBCustodianRecoveryKey alloc] initWithData:v7];
  v11 = v10;
  if (v10)
  {
    v12 = [(TPPBCustodianRecoveryKey *)v10 signingPublicKey];
    v13 = [v9 keyFromSPKI:v12];

    if (v13 && checkTypesafeSignature(v13, v8, v7, @"TPPB.CustodianRecoveryKey"))
    {
      v14 = [(TPPBCustodianRecoveryKey *)v11 encryptionPublicKey];
      v15 = [v9 keyFromSPKI:v14];

      if (v15)
      {
        v16 = [TPCustodianRecoveryKey peerIDForData:v7 sig:v8 peerIDHashAlgo:1];
        v17 = [TPCustodianRecoveryKey alloc];
        v18 = objc_alloc(MEMORY[0x277CCAD78]);
        v19 = [(TPPBCustodianRecoveryKey *)v11 uuid];
        v20 = [v18 initWithUUIDString:v19];
        v21 = [(TPCustodianRecoveryKey *)v17 initWithUUID:v20 signingPublicKey:v13 encryptionPublicKey:v15 kind:[(TPPBCustodianRecoveryKey *)v11 kind] data:v7 sig:v8 peerID:v16];
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

+ (id)peerIDForData:(id)a3 sig:(id)a4 peerIDHashAlgo:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[TPHashBuilder alloc] initWithAlgo:a5];
  [(TPHashBuilder *)v9 updateWithData:v8];

  [(TPHashBuilder *)v9 updateWithData:v7];
  v10 = [(TPHashBuilder *)v9 finalHash];

  return v10;
}

@end