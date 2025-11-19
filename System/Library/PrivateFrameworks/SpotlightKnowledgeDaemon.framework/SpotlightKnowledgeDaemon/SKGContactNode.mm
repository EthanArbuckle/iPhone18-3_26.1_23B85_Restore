@interface SKGContactNode
+ (id)contactWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGContactNode)initWithIdentifier:(id)a3;
@end

@implementation SKGContactNode

+ (id)contactWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGContactNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGContactNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGContactNode)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGContactNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

@end