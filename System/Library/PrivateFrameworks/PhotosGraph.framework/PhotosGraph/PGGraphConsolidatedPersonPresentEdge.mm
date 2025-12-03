@interface PGGraphConsolidatedPersonPresentEdge
+ (id)filter;
- (PGGraphConsolidatedPersonPresentEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
@end

@implementation PGGraphConsolidatedPersonPresentEdge

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"CPRESENT" domain:300];

  return v2;
}

- (PGGraphConsolidatedPersonPresentEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v13 = [propertiesCopy objectForKeyedSubscript:@"importance"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:@"numberOfAssets"];

  unsignedIntegerValue = [v16 unsignedIntegerValue];
  v18 = [(PGGraphBasePresentEdge *)self initFromPersonNode:nodeCopy toMomentNode:targetNodeCopy importance:unsignedIntegerValue numberOfAssets:v15];

  return v18;
}

@end