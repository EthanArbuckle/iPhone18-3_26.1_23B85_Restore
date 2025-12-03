@interface PXGDecorationViewPayload
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldSeparateViewLayers;
- (PXGDecorationViewPayload)initWithDecorationOptions:(unint64_t)options viewClass:(Class)class userData:(id)data;
- (unint64_t)hash;
@end

@implementation PXGDecorationViewPayload

- (BOOL)shouldSeparateViewLayers
{
  v6.receiver = self;
  v6.super_class = PXGDecorationViewPayload;
  shouldSeparateViewLayers = [(PXGViewPayload *)&v6 shouldSeparateViewLayers];
  v4 = NSClassFromString(&cfstr_Pxphotosgridre.isa);
  return shouldSeparateViewLayers && [(PXGViewPayload *)self viewClass]!= v4;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PXGDecorationViewPayload;
  v3 = [(PXGViewPayload *)&v5 hash];
  return v3 ^ (4 * [(PXGDecorationViewPayload *)self decorationOptions]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXGDecorationViewPayload;
    if ([(PXGViewPayload *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      decorationOptions = [(PXGDecorationViewPayload *)equalCopy decorationOptions];
      v6 = decorationOptions == [(PXGDecorationViewPayload *)self decorationOptions];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PXGDecorationViewPayload)initWithDecorationOptions:(unint64_t)options viewClass:(Class)class userData:(id)data
{
  v7.receiver = self;
  v7.super_class = PXGDecorationViewPayload;
  result = [(PXGViewPayload *)&v7 initWithViewClass:class userData:data];
  if (result)
  {
    result->_decorationOptions = options;
  }

  return result;
}

@end