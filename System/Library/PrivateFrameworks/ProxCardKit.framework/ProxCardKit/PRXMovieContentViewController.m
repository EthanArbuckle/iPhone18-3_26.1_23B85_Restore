@interface PRXMovieContentViewController
- (CGSize)movieDimensions;
- (PRXMovieContentViewController)initWithMovieView:(id)a3 movieDimensions:(CGSize)a4 productHeight:(double)a5;
- (void)fadeInAuxiliaryViewsOverDuration:(double)a3 delay:(double)a4 completion:(id)a5;
- (void)setAuxiliaryViewsAlpha:(double)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PRXMovieContentViewController

- (PRXMovieContentViewController)initWithMovieView:(id)a3 movieDimensions:(CGSize)a4 productHeight:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = PRXMovieContentViewController;
  v11 = [(PRXCardContentViewController *)&v15 initWithContentView:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_movieView, a3);
    v12->_movieDimensions.width = width;
    v12->_movieDimensions.height = height;
    v12->_productHeight = a5;
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
  v3 = [(PRXMovieContentViewController *)self movieView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(PRXMovieContentViewController *)self view];
  v5 = [(PRXMovieContentViewController *)self movieView];
  [v4 addSubview:v5];

  v6 = [(PRXMovieContentViewController *)self view];
  v7 = [(PRXMovieContentViewController *)self movieView];
  [v6 sendSubviewToBack:v7];

  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v8 setIdentifier:@"PRXMovieContentGuide"];
  v9 = [(PRXCardContentViewController *)self contentView];
  [v9 addLayoutGuide:v8];

  v10 = [(PRXCardContentViewController *)self contentView];
  v11 = [v10 mainContentGuide];

  v33 = MEMORY[0x277CCAAD0];
  v45 = [(PRXMovieContentViewController *)self movieView];
  v44 = [v45 heightAnchor];
  [(PRXMovieContentViewController *)self movieDimensions];
  v43 = [v44 constraintEqualToConstant:v12];
  v48[0] = v43;
  v42 = [(PRXMovieContentViewController *)self movieView];
  v41 = [v42 widthAnchor];
  [(PRXMovieContentViewController *)self movieDimensions];
  v40 = [v41 constraintEqualToConstant:?];
  v48[1] = v40;
  v39 = [(PRXMovieContentViewController *)self movieView];
  v38 = [v39 centerXAnchor];
  v37 = [v8 centerXAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v48[2] = v36;
  v35 = [(PRXMovieContentViewController *)self movieView];
  v34 = [v35 centerYAnchor];
  v32 = [v8 centerYAnchor];
  v31 = [v34 constraintEqualToAnchor:v32];
  v48[3] = v31;
  v30 = [v8 heightAnchor];
  [(PRXMovieContentViewController *)self productHeight];
  v29 = [v30 constraintEqualToConstant:?];
  v48[4] = v29;
  v28 = [v8 leadingAnchor];
  v27 = [v11 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v48[5] = v26;
  v25 = [v8 trailingAnchor];
  v24 = [v11 trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v48[6] = v23;
  v22 = [v8 topAnchor];
  v21 = [v11 topAnchor];
  v13 = [v22 constraintGreaterThanOrEqualToAnchor:v21];
  v48[7] = v13;
  v14 = [v8 bottomAnchor];
  v15 = [v11 bottomAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15];
  v48[8] = v16;
  v17 = [v8 centerYAnchor];
  v46 = v11;
  v18 = [v11 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v48[9] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:10];
  [v33 activateConstraints:v20];

  if ([(PRXMovieContentViewController *)self shouldFadeInElementsOnAppear])
  {
    [(PRXMovieContentViewController *)self hideAuxiliaryViews];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PRXMovieContentViewController;
  [(PRXMovieContentViewController *)&v7 viewWillAppear:a3];
  [(PRXMovieContentViewController *)self fadeInDuration];
  v5 = v4;
  [(PRXMovieContentViewController *)self fadeInDelay];
  [(PRXMovieContentViewController *)self fadeInAuxiliaryViewsOverDuration:0 delay:v5 completion:v6];
}

- (void)fadeInAuxiliaryViewsOverDuration:(double)a3 delay:(double)a4 completion:(id)a5
{
  v8 = a5;
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
  v12 = v8;
  v10 = v8;
  [v9 animateWithDuration:2 delay:v13 options:v11 animations:a3 completion:a4];
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

- (void)setAuxiliaryViewsAlpha:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(PRXCardContentViewController *)self contentView];
  v6 = [v5 titleTextView];
  [v6 setAlpha:a3];

  v7 = [(PRXCardContentViewController *)self contentView];
  v8 = [v7 subtitleLabel];
  [v8 setAlpha:a3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(PRXCardContentViewController *)self contentView];
  v10 = [v9 auxiliaryViews];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) setAlpha:a3];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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