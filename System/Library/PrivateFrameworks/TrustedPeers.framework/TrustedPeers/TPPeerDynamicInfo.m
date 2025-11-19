@interface TPPeerDynamicInfo
+ (id)dynamicInfoPBWithClock:(unint64_t)a3 includedPeerIDs:(id)a4 excludedPeerIDs:(id)a5 dispositions:(id)a6 preapprovals:(id)a7;
+ (id)dynamicInfoWithClock:(unint64_t)a3 includedPeerIDs:(id)a4 excludedPeerIDs:(id)a5 dispositions:(id)a6 preapprovals:(id)a7 signingKeyPair:(id)a8 error:(id *)a9;
+ (id)dynamicInfoWithData:(id)a3 sig:(id)a4;
- (BOOL)checkSignatureWithKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeerDynamicInfo:(id)a3;
- (NSData)data;
- (NSData)sig;
- (NSDictionary)dispositions;
- (TPPeerDynamicInfo)initWithObj:(id)a3 tsd:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pb;
@end

@implementation TPPeerDynamicInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPPeerDynamicInfo *)self isEqualToPeerDynamicInfo:v4];
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerDynamicInfo *)self dictionaryRepresentation];
  v5 = [v4 description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerDynamicInfo *)self pb];
  v5 = [v4 dictionaryRepresentation];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (BOOL)isEqualToPeerDynamicInfo:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(TPPeerDynamicInfo *)self data];
    v6 = [(TPPeerDynamicInfo *)v4 data];
    if ([v5 isEqualToData:v6])
    {
      v7 = [(TPPeerDynamicInfo *)self sig];
      v8 = [(TPPeerDynamicInfo *)v4 sig];
      v9 = [v7 isEqualToData:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSData)sig
{
  v2 = [(TPPeerDynamicInfo *)self tsd];
  v3 = [v2 sig];

  return v3;
}

- (NSData)data
{
  v2 = [(TPPeerDynamicInfo *)self tsd];
  v3 = [v2 data];

  return v3;
}

- (BOOL)checkSignatureWithKey:(id)a3
{
  v4 = a3;
  v5 = [(TPPeerDynamicInfo *)self tsd];
  v6 = [v5 checkSignatureWithKey:v4];

  return v6;
}

- (NSDictionary)dispositions
{
  v3 = +[TPStringTable defaultTable];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_autoreleasePoolPush();
  v6 = [(TPPeerDynamicInfo *)self pb];
  v7 = [v6 dispositions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__TPPeerDynamicInfo_dispositions__block_invoke;
  v11[3] = &unk_279DED808;
  v8 = v4;
  v12 = v8;
  v9 = v3;
  v13 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  objc_autoreleasePoolPop(v5);

  return v8;
}

void __33__TPPeerDynamicInfo_dispositions__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 peerID];
  if (v3)
  {
    v4 = v3;
    v5 = [v11 disposition];

    if (v5)
    {
      v6 = [v11 disposition];
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = [v11 peerID];
      v10 = [v7 stringWithString:v9];
      [v8 setObject:v6 forKeyedSubscript:v10];
    }
  }
}

- (id)pb
{
  v3 = [TPPBPeerDynamicInfo alloc];
  v4 = [(TPPeerDynamicInfo *)self data];
  v5 = [(TPPBPeerDynamicInfo *)v3 initWithData:v4];

  return v5;
}

- (TPPeerDynamicInfo)initWithObj:(id)a3 tsd:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[TPStringTable defaultTable];
  v20.receiver = self;
  v20.super_class = TPPeerDynamicInfo;
  v9 = [(TPPeerDynamicInfo *)&v20 init];
  if (v9)
  {
    v9->_clock = [v6 clock];
    v10 = [v6 includeds];
    v11 = [v8 setWithArray:v10];
    includedPeerIDs = v9->_includedPeerIDs;
    v9->_includedPeerIDs = v11;

    v13 = [v6 excludeds];
    v14 = [v8 setWithArray:v13];
    excludedPeerIDs = v9->_excludedPeerIDs;
    v9->_excludedPeerIDs = v14;

    v16 = [v6 preapprovals];
    v17 = [v8 setWithArray:v16];
    preapprovals = v9->_preapprovals;
    v9->_preapprovals = v17;

    objc_storeStrong(&v9->_tsd, a4);
  }

  return v9;
}

+ (id)dynamicInfoWithData:(id)a3 sig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [[TPPBPeerDynamicInfo alloc] initWithData:v5];
  if (v8)
  {
    v9 = [TPPeerDynamicInfo alloc];
    v10 = [[TPTypedSignedData alloc] initWithData:v5 sig:v6 signatureTypeName:@"TPPB.PeerDynamicInfo"];
    v11 = [(TPPeerDynamicInfo *)v9 initWithObj:v8 tsd:v10];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v11;
}

+ (id)dynamicInfoWithClock:(unint64_t)a3 includedPeerIDs:(id)a4 excludedPeerIDs:(id)a5 dispositions:(id)a6 preapprovals:(id)a7 signingKeyPair:(id)a8 error:(id *)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_autoreleasePoolPush();
  v27 = v15;
  v21 = [a1 dynamicInfoPBWithClock:a3 includedPeerIDs:v15 excludedPeerIDs:v16 dispositions:v17 preapprovals:v18];
  v22 = [v21 data];
  v28 = 0;
  v23 = [[TPTypedSignedData alloc] initWithData:v22 key:v19 signatureTypeName:@"TPPB.PeerDynamicInfo" error:&v28];
  v24 = v28;
  if (v23)
  {
    v15 = [[TPPeerDynamicInfo alloc] initWithObj:v21 tsd:v23];
  }

  objc_autoreleasePoolPop(v20);
  if (!v23)
  {
    v15 = 0;
    if (a9)
    {
      if (v24)
      {
        v25 = v24;
        v15 = 0;
        *a9 = v24;
      }
    }
  }

  return v15;
}

+ (id)dynamicInfoPBWithClock:(unint64_t)a3 includedPeerIDs:(id)a4 excludedPeerIDs:(id)a5 dispositions:(id)a6 preapprovals:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = objc_alloc_init(TPPBPeerDynamicInfo);
  [(TPPBPeerDynamicInfo *)v15 setClock:a3];
  v16 = [v14 allObjects];

  v17 = [v16 mutableCopy];
  [(TPPBPeerDynamicInfo *)v15 setIncludeds:v17];

  v18 = [v13 allObjects];

  v19 = [v18 mutableCopy];
  [(TPPBPeerDynamicInfo *)v15 setExcludeds:v19];

  v20 = [v11 allObjects];

  v21 = [v20 mutableCopy];
  [(TPPBPeerDynamicInfo *)v15 setPreapprovals:v21];

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(TPPBPeerDynamicInfo *)v15 setDispositions:v22];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__TPPeerDynamicInfo_dynamicInfoPBWithClock_includedPeerIDs_excludedPeerIDs_dispositions_preapprovals___block_invoke;
  v25[3] = &unk_279DED7E0;
  v23 = v15;
  v26 = v23;
  [v12 enumerateKeysAndObjectsUsingBlock:v25];

  return v23;
}

void __102__TPPeerDynamicInfo_dynamicInfoPBWithClock_includedPeerIDs_excludedPeerIDs_dispositions_preapprovals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(TPPBDispositionEntry);
  [(TPPBDispositionEntry *)v8 setPeerID:v6];

  [(TPPBDispositionEntry *)v8 setDisposition:v5];
  v7 = [*(a1 + 32) dispositions];
  [v7 addObject:v8];
}

@end