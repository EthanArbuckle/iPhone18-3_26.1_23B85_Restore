@interface PXStoryHUDView
- (CGRect)clippingRect;
- (PXStoryHUDView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
@end

@implementation PXStoryHUDView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = [a3 copy];
  userData = self->_userData;
  self->_userData = v4;

  [(PXStoryHUDView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v55[4] = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryHUDView *)self userData];
  [v3 textRelativePosition];
  v5 = v4;
  v7 = v6;
  [v3 textInsets];
  v9 = v8;
  v11 = v10;
  v12 = [v3 tintColor];
  [v3 borderWidth];
  v14 = v13;
  v15 = [(PXStoryHUDView *)self layer];
  [v15 setBorderWidth:v14];
  [v15 setBorderColor:{objc_msgSend(v12, "CGColor")}];
  [v15 setZPosition:10000.0];
  [(PXStoryHUDView *)self bounds];
  v57 = CGRectInset(v56, v9 + v14, v11 + v14);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  v51 = [(PXStoryHUDView *)self titleLabel];
  v50 = [(PXStoryHUDView *)self bodyLabel];
  v20 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v21 = v20;
  v22 = 2;
  if (v5 <= 0.75)
  {
    v22 = 1;
  }

  if (v5 >= 0.25)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  [v20 setAlignment:v23];
  [v21 setLineBreakMode:0];
  v24 = MEMORY[0x1E69DB878];
  [v3 fontSize];
  v25 = [v24 monospacedSystemFontOfSize:? weight:?];
  v26 = *MEMORY[0x1E69DB650];
  v54[0] = *MEMORY[0x1E69DB650];
  v27 = v12;
  if (!v12)
  {
    v27 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v55[0] = v27;
  v28 = *MEMORY[0x1E69DB600];
  v54[1] = *MEMORY[0x1E69DB600];
  v29 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
  v30 = *MEMORY[0x1E69DB648];
  v55[1] = v29;
  v55[2] = v25;
  v31 = *MEMORY[0x1E69DB688];
  v54[2] = v30;
  v54[3] = v31;
  v55[3] = v21;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];

  if (!v12)
  {
  }

  v33 = objc_alloc(MEMORY[0x1E696AAB0]);
  v34 = [v3 text];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = &stru_1F1741150;
  }

  v37 = [v33 initWithString:v36 attributes:v32];
  [v50 setAttributedText:v37];

  v38 = MEMORY[0x1E69DB878];
  [v3 fontSize];
  v40 = [v38 monospacedSystemFontOfSize:v39 + 2.0 weight:*MEMORY[0x1E69DB950]];
  v52[0] = v26;
  v41 = v12;
  if (!v12)
  {
    v41 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v53[0] = v41;
  v52[1] = v28;
  v42 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
  v53[1] = v42;
  v53[2] = v40;
  v52[2] = v30;
  v52[3] = v31;
  v53[3] = v21;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];

  if (!v12)
  {
  }

  v44 = objc_alloc(MEMORY[0x1E696AAB0]);
  v45 = [v3 title];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = &stru_1F1741150;
  }

  v48 = [v44 initWithString:v47 attributes:v43];
  [v51 setAttributedText:v48];

  [v40 lineHeight];
  [v51 setFrame:{x + v5 * (width - width), y + v7 * (height - v49), width, v49}];
  PXEdgeInsetsMake();
}

- (PXStoryHUDView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PXStoryHUDView;
  v3 = [(PXStoryHUDView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setOpaque:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(PXStoryHUDView *)v3 addSubview:v3->_titleLabel];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v6;

    [(UILabel *)v3->_bodyLabel setOpaque:0];
    [(UILabel *)v3->_bodyLabel setNumberOfLines:0];
    [(PXStoryHUDView *)v3 addSubview:v3->_bodyLabel];
    [(PXStoryHUDView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end