@interface TSCHStackedBarElementBuilder
- (TSCHStackedBarElementBuilder)init;
@end

@implementation TSCHStackedBarElementBuilder

- (TSCHStackedBarElementBuilder)init
{
  v3.receiver = self;
  v3.super_class = TSCHStackedBarElementBuilder;
  return [(TSCHBarColumnElementBuilder *)&v3 initWithVertical:0];
}

@end