@interface PGGraphHighlightGroupNode
+ (MARelation)highlightOfHighlightGroup;
+ (MARelation)typeOfHighlightGroup;
+ (id)filter;
+ (id)filterWithUUIDs:(id)ds;
+ (id)inclusivePathFromTargetNodeDomain:(unsigned __int16)domain withName:(id)name;
+ (id)inclusivePathToTargetNodeDomain:(unsigned __int16)domain withName:(id)name;
+ (id)momentInHighlight;
+ (id)pathFromTargetNodeDomain:(unsigned __int16)domain;
+ (id)pathToTargetNodeDomain:(unsigned __int16)domain;
- (BOOL)isAggregation;
- (BOOL)isLongTrip;
- (BOOL)isShortTrip;
- (BOOL)isTrip;
- (NSArray)highlightNodes;
- (NSArray)sortedHighlightNodes;
- (PGGraphHighlightGroupNodeCollection)collection;
- (void)enumerateMomentEdgesAndNodesUsingBlock:(id)block;
@end

@implementation PGGraphHighlightGroupNode

- (void)enumerateMomentEdgesAndNodesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__PGGraphHighlightGroupNode_enumerateMomentEdgesAndNodesUsingBlock___block_invoke;
  v6[3] = &unk_278883DE8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PGGraphHighlightGroupNode *)self enumerateHighlightNodesUsingBlock:v6];
}

void __68__PGGraphHighlightGroupNode_enumerateMomentEdgesAndNodesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__PGGraphHighlightGroupNode_enumerateMomentEdgesAndNodesUsingBlock___block_invoke_2;
  v5[3] = &unk_27887EC18;
  v6 = *(a1 + 32);
  v7 = a3;
  [a2 enumerateMomentEdgesAndNodesUsingBlock:v5];
}

uint64_t __68__PGGraphHighlightGroupNode_enumerateMomentEdgesAndNodesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  **(a1 + 40) = *a4;
  return result;
}

- (NSArray)sortedHighlightNodes
{
  v10[3] = *MEMORY[0x277D85DE8];
  highlightNodes = [(PGGraphHighlightGroupNode *)self highlightNodes];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v7 = [highlightNodes sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSArray)highlightNodes
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PGGraphHighlightGroupNode_highlightNodes__block_invoke;
  v6[3] = &unk_278885850;
  v4 = array;
  v7 = v4;
  [(PGGraphHighlightGroupNode *)self enumerateHighlightNodesUsingBlock:v6];

  return v4;
}

- (BOOL)isAggregation
{
  collection = [(PGGraphHighlightGroupNode *)self collection];
  typeNodes = [collection typeNodes];
  anyNode = [typeNodes anyNode];

  label = [anyNode label];
  LOBYTE(typeNodes) = [label isEqualToString:@"Aggregation"];

  return typeNodes;
}

- (BOOL)isShortTrip
{
  collection = [(PGGraphHighlightGroupNode *)self collection];
  typeNodes = [collection typeNodes];
  anyNode = [typeNodes anyNode];

  label = [anyNode label];
  LOBYTE(typeNodes) = [label isEqualToString:@"ShortTrip"];

  return typeNodes;
}

- (BOOL)isLongTrip
{
  collection = [(PGGraphHighlightGroupNode *)self collection];
  typeNodes = [collection typeNodes];
  anyNode = [typeNodes anyNode];

  label = [anyNode label];
  LOBYTE(typeNodes) = [label isEqualToString:@"LongTrip"];

  return typeNodes;
}

- (BOOL)isTrip
{
  collection = [(PGGraphHighlightGroupNode *)self collection];
  typeNodes = [collection typeNodes];
  anyNode = [typeNodes anyNode];

  label = [anyNode label];
  if ([label isEqualToString:@"LongTrip"] & 1) != 0 || (objc_msgSend(label, "isEqualToString:", @"ShortTrip"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [label isEqualToString:@"OngoingTrip"];
  }

  return v6;
}

- (PGGraphHighlightGroupNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphHighlightGroupNodeCollection alloc] initWithNode:self];

  return v2;
}

+ (id)momentInHighlight
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphHighlightGroupNode highlightOfHighlightGroup];
  v9[0] = v3;
  v4 = +[PGGraphHighlightNode momentInDayHighlight];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chain:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MARelation)typeOfHighlightGroup
{
  v2 = +[PGGraphHasTypeEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)highlightOfHighlightGroup
{
  v2 = +[PGGraphGroupContainsEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)filterWithUUIDs:(id)ds
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  dsCopy = ds;
  v5 = [v3 alloc];
  v10 = @"id";
  v11[0] = dsCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"HighlightGroup" domain:102 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)inclusivePathToTargetNodeDomain:(unsigned __int16)domain withName:(id)name
{
  domainCopy = domain;
  nameCopy = name;
  if (domainCopy == 100)
  {
    v6 = @"(:HighlightGroup)-[:GROUP_CONTAINS]->(:Highlight)-[:CONTAINS]->(%@:Moment)";
  }

  else
  {
    if (domainCopy != 102)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v6 = @"(%@:HighlightGroup)";
  }

  v7 = &stru_2843F5C58;
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v7];
LABEL_9:

  return v8;
}

+ (id)inclusivePathFromTargetNodeDomain:(unsigned __int16)domain withName:(id)name
{
  domainCopy = domain;
  nameCopy = name;
  if (domainCopy == 100)
  {
    v6 = @"(%@:Moment)<-[:CONTAINS]-(:Highlight)<-[:GROUP_CONTAINS]-(:HighlightGroup)";
  }

  else
  {
    if (domainCopy != 102)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v6 = @"(%@:HighlightGroup)";
  }

  v7 = &stru_2843F5C58;
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v7];
LABEL_9:

  return v8;
}

+ (id)pathToTargetNodeDomain:(unsigned __int16)domain
{
  if (domain == 100)
  {
    pathToMoment = [objc_opt_class() pathToMoment];
  }

  else
  {
    if (domain == 102)
    {
      pathToMoment = &stru_2843F5C58;
    }

    else
    {
      pathToMoment = 0;
    }
  }

  return pathToMoment;
}

+ (id)pathFromTargetNodeDomain:(unsigned __int16)domain
{
  if (domain == 100)
  {
    pathFromMoment = [objc_opt_class() pathFromMoment];
  }

  else
  {
    if (domain == 102)
    {
      pathFromMoment = &stru_2843F5C58;
    }

    else
    {
      pathFromMoment = 0;
    }
  }

  return pathFromMoment;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"HighlightGroup" domain:102];

  return v2;
}

@end