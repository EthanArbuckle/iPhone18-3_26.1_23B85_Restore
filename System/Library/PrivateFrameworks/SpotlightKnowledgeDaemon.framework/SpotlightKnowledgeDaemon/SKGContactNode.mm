@interface SKGContactNode
+ (id)contactWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGContactNode)initWithIdentifier:(id)identifier;
@end

@implementation SKGContactNode

+ (id)contactWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGContactNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGContactNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGContactNode)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SKGContactNode;
  return [(SKGNode *)&v4 initWithValue:identifier];
}

@end