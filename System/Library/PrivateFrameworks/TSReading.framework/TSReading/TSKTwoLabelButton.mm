@interface TSKTwoLabelButton
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)p_syncButtonState;
@end

@implementation TSKTwoLabelButton

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKTwoLabelButton;
  [(TSKTwoLabelButton *)&v3 dealloc];
}

- (void)p_syncButtonState
{
  state = [(TSKTwoLabelButton *)self state];
  v4 = [(TSKTwoLabelButton *)self titleColorForState:state];
  v5 = [(TSKTwoLabelButton *)self titleShadowColorForState:state];
  font = [(UILabel *)[(TSKTwoLabelButton *)self secondLabel] font];
  [(UILabel *)self->mSecondLabel setShadowColor:v5];
  [-[TSKTwoLabelButton titleLabel](self "titleLabel")];
  [(UILabel *)self->mSecondLabel setShadowOffset:?];
  [(UILabel *)self->mSecondLabel setFont:font];
  if (state == 1)
  {
    [(UILabel *)self->mSecondLabel setTextColor:v4];
    [(UILabel *)self->mSecondLabel setShadowOffset:0.0, -1.0];
    mImageView = self->mImageView;
    if (!mImageView)
    {
      return;
    }

    v8 = &OBJC_IVAR___TSKTwoLabelButton_mHighlightedStateImage;
    goto LABEL_9;
  }

  if (self->mSecondLabelTextColor)
  {
    [(UILabel *)self->mSecondLabel setTextColor:?];
  }

  mImageView = self->mImageView;
  if (mImageView)
  {
    v8 = &OBJC_IVAR___TSKTwoLabelButton_mNormalStateImage;
    if (state == 2)
    {
      v8 = &OBJC_IVAR___TSKTwoLabelButton_mDisabledStateImage;
    }

LABEL_9:
    v9 = *(&self->super.super.super.super.super.isa + *v8);

    [(UIImageView *)mImageView setImage:v9];
  }
}

- (void)layoutSubviews
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (self->mImageView)
  {
    [(TSKTwoLabelButton *)self addSubview:?];
    [(TSKTwoLabelButton *)self setContentHorizontalAlignment:1];
    [(TSKTwoLabelButton *)self setContentVerticalAlignment:1];
    v37 = *(MEMORY[0x277CBF3A0] + 8);
    v38 = *MEMORY[0x277CBF3A0];
    [(TSKTwoLabelButton *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    currentTitle = [(TSKTwoLabelButton *)self currentTitle];
    v40 = *MEMORY[0x277D740A8];
    v41[0] = [-[TSKTwoLabelButton titleLabel](self "titleLabel")];
    [currentTitle sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, &v40, 1)}];
    v13 = v12;
    v33 = v12;
    v15 = v14;
    [(UIImageView *)self->mImageView frame];
    v18 = v17;
    v19 = v16;
    v20 = v13 + 0.0 + v17;
    v32 = v15;
    if (v15 <= v16)
    {
      v15 = v16;
    }

    v35 = v6;
    v36 = v4;
    v42.origin.x = v4;
    v42.origin.y = v6;
    v34 = v8;
    v42.size.width = v8;
    v42.size.height = v10;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = v4;
    v43.origin.y = v6;
    v43.size.width = v8;
    v43.size.height = v10;
    MidY = CGRectGetMidY(v43);
    v44.origin.x = v38;
    v44.origin.y = v37;
    v44.size.width = v20;
    v44.size.height = v15;
    v22 = CGRectGetMidX(v44);
    v45.origin.x = v38;
    v45.origin.y = v37;
    v45.size.width = v20;
    v45.size.height = v15;
    v23 = MidY - CGRectGetMidY(v45);
    v46.origin.x = v38;
    v46.origin.y = v37;
    v46.size.width = v20;
    v46.size.height = v15;
    v47 = CGRectOffset(v46, MidX - v22, v23);
    y = v47.origin.y;
    if (v47.origin.x >= 0.0)
    {
      x = v47.origin.x;
    }

    else
    {
      x = 5.0;
    }

    v26 = x;
    v28 = v32;
    v27 = v33;
    v29 = CGRectGetMaxX(v47) + 0.0;
    v48.origin.x = v29;
    v48.origin.y = y + 1.0;
    v48.size.width = v18;
    v48.size.height = v19;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.y = v35;
    v49.origin.x = v36;
    v49.size.width = v34;
    v49.size.height = v10;
    if (MaxX > CGRectGetMaxX(v49) + -5.0)
    {
      v29 = v34 - (v18 + 5.0);
    }

    [(TSKTwoLabelButton *)self setTitleEdgeInsets:y, x, 0.0, *&MidX];
    [(UIImageView *)self->mImageView setFrame:v29, y + 1.0, v18, v19];
  }

  v39.receiver = self;
  v39.super_class = TSKTwoLabelButton;
  [(TSKTwoLabelButton *)&v39 layoutSubviews];
  [(TSKTwoLabelButton *)self p_syncButtonState];
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = TSKTwoLabelButton;
  v5 = [(TSKTwoLabelButton *)&v7 beginTrackingWithTouch:touch withEvent:event];
  [(TSKTwoLabelButton *)self p_syncButtonState];
  return v5;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = TSKTwoLabelButton;
  v5 = [(TSKTwoLabelButton *)&v7 continueTrackingWithTouch:touch withEvent:event];
  [(TSKTwoLabelButton *)self p_syncButtonState];
  return v5;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TSKTwoLabelButton;
  [(TSKTwoLabelButton *)&v5 endTrackingWithTouch:touch withEvent:event];
  [(TSKTwoLabelButton *)self p_syncButtonState];
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = TSKTwoLabelButton;
  [(TSKTwoLabelButton *)&v4 cancelTrackingWithEvent:event];
  [(TSKTwoLabelButton *)self p_syncButtonState];
}

@end