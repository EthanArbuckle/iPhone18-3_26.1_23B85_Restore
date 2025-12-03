@interface PUReviewScreenDoneButton
+ (id)doneButton;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)tappableEdgeInsets;
- (void)_updateIfNeeded;
- (void)layoutSubviews;
- (void)setPreferredStyle:(unint64_t)style;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation PUReviewScreenDoneButton

+ (id)doneButton
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___PUReviewScreenDoneButton;
  v2 = objc_msgSendSuper2(&v5, sel_buttonWithType_, 1);
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  [v2 setTintColor:systemYellowColor];

  [v2 set_needsUpdate:1];

  return v2;
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateIfNeeded
{
  if (![(PUReviewScreenDoneButton *)self _needsUpdate])
  {
    return;
  }

  preferredStyle = [(PUReviewScreenDoneButton *)self preferredStyle];
  if (preferredStyle)
  {
    if (preferredStyle != 1)
    {
      v5 = &stru_1F2AC6818;
      goto LABEL_9;
    }

    v4 = @"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_DONE_OR_ICON";
  }

  else
  {
    v4 = @"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_DONE_OR_ICON_iPad";
  }

  v5 = PULocalizedString(v4);
LABEL_9:
  v11 = v5;
  if ([(__CFString *)v5 length])
  {
    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
    titleLabel = [(PUReviewScreenDoneButton *)self titleLabel];
    [titleLabel setFont:v6];

    [(PUReviewScreenDoneButton *)self setImage:0 forState:0];
    selfCopy2 = self;
    v9 = v11;
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"PUReviewScreenDoneButton"];
    [(PUReviewScreenDoneButton *)self setImage:v10 forState:0];

    v9 = &stru_1F2AC6818;
    selfCopy2 = self;
  }

  [(PUReviewScreenDoneButton *)selfCopy2 setTitle:v9 forState:0];
  [(PUReviewScreenDoneButton *)self set_needsUpdate:0];
}

- (void)setPreferredStyle:(unint64_t)style
{
  if (self->_preferredStyle != style)
  {
    self->_preferredStyle = style;
    [(PUReviewScreenDoneButton *)self set_needsUpdate:1];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(PUReviewScreenDoneButton *)self setContentEdgeInsets:?];

    [(PUReviewScreenDoneButton *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PUReviewScreenDoneButton *)self _updateIfNeeded];
  v5.receiver = self;
  v5.super_class = PUReviewScreenDoneButton;
  [(PUReviewScreenDoneButton *)&v5 intrinsicContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(PUReviewScreenDoneButton *)self _updateIfNeeded];
  v3.receiver = self;
  v3.super_class = PUReviewScreenDoneButton;
  [(PUReviewScreenDoneButton *)&v3 layoutSubviews];
}

@end