@interface PGGraphLanguageEdge
+ (id)filter;
- (id)initFromLocationNode:(id)node toLanguageNode:(id)languageNode;
@end

@implementation PGGraphLanguageEdge

- (id)initFromLocationNode:(id)node toLanguageNode:(id)languageNode
{
  v5.receiver = self;
  v5.super_class = PGGraphLanguageEdge;
  return [(PGGraphEdge *)&v5 initWithSourceNode:node targetNode:languageNode];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"POPULAR_LANGUAGE" domain:205];

  return v2;
}

@end