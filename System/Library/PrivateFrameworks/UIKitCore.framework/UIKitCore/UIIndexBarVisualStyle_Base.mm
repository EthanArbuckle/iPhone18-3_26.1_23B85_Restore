@interface UIIndexBarVisualStyle_Base
- (BOOL)canBecomeFocused;
- (CGRect)_visibleBoundsForRect:(CGRect)rect stride:(double *)stride;
- (UIIndexBarView)indexBarView;
- (UIIndexBarVisualStyle_Base)initWithView:(id)view;
- (double)indexWidth;
- (double)lineSpacing;
- (double)renderingHeightForDisplayEntry:(id)entry;
- (id)displayEntryFromEntry:(id)entry;
- (int64_t)_indexForEntryAtPoint:(CGPoint)point;
@end

@implementation UIIndexBarVisualStyle_Base

- (UIIndexBarView)indexBarView
{
  WeakRetained = objc_loadWeakRetained(&self->_indexBarView);

  return WeakRetained;
}

- (UIIndexBarVisualStyle_Base)initWithView:(id)view
{
  v6.receiver = self;
  v6.super_class = UIIndexBarVisualStyle_Base;
  viewCopy = view;
  v4 = [(UIIndexBarVisualStyle_Base *)&v6 init];
  [(UIIndexBarVisualStyle_Base *)v4 setIndexBarView:viewCopy, v6.receiver, v6.super_class];

  return v4;
}

- (BOOL)canBecomeFocused
{
  indexBarView = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  _defaultCanBecomeFocused = [indexBarView _defaultCanBecomeFocused];

  return _defaultCanBecomeFocused;
}

- (id)displayEntryFromEntry:(id)entry
{
  entryCopy = entry;
  v4 = objc_alloc_init(UIIndexBarDisplayEntry);
  [(UIIndexBarDisplayEntry *)v4 setEntry:entryCopy];

  return v4;
}

- (CGRect)_visibleBoundsForRect:(CGRect)rect stride:(double *)stride
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int64_t)_indexForEntryAtPoint:(CGPoint)point
{
  y = point.y;
  indexBarView = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [indexBarView effectiveBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  if (y < CGRectGetMinY(v22))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  if (y > CGRectGetMaxY(v23))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  indexBarView2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  entries = [indexBarView2 entries];

  v17 = [entries count];
  if (v17)
  {
    v18 = v17;
    [(UIIndexBarVisualStyle_Base *)self _visibleBoundsForRect:0 stride:v7, v9, v11, v13];
    v19 = v24.origin.y;
    Height = CGRectGetHeight(v24);
    if (v18 - 1 >= (((y - v19) / (Height / v18)) & ~(((y - v19) / (Height / v18)) >> 63)))
    {
      v14 = ((y - v19) / (Height / v18)) & ~(((y - v19) / (Height / v18)) >> 63);
    }

    else
    {
      v14 = v18 - 1;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (double)renderingHeightForDisplayEntry:(id)entry
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIIndexBarVisualStyle.m" lineNumber:97 description:@"This method must be implemented by subclasses"];

  return 0.0;
}

- (double)indexWidth
{
  indexBarView = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  traitCollection = [indexBarView traitCollection];

  v4 = _UIDefaultIndexBarWidthForTraitCollection(traitCollection);
  return v4;
}

- (double)lineSpacing
{
  indexBarView = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  traitCollection = [indexBarView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v5 = 6.0;
  if (userInterfaceIdiom == 6)
  {
    v5 = 9.0;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end