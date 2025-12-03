@interface SKGEntityNode
+ (id)entityWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGEntityNode)initWithIdentifier:(id)identifier;
@end

@implementation SKGEntityNode

+ (id)entityWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGEntityNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGEntityNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGEntityNode)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SKGEntityNode;
  return [(SKGNode *)&v4 initWithValue:identifier];
}

@end