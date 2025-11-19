@interface STSPickerView
- (STSPickerView)init;
- (UIEdgeInsets)_updateContentInset;
- (void)layoutSubviews;
- (void)scrollToTopWithAnimation:(BOOL)a3;
- (void)setHeaderView:(id)a3;
- (void)setOverlayView:(id)a3;
- (void)setShowActivityIndicator:(BOOL)a3;
- (void)setTopInset:(double)a3;
- (void)updateContentOffset:(double)a3;
- (void)updateHeaderPositionOnScroll;
@end

@implementation STSPickerView

- (STSPickerView)init
{
  v14.receiver = self;
  v14.super_class = STSPickerView;
  v2 = [(STSPickerView *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(STSPickerView *)v2 setClipsToBounds:1];
    [(STSPickerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_alloc_init(STSGridLayout);
    gridLayout = v3->_gridLayout;
    v3->_gridLayout = v4;

    v6 = objc_alloc(MEMORY[0x277D752A0]);
    [(STSPickerView *)v3 frame];
    v7 = [v6 initWithFrame:v3->_gridLayout collectionViewLayout:?];
    collectionView = v3->_collectionView;
    v3->_collectionView = v7;

    [(UICollectionView *)v3->_collectionView setAlwaysBounceVertical:1];
    v9 = v3->_collectionView;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(UICollectionView *)v9 setBackgroundColor:v10];

    [(UICollectionView *)v3->_collectionView setPrefetchingEnabled:0];
    [(UICollectionView *)v3->_collectionView setAllowsMultipleSelection:0];
    [(UICollectionView *)v3->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSPickerView *)v3 addSubview:v3->_collectionView];
    v11 = [MEMORY[0x277CBEB18] array];
    constraints = v3->_constraints;
    v3->_constraints = v11;
  }

  return v3;
}

