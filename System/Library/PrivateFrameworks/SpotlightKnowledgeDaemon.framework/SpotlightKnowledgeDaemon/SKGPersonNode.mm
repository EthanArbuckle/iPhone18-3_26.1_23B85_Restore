@interface SKGPersonNode
+ (id)personWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGPersonNode)initWithIdentifier:(id)a3;
@end

@implementation SKGPersonNode

+ (id)personWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGPersonNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGPersonNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGPersonNode)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGPersonNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

@end