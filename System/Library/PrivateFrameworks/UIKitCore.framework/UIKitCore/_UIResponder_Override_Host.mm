@interface _UIResponder_Override_Host
+ (id)hostForResponder:(id)a3;
- (UIResponder)owner;
- (_UIResponder_Override_Host)init;
- (id)description;
- (int64_t)typesForResponder:(id)a3;
- (void)attachOverrider:(id)a3 forTypes:(int64_t)a4;
- (void)dealloc;
- (void)detachOverrider:(id)a3 forTypes:(int64_t)a4;
@end

@implementation _UIResponder_Override_Host

+ (id)hostForResponder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    objc_storeWeak((v4 + 16), v3);
  }

  return v5;
}

- (_UIResponder_Override_Host)init
{
  v6.receiver = self;
  v6.super_class = _UIResponder_Override_Host;
  v2 = [(_UIResponder_Override_Host *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    overrides = v2->_overrides;
    v2->_overrides = v3;
  }

  return v2;
}

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v4 = [WeakRetained nextResponder];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self;
  obj = self->_overrides;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 type];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v18 = __37___UIResponder_Override_Host_dealloc__block_invoke;
        v19 = &unk_1E71003B0;
        v20 = v9;
        v21 = v4;
        v11 = 1;
        v12 = 3;
        do
        {
          if ((v11 & v10) != 0)
          {
            v18(v17, v11);
          }

          v11 *= 2;
          v13 = v12 > 1;
          v12 >>= 1;
        }

        while (v13);
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v16.receiver = v14;
  v16.super_class = _UIResponder_Override_Host;
  [(_UIResponder_Override_Host *)&v16 dealloc];
}

- (void)attachOverrider:(id)a3 forTypes:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIResponder_Override_Host *)self owner];

  if (v7 != v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __55___UIResponder_Override_Host_attachOverrider_forTypes___block_invoke;
    v13 = &unk_1E71003B0;
    v14 = self;
    v15 = v6;
    v8 = 3;
    v9 = 1;
    do
    {
      if ((v9 & a4) != 0)
      {
        v12(v11, v9);
      }

      v9 *= 2;
      v10 = v8 > 1;
      v8 >>= 1;
    }

    while (v10);
  }
}

- (void)detachOverrider:(id)a3 forTypes:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UIResponder_Override_Host *)self owner];

  if (v7 != v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = self;
    v8 = [(NSMutableArray *)self->_overrides copy];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 overridden];
          v16 = v15;
          if (v15 != v6)
          {

LABEL_9:
            ++v11;
            continue;
          }

          v17 = [v14 type] & a4;

          if (!v17)
          {
            goto LABEL_9;
          }

          [(NSMutableArray *)v19->_overrides removeObjectAtIndex:v11];
          a4 &= ~[v14 type];
          if (!a4)
          {
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

LABEL_14:

    if (![(NSMutableArray *)v19->_overrides count])
    {
      v18 = [(_UIResponder_Override_Host *)v19 owner];
      [v18 _clearOverrideHost];
    }
  }
}

- (int64_t)typesForResponder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_overrides;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 overridden];

        if (v11 == a3)
        {
          v7 |= [v10 type];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIResponder_Override_Host;
  v4 = [(_UIResponder_Override_Host *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [v3 stringWithFormat:@"<%@ owner=%@; overrides=%@>", v4, WeakRetained, self->_overrides];;

  return v6;
}

- (UIResponder)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end