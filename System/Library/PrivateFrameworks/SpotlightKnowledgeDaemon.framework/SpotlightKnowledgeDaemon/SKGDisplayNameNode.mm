@interface SKGDisplayNameNode
+ (id)displayNameWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGDisplayNameNode)initWithName:(id)name;
@end

@implementation SKGDisplayNameNode

+ (id)displayNameWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGDisplayNameNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGDisplayNameNode *)v7 initWithName:v8];

  return v9;
}

- (SKGDisplayNameNode)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = SKGDisplayNameNode;
  return [(SKGNode *)&v4 initWithValue:name];
}

@end