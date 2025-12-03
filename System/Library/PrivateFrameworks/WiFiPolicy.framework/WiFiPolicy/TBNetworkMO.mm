@interface TBNetworkMO
+ (id)generateNewNetworkObjectFromMOC:(id)c;
+ (void)removeAllNetworksInMOC:(id)c;
+ (void)removeNetworksUsingPredicate:(id)predicate moc:(id)moc;
- (NSString)attributesDescription;
- (NSString)authDescription;
- (TBNetworkMO)initWithCoder:(id)coder;
- (TBScore)popularityScore;
- (TBScore)qualityScore;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TBNetworkMO

- (NSString)authDescription
{
  string = [MEMORY[0x277CCAB68] string];
  if (([(TBNetworkMO *)self authMask]& 1) != 0)
  {
    [string appendString:@"OPEN "];
  }

  if (([(TBNetworkMO *)self authMask]& 2) != 0)
  {
    [string appendString:@"WEP "];
  }

  if (([(TBNetworkMO *)self authMask]& 4) != 0)
  {
    [string appendString:@"WPA "];
  }

  if (([(TBNetworkMO *)self authMask]& 8) != 0)
  {
    [string appendString:@"EAP "];
  }

  if ([string length])
  {
    v4 = string;
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
  string = [MEMORY[0x277CCAB68] string];
  if ([(TBNetworkMO *)self isPublic])
  {
    [string appendString:@"isPublic "];
  }

  if ([(TBNetworkMO *)self isMoving])
  {
    [string appendString:@"isMoving "];
  }

  if ([(TBNetworkMO *)self isSuspicious])
  {
    [string appendString:@"isSuspicious "];
  }

  if ([(TBNetworkMO *)self isCaptive])
  {
    [string appendString:@"isCaptive "];
  }

  if ([(TBNetworkMO *)self isLowQuality])
  {
    [string appendString:@"isLowQuality "];
  }

  if ([string length])
  {
    v4 = string;
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
  qualityScoreValue = [(TBNetworkMO *)self qualityScoreValue];

  return [TBQualityScore qualityScoreWithValue:qualityScoreValue];
}

- (TBScore)popularityScore
{
  popularityScoreValue = [(TBNetworkMO *)self popularityScoreValue];

  return [TBPopularityScore popularityScoreWithValue:popularityScoreValue];
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO moving](self, "moving")}];
  [dictionary setObject:v4 forKey:@"moving"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO suspicious](self, "suspicious")}];
  [dictionary setObject:v5 forKey:@"suspicious"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO captive](self, "captive")}];
  [dictionary setObject:v6 forKey:@"captive"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO public](self, "public")}];
  [dictionary setObject:v7 forKey:@"public"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBNetworkMO lowQuality](self, "lowQuality")}];
  [dictionary setObject:v8 forKey:@"lowQuality"];

  name = [(TBNetworkMO *)self name];

  if (name)
  {
    name2 = [(TBNetworkMO *)self name];
    [dictionary setObject:name2 forKey:@"name"];
  }

  identifier = [(TBNetworkMO *)self identifier];

  if (identifier)
  {
    identifier2 = [(TBNetworkMO *)self identifier];
    [dictionary setObject:identifier2 forKey:@"identifier"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TBNetworkMO authMask](self, "authMask")}];
  [dictionary setObject:v13 forKey:@"authMask"];

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TBNetworkMO tileKey](self, "tileKey")}];
  [dictionary setObject:v14 forKey:@"tileKey"];

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[TBNetworkMO timestamp](self, "timestamp")}];
  [dictionary setObject:v15 forKey:@"timestamp"];

  popularityScore = [(TBNetworkMO *)self popularityScore];

  if (popularityScore)
  {
    v17 = MEMORY[0x277CCABB0];
    popularityScore2 = [(TBNetworkMO *)self popularityScore];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(popularityScore2, "score")}];
    [dictionary setObject:v19 forKey:@"popularityScoreValue"];
  }

  qualityScore = [(TBNetworkMO *)self qualityScore];

  if (qualityScore)
  {
    v21 = MEMORY[0x277CCABB0];
    qualityScore2 = [(TBNetworkMO *)self qualityScore];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(qualityScore2, "score")}];
    [dictionary setObject:v23 forKey:@"qualityScoreValue"];
  }

  accessPoints = [(TBNetworkMO *)self accessPoints];

  if (accessPoints)
  {
    array = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    accessPoints2 = [(TBNetworkMO *)self accessPoints];
    v27 = [accessPoints2 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(accessPoints2);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v28 = [accessPoints2 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v28);
    }

    [dictionary setObject:array forKey:@"accessPoints"];
  }

  ownerIdentifiers = [(TBNetworkMO *)self ownerIdentifiers];

  if (ownerIdentifiers)
  {
    ownerIdentifiers2 = [(TBNetworkMO *)self ownerIdentifiers];
    [dictionary setObject:ownerIdentifiers2 forKey:@"ownerIdentifiers"];
  }

  v34 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (TBNetworkMO)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TBNetworkMO;
  return [(TBNetworkMO *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[TBNetworkMO moving](self forKey:{"moving"), @"moving"}];
  [coderCopy encodeBool:-[TBNetworkMO captive](self forKey:{"captive"), @"captive"}];
  [coderCopy encodeBool:-[TBNetworkMO suspicious](self forKey:{"suspicious"), @"suspicious"}];
  [coderCopy encodeBool:-[TBNetworkMO public](self forKey:{"public"), @"public"}];
  [coderCopy encodeBool:-[TBNetworkMO lowQuality](self forKey:{"lowQuality"), @"lowQuality"}];
  name = [(TBNetworkMO *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(TBNetworkMO *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInt64:-[TBNetworkMO authMask](self forKey:{"authMask"), @"authMask"}];
  [coderCopy encodeInt64:-[TBNetworkMO tileKey](self forKey:{"tileKey"), @"tileKey"}];
  [coderCopy encodeInt64:-[TBNetworkMO timestamp](self forKey:{"timestamp"), @"timestamp"}];
  [coderCopy encodeInt32:-[TBNetworkMO popularityScoreValue](self forKey:{"popularityScoreValue"), @"popularityScoreValue"}];
  [coderCopy encodeInt32:-[TBNetworkMO qualityScoreValue](self forKey:{"qualityScoreValue"), @"qualityScoreValue"}];
  accessPoints = [(TBNetworkMO *)self accessPoints];
  [coderCopy encodeObject:accessPoints forKey:@"accessPoints"];

  ownerIdentifiers = [(TBNetworkMO *)self ownerIdentifiers];
  [coderCopy encodeObject:ownerIdentifiers forKey:@"ownerIdentifiers"];

  [coderCopy encodeInt64:-[TBNetworkMO type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInt64:-[TBNetworkMO venueGroup](self forKey:{"venueGroup"), @"venueGroup"}];
  [coderCopy encodeInt64:-[TBNetworkMO venueType](self forKey:{"venueType"), @"venueType"}];
}

+ (id)generateNewNetworkObjectFromMOC:(id)c
{
  cCopy = c;
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
  v5 = cCopy;
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

+ (void)removeNetworksUsingPredicate:(id)predicate moc:(id)moc
{
  predicateCopy = predicate;
  mocCopy = moc;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Network"];
  [v8 setPredicate:predicateCopy];
  v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__TBNetworkMO_removeNetworksUsingPredicate_moc___block_invoke;
  v13[3] = &unk_2789C6C70;
  v10 = mocCopy;
  v14 = v10;
  v15 = v9;
  v11 = predicateCopy;
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

+ (void)removeAllNetworksInMOC:(id)c
{
  cCopy = c;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBE360]);
  v6 = +[TBNetworkMO fetchRequest];
  v7 = [v5 initWithFetchRequest:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__TBNetworkMO_removeAllNetworksInMOC___block_invoke;
  v10[3] = &unk_2789C6608;
  v8 = cCopy;
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