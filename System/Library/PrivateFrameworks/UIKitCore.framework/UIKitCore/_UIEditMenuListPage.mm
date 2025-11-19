@interface _UIEditMenuListPage
- (BOOL)isEqual:(id)a3;
- (_NSRange)range;
- (_UIEditMenuListPage)initWithStartIndex:(int64_t)a3;
- (double)width;
- (id)description;
- (int64_t)_resolvedNumberOfPagesForItemSpacing;
@end

@implementation _UIEditMenuListPage

- (_UIEditMenuListPage)initWithStartIndex:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuListPage;
  result = [(_UIEditMenuListPage *)&v5 init];
  if (result)
  {
    result->_range.location = a3;
    result->_range.length = 0;
    result->_width = 0.0;
    result->_itemSpacing = 0.0;
    result->_numberOfItemsUsingItemSpacing = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (double)width
{
  if (!self->_range.length)
  {
    return 0.0;
  }

  width = self->_width;
  return width + self->_itemSpacing * [(_UIEditMenuListPage *)self _resolvedNumberOfPagesForItemSpacing];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11.location = [(_UIEditMenuListPage *)self range];
  v6 = NSStringFromRange(v11);
  [(_UIEditMenuListPage *)self width];
  v8 = [v3 stringWithFormat:@"<%@ %p: range: %@, page width %.2f>", v5, self, v6, v7];

  return v8;
}

- (int64_t)_resolvedNumberOfPagesForItemSpacing
{
  numberOfItemsUsingItemSpacing = self->_numberOfItemsUsingItemSpacing;
  if (numberOfItemsUsingItemSpacing == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_range.length - 1;
  }

  if (numberOfItemsUsingItemSpacing <= 1)
  {
    numberOfItemsUsingItemSpacing = 1;
  }

  v4 = numberOfItemsUsingItemSpacing - 1;
  if (v4 >= self->_range.length - 1)
  {
    return self->_range.length - 1;
  }

  else
  {
    return v4;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_UIEditMenuListPage *)v4 range];
      v7 = v6;
      v9 = 0;
      if (v5 == [(_UIEditMenuListPage *)self range]&& v7 == v8)
      {
        [(_UIEditMenuListPage *)self width];
        v11 = v10;
        [(_UIEditMenuListPage *)v4 width];
        v9 = v11 == v12;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end