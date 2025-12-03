@interface PXPeopleCollectionViewCell
- (CGPoint)_computeCircumferenceMultipliersForAngle:(double)angle;
- (NSUUID)uuid;
- (PXPeopleCollectionViewCell)initWithFrame:(CGRect)frame;
- (PXPeopleCollectionViewCellDelegate)peopleCellDelegate;
- (UIImage)image;
- (void)_updateBadgeViewState;
- (void)_updateFocusRingForced:(BOOL)forced;
- (void)_updateSelection;
- (void)_updateTitleAndFavoriteBadgeForLayoutChange;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFavorite:(BOOL)favorite;
- (void)setImage:(id)image normalizedFaceRect:(CGRect)rect;
- (void)setName:(id)name;
- (void)setSelected:(BOOL)selected;
- (void)setSelectionStyle:(unint64_t)style;
- (void)setTextAlpha:(double)alpha;
- (void)toggleFavorite:(id)favorite;
@end

@implementation PXPeopleCollectionViewCell

- (PXPeopleCollectionViewCellDelegate)peopleCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peopleCellDelegate);

  return WeakRetained;
}

- (void)_updateFocusRingForced:(BOOL)forced
{
  if (forced || [(PXPeopleCollectionViewCell *)self isFocused])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__PXPeopleCollectionViewCell__updateFocusRingForced___block_invoke;
    v4[3] = &unk_1E773BB30;
    v4[4] = self;
    [PXFocusRing updateView:self infoProviderBlock:v4];
  }
}

id __53__PXPeopleCollectionViewCell__updateFocusRingForced___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarView];
  v2 = [v1 layer];
  [v2 cornerRadius];
  v4 = v3;
  v5 = [v1 layer];
  v6 = [v5 cornerCurve];
  v7 = [PXFocusInfo focusInfoWithView:v1 cornerRadius:v6 cornerCurve:v4];

  return v7;
}

- (void)_updateBadgeViewState
{
  isFavorite = [(PXPeopleCollectionViewCell *)self isFavorite];
  selectionStyle = [(PXPeopleCollectionViewCell *)self selectionStyle];
  if (selectionStyle == 1)
  {
    if (isFavorite)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }
  }

  else if (selectionStyle)
  {
    v7 = 0;
  }

  else
  {
    isSelected = [(PXPeopleCollectionViewCell *)self isSelected];
    v6 = 4;
    if (isFavorite)
    {
      v6 = 2;
    }

    if (isSelected)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }
  }

  v8 = [PXPeopleBadgeViewConfiguration alloc];
  traitCollection = [(PXPeopleCollectionViewCell *)self traitCollection];
  [traitCollection displayScale];
  v9 = [(PXPeopleBadgeViewConfiguration *)v8 initWithState:v7 displayScale:self badgeViewDelegate:?];
  badgeView = [(PXPeopleCollectionViewCell *)self badgeView];
  [badgeView setUserData:v9];
}

