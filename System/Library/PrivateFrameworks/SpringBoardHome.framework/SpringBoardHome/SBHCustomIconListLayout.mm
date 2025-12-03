@interface SBHCustomIconListLayout
- (BOOL)respondsToSelector:(SEL)selector;
- (SBHCustomIconListLayout)initWithBaseListLayout:(id)layout;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation;
- (id)forwardingTargetForSelector:(SEL)selector;
- (unint64_t)numberOfColumnsForOrientation:(int64_t)orientation;
- (unint64_t)numberOfRowsForOrientation:(int64_t)orientation;
- (void)removeListLayoutForSelector:(SEL)selector;
- (void)setListLayout:(id)layout forSelector:(SEL)selector;
@end

@implementation SBHCustomIconListLayout

- (SBHCustomIconListLayout)initWithBaseListLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBHCustomIconListLayout;
  v6 = [(SBHCustomIconListLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseListLayout, layout);
  }

  return v7;
}

- (void)setListLayout:(id)layout forSelector:(SEL)selector
{
  layoutCopy = layout;
  overriddenSelectors = self->_overriddenSelectors;
  if (!overriddenSelectors)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:770 valueOptions:0 capacity:0];
    v8 = self->_overriddenSelectors;
    self->_overriddenSelectors = v7;

    overriddenSelectors = self->_overriddenSelectors;
  }

  [(NSMapTable *)overriddenSelectors setObject:layoutCopy forKey:sel_getName(selector)];
}

- (void)removeListLayoutForSelector:(SEL)selector
{
  overriddenSelectors = self->_overriddenSelectors;
  Name = sel_getName(selector);

  [(NSMapTable *)overriddenSelectors removeObjectForKey:Name];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v5 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(selector)];
  baseListLayout = [(SBHCustomIconListLayout *)self baseListLayout];
  if (v5)
  {
    v7 = v5;
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = baseListLayout;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHCustomIconListLayout;
    v7 = [(SBHCustomIconListLayout *)&v11 forwardingTargetForSelector:selector];
  }

  v8 = v7;
  v9 = v7;

  return v8;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = SBHCustomIconListLayout;
  if ([(SBHCustomIconListLayout *)&v9 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(selector)];
    if (v6)
    {
      v5 = objc_opt_respondsToSelector();
    }

    else
    {
      baseListLayout = [(SBHCustomIconListLayout *)self baseListLayout];
      v5 = objc_opt_respondsToSelector();
    }
  }

  return v5 & 1;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation
{
  baseListLayout = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a2)];
  if (!baseListLayout)
  {
    baseListLayout = [(SBHCustomIconListLayout *)self baseListLayout];
  }

  [baseListLayout a2];
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

- (unint64_t)numberOfColumnsForOrientation:(int64_t)orientation
{
  baseListLayout = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a2)];
  if (!baseListLayout)
  {
    baseListLayout = [(SBHCustomIconListLayout *)self baseListLayout];
  }

  v7 = [baseListLayout a2];

  return v7;
}

- (unint64_t)numberOfRowsForOrientation:(int64_t)orientation
{
  baseListLayout = [(NSMapTable *)self->_overriddenSelectors objectForKey:sel_getName(a2)];
  if (!baseListLayout)
  {
    baseListLayout = [(SBHCustomIconListLayout *)self baseListLayout];
  }

  v7 = [baseListLayout a2];

  return v7;
}

@end