@interface SKProductsResponse
- (SKProductsResponse)init;
- (SKProductsResponse)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)_setInvalidIdentifiers:(id)a3;
- (void)_setProducts:(id)a3;
@end

@implementation SKProductsResponse

- (SKProductsResponse)init
{
  v6.receiver = self;
  v6.super_class = SKProductsResponse;
  v2 = [(SKProductsResponse *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductsResponseInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (SKProductsResponse)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v8 = [(SKProductsResponse *)self init];
    v6 = v8;
    if (v8)
    {
      v9 = v8->_internal;
      objc_opt_class();
      v10 = sub_10018E3FC(v5, "0");
      v11 = v9[1];
      v9[1] = v10;

      v12 = objc_alloc_init(NSMutableArray);
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = xpc_dictionary_get_value(v5, "1");
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10018D1A8;
      v22 = &unk_1003280D0;
      v23 = v13;
      v24 = v12;
      v15 = v12;
      v16 = v13;
      xpc_array_apply(v14, &v19);
      v17 = [v15 copy];
      v18 = v9[2];
      v9[2] = v17;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = self->_internal;
  sub_10018E448(v3, "0", *(v4 + 1));
  v5 = xpc_array_create(0, 0);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyXPCEncoding];
        if (v11)
        {
          xpc_array_append_value(v5, v11);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  xpc_dictionary_set_value(v3, "1", v5);
  return v3;
}

- (void)_setInvalidIdentifiers:(id)a3
{
  internal = self->_internal;
  if (internal[1] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)_setProducts:(id)a3
{
  internal = self->_internal;
  if (internal[2] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[2];
    internal[2] = v5;
  }
}

@end