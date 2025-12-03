@interface PUImportOneUpCellBadgeView
- (CGSize)intrinsicContentSize;
- (PUImportOneUpCellBadgeView)initWithFrame:(CGRect)frame;
- (void)_createSpinnerIfNecessary;
- (void)layoutSubviews;
- (void)performBadgeUpdates:(id)updates;
- (void)prepareForReuse;
- (void)setBadgeType:(int64_t)type;
- (void)setSelectable:(BOOL)selectable;
- (void)updateBadgeUIIfNeeded;
@end

@implementation PUImportOneUpCellBadgeView

- (void)_createSpinnerIfNecessary
{
  if (!self->_spinner)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v3;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)self->_spinner setColor:whiteColor];

    v6 = self->_spinner;
    badgeContainerView = self->_badgeContainerView;

    [(PUImportOneUpCellBadgeView *)self insertSubview:v6 aboveSubview:badgeContainerView];
  }
}

- (void)performBadgeUpdates:(id)updates
{
  if (updates)
  {
    self->_inUpdateBlock = 1;
    (*(updates + 2))(updates, a2);
    self->_inUpdateBlock = 0;

    [(PUImportOneUpCellBadgeView *)self updateBadgeUIIfNeeded];
  }
}

- (void)updateBadgeUIIfNeeded
{
  if ([(PUImportOneUpCellBadgeView *)self needsBadgeUpdate])
  {
    [(PUImportOneUpCellBadgeView *)self setNeedsBadgeUpdate:0];
    badgeType = [(PUImportOneUpCellBadgeView *)self badgeType];
    badgeView = [(PUImportOneUpCellBadgeView *)self badgeView];
    [badgeView removeFromSuperview];

    [(PUImportOneUpCellBadgeView *)self setBadgeView:0];
    [(PUImportOneUpCellBadgeView *)self badgeType];
    [(PUImportOneUpCellBadgeView *)self selectable];
    v6 = PXImportBadgeViewForTypeAndSelectable();
    if (v6)
    {
      badgeContainerView = [(PUImportOneUpCellBadgeView *)self badgeContainerView];
      [badgeContainerView addSubview:v6];

      [(PUImportOneUpCellBadgeView *)self setBadgeView:v6];
    }

    if (badgeType == 2)
    {
      [(PUImportOneUpCellBadgeView *)self _createSpinnerIfNecessary];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    }

    [(PUImportOneUpCellBadgeView *)self setNeedsLayout];
  }
}

- (void)setSelectable:(BOOL)selectable
{
  if (!self->_inUpdateBlock)
  {
    _PFAssertContinueHandler();
  }

  self->_selectable = selectable;

  [(PUImportOneUpCellBadgeView *)self setNeedsBadgeUpdate];
}

- (void)setBadgeType:(int64_t)type
{
  if (!self->_inUpdateBlock)
  {
    _PFAssertContinueHandler();
  }

  self->_badgeType = type;

  [(PUImportOneUpCellBadgeView *)self setNeedsBadgeUpdate];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PUImportOneUpCellBadgeView;
  [(PUImportOneUpCellBadgeView *)&v4 prepareForReuse];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PUImportOneUpCellBadgeView_prepareForReuse__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUImportOneUpCellBadgeView *)self performBadgeUpdates:v3];
}

uint64_t __45__PUImportOneUpCellBadgeView_prepareForReuse__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBadgeType:0];
  v2 = *(a1 + 32);

  return [v2 setSelectable:1];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = PUImportOneUpCellBadgeView;
  [(PUImportOneUpCellBadgeView *)&v23 layoutSubviews];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(PUImportOneUpCellBadgeView *)self bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  badgeView = [(PUImportOneUpCellBadgeView *)self badgeView];

  if (badgeView)
  {
    badgeContainerView = [(PUImportOneUpCellBadgeView *)self badgeContainerView];
    [badgeContainerView bounds];
    v12 = v11;
    v14 = v13;

    badgeView2 = [(PUImportOneUpCellBadgeView *)self badgeView];
    [badgeView2 bounds];
    v17 = v16;
    v19 = v18;

    badgeContainerView2 = [(PUImportOneUpCellBadgeView *)self badgeContainerView];
    [badgeContainerView2 setFrame:{v12, v14, v17, v19}];
  }

  badgeContainerView3 = [(PUImportOneUpCellBadgeView *)self badgeContainerView];
  [badgeContainerView3 setCenter:{MidX, MidY}];

  spinner = [(PUImportOneUpCellBadgeView *)self spinner];
  [spinner setCenter:{MidX, MidY}];
}

- (CGSize)intrinsicContentSize
{
  v2 = *&PUImportOneUpCellBadgeSize_0;
  v3 = *&PUImportOneUpCellBadgeSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUImportOneUpCellBadgeView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUImportOneUpCellBadgeView;
  v3 = [(PUImportOneUpCellBadgeView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (initWithFrame__onceToken_30674 != -1)
    {
      dispatch_once(&initWithFrame__onceToken_30674, &__block_literal_global_30675);
    }

    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    badgeContainerView = v3->_badgeContainerView;
    v3->_badgeContainerView = v4;

    [(PUImportOneUpCellBadgeView *)v3 addSubview:v3->_badgeContainerView];
  }

  return v3;
}

void __44__PUImportOneUpCellBadgeView_initWithFrame___block_invoke()
{
  v2 = PXImportBadgeViewForTypeAndSelectable();
  [v2 frame];
  PUImportOneUpCellBadgeSize_0 = v0;
  PUImportOneUpCellBadgeSize_1 = v1;
}

@end