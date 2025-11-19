@interface TPRingView
+ (CGSize)ringSize;
+ (id)createRingImageWithSize:(CGSize)a3 strokeWidth:(double)a4 color:(id)a5;
+ (id)ringImageForDodge;
+ (id)ringImageForLuminance;
- (CGSize)intrinsicContentSize;
- (TPRingView)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation TPRingView

+ (CGSize)ringSize
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 480.0;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 1024.0;
  }

  *&v8 = 75.0;
  if (v4 <= v7)
  {
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = *(&unk_1B48EBDA0 + ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1));
  }

  v11 = *&v8;
  v12 = *&v8;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)ringImageForLuminance
{
  v3 = ringImageForLuminance;
  if (!ringImageForLuminance)
  {
    [a1 ringSize];
    v5 = v4;
    v7 = v6;
    [a1 ringStroke];
    v9 = v8;
    v10 = [a1 colorForLuminance];
    v11 = [a1 createRingImageWithSize:v10 strokeWidth:v5 color:{v7, v9}];
    v12 = ringImageForLuminance;
    ringImageForLuminance = v11;

    v3 = ringImageForLuminance;
  }

  return v3;
}

+ (id)ringImageForDodge
{
  v3 = ringImageForDodge;
  if (!ringImageForDodge)
  {
    [a1 ringSize];
    v5 = v4;
    v7 = v6;
    [a1 ringStroke];
    v9 = v8;
    v10 = [a1 colorForDodge];
    v11 = [a1 createRingImageWithSize:v10 strokeWidth:v5 color:{v7, v9}];
    v12 = ringImageForDodge;
    ringImageForDodge = v11;

    v3 = ringImageForDodge;
  }

  return v3;
}

+ (id)createRingImageWithSize:(CGSize)a3 strokeWidth:(double)a4 color:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectInset(v23, a4, a4);
  x = v24.origin.x;
  y = v24.origin.y;
  v12 = v24.size.width;
  v13 = v24.size.height;
  v24.origin.x = width;
  v24.origin.y = height;
  UIGraphicsBeginImageContextWithOptions(v24.origin, 0, 0.0);
  v14 = MEMORY[0x1E69DC728];
  [a1 ringCornerRadius];
  v16 = [v14 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, v15}];
  v17 = MEMORY[0x1E69DC728];
  [a1 ringCornerRadius];
  v19 = [v17 bezierPathWithRoundedRect:x cornerRadius:{y, v12, v13, v18 - a4}];
  [v16 appendPath:v19];

  [v16 setUsesEvenOddFillRule:1];
  [v9 setFill];

  [v16 fill];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v20;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] begin];
  v5 = MEMORY[0x1E6979518];
  LODWORD(v6) = 1043207291;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setValue:v7 forKey:*MEMORY[0x1E697A010]];

  v8 = 0.0;
  if (v3)
  {
    [(CALayer *)self->_highlightDodgeLayer setOpacity:0.0];
    LODWORD(v8) = 1.0;
  }

  [(CALayer *)self->_selectionLayer setOpacity:v8];
  v9 = MEMORY[0x1E6979518];

  [v9 commit];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] begin];
  v5 = MEMORY[0x1E6979518];
  LODWORD(v6) = 1043207291;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setValue:v7 forKey:*MEMORY[0x1E697A010]];

  if (v3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(CALayer *)self->_highlightDodgeLayer setOpacity:COERCE_DOUBLE(LODWORD(v8))];
  *&v9 = v8;
  [(CALayer *)self->_highlightLuminanceLayer setOpacity:v9];
  v10 = MEMORY[0x1E6979518];

  [v10 commit];
}

- (void)setEnabled:(BOOL)a3
{
  [MEMORY[0x1E6979518] begin];
  v5 = MEMORY[0x1E6979518];
  LODWORD(v6) = 1043207291;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setValue:v7 forKey:*MEMORY[0x1E697A010]];

  v9 = 1.0;
  if (!a3)
  {
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = flt_1B48EBD90[[v10 _graphicsQuality] == 10];
  }

  *&v8 = v9;
  [(CALayer *)self->_luminanceRingLayer setOpacity:v8];
  *&v11 = v9;
  [(CALayer *)self->_dodgeRingLayer setOpacity:v11];
  v12 = MEMORY[0x1E6979518];

  [v12 commit];
}

