@interface TBNetworkMO
+ (id)generateNewNetworkObjectFromMOC:(id)a3;
+ (void)removeAllNetworksInMOC:(id)a3;
+ (void)removeNetworksUsingPredicate:(id)a3 moc:(id)a4;
- (NSString)attributesDescription;
- (NSString)authDescription;
- (TBNetworkMO)initWithCoder:(id)a3;
- (TBScore)popularityScore;
- (TBScore)qualityScore;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TBNetworkMO

- (NSString)authDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  if (([(TBNetworkMO *)self authMask]& 1) != 0)
  {
    [v3 appendString:@"OPEN "];
  }

  if (([(TBNetworkMO *)self authMask]& 2) != 0)
  {
    [v3 appendString:@"WEP "];
  }

  if (([(TBNetworkMO *)self authMask]& 4) != 0)
  {
    [v3 appendString:@"WPA "];
  }

  if (([(TBNetworkMO *)self authMask]& 8) != 0)
  {
    [v3 appendString:@"EAP "];
  }

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)attributesDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  if ([(TBNetworkMO *)self isPublic])
  {
    [v3 appendString:@"isPublic "];
  }

  if ([(TBNetworkMO *)self isMoving])
  {
    [v3 appendString:@"isMoving "];
  }

  if ([(TBNetworkMO *)self isSuspicious])
  {
    [v3 appendString:@"isSuspicious "];
  }

  if ([(TBNetworkMO *)self isCaptive])
  {
    [v3 appendString:@"isCaptive "];
  }

  if ([(TBNetworkMO *)self isLowQuality])
  {
    [v3 appendString:@"isLowQuality "];
  }

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (TBScore)qualityScore
{
  v2 = [(TBNetworkMO *)self qualityScoreValue];

  return [TBQualityScore qualityScoreWithValue:v2];
}

- (TBScore)popularityScore
{
  v2 = [(TBNetworkMO *)self popularityScoreValue];

  return [TBPopularityScore popularityScoreWithValue:v2];
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO moving](self, "moving")}];
  [v3 setObject:v4 forKey:@"moving"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO suspicious](self, "suspicious")}];
  [v3 setObject:v5 forKey:@"suspicious"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO captive](self, "captive")}];
  [v3 setObject:v6 forKey:@"captive"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO public](self, "public")}];
  [v3 setObject:v7 forKey:@"public"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO lowQuality](self, "lowQuality")}];
  [v3 setObject:v8 forKey:@"lowQuality"];

  v9 = [(TBNetworkMO *)self name];

  if (v9)
  {
    v10 = [(TBNetworkMO *)self name];
    [v3 setObject:v10 forKey:@"name"];
  }

  v11 = [(TBNetworkMO *)self identifier];

  if (v11)
  {
    v12 = [(TBNetworkMO *)self identifier];
    [v3 setObject:v12 forKey:@"identifier"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TBNetworkMO authMask](self, "authMask")}];
  [v3 setObject:v13 forKey:@"authMask"];

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TBNetworkMO tileKey](self, "tileKey")}];
  [v3 setObject:v14 forKey:@"tileKey"];

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TBNetworkMO timestamp](self, "timestamp")}];
  [v3 setObject:v15 forKey:@"timestamp"];

  v16 = [(TBNetworkMO *)self popularityScore];

  if (v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [(TBNetworkMO *)self popularityScore];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "score")}];
    [v3 setObject:v19 forKey:@"popularityScoreValue"];
  }

  v20 = [(TBNetworkMO *)self qualityScore];

  if (v20)
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [(TBNetworkMO *)self qualityScore];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "score")}];
    [v3 setObject:v23 forKey:@"qualityScoreValue"];
  }

  v24 = [(TBNetworkMO *)self accessPoints];

  if (v24)
  {
    v25 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = [(TBNetworkMO *)self accessPoints];
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"accessPoints"];
  }

  v32 = [(TBNetworkMO *)self ownerIdentifiers];

  if (v32)
  {
    v33 = [(TBNetworkMO *)self ownerIdentifiers];
    [v3 setObject:v33 forKey:@"ownerIdentifiers"];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v3;
}

