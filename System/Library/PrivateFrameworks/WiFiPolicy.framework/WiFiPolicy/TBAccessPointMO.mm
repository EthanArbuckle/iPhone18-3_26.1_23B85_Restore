@interface TBAccessPointMO
+ (id)generateNewAccessPointObjectFromMOC:(id)c;
+ (void)removeAllAccessPointsInMOC:(id)c;
- (TBAccessPointMO)initWithCoder:(id)coder;
- (TBScore)popularityScore;
- (TBScore)qualityScore;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TBAccessPointMO

- (TBScore)qualityScore
{
  qualityScoreValue = [(TBAccessPointMO *)self qualityScoreValue];

  return [TBQualityScore qualityScoreWithValue:qualityScoreValue];
}

- (TBScore)popularityScore
{
  popularityScoreValue = [(TBAccessPointMO *)self popularityScoreValue];

  return [TBPopularityScore popularityScoreWithValue:popularityScoreValue];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBAccessPointMO edge](self, "edge")}];
  [dictionary setObject:v4 forKey:@"edge"];

  bSSID = [(TBAccessPointMO *)self BSSID];

  if (bSSID)
  {
    bSSID2 = [(TBAccessPointMO *)self BSSID];
    [dictionary setObject:bSSID2 forKey:@"bssid"];
  }

  v7 = MEMORY[0x277CCABB0];
  [(TBAccessPointMO *)self latitude];
  v8 = [v7 numberWithDouble:?];
  [dictionary setObject:v8 forKey:@"latitude"];

  v9 = MEMORY[0x277CCABB0];
  [(TBAccessPointMO *)self longitude];
  v10 = [v9 numberWithDouble:?];
  [dictionary setObject:v10 forKey:@"longitude"];

  popularityScore = [(TBAccessPointMO *)self popularityScore];

  if (popularityScore)
  {
    v12 = MEMORY[0x277CCABB0];
    popularityScore2 = [(TBAccessPointMO *)self popularityScore];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(popularityScore2, "score")}];
    [dictionary setObject:v14 forKey:@"popularityScoreValue"];
  }

  qualityScore = [(TBAccessPointMO *)self qualityScore];

  if (qualityScore)
  {
    v16 = MEMORY[0x277CCABB0];
    qualityScore2 = [(TBAccessPointMO *)self qualityScore];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(qualityScore2, "score")}];
    [dictionary setObject:v18 forKey:@"qualityScoreValue"];
  }

  return dictionary;
}

- (TBAccessPointMO)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TBAccessPointMO;
  return [(TBAccessPointMO *)&v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[TBAccessPointMO edge](self forKey:{"edge"), @"edge"}];
  [coderCopy encodeBool:-[TBAccessPointMO tcpGood](self forKey:{"tcpGood"), @"tcpGood"}];
  bssid = [(TBAccessPointMO *)self bssid];
  [coderCopy encodeObject:bssid forKey:@"bssid"];

  [(TBAccessPointMO *)self latitude];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(TBAccessPointMO *)self longitude];
  [coderCopy encodeDouble:@"longitude" forKey:?];
  [coderCopy encodeInt32:-[TBAccessPointMO popularityScoreValue](self forKey:{"popularityScoreValue"), @"popularityScoreValue"}];
  [coderCopy encodeInt32:-[TBAccessPointMO qualityScoreValue](self forKey:{"qualityScoreValue"), @"qualityScoreValue"}];
}

+ (id)generateNewAccessPointObjectFromMOC:(id)c
{
  cCopy = c;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TBAccessPointMO_generateNewAccessPointObjectFromMOC___block_invoke;
  v7[3] = &unk_2789C7350;
  v9 = &v10;
  v4 = cCopy;
  v8 = v4;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __55__TBAccessPointMO_generateNewAccessPointObjectFromMOC___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE408];
  v6 = +[TBAccessPointMO entityName];
  v3 = [v2 insertNewObjectForEntityForName:v6 inManagedObjectContext:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)removeAllAccessPointsInMOC:(id)c
{
  v17 = *MEMORY[0x277D85DE8];
  cCopy = c;
  v4 = +[TBAccessPointMO fetchRequest];
  v5 = [cCopy executeFetchRequest:v4 error:0];

  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [cCopy deleteObject:{*(*(&v12 + 1) + 8 * v10++), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end