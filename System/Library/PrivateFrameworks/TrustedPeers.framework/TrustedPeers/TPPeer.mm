@interface TPPeer
+ (BOOL)verifyHMACWithPermanentInfoData:(id)data permanentInfoSig:(id)sig stableInfoData:(id)infoData stableInfoSig:(id)infoSig dynamicInfoData:(id)dynamicInfoData dynamicInfoSig:(id)dynamicInfoSig hmacKey:(id)key hmacSig:(id)self0;
+ (id)calculateHmacWithHmacKey:(id)key permanentInfoData:(id)data permanentInfoSig:(id)sig stableInfoData:(id)infoData stableInfoSig:(id)infoSig dynamicInfoData:(id)dynamicInfoData dynamicInfoSig:(id)dynamicInfoSig;
- (NSSet)trustedPeerIDs;
- (NSString)peerID;
- (TPPeer)initWithPermanentInfo:(id)info;
- (TPPeer)initWithPermanentInfo:(id)info stableInfo:(id)stableInfo dynamicInfo:(id)dynamicInfo;
- (TPPeer)peerWithUpdatedDynamicInfo:(id)info error:(id *)error;
- (TPPeer)peerWithUpdatedStableInfo:(id)info error:(id *)error;
- (id)calculateHmacWithHmacKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TPPeer

- (id)description
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v14[0] = @"permanentInfo";
  permanentInfo = [(TPPeer *)self permanentInfo];
  dictionaryRepresentation = [permanentInfo dictionaryRepresentation];
  v15[0] = dictionaryRepresentation;
  v14[1] = @"stableInfo";
  stableInfo = [(TPPeer *)self stableInfo];
  dictionaryRepresentation2 = [stableInfo dictionaryRepresentation];
  v15[1] = dictionaryRepresentation2;
  v14[2] = @"dynamicInfo";
  dynamicInfo = [(TPPeer *)self dynamicInfo];
  dictionaryRepresentation3 = [dynamicInfo dictionaryRepresentation];
  v15[2] = dictionaryRepresentation3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = [v10 description];

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSSet)trustedPeerIDs
{
  dynamicInfo = [(TPPeer *)self dynamicInfo];

  if (dynamicInfo)
  {
    dynamicInfo2 = [(TPPeer *)self dynamicInfo];
    [dynamicInfo2 includedPeerIDs];
  }

  else
  {
    v5 = MEMORY[0x277CBEB98];
    dynamicInfo2 = [(TPPeer *)self peerID];
    [v5 setWithObject:dynamicInfo2];
  }
  v6 = ;

  return v6;
}

- (TPPeer)peerWithUpdatedDynamicInfo:(id)info error:(id *)error
{
  infoCopy = info;
  dynamicInfo = [(TPPeer *)self dynamicInfo];
  v8 = [dynamicInfo isEqualToPeerDynamicInfo:infoCopy];

  if (v8)
  {
    v9 = [(TPPeer *)self copy];
    goto LABEL_13;
  }

  permanentInfo = [(TPPeer *)self permanentInfo];
  signingPubKey = [permanentInfo signingPubKey];
  v12 = [infoCopy checkSignatureWithKey:signingPubKey];

  if (v12)
  {
    dynamicInfo2 = [(TPPeer *)self dynamicInfo];
    if (!dynamicInfo2 || (v14 = dynamicInfo2, v15 = [infoCopy clock], -[TPPeer dynamicInfo](self, "dynamicInfo"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "clock"), v16, v14, v15 > v17))
    {
      v18 = [TPPeer alloc];
      permanentInfo2 = [(TPPeer *)self permanentInfo];
      stableInfo = [(TPPeer *)self stableInfo];
      v9 = [(TPPeer *)v18 initWithPermanentInfo:permanentInfo2 stableInfo:stableInfo dynamicInfo:infoCopy];

      goto LABEL_13;
    }

    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = TPResultErrorDomain;
      v23 = 2;
      goto LABEL_11;
    }
  }

  else if (error)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = TPResultErrorDomain;
    v23 = 1;
LABEL_11:
    [v21 errorWithDomain:v22 code:v23 userInfo:0];
    *error = v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (TPPeer)peerWithUpdatedStableInfo:(id)info error:(id *)error
{
  infoCopy = info;
  stableInfo = [(TPPeer *)self stableInfo];
  v8 = [stableInfo isEqualToPeerStableInfo:infoCopy];

  if (v8)
  {
    v9 = [(TPPeer *)self copy];
    goto LABEL_13;
  }

  permanentInfo = [(TPPeer *)self permanentInfo];
  signingPubKey = [permanentInfo signingPubKey];
  v12 = [infoCopy checkSignatureWithKey:signingPubKey];

  if (v12)
  {
    stableInfo2 = [(TPPeer *)self stableInfo];
    if (!stableInfo2 || (v14 = stableInfo2, v15 = [infoCopy clock], -[TPPeer stableInfo](self, "stableInfo"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "clock"), v16, v14, v15 > v17))
    {
      v18 = [TPPeer alloc];
      permanentInfo2 = [(TPPeer *)self permanentInfo];
      dynamicInfo = [(TPPeer *)self dynamicInfo];
      v9 = [(TPPeer *)v18 initWithPermanentInfo:permanentInfo2 stableInfo:infoCopy dynamicInfo:dynamicInfo];

      goto LABEL_13;
    }

    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = TPResultErrorDomain;
      v23 = 2;
      goto LABEL_11;
    }
  }

  else if (error)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = TPResultErrorDomain;
    v23 = 1;
