@interface _TVStackViewCell
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setViewController:(id)controller;
@end

@implementation _TVStackViewCell

- (void)setViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = _TVStackViewCell;
  controllerCopy = controller;
  [(_TVStackCollectionViewCell *)&v7 setViewController:controllerCopy];
  v5 = [(_TVStackCollectionViewCell *)self viewController:v7.receiver];
  objc_opt_class();
  self->_isAdhocViewController = objc_opt_isKindOfClass() & 1;

  view = [controllerCopy view];

  [view tv_setShowcaseFactor:self->_showcaseFactor];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v9.receiver = self;
  v9.super_class = _TVStackViewCell;
  attributesCopy = attributes;
  [(_TVStackViewCell *)&v9 applyLayoutAttributes:attributesCopy];
  [attributesCopy showcaseFactor];
  v6 = v5;

  self->_showcaseFactor = v6;
  viewController = [(_TVStackCollectionViewCell *)self viewController];
  view = [viewController view];
  [view tv_setShowcaseFactor:self->_showcaseFactor];

  if (self->_isAdhocViewController)
  {
    [(_TVStackViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _TVStackViewCell;
  [(_TVStackCollectionViewCell *)&v12 layoutSubviews];
  [(_TVStackViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  viewController = [(_TVStackCollectionViewCell *)self viewController];
  view = [viewController view];

  if (self->_isAdhocViewController)
  {
    viewController2 = [(_TVStackCollectionViewCell *)self viewController];
    v11 = viewController2;
    if (viewController2)
    {
      [viewController2 showcaseConfig];
    }
  }

  [view setFrame:{0.0, 0.0, v4, v6, v9}];
  [view setAlpha:1.0];
}

@end