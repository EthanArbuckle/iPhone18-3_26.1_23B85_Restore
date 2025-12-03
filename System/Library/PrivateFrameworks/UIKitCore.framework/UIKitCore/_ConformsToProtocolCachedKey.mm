@interface _ConformsToProtocolCachedKey
- (BOOL)isEqual:(id)equal;
- (_ConformsToProtocolCachedKey)initWithObject:(id)object protocol:(id)protocol;
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

- (_ConformsToProtocolCachedKey)initWithObject:(id)object protocol:(id)protocol
{
  objectCopy = object;
  protocolCopy = protocol;
  v11.receiver = self;
  v11.super_class = _ConformsToProtocolCachedKey;
  v8 = [(_ConformsToProtocolCachedKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, objectCopy);
    objc_storeStrong(&v9->_protocol, protocol);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
        v7 = objc_loadWeakRetained(&equalCopy->_object);
        if (v7)
        {
          v8 = objc_loadWeakRetained(&self->_object);
          v9 = objc_loadWeakRetained(&equalCopy->_object);
          v10 = v8 == v9 && self->_protocol == equalCopy->_protocol;
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