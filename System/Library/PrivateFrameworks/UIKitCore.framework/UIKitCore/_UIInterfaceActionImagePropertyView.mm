@interface _UIInterfaceActionImagePropertyView
- (CGSize)_sizeToOccupy;
- (_UIInterfaceActionImagePropertyView)initWithAction:(id)action imageProperty:(id)property;
- (id)_interfaceActionViewState;
- (void)_applyVisualStyleToImageView;
- (void)_reloadImageContent;
- (void)dealloc;
- (void)interfaceAction:(id)action reloadDisplayedContentActionProperties:(id)properties;
- (void)setImage:(id)image;
- (void)tintColorDidChange;
@end

@implementation _UIInterfaceActionImagePropertyView

- (_UIInterfaceActionImagePropertyView)initWithAction:(id)action imageProperty:(id)property
{
  actionCopy = action;
  propertyCopy = property;
  v20.receiver = self;
  v20.super_class = _UIInterfaceActionImagePropertyView;
  v9 = [(UIImageView *)&v20 initWithImage:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, action);
    objc_storeStrong(&v10->_imageProperty, property);
    [(UIImageView *)v10 _setDefaultRenderingMode:2];
    widthAnchor = [(UIView *)v10 widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:0.0];
    imageWidthConstraint = v10->_imageWidthConstraint;
    v10->_imageWidthConstraint = v12;

    [(NSLayoutConstraint *)v10->_imageWidthConstraint setIdentifier:@"imageWidth"];
    heightAnchor = [(UIView *)v10 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:0.0];
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

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self image];

  if (image != imageCopy)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_imageWidthConstraint, self->_imageHeightConstraint, 0}];
    [(_UIInterfaceActionImagePropertyView *)self _sizeToOccupy];
    if (imageCopy)
    {
      [imageCopy size];
      v10 = v9;
      v12 = v11;
      [imageCopy alignmentRectInsets];
      v14 = v13;
      [imageCopy alignmentRectInsets];
      v16 = v10 - (v14 + v15);
      [imageCopy alignmentRectInsets];
      v18 = v17;
      [imageCopy alignmentRectInsets];
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
    [(UIImageView *)&v25 setImage:imageCopy];
  }
}

- (void)tintColorDidChange
{
  [(_UIInterfaceActionImagePropertyView *)self _reloadImageContent];
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionImagePropertyView;
  [(UIImageView *)&v3 tintColorDidChange];
}

- (void)interfaceAction:(id)action reloadDisplayedContentActionProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy containsObject:self->_imageProperty])
  {
    [(_UIInterfaceActionImagePropertyView *)self _reloadImageContent];
  }

  else
  {
    _visualStyle = [(_UIInterfaceActionImagePropertyView *)self _visualStyle];
    actionPropertiesAffectingImageViewStyling = [_visualStyle actionPropertiesAffectingImageViewStyling];
    v7 = [UIInterfaceAction changedProperties:propertiesCopy containsAny:actionPropertiesAffectingImageViewStyling];

    if (v7)
    {
      [(_UIInterfaceActionImagePropertyView *)self _applyVisualStyleToImageView];
    }
  }
}

- (void)_applyVisualStyleToImageView
{
  image = [(UIImageView *)self image];

  if (image)
  {
    _visualStyle = [(_UIInterfaceActionImagePropertyView *)self _visualStyle];
    imageProperty = self->_imageProperty;
    _interfaceActionViewState = [(_UIInterfaceActionImagePropertyView *)self _interfaceActionViewState];
    [_visualStyle configureAttributesForImageView:self imageProperty:imageProperty actionViewState:_interfaceActionViewState];
  }
}

- (id)_interfaceActionViewState
{
  action = [(_UIInterfaceActionImagePropertyView *)self action];
  v4 = [UIInterfaceActionViewState viewStateForActionRepresentationViewDescendantView:self action:action];

  return v4;
}

- (CGSize)_sizeToOccupy
{
  action = [(_UIInterfaceActionImagePropertyView *)self action];
  [action _layoutSizeForImageProperty:self->_imageProperty];
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
  action = [(_UIInterfaceActionImagePropertyView *)self action];
  v5 = [action valueForKey:self->_imageProperty];

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