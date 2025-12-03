@interface TPPeerDynamicInfo
+ (id)dynamicInfoPBWithClock:(unint64_t)clock includedPeerIDs:(id)ds excludedPeerIDs:(id)iDs dispositions:(id)dispositions preapprovals:(id)preapprovals;
+ (id)dynamicInfoWithClock:(unint64_t)clock includedPeerIDs:(id)ds excludedPeerIDs:(id)iDs dispositions:(id)dispositions preapprovals:(id)preapprovals signingKeyPair:(id)pair error:(id *)error;
+ (id)dynamicInfoWithData:(id)data sig:(id)sig;
- (BOOL)checkSignatureWithKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerDynamicInfo:(id)info;
- (NSData)data;
- (NSData)sig;
- (NSDictionary)dispositions;
- (TPPeerDynamicInfo)initWithObj:(id)obj tsd:(id)tsd;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pb;
@end

@implementation TPPeerDynamicInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPPeerDynamicInfo *)self isEqualToPeerDynamicInfo:equalCopy];
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  dictionaryRepresentation = [(TPPeerDynamicInfo *)self dictionaryRepresentation];
  v5 = [dictionaryRepresentation description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerDynamicInfo *)self pb];
  dictionaryRepresentation = [v4 dictionaryRepresentation];

  objc_autoreleasePoolPop(v3);

  return dictionaryRepresentation;
}

- (BOOL)isEqualToPeerDynamicInfo:(id)info
{
  infoCopy = info;
  if (infoCopy == self)
  {
    v9 = 1;
  }

  else
  {
    data = [(TPPeerDynamicInfo *)self data];
    data2 = [(TPPeerDynamicInfo *)infoCopy data];
    if ([data isEqualToData:data2])
    {
      v7 = [(TPPeerDynamicInfo *)self sig];
      v8 = [(TPPeerDynamicInfo *)infoCopy sig];
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
  data = [v2 data];

  return data;
}

- (BOOL)checkSignatureWithKey:(id)key
{
  keyCopy = key;
  v5 = [(TPPeerDynamicInfo *)self tsd];
  v6 = [v5 checkSignatureWithKey:keyCopy];

  return v6;
}

- (NSDictionary)dispositions
{
  v3 = +[TPStringTable defaultTable];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_autoreleasePoolPush();
  v6 = [(TPPeerDynamicInfo *)self pb];
  dispositions = [v6 dispositions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__TPPeerDynamicInfo_dispositions__block_invoke;
  v11[3] = &unk_279DED808;
  v8 = v4;
  v12 = v8;
  v9 = v3;
  v13 = v9;
  [dispositions enumerateObjectsUsingBlock:v11];

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
  data = [(TPPeerDynamicInfo *)self data];
  v5 = [(TPPBPeerDynamicInfo *)v3 initWithData:data];

  return v5;
}

- (TPPeerDynamicInfo)initWithObj:(id)obj tsd:(id)tsd
{
  objCopy = obj;
  tsdCopy = tsd;
  v8 = +[TPStringTable defaultTable];
  v20.receiver = self;
  v20.super_class = TPPeerDynamicInfo;
  v9 = [(TPPeerDynamicInfo *)&v20 init];
  if (v9)
  {
    v9->_clock = [objCopy clock];
    includeds = [objCopy includeds];
    v11 = [v8 setWithArray:includeds];
    includedPeerIDs = v9->_includedPeerIDs;
    v9->_includedPeerIDs = v11;

    excludeds = [objCopy excludeds];
    v14 = [v8 setWithArray:excludeds];
    excludedPeerIDs = v9->_excludedPeerIDs;
    v9->_excludedPeerIDs = v14;

    preapprovals = [objCopy preapprovals];
    v17 = [v8 setWithArray:preapprovals];
    preapprovals = v9->_preapprovals;
    v9->_preapprovals = v17;

    objc_storeStrong(&v9->_tsd, tsd);
  }

  return v9;
}

+ (id)dynamicInfoWithData:(id)data sig:(id)sig
{
  dataCopy = data;
  sigCopy = sig;
  v7 = objc_autoreleasePoolPush();
  v8 = [[TPPBPeerDynamicInfo alloc] initWithData:dataCopy];
  if (v8)
  {
    v9 = [TPPeerDynamicInfo alloc];
    v10 = [[TPTypedSignedData alloc] initWithData:dataCopy sig:sigCopy signatureTypeName:@"TPPB.PeerDynamicInfo"];
    v11 = [(TPPeerDynamicInfo *)v9 initWithObj:v8 tsd:v10];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v11;
}

+ (id)dynamicInfoWithClock:(unint64_t)clock includedPeerIDs:(id)ds excludedPeerIDs:(id)iDs dispositions:(id)dispositions preapprovals:(id)preapprovals signingKeyPair:(id)pair error:(id *)error
{
  dsCopy = ds;
  iDsCopy = iDs;
  dispositionsCopy = dispositions;
  preapprovalsCopy = preapprovals;
  pairCopy = pair;
  v20 = objc_autoreleasePoolPush();
  v27 = dsCopy;
  v21 = [self dynamicInfoPBWithClock:clock includedPeerIDs:dsCopy excludedPeerIDs:iDsCopy dispositions:dispositionsCopy preapprovals:preapprovalsCopy];
  data = [v21 data];
  v28 = 0;
  v23 = [[TPTypedSignedData alloc] initWithData:data key:pairCopy signatureTypeName:@"TPPB.PeerDynamicInfo" error:&v28];
  v24 = v28;
  if (v23)
  {
    dsCopy = [[TPPeerDynamicInfo alloc] initWithObj:v21 tsd:v23];
  }

  objc_autoreleasePoolPop(v20);
  if (!v23)
  {
    dsCopy = 0;
    if (error)
    {
      if (v24)
      {
        v25 = v24;
        dsCopy = 0;
        *error = v24;
      }
    }
  }

  return dsCopy;
}

+ (id)dynamicInfoPBWithClock:(unint64_t)clock includedPeerIDs:(id)ds excludedPeerIDs:(id)iDs dispositions:(id)dispositions preapprovals:(id)preapprovals
{
  preapprovalsCopy = preapprovals;
  dispositionsCopy = dispositions;
  iDsCopy = iDs;
  dsCopy = ds;
  v15 = objc_alloc_init(TPPBPeerDynamicInfo);
  [(TPPBPeerDynamicInfo *)v15 setClock:clock];
  allObjects = [dsCopy allObjects];

  v17 = [allObjects mutableCopy];
  [(TPPBPeerDynamicInfo *)v15 setIncludeds:v17];

  allObjects2 = [iDsCopy allObjects];

  v19 = [allObjects2 mutableCopy];
  [(TPPBPeerDynamicInfo *)v15 setExcludeds:v19];

  allObjects3 = [preapprovalsCopy allObjects];

  v21 = [allObjects3 mutableCopy];
  [(TPPBPeerDynamicInfo *)v15 setPreapprovals:v21];

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(TPPBPeerDynamicInfo *)v15 setDispositions:v22];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__TPPeerDynamicInfo_dynamicInfoPBWithClock_includedPeerIDs_excludedPeerIDs_dispositions_preapprovals___block_invoke;
  v25[3] = &unk_279DED7E0;
  v23 = v15;
  v26 = v23;
  [dispositionsCopy enumerateKeysAndObjectsUsingBlock:v25];

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