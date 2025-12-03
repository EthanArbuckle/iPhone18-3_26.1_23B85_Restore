@interface SKGReferenceNode
+ (id)referenceWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGReferenceNode)initWithReference:(id)reference;
@end

@implementation SKGReferenceNode

+ (id)referenceWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGReferenceNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGReferenceNode *)v7 initWithReference:v8];

  return v9;
}

- (SKGReferenceNode)initWithReference:(id)reference
{
  v4.receiver = self;
  v4.super_class = SKGReferenceNode;
  return [(SKGNode *)&v4 initWithValue:reference];
}

@end