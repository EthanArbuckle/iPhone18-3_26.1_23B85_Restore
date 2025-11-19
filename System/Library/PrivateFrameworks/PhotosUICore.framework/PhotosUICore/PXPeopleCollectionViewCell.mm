@interface PXPeopleCollectionViewCell
- (CGPoint)_computeCircumferenceMultipliersForAngle:(double)a3;
- (NSUUID)uuid;
- (PXPeopleCollectionViewCell)initWithFrame:(CGRect)a3;
- (PXPeopleCollectionViewCellDelegate)peopleCellDelegate;
- (UIImage)image;
- (void)_updateBadgeViewState;
- (void)_updateFocusRingForced:(BOOL)a3;
- (void)_updateSelection;
- (void)_updateTitleAndFavoriteBadgeForLayoutChange;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFavorite:(BOOL)a3;
- (void)setImage:(id)a3 normalizedFaceRect:(CGRect)a4;
- (void)setName:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectionStyle:(unint64_t)a3;
- (void)setTextAlpha:(double)a3;
- (void)toggleFavorite:(id)a3;
@end

@implementation PXPeopleCollectionViewCell

- (PXPeopleCollectionViewCellDelegate)peopleCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peopleCellDelegate);

  return WeakRetained;
}

- (void)_updateFocusRingForced:(BOOL)a3
{
  if (a3 || [(PXPeopleCollectionViewCell *)self isFocused])
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
  v3 = [(PXPeopleCollectionViewCell *)self isFavorite];
  v4 = [(PXPeopleCollectionViewCell *)self selectionStyle];
  if (v4 == 1)
  {
    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }
  }

  else if (v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(PXPeopleCollectionViewCell *)self isSelected];
    v6 = 4;
    if (v3)
    {
      v6 = 2;
    }

    if (v5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }
  }

  v8 = [PXPeopleBadgeViewConfiguration alloc];
  v11 = [(PXPeopleCollectionViewCell *)self traitCollection];
  [v11 displayScale];
  v9 = [(PXPeopleBadgeViewConfiguration *)v8 initWithState:v7 displayScale:self badgeViewDelegate:?];
  v10 = [(PXPeopleCollectionViewCell *)self badgeView];
  [v10 setUserData:v9];
}

- (void)_updateTitleAndFavoriteBadgeForLayoutChange
{
  [(PXPeopleCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v24 = [(PXPeopleCollectionViewCell *)self badgeView];
  v11 = [(PXPeopleCollectionViewCell *)self traitCollection];
  [v11 displayScale];
  v12 = [(PXPeopleCollectionViewCell *)self isFavorite];
  [(PXPeopleCollectionViewCell *)self _updateBadgeViewState];
  if (v12)
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
  v14 = [(PXPeopleCollectionViewCell *)self avatarView];
  [v14 frame];

  -[PXPeopleCollectionViewCell _computeCircumferenceMultipliersForAngle:](self, "_computeCircumferenceMultipliersForAngle:", dbl_1A5380DA0[[v11 layoutDirection] == 1]);
  v16 = v15;
  v18 = v17;
  [v24 setFrame:{0.0, 0.0, v13, v13}];
  v19 = [(PXPeopleCollectionViewCell *)self avatarView];
  [v19 frame];
  v21 = v16 * v20;
  v22 = [(PXPeopleCollectionViewCell *)self avatarView];
  [v22 frame];
  [v24 setCenter:{v21, v18 * v23}];

  [(PXPeopleCollectionViewCell *)self nameLabel];
  [objc_claimAutoreleasedReturnValue() font];
  [objc_claimAutoreleasedReturnValue() lineHeight];
  PXFloatCeilingToPixel();
}

- (CGPoint)_computeCircumferenceMultipliersForAngle:(double)a3
{
  v3 = __sincos_stret(a3 * 0.0174532925);
  v4 = (1.0 - v3.__sinval) * 0.5;
  v5 = (v3.__cosval + 1.0) * 0.5;
  result.y = v4;
  result.x = v5;
  return result;
}

- (void)_updateSelection
{
  v3 = [(PXPeopleCollectionViewCell *)self isSelected];
  v4 = [(PXPeopleCollectionViewCell *)self selectionStyle];
  if (v4 == 1)
  {
    v6 = [(PXPeopleCollectionViewCell *)self highlightOverlayView];
    [v6 setHidden:v3 ^ 1u];

    v5 = 1.0;
  }

  else
  {
    if (v4)
    {
      goto LABEL_8;
    }

    if (v3)
    {
      v5 = 0.75;
    }

    else
    {
      v5 = 1.0;
    }
  }

  v7 = [(PXPeopleCollectionViewCell *)self avatarView];
  [v7 setAlpha:v5];

LABEL_8:

  [(PXPeopleCollectionViewCell *)self _updateBadgeViewState];
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_uuid;
    self->_uuid = v4;

    uuid = self->_uuid;
  }

  return uuid;
}

- (void)setSelectionStyle:(unint64_t)a3
{
  self->_selectionStyle = a3;
  v7 = [(PXPeopleCollectionViewCell *)self highlightOverlayView];
  [v7 setHidden:1];
  if (a3 == 1 && !v7)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIImageView *)self->_avatarView frame];
    v7 = [v5 initWithFrame:?];
    [v7 setUserInteractionEnabled:0];
    v6 = [MEMORY[0x1E69DC888] labelColor];
    [v7 setBackgroundColor:v6];

    [v7 setAlpha:0.5];
    [v7 setHidden:1];
    [(PXPeopleCollectionViewCell *)self addSubview:v7];
    [(PXPeopleCollectionViewCell *)self setHighlightOverlayView:v7];
    [(PXPeopleCollectionViewCell *)self bringSubviewToFront:v7];
  }

  [(PXPeopleCollectionViewCell *)self _updateSelection];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXPeopleCollectionViewCell;
  [(PXPeopleCollectionViewCell *)&v4 setSelected:a3];
  [(PXPeopleCollectionViewCell *)self _updateSelection];
}

