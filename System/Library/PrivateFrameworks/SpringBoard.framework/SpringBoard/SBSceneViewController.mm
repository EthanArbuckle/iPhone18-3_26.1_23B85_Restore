@interface SBSceneViewController
- (CGSize)contentReferenceSize;
- (SBSceneViewController)initWithCoder:(id)coder;
- (SBSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBSceneViewController)initWithSceneHandle:(id)handle;
- (id)sceneViewPresentationIdentifier:(id)identifier;
- (void)dealloc;
- (void)setContentReferenceSize:(CGSize)size withContentOrientation:(int64_t)orientation andContainerOrientation:(int64_t)containerOrientation;
- (void)setCustomContentView:(id)view;
- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion;
- (void)setPlaceholderContentContext:(id)context;
- (void)viewDidLoad;
@end

@implementation SBSceneViewController

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = SBSceneViewController;
  [(SBSceneViewController *)&v28 viewDidLoad];
  view = [(SBSceneViewController *)self view];
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
  customContentView = [(SBSceneViewController *)self customContentView];
  [(SBSceneView *)v12 setCustomContentView:customContentView];

  v14 = self->_sceneView;
  placeholderContentContext = [(SBSceneViewController *)self placeholderContentContext];
  [(SBSceneView *)v14 setPlaceholderContentContext:placeholderContentContext];

  [(SBSceneView *)self->_sceneView setDisplayMode:[(SBSceneViewController *)self displayMode] animationFactory:0 completion:0];
  [(SBSceneView *)self->_sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_sceneView];
  leftAnchor = [(SBSceneView *)self->_sceneView leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v18 setActive:1];

  rightAnchor = [(SBSceneView *)self->_sceneView rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v21 setActive:1];

  topAnchor = [(SBSceneView *)self->_sceneView topAnchor];
  topAnchor2 = [view topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v24 setActive:1];

  bottomAnchor = [(SBSceneView *)self->_sceneView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (SBSceneViewController)initWithSceneHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = SBSceneViewController;
  v6 = [(SBSceneViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneHandle, handle);
    v7->_displayMode = 0;
    v7->_contentReferenceSize = *MEMORY[0x277CBF3A8];
    v7->_containerOrientation = 1;
    v7->_contentOrientation = 1;
  }

  return v7;
}

- (SBSceneViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (SBSceneViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBSceneViewController;
  v9 = [(SBSceneViewController *)&v11 initWithCoder:coderCopy];

  return v9;
}

- (void)setPlaceholderContentContext:(id)context
{
  contextCopy = context;
  if (self->_placeholderContentContext != contextCopy)
  {
    v7 = contextCopy;
    objc_storeStrong(&self->_placeholderContentContext, context);
    contextCopy = [(SBSceneViewController *)self isViewLoaded];
    if (contextCopy)
    {
      _sceneView = [(SBSceneViewController *)self _sceneView];
      [_sceneView setPlaceholderContentContext:v7];
    }
  }

  MEMORY[0x2821F9730](contextCopy);
}

- (void)setCustomContentView:(id)view
{
  viewCopy = view;
  if (self->_customContentView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_customContentView, view);
    viewCopy = [(SBSceneViewController *)self isViewLoaded];
    if (viewCopy)
    {
      _sceneView = [(SBSceneViewController *)self _sceneView];
      [_sceneView setCustomContentView:v7];
    }
  }

  MEMORY[0x2821F9730](viewCopy);
}

- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if (self->_displayMode == mode || (self->_displayMode = mode, ![(SBSceneViewController *)self isViewLoaded]))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    _sceneView = [(SBSceneViewController *)self _sceneView];
    [_sceneView setDisplayMode:mode animationFactory:factoryCopy completion:completionCopy];
  }
}

- (void)setContentReferenceSize:(CGSize)size withContentOrientation:(int64_t)orientation andContainerOrientation:(int64_t)containerOrientation
{
  height = size.height;
  width = size.width;
  v9 = self->_contentReferenceSize.width != size.width;
  if (self->_contentReferenceSize.height != size.height)
  {
    v9 = 1;
  }

  if (v9)
  {
    self->_contentReferenceSize = size;
  }

  if (self->_contentOrientation != orientation)
  {
    self->_contentOrientation = orientation;
    v9 = 1;
  }

  if (self->_containerOrientation != containerOrientation)
  {
    self->_containerOrientation = containerOrientation;
  }

  if (v9 && [(SBSceneViewController *)self isViewLoaded])
  {
    _sceneView = [(SBSceneViewController *)self _sceneView];
    [_sceneView _updateReferenceSize:orientation andOrientation:{width, height}];
  }
}

- (id)sceneViewPresentationIdentifier:(id)identifier
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

@end