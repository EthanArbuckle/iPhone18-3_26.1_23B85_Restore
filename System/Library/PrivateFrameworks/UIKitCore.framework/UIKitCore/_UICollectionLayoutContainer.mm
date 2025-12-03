@interface _UICollectionLayoutContainer
- (BOOL)isEqual:(id)equal;
- (CGSize)contentSize;
- (CGSize)effectiveContentSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (NSDirectionalEdgeInsets)effectiveContentInsets;
- (NSString)description;
- (double)initWithContentSize:(double)size contentInsets:(double)insets;
- (id)containerUpdatingContentSize:(double)size;
- (id)initWithContentSize:(double)size contentInsets:(double)insets insetsEnvironment:(double)environment;
@end

@implementation _UICollectionLayoutContainer

- (NSDirectionalEdgeInsets)effectiveContentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  if (leading < 0.5)
  {
    leading = leading * width;
  }

  v8 = trailing * width;
  if (trailing < 0.5)
  {
    trailing = v8;
  }

  if (top < 0.5)
  {
    top = top * height;
  }

  if (bottom < 0.5)
  {
    bottom = bottom * height;
  }

  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGSize)effectiveContentSize
{
  [(_UICollectionLayoutContainer *)self effectiveContentInsets];
  v7 = v5 + v6;
  v8 = self->_contentSize.width - (v3 + v4);
  v9 = self->_contentSize.height - v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)initWithContentSize:(double)size contentInsets:(double)insets
{
  if (!self)
  {
    return 0;
  }

  v18.receiver = self;
  v18.super_class = _UICollectionLayoutContainer;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[2] = fmax(a2, 0.0);
    v13[3] = fmax(size, 0.0);
    v13[4] = insets;
    v13[5] = a5;
    v13[6] = a6;
    v13[7] = a7;
    v15 = objc_alloc_init(_UIContentInsetsEnvironment);
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;
  }

  return v14;
}

- (id)initWithContentSize:(double)size contentInsets:(double)insets insetsEnvironment:(double)environment
{
  if (!self)
  {
    return 0;
  }

  v18.receiver = self;
  v18.super_class = _UICollectionLayoutContainer;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v15;
  if (v15)
  {
    *(v15 + 2) = fmax(size, 0.0);
    *(v15 + 3) = fmax(insets, 0.0);
    *(v15 + 4) = environment;
    *(v15 + 5) = a6;
    *(v15 + 6) = a7;
    *(v15 + 7) = a8;
    objc_storeStrong(v15 + 1, a2);
  }

  return v16;
}

- (id)containerUpdatingContentSize:(double)size
{
  if (self)
  {
    self = [[_UICollectionLayoutContainer alloc] initWithContentSize:a2 contentInsets:size insetsEnvironment:*(self + 4), *(self + 5), *(self + 6), *(self + 7)];
    v3 = vars8;
  }

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGSize(self->_contentSize);
  v7 = NSStringFromDirectionalEdgeInsets(self->_contentInsets);
  v8 = [v3 stringWithFormat:@"<%@: %p contentSize=%@ contentInsets=%@}>", v5, self, v6, v7];;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    if (self == equal)
    {
      v6 = 1;
    }

    else
    {
      equalCopy = equal;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_contentSize.width == equalCopy[1].f64[0] ? (v5 = self->_contentSize.height == equalCopy[1].f64[1]) : (v5 = 0), v5))
      {
        v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, equalCopy[2]), vceqq_f64(*&self->_contentInsets.bottom, equalCopy[3]))));
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

@end