@interface PGGraphPetPresentEdge
+ (id)filter;
- (id)initFromPetNode:(id)a3 toMomentNode:(id)a4;
@end

@implementation PGGraphPetPresentEdge

- (id)initFromPetNode:(id)a3 toMomentNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphPetPresentEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PET_IS_PRESENT" domain:304];

  return v2;
}

@end