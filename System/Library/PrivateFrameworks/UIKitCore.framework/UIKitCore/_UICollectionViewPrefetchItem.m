@interface _UICollectionViewPrefetchItem
- (id)description;
- (id)initWithAttributes:(id *)a1;
@end

@implementation _UICollectionViewPrefetchItem

- (id)initWithAttributes:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _UICollectionViewPrefetchItem;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_attributes;
    view = self->_view;
  }

  else
  {
    v6 = 0;
    view = 0;
  }

  v8 = [v3 stringWithFormat:@"<%@: %p %@ - %@ needsLayoutAttrsUpdate: %d, needsPreferredAttrsUpdate: %d, needsReconfigure: %d>", v5, self, v6, view, *&self->_flags & 1, (*&self->_flags >> 1) & 1, (*&self->_flags >> 2) & 1];;

  return v8;
}

@end