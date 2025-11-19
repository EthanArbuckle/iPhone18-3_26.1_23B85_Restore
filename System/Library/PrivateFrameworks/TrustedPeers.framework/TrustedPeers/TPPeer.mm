@interface TPPeer
+ (BOOL)verifyHMACWithPermanentInfoData:(id)a3 permanentInfoSig:(id)a4 stableInfoData:(id)a5 stableInfoSig:(id)a6 dynamicInfoData:(id)a7 dynamicInfoSig:(id)a8 hmacKey:(id)a9 hmacSig:(id)a10;
+ (id)calculateHmacWithHmacKey:(id)a3 permanentInfoData:(id)a4 permanentInfoSig:(id)a5 stableInfoData:(id)a6 stableInfoSig:(id)a7 dynamicInfoData:(id)a8 dynamicInfoSig:(id)a9;
- (NSSet)trustedPeerIDs;
- (NSString)peerID;
- (TPPeer)initWithPermanentInfo:(id)a3;
- (TPPeer)initWithPermanentInfo:(id)a3 stableInfo:(id)a4 dynamicInfo:(id)a5;
- (TPPeer)peerWithUpdatedDynamicInfo:(id)a3 error:(id *)a4;
- (TPPeer)peerWithUpdatedStableInfo:(id)a3 error:(id *)a4;
- (id)calculateHmacWithHmacKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TPPeer

- (id)description
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v14[0] = @"permanentInfo";
  v4 = [(TPPeer *)self permanentInfo];
  v5 = [v4 dictionaryRepresentation];
  v15[0] = v5;
  v14[1] = @"stableInfo";
  v6 = [(TPPeer *)self stableInfo];
  v7 = [v6 dictionaryRepresentation];
  v15[1] = v7;
  v14[2] = @"dynamicInfo";
  v8 = [(TPPeer *)self dynamicInfo];
  v9 = [v8 dictionaryRepresentation];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = [v10 description];

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSSet)trustedPeerIDs
{
  v3 = [(TPPeer *)self dynamicInfo];

  if (v3)
  {
    v4 = [(TPPeer *)self dynamicInfo];
    [v4 includedPeerIDs];
  }

  else
  {
    v5 = MEMORY[0x277CBEB98];
    v4 = [(TPPeer *)self peerID];
    [v5 setWithObject:v4];
  }
  v6 = ;

  return v6;
}

- (TPPeer)peerWithUpdatedDynamicInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TPPeer *)self dynamicInfo];
  v8 = [v7 isEqualToPeerDynamicInfo:v6];

  if (v8)
  {
    v9 = [(TPPeer *)self copy];
    goto LABEL_13;
  }

  v10 = [(TPPeer *)self permanentInfo];
  v11 = [v10 signingPubKey];
  v12 = [v6 checkSignatureWithKey:v11];

  if (v12)
  {
    v13 = [(TPPeer *)self dynamicInfo];
    if (!v13 || (v14 = v13, v15 = [v6 clock], -[TPPeer dynamicInfo](self, "dynamicInfo"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "clock"), v16, v14, v15 > v17))
    {
      v18 = [TPPeer alloc];
      v19 = [(TPPeer *)self permanentInfo];
      v20 = [(TPPeer *)self stableInfo];
      v9 = [(TPPeer *)v18 initWithPermanentInfo:v19 stableInfo:v20 dynamicInfo:v6];

      goto LABEL_13;
    }

    if (a4)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = TPResultErrorDomain;
      v23 = 2;
      goto LABEL_11;
    }
  }

  else if (a4)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = TPResultErrorDomain;
    v23 = 1;
LABEL_11:
    [v21 errorWithDomain:v22 code:v23 userInfo:0];
    *a4 = v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (TPPeer)peerWithUpdatedStableInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TPPeer *)self stableInfo];
  v8 = [v7 isEqualToPeerStableInfo:v6];

  if (v8)
  {
    v9 = [(TPPeer *)self copy];
    goto LABEL_13;
  }

  v10 = [(TPPeer *)self permanentInfo];
  v11 = [v10 signingPubKey];
  v12 = [v6 checkSignatureWithKey:v11];

  if (v12)
  {
    v13 = [(TPPeer *)self stableInfo];
    if (!v13 || (v14 = v13, v15 = [v6 clock], -[TPPeer stableInfo](self, "stableInfo"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "clock"), v16, v14, v15 > v17))
    {
      v18 = [TPPeer alloc];
      v19 = [(TPPeer *)self permanentInfo];
      v20 = [(TPPeer *)self dynamicInfo];
      v9 = [(TPPeer *)v18 initWithPermanentInfo:v19 stableInfo:v6 dynamicInfo:v20];

      goto LABEL_13;
    }

    if (a4)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = TPResultErrorDomain;
      v23 = 2;
      goto LABEL_11;
    }
  }

  else if (a4)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = TPResultErrorDomain;
    v23 = 1;
