@interface PXGViewPayload
- (BOOL)isEqual:(id)equal;
- (PXGViewPayload)initWithViewClass:(Class)class userData:(id)data;
- (unint64_t)hash;
@end

@implementation PXGViewPayload

- (unint64_t)hash
{
  userData = [(PXGViewPayload *)self userData];
  v4 = [userData hash];
  v5 = [(objc_class *)[(PXGViewPayload *)self viewClass] hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      viewClass = [(PXGViewPayload *)v5 viewClass];
      if (viewClass == [(PXGViewPayload *)self viewClass])
      {
        userData = [(PXGViewPayload *)v5 userData];
        userData2 = [(PXGViewPayload *)self userData];
        if (userData == userData2)
        {
          v7 = 1;
        }

        else
        {
          v7 = [userData isEqual:userData2];
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXGViewPayload)initWithViewClass:(Class)class userData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = PXGViewPayload;
  v7 = [(PXGViewPayload *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewClass, class);
    v9 = [dataCopy copyWithZone:0];
    userData = v8->_userData;
    v8->_userData = v9;

    v11 = objc_opt_respondsToSelector();
    viewFloatingAxis = 0;
    if (v11)
    {
      viewFloatingAxis = [dataCopy viewFloatingAxis];
    }

    v8->_floatingAxis = viewFloatingAxis;
  }

  return v8;
}

@end