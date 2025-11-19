@interface SKGNameNode
+ (id)nameWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGNameNode)initWithName:(id)a3;
@end

@implementation SKGNameNode

+ (id)nameWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGNameNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGNameNode *)v7 initWithName:v8];

  return v9;
}

- (SKGNameNode)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGNameNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

@end