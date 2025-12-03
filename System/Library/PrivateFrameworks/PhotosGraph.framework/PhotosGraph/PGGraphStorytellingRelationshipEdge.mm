@interface PGGraphStorytellingRelationshipEdge
+ (id)filter;
+ (id)reducedRelationshipNameForLabels:(id)labels;
+ (id)relationshipNameForLabel:(id)label;
- (PGGraphStorytellingRelationshipEdge)initWithRelationship:(id)relationship fromMeNode:(id)node toPersonNode:(id)personNode;
@end

@implementation PGGraphStorytellingRelationshipEdge

- (PGGraphStorytellingRelationshipEdge)initWithRelationship:(id)relationship fromMeNode:(id)node toPersonNode:(id)personNode
{
  relationshipCopy = relationship;
  v13.receiver = self;
  v13.super_class = PGGraphStorytellingRelationshipEdge;
  v9 = [(PGGraphEdge *)&v13 initWithSourceNode:node targetNode:personNode];
  if (v9)
  {
    v10 = [relationshipCopy copy];
    relationship = v9->_relationship;
    v9->_relationship = v10;
  }

  return v9;
}

+ (id)reducedRelationshipNameForLabels:(id)labels
{
  v4 = [PGGraphBuilder reducedRelationshipLabelForRelationshipLabels:labels];
  v5 = [self relationshipNameForLabel:v4];

  return v5;
}

+ (id)relationshipNameForLabel:(id)label
{
  v3 = relationshipNameForLabel__onceToken;
  labelCopy = label;
  if (v3 != -1)
  {
    dispatch_once(&relationshipNameForLabel__onceToken, &__block_literal_global_61919);
  }

  v5 = [relationshipNameForLabel__multiWordRelationshipNameForLabel objectForKeyedSubscript:labelCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = labelCopy;
  }

  v8 = v7;

  return v7;
}

void __64__PGGraphStorytellingRelationshipEdge_relationshipNameForLabel___block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"FAMILY_SOCIALGROUP";
  v3[1] = @"COWORKER_SOCIALGROUP";
  v4[0] = @"Family Social Group";
  v4[1] = @"Coworker Social Group";
  v3[2] = @"HOUSEHOLD_MEMBER";
  v4[2] = @"Household Member";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = relationshipNameForLabel__multiWordRelationshipNameForLabel;
  relationshipNameForLabel__multiWordRelationshipNameForLabel = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)filter
{
  v2 = objc_alloc(MEMORY[0x277D22C20]);
  v3 = +[PGGraphRelationshipEdge supportedRelationshipLabels];
  v4 = [v2 initWithLabels:v3 domain:306 properties:MEMORY[0x277CBEC10]];

  return v4;
}

@end