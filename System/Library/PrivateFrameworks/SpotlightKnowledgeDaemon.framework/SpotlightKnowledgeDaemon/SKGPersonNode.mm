@interface SKGPersonNode
+ (id)personWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGPersonNode)initWithIdentifier:(id)identifier;
@end

@implementation SKGPersonNode

+ (id)personWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGPersonNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGPersonNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGPersonNode)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SKGPersonNode;
  return [(SKGNode *)&v4 initWithValue:identifier];
}

@end