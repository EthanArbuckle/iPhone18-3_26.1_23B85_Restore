@interface SXLayoutContextFactory
- (id)createLayoutContextForColumnLayout:(id)layout unitConverter:(id)converter;
@end

@implementation SXLayoutContextFactory

- (id)createLayoutContextForColumnLayout:(id)layout unitConverter:(id)converter
{
  converterCopy = converter;
  layoutCopy = layout;
  v7 = [[SXLayoutContext alloc] initWithColumnLayout:layoutCopy unitConverter:converterCopy];

  return v7;
}

@end