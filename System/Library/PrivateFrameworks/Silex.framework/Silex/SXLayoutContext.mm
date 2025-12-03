@interface SXLayoutContext
- (SXLayoutContext)initWithColumnLayout:(id)layout unitConverter:(id)converter;
@end

@implementation SXLayoutContext

- (SXLayoutContext)initWithColumnLayout:(id)layout unitConverter:(id)converter
{
  layoutCopy = layout;
  converterCopy = converter;
  v12.receiver = self;
  v12.super_class = SXLayoutContext;
  v9 = [(SXLayoutContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_columnLayout, layout);
    objc_storeStrong(&v10->_unitConverter, converter);
  }

  return v10;
}

@end