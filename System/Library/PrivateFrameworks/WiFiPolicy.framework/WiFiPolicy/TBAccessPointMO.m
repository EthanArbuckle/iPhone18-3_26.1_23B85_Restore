@interface TBAccessPointMO
+ (id)generateNewAccessPointObjectFromMOC:(id)a3;
+ (void)removeAllAccessPointsInMOC:(id)a3;
- (TBAccessPointMO)initWithCoder:(id)a3;
- (TBScore)popularityScore;
- (TBScore)qualityScore;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TBAccessPointMO

- (TBScore)qualityScore
{
  v2 = [(TBAccessPointMO *)self qualityScoreValue];

  return [TBQualityScore qualityScoreWithValue:v2];
}

- (TBScore)popularityScore
{
  v2 = [(TBAccessPointMO *)self popularityScoreValue];

  return [TBPopularityScore popularityScoreWithValue:v2];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TBAccessPointMO edge](self, "edge")}];
  [v3 setObject:v4 forKey:@"edge"];

  v5 = [(TBAccessPointMO *)self BSSID];

  if (v5)
  {
    v6 = [(TBAccessPointMO *)self BSSID];
    [v3 setObject:v6 forKey:@"bssid"];
  }

  v7 = MEMORY[0x277CCABB0];
  [(TBAccessPointMO *)self latitude];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"latitude"];

  v9 = MEMORY[0x277CCABB0];
  [(TBAccessPointMO *)self longitude];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKey:@"longitude"];

  v11 = [(TBAccessPointMO *)self popularityScore];

  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [(TBAccessPointMO *)self popularityScore];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "score")}];
    [v3 setObject:v14 forKey:@"popularityScoreValue"];
  }

  v15 = [(TBAccessPointMO *)self qualityScore];

  if (v15)
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = [(TBAccessPointMO *)self qualityScore];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "score")}];
    [v3 setObject:v18 forKey:@"qualityScoreValue"];
  }

  return v3;
}

- (TBAccessPointMO)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TBAccessPointMO;
  return [(TBAccessPointMO *)&v4 init];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[TBAccessPointMO edge](self forKey:{"edge"), @"edge"}];
  [v5 encodeBool:-[TBAccessPointMO tcpGood](self forKey:{"tcpGood"), @"tcpGood"}];
  v4 = [(TBAccessPointMO *)self bssid];
  [v5 encodeObject:v4 forKey:@"bssid"];

  [(TBAccessPointMO *)self latitude];
  [v5 encodeDouble:@"latitude" forKey:?];
  [(TBAccessPointMO *)self longitude];
  [v5 encodeDouble:@"longitude" forKey:?];
  [v5 encodeInt32:-[TBAccessPointMO popularityScoreValue](self forKey:{"popularityScoreValue"), @"popularityScoreValue"}];
  [v5 encodeInt32:-[TBAccessPointMO qualityScoreValue](self forKey:{"qualityScoreValue"), @"qualityScoreValue"}];
}

+ (id)generateNewAccessPointObjectFromMOC:(id)a3
{
  v3 = a3;
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
  v4 = v3;
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

+ (void)removeAllAccessPointsInMOC:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[TBAccessPointMO fetchRequest];
  v5 = [v3 executeFetchRequest:v4 error:0];

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

          [v3 deleteObject:{*(*(&v12 + 1) + 8 * v10++), v12}];
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