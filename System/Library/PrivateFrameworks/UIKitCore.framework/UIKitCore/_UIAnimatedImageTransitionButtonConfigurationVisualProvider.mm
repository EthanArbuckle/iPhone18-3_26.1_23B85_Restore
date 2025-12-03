@interface _UIAnimatedImageTransitionButtonConfigurationVisualProvider
- (BOOL)_updateImageViewWithConfiguration:(id)configuration;
- (id)_transitioningImageViewForConfiguration:(id)configuration;
- (id)imageEffectContainerView;
@end

@implementation _UIAnimatedImageTransitionButtonConfigurationVisualProvider

- (id)imageEffectContainerView
{
  button = [(UIButtonConfigurationVisualProvider *)self button];
  contentAnimationContainerView = self->_contentAnimationContainerView;
  if (!contentAnimationContainerView)
  {
    v5 = [UIView alloc];
    [button bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    v7 = self->_contentAnimationContainerView;
    self->_contentAnimationContainerView = v6;

    [(UIView *)self->_contentAnimationContainerView setAutoresizingMask:18];
    [(UIView *)self->_contentAnimationContainerView setUserInteractionEnabled:0];
    [button addSubview:self->_contentAnimationContainerView];
    contentAnimationContainerView = self->_contentAnimationContainerView;
  }

  v8 = contentAnimationContainerView;

  return contentAnimationContainerView;
}

- (id)_transitioningImageViewForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageViewsByConfiguration = self->_imageViewsByConfiguration;
  if (!imageViewsByConfiguration)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_imageViewsByConfiguration;
    self->_imageViewsByConfiguration = v6;

    imageViewsByConfiguration = self->_imageViewsByConfiguration;
  }

  v8 = [(NSMutableDictionary *)imageViewsByConfiguration objectForKey:configurationCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(UIImageView);
    [(UIImageView *)v8 setContentMode:[(UIView *)self->super._imageView contentMode]];
    _resolvedImage = [configurationCopy _resolvedImage];
    _resolvedSymbolConfiguration = [configurationCopy _resolvedSymbolConfiguration];
    [(UIImageView *)v8 setPreferredSymbolConfiguration:_resolvedSymbolConfiguration];

    _resolvedImageColor = [configurationCopy _resolvedImageColor];
    [(UIView *)v8 setTintColor:_resolvedImageColor];

    [(UIImageView *)v8 setImage:_resolvedImage];
    [(NSMutableDictionary *)self->_imageViewsByConfiguration setObject:v8 forKey:configurationCopy];
  }

  v12 = self->super._imageView;
  objc_storeStrong(&self->super._imageView, v8);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  [(UIButtonConfigurationVisualProvider *)self _layoutBounds];
  [(UIButtonConfigurationVisualProvider *)self _layoutDataInBounds:configurationCopy forConfiguration:?];
  imageView = self->super._imageView;
  self->super._imageView = v12;
  v14 = v12;

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v22 = __103___UIAnimatedImageTransitionButtonConfigurationVisualProvider__transitioningImageViewForConfiguration___block_invoke;
  v23 = &unk_1E7126040;
  v37 = v50;
  v25 = v38;
  v15 = v8;
  v24 = v15;
  [UIView performWithoutAnimation:&v20];
  v16 = [(_UIAnimatedImageTransitionButtonConfigurationVisualProvider *)self imageEffectContainerView:v20];
  [v16 addSubview:v15];

  v17 = v24;
  v18 = v15;

  return v18;
}

- (BOOL)_updateImageViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(_UIButtonConfigurationShim *)self->_fromConfiguration copy];
  background = [configurationCopy background];
  visualEffect = [background visualEffect];
  background2 = [v5 background];
  [background2 setVisualEffect:visualEffect];

  if (self->_inViewHierarchy && self->_fromConfiguration && ([configurationCopy isEqual:?] & 1) == 0)
  {
    v10 = [(_UIAnimatedImageTransitionButtonConfigurationVisualProvider *)self _transitioningImageViewForConfiguration:self->_fromConfiguration];
    v11 = [(_UIAnimatedImageTransitionButtonConfigurationVisualProvider *)self _transitioningImageViewForConfiguration:configurationCopy];
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v28.receiver = self;
  v28.super_class = _UIAnimatedImageTransitionButtonConfigurationVisualProvider;
  v12 = [(UIButtonConfigurationVisualProvider *)&v28 _updateImageViewWithConfiguration:configurationCopy];
  if (v9)
  {
    [(UIImageView *)self->super._imageView setHidden:1];
    CGAffineTransformMakeScale(&v27, 0.3, 0.3);
    v26 = v27;
    [v11 setTransform:&v26];
    [v11 setAlpha:0.0];
    v13 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.2];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __97___UIAnimatedImageTransitionButtonConfigurationVisualProvider__updateImageViewWithConfiguration___block_invoke;
    v23[3] = &unk_1E70F35B8;
    v24 = v11;
    v25 = v10;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __97___UIAnimatedImageTransitionButtonConfigurationVisualProvider__updateImageViewWithConfiguration___block_invoke_2;
    v20 = &unk_1E70F4000;
    v21 = v24;
    selfCopy = self;
    [UIView _animateUsingSpringBehavior:v13 tracking:0 animations:v23 completion:&v17];
  }

  v14 = [configurationCopy copy];
  fromConfiguration = self->_fromConfiguration;
  self->_fromConfiguration = v14;

  return v12;
}

@end