LABEL_11:
    [v21 errorWithDomain:v22 code:v23 userInfo:0];
    *error = v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)calculateHmacWithHmacKey:(id)key
{
  keyCopy = key;
  permanentInfo = [(TPPeer *)self permanentInfo];
  data = [permanentInfo data];
  permanentInfo2 = [(TPPeer *)self permanentInfo];
  v6 = [permanentInfo2 sig];
  stableInfo = [(TPPeer *)self stableInfo];
  data2 = [stableInfo data];
  stableInfo2 = [(TPPeer *)self stableInfo];
  v9 = [stableInfo2 sig];
  dynamicInfo = [(TPPeer *)self dynamicInfo];
  data3 = [dynamicInfo data];
  dynamicInfo2 = [(TPPeer *)self dynamicInfo];
  v13 = [dynamicInfo2 sig];
  v15 = [TPPeer calculateHmacWithHmacKey:keyCopy permanentInfoData:data permanentInfoSig:v6 stableInfoData:data2 stableInfoSig:v9 dynamicInfoData:data3 dynamicInfoSig:v13];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TPPeer alloc];
  permanentInfo = [(TPPeer *)self permanentInfo];
  stableInfo = [(TPPeer *)self stableInfo];
  dynamicInfo = [(TPPeer *)self dynamicInfo];
  v8 = [(TPPeer *)v4 initWithPermanentInfo:permanentInfo stableInfo:stableInfo dynamicInfo:dynamicInfo];

  return v8;
}

- (TPPeer)initWithPermanentInfo:(id)info stableInfo:(id)stableInfo dynamicInfo:(id)dynamicInfo
{
  infoCopy = info;
  stableInfoCopy = stableInfo;
  dynamicInfoCopy = dynamicInfo;
  v15.receiver = self;
  v15.super_class = TPPeer;
  v12 = [(TPPeer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_permanentInfo, info);
    objc_storeStrong(&v13->_stableInfo, stableInfo);
    objc_storeStrong(&v13->_dynamicInfo, dynamicInfo);
  }

  return v13;
}

- (TPPeer)initWithPermanentInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = TPPeer;
  v6 = [(TPPeer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_permanentInfo, info);
    stableInfo = v7->_stableInfo;
    v7->_stableInfo = 0;

    dynamicInfo = v7->_dynamicInfo;
    v7->_dynamicInfo = 0;
  }

  return v7;
}

- (NSString)peerID
{
  permanentInfo = [(TPPeer *)self permanentInfo];
  peerID = [permanentInfo peerID];

  return peerID;
}

+ (BOOL)verifyHMACWithPermanentInfoData:(id)data permanentInfoSig:(id)sig stableInfoData:(id)infoData stableInfoSig:(id)infoSig dynamicInfoData:(id)dynamicInfoData dynamicInfoSig:(id)dynamicInfoSig hmacKey:(id)key hmacSig:(id)self0
{
  hmacSigCopy = hmacSig;
  v17 = [TPPeer calculateHmacWithHmacKey:key permanentInfoData:data permanentInfoSig:sig stableInfoData:infoData stableInfoSig:infoSig dynamicInfoData:dynamicInfoData dynamicInfoSig:dynamicInfoSig];
  LOBYTE(dynamicInfoData) = [v17 isEqualToData:hmacSigCopy];

  return dynamicInfoData;
}

+ (id)calculateHmacWithHmacKey:(id)key permanentInfoData:(id)data permanentInfoSig:(id)sig stableInfoData:(id)infoData stableInfoSig:(id)infoSig dynamicInfoData:(id)dynamicInfoData dynamicInfoSig:(id)dynamicInfoSig
{
  keyCopy = key;
  infoDataCopy = infoData;
  infoSigCopy = infoSig;
  dynamicInfoDataCopy = dynamicInfoData;
  dynamicInfoSigCopy = dynamicInfoSig;
  v19 = atomic_load(gHMACCount);
  if (v19 != -1)
  {
    atomic_fetch_add(gHMACCount, 1u);
  }

  v20 = MEMORY[0x277CBEB28];
  sigCopy = sig;
  dataCopy = data;
  v23 = objc_alloc_init(v20);
  v24 = [@"TPPeer" dataUsingEncoding:4];
  [v23 appendData:v24];

  [v23 appendData:dataCopy];
  [v23 appendData:sigCopy];

  if (infoDataCopy && infoSigCopy)
  {
    [v23 appendData:infoDataCopy];
    [v23 appendData:infoSigCopy];
  }

  if (dynamicInfoDataCopy && dynamicInfoSigCopy)
  {
    [v23 appendData:dynamicInfoDataCopy];
    [v23 appendData:dynamicInfoSigCopy];
  }

  v25 = [TPHashBuilder keyedHashWithAlgo:4 key:keyCopy data:v23];

  return v25;
}

@end