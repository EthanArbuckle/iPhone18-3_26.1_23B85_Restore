@interface VUIAppsGridViewController
- (CGSize)iconSize;
- (VUIAppsGridViewController)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)layoutSubviews;
- (void)setApps:(id)apps;
- (void)setIconSize:(CGSize)size;
- (void)setTitle:(id)title;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation VUIAppsGridViewController

- (VUIAppsGridViewController)init
{
  v23.receiver = self;
  v23.super_class = VUIAppsGridViewController;
  v2 = [(VUIAppsGridViewController *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_iconSize = vdupq_n_s64(0x404E000000000000uLL);
    v4 = objc_alloc_init(MEMORY[0x1E69DC840]);
    layout = v3->_layout;
    v3->_layout = v4;

    [(UICollectionViewFlowLayout *)v3->_layout setScrollDirection:0];
    v6 = objc_alloc([(VUIAppsGridViewController *)v3 _collectionViewClass]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:v3->_layout collectionViewLayout:{*MEMORY[0x1E695F058], v8, v9, v10}];
    collectionView = v3->_collectionView;
    v3->_collectionView = v11;

    [(UICollectionView *)v3->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)v3->_collectionView setDataSource:v3];
    [(UICollectionView *)v3->_collectionView setDelegate:v3];
    [(UICollectionView *)v3->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"cell"];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v13;

    view = [(VUIAppsGridViewController *)v3 view];
    [view addSubview:v3->_collectionView];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 2)
    {
      view2 = [(VUIAppsGridViewController *)v3 view];
      [view2 addSubview:v3->_titleLabel];

      v19 = xmmword_1E4296B50;
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if (userInterfaceIdiom2 != 6)
      {
LABEL_7:
        [(VUIAppsGridViewController *)v3 layoutSubviews];
        return v3;
      }

      v19 = vdupq_n_s64(0x4054000000000000uLL);
    }

    v3->_iconSize = v19;
    goto LABEL_7;
  }

  return v3;
}

- (void)setApps:(id)apps
{
  if (self->_apps != apps)
  {
    v4 = [apps copy];
    apps = self->_apps;
    self->_apps = v4;

    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)setIconSize:(CGSize)size
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  self->_iconSize = size;
  if (size.width != width || size.height != height)
  {
    [(VUIAppsGridViewController *)self layoutSubviews];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)layoutSubviews
{
  p_iconSize = &self->_iconSize;
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  v64 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  +[VUIAppCell contentInsets];
  v8 = v6 + v7;
  v11 = v10 + v9;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 6 || userInterfaceIdiom == 0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen nativeBounds];
    v17 = v16 * 0.19;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v20 = v17 / v19;

    if (userInterfaceIdiom == 6)
    {
      v21 = 10.0;
    }

    else
    {
      v21 = 20.0;
    }

    width = v8 + p_iconSize->width;
    v22 = v11 + p_iconSize->height + 16.0;
    v23 = 27.0;
    v24 = 12.0;
    v25 = 74.0;
    v26 = 27.0;
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 2)
    {
      width = v8 + p_iconSize->width;
      v22 = v11 + p_iconSize->height + 33.0;
      v63 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];

      v21 = 0.0;
      v20 = 124.0;
      v25 = 68.0;
      v26 = 83.0;
      v23 = 58.0;
      v24 = 50.0;
      v64 = v63;
    }

    else
    {
      v21 = 20.0;
      v22 = height + 20.0;
      v20 = 108.0;
      v26 = 74.0;
      v23 = 50.0;
      v24 = 35.0;
      v25 = 74.0;
    }
  }

  [(UICollectionViewFlowLayout *)self->_layout setItemSize:width, v22];
  [(UICollectionViewFlowLayout *)self->_layout setMinimumInteritemSpacing:v23];
  [(UICollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:v24];
  [(UICollectionView *)self->_collectionView setContentInset:v21, v26, v26, v26];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setFont:v64];
  titleLabel = self->_titleLabel;
  v28 = +[VUILocalizationManager sharedInstance];
  v29 = [v28 localizedStringForKey:@"ACCESS_SEE_ALL_TITLE"];
  [(UILabel *)titleLabel setText:v29];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.8];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  view = [(VUIAppsGridViewController *)self view];
  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if (userInterfaceIdiom3 == 2)
  {
    v33 = self->_titleLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v33 setTextColor:whiteColor];

    [(UICollectionView *)self->_collectionView setBackgroundColor:0];
    [view setBackgroundColor:0];
  }

  else
  {
    collectionView = self->_collectionView;
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(UICollectionView *)collectionView setBackgroundColor:vui_primaryDynamicBackgroundColor];

    vui_primaryDynamicBackgroundColor2 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [view setBackgroundColor:vui_primaryDynamicBackgroundColor2];
  }

  currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if (userInterfaceIdiom4 == 2)
  {
    firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    topAnchor = [view topAnchor];
    v42 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v20];
    [v42 setActive:1];

    centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
    centerXAnchor2 = [view centerXAnchor];
    v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v45 setActive:1];

    topAnchor2 = [(UICollectionView *)self->_collectionView topAnchor];
    firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v48 = [topAnchor2 constraintEqualToAnchor:firstBaselineAnchor2 constant:v25];
    [v48 setActive:1];
  }

  else
  {
    topAnchor3 = [(UICollectionView *)self->_collectionView topAnchor];
    topAnchor4 = [view topAnchor];
    v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
    [v51 setActive:1];

    topAnchor2 = [(VUIAppsGridViewController *)self navigationItem];
    firstBaselineAnchor2 = +[VUILocalizationManager sharedInstance];
    v48 = [firstBaselineAnchor2 localizedStringForKey:@"ACCESS_SEE_ALL_TITLE"];
    [topAnchor2 setTitle:v48];
  }

  bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [v54 setActive:1];

  leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v57 setActive:1];

  trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v60 setActive:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VUIAppsGridViewController;
  [(VUIAppsGridViewController *)&v4 viewDidAppear:appear];
  [(UICollectionView *)self->_collectionView flashScrollIndicators];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = VUIAppsGridViewController;
  titleCopy = title;
  [(VUIAppsGridViewController *)&v5 setTitle:titleCopy];
  [(UILabel *)self->_titleLabel setText:titleCopy, v5.receiver, v5.super_class];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_apps count];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_apps, "objectAtIndexedSubscript:", [pathCopy row]);
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:pathCopy];

  [v9 setIconSize:{self->_iconSize.width, self->_iconSize.height}];
  v10 = [v8 objectForKeyedSubscript:@"appIcon"];
  [v10 size];
  v11 = [v10 vui_iconImageOfSize:?];

  [v9 setImage:v11];
  v12 = [v8 objectForKeyedSubscript:@"appName"];
  [v9 setTitle:v12];

  return v9;
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end