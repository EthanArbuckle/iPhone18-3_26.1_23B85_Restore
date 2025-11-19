@interface TSCHColumnElementBuilder
- (TSCHColumnElementBuilder)init;
@end

@implementation TSCHColumnElementBuilder

- (TSCHColumnElementBuilder)init
{
  v3.receiver = self;
  v3.super_class = TSCHColumnElementBuilder;
  return [(TSCHBarColumnElementBuilder *)&v3 initWithVertical:1];
}

@end