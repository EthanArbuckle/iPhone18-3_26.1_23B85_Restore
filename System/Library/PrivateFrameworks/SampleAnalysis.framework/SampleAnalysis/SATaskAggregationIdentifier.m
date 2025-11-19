@interface SATaskAggregationIdentifier
- (BOOL)isEqual:(id)a3;
- (id)initWithBinary:(void *)a3 sharedCache:(void *)a4 rcid:(char)a5 isTarget:;
@end

@implementation SATaskAggregationIdentifier

- (id)initWithBinary:(void *)a3 sharedCache:(void *)a4 rcid:(char)a5 isTarget:
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = SATaskAggregationIdentifier;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 2, a2);
    objc_storeStrong(v10 + 3, a3);
    v10[4] = a4;
    *(v10 + 8) = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a3;
    v7 = v5;
    if (v5)
    {
      v9 = objc_getProperty(v5, v6, 16, 1);
      if (v9 != self->_binary)
      {
        v10 = 0;
LABEL_16:

        return v10;
      }

      v11 = objc_getProperty(v7, v8, 24, 1);
      if (v11 == self->_sharedCache && *(v7 + 4) == self->_rcid)
      {
        LOBYTE(sharedCache) = *(v7 + 8);
LABEL_9:
        v10 = self->_isTarget == (sharedCache & 1);
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      if (self->_binary)
      {
        v10 = 0;
        v9 = 0;
        goto LABEL_16;
      }

      sharedCache = self->_sharedCache;
      if (!sharedCache)
      {
        v9 = 0;
        v11 = 0;
        v10 = 0;
        if (self->_rcid)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }

      v9 = 0;
      v11 = 0;
    }

    v10 = 0;
    goto LABEL_15;
  }

  return 0;
}

@end