- (void)layoutSubviews
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = [(STSPickerView *)self layoutMarginsGuide];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  overlayView = self->_overlayView;
  if (overlayView)
  {
    headerView = self->_headerView;
    constraints = self->_constraints;
    v7 = [(STSSearchNoticeView *)overlayView topAnchor];
    if (headerView)
    {
      [(UIView *)self->_headerView bottomAnchor];
    }

    else
    {
      [v3 topAnchor];
    }
    v8 = ;
    v9 = [v7 constraintEqualToAnchor:v8];
    [(NSMutableArray *)constraints addObject:v9];

    v10 = self->_constraints;
    v11 = [(STSSearchNoticeView *)self->_overlayView leadingAnchor];
    v12 = [(STSPickerView *)self leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [(NSMutableArray *)v10 addObject:v13];

    v14 = self->_constraints;
    v15 = [(STSSearchNoticeView *)self->_overlayView trailingAnchor];
    v16 = [(STSPickerView *)self trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [(NSMutableArray *)v14 addObject:v17];

    v18 = self->_constraints;
    v19 = [(STSSearchNoticeView *)self->_overlayView bottomAnchor];
    v20 = [v3 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [(NSMutableArray *)v18 addObject:v21];

    [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  }

  v22 = self->_headerView;
  if (v22)
  {
    if (self->_headerTopConstraint)
    {
      [(NSLayoutConstraint *)self->_headerTopConstraint constant];
      v23 = MEMORY[0x277CCAAD0];
      v59[0] = self->_headerTopConstraint;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
      [v23 deactivateConstraints:v24];

      headerTopConstraint = self->_headerTopConstraint;
      self->_headerTopConstraint = 0;

      v22 = self->_headerView;
    }

    v26 = [(UIView *)v22 topAnchor];
    v27 = [v3 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v29 = self->_headerTopConstraint;
    self->_headerTopConstraint = v28;

    v30 = self->_constraints;
    v31 = [(UIView *)self->_headerView leadingAnchor];
    v32 = [(STSPickerView *)self leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [(NSMutableArray *)v30 addObject:v33];

    v34 = self->_constraints;
    v35 = [(UIView *)self->_headerView trailingAnchor];
    v36 = [(STSPickerView *)self trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [(NSMutableArray *)v34 addObject:v37];

    v38 = MEMORY[0x277CCAAD0];
    v58 = self->_headerTopConstraint;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    [v38 activateConstraints:v39];
  }

  collectionView = self->_collectionView;
  if (collectionView)
  {
    v41 = self->_headerView;
    v42 = self->_constraints;
    v43 = [(UICollectionView *)collectionView topAnchor];
    if (v41)
    {
      [(UIView *)self->_headerView bottomAnchor];
    }

    else
    {
      [v3 topAnchor];
    }
    v44 = ;
    v45 = [v43 constraintEqualToAnchor:v44];
    [(NSMutableArray *)v42 addObject:v45];

    v46 = self->_constraints;
    v47 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v48 = [(STSPickerView *)self bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [(NSMutableArray *)v46 addObject:v49];

    v50 = self->_constraints;
    v51 = [(UICollectionView *)self->_collectionView leadingAnchor];
    v52 = [(STSPickerView *)self leadingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    [(NSMutableArray *)v50 addObject:v53];

    v54 = self->_constraints;
    v55 = [(UICollectionView *)self->_collectionView trailingAnchor];
    v56 = [(STSPickerView *)self trailingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    [(NSMutableArray *)v54 addObject:v57];

    [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  }
}

- (void)scrollToTopWithAnimation:(BOOL)a3
{
  v3 = a3;
  [(UICollectionView *)self->_collectionView contentInset];
  [(UICollectionView *)self->_collectionView setContentOffset:v3 animated:-v5, -v6];

  [(STSPickerView *)self updateHeaderPositionOnScroll];
}

- (void)updateHeaderPositionOnScroll
{
  if (self->_headerView)
  {
    [(UICollectionView *)self->_collectionView contentOffset];
    v4 = v3;
    [(UICollectionView *)self->_collectionView contentInset];
    v6 = v4 + v5;
    if (v6 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = self->_lastContentOffsetY - v7;
    [(NSLayoutConstraint *)self->_headerTopConstraint constant];
    [(STSPickerView *)self layoutMargins];
    v10 = v9;
    if (self->_isDeceleratingQuickly || v8 < 0.0 && ([(UIView *)self->_headerView frame], v8 > -CGRectGetHeight(v18)) || v8 > 0.0 && ([(UIView *)self->_headerView frame], v7 < CGRectGetHeight(v19)) || (([(UIView *)self->_headerView frame], MaxY = CGRectGetMaxY(v20), v8 > 0.0) ? (v12 = MaxY <= v10) : (v12 = 1), !v12))
    {
      [(UIView *)self->_headerView frame];
      [(UIView *)self->_headerView frame];
      [(UIView *)self->_headerView frame];
      [(UIView *)self->_headerView frame];
      v14 = v13 - v10;
      v15 = [(STSPickerView *)self layoutMarginsGuide];
      v16 = fmin(v8 + v14, 0.0);
      [(UIView *)self->_headerView frame];
      v17 = -CGRectGetHeight(v24);
      if (v16 < v17)
      {
        v16 = v17;
      }

      [(UIView *)self->_headerView frame];
      CGRectGetHeight(v25);
      [(NSLayoutConstraint *)self->_headerTopConstraint setConstant:v16];
      [(STSPickerView *)self layoutIfNeeded];
    }

    self->_lastContentOffsetY = v7;
  }
}

- (void)setOverlayView:(id)a3
{
  v5 = a3;
  overlayView = self->_overlayView;
  if (overlayView != v5)
  {
    v8 = v5;
    [(STSSearchNoticeView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, a3);
    activityIndicator = self->_activityIndicator;
    if (!activityIndicator)
    {
      activityIndicator = self->_collectionView;
    }

    [(STSPickerView *)self insertSubview:self->_overlayView aboveSubview:activityIndicator];
    overlayView = [(STSPickerView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](overlayView, v5);
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    v7 = v5;
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    [(STSPickerView *)self addSubview:self->_headerView];
    headerView = [(STSPickerView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](headerView, v5);
}

- (void)setTopInset:(double)a3
{
  [(UIView *)self->_headerView frame];
  MinY = CGRectGetMinY(v8);
  self->_topInset = a3;
  [(UICollectionView *)self->_collectionView contentOffset];
  [(UICollectionView *)self->_collectionView contentInset];
  [(STSPickerView *)self _updateContentInset];
  [(UICollectionView *)self->_collectionView contentOffset];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setContentOffset:?];
}

- (void)setShowActivityIndicator:(BOOL)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (self->_showActivityIndicator != a3)
  {
    self->_showActivityIndicator = a3;
    activityIndicator = self->_activityIndicator;
    if (a3)
    {
      if (!activityIndicator)
      {
        v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
        v6 = self->_activityIndicator;
        self->_activityIndicator = v5;

        [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
        activityIndicator = self->_activityIndicator;
      }

      [(STSPickerView *)self insertSubview:activityIndicator aboveSubview:self->_collectionView];
      v7 = MEMORY[0x277CCAAD0];
      v8 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
      v9 = [(UICollectionView *)self->_collectionView centerXAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v16[0] = v10;
      v11 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
      v12 = [(UICollectionView *)self->_collectionView centerYAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v16[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      [v7 activateConstraints:v14];

      [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
      [(STSPickerView *)self setNeedsLayout];
    }

    else
    {
      [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
      v15 = self->_activityIndicator;

      [(UIActivityIndicatorView *)v15 removeFromSuperview];
    }
  }
}

- (void)updateContentOffset:(double)a3
{
  v7 = [(STSPickerView *)self collectionView];
  v5 = [(STSPickerView *)self collectionView];
  [v5 contentInset];
  [v7 setContentOffset:{-v6, a3}];
}

- (UIEdgeInsets)_updateContentInset
{
  v3 = self->_topInset + 0.0;
  v4 = self->_bottomInset + 0.0;
  [(UICollectionView *)self->_collectionView setContentInset:v3, 0.0, v4, 0.0];
  [(UICollectionView *)self->_collectionView setScrollIndicatorInsets:v3, 0.0, v4, 0.0];
  [(STSSearchNoticeView *)self->_overlayView setContentInsets:self->_topInset + 20.0, 20.0, self->_bottomInset + 20.0, 20.0];
  [(STSPickerView *)self bounds];
  [(UIActivityIndicatorView *)self->_activityIndicator bounds];
  UIRectCenteredIntegralRectScale();
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:0];
  v5 = 0.0;
  v6 = 0.0;
  v7 = v3;
  v8 = v4;
  result.right = v6;
  result.bottom = v8;
  result.left = v5;
  result.top = v7;
  return result;
}

@end