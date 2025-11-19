@interface PRXFeatureListViewController
- (NSArray)features;
- (PRXFeatureListViewController)initWithContentView:(id)a3;
- (PRXFeatureListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)addFeature:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateHeaderView;
- (void)setFeatureImage:(id)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation PRXFeatureListViewController

- (PRXFeatureListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [PRXScrollableContentView alloc];
  v6 = objc_alloc_init(MEMORY[0x277D75B40]);
  v7 = [(PRXScrollableContentView *)v5 initWithCardStyle:0 scrollView:v6];
  v8 = [(PRXFeatureListViewController *)self initWithContentView:v7];

  return v8;
}

- (PRXFeatureListViewController)initWithContentView:(id)a3
{
  v8.receiver = self;
  v8.super_class = PRXFeatureListViewController;
  v3 = [(PRXCardContentViewController *)&v8 initWithContentView:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    mutableFeatures = v3->_mutableFeatures;
    v3->_mutableFeatures = v4;

    v6 = v3;
  }

  return v3;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PRXFeatureListViewController;
  [(PRXCardContentViewController *)&v17 viewDidLoad];
  v3 = [(PRXCardContentViewController *)self contentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 scrollView], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
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

  v6 = [v3 scrollView];
  tableView = self->_tableView;
  self->_tableView = v6;

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
  v3 = [(PRXCardContentViewController *)self contentView];
  [v3 directionalLayoutMargins];
  v5 = v4 + 10.0;
  v6 = [(PRXCardContentViewController *)self contentView];
  [v6 directionalLayoutMargins];
  v8 = v7 + 10.0;
  v9 = [(PRXFeatureListViewController *)self tableView];
  [v9 setDirectionalLayoutMargins:{0.0, v5, 0.0, v8}];
}

- (void)_updateHeaderView
{
  if ([(PRXFeatureListViewController *)self isViewLoaded])
  {
    if (self->_featureImage)
    {
      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_featureImage];
      v3 = objc_alloc(MEMORY[0x277D75D18]);
      [v8 bounds];
      Width = CGRectGetWidth(v10);
      [v8 bounds];
      v5 = [v3 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v11) + 20.0}];
      [v8 setAutoresizingMask:5];
      [v5 bounds];
      MidX = CGRectGetMidX(v12);
      [v8 bounds];
      [v8 setCenter:{MidX, CGRectGetMidY(v13)}];
      [v5 addSubview:v8];
      v7 = [(PRXFeatureListViewController *)self tableView];
      [v7 setTableHeaderView:v5];
    }

    else
    {
      v8 = [(PRXFeatureListViewController *)self tableView];
      [v8 setTableHeaderView:0];
    }
  }
}

- (void)setFeatureImage:(id)a3
{
  v5 = a3;
  if (self->_featureImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_featureImage, a3);
    [(PRXFeatureListViewController *)self _updateHeaderView];
    v5 = v6;
  }
}

- (NSArray)features
{
  v2 = [(PRXFeatureListViewController *)self mutableFeatures];
  v3 = [v2 copy];

  return v3;
}

- (id)addFeature:(id)a3
{
  v4 = a3;
  v5 = [(PRXFeatureListViewController *)self mutableFeatures];
  [v5 addObject:v4];

  v6 = [(PRXFeatureListViewController *)self tableView];
  v7 = [v6 hasUncommittedUpdates];

  if ((v7 & 1) == 0)
  {
    v8 = [(PRXFeatureListViewController *)self tableView];
    [v8 reloadData];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PRXFeatureListViewController *)self mutableFeatures];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v7 dequeueReusableCellWithIdentifier:@"PRXFeatureCell"];
  v12 = [v10 title];
  [v11 setTitle:v12];

  v13 = [v10 detailText];
  [v11 setSubtitle:v13];

  v14 = [v10 imageView];
  [v11 setFeatureImageView:v14];

  v15 = [v7 separatorStyle];
  [v11 setHidingSeparator:v15 == 0];
  [v10 imageViewSize];
  if (v16 > 0.0)
  {
    [v10 imageViewSize];
    [v11 setFeatureImageSize:?];
  }

  v17 = [v10 handler];

  if (v17)
  {
    v18 = [v11 switchControl];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x277D75AE8]);
    }

    v21 = v20;

    [v11 setSwitchControl:v21];
    [v10 setSwitchControl:v21];
    v22 = [v10 isOn];
    v23 = [v11 switchControl];
    [v23 setOn:v22];
  }

  else
  {
    [v11 setSwitchControl:0];
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PRXFeatureListViewController *)self mutableFeatures:a3];
  v5 = [v4 count];

  return v5;
}

@end