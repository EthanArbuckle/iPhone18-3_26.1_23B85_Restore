@interface UPResult
+ (id)createResultFromExistingResult:(id)result truncatedTo:(unint64_t)to;
- (SIRINLUINTERNALUAAP_PARSERUaaPParserResponse)protobufRepresentation;
- (UPResult)initWithCandidates:(id)candidates queryUUID:(id)d;
- (UPResultRootNode)rootNode;
- (id)candidateAtRank:(int64_t)rank;
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
      protobufRepresentation = [v5 protobufRepresentation];

      [v3 addHypotheses:protobufRepresentation];
      ++v4;
    }

    while ([(UPResult *)self candidateCount]> v4);
  }

  return v3;
}

- (UPResult)initWithCandidates:(id)candidates queryUUID:(id)d
{
  candidatesCopy = candidates;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = UPResult;
  v9 = [(UPResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__candidates, candidates);
    objc_storeStrong(&v10->_queryUUID, d);
  }

  return v10;
}

- (UPResultRootNode)rootNode
{
  v2 = [(UPResult *)self candidateAtRank:0];
  v3 = v2;
  if (v2)
  {
    rootNodeRepresentation = [v2 rootNodeRepresentation];
  }

  else
  {
    rootNodeRepresentation = 0;
  }

  return rootNodeRepresentation;
}

- (id)candidateAtRank:(int64_t)rank
{
  if ([(NSArray *)self->__candidates count]<= rank)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->__candidates objectAtIndexedSubscript:rank];
  }

  return v5;
}

+ (id)createResultFromExistingResult:(id)result truncatedTo:(unint64_t)to
{
  if (to)
  {
    toCopy = to;
    resultCopy = result;
    candidateCount = [resultCopy candidateCount];
    if (candidateCount < toCopy)
    {
      toCopy = candidateCount;
    }

    _candidates = [resultCopy _candidates];
    queryUUID2 = [_candidates subarrayWithRange:{0, toCopy}];

    v9 = [UPResult alloc];
    queryUUID = [resultCopy queryUUID];

    v11 = [(UPResult *)v9 initWithCandidates:queryUUID2 queryUUID:queryUUID];
  }

  else
  {
    resultCopy2 = result;
    v13 = [UPResult alloc];
    queryUUID2 = [resultCopy2 queryUUID];

    v11 = [(UPResult *)v13 initWithCandidates:MEMORY[0x277CBEBF8] queryUUID:queryUUID2];
  }

  return v11;
}

@end