@interface SBHCustomIconListLayout
- (BOOL)respondsToSelector:(SEL)a3;
- (SBHCustomIconListLayout)initWithBaseListLayout:(id)a3;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (unint64_t)numberOfColumnsForOrientation:(int64_t)a3;
- (unint64_t)numberOfRowsForOrientation:(int64_t)a3;
- (void)removeListLayoutForSelector:(SEL)a3;
- (void)setListLayout:(id)a3 forSelector:(SEL)a4;
@end

@implementation SBHCustomIconListLayout

- (SBHCustomIconListLayout)initWithBaseListLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHCustomIconListLayout;
  v6 = [(SBHCustomIconListLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseListLayout, a3);
  }

  return v7;
}

- (void)setListLayout:(id)a3 forSelector:(SEL)a4
{
  v9 = a3;
  overriddenSelectors = self->_overriddenSelectors;
  if (!overriddenSelectors)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:770 valueOptions:0 capacity:0];
    v8 = self->_overriddenSelectors;
    self->_overriddenSelectors = v7;

    overriddenSelectors = self->_overriddenSelectors;
  }

  [(NSMapTable *)overriddenSelectors setObject:v9 forKey:sel_getName(a4)];
}

- (void)removeListLayoutForSelector:(SEL)a3
{
  overriddenSelectors = self->_overriddenSelectors;
  Name = sel_getName(a3);

  [(NSMapTable *)overriddenSelectors removeObjectForKey:Name];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a3)];
  v6 = [(SBHCustomIconListLayout *)self baseListLayout];
  if (v5)
  {
    v7 = v5;
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHCustomIconListLayout;
    v7 = [(SBHCustomIconListLayout *)&v11 forwardingTargetForSelector:a3];
  }

  v8 = v7;
  v9 = v7;

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = SBHCustomIconListLayout;
  if ([(SBHCustomIconListLayout *)&v9 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a3)];
    if (v6)
    {
      v5 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = [(SBHCustomIconListLayout *)self baseListLayout];
      v5 = objc_opt_respondsToSelector();
    }
  }

  return v5 & 1;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  v6 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a2)];
  if (!v6)
  {
    v6 = [(SBHCustomIconListLayout *)self baseListLayout];
  }

  [v6 a2];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (unint64_t)numberOfColumnsForOrientation:(int64_t)a3
{
  v6 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a2)];
  if (!v6)
  {
    v6 = [(SBHCustomIconListLayout *)self baseListLayout];
  }

  v7 = [v6 a2];

  return v7;
}

- (unint64_t)numberOfRowsForOrientation:(int64_t)a3
{
  v6 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a2)];
  if (!v6)
  {
    v6 = [(SBHCustomIconListLayout *)self baseListLayout];
  }

  v7 = [v6 a2];

  return v7;
}

@end