@interface TPPeerPermanentInfo
+ (id)peerIDForData:(id)a3 sig:(id)a4 peerIDHashAlgo:(int64_t)a5;
+ (id)permanentInfoWithMachineID:(id)a3 modelID:(id)a4 epoch:(unint64_t)a5 signingKeyPair:(id)a6 encryptionKeyPair:(id)a7 creationTime:(unint64_t)a8 peerIDHashAlgo:(int64_t)a9 error:(id *)a10;
+ (id)permanentInfoWithPeerID:(id)a3 data:(id)a4 sig:(id)a5 keyFactory:(id)a6 checkSig:(BOOL)a7;
- (TPPeerPermanentInfo)initWithMachineID:(id)a3 modelID:(id)a4 epoch:(unint64_t)a5 signingPubKey:(id)a6 encryptionPubKey:(id)a7 creationTime:(unint64_t)a8 data:(id)a9 sig:(id)a10 peerID:(id)a11;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation TPPeerPermanentInfo

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerPermanentInfo *)self dictionaryRepresentation];
  v5 = [v4 description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [TPPBPeerPermanentInfo alloc];
  v4 = [(TPPeerPermanentInfo *)self data];
  v5 = [(TPPBPeerPermanentInfo *)v3 initWithData:v4];

  v6 = [(TPPBPeerPermanentInfo *)v5 dictionaryRepresentation];

  return v6;
}

- (TPPeerPermanentInfo)initWithMachineID:(id)a3 modelID:(id)a4 epoch:(unint64_t)a5 signingPubKey:(id)a6 encryptionPubKey:(id)a7 creationTime:(unint64_t)a8 data:(id)a9 sig:(id)a10 peerID:(id)a11
{
  v30 = a3;
  v29 = a4;
  v28 = a6;
  v27 = a7;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v31.receiver = self;
  v31.super_class = TPPeerPermanentInfo;
  v19 = [(TPPeerPermanentInfo *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_machineID, a3);
    objc_storeStrong(&v20->_modelID, a4);
    v20->_epoch = a5;
    objc_storeStrong(&v20->_signingPubKey, a6);
    objc_storeStrong(&v20->_encryptionPubKey, a7);
    v20->_creationTime = a8;
    objc_storeStrong(&v20->_data, a9);
    objc_storeStrong(&v20->_sig, a10);
    v21 = +[TPStringTable defaultTable];
    v22 = [v21 stringWithString:v18];
    peerID = v20->_peerID;
    v20->_peerID = v22;
  }

  return v20;
}

+ (id)permanentInfoWithPeerID:(id)a3 data:(id)a4 sig:(id)a5 keyFactory:(id)a6 checkSig:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [[TPPBPeerPermanentInfo alloc] initWithData:v12];
  v16 = v15;
  if (v15)
  {
    v17 = [(TPPBPeerPermanentInfo *)v15 signingPubKey];
    v18 = [v17 length];

    if (v18)
    {
      v19 = [(TPPBPeerPermanentInfo *)v16 encryptionPubKey];
      v18 = [v19 length];

      if (v18)
      {
        v20 = [(TPPBPeerPermanentInfo *)v16 signingPubKey];
        v21 = [v14 keyFromSPKI:v20];

        if (!v21 || v7 && !checkTypesafeSignature(v21, v13, v12, @"TPPB.PeerPermanentInfo") || (v22 = [TPHashBuilder algoOfHash:v11], v22 == -1))
        {
          v18 = 0;
        }

        else
        {
          v23 = [TPPeerPermanentInfo peerIDForData:v12 sig:v13 peerIDHashAlgo:v22];
          if ([v23 isEqualToString:v11])
          {
            v24 = [(TPPBPeerPermanentInfo *)v16 encryptionPubKey];
            v25 = [v14 keyFromSPKI:v24];

            if (v25)
            {
              v29 = [TPPeerPermanentInfo alloc];
              v28 = [(TPPBPeerPermanentInfo *)v16 machineId];
              v26 = [(TPPBPeerPermanentInfo *)v16 modelId];
              v18 = [(TPPeerPermanentInfo *)v29 initWithMachineID:v28 modelID:v26 epoch:[(TPPBPeerPermanentInfo *)v16 epoch] signingPubKey:v21 encryptionPubKey:v25 creationTime:[(TPPBPeerPermanentInfo *)v16 creationTime] data:v12 sig:v13 peerID:v11];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
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

+ (id)permanentInfoWithMachineID:(id)a3 modelID:(id)a4 epoch:(unint64_t)a5 signingKeyPair:(id)a6 encryptionKeyPair:(id)a7 creationTime:(unint64_t)a8 peerIDHashAlgo:(int64_t)a9 error:(id *)a10
{
  v15 = a10;
  v42 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a6;
  v20 = [v19 publicKey];
  v21 = [v18 publicKey];

  if (TPBecomeiProdOverride())
  {
    v39 = 0;
    v22 = a8;
    v23 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[^0-9 options:]*" error:{0, &v39}];
    v24 = v39;
    if (v23)
    {
      [v23 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{-[NSObject length](v17, "length"), @"iProd"}];
      v17 = v25 = v17;
    }

    else
    {
      v25 = TPModelLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v24;
        _os_log_impl(&dword_26F78B000, v25, OS_LOG_TYPE_DEFAULT, "Failed to make regex; cannot change modelID: %{public}@", buf, 0xCu);
      }
    }

    a8 = v22;
    v15 = a10;
  }

  v26 = [TPPeerPermanentInfo mungeModelID:v17];

  v27 = objc_alloc_init(TPPBPeerPermanentInfo);
  [(TPPBPeerPermanentInfo *)v27 setMachineId:v16];
  v38 = v26;
  [(TPPBPeerPermanentInfo *)v27 setModelId:v26];
  [(TPPBPeerPermanentInfo *)v27 setEpoch:a5];
  v28 = [v20 spki];
  [(TPPBPeerPermanentInfo *)v27 setSigningPubKey:v28];

  v29 = [v21 spki];
  [(TPPBPeerPermanentInfo *)v27 setEncryptionPubKey:v29];

  [(TPPBPeerPermanentInfo *)v27 setCreationTime:a8];
  v30 = [(TPPBPeerPermanentInfo *)v27 data];
  typesafeSignature(v19, v30, @"TPPB.PeerPermanentInfo", v15);
  v31 = v16;
  v33 = v32 = a8;

  if (v33)
  {
    v34 = [TPPeerPermanentInfo peerIDForData:v30 sig:v33 peerIDHashAlgo:a9];
    v35 = [[TPPeerPermanentInfo alloc] initWithMachineID:v31 modelID:v38 epoch:a5 signingPubKey:v20 encryptionPubKey:v21 creationTime:v32 data:v30 sig:v33 peerID:v34];
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

@end