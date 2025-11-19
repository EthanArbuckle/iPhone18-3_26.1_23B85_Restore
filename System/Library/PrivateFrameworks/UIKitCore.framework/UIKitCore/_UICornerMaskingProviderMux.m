@interface _UICornerMaskingProviderMux
+ (id)undefined;
- (BOOL)isEqual:(id)a3;
- (_UICornerMaskingProviderMux)init;
- (_UICornerMaskingProviderMux)initWithTopLeft:(id)a3 topRight:(id)a4 bottomLeft:(id)a5 bottomRight:(id)a6;
- (_UICornerMaskingProviderMux)initWithUniformProvider:(id)a3;
- (_UIRelativeCornerMaskingProvider)bottomLeft;
- (_UIRelativeCornerMaskingProvider)bottomRight;
- (_UIRelativeCornerMaskingProvider)topLeft;
- (_UIRelativeCornerMaskingProvider)topRight;
- (id)mergingWith:(id)a3;
- (id)providerFor:(unint64_t)a3;
@end

@implementation _UICornerMaskingProviderMux

- (_UICornerMaskingProviderMux)init
{
  v3.receiver = self;
  v3.super_class = _UICornerMaskingProviderMux;
  return [(_UICornerMaskingProviderMux *)&v3 init];
}

- (_UIRelativeCornerMaskingProvider)topLeft
{
  WeakRetained = objc_loadWeakRetained(&self->_topLeft);

  return WeakRetained;
}

- (_UIRelativeCornerMaskingProvider)topRight
{
  WeakRetained = objc_loadWeakRetained(&self->_topRight);

  return WeakRetained;
}

- (_UIRelativeCornerMaskingProvider)bottomLeft
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLeft);

  return WeakRetained;
}

- (_UIRelativeCornerMaskingProvider)bottomRight
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomRight);

  return WeakRetained;
}

+ (id)undefined
{
  v2 = objc_alloc_init(_UICornerMaskingProviderMux);

  return v2;
}

- (_UICornerMaskingProviderMux)initWithTopLeft:(id)a3 topRight:(id)a4 bottomLeft:(id)a5 bottomRight:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _UICornerMaskingProviderMux;
  v14 = [(_UICornerMaskingProviderMux *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_topLeft, v10);
    objc_storeWeak(&v15->_topRight, v11);
    objc_storeWeak(&v15->_bottomLeft, v12);
    objc_storeWeak(&v15->_bottomRight, v13);
  }

  return v15;
}

- (_UICornerMaskingProviderMux)initWithUniformProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UICornerMaskingProviderMux;
  v5 = [(_UICornerMaskingProviderMux *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_topLeft, v4);
    objc_storeWeak(&v6->_topRight, v4);
    objc_storeWeak(&v6->_bottomLeft, v4);
    objc_storeWeak(&v6->_bottomRight, v4);
  }

  return v6;
}

- (id)mergingWith:(id)a3
{
  v4 = a3;
  v5 = [_UICornerMaskingProviderMux alloc];
  v6 = [(_UICornerMaskingProviderMux *)v4 topLeft];
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = self;
  }

  v8 = [(_UICornerMaskingProviderMux *)v7 topLeft];
  v9 = [(_UICornerMaskingProviderMux *)v4 topRight];
  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = self;
  }

  v11 = [(_UICornerMaskingProviderMux *)v10 topRight];
  v12 = [(_UICornerMaskingProviderMux *)v4 bottomLeft];
  if (v12)
  {
    v13 = v4;
  }

  else
  {
    v13 = self;
  }

  v14 = [(_UICornerMaskingProviderMux *)v13 bottomLeft];
  v15 = [(_UICornerMaskingProviderMux *)v4 bottomRight];
  if (v15)
  {
    v16 = v4;
  }

  else
  {
    v16 = self;
  }

  v17 = [(_UICornerMaskingProviderMux *)v16 bottomRight];
  v18 = [(_UICornerMaskingProviderMux *)v5 initWithTopLeft:v8 topRight:v11 bottomLeft:v14 bottomRight:v17];

  return v18;
}

- (id)providerFor:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.isa + qword_18A67B480[v4]));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _UICornerMaskingProviderMux;
    if ([(_UICornerMaskingProviderMux *)&v18 isEqual:v4])
    {
      v5 = v4;
      v6 = v5;
      if (v5)
      {
        v7 = [(_UICornerMaskingProviderMux *)v5 topLeft];
        WeakRetained = objc_loadWeakRetained(&self->_topLeft);
        if ([v7 isEqual:WeakRetained])
        {
          v9 = [(_UICornerMaskingProviderMux *)v6 topRight];
          v10 = objc_loadWeakRetained(&self->_topRight);
          if ([v9 isEqual:v10])
          {
            v11 = [(_UICornerMaskingProviderMux *)v6 bottomLeft];
            v12 = objc_loadWeakRetained(&self->_bottomLeft);
            if ([v11 isEqual:v12])
            {
              [(_UICornerMaskingProviderMux *)v6 bottomRight];
              v13 = v17 = v11;
              v14 = objc_loadWeakRetained(&self->_bottomRight);
              v15 = [v13 isEqual:v14];

              v11 = v17;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end