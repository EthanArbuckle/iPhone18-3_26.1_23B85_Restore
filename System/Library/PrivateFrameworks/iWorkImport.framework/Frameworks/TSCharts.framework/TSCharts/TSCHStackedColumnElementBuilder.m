@interface TSCHStackedColumnElementBuilder
- (TSCHStackedColumnElementBuilder)init;
@end

@implementation TSCHStackedColumnElementBuilder

- (TSCHStackedColumnElementBuilder)init
{
  v3.receiver = self;
  v3.super_class = TSCHStackedColumnElementBuilder;
  return [(TSCHBarColumnElementBuilder *)&v3 initWithVertical:1];
}

@end