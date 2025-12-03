@interface PRXMovieContentViewController
- (CGSize)movieDimensions;
- (PRXMovieContentViewController)initWithMovieView:(id)view movieDimensions:(CGSize)dimensions productHeight:(double)height;
- (void)fadeInAuxiliaryViewsOverDuration:(double)duration delay:(double)delay completion:(id)completion;
- (void)setAuxiliaryViewsAlpha:(double)alpha;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PRXMovieContentViewController

- (PRXMovieContentViewController)initWithMovieView:(id)view movieDimensions:(CGSize)dimensions productHeight:(double)height
{
  height = dimensions.height;
  width = dimensions.width;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = PRXMovieContentViewController;
  v11 = [(PRXCardContentViewController *)&v15 initWithContentView:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_movieView, view);
    v12->_movieDimensions.width = width;
    v12->_movieDimensions.height = height;
    v12->_productHeight = height;
    v12->_fadeInDelay = 0.5;
    v12->_fadeInDuration = 1.5;
    v13 = v12;
  }

  return v12;
}

- (void)viewDidLoad
{
  v48[10] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = PRXMovieContentViewController;
  [(PRXCardContentViewController *)&v47 viewDidLoad];
  movieView = [(PRXMovieContentViewController *)self movieView];
  [movieView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(PRXMovieContentViewController *)self view];
  movieView2 = [(PRXMovieContentViewController *)self movieView];
  [view addSubview:movieView2];

  view2 = [(PRXMovieContentViewController *)self view];
  movieView3 = [(PRXMovieContentViewController *)self movieView];
  [view2 sendSubviewToBack:movieView3];

  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v8 setIdentifier:@"PRXMovieContentGuide"];
  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView addLayoutGuide:v8];

  contentView2 = [(PRXCardContentViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  v33 = MEMORY[0x277CCAAD0];
  movieView4 = [(PRXMovieContentViewController *)self movieView];
  heightAnchor = [movieView4 heightAnchor];
  [(PRXMovieContentViewController *)self movieDimensions];
  v43 = [heightAnchor constraintEqualToConstant:v12];
  v48[0] = v43;
  movieView5 = [(PRXMovieContentViewController *)self movieView];
  widthAnchor = [movieView5 widthAnchor];
  [(PRXMovieContentViewController *)self movieDimensions];
  v40 = [widthAnchor constraintEqualToConstant:?];
  v48[1] = v40;
  movieView6 = [(PRXMovieContentViewController *)self movieView];
  centerXAnchor = [movieView6 centerXAnchor];
  centerXAnchor2 = [v8 centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v48[2] = v36;
  movieView7 = [(PRXMovieContentViewController *)self movieView];
  centerYAnchor = [movieView7 centerYAnchor];
  centerYAnchor2 = [v8 centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v48[3] = v31;
  heightAnchor2 = [v8 heightAnchor];
  [(PRXMovieContentViewController *)self productHeight];
  v29 = [heightAnchor2 constraintEqualToConstant:?];
  v48[4] = v29;
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[5] = v26;
  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[6] = v23;
  topAnchor = [v8 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v13 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v48[7] = v13;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v16 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v48[8] = v16;
  centerYAnchor3 = [v8 centerYAnchor];
  v46 = mainContentGuide;
  centerYAnchor4 = [mainContentGuide centerYAnchor];
  v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v48[9] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:10];
  [v33 activateConstraints:v20];

  if ([(PRXMovieContentViewController *)self shouldFadeInElementsOnAppear])
  {
    [(PRXMovieContentViewController *)self hideAuxiliaryViews];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PRXMovieContentViewController;
  [(PRXMovieContentViewController *)&v7 viewWillAppear:appear];
  [(PRXMovieContentViewController *)self fadeInDuration];
  v5 = v4;
  [(PRXMovieContentViewController *)self fadeInDelay];
  [(PRXMovieContentViewController *)self fadeInAuxiliaryViewsOverDuration:0 delay:v5 completion:v6];
}

- (void)fadeInAuxiliaryViewsOverDuration:(double)duration delay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__PRXMovieContentViewController_fadeInAuxiliaryViewsOverDuration_delay_completion___block_invoke;
  v13[3] = &unk_279ACC188;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__PRXMovieContentViewController_fadeInAuxiliaryViewsOverDuration_delay_completion___block_invoke_2;
  v11[3] = &unk_279ACC448;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 animateWithDuration:2 delay:v13 options:v11 animations:duration completion:delay];
}

uint64_t __83__PRXMovieContentViewController_fadeInAuxiliaryViewsOverDuration_delay_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setAuxiliaryViewsAlpha:(double)alpha
{
  v20 = *MEMORY[0x277D85DE8];
  contentView = [(PRXCardContentViewController *)self contentView];
  titleTextView = [contentView titleTextView];
  [titleTextView setAlpha:alpha];

  contentView2 = [(PRXCardContentViewController *)self contentView];
  subtitleLabel = [contentView2 subtitleLabel];
  [subtitleLabel setAlpha:alpha];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  contentView3 = [(PRXCardContentViewController *)self contentView];
  auxiliaryViews = [contentView3 auxiliaryViews];

  v11 = [auxiliaryViews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(auxiliaryViews);
        }

        [*(*(&v15 + 1) + 8 * v14++) setAlpha:alpha];
      }

      while (v12 != v14);
      v12 = [auxiliaryViews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (CGSize)movieDimensions
{
  width = self->_movieDimensions.width;
  height = self->_movieDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end