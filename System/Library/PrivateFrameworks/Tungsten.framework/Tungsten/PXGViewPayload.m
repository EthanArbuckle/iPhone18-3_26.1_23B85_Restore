@interface PXGViewPayload
- (BOOL)isEqual:(id)a3;
- (PXGViewPayload)initWithViewClass:(Class)a3 userData:(id)a4;
- (unint64_t)hash;
@end

@implementation PXGViewPayload

- (unint64_t)hash
{
  v3 = [(PXGViewPayload *)self userData];
  v4 = [v3 hash];
  v5 = [(objc_class *)[(PXGViewPayload *)self viewClass] hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGViewPayload *)v5 viewClass];
      if (v6 == [(PXGViewPayload *)self viewClass])
      {
        v8 = [(PXGViewPayload *)v5 userData];
        v9 = [(PXGViewPayload *)self userData];
        if (v8 == v9)
        {
          v7 = 1;
        }

        else
        {
          v7 = [v8 isEqual:v9];
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

- (PXGViewPayload)initWithViewClass:(Class)a3 userData:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = PXGViewPayload;
  v7 = [(PXGViewPayload *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewClass, a3);
    v9 = [v6 copyWithZone:0];
    userData = v8->_userData;
    v8->_userData = v9;

    v11 = objc_opt_respondsToSelector();
    v12 = 0;
    if (v11)
    {
      v12 = [v6 viewFloatingAxis];
    }

    v8->_floatingAxis = v12;
  }

  return v8;
}

@end