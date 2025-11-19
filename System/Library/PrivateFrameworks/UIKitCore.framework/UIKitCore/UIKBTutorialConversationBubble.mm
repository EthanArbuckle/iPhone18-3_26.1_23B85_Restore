@interface UIKBTutorialConversationBubble
- (CGPoint)originationPoint;
- (CGPoint)tailAnchorPoint;
- (CGPoint)tailAttachmentPoint;
- (CGRect)pillRect;
- (CGSize)intrinsicContentSize;
- (CGSize)parentAvatarViewSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)contentViewPadding;
- (UIKBTutorialConversationBubble)initWithText:(id)a3 originationDirection:(int64_t)a4;
- (double)balloonTailWidth;
- (id)_pathForTailedBalloonSegmentWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 anchorPoint:(CGPoint)a5 originationDirection:(int64_t)a6;
- (void)_updateUserInterfaceStyles;
- (void)layoutSubviews;
@end

@implementation UIKBTutorialConversationBubble

- (UIKBTutorialConversationBubble)initWithText:(id)a3 originationDirection:(int64_t)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = UIKBTutorialConversationBubble;
  v7 = [(UIView *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_originationDirection = a4;
    v9 = objc_alloc_init(UILabel);
    summaryLabel = v8->_summaryLabel;
    v8->_summaryLabel = v9;

    [(UILabel *)v8->_summaryLabel setTextAlignment:1];
    [(UILabel *)v8->_summaryLabel setLineBreakMode:0];
    [(UILabel *)v8->_summaryLabel setNumberOfLines:2];
    v11 = [off_1E70ECC18 systemFontOfSize:12.0];
    [(UILabel *)v8->_summaryLabel setFont:v11];

    [(UILabel *)v8->_summaryLabel setText:v6];
    [(UIView *)v8 addSubview:v8->_summaryLabel];
    objc_storeStrong(&v8->_contentView, v8->_summaryLabel);
    v12 = [[UIKBTutorialConversationBubbleShadowLayer alloc] initWithShadowType:0];
    broadShadowLayer = v8->_broadShadowLayer;
    v8->_broadShadowLayer = v12;

    v14 = [[UIKBTutorialConversationBubbleShadowLayer alloc] initWithShadowType:1];
    tightShadowLayer = v8->_tightShadowLayer;
    v8->_tightShadowLayer = v14;

    v16 = objc_alloc_init(UIKBTutorialConversationBubbleBackdropLayer);
    backdropLayer = v8->_backdropLayer;
    v8->_backdropLayer = v16;

    v18 = objc_alloc_init(MEMORY[0x1E69794A0]);
    backdropMaskShapeLayer = v8->_backdropMaskShapeLayer;
    v8->_backdropMaskShapeLayer = v18;

    [(UIKBTutorialConversationBubbleBackdropLayer *)v8->_backdropLayer setMask:v8->_backdropMaskShapeLayer];
    [(UIKBTutorialConversationBubble *)v8 _updateUserInterfaceStyles];
    v20 = [(UIView *)v8 layer];
    [v20 addSublayer:v8->_broadShadowLayer];

    v21 = [(UIView *)v8 layer];
    [v21 addSublayer:v8->_tightShadowLayer];

    v22 = v8->_backdropLayer;
    v23 = [(UIView *)v8->_contentView layer];
    [(UIKBTutorialConversationBubbleBackdropLayer *)v22 addSublayer:v23];

    v24 = [(UIView *)v8 layer];
    [v24 addSublayer:v8->_backdropLayer];
  }

  return v8;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = UIKBTutorialConversationBubble;
  [(UIView *)&v50 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIKBTutorialConversationBubbleShadowLayer *)self->_broadShadowLayer setFrame:?];
  [(UIKBTutorialConversationBubbleShadowLayer *)self->_tightShadowLayer setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setFrame:v4, v6, v8, v10];
  [(UIKBTutorialConversationBubbleBackdropLayer *)self->_backdropLayer setFrame:v4, v6, v8, v10];
  [(UIKBTutorialConversationBubble *)self contentViewPadding];
  v43 = v11;
  v45 = v12;
  v39 = v13;
  v41 = v14;
  [(UIKBTutorialConversationBubble *)self balloonTailHeight];
  [(UIKBTutorialConversationBubble *)self pillCornerRadius];
  v38 = v15;
  originationDirection = self->_originationDirection;
  [(UIKBTutorialConversationBubble *)self pillRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(UIKBTutorialConversationBubble *)self tailAnchorPoint];
  v51.origin.x = v4 + v39;
  v47 = v4 + v39;
  v25 = v6 + v43;
  v26 = v8 - v39 - v41;
  v27 = v10 - v43 - v45;
  v51.origin.y = v25;
  v51.size.width = v26;
  v51.size.height = v27;
  Width = CGRectGetWidth(v51);
  v29 = [(UIKBTutorialConversationBubble *)self summaryLabel];
  [v29 setPreferredMaxLayoutWidth:Width];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __48__UIKBTutorialConversationBubble_layoutSubviews__block_invoke;
  v49[3] = &unk_1E70F3B20;
  v49[4] = self;
  *&v49[5] = v47;
  *&v49[6] = v25;
  *&v49[7] = v26;
  *&v49[8] = v27;
  [UIView performWithoutAnimation:v49];
  v52.origin.x = v18;
  v52.origin.y = v20;
  v52.size.width = v22;
  v52.size.height = v24;
  CGRectGetMaxX(v52);
  v53.origin.x = v18;
  v53.origin.y = v20;
  v53.size.width = v22;
  v53.size.height = v24;
  CGRectGetMaxX(v53);
  v54.origin.x = v18;
  v54.origin.y = v20;
  v54.size.width = v22;
  v54.size.height = v24;
  MaxY = CGRectGetMaxY(v54);
  v55.origin.x = v18;
  v55.origin.y = v20;
  v55.size.width = v22;
  v55.size.height = v24;
  MaxX = CGRectGetMaxX(v55);
  v56.origin.x = v18;
  v56.origin.y = v20;
  v56.size.width = v22;
  v56.size.height = v24;
  MinY = CGRectGetMinY(v56);
  v57.origin.x = v18;
  v57.origin.y = v20;
  v57.size.width = v22;
  v57.size.height = v24;
  v42 = CGRectGetMaxX(v57);
  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  v40 = CGRectGetMaxY(v58);
  v59.origin.x = v18;
  v59.origin.y = v20;
  v59.size.width = v22;
  v59.size.height = v24;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = v18;
  v60.origin.y = v20;
  v60.size.width = v22;
  v60.size.height = v24;
  v44 = CGRectGetMaxY(v60);
  v61.origin.x = v18;
  v61.origin.y = v20;
  v61.size.width = v22;
  v61.size.height = v24;
  v48 = CGRectGetMinX(v61);
  v62.origin.x = v18;
  v62.origin.y = v20;
  v62.size.width = v22;
  v62.size.height = v24;
  v32 = CGRectGetMinY(v62);
  v33 = objc_alloc_init(UIBezierPath);
  [(UIBezierPath *)v33 moveToPoint:v38 + v18, v20];
  [(UIBezierPath *)v33 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:MinY, v38, v38];
  if (originationDirection == 1)
  {
    [(UIBezierPath *)v33 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v42 clockwise:v40, v38, v38];
    [(UIBezierPath *)v33 _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:v44, v38, v38];
    [(UIBezierPath *)v33 currentPoint];
    v34 = [UIKBTutorialConversationBubble _pathForTailedBalloonSegmentWithStartPoint:"_pathForTailedBalloonSegmentWithStartPoint:endPoint:anchorPoint:originationDirection:" endPoint:self->_originationDirection anchorPoint:? originationDirection:?];
    [(UIBezierPath *)v33 appendPath:v34];
  }

  else
  {
    [(UIBezierPath *)v33 currentPoint];
    v35 = [UIKBTutorialConversationBubble _pathForTailedBalloonSegmentWithStartPoint:"_pathForTailedBalloonSegmentWithStartPoint:endPoint:anchorPoint:originationDirection:" endPoint:self->_originationDirection anchorPoint:? originationDirection:?];
    [(UIBezierPath *)v33 appendPath:v35];

    [(UIBezierPath *)v33 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v42 clockwise:v40, v38, v38];
    [(UIBezierPath *)v33 _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:v44, v38, v38];
  }

  [(UIBezierPath *)v33 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v48 clockwise:v32, v38, v38, *&MaxY];
  [(UIBezierPath *)v33 addLineToPoint:v38 + v18, v20];
  v36 = [(UIBezierPath *)v33 CGPath];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setPath:v36];
  [(UIKBTutorialConversationBubbleShadowLayer *)self->_broadShadowLayer setShadowPath:v36];
  [(UIKBTutorialConversationBubbleShadowLayer *)self->_tightShadowLayer setShadowPath:v36];
}