- (TBNetworkMO)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TBNetworkMO;
  return [(TBNetworkMO *)&v4 init];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:-[TBNetworkMO moving](self forKey:{"moving"), @"moving"}];
  [v8 encodeBool:-[TBNetworkMO captive](self forKey:{"captive"), @"captive"}];
  [v8 encodeBool:-[TBNetworkMO suspicious](self forKey:{"suspicious"), @"suspicious"}];
  [v8 encodeBool:-[TBNetworkMO public](self forKey:{"public"), @"public"}];
  [v8 encodeBool:-[TBNetworkMO lowQuality](self forKey:{"lowQuality"), @"lowQuality"}];
  v4 = [(TBNetworkMO *)self name];
  [v8 encodeObject:v4 forKey:@"name"];

  v5 = [(TBNetworkMO *)self identifier];
  [v8 encodeObject:v5 forKey:@"identifier"];

  [v8 encodeInt64:-[TBNetworkMO authMask](self forKey:{"authMask"), @"authMask"}];
  [v8 encodeInt64:-[TBNetworkMO tileKey](self forKey:{"tileKey"), @"tileKey"}];
  [v8 encodeInt64:-[TBNetworkMO timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [v8 encodeInt32:-[TBNetworkMO popularityScoreValue](self forKey:{"popularityScoreValue"), @"popularityScoreValue"}];
  [v8 encodeInt32:-[TBNetworkMO qualityScoreValue](self forKey:{"qualityScoreValue"), @"qualityScoreValue"}];
  v6 = [(TBNetworkMO *)self accessPoints];
  [v8 encodeObject:v6 forKey:@"accessPoints"];

  v7 = [(TBNetworkMO *)self ownerIdentifiers];
  [v8 encodeObject:v7 forKey:@"ownerIdentifiers"];

  [v8 encodeInt64:-[TBNetworkMO type](self forKey:{"type"), @"type"}];
  [v8 encodeInt64:-[TBNetworkMO venueGroup](self forKey:{"venueGroup"), @"venueGroup"}];
  [v8 encodeInt64:-[TBNetworkMO venueType](self forKey:{"venueType"), @"venueType"}];
}

+ (id)generateNewNetworkObjectFromMOC:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__TBNetworkMO_generateNewNetworkObjectFromMOC___block_invoke;
  v8[3] = &unk_2789C7350;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  objc_autoreleasePoolPop(v4);

  return v6;
}

void __47__TBNetworkMO_generateNewNetworkObjectFromMOC___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE408];
  v6 = +[TBNetworkMO entityName];
  v3 = [v2 insertNewObjectForEntityForName:v6 inManagedObjectContext:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)removeNetworksUsingPredicate:(id)a3 moc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Network"];
  [v8 setPredicate:v5];
  v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__TBNetworkMO_removeNetworksUsingPredicate_moc___block_invoke;
  v13[3] = &unk_2789C6C70;
  v10 = v6;
  v14 = v10;
  v15 = v9;
  v11 = v5;
  v16 = v11;
  v12 = v9;
  [v10 performBlockAndWait:v13];

  objc_autoreleasePoolPop(v7);
}

void __48__TBNetworkMO_removeNetworksUsingPredicate_moc___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v8 = 0;
  v5 = [v3 executeRequest:v4 error:&v8];
  v6 = v8;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_SError.isa, "+[TBNetworkMO removeNetworksUsingPredicate:moc:]_block_invoke", v6);
  }

  else
  {
    NSLog(&cfstr_SRemovedNetwor.isa, "+[TBNetworkMO removeNetworksUsingPredicate:moc:]_block_invoke", a1[6]);
  }

  objc_autoreleasePoolPop(v2);
}

+ (void)removeAllNetworksInMOC:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBE360]);
  v6 = +[TBNetworkMO fetchRequest];
  v7 = [v5 initWithFetchRequest:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__TBNetworkMO_removeAllNetworksInMOC___block_invoke;
  v10[3] = &unk_2789C6608;
  v8 = v3;
  v11 = v8;
  v12 = v7;
  v9 = v7;
  [v8 performBlockAndWait:v10];

  objc_autoreleasePoolPop(v4);
}

void __38__TBNetworkMO_removeAllNetworksInMOC___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = 0;
  v5 = [v3 executeRequest:v4 error:&v8];
  v6 = v8;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_SError.isa, "+[TBNetworkMO removeAllNetworksInMOC:]_block_invoke", v6);
  }

  else
  {
    NSLog(&cfstr_SRemovedAllNet.isa, "+[TBNetworkMO removeAllNetworksInMOC:]_block_invoke");
  }

  objc_autoreleasePoolPop(v2);
}

@end