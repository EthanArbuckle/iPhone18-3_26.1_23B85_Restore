@interface UIKBTreeLocalizedKeylistEnumerator
- (UIKBTreeLocalizedKeylistEnumerator)initWithKeyplaneCache:(id)a3;
- (id)nextObject;
@end

@implementation UIKBTreeLocalizedKeylistEnumerator

- (id)nextObject
{
  v3 = [(NSEnumerator *)self->_nameEnum nextObject];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      if (![UIKBTree shouldSkipCacheString:v4])
      {
        v5 = [(NSDictionary *)self->_keyplaneCache objectForKey:v4];
        v6 = [v5 lastObject];
        v7 = [v6 localizationKey];

        if (v7)
        {
          break;
        }
      }

      v8 = [(NSEnumerator *)self->_nameEnum nextObject];

      v4 = v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v9 = [(NSDictionary *)self->_keyplaneCache objectForKey:v4];
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (UIKBTreeLocalizedKeylistEnumerator)initWithKeyplaneCache:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = UIKBTreeLocalizedKeylistEnumerator;
  v6 = [(UIKBTreeLocalizedKeylistEnumerator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyplaneCache, a3);
    v8 = [(NSDictionary *)v7->_keyplaneCache keyEnumerator];
    nameEnum = v7->_nameEnum;
    v7->_nameEnum = v8;

    v10 = v7;
  }

  return v7;
}

@end