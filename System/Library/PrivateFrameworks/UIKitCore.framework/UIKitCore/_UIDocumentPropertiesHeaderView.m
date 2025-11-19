@interface _UIDocumentPropertiesHeaderView
- (CGRect)_rectForDragInteraction;
- (CGRect)_rectForShareButton;
- (_UIDocumentPropertiesHeaderView)initWithProperties:(id)a3 metadata:(id)a4 menuInteraction:(id)a5 sourceViewProvider:(id)a6;
- (id)_defaultDragPreview;
- (id)_defaultSharePreview;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_share:(id)a3;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)linkViewNeedsResize:(id)a3;
- (void)update;
@end

@implementation _UIDocumentPropertiesHeaderView

- (_UIDocumentPropertiesHeaderView)initWithProperties:(id)a3 metadata:(id)a4 menuInteraction:(id)a5 sourceViewProvider:(id)a6
{
  v65[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v55 = v12;
  if (!v12)
  {
    v42 = v15;
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"properties != NULL"}];

    v15 = v42;
  }

  v56 = v13;
  if (!v13)
  {
    v44 = v15;
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];

    v15 = v44;
  }

  obj = v14;
  if (!v14)
  {
    v46 = v15;
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"menuInteraction != nil"}];

    v15 = v46;
  }

  aBlock = v15;
  if (!v15)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"sourceViewProvider != NULL"}];
  }

  v63.receiver = self;
  v63.super_class = _UIDocumentPropertiesHeaderView;
  v16 = [(UIView *)&v63 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_properties, a3);
    objc_storeWeak(&v17->_menuInteraction, obj);
    v18 = _Block_copy(aBlock);
    sourceViewProvider = v17->_sourceViewProvider;
    v17->_sourceViewProvider = v18;

    v61 = [objc_alloc(getLPLinkViewClass()) initWithMetadata:v56];
    [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v61 setDelegate:v17];
    [v61 _setDisableTapGesture:1];
    [v61 _setDisableAnimations:1];
    [v61 _setPreferredSizeClass:2];
    LODWORD(v20) = 1132068864;
    [v61 setContentCompressionResistancePriority:0 forAxis:v20];
    objc_storeStrong(&v17->_linkView, v61);
    objc_initWeak(&location, v17);
    v21 = [(UIView *)v17 traitCollection];
    v22 = [v21 userInterfaceIdiom] == 6;

    if (v22)
    {
      +[UIButtonConfiguration filledButtonConfiguration];
    }

    else
    {
      +[UIButtonConfiguration grayButtonConfiguration];
    }
    v59 = ;
    v23 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    [v59 setImage:v23];

    [v59 setCornerStyle:4];
    v24 = [UIImageSymbolConfiguration configurationWithScale:1];
    [v59 setPreferredSymbolConfigurationForImage:v24];

    v60 = [UIButton buttonWithConfiguration:v59 primaryAction:0];
    [v60 addTarget:v17 action:sel__share_ forControlEvents:0x2000];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(UIView *)v17 traitCollection];
    v26 = [v25 userInterfaceIdiom] == 6;

    if (!v26)
    {
      v27 = +[UIColor labelColor];
      [v60 setTintColor:v27];
    }

    objc_storeStrong(&v17->_shareButton, v60);
    v28 = [UIStackView alloc];
    v65[0] = v61;
    v65[1] = v60;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v30 = [(UIStackView *)v28 initWithArrangedSubviews:v29];

    [(UIStackView *)v30 setAxis:0];
    [(UIStackView *)v30 setDistribution:3];
    [(UIStackView *)v30 setAlignment:3];
    [(UIStackView *)v30 setSpacing:1.17549435e-38];
    [(UIStackView *)v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v17 addSubview:v30];
    v49 = MEMORY[0x1E69977A0];
    v54 = [(UIView *)v30 leadingAnchor];
    v53 = [(UIView *)v17 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:16.0];
    v64[0] = v52;
    v51 = [(UIView *)v30 bottomAnchor];
    v50 = [(UIView *)v17 bottomAnchor];
    v31 = [v51 constraintEqualToAnchor:v50];
    v64[1] = v31;
    v32 = [(UIView *)v30 trailingAnchor];
    v33 = [(UIView *)v17 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-16.0];
    v64[2] = v34;
    v35 = [(UIView *)v30 topAnchor];
    v36 = [(UIView *)v17 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v64[3] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v49 activateConstraints:v38];

    v39 = [[UIDragInteraction alloc] initWithDelegate:v17];
    [(UIView *)v17 addInteraction:v39];

    v40 = [[UIPointerInteraction alloc] initWithDelegate:v17];
    [(UIView *)v17 addInteraction:v40];

    [(_UIDocumentPropertiesHeaderView *)v17 update];
    objc_destroyWeak(&location);
  }

  return v17;
}

