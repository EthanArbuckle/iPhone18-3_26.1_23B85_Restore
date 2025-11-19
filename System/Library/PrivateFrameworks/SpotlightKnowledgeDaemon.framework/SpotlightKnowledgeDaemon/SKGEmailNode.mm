@interface SKGEmailNode
+ (id)emailWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGEmailNode)initWithEmailAddress:(id)a3;
@end

@implementation SKGEmailNode

- (SKGEmailNode)initWithEmailAddress:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGEmailNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

+ (id)emailWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGEmailNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGEmailNode *)v7 initWithEmailAddress:v8];

  return v9;
}

@end