- (void)_updateTitleAndFavoriteBadgeForLayoutChange
{
  [(PXPeopleCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  badgeView = [(PXPeopleCollectionViewCell *)self badgeView];
  traitCollection = [(PXPeopleCollectionViewCell *)self traitCollection];
  [traitCollection displayScale];
  isFavorite = [(PXPeopleCollectionViewCell *)self isFavorite];
  [(PXPeopleCollectionViewCell *)self _updateBadgeViewState];
  if (isFavorite)
  {
    v13 = 29.0;
  }

  else
  {
    v13 = 24.0;
  }

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  CGRectGetMaxY(v25);
  avatarView = [(PXPeopleCollectionViewCell *)self avatarView];
  [avatarView frame];

  -[PXPeopleCollectionViewCell _computeCircumferenceMultipliersForAngle:](self, "_computeCircumferenceMultipliersForAngle:", dbl_1A5380DA0[[traitCollection layoutDirection] == 1]);
  v16 = v15;
  v18 = v17;
  [badgeView setFrame:{0.0, 0.0, v13, v13}];
  avatarView2 = [(PXPeopleCollectionViewCell *)self avatarView];
  [avatarView2 frame];
  v21 = v16 * v20;
  avatarView3 = [(PXPeopleCollectionViewCell *)self avatarView];
  [avatarView3 frame];
  [badgeView setCenter:{v21, v18 * v23}];

  [(PXPeopleCollectionViewCell *)self nameLabel];
  [objc_claimAutoreleasedReturnValue() font];
  [objc_claimAutoreleasedReturnValue() lineHeight];
  PXFloatCeilingToPixel();
}

- (CGPoint)_computeCircumferenceMultipliersForAngle:(double)angle
{
  v3 = __sincos_stret(angle * 0.0174532925);
  v4 = (1.0 - v3.__sinval) * 0.5;
  v5 = (v3.__cosval + 1.0) * 0.5;
  result.y = v4;
  result.x = v5;
  return result;
}

- (void)_updateSelection
{
  isSelected = [(PXPeopleCollectionViewCell *)self isSelected];
  selectionStyle = [(PXPeopleCollectionViewCell *)self selectionStyle];
  if (selectionStyle == 1)
  {
    highlightOverlayView = [(PXPeopleCollectionViewCell *)self highlightOverlayView];
    [highlightOverlayView setHidden:isSelected ^ 1u];

    v5 = 1.0;
  }

  else
  {
    if (selectionStyle)
    {
      goto LABEL_8;
    }

    if (isSelected)
    {
      v5 = 0.75;
    }

    else
    {
      v5 = 1.0;
    }
  }

  avatarView = [(PXPeopleCollectionViewCell *)self avatarView];
  [avatarView setAlpha:v5];

LABEL_8:

  [(PXPeopleCollectionViewCell *)self _updateBadgeViewState];
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_uuid;
    self->_uuid = uUID;

    uuid = self->_uuid;
  }

  return uuid;
}

- (void)setSelectionStyle:(unint64_t)style
{
  self->_selectionStyle = style;
  highlightOverlayView = [(PXPeopleCollectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setHidden:1];
  if (style == 1 && !highlightOverlayView)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIImageView *)self->_avatarView frame];
    highlightOverlayView = [v5 initWithFrame:?];
    [highlightOverlayView setUserInteractionEnabled:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [highlightOverlayView setBackgroundColor:labelColor];

    [highlightOverlayView setAlpha:0.5];
    [highlightOverlayView setHidden:1];
    [(PXPeopleCollectionViewCell *)self addSubview:highlightOverlayView];
    [(PXPeopleCollectionViewCell *)self setHighlightOverlayView:highlightOverlayView];
    [(PXPeopleCollectionViewCell *)self bringSubviewToFront:highlightOverlayView];
  }

  [(PXPeopleCollectionViewCell *)self _updateSelection];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = PXPeopleCollectionViewCell;
  [(PXPeopleCollectionViewCell *)&v4 setSelected:selected];
  [(PXPeopleCollectionViewCell *)self _updateSelection];
}

- (void)setTextAlpha:(double)alpha
{
  self->_textAlpha = alpha;
  nameLabel = [(PXPeopleCollectionViewCell *)self nameLabel];
  [nameLabel setAlpha:self->_textAlpha];
}

- (UIImage)image
{
  avatarView = [(PXPeopleCollectionViewCell *)self avatarView];
  image = [avatarView image];

  return image;
}

