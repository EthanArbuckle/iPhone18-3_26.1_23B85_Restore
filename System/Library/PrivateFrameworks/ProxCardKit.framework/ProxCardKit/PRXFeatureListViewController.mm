@interface PRXFeatureListViewController
- (NSArray)features;
- (PRXFeatureListViewController)initWithContentView:(id)view;
- (PRXFeatureListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)addFeature:(id)feature;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateHeaderView;
- (void)setFeatureImage:(id)image;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation PRXFeatureListViewController

- (PRXFeatureListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [PRXScrollableContentView alloc];
  v6 = objc_alloc_init(MEMORY[0x277D75B40]);
  v7 = [(PRXScrollableContentView *)v5 initWithCardStyle:0 scrollView:v6];
  v8 = [(PRXFeatureListViewController *)self initWithContentView:v7];

  return v8;
}

- (PRXFeatureListViewController)initWithContentView:(id)view
{
  v8.receiver = self;
  v8.super_class = PRXFeatureListViewController;
  v3 = [(PRXCardContentViewController *)&v8 initWithContentView:view];
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    mutableFeatures = v3->_mutableFeatures;
    v3->_mutableFeatures = array;

    v6 = v3;
  }

  return v3;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PRXFeatureListViewController;
  [(PRXCardContentViewController *)&v17 viewDidLoad];
  contentView = [(PRXCardContentViewController *)self contentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([contentView scrollView], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@ requires a PRXScrollableContentView with a UITableView", v13];
    v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  scrollView = [contentView scrollView];
  tableView = self->_tableView;
  self->_tableView = scrollView;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 21.0}];
  [(UITableView *)self->_tableView setTableFooterView:v8];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PRXFeatureCell"];
  [(PRXFeatureListViewController *)self _updateHeaderView];
}

- (void)viewLayoutMarginsDidChange
{
  v10.receiver = self;
  v10.super_class = PRXFeatureListViewController;
  [(PRXFeatureListViewController *)&v10 viewLayoutMarginsDidChange];
  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView directionalLayoutMargins];
  v5 = v4 + 10.0;
  contentView2 = [(PRXCardContentViewController *)self contentView];
  [contentView2 directionalLayoutMargins];
  v8 = v7 + 10.0;
  tableView = [(PRXFeatureListViewController *)self tableView];
  [tableView setDirectionalLayoutMargins:{0.0, v5, 0.0, v8}];
}

- (void)_updateHeaderView
{
  if ([(PRXFeatureListViewController *)self isViewLoaded])
  {
    if (self->_featureImage)
    {
      tableView2 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_featureImage];
      v3 = objc_alloc(MEMORY[0x277D75D18]);
      [tableView2 bounds];
      Width = CGRectGetWidth(v10);
      [tableView2 bounds];
      v5 = [v3 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v11) + 20.0}];
      [tableView2 setAutoresizingMask:5];
      [v5 bounds];
      MidX = CGRectGetMidX(v12);
      [tableView2 bounds];
      [tableView2 setCenter:{MidX, CGRectGetMidY(v13)}];
      [v5 addSubview:tableView2];
      tableView = [(PRXFeatureListViewController *)self tableView];
      [tableView setTableHeaderView:v5];
    }

    else
    {
      tableView2 = [(PRXFeatureListViewController *)self tableView];
      [tableView2 setTableHeaderView:0];
    }
  }
}

- (void)setFeatureImage:(id)image
{
  imageCopy = image;
  if (self->_featureImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_featureImage, image);
    [(PRXFeatureListViewController *)self _updateHeaderView];
    imageCopy = v6;
  }
}

- (NSArray)features
{
  mutableFeatures = [(PRXFeatureListViewController *)self mutableFeatures];
  v3 = [mutableFeatures copy];

  return v3;
}

- (id)addFeature:(id)feature
{
  featureCopy = feature;
  mutableFeatures = [(PRXFeatureListViewController *)self mutableFeatures];
  [mutableFeatures addObject:featureCopy];

  tableView = [(PRXFeatureListViewController *)self tableView];
  hasUncommittedUpdates = [tableView hasUncommittedUpdates];

  if ((hasUncommittedUpdates & 1) == 0)
  {
    tableView2 = [(PRXFeatureListViewController *)self tableView];
    [tableView2 reloadData];
  }

  return featureCopy;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  mutableFeatures = [(PRXFeatureListViewController *)self mutableFeatures];
  v9 = [pathCopy row];

  v10 = [mutableFeatures objectAtIndexedSubscript:v9];

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"PRXFeatureCell"];
  title = [v10 title];
  [v11 setTitle:title];

  detailText = [v10 detailText];
  [v11 setSubtitle:detailText];

  imageView = [v10 imageView];
  [v11 setFeatureImageView:imageView];

  separatorStyle = [viewCopy separatorStyle];
  [v11 setHidingSeparator:separatorStyle == 0];
  [v10 imageViewSize];
  if (v16 > 0.0)
  {
    [v10 imageViewSize];
    [v11 setFeatureImageSize:?];
  }

  handler = [v10 handler];

  if (handler)
  {
    switchControl = [v11 switchControl];
    v19 = switchControl;
    if (switchControl)
    {
      v20 = switchControl;
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x277D75AE8]);
    }

    v21 = v20;

    [v11 setSwitchControl:v21];
    [v10 setSwitchControl:v21];
    isOn = [v10 isOn];
    switchControl2 = [v11 switchControl];
    [switchControl2 setOn:isOn];
  }

  else
  {
    [v11 setSwitchControl:0];
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PRXFeatureListViewController *)self mutableFeatures:view];
  v5 = [v4 count];

  return v5;
}

@end