@interface TPPeerPermanentInfo
+ (id)peerIDForData:(id)data sig:(id)sig peerIDHashAlgo:(int64_t)algo;
+ (id)permanentInfoWithMachineID:(id)d modelID:(id)iD epoch:(unint64_t)epoch signingKeyPair:(id)pair encryptionKeyPair:(id)keyPair creationTime:(unint64_t)time peerIDHashAlgo:(int64_t)algo error:(id *)self0;
+ (id)permanentInfoWithPeerID:(id)d data:(id)data sig:(id)sig keyFactory:(id)factory checkSig:(BOOL)checkSig;
- (TPPeerPermanentInfo)initWithMachineID:(id)d modelID:(id)iD epoch:(unint64_t)epoch signingPubKey:(id)key encryptionPubKey:(id)pubKey creationTime:(unint64_t)time data:(id)data sig:(id)self0 peerID:(id)self1;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation TPPeerPermanentInfo

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  dictionaryRepresentation = [(TPPeerPermanentInfo *)self dictionaryRepresentation];
  v5 = [dictionaryRepresentation description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [TPPBPeerPermanentInfo alloc];
  data = [(TPPeerPermanentInfo *)self data];
  v5 = [(TPPBPeerPermanentInfo *)v3 initWithData:data];

  dictionaryRepresentation = [(TPPBPeerPermanentInfo *)v5 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (TPPeerPermanentInfo)initWithMachineID:(id)d modelID:(id)iD epoch:(unint64_t)epoch signingPubKey:(id)key encryptionPubKey:(id)pubKey creationTime:(unint64_t)time data:(id)data sig:(id)self0 peerID:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  pubKeyCopy = pubKey;
  dataCopy = data;
  sigCopy = sig;
  peerIDCopy = peerID;
  v31.receiver = self;
  v31.super_class = TPPeerPermanentInfo;
  v19 = [(TPPeerPermanentInfo *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_machineID, d);
    objc_storeStrong(&v20->_modelID, iD);
    v20->_epoch = epoch;
    objc_storeStrong(&v20->_signingPubKey, key);
    objc_storeStrong(&v20->_encryptionPubKey, pubKey);
    v20->_creationTime = time;
    objc_storeStrong(&v20->_data, data);
    objc_storeStrong(&v20->_sig, sig);
    v21 = +[TPStringTable defaultTable];
    v22 = [v21 stringWithString:peerIDCopy];
    peerID = v20->_peerID;
    v20->_peerID = v22;
  }

  return v20;
}

+ (id)permanentInfoWithPeerID:(id)d data:(id)data sig:(id)sig keyFactory:(id)factory checkSig:(BOOL)checkSig
{
  checkSigCopy = checkSig;
  dCopy = d;
  dataCopy = data;
  sigCopy = sig;
  factoryCopy = factory;
  v15 = [[TPPBPeerPermanentInfo alloc] initWithData:dataCopy];
  v16 = v15;
  if (v15)
  {
    signingPubKey = [(TPPBPeerPermanentInfo *)v15 signingPubKey];
    v18 = [signingPubKey length];

    if (v18)
    {
      encryptionPubKey = [(TPPBPeerPermanentInfo *)v16 encryptionPubKey];
      v18 = [encryptionPubKey length];

      if (v18)
      {
        signingPubKey2 = [(TPPBPeerPermanentInfo *)v16 signingPubKey];
        v21 = [factoryCopy keyFromSPKI:signingPubKey2];

        if (!v21 || checkSigCopy && !checkTypesafeSignature(v21, sigCopy, dataCopy, @"TPPB.PeerPermanentInfo") || (v22 = [TPHashBuilder algoOfHash:dCopy], v22 == -1))
        {
          v18 = 0;
        }

        else
        {
          v23 = [TPPeerPermanentInfo peerIDForData:dataCopy sig:sigCopy peerIDHashAlgo:v22];
          if ([v23 isEqualToString:dCopy])
          {
            encryptionPubKey2 = [(TPPBPeerPermanentInfo *)v16 encryptionPubKey];
            v25 = [factoryCopy keyFromSPKI:encryptionPubKey2];

            if (v25)
            {
              v29 = [TPPeerPermanentInfo alloc];
              machineId = [(TPPBPeerPermanentInfo *)v16 machineId];
              modelId = [(TPPBPeerPermanentInfo *)v16 modelId];
              v18 = [(TPPeerPermanentInfo *)v29 initWithMachineID:machineId modelID:modelId epoch:[(TPPBPeerPermanentInfo *)v16 epoch] signingPubKey:v21 encryptionPubKey:v25 creationTime:[(TPPBPeerPermanentInfo *)v16 creationTime] data:dataCopy sig:sigCopy peerID:dCopy];
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

+ (id)permanentInfoWithMachineID:(id)d modelID:(id)iD epoch:(unint64_t)epoch signingKeyPair:(id)pair encryptionKeyPair:(id)keyPair creationTime:(unint64_t)time peerIDHashAlgo:(int64_t)algo error:(id *)self0
{
  errorCopy2 = error;
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  keyPairCopy = keyPair;
  pairCopy = pair;
  publicKey = [pairCopy publicKey];
  publicKey2 = [keyPairCopy publicKey];

  if (TPBecomeiProdOverride())
  {
    v39 = 0;
    timeCopy = time;
    v23 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[^0-9 options:]*" error:{0, &v39}];
    v24 = v39;
    if (v23)
    {
      [v23 stringByReplacingMatchesInString:iDCopy options:0 range:0 withTemplate:{-[NSObject length](iDCopy, "length"), @"iProd"}];
      iDCopy = v25 = iDCopy;
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

    time = timeCopy;
    errorCopy2 = error;
  }

  v26 = [TPPeerPermanentInfo mungeModelID:iDCopy];

  v27 = objc_alloc_init(TPPBPeerPermanentInfo);
  [(TPPBPeerPermanentInfo *)v27 setMachineId:dCopy];
  v38 = v26;
  [(TPPBPeerPermanentInfo *)v27 setModelId:v26];
  [(TPPBPeerPermanentInfo *)v27 setEpoch:epoch];
  spki = [publicKey spki];
  [(TPPBPeerPermanentInfo *)v27 setSigningPubKey:spki];

  spki2 = [publicKey2 spki];
  [(TPPBPeerPermanentInfo *)v27 setEncryptionPubKey:spki2];

  [(TPPBPeerPermanentInfo *)v27 setCreationTime:time];
  data = [(TPPBPeerPermanentInfo *)v27 data];
  typesafeSignature(pairCopy, data, @"TPPB.PeerPermanentInfo", errorCopy2);
  v31 = dCopy;
  v33 = v32 = time;

  if (v33)
  {
    v34 = [TPPeerPermanentInfo peerIDForData:data sig:v33 peerIDHashAlgo:algo];
    v35 = [[TPPeerPermanentInfo alloc] initWithMachineID:v31 modelID:v38 epoch:epoch signingPubKey:publicKey encryptionPubKey:publicKey2 creationTime:v32 data:data sig:v33 peerID:v34];
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

@end