@interface _NSTextViewportLayoutObserver
- (BOOL)isEqual:(id)equal;
- (_NSTextViewportLayoutObserver)initWithWeakObject:(id)object;
- (id)description;
- (void)dealloc;
@end

@implementation _NSTextViewportLayoutObserver

- (_NSTextViewportLayoutObserver)initWithWeakObject:(id)object
{
  v4 = [(_NSTextViewportLayoutObserver *)self init];
  v5 = v4;
  if (v4 && !objc_storeWeakOrNil(&v4->location, object))
  {
    [(_NSTextViewportLayoutObserver *)v5 dealloc];
    return 0;
  }

  return v5;
}

- (void)dealloc
{
  objc_destroyWeak(&self->location);
  v3.receiver = self;
  v3.super_class = _NSTextViewportLayoutObserver;
  [(_NSTextViewportLayoutObserver *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  object = [equal object];
  object2 = [(_NSTextViewportLayoutObserver *)self object];
  v7 = [object isEqual:object2];

  return v7;
}

- (id)description
{
  object = [(_NSTextViewportLayoutObserver *)self object];
  if (objc_opt_respondsToSelector())
  {
    v3 = [object description];
  }

  else
  {
    v3 = &stru_1F01AD578;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"%@:%@", NSStringFromClass(v5), v3];

  return v6;
}

@end