- (TPRingView)initWithFrame:(CGRect)a3
{
  v60.receiver = self;
  v60.super_class = TPRingView;
  v3 = [(TPRingView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPRingView *)v3 setUserInteractionEnabled:0];
    [(TPRingView *)v4 setOpaque:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(TPRingView *)v4 setBackgroundColor:v5];

    v6 = [(TPRingView *)v4 layer];
    [v6 setAllowsGroupBlending:0];

    v7 = [(TPRingView *)v4 layer];
    [v7 setAllowsGroupOpacity:0];

    v8 = [MEMORY[0x1E6979398] layer];
    luminanceRingLayer = v4->_luminanceRingLayer;
    v4->_luminanceRingLayer = v8;

    v10 = [objc_opt_class() ringImageForLuminance];
    -[CALayer setContents:](v4->_luminanceRingLayer, "setContents:", [v10 CGImage]);

    v11 = *MEMORY[0x1E6979CF8];
    v12 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [(CALayer *)v4->_luminanceRingLayer setCompositingFilter:v12];

    [objc_opt_class() ringSize];
    v14 = v13;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_luminanceRingLayer setFrame:0.0, 0.0, v14, v15];
    v16 = [(TPRingView *)v4 layer];
    [v16 addSublayer:v4->_luminanceRingLayer];

    v17 = [MEMORY[0x1E6979398] layer];
    dodgeRingLayer = v4->_dodgeRingLayer;
    v4->_dodgeRingLayer = v17;

    v19 = [objc_opt_class() ringImageForDodge];
    -[CALayer setContents:](v4->_dodgeRingLayer, "setContents:", [v19 CGImage]);

    v20 = *MEMORY[0x1E6979860];
    v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979860]];
    [(CALayer *)v4->_dodgeRingLayer setCompositingFilter:v21];

    [objc_opt_class() ringSize];
    v23 = v22;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_dodgeRingLayer setFrame:0.0, 0.0, v23, v24];
    v25 = [(TPRingView *)v4 layer];
    [v25 addSublayer:v4->_dodgeRingLayer];

    v26 = [MEMORY[0x1E6979398] layer];
    highlightDodgeLayer = v4->_highlightDodgeLayer;
    v4->_highlightDodgeLayer = v26;

    v28 = [objc_opt_class() colorForDodge];
    -[CALayer setBackgroundColor:](v4->_highlightDodgeLayer, "setBackgroundColor:", [v28 CGColor]);

    v29 = [MEMORY[0x1E6979378] filterWithType:v20];
    [(CALayer *)v4->_highlightDodgeLayer setCompositingFilter:v29];

    [objc_opt_class() ringSize];
    v31 = v30;
    [objc_opt_class() ringSize];
    v33 = v32;
    [objc_opt_class() ringStroke];
    v35 = v34;
    [objc_opt_class() ringStroke];
    v37 = v36;
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = v31;
    v61.size.height = v33;
    v62 = CGRectInset(v61, v35, v37);
    width = v62.size.width;
    height = v62.size.height;
    [objc_opt_class() ringStroke];
    v41 = v40;
    [objc_opt_class() ringStroke];
    [(CALayer *)v4->_highlightDodgeLayer setFrame:v41, v42, width, height];
    [objc_opt_class() ringCornerRadius];
    v44 = v43;
    [objc_opt_class() ringStroke];
    [(CALayer *)v4->_highlightDodgeLayer setCornerRadius:v44 - v45];
    [(CALayer *)v4->_highlightDodgeLayer setOpacity:0.0];
    v46 = [(TPRingView *)v4 layer];
    [v46 addSublayer:v4->_highlightDodgeLayer];

    v47 = [MEMORY[0x1E6979398] layer];
    highlightLuminanceLayer = v4->_highlightLuminanceLayer;
    v4->_highlightLuminanceLayer = v47;

    v49 = [objc_opt_class() colorForLuminance];
    -[CALayer setBackgroundColor:](v4->_highlightLuminanceLayer, "setBackgroundColor:", [v49 CGColor]);

    v50 = [MEMORY[0x1E6979378] filterWithType:v11];
    [(CALayer *)v4->_highlightLuminanceLayer setCompositingFilter:v50];

    [(CALayer *)v4->_highlightDodgeLayer frame];
    [(CALayer *)v4->_highlightLuminanceLayer setFrame:?];
    [(CALayer *)v4->_highlightDodgeLayer cornerRadius];
    [(CALayer *)v4->_highlightLuminanceLayer setCornerRadius:?];
    [(CALayer *)v4->_highlightLuminanceLayer setOpacity:0.0];
    v51 = [(TPRingView *)v4 layer];
    [v51 insertSublayer:v4->_highlightLuminanceLayer below:v4->_highlightDodgeLayer];

    v52 = [MEMORY[0x1E6979398] layer];
    selectionLayer = v4->_selectionLayer;
    v4->_selectionLayer = v52;

    v54 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v4->_selectionLayer, "setBackgroundColor:", [v54 CGColor]);

    [objc_opt_class() ringSize];
    v56 = v55;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_selectionLayer setFrame:0.0, 0.0, v56, v57];
    [objc_opt_class() ringCornerRadius];
    [(CALayer *)v4->_selectionLayer setCornerRadius:?];
    [(CALayer *)v4->_selectionLayer setOpacity:0.0];
    v58 = [(TPRingView *)v4 layer];
    [v58 addSublayer:v4->_selectionLayer];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 ringSize];
  result.height = v4;
  result.width = v3;
  return result;
}

@end