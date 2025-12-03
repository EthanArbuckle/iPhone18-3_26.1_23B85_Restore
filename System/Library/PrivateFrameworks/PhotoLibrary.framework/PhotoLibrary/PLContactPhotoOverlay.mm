@interface PLContactPhotoOverlay
- (CGRect)inscribingBounds;
- (PLContactPhotoOverlay)initWithCoder:(id)coder;
- (PLContactPhotoOverlay)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)overlayEdgeInsets;
- (void)_commonPLContactPhotoOverlayInitialization;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PLContactPhotoOverlay

- (CGRect)inscribingBounds
{
  [(PLContactPhotoOverlay *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v6 = CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v7 = CGRectGetHeight(v17);
  if (v6 < v7)
  {
    v7 = v6;
  }

  v8 = v7 + -30.0;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = CGRectGetWidth(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v8;
  v19.size.height = v8;
  v10 = (v9 - CGRectGetWidth(v19)) * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v11 = CGRectGetHeight(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v8;
  v21.size.height = v8;
  v12 = (v11 - CGRectGetHeight(v21)) * 0.5;
  v13 = v10;
  v14 = v8;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PLContactPhotoOverlay;
  [(PLContactPhotoOverlay *)&v29 layoutSubviews];
  [(PLContactPhotoOverlay *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel bounds];
  UIRectCenteredIntegralRectScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  [(UILabel *)self->_titleLabel setFrame:v12, CGRectGetMinY(v30) + 64.0, v14, v16, 0];
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v17 = CGRectGetMinX(v31) + 15.0;
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  [(UIImageView *)self->__avatarPreview setFrame:v17, CGRectGetMinY(v32) + 30.0, 60.0, 60.0];
  [(PLContactPhotoOverlay *)self inscribingBounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [MEMORY[0x277D75208] bezierPathWithRect:{v4, v6, v8, v10}];
  [v26 appendPath:{objc_msgSend(MEMORY[0x277D75208], "bezierPathWithOvalInRect:", v19, v21, v23, v25)}];
  [v26 setUsesEvenOddFillRule:1];
  circularLayer = [(PLContactPhotoOverlay *)self circularLayer];
  if (!circularLayer)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    [layer setPath:{objc_msgSend(v26, "CGPath")}];
    [layer setFillRule:*MEMORY[0x277CDA248]];
    [layer setFillColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "colorWithRed:green:blue:alpha:", 0.043, 0.043, 0.043, 0.73), "CGColor")}];
    [-[PLContactPhotoOverlay layer](self "layer")];
    [(PLContactPhotoOverlay *)self bringSubviewToFront:self->_titleLabel];
    [(PLContactPhotoOverlay *)self setCircularLayer:layer];
  }

  -[CAShapeLayer setPath:](circularLayer, "setPath:", [v26 CGPath]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLContactPhotoOverlay;
  [(PLContactPhotoOverlay *)&v3 dealloc];
}

- (PLContactPhotoOverlay)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PLContactPhotoOverlay;
  v3 = [(PLContactPhotoOverlay *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PLContactPhotoOverlay *)v3 _commonPLContactPhotoOverlayInitialization];
  }

  return v4;
}

- (PLContactPhotoOverlay)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLContactPhotoOverlay;
  v3 = [(PLContactPhotoOverlay *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLContactPhotoOverlay *)v3 _commonPLContactPhotoOverlayInitialization];
  }

  return v4;
}

- (void)_commonPLContactPhotoOverlayInitialization
{
  -[PLContactPhotoOverlay setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  self->_titleLabel = v8;
  -[UILabel setFont:](v8, "setFont:", [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D76918]), 18.0}]);
  -[UILabel setTextColor:](self->_titleLabel, "setTextColor:", [MEMORY[0x277D75348] whiteColor]);
  [(PLContactPhotoOverlay *)self addSubview:self->_titleLabel];
  v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  self->__avatarPreview = v9;

  [(PLContactPhotoOverlay *)self addSubview:v9];
}

- (UIEdgeInsets)overlayEdgeInsets
{
  [(PLContactPhotoOverlay *)self inscribingBounds];
  v4 = v3;
  v6 = v5;
  rect = v5;
  v8 = v7;
  v10 = v9;
  [(PLContactPhotoOverlay *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v32.origin.x = v4;
  v28 = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  v30 = MinX - CGRectGetMinX(v33);
  v34.origin.x = v4;
  v34.origin.y = rect;
  v34.size.width = v8;
  v34.size.height = v10;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  v29 = MinY - CGRectGetMinY(v35);
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = v28;
  v37.origin.y = rect;
  v37.size.width = v8;
  v37.size.height = v10;
  v22 = MaxX - CGRectGetMaxX(v37);
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = v28;
  v39.origin.y = rect;
  v39.size.width = v8;
  v39.size.height = v10;
  v24 = MaxY - CGRectGetMaxY(v39);
  v25 = v29;
  v26 = v30;
  v27 = v22;
  result.right = v27;
  result.bottom = v24;
  result.left = v26;
  result.top = v25;
  return result;
}

@end