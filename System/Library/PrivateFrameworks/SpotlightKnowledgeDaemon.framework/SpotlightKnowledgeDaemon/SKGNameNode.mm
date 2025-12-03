@interface SKGNameNode
+ (id)nameWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGNameNode)initWithName:(id)name;
@end

@implementation SKGNameNode

+ (id)nameWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGNameNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGNameNode *)v7 initWithName:v8];

  return v9;
}

- (SKGNameNode)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = SKGNameNode;
  return [(SKGNode *)&v4 initWithValue:name];
}

@end