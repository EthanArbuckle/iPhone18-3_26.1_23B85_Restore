@interface SKGDomainNode
+ (id)domainWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGDomainNode)initWithDomain:(id)domain;
@end

@implementation SKGDomainNode

+ (id)domainWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGDomainNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGDomainNode *)v7 initWithDomain:v8];

  return v9;
}

- (SKGDomainNode)initWithDomain:(id)domain
{
  v4.receiver = self;
  v4.super_class = SKGDomainNode;
  return [(SKGNode *)&v4 initWithValue:domain];
}

@end