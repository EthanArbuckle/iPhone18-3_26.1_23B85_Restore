@interface PGGraphPersonPresentEdge
+ (id)filter;
- (PGGraphPersonPresentEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7;
@end

@implementation PGGraphPersonPresentEdge

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PRESENT" domain:300];

  return v2;
}

- (PGGraphPersonPresentEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 properties:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a4;
  v13 = [v10 objectForKeyedSubscript:@"importance"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v10 objectForKeyedSubscript:@"numberOfAssets"];

  v17 = [v16 unsignedIntegerValue];
  v18 = [(PGGraphBasePresentEdge *)self initFromPersonNode:v12 toMomentNode:v11 importance:v17 numberOfAssets:v15];

  return v18;
}

@end