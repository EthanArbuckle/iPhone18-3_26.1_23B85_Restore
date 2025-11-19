@interface UPResult
+ (id)createResultFromExistingResult:(id)a3 truncatedTo:(unint64_t)a4;
- (SIRINLUINTERNALUAAP_PARSERUaaPParserResponse)protobufRepresentation;
- (UPResult)initWithCandidates:(id)a3 queryUUID:(id)a4;
- (UPResultRootNode)rootNode;
- (id)candidateAtRank:(int64_t)a3;
@end

@implementation UPResult

- (SIRINLUINTERNALUAAP_PARSERUaaPParserResponse)protobufRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277D5DEE0]);
  if ([(UPResult *)self candidateCount]>= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(UPResult *)self candidateAtRank:v4];
      v6 = [v5 protobufRepresentation];

      [v3 addHypotheses:v6];
      ++v4;
    }

    while ([(UPResult *)self candidateCount]> v4);
  }

  return v3;
}

- (UPResult)initWithCandidates:(id)a3 queryUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UPResult;
  v9 = [(UPResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__candidates, a3);
    objc_storeStrong(&v10->_queryUUID, a4);
  }

  return v10;
}

- (UPResultRootNode)rootNode
{
  v2 = [(UPResult *)self candidateAtRank:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rootNodeRepresentation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)candidateAtRank:(int64_t)a3
{
  if ([(NSArray *)self->__candidates count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->__candidates objectAtIndexedSubscript:a3];
  }

  return v5;
}

+ (id)createResultFromExistingResult:(id)a3 truncatedTo:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    v6 = [v5 candidateCount];
    if (v6 < v4)
    {
      v4 = v6;
    }

    v7 = [v5 _candidates];
    v8 = [v7 subarrayWithRange:{0, v4}];

    v9 = [UPResult alloc];
    v10 = [v5 queryUUID];

    v11 = [(UPResult *)v9 initWithCandidates:v8 queryUUID:v10];
  }

  else
  {
    v12 = a3;
    v13 = [UPResult alloc];
    v8 = [v12 queryUUID];

    v11 = [(UPResult *)v13 initWithCandidates:MEMORY[0x277CBEBF8] queryUUID:v8];
  }

  return v11;
}

@end