- (void)setTextAlpha:(double)a3
{
  self->_textAlpha = a3;
  v4 = [(PXPeopleCollectionViewCell *)self nameLabel];
  [v4 setAlpha:self->_textAlpha];
}

- (UIImage)image
{
  v2 = [(PXPeopleCollectionViewCell *)self avatarView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3 normalizedFaceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v9 = [(PXPeopleCollectionViewCell *)self avatarView];
  v10 = [v9 image];
  if (v10 != v13)
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

    [v9 setImage:v13];
    [v9 setContentMode:v11];
    v12 = [v9 layer];
    [v12 setContentsRect:{x, y, width, height}];

    [(PXPeopleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  name = self->_name;
  v11 = v5;
  if (name != v5 || (v7 = [(NSString *)name isEqualToString:v5], v8 = v11, !v7))
  {
    objc_storeStrong(&self->_name, a3);
    v9 = [(PXPeopleCollectionViewCell *)self nameLabel];
    v10 = [(NSString *)v11 length];
    if (v10)
    {
      [v9 setText:v11];
    }

    [v9 setHidden:v10 == 0];
    [(PXPeopleCollectionViewCell *)self setNeedsLayout];

    v8 = v11;
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PXPeopleCollectionViewCell;
  [(PXPeopleCollectionViewCell *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    [(PXPeopleCollectionViewCell *)self _updateFocusRingForced:1];
    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedItem];

  if (v9 == self)
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
  v3 = [(PXPeopleCollectionViewCell *)self contentView];
  [v3 frame];
  v5 = v4;

  v6 = [(PXPeopleCollectionViewCell *)self avatarView];
  [v6 setFrame:{0.0, 0.0, v5, v5}];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5 * 0.5];

  v8 = [(PXPeopleCollectionViewCell *)self highlightOverlayView];
  [v8 setFrame:{0.0, 0.0, v5, v5}];
  v9 = [v8 layer];
  [v9 setCornerRadius:v5 * 0.5];

  [(PXPeopleCollectionViewCell *)self _updateTitleAndFavoriteBadgeForLayoutChange];
  [(PXPeopleCollectionViewCell *)self _updateFocusRingForced:0];
}

- (void)setFavorite:(BOOL)a3
{
  if (self->_favorite != a3)
  {
    self->_favorite = a3;
    [(PXPeopleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)toggleFavorite:(id)a3
{
  v4 = [(PXPeopleCollectionViewCell *)self peopleCellDelegate];
  [v4 toggleFavoriteForCell:self];
}

- (PXPeopleCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v31.receiver = self;
  v31.super_class = PXPeopleCollectionViewCell;
  v5 = [(PXPeopleCollectionViewCell *)&v31 initWithFrame:a3.origin.x, a3.origin.y];
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
    v11 = [v5 contentView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v13 = *(v5 + 87);
    *(v5 + 87) = v12;

    [*(v5 + 87) setContentMode:2];
    v14 = *(v5 + 87);
    v15 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [v14 setBackgroundColor:v15];

    [*(v5 + 87) setClipsToBounds:1];
    v16 = [*(v5 + 87) layer];
    v17 = v16;
    if (height >= width)
    {
      v18 = width;
    }

    else
    {
      v18 = height;
    }

    [v16 setCornerRadius:v18 * 0.5];

    [v11 addSubview:*(v5 + 87)];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v19 setTextAlignment:1];
    [v19 setHidden:1];
    [v19 setText:&stru_1F1741150];
    [v19 setFont:initWithFrame__font];
    [v11 addSubview:v19];
    v20 = *(v5 + 92);
    *(v5 + 92) = v19;
    v21 = v19;

    v22 = [*(v5 + 92) layer];
    [v22 setShouldRasterize:1];

    v23 = [v5 traitCollection];
    [v23 displayScale];
    v25 = v24;

    v26 = [*(v5 + 92) layer];
    [v26 setRasterizationScale:v25];

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