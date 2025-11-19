@interface SBSceneViewController
- (CGSize)contentReferenceSize;
- (SBSceneViewController)initWithCoder:(id)a3;
- (SBSceneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBSceneViewController)initWithSceneHandle:(id)a3;
- (id)sceneViewPresentationIdentifier:(id)a3;
- (void)dealloc;
- (void)setContentReferenceSize:(CGSize)a3 withContentOrientation:(int64_t)a4 andContainerOrientation:(int64_t)a5;
- (void)setCustomContentView:(id)a3;
- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5;
- (void)setPlaceholderContentContext:(id)a3;
- (void)viewDidLoad;
@end

@implementation SBSceneViewController

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = SBSceneViewController;
  [(SBSceneViewController *)&v28 viewDidLoad];
  v3 = [(SBSceneViewController *)self view];
  sceneView = self->_sceneView;
  if (sceneView)
  {
    [(SBSceneViewController *)self contentReferenceSize];
    [(SBSceneView *)sceneView _updateReferenceSize:[(SBSceneViewController *)self contentOrientation] andOrientation:v5, v6];
  }

  else
  {
    sceneHandle = self->_sceneHandle;
    [(SBSceneViewController *)self contentReferenceSize];
    v10 = [(SBSceneHandle *)sceneHandle newSceneViewWithReferenceSize:[(SBSceneViewController *)self contentOrientation] contentOrientation:[(SBSceneViewController *)self containerOrientation] containerOrientation:self hostRequester:v8, v9];
    v11 = self->_sceneView;
    self->_sceneView = v10;
  }

  v12 = self->_sceneView;
  v13 = [(SBSceneViewController *)self customContentView];
  [(SBSceneView *)v12 setCustomContentView:v13];

  v14 = self->_sceneView;
  v15 = [(SBSceneViewController *)self placeholderContentContext];
  [(SBSceneView *)v14 setPlaceholderContentContext:v15];

  [(SBSceneView *)self->_sceneView setDisplayMode:[(SBSceneViewController *)self displayMode] animationFactory:0 completion:0];
  [(SBSceneView *)self->_sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_sceneView];
  v16 = [(SBSceneView *)self->_sceneView leftAnchor];
  v17 = [v3 leftAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(SBSceneView *)self->_sceneView rightAnchor];
  v20 = [v3 rightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(SBSceneView *)self->_sceneView topAnchor];
  v23 = [v3 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [(SBSceneView *)self->_sceneView bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v27 setActive:1];
}

- (CGSize)contentReferenceSize
{
  width = self->_contentReferenceSize.width;
  height = self->_contentReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBSceneViewController)initWithSceneHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSceneViewController;
  v6 = [(SBSceneViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneHandle, a3);
    v7->_displayMode = 0;
    v7->_contentReferenceSize = *MEMORY[0x277CBF3A8];
    v7->_containerOrientation = 1;
    v7->_contentOrientation = 1;
  }

  return v7;
}

- (SBSceneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE648];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"%s is not a valid initializer. You must call -[%@ initWithSceneHandle:].", "-[SBSceneViewController initWithNibName:bundle:]", v8}];

  return [(SBSceneViewController *)self initWithSceneHandle:0];
}

- (void)dealloc
{
  if ([(SBSceneViewController *)self isViewLoaded])
  {
    [(SBSceneView *)self->_sceneView invalidate];
  }

  v3.receiver = self;
  v3.super_class = SBSceneViewController;
  [(SBSceneViewController *)&v3 dealloc];
}

- (SBSceneViewController)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBSceneViewController;
  v9 = [(SBSceneViewController *)&v11 initWithCoder:v6];

  return v9;
}

- (void)setPlaceholderContentContext:(id)a3
{
  v5 = a3;
  if (self->_placeholderContentContext != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_placeholderContentContext, a3);
    v5 = [(SBSceneViewController *)self isViewLoaded];
    if (v5)
    {
      v6 = [(SBSceneViewController *)self _sceneView];
      [v6 setPlaceholderContentContext:v7];
    }
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setCustomContentView:(id)a3
{
  v5 = a3;
  if (self->_customContentView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_customContentView, a3);
    v5 = [(SBSceneViewController *)self isViewLoaded];
    if (v5)
    {
      v6 = [(SBSceneViewController *)self _sceneView];
      [v6 setCustomContentView:v7];
    }
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5
{
  v10 = a4;
  v8 = a5;
  if (self->_displayMode == a3 || (self->_displayMode = a3, ![(SBSceneViewController *)self isViewLoaded]))
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v9 = [(SBSceneViewController *)self _sceneView];
    [v9 setDisplayMode:a3 animationFactory:v10 completion:v8];
  }
}

- (void)setContentReferenceSize:(CGSize)a3 withContentOrientation:(int64_t)a4 andContainerOrientation:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self->_contentReferenceSize.width != a3.width;
  if (self->_contentReferenceSize.height != a3.height)
  {
    v9 = 1;
  }

  if (v9)
  {
    self->_contentReferenceSize = a3;
  }

  if (self->_contentOrientation != a4)
  {
    self->_contentOrientation = a4;
    v9 = 1;
  }

  if (self->_containerOrientation != a5)
  {
    self->_containerOrientation = a5;
  }

  if (v9 && [(SBSceneViewController *)self isViewLoaded])
  {
    v10 = [(SBSceneViewController *)self _sceneView];
    [v10 _updateReferenceSize:a4 andOrientation:{width, height}];
  }
}

- (id)sceneViewPresentationIdentifier:(id)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

@end