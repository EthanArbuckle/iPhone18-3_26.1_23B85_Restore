@interface SKGPhotoNode
+ (id)photoWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGPhotoNode)initWithIdentifier:(id)identifier;
@end

@implementation SKGPhotoNode

+ (id)photoWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGPhotoNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGPhotoNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGPhotoNode)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SKGPhotoNode;
  return [(SKGNode *)&v4 initWithValue:identifier];
}

@end