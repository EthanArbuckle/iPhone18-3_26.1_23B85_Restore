@interface PGGraphLanguageEdge
+ (id)filter;
- (id)initFromLocationNode:(id)a3 toLanguageNode:(id)a4;
@end

@implementation PGGraphLanguageEdge

- (id)initFromLocationNode:(id)a3 toLanguageNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphLanguageEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"POPULAR_LANGUAGE" domain:205];

  return v2;
}

@end