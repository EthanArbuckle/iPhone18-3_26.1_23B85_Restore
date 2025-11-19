@interface _UIInterfaceActionImagePropertyView
- (CGSize)_sizeToOccupy;
- (_UIInterfaceActionImagePropertyView)initWithAction:(id)a3 imageProperty:(id)a4;
- (id)_interfaceActionViewState;
- (void)_applyVisualStyleToImageView;
- (void)_reloadImageContent;
- (void)dealloc;
- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4;
- (void)setImage:(id)a3;
- (void)tintColorDidChange;
@end

@implementation _UIInterfaceActionImagePropertyView

- (_UIInterfaceActionImagePropertyView)initWithAction:(id)a3 imageProperty:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = _UIInterfaceActionImagePropertyView;
  v9 = [(UIImageView *)&v20 initWithImage:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, a3);
    objc_storeStrong(&v10->_imageProperty, a4);
    [(UIImageView *)v10 _setDefaultRenderingMode:2];
    v11 = [(UIView *)v10 widthAnchor];
    v12 = [v11 constraintEqualToConstant:0.0];
    imageWidthConstraint = v10->_imageWidthConstraint;
    v10->_imageWidthConstraint = v12;

    [(NSLayoutConstraint *)v10->_imageWidthConstraint setIdentifier:@"imageWidth"];
    v14 = [(UIView *)v10 heightAnchor];
    v15 = [v14 constraintEqualToConstant:0.0];
    imageHeightConstraint = v10->_imageHeightConstraint;
    v10->_imageHeightConstraint = v15;

    [(NSLayoutConstraint *)v10->_imageHeightConstraint setIdentifier:@"imageHeight"];
    LODWORD(v17) = 1148846080;
    [(UIView *)v10 setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIView *)v10 setContentHuggingPriority:0 forAxis:v18];
    [(_UIInterfaceActionImagePropertyView *)v10 _reloadImageContent];
    [(UIInterfaceAction *)v10->_action _addActionDisplayPropertyObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(UIInterfaceAction *)self->_action _removeActionDisplayPropertyObserver:self];
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionImagePropertyView;
  [(UIImageView *)&v3 dealloc];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self image];

  if (v5 != v4)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_imageWidthConstraint, self->_imageHeightConstraint, 0}];
    [(_UIInterfaceActionImagePropertyView *)self _sizeToOccupy];
    if (v4)
    {
      [v4 size];
      v10 = v9;
      v12 = v11;
      [v4 alignmentRectInsets];
      v14 = v13;
      [v4 alignmentRectInsets];
      v16 = v10 - (v14 + v15);
      [v4 alignmentRectInsets];
      v18 = v17;
      [v4 alignmentRectInsets];
      v20 = v12 - (v18 + v19);
      [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:v16];
      imageHeightConstraint = self->_imageHeightConstraint;
      v22 = v20;
    }

    else
    {
      v23 = v7;
      v24 = v8;
      if (![(_UIInterfaceActionImagePropertyView *)self isUsedToOccupySpaceIfNoImage])
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:v6];
        goto LABEL_7;
      }

      [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:v23];
      imageHeightConstraint = self->_imageHeightConstraint;
      v22 = v24;
    }

    [(NSLayoutConstraint *)imageHeightConstraint setConstant:v22];
    [MEMORY[0x1E69977A0] activateConstraints:v6];
LABEL_7:
    v25.receiver = self;
    v25.super_class = _UIInterfaceActionImagePropertyView;
    [(UIImageView *)&v25 setImage:v4];
  }
}

- (void)tintColorDidChange
{
  [(_UIInterfaceActionImagePropertyView *)self _reloadImageContent];
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionImagePropertyView;
  [(UIImageView *)&v3 tintColorDidChange];
}

- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4
{
  v8 = a4;
  if ([v8 containsObject:self->_imageProperty])
  {
    [(_UIInterfaceActionImagePropertyView *)self _reloadImageContent];
  }

  else
  {
    v5 = [(_UIInterfaceActionImagePropertyView *)self _visualStyle];
    v6 = [v5 actionPropertiesAffectingImageViewStyling];
    v7 = [UIInterfaceAction changedProperties:v8 containsAny:v6];

    if (v7)
    {
      [(_UIInterfaceActionImagePropertyView *)self _applyVisualStyleToImageView];
    }
  }
}

- (void)_applyVisualStyleToImageView
{
  v3 = [(UIImageView *)self image];

  if (v3)
  {
    v6 = [(_UIInterfaceActionImagePropertyView *)self _visualStyle];
    imageProperty = self->_imageProperty;
    v5 = [(_UIInterfaceActionImagePropertyView *)self _interfaceActionViewState];
    [v6 configureAttributesForImageView:self imageProperty:imageProperty actionViewState:v5];
  }
}

- (id)_interfaceActionViewState
{
  v3 = [(_UIInterfaceActionImagePropertyView *)self action];
  v4 = [UIInterfaceActionViewState viewStateForActionRepresentationViewDescendantView:self action:v3];

  return v4;
}

- (CGSize)_sizeToOccupy
{
  v3 = [(_UIInterfaceActionImagePropertyView *)self action];
  [v3 _layoutSizeForImageProperty:self->_imageProperty];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_reloadImageContent
{
  v3 = [(_UIInterfaceActionImagePropertyView *)self action];
  v5 = [v3 valueForKey:self->_imageProperty];

  [(_UIInterfaceActionImagePropertyView *)self setImage:v5];
  v4 = 1.0;
  if (!v5)
  {
    v4 = 0.0;
  }

  [(UIView *)self setAlpha:v4];
  [(_UIInterfaceActionImagePropertyView *)self _applyVisualStyleToImageView];
}

@end