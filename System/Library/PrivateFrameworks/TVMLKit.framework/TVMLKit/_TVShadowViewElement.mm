@interface _TVShadowViewElement
- (BOOL)isEqual:(id)a3;
- (_TVShadowViewElement)parent;
- (unint64_t)hash;
@end

@implementation _TVShadowViewElement

- (unint64_t)hash
{
  v2 = [(_TVShadowViewElement *)self elementID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 elementID];
    v7 = [(_TVShadowViewElement *)self elementID];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [v5 elementID];
      v9 = [(_TVShadowViewElement *)self elementID];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TVShadowViewElement)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end