@interface _TVShadowViewElement
- (BOOL)isEqual:(id)equal;
- (_TVShadowViewElement)parent;
- (unint64_t)hash;
@end

@implementation _TVShadowViewElement

- (unint64_t)hash
{
  elementID = [(_TVShadowViewElement *)self elementID];
  v3 = [elementID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    elementID = [v5 elementID];
    elementID2 = [(_TVShadowViewElement *)self elementID];
    if (elementID == elementID2)
    {
      v10 = 1;
    }

    else
    {
      elementID3 = [v5 elementID];
      elementID4 = [(_TVShadowViewElement *)self elementID];
      v10 = [elementID3 isEqual:elementID4];
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