- (CGRect)_rectForDragInteraction
{
  v3 = self->_properties;
  v4 = v3;
  if (v3 && ([(UIDocumentProperties *)v3 dragItemsProvider], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(LPLinkView *)self->_linkView _primaryMediaView];
    v7 = v6;
    if (v6)
    {
      [v6 bounds];
      v21 = CGRectInset(v20, -10.0, -10.0);
      [(UIView *)self convertRect:v7 fromView:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v9 = *MEMORY[0x1E695F050];
      v11 = *(MEMORY[0x1E695F050] + 8);
      v13 = *(MEMORY[0x1E695F050] + 16);
      v15 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a4;
  [(_UIDocumentPropertiesHeaderView *)self _rectForDragInteraction];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsNull(v17) || ([v5 locationInView:self], v16.x = v10, v16.y = v11, v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, !CGRectContainsPoint(v18, v16)))
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v12 = [(UIDocumentProperties *)self->_properties dragItemsProvider];
    v13 = (v12)[2](v12, v5);
  }

  return v13;
}

- (id)_defaultDragPreview
{
  v3 = self->_linkView;
  v4 = [(LPLinkView *)v3 _primaryMediaView];
  if (v4)
  {
    v5 = [UIPreviewTarget alloc];
    [v4 bounds];
    [v4 convertPoint:self toView:{v7 + v6 * 0.5, v9 + v8 * 0.5}];
    v10 = [(UIPreviewTarget *)v5 initWithContainer:self center:?];
    v11 = objc_opt_new();
    v12 = _UIBezierPathAroundViewAlpha(v4);
    if (v12)
    {
      [v11 setShadowPath:v12];
      v13 = +[UIColor clearColor];
      [v11 setBackgroundColor:v13];
    }

    v14 = [[UITargetedDragPreview alloc] initWithView:v4 parameters:v11 target:v10];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Requesting a drag preview for a document menu header that does not seem to have an image view.", buf, 2u);
      }
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_defaultDragPreview___s_category) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Requesting a drag preview for a document menu header that does not seem to have an image view.", v18, 2u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_menuInteraction);
  [WeakRetained dismissMenu];
}

- (void)_share:(id)a3
{
  v5 = [(UIDocumentProperties *)self->_properties activityViewControllerProvider];
  if (v5)
  {
    v12 = v5;
    v6 = v5[2]();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UIDocumentProperties.m" lineNumber:478 description:@"activityViewControllerProvider requires a UIActivityViewController."];
    }

    WeakRetained = objc_loadWeakRetained(&self->_menuInteraction);
    [WeakRetained dismissMenu];

    v8 = (*(self->_sourceViewProvider + 2))();
    v9 = [v6 popoverPresentationController];
    [v9 setSourceView:v8];

    v10 = [v8 _viewControllerForAncestor];
    [v10 presentViewController:v6 animated:1 completion:0];

    v5 = v12;
  }
}

- (void)linkViewNeedsResize:(id)a3
{
  if (self->_linkView == a3)
  {
    [a3 frame];
    if (!CGRectIsEmpty(v10))
    {
      v4 = [(UIView *)self superview];
      if (v4)
      {
        while (1)
        {
          v7 = v4;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          v5 = [v7 superview];

          v4 = v5;
          if (!v5)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

LABEL_9:
      v8 = v4;
      v6 = [v4 collectionViewLayout];
      [v6 invalidateLayout];
    }
  }
}

- (void)update
{
  v3 = [(UIDocumentProperties *)self->_properties activityViewControllerProvider];
  [(UIView *)self->_shareButton setHidden:v3 == 0];
}

- (CGRect)_rectForShareButton
{
  shareButton = self->_shareButton;
  if (shareButton && ![(UIView *)shareButton isHidden])
  {
    [(UIView *)self->_shareButton bounds];
    [(UIView *)self convertRect:self->_shareButton fromView:?];
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)_defaultSharePreview
{
  v3 = self->_shareButton;
  v4 = v3;
  if (v3 && ![(UIView *)v3 isHidden])
  {
    v7 = [UIPreviewTarget alloc];
    [(UIView *)v4 bounds];
    [(UIView *)v4 convertPoint:self toView:v9 + v8 * 0.5, v11 + v10 * 0.5];
    v12 = [(UIPreviewTarget *)v7 initWithContainer:self center:?];
    v13 = [UITargetedPreview alloc];
    v14 = objc_opt_new();
    v6 = [(UITargetedPreview *)v13 initWithView:v4 parameters:v14 target:v12];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Requesting a share preview for a document menu header that does not seem to have a share button.", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_defaultSharePreview___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Requesting a share preview for a document menu header that does not seem to have a share button.", v17, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  [(_UIDocumentPropertiesHeaderView *)self _rectForDragInteraction];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (!CGRectIsNull(v21))
  {
    [v6 location];
    v19.x = v11;
    v19.y = v12;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (CGRectContainsPoint(v22, v19))
    {
      v13 = @"com.apple.documentproperties.header.drag";
LABEL_7:
      v16 = [UIPointerRegion regionWithRect:v13 identifier:x, y, width, height];
      goto LABEL_9;
    }
  }

  [(_UIDocumentPropertiesHeaderView *)self _rectForShareButton];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  if (!CGRectIsNull(v23))
  {
    [v6 location];
    v20.x = v14;
    v20.y = v15;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (CGRectContainsPoint(v24, v20))
    {
      v13 = @"com.apple.documentproperties.header.share";
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  v7 = [v6 isEqual:@"com.apple.documentproperties.header.drag"];

  if (v7)
  {
    v8 = [(_UIDocumentPropertiesHeaderView *)self _defaultDragPreview];
    v9 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v8];

    v10 = [UIPointerStyle styleWithEffect:v9 shape:0];
LABEL_5:

    goto LABEL_7;
  }

  v11 = [v5 identifier];
  v12 = [v11 isEqual:@"com.apple.documentproperties.header.share"];

  if (v12)
  {
    [(_UIDocumentPropertiesHeaderView *)self _rectForShareButton];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(_UIDocumentPropertiesHeaderView *)self _defaultSharePreview];
    v9 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v21];

    v25.origin.x = v14;
    v25.origin.y = v16;
    v25.size.width = v18;
    v25.size.height = v20;
    v22 = [UIPointerShape shapeWithRoundedRect:v14 cornerRadius:v16, v18, v20, CGRectGetHeight(v25) * 0.5];
    v10 = [UIPointerStyle styleWithEffect:v9 shape:v22];

    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end