@interface _PXGReusableViewInfo
- (_OWORD)initWithReusableView:(_OWORD *)a1;
- (id)description;
- (void)removeFromSuperViewInfo;
@end

@implementation _PXGReusableViewInfo

- (_OWORD)initWithReusableView:(_OWORD *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _PXGReusableViewInfo;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
      a1[1] = xmmword_21AE2D4F0;
    }
  }

  return a1;
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

  v8 = [v3 stringWithFormat:@"<%@:%p view = %@>", v5, self, view];;

  return v8;
}

- (void)removeFromSuperViewInfo
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [*(a1 + 40) pxg_removeFromSuperview];
      [v3[1] removeObject:a1];
      objc_storeWeak((a1 + 48), 0);
      WeakRetained = v3;
    }
  }
}

@end