void __48__UIKBTutorialConversationBubble_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIKBTutorialConversationBubble *)self contentViewPadding];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIKBTutorialConversationBubble *)self balloonTailWidth];
  [(UIKBTutorialConversationBubble *)self balloonTailHeight];
  v14 = v13;
  [(UIKBTutorialConversationBubble *)self pillCornerRadius];
  v15 = [(UIKBTutorialConversationBubble *)self contentView];
  [v15 systemLayoutSizeFittingSize:{width - v8 - v12 - v14, height - v6 - v10}];

  v16 = [(UIKBTutorialConversationBubble *)self summaryLabel];
  [v16 numberOfLines];

  UICeilToViewScale(self);
  v18 = v17;
  UICeilToViewScale(self);
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self bounds];

  [(UIKBTutorialConversationBubble *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_updateUserInterfaceStyles
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  [(UIKBTutorialConversationBubbleBackdropLayer *)self->_backdropLayer setUserInterfaceStyle:v4];
  [(UIKBTutorialConversationBubbleShadowLayer *)self->_broadShadowLayer setUserInterfaceStyle:v4];
  tightShadowLayer = self->_tightShadowLayer;

  [(UIKBTutorialConversationBubbleShadowLayer *)tightShadowLayer setUserInterfaceStyle:v4];
}

- (CGPoint)tailAnchorPoint
{
  [(UIView *)self bounds];
  v24.origin.x = v3;
  v24.origin.y = v4;
  v24.size.width = v5;
  v24.size.height = v6;
  [(UIKBTutorialConversationBubble *)self pillRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  originationDirection = self->_originationDirection;
  [(UIKBTutorialConversationBubble *)self balloonTailWidth];
  v17 = v16;
  [(UIKBTutorialConversationBubble *)self pillCornerRadius];
  v19 = v18;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  MinY = CGRectGetMinY(v26);
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  CGRectGetMinY(v27);
  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  MaxY = CGRectGetMaxY(v28);
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  CGRectGetMaxY(v29);
  if (originationDirection == 1)
  {
    MinX = CGRectGetMinX(v24);
  }

  else
  {
    MinX = CGRectGetMaxX(v24);
  }

  v23 = v17 * 0.354320161 + v19 + MinY;
  if (v23 < MaxY - v19 + v17 * -0.645679839)
  {
    v23 = MaxY - v19 + v17 * -0.645679839;
  }

  result.y = v23;
  result.x = MinX;
  return result;
}

- (id)_pathForTailedBalloonSegmentWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 anchorPoint:(CGPoint)a5 originationDirection:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v11 = a3.y;
  v12 = a3.x;
  v13 = objc_alloc_init(UIBezierPath);
  [(UIBezierPath *)v13 moveToPoint:v12, v11];
  if (a6 == 1)
  {
    [(UIBezierPath *)v13 addLineToPoint:x, y];
    y = v9 + (y - v9) * 0.5;
    x = v10;
  }

  else
  {
    [(UIBezierPath *)v13 addLineToPoint:v12, v11 + (y - v11) * 0.5];
  }

  [(UIBezierPath *)v13 addLineToPoint:x, y];
  [(UIBezierPath *)v13 addLineToPoint:v10, v9];

  return v13;
}

- (CGRect)pillRect
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIKBTutorialConversationBubble *)self balloonTailWidth];
  v12 = 0.0;
  if (self->_originationDirection == 1)
  {
    v12 = v11;
  }

  v13 = v8 - v11;
  v14 = v4 + v12;
  v15 = v6;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UIEdgeInsets)contentViewPadding
{
  v2 = 21.0;
  if (self->_originationDirection == 1)
  {
    v3 = 7.0;
  }

  else
  {
    v2 = 7.0;
    v3 = 14.0;
  }

  v4 = 5.0;
  v5 = 5.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (double)balloonTailWidth
{
  [(UIKBTutorialConversationBubble *)self pillCornerRadius];

  UIRoundToViewScale(self);
  return result;
}

- (CGPoint)originationPoint
{
  x = self->_originationPoint.x;
  y = self->_originationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tailAttachmentPoint
{
  x = self->_tailAttachmentPoint.x;
  y = self->_tailAttachmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)parentAvatarViewSize
{
  width = self->_parentAvatarViewSize.width;
  height = self->_parentAvatarViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end