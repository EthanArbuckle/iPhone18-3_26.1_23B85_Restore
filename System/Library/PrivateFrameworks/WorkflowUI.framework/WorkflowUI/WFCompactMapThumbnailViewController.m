@interface WFCompactMapThumbnailViewController
- (WFCompactMapThumbnailViewController)initWithCLPlacemark:(id)a3;
- (void)loadView;
@end

@implementation WFCompactMapThumbnailViewController

- (void)loadView
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = WFCompactMapThumbnailViewController;
  [(WFCompactMapThumbnailViewController *)&v9 loadView];
  v3 = objc_alloc_init(MEMORY[0x277CD4EC8]);
  [v3 setZoomEnabled:0];
  [v3 setScrollEnabled:0];
  [v3 setUserInteractionEnabled:0];
  v4 = [(WFCompactMapThumbnailViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  [v3 setAutoresizingMask:18];
  v5 = [(WFCompactMapThumbnailViewController *)self view];
  [v5 addSubview:v3];

  v6 = [(WFCompactMapThumbnailViewController *)self placemark];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CD4F00]) initWithPlacemark:v6];
    [v3 addAnnotation:v7];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v3 showAnnotations:v8 animated:0];
  }
}

- (WFCompactMapThumbnailViewController)initWithCLPlacemark:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFCompactMapThumbnailViewController;
  v6 = [(WFCompactMapThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placemark, a3);
    v8 = v7;
  }

  return v7;
}

@end