@interface UIKBTreeLocalizedKeylistEnumerator
- (UIKBTreeLocalizedKeylistEnumerator)initWithKeyplaneCache:(id)cache;
- (id)nextObject;
@end

@implementation UIKBTreeLocalizedKeylistEnumerator

- (id)nextObject
{
  nextObject = [(NSEnumerator *)self->_nameEnum nextObject];
  if (nextObject)
  {
    v4 = nextObject;
    while (1)
    {
      if (![UIKBTree shouldSkipCacheString:v4])
      {
        v5 = [(NSDictionary *)self->_keyplaneCache objectForKey:v4];
        lastObject = [v5 lastObject];
        localizationKey = [lastObject localizationKey];

        if (localizationKey)
        {
          break;
        }
      }

      nextObject2 = [(NSEnumerator *)self->_nameEnum nextObject];

      v4 = nextObject2;
      if (!nextObject2)
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

- (UIKBTreeLocalizedKeylistEnumerator)initWithKeyplaneCache:(id)cache
{
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = UIKBTreeLocalizedKeylistEnumerator;
  v6 = [(UIKBTreeLocalizedKeylistEnumerator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyplaneCache, cache);
    keyEnumerator = [(NSDictionary *)v7->_keyplaneCache keyEnumerator];
    nameEnum = v7->_nameEnum;
    v7->_nameEnum = keyEnumerator;

    v10 = v7;
  }

  return v7;
}

@end