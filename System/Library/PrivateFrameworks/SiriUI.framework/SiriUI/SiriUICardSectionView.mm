@interface SiriUICardSectionView
+ (CGSize)sizeThatFitsCardSection:(id)section boundingSize:(CGSize)size;
- (CGSize)contentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (CRKComposableView)composedSuperview;
- (SiriUICardSectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)removeFromComposedSuperview;
- (void)setContentView:(id)view;
- (void)setFooterView:(id)view;
- (void)setHeaderView:(id)view;
@end

@implementation SiriUICardSectionView

- (SiriUICardSectionView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SiriUICardSectionView;
  v3 = [(SiriUICardSectionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    cardSectionViewIdentifier = v3->_cardSectionViewIdentifier;
    v3->_cardSectionViewIdentifier = uUIDString;
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = self->_contentSize.height + self->_headerViewHeight + self->_footerViewHeight;
  result.height = v3;
  return result;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    contentView = [(SiriUICardSectionView *)self addSubview:self->_contentView];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v7 = viewCopy;
    [(SiriUIReusableView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    headerView = [(SiriUICardSectionView *)self addSubview:self->_headerView];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](headerView, viewCopy);
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  if (footerView != viewCopy)
  {
    v7 = viewCopy;
    [(SiriUIReusableView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    footerView = [(SiriUICardSectionView *)self addSubview:self->_footerView];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](footerView, viewCopy);
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = SiriUICardSectionView;
  [(SiriUICardSectionView *)&v20 layoutSubviews];
  [(SiriUICardSectionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!self->_headerView || (headerViewHeight = self->_headerViewHeight, headerViewHeight <= 0.0))
  {
    [objc_opt_class() defaultHeight];
    headerViewHeight = v12;
  }

  if (!self->_footerView || (footerViewHeight = self->_footerViewHeight, footerViewHeight <= 0.0))
  {
    [objc_opt_class() defaultHeight];
    footerViewHeight = v14;
  }

  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  [(SiriUIReusableView *)self->_headerView setFrame:0.0, 0.0, CGRectGetWidth(v21), headerViewHeight];
  contentView = self->_contentView;
  [(SiriUIReusableView *)self->_headerView frame];
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  [(UIView *)contentView setFrame:0.0, MaxY, Width, CGRectGetMaxY(v24) - headerViewHeight - footerViewHeight];
  footerView = self->_footerView;
  [(UIView *)self->_contentView frame];
  v19 = CGRectGetMaxY(v25);
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  [(SiriUIReusableView *)footerView setFrame:0.0, v19, CGRectGetWidth(v26), footerViewHeight];
}

+ (CGSize)sizeThatFitsCardSection:(id)section boundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(self);
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)removeFromComposedSuperview
{
  composedSuperview = [(SiriUICardSectionView *)self composedSuperview];
  [composedSuperview cardSectionSubviewWantsToBeRemovedFromHierarchy:self];
}

- (CRKComposableView)composedSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_composedSuperview);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end