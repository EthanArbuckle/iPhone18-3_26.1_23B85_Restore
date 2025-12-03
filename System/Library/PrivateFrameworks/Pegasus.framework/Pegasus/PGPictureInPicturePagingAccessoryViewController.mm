@interface PGPictureInPicturePagingAccessoryViewController
- (PGPictureInPicturePagingAccessoryViewController)init;
- (void)setCurrentPage:(int64_t)page numberOfPages:(unint64_t)pages;
- (void)viewDidLoad;
@end

@implementation PGPictureInPicturePagingAccessoryViewController

- (PGPictureInPicturePagingAccessoryViewController)init
{
  v3.receiver = self;
  v3.super_class = PGPictureInPicturePagingAccessoryViewController;
  return [(PGPictureInPicturePagingAccessoryViewController *)&v3 initWithNibName:0 bundle:0];
}

- (void)setCurrentPage:(int64_t)page numberOfPages:(unint64_t)pages
{
  self->_currentPage = page;
  self->_numberOfPages = pages;
  [(UIPageControl *)self->_pageControl setCurrentPage:?];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setNumberOfPages:pages];
}

- (void)viewDidLoad
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PGPictureInPicturePagingAccessoryViewController;
  [(PGPictureInPicturePagingAccessoryViewController *)&v26 viewDidLoad];
  view = [(PGPictureInPicturePagingAccessoryViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

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
  [view addSubview:v7];
  widthAnchor = [(UIPageControl *)v7 widthAnchor];
  heightAnchor = [view heightAnchor];
  v22 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v27[0] = v22;
  heightAnchor2 = [(UIPageControl *)v7 heightAnchor];
  widthAnchor2 = [view widthAnchor];
  v10 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2];
  v27[1] = v10;
  centerXAnchor = [(UIPageControl *)v7 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v27[2] = v13;
  centerYAnchor = [(UIPageControl *)v7 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v27[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v17];
  LODWORD(v18) = 1144750080;
  [view setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1144750080;
  [view setContentHuggingPriority:1 forAxis:v19];
}

@end