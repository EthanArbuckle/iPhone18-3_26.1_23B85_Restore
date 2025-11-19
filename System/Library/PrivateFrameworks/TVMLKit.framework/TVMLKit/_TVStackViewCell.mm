@interface _TVStackViewCell
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setViewController:(id)a3;
@end

@implementation _TVStackViewCell

- (void)setViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = _TVStackViewCell;
  v4 = a3;
  [(_TVStackCollectionViewCell *)&v7 setViewController:v4];
  v5 = [(_TVStackCollectionViewCell *)self viewController:v7.receiver];
  objc_opt_class();
  self->_isAdhocViewController = objc_opt_isKindOfClass() & 1;

  v6 = [v4 view];

  [v6 tv_setShowcaseFactor:self->_showcaseFactor];
}

- (void)applyLayoutAttributes:(id)a3
{
  v9.receiver = self;
  v9.super_class = _TVStackViewCell;
  v4 = a3;
  [(_TVStackViewCell *)&v9 applyLayoutAttributes:v4];
  [v4 showcaseFactor];
  v6 = v5;

  self->_showcaseFactor = v6;
  v7 = [(_TVStackCollectionViewCell *)self viewController];
  v8 = [v7 view];
  [v8 tv_setShowcaseFactor:self->_showcaseFactor];

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
  v7 = [(_TVStackCollectionViewCell *)self viewController];
  v8 = [v7 view];

  if (self->_isAdhocViewController)
  {
    v10 = [(_TVStackCollectionViewCell *)self viewController];
    v11 = v10;
    if (v10)
    {
      [v10 showcaseConfig];
    }
  }

  [v8 setFrame:{0.0, 0.0, v4, v6, v9}];
  [v8 setAlpha:1.0];
}

@end