@interface _UIDocumentPropertiesIconView
- (NSDirectionalEdgeInsets)iconInsets;
- (_UIDocumentPropertiesIconView)initWithProperties:(id)properties metadata:(id)metadata;
- (id)_preferredSender;
- (void)_fireTapAction:(id)action;
- (void)setIconInsets:(NSDirectionalEdgeInsets)insets;
- (void)setMetadata:(id)metadata;
@end

@implementation _UIDocumentPropertiesIconView

- (_UIDocumentPropertiesIconView)initWithProperties:(id)properties metadata:(id)metadata
{
  v43[4] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];
  }

  v37.receiver = self;
  v37.super_class = _UIDocumentPropertiesIconView;
  v9 = [(UIView *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_properties, properties);
    objc_storeStrong(&v10->_metadata, metadata);
    v11 = [objc_alloc(getLPLinkViewClass()) initWithMetadata:metadataCopy];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 _setDisableTapGesture:1];
    [v11 _setDisableAnimations:1];
    [v11 _setPreferredSizeClass:2];
    [v11 setContentInset:{0.0, 0.0, 0.0, 0.0}];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v12 = getLPLinkRendererSizeClassParametersClass_softClass;
    v42 = getLPLinkRendererSizeClassParametersClass_softClass;
    if (!getLPLinkRendererSizeClassParametersClass_softClass)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __getLPLinkRendererSizeClassParametersClass_block_invoke;
      v38[3] = &unk_1E70F2F20;
      v38[4] = &v39;
      __getLPLinkRendererSizeClassParametersClass_block_invoke(v38);
      v12 = v40[3];
    }

    v13 = v12;
    _Block_object_dispose(&v39, 8);
    v14 = objc_alloc_init(v12);
    [v14 setOnlyShowIcon:1];
    [v14 setPreserveIconAspectRatioAndAlignmentWhenScaling:1];
    [v11 _setSizeClassParameters:v14];
    objc_storeStrong(&v10->_linkView, v11);
    [(UIView *)v10 addSubview:v11];
    centerXAnchor = [v11 centerXAnchor];
    centerXAnchor2 = [(UIView *)v10 centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    centerXInsetConstraint = v10->_centerXInsetConstraint;
    v10->_centerXInsetConstraint = v17;

    trailingAnchor = [v11 trailingAnchor];
    trailingAnchor2 = [(UIView *)v10 trailingAnchor];
    v21 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    trailingInsetConstraint = v10->_trailingInsetConstraint;
    v10->_trailingInsetConstraint = v21;

    centerYAnchor = [v11 centerYAnchor];
    centerYAnchor2 = [(UIView *)v10 centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    centerYInsetConstraint = v10->_centerYInsetConstraint;
    v10->_centerYInsetConstraint = v25;

    topAnchor = [v11 topAnchor];
    topAnchor2 = [(UIView *)v10 topAnchor];
    v29 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    bottomInsetConstraint = v10->_bottomInsetConstraint;
    v10->_bottomInsetConstraint = v29;

    v31 = MEMORY[0x1E69977A0];
    v43[0] = v10->_centerXInsetConstraint;
    v43[1] = v10->_trailingInsetConstraint;
    v43[2] = v10->_centerYInsetConstraint;
    v43[3] = v10->_bottomInsetConstraint;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
    [v31 activateConstraints:v32];

    [(_UIDocumentPropertiesIconView *)v10 _updateImage];
    if (propertiesCopy)
    {
      v33 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:sel__fireTapAction_];
      [(UIView *)v10 addGestureRecognizer:v33];
    }
  }

  return v10;
}

- (void)setMetadata:(id)metadata
{
  objc_storeStrong(&self->_metadata, metadata);

  [(_UIDocumentPropertiesIconView *)self _updateImage];
}

- (void)setIconInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  top = insets.top;
  self->_iconInsets = insets;
  [(NSLayoutConstraint *)self->_centerXInsetConstraint setConstant:(insets.leading - insets.trailing) * 0.5];
  [(NSLayoutConstraint *)self->_trailingInsetConstraint setConstant:-trailing];
  [(NSLayoutConstraint *)self->_centerYInsetConstraint setConstant:(top - bottom) * 0.5];
  bottomInsetConstraint = self->_bottomInsetConstraint;

  [(NSLayoutConstraint *)bottomInsetConstraint setConstant:-bottom];
}

- (void)_fireTapAction:(id)action
{
  iconRepresentationAction = [(UIDocumentProperties *)self->_properties iconRepresentationAction];
  if (iconRepresentationAction)
  {
    v5 = iconRepresentationAction;
    [iconRepresentationAction performWithSender:self target:0];
    iconRepresentationAction = v5;
  }
}

- (id)_preferredSender
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (NSDirectionalEdgeInsets)iconInsets
{
  top = self->_iconInsets.top;
  leading = self->_iconInsets.leading;
  bottom = self->_iconInsets.bottom;
  trailing = self->_iconInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end