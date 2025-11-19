@interface PXGDecorationViewPayload
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldSeparateViewLayers;
- (PXGDecorationViewPayload)initWithDecorationOptions:(unint64_t)a3 viewClass:(Class)a4 userData:(id)a5;
- (unint64_t)hash;
@end

@implementation PXGDecorationViewPayload

- (BOOL)shouldSeparateViewLayers
{
  v6.receiver = self;
  v6.super_class = PXGDecorationViewPayload;
  v3 = [(PXGViewPayload *)&v6 shouldSeparateViewLayers];
  v4 = NSClassFromString(&cfstr_Pxphotosgridre.isa);
  return v3 && [(PXGViewPayload *)self viewClass]!= v4;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PXGDecorationViewPayload;
  v3 = [(PXGViewPayload *)&v5 hash];
  return v3 ^ (4 * [(PXGDecorationViewPayload *)self decorationOptions]);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXGDecorationViewPayload;
    if ([(PXGViewPayload *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [(PXGDecorationViewPayload *)v4 decorationOptions];
      v6 = v5 == [(PXGDecorationViewPayload *)self decorationOptions];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PXGDecorationViewPayload)initWithDecorationOptions:(unint64_t)a3 viewClass:(Class)a4 userData:(id)a5
{
  v7.receiver = self;
  v7.super_class = PXGDecorationViewPayload;
  result = [(PXGViewPayload *)&v7 initWithViewClass:a4 userData:a5];
  if (result)
  {
    result->_decorationOptions = a3;
  }

  return result;
}

@end