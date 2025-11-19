@interface SXLayoutContext
- (SXLayoutContext)initWithColumnLayout:(id)a3 unitConverter:(id)a4;
@end

@implementation SXLayoutContext

- (SXLayoutContext)initWithColumnLayout:(id)a3 unitConverter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXLayoutContext;
  v9 = [(SXLayoutContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_columnLayout, a3);
    objc_storeStrong(&v10->_unitConverter, a4);
  }

  return v10;
}

@end