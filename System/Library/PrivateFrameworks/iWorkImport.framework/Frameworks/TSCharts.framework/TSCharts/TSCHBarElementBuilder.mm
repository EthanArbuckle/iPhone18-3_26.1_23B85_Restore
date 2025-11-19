@interface TSCHBarElementBuilder
- (TSCHBarElementBuilder)init;
@end

@implementation TSCHBarElementBuilder

- (TSCHBarElementBuilder)init
{
  v3.receiver = self;
  v3.super_class = TSCHBarElementBuilder;
  return [(TSCHBarColumnElementBuilder *)&v3 initWithVertical:0];
}

@end