LABEL_11:
    [v21 errorWithDomain:v22 code:v23 userInfo:0];
    *a4 = v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)calculateHmacWithHmacKey:(id)a3
{
  v4 = a3;
  v18 = [(TPPeer *)self permanentInfo];
  v5 = [v18 data];
  v17 = [(TPPeer *)self permanentInfo];
  v6 = [v17 sig];
  v16 = [(TPPeer *)self stableInfo];
  v7 = [v16 data];
  v8 = [(TPPeer *)self stableInfo];
  v9 = [v8 sig];
  v10 = [(TPPeer *)self dynamicInfo];
  v11 = [v10 data];
  v12 = [(TPPeer *)self dynamicInfo];
  v13 = [v12 sig];
  v15 = [TPPeer calculateHmacWithHmacKey:v4 permanentInfoData:v5 permanentInfoSig:v6 stableInfoData:v7 stableInfoSig:v9 dynamicInfoData:v11 dynamicInfoSig:v13];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TPPeer alloc];
  v5 = [(TPPeer *)self permanentInfo];
  v6 = [(TPPeer *)self stableInfo];
  v7 = [(TPPeer *)self dynamicInfo];
  v8 = [(TPPeer *)v4 initWithPermanentInfo:v5 stableInfo:v6 dynamicInfo:v7];

  return v8;
}

- (TPPeer)initWithPermanentInfo:(id)a3 stableInfo:(id)a4 dynamicInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPPeer;
  v12 = [(TPPeer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_permanentInfo, a3);
    objc_storeStrong(&v13->_stableInfo, a4);
    objc_storeStrong(&v13->_dynamicInfo, a5);
  }

  return v13;
}

- (TPPeer)initWithPermanentInfo:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TPPeer;
  v6 = [(TPPeer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_permanentInfo, a3);
    stableInfo = v7->_stableInfo;
    v7->_stableInfo = 0;

    dynamicInfo = v7->_dynamicInfo;
    v7->_dynamicInfo = 0;
  }

  return v7;
}

- (NSString)peerID
{
  v2 = [(TPPeer *)self permanentInfo];
  v3 = [v2 peerID];

  return v3;
}

+ (BOOL)verifyHMACWithPermanentInfoData:(id)a3 permanentInfoSig:(id)a4 stableInfoData:(id)a5 stableInfoSig:(id)a6 dynamicInfoData:(id)a7 dynamicInfoSig:(id)a8 hmacKey:(id)a9 hmacSig:(id)a10
{
  v16 = a10;
  v17 = [TPPeer calculateHmacWithHmacKey:a9 permanentInfoData:a3 permanentInfoSig:a4 stableInfoData:a5 stableInfoSig:a6 dynamicInfoData:a7 dynamicInfoSig:a8];
  LOBYTE(a7) = [v17 isEqualToData:v16];

  return a7;
}

+ (id)calculateHmacWithHmacKey:(id)a3 permanentInfoData:(id)a4 permanentInfoSig:(id)a5 stableInfoData:(id)a6 stableInfoSig:(id)a7 dynamicInfoData:(id)a8 dynamicInfoSig:(id)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = atomic_load(gHMACCount);
  if (v19 != -1)
  {
    atomic_fetch_add(gHMACCount, 1u);
  }

  v20 = MEMORY[0x277CBEB28];
  v21 = a5;
  v22 = a4;
  v23 = objc_alloc_init(v20);
  v24 = [@"TPPeer" dataUsingEncoding:4];
  [v23 appendData:v24];

  [v23 appendData:v22];
  [v23 appendData:v21];

  if (v15 && v16)
  {
    [v23 appendData:v15];
    [v23 appendData:v16];
  }

  if (v17 && v18)
  {
    [v23 appendData:v17];
    [v23 appendData:v18];
  }

  v25 = [TPHashBuilder keyedHashWithAlgo:4 key:v14 data:v23];

  return v25;
}

@end