@interface SKGUserNode
+ (id)user;
- (SKGUserNode)init;
@end

@implementation SKGUserNode

+ (id)user
{
  v2 = objc_alloc_init(SKGUserNode);

  return v2;
}

- (SKGUserNode)init
{
  v3.receiver = self;
  v3.super_class = SKGUserNode;
  return [(SKGNode *)&v3 initWithValue:@"user"];
}

@end