@interface _UICornerMaskingProviderMux
+ (id)undefined;
- (BOOL)isEqual:(id)equal;
- (_UICornerMaskingProviderMux)init;
- (_UICornerMaskingProviderMux)initWithTopLeft:(id)left topRight:(id)right bottomLeft:(id)bottomLeft bottomRight:(id)bottomRight;
- (_UICornerMaskingProviderMux)initWithUniformProvider:(id)provider;
- (_UIRelativeCornerMaskingProvider)bottomLeft;
- (_UIRelativeCornerMaskingProvider)bottomRight;
- (_UIRelativeCornerMaskingProvider)topLeft;
- (_UIRelativeCornerMaskingProvider)topRight;
- (id)mergingWith:(id)with;
- (id)providerFor:(unint64_t)for;
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

- (_UICornerMaskingProviderMux)initWithTopLeft:(id)left topRight:(id)right bottomLeft:(id)bottomLeft bottomRight:(id)bottomRight
{
  leftCopy = left;
  rightCopy = right;
  bottomLeftCopy = bottomLeft;
  bottomRightCopy = bottomRight;
  v17.receiver = self;
  v17.super_class = _UICornerMaskingProviderMux;
  v14 = [(_UICornerMaskingProviderMux *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_topLeft, leftCopy);
    objc_storeWeak(&v15->_topRight, rightCopy);
    objc_storeWeak(&v15->_bottomLeft, bottomLeftCopy);
    objc_storeWeak(&v15->_bottomRight, bottomRightCopy);
  }

  return v15;
}

- (_UICornerMaskingProviderMux)initWithUniformProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = _UICornerMaskingProviderMux;
  v5 = [(_UICornerMaskingProviderMux *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_topLeft, providerCopy);
    objc_storeWeak(&v6->_topRight, providerCopy);
    objc_storeWeak(&v6->_bottomLeft, providerCopy);
    objc_storeWeak(&v6->_bottomRight, providerCopy);
  }

  return v6;
}

- (id)mergingWith:(id)with
{
  withCopy = with;
  v5 = [_UICornerMaskingProviderMux alloc];
  topLeft = [(_UICornerMaskingProviderMux *)withCopy topLeft];
  if (topLeft)
  {
    selfCopy = withCopy;
  }

  else
  {
    selfCopy = self;
  }

  topLeft2 = [(_UICornerMaskingProviderMux *)selfCopy topLeft];
  topRight = [(_UICornerMaskingProviderMux *)withCopy topRight];
  if (topRight)
  {
    selfCopy2 = withCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  topRight2 = [(_UICornerMaskingProviderMux *)selfCopy2 topRight];
  bottomLeft = [(_UICornerMaskingProviderMux *)withCopy bottomLeft];
  if (bottomLeft)
  {
    selfCopy3 = withCopy;
  }

  else
  {
    selfCopy3 = self;
  }

  bottomLeft2 = [(_UICornerMaskingProviderMux *)selfCopy3 bottomLeft];
  bottomRight = [(_UICornerMaskingProviderMux *)withCopy bottomRight];
  if (bottomRight)
  {
    selfCopy4 = withCopy;
  }

  else
  {
    selfCopy4 = self;
  }

  bottomRight2 = [(_UICornerMaskingProviderMux *)selfCopy4 bottomRight];
  v18 = [(_UICornerMaskingProviderMux *)v5 initWithTopLeft:topLeft2 topRight:topRight2 bottomLeft:bottomLeft2 bottomRight:bottomRight2];

  return v18;
}

- (id)providerFor:(unint64_t)for
{
  v4 = for - 1;
  if (for - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.isa + qword_18A67B480[v4]));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _UICornerMaskingProviderMux;
    if ([(_UICornerMaskingProviderMux *)&v18 isEqual:equalCopy])
    {
      v5 = equalCopy;
      v6 = v5;
      if (v5)
      {
        topLeft = [(_UICornerMaskingProviderMux *)v5 topLeft];
        WeakRetained = objc_loadWeakRetained(&self->_topLeft);
        if ([topLeft isEqual:WeakRetained])
        {
          topRight = [(_UICornerMaskingProviderMux *)v6 topRight];
          v10 = objc_loadWeakRetained(&self->_topRight);
          if ([topRight isEqual:v10])
          {
            bottomLeft = [(_UICornerMaskingProviderMux *)v6 bottomLeft];
            v12 = objc_loadWeakRetained(&self->_bottomLeft);
            if ([bottomLeft isEqual:v12])
            {
              [(_UICornerMaskingProviderMux *)v6 bottomRight];
              v13 = v17 = bottomLeft;
              v14 = objc_loadWeakRetained(&self->_bottomRight);
              v15 = [v13 isEqual:v14];

              bottomLeft = v17;
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