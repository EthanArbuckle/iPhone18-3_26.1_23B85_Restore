@interface SKGPhotoNode
+ (id)photoWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGPhotoNode)initWithIdentifier:(id)a3;
@end

@implementation SKGPhotoNode

+ (id)photoWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGPhotoNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGPhotoNode *)v7 initWithIdentifier:v8];

  return v9;
}

- (SKGPhotoNode)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGPhotoNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

@end