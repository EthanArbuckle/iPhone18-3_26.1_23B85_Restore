@interface PGGraphStorytellingRelationshipEdge
+ (id)filter;
+ (id)reducedRelationshipNameForLabels:(id)a3;
+ (id)relationshipNameForLabel:(id)a3;
- (PGGraphStorytellingRelationshipEdge)initWithRelationship:(id)a3 fromMeNode:(id)a4 toPersonNode:(id)a5;
@end

@implementation PGGraphStorytellingRelationshipEdge

- (PGGraphStorytellingRelationshipEdge)initWithRelationship:(id)a3 fromMeNode:(id)a4 toPersonNode:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = PGGraphStorytellingRelationshipEdge;
  v9 = [(PGGraphEdge *)&v13 initWithSourceNode:a4 targetNode:a5];
  if (v9)
  {
    v10 = [v8 copy];
    relationship = v9->_relationship;
    v9->_relationship = v10;
  }

  return v9;
}

+ (id)reducedRelationshipNameForLabels:(id)a3
{
  v4 = [PGGraphBuilder reducedRelationshipLabelForRelationshipLabels:a3];
  v5 = [a1 relationshipNameForLabel:v4];

  return v5;
}

+ (id)relationshipNameForLabel:(id)a3
{
  v3 = relationshipNameForLabel__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&relationshipNameForLabel__onceToken, &__block_literal_global_61919);
  }

  v5 = [relationshipNameForLabel__multiWordRelationshipNameForLabel objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
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