@interface VideosExtrasActivityIndicatorElementViewController
- (void)_prepareLayout;
- (void)viewDidLoad;
@end

@implementation VideosExtrasActivityIndicatorElementViewController

- (void)viewDidLoad
{
  v33[3] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = VideosExtrasActivityIndicatorElementViewController;
  [(VideosExtrasViewElementViewController *)&v32 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  layer = [v3 layer];
  [layer setCornerRadius:5.0];

  layer2 = [v3 layer];
  [layer2 setMasksToBounds:1];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setGroupName:@"VideosExtrasBlurGroupName"];
  v6 = [VideosExtrasActivityIndicator alloc];
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  v8 = [(VideosExtrasActivityIndicator *)v6 initWithElement:viewElement];

  LODWORD(v9) = 1144750080;
  [(VideosExtrasActivityIndicator *)v8 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1144750080;
  [(VideosExtrasActivityIndicator *)v8 setContentHuggingPriority:1 forAxis:v10];
  [(VideosExtrasActivityIndicator *)v8 setAlpha:1.0];
  view = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  [view addSubview:v3];

  [(VideosExtrasActivityIndicator *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  [view2 addSubview:v8];

  activityView = self->_activityView;
  self->_activityView = v8;
  v14 = v8;

  v15 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3 toView:v14 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  view3 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  [view3 addConstraints:v15];

  v17 = MEMORY[0x1E696ACD8];
  view4 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  v19 = [v17 constraintsByCenteringView:v14 withView:view4 alongAxes:3 offset:{*MEMORY[0x1E69DE258], *(MEMORY[0x1E69DE258] + 8)}];

  view5 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  [view5 addConstraints:v19];

  v21 = MEMORY[0x1E696ACD8];
  view6 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  v23 = [v21 constraintWithItem:v14 attribute:7 relatedBy:1 toItem:view6 attribute:7 multiplier:0.1125 constant:0.0];

  LODWORD(v24) = 1148829696;
  [v23 setPriority:v24];
  v25 = MEMORY[0x1E696ACD8];
  view7 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  v27 = [v25 constraintWithItem:v14 attribute:8 relatedBy:1 toItem:view7 attribute:8 multiplier:0.1125 constant:0.0];

  LODWORD(v28) = 1148829696;
  [v27 setPriority:v28];
  v29 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:8 relatedBy:0 toItem:v14 attribute:7 multiplier:1.0 constant:0.0];
  view8 = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  v33[0] = v23;
  v33[1] = v27;
  v33[2] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];

  [view8 addConstraints:v31];
}

- (void)_prepareLayout
{
  v5.receiver = self;
  v5.super_class = VideosExtrasActivityIndicatorElementViewController;
  [(VideosExtrasElementViewController *)&v5 _prepareLayout];
  backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
  [backgroundViewController setVignetteType:3];

  view = [(VideosExtrasActivityIndicatorElementViewController *)self view];
  [view bringSubviewToFront:self->_activityView];
}

@end