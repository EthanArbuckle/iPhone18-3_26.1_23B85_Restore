@interface PGPictureInPicturePagingAccessoryViewController
- (PGPictureInPicturePagingAccessoryViewController)init;
- (void)setCurrentPage:(int64_t)a3 numberOfPages:(unint64_t)a4;
- (void)viewDidLoad;
@end

@implementation PGPictureInPicturePagingAccessoryViewController

- (PGPictureInPicturePagingAccessoryViewController)init
{
  v3.receiver = self;
  v3.super_class = PGPictureInPicturePagingAccessoryViewController;
  return [(PGPictureInPicturePagingAccessoryViewController *)&v3 initWithNibName:0 bundle:0];
}

- (void)setCurrentPage:(int64_t)a3 numberOfPages:(unint64_t)a4
{
  self->_currentPage = a3;
  self->_numberOfPages = a4;
  [(UIPageControl *)self->_pageControl setCurrentPage:?];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setNumberOfPages:a4];
}

- (void)viewDidLoad
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PGPictureInPicturePagingAccessoryViewController;
  [(PGPictureInPicturePagingAccessoryViewController *)&v26 viewDidLoad];
  v3 = [(PGPictureInPicturePagingAccessoryViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69DCD10]);
  pageControl = self->_pageControl;
  self->_pageControl = v5;
  v7 = v5;

  [(UIPageControl *)v7 setNumberOfPages:self->_numberOfPages];
  [(UIPageControl *)v7 setCurrentPage:self->_currentPage];
  [(UIPageControl *)v7 sizeToFit];
  [(UIPageControl *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1144750080;
  [(UIPageControl *)v7 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [(UIPageControl *)v7 setContentHuggingPriority:1 forAxis:v9];
  CGAffineTransformMakeRotation(&v25, 1.57079633);
  [(UIPageControl *)v7 setTransform:&v25];
  [v3 addSubview:v7];
  v24 = [(UIPageControl *)v7 widthAnchor];
  v23 = [v3 heightAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v21 = [(UIPageControl *)v7 heightAnchor];
  v20 = [v3 widthAnchor];
  v10 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v10;
  v11 = [(UIPageControl *)v7 centerXAnchor];
  v12 = [v3 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v27[2] = v13;
  v14 = [(UIPageControl *)v7 centerYAnchor];
  v15 = [v3 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v27[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v17];
  LODWORD(v18) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1144750080;
  [v3 setContentHuggingPriority:1 forAxis:v19];
}

@end