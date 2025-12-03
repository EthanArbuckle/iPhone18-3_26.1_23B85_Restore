@interface _UIDocumentCarouselViewItemContainerView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (void)_configureView;
- (void)setContentConfiguration:(uint64_t)configuration;
@end

@implementation _UIDocumentCarouselViewItemContainerView

- (void)setContentConfiguration:(uint64_t)configuration
{
  configuration = [*(configuration + 408) configuration];
  v4 = a2;
  if (configuration == v4)
  {
LABEL_22:

    return;
  }

  if (v4 && configuration)
  {
    v5 = [configuration isEqual:v4];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  *(configuration + 424) = *MEMORY[0x1E695F060];
  v6 = *(configuration + 408);
  v7 = v4;
  v8 = v6;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 supportsConfiguration:v7];

    if (!v9)
    {
LABEL_9:
      makeContentView = [v7 makeContentView];
      configuration = makeContentView;
      if (objc_opt_respondsToSelector())
      {
        _wrappedContentView = [configuration _wrappedContentView];
      }

      else
      {
        _wrappedContentView = configuration;
      }

      v4 = _wrappedContentView;
      if (!_wrappedContentView)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v26Configuration = [configuration configuration];
        [currentHandler handleFailureInMethod:sel_setContentConfiguration_ object:configuration file:@"_UIDocumentCarouselView.m" lineNumber:805 description:{@"Configuration returned a nil content view: %@", v26Configuration}];
      }

      if (([v4 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel_setContentConfiguration_ object:configuration file:@"_UIDocumentCarouselView.m" lineNumber:806 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", v4}];
      }

      v14 = *(configuration + 408);
      v15 = *(configuration + 416);
      objc_storeStrong((configuration + 408), makeContentView);
      objc_storeStrong((configuration + 416), v4);
      [v15 removeFromSuperview];
      if (v4)
      {
        [configuration bounds];
        [v4 setFrame:?];
        [v4 setAutoresizingMask:18];
        [configuration addSubview:v4];
      }

      goto LABEL_22;
    }
  }

  else
  {
    configuration2 = [v8 configuration];

    v13 = configuration2;
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

  v22 = *(configuration + 408);

  [v22 setConfiguration:v7];
}

- (void)_configureView
{
  layer = [(UIView *)self layer];
  [layer setShadowOffset:{0.0, 3.0}];

  layer2 = [(UIView *)self layer];
  [layer2 setShadowRadius:20.0];

  v5 = +[UIColor blackColor];
  cGColor = [v5 CGColor];
  layer3 = [(UIView *)self layer];
  [layer3 setShadowColor:cGColor];

  layer4 = [(UIView *)self layer];
  [layer4 setShouldRasterize:1];

  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v11 = v10;
  layer5 = [(UIView *)self layer];
  [layer5 setRasterizationScale:v11];

  [(UIView *)self setPreservesSuperviewLayoutMargins:0];

  [(UIView *)self setInsetsLayoutMarginsFromSafeArea:0];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(UIView *)self->_contentView systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:2777777.0 verticalFittingPriority:?];
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