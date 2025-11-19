@interface RSNode
- (RSNode)init;
@end

@implementation RSNode

- (RSNode)init
{
  v3.receiver = self;
  v3.super_class = RSNode;
  return [(RSNode *)&v3 init];
}

@end