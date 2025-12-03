@interface _PXGReusableViewInfo
- (_OWORD)initWithReusableView:(_OWORD *)view;
- (id)description;
- (void)removeFromSuperViewInfo;
@end

@implementation _PXGReusableViewInfo

- (_OWORD)initWithReusableView:(_OWORD *)view
{
  v4 = a2;
  if (view)
  {
    v7.receiver = view;
    v7.super_class = _PXGReusableViewInfo;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    view = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
      view[1] = xmmword_21AE2D4F0;
    }
  }

  return view;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    view = self->_view;
  }

  else
  {
    view = 0;
  }

  view = [v3 stringWithFormat:@"<%@:%p view = %@>", v5, self, view];;

  return view;
}

- (void)removeFromSuperViewInfo
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 48));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [*(self + 40) pxg_removeFromSuperview];
      [v3[1] removeObject:self];
      objc_storeWeak((self + 48), 0);
      WeakRetained = v3;
    }
  }
}

@end