@interface SKGEntityNode
+ (id)entityWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGEntityNode)initWithIdentifier:(id)a3;
@end

@implementation SKGEntityNode

+ (id)entityWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGEntityNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGEntityNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGEntityNode)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGEntityNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

@end