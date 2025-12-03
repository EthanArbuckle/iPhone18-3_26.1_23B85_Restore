@interface SKGEmailNode
+ (id)emailWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGEmailNode)initWithEmailAddress:(id)address;
@end

@implementation SKGEmailNode

- (SKGEmailNode)initWithEmailAddress:(id)address
{
  v4.receiver = self;
  v4.super_class = SKGEmailNode;
  return [(SKGNode *)&v4 initWithValue:address];
}

+ (id)emailWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGEmailNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGEmailNode *)v7 initWithEmailAddress:v8];

  return v9;
}

@end