- (void)setImage:(id)image normalizedFaceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  avatarView = [(PXPeopleCollectionViewCell *)self avatarView];
  image = [avatarView image];
  if (image != imageCopy)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    if (CGRectEqualToRect(self->_unitRect, v15))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [avatarView setImage:imageCopy];
    [avatarView setContentMode:v11];
    layer = [avatarView layer];
    [layer setContentsRect:{x, y, width, height}];

    [(PXPeopleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = self->_name;
  v11 = nameCopy;
  if (name != nameCopy || (v7 = [(NSString *)name isEqualToString:nameCopy], v8 = v11, !v7))
  {
    objc_storeStrong(&self->_name, name);
    nameLabel = [(PXPeopleCollectionViewCell *)self nameLabel];
    v10 = [(NSString *)v11 length];
    if (v10)
    {
      [nameLabel setText:v11];
    }

    [nameLabel setHidden:v10 == 0];
    [(PXPeopleCollectionViewCell *)self setNeedsLayout];

    v8 = v11;
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PXPeopleCollectionViewCell;
  [(PXPeopleCollectionViewCell *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  v8 = nextFocusedItem;
  if (nextFocusedItem == self)
  {

LABEL_5:
    [(PXPeopleCollectionViewCell *)self _updateFocusRingForced:1];
    goto LABEL_6;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PXPeopleCollectionViewCell;
  [(PXPeopleCollectionViewCell *)&v4 prepareForReuse];
  [(UIImageView *)self->_avatarView setImage:0];
  name = self->_name;
  self->_name = &stru_1F1741150;

  [(UILabel *)self->_nameLabel setText:&stru_1F1741150];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(PXPeopleCollectionViewCell *)self setHidden:0];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PXPeopleCollectionViewCell;
  [(PXPeopleCollectionViewCell *)&v10 layoutSubviews];
  contentView = [(PXPeopleCollectionViewCell *)self contentView];
  [contentView frame];
  v5 = v4;

  avatarView = [(PXPeopleCollectionViewCell *)self avatarView];
  [avatarView setFrame:{0.0, 0.0, v5, v5}];
  layer = [avatarView layer];
  [layer setCornerRadius:v5 * 0.5];

  highlightOverlayView = [(PXPeopleCollectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setFrame:{0.0, 0.0, v5, v5}];
  layer2 = [highlightOverlayView layer];
  [layer2 setCornerRadius:v5 * 0.5];

  [(PXPeopleCollectionViewCell *)self _updateTitleAndFavoriteBadgeForLayoutChange];
  [(PXPeopleCollectionViewCell *)self _updateFocusRingForced:0];
}

- (void)setFavorite:(BOOL)favorite
{
  if (self->_favorite != favorite)
  {
    self->_favorite = favorite;
    [(PXPeopleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)toggleFavorite:(id)favorite
{
  peopleCellDelegate = [(PXPeopleCollectionViewCell *)self peopleCellDelegate];
  [peopleCellDelegate toggleFavoriteForCell:self];
}

- (PXPeopleCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v31.receiver = self;
  v31.super_class = PXPeopleCollectionViewCell;
  v5 = [(PXPeopleCollectionViewCell *)&v31 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    if (initWithFrame__onceToken != -1)
    {
      dispatch_once(&initWithFrame__onceToken, &__block_literal_global_23372);
    }

    *(v5 + 81) = 0;
    *(v5 + 82) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v5 + 664) = _Q0;
    contentView = [v5 contentView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v13 = *(v5 + 87);
    *(v5 + 87) = v12;

    [*(v5 + 87) setContentMode:2];
    v14 = *(v5 + 87);
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [v14 setBackgroundColor:quaternarySystemFillColor];

    [*(v5 + 87) setClipsToBounds:1];
    layer = [*(v5 + 87) layer];
    v17 = layer;
    if (height >= width)
    {
      v18 = width;
    }

    else
    {
      v18 = height;
    }

    [layer setCornerRadius:v18 * 0.5];

    [contentView addSubview:*(v5 + 87)];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v19 setTextAlignment:1];
    [v19 setHidden:1];
    [v19 setText:&stru_1F1741150];
    [v19 setFont:initWithFrame__font];
    [contentView addSubview:v19];
    v20 = *(v5 + 92);
    *(v5 + 92) = v19;
    v21 = v19;

    layer2 = [*(v5 + 92) layer];
    [layer2 setShouldRasterize:1];

    traitCollection = [v5 traitCollection];
    [traitCollection displayScale];
    v25 = v24;

    layer3 = [*(v5 + 92) layer];
    [layer3 setRasterizationScale:v25];

    v27 = *(v5 + 88);
    *(v5 + 88) = &stru_1F1741150;

    [v5 setSelectionStyle:1];
    v28 = objc_alloc_init(PXPeopleBadgeView);
    v29 = *(v5 + 94);
    *(v5 + 94) = v28;

    [*(v5 + 94) setBadgeViewDelegate:v5];
    [v5 addSubview:*(v5 + 94)];
  }

  return v5;
}

void __44__PXPeopleCollectionViewCell_initWithFrame___block_invoke()
{
  v0 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v1 = [v0 systemFontOfSize:?];
  v2 = initWithFrame__font;
  initWithFrame__font = v1;
}

@end