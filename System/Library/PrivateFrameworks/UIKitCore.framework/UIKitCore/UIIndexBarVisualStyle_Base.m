@interface UIIndexBarVisualStyle_Base
- (BOOL)canBecomeFocused;
- (CGRect)_visibleBoundsForRect:(CGRect)a3 stride:(double *)a4;
- (UIIndexBarView)indexBarView;
- (UIIndexBarVisualStyle_Base)initWithView:(id)a3;
- (double)indexWidth;
- (double)lineSpacing;
- (double)renderingHeightForDisplayEntry:(id)a3;
- (id)displayEntryFromEntry:(id)a3;
- (int64_t)_indexForEntryAtPoint:(CGPoint)a3;
@end

@implementation UIIndexBarVisualStyle_Base

- (UIIndexBarView)indexBarView
{
  WeakRetained = objc_loadWeakRetained(&self->_indexBarView);

  return WeakRetained;
}

- (UIIndexBarVisualStyle_Base)initWithView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIIndexBarVisualStyle_Base;
  v3 = a3;
  v4 = [(UIIndexBarVisualStyle_Base *)&v6 init];
  [(UIIndexBarVisualStyle_Base *)v4 setIndexBarView:v3, v6.receiver, v6.super_class];

  return v4;
}

- (BOOL)canBecomeFocused
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 _defaultCanBecomeFocused];

  return v3;
}

- (id)displayEntryFromEntry:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIIndexBarDisplayEntry);
  [(UIIndexBarDisplayEntry *)v4 setEntry:v3];

  return v4;
}

- (CGRect)_visibleBoundsForRect:(CGRect)a3 stride:(double *)a4
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

- (int64_t)_indexForEntryAtPoint:(CGPoint)a3
{
  y = a3.y;
  v5 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [v5 effectiveBounds];
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

  v15 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v16 = [v15 entries];

  v17 = [v16 count];
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

- (double)renderingHeightForDisplayEntry:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIIndexBarVisualStyle.m" lineNumber:97 description:@"This method must be implemented by subclasses"];

  return 0.0;
}

- (double)indexWidth
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 traitCollection];

  v4 = _UIDefaultIndexBarWidthForTraitCollection(v3);
  return v4;
}

- (double)lineSpacing
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  v5 = 6.0;
  if (v4 == 6)
  {
    v5 = 9.0;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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