@interface VUIAppsGridViewController
- (CGSize)iconSize;
- (VUIAppsGridViewController)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)layoutSubviews;
- (void)setApps:(id)a3;
- (void)setIconSize:(CGSize)a3;
- (void)setTitle:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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

    v15 = [(VUIAppsGridViewController *)v3 view];
    [v15 addSubview:v3->_collectionView];

    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 2)
    {
      v18 = [(VUIAppsGridViewController *)v3 view];
      [v18 addSubview:v3->_titleLabel];

      v19 = xmmword_1E4296B50;
    }

    else
    {
      v20 = [MEMORY[0x1E69DC938] currentDevice];
      v21 = [v20 userInterfaceIdiom];

      if (v21 != 6)
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

- (void)setApps:(id)a3
{
  if (self->_apps != a3)
  {
    v4 = [a3 copy];
    apps = self->_apps;
    self->_apps = v4;

    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }
}

- (void)setIconSize:(CGSize)a3
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  self->_iconSize = a3;
  if (a3.width != width || a3.height != height)
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
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 || v13 == 0)
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 nativeBounds];
    v17 = v16 * 0.19;

    v18 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v18 scale];
    v20 = v17 / v19;

    if (v13 == 6)
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
    v61 = [MEMORY[0x1E69DC938] currentDevice];
    v62 = [v61 userInterfaceIdiom];

    if (v62 == 2)
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
  v30 = [(VUIAppsGridViewController *)self view];
  v31 = [MEMORY[0x1E69DC938] currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 == 2)
  {
    v33 = self->_titleLabel;
    v34 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v33 setTextColor:v34];

    [(UICollectionView *)self->_collectionView setBackgroundColor:0];
    [v30 setBackgroundColor:0];
  }

  else
  {
    collectionView = self->_collectionView;
    v36 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(UICollectionView *)collectionView setBackgroundColor:v36];

    v37 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [v30 setBackgroundColor:v37];
  }

  v38 = [MEMORY[0x1E69DC938] currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39 == 2)
  {
    v40 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v41 = [v30 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:v20];
    [v42 setActive:1];

    v43 = [(UILabel *)self->_titleLabel centerXAnchor];
    v44 = [v30 centerXAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    v46 = [(UICollectionView *)self->_collectionView topAnchor];
    v47 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:v25];
    [v48 setActive:1];
  }

  else
  {
    v49 = [(UICollectionView *)self->_collectionView topAnchor];
    v50 = [v30 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:20.0];
    [v51 setActive:1];

    v46 = [(VUIAppsGridViewController *)self navigationItem];
    v47 = +[VUILocalizationManager sharedInstance];
    v48 = [v47 localizedStringForKey:@"ACCESS_SEE_ALL_TITLE"];
    [v46 setTitle:v48];
  }

  v52 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v53 = [v30 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:0.0];
  [v54 setActive:1];

  v55 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v56 = [v30 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v59 = [v30 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  [v60 setActive:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUIAppsGridViewController;
  [(VUIAppsGridViewController *)&v4 viewDidAppear:a3];
  [(UICollectionView *)self->_collectionView flashScrollIndicators];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = VUIAppsGridViewController;
  v4 = a3;
  [(VUIAppsGridViewController *)&v5 setTitle:v4];
  [(UILabel *)self->_titleLabel setText:v4, v5.receiver, v5.super_class];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_apps count];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_apps, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:v6];

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