@interface _UIDocumentCarouselViewItemContainerView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (void)_configureView;
- (void)setContentConfiguration:(uint64_t)a1;
@end

@implementation _UIDocumentCarouselViewItemContainerView

- (void)setContentConfiguration:(uint64_t)a1
{
  v26 = [*(a1 + 408) configuration];
  v4 = a2;
  if (v26 == v4)
  {
LABEL_22:

    return;
  }

  if (v4 && v26)
  {
    v5 = [v26 isEqual:v4];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  *(a1 + 424) = *MEMORY[0x1E695F060];
  v6 = *(a1 + 408);
  v7 = v4;
  v8 = v6;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 supportsConfiguration:v7];

    if (!v9)
    {
LABEL_9:
      v10 = [v7 makeContentView];
      v26 = v10;
      if (objc_opt_respondsToSelector())
      {
        v11 = [v26 _wrappedContentView];
      }

      else
      {
        v11 = v26;
      }

      v4 = v11;
      if (!v11)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [v26 configuration];
        [v23 handleFailureInMethod:sel_setContentConfiguration_ object:a1 file:@"_UIDocumentCarouselView.m" lineNumber:805 description:{@"Configuration returned a nil content view: %@", v24}];
      }

      if (([v4 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:sel_setContentConfiguration_ object:a1 file:@"_UIDocumentCarouselView.m" lineNumber:806 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", v4}];
      }

      v14 = *(a1 + 408);
      v15 = *(a1 + 416);
      objc_storeStrong((a1 + 408), v10);
      objc_storeStrong((a1 + 416), v4);
      [v15 removeFromSuperview];
      if (v4)
      {
        [a1 bounds];
        [v4 setFrame:?];
        [v4 setAutoresizingMask:18];
        [a1 addSubview:v4];
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = [v8 configuration];

    v13 = v12;
    if (v13)
    {
      if (objc_opt_respondsToSelector())
      {
        [v13 _wrappedConfigurationIdentifier];
      }

      else
      {
        v17 = objc_opt_class();
        NSStringFromClass(v17);
      }
      v16 = ;
    }

    else
    {
      v16 = 0;
    }

    v18 = v7;
    if (v18)
    {
      if (objc_opt_respondsToSelector())
      {
        [v18 _wrappedConfigurationIdentifier];
      }

      else
      {
        v20 = objc_opt_class();
        NSStringFromClass(v20);
      }
      v19 = ;
    }

    else
    {
      v19 = 0;
    }

    v21 = [v16 isEqualToString:v19];
    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v22 = *(a1 + 408);

  [v22 setConfiguration:v7];
}

- (void)_configureView
{
  v3 = [(UIView *)self layer];
  [v3 setShadowOffset:{0.0, 3.0}];

  v4 = [(UIView *)self layer];
  [v4 setShadowRadius:20.0];

  v5 = +[UIColor blackColor];
  v6 = [v5 CGColor];
  v7 = [(UIView *)self layer];
  [v7 setShadowColor:v6];

  v8 = [(UIView *)self layer];
  [v8 setShouldRasterize:1];

  v9 = [(UIView *)self traitCollection];
  [v9 displayScale];
  v11 = v10;
  v12 = [(UIView *)self layer];
  [v12 setRasterizationScale:v11];

  [(UIView *)self setPreservesSuperviewLayoutMargins:0];

  [(UIView *)self setInsetsLayoutMarginsFromSafeArea:0];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self->_contentView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:2777777.0 verticalFittingPriority:?];
  if (v8 >= height)
  {
    v9 = v8;
  }

  else
  {
    v9 = height;
  }

  if (v8 < 2777777.0)
  {
    height = v9;
  }

  [(UIView *)self _currentScreenScale];
  v11 = UISizeRoundToScale(width, height, v10);
  self->_cachedContentSize.width = v11;
  self->_cachedContentSize.height = v12;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  v2 = 8.0;
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end