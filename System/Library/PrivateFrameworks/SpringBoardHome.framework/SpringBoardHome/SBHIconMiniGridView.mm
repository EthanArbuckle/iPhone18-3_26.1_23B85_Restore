@interface SBHIconMiniGridView
- (BOOL)canUpdateIconTintColorFromImageAppearance:(id)appearance;
- (SBHIconMiniGridView)initWithFrame:(CGRect)frame;
- (void)enumerateIconsAndViewsUsingBlock:(id)block;
- (void)replaceViewForIcon:(id)icon withView:(id)view;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setIconTintColor:(id)color;
- (void)setView:(id)view forIcon:(id)icon;
@end

@implementation SBHIconMiniGridView

- (SBHIconMiniGridView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SBHIconMiniGridView;
  result = [(SBHIconMiniGridView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_contentVisibility = 0;
  }

  return result;
}

- (void)setView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  iconViews = self->_iconViews;
  if (!iconViews)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_iconViews;
    self->_iconViews = weakToStrongObjectsMapTable;

    iconViews = self->_iconViews;
  }

  [(NSMapTable *)iconViews setObject:viewCopy forKey:iconCopy];
}

- (void)replaceViewForIcon:(id)icon withView:(id)view
{
  iconCopy = icon;
  viewCopy = view;
  v7 = [(SBHIconMiniGridView *)self viewForIcon:iconCopy];
  if (v7)
  {
    [iconCopy applyTreatmentsToMiniGridCellView:viewCopy];
    [v7 center];
    [v7 setCenter:?];
    [v7 bounds];
    [viewCopy setBounds:?];
    [v7 removeFromSuperview];
    [(SBHIconMiniGridView *)self addSubview:viewCopy];
    [(SBHIconMiniGridView *)self setView:viewCopy forIcon:iconCopy];
  }
}

- (void)setIconTintColor:(id)color
{
  v22 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  imageAppearance = [(SBHIconMiniGridView *)self imageAppearance];
  v6 = [imageAppearance appearanceWithTintColor:colorCopy];
  v7 = v6;
  if (v6)
  {
    v16 = v6;
    [(SBHIconMiniGridView *)self setImageAppearance:v6];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_iconViews;
    v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(SBHIconMiniGridView *)self viewForIcon:*(*(&v17 + 1) + 8 * i)];
          v14 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v13 setIconTintColor:colorCopy];
          }
        }

        v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v7 = v16;
  }
}

- (BOOL)canUpdateIconTintColorFromImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  imageAppearance = [(SBHIconMiniGridView *)self imageAppearance];
  appearanceType = [imageAppearance appearanceType];
  appearanceType2 = [appearanceCopy appearanceType];

  if (appearanceType == appearanceType2)
  {
    hasTintColor = [imageAppearance hasTintColor];
  }

  else
  {
    hasTintColor = 0;
  }

  return hasTintColor;
}

- (void)enumerateIconsAndViewsUsingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = [(NSMapTable *)self->_iconViews copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = [v6 objectForKey:v11];
      v13 = 0;
      blockCopy[2](blockCopy, v11, v12, &v13);
      LOBYTE(v11) = v13;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_contentVisibility = visibility;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__SBHIconMiniGridView_setContentVisibility___block_invoke;
    v5[3] = &__block_descriptor_40_e31_v32__0__SBIcon_8__UIView_16_B24l;
    v5[4] = visibility;
    [(SBHIconMiniGridView *)self enumerateIconsAndViewsUsingBlock:v5];
  }
}

void __44__SBHIconMiniGridView_setContentVisibility___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 setContentVisibility:*(a1 + 32)];
  }
}

@end