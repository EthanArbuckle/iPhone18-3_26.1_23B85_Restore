@interface _ConformsToProtocolCachedKey
- (BOOL)isEqual:(id)a3;
- (_ConformsToProtocolCachedKey)initWithObject:(id)a3 protocol:(id)a4;
- (unint64_t)hash;
@end

@implementation _ConformsToProtocolCachedKey

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v4 = [WeakRetained hash];
  v5 = [(Protocol *)self->_protocol hash]- v4 + 32 * v4;

  return v5;
}

- (_ConformsToProtocolCachedKey)initWithObject:(id)a3 protocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _ConformsToProtocolCachedKey;
  v8 = [(_ConformsToProtocolCachedKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, v6);
    objc_storeStrong(&v9->_protocol, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      WeakRetained = objc_loadWeakRetained(&self->_object);
      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained(&v4->_object);
        if (v7)
        {
          v8 = objc_loadWeakRetained(&self->_object);
          v9 = objc_loadWeakRetained(&v4->_object);
          v10 = v8 == v9 && self->_protocol == v4->_protocol;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end