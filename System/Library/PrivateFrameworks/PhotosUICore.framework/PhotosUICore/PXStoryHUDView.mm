@interface PXStoryHUDView
- (CGRect)clippingRect;
- (PXStoryHUDView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
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

- (void)setUserData:(id)data
{
  v4 = [data copy];
  userData = self->_userData;
  self->_userData = v4;

  [(PXStoryHUDView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v55[4] = *MEMORY[0x1E69E9840];
  userData = [(PXStoryHUDView *)self userData];
  [userData textRelativePosition];
  v5 = v4;
  v7 = v6;
  [userData textInsets];
  v9 = v8;
  v11 = v10;
  tintColor = [userData tintColor];
  [userData borderWidth];
  v14 = v13;
  layer = [(PXStoryHUDView *)self layer];
  [layer setBorderWidth:v14];
  [layer setBorderColor:{objc_msgSend(tintColor, "CGColor")}];
  [layer setZPosition:10000.0];
  [(PXStoryHUDView *)self bounds];
  v57 = CGRectInset(v56, v9 + v14, v11 + v14);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  titleLabel = [(PXStoryHUDView *)self titleLabel];
  bodyLabel = [(PXStoryHUDView *)self bodyLabel];
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
  [userData fontSize];
  v25 = [v24 monospacedSystemFontOfSize:? weight:?];
  v26 = *MEMORY[0x1E69DB650];
  v54[0] = *MEMORY[0x1E69DB650];
  whiteColor = tintColor;
  if (!tintColor)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v55[0] = whiteColor;
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

  if (!tintColor)
  {
  }

  v33 = objc_alloc(MEMORY[0x1E696AAB0]);
  text = [userData text];
  v35 = text;
  if (text)
  {
    v36 = text;
  }

  else
  {
    v36 = &stru_1F1741150;
  }

  v37 = [v33 initWithString:v36 attributes:v32];
  [bodyLabel setAttributedText:v37];

  v38 = MEMORY[0x1E69DB878];
  [userData fontSize];
  v40 = [v38 monospacedSystemFontOfSize:v39 + 2.0 weight:*MEMORY[0x1E69DB950]];
  v52[0] = v26;
  whiteColor2 = tintColor;
  if (!tintColor)
  {
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v53[0] = whiteColor2;
  v52[1] = v28;
  v42 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
  v53[1] = v42;
  v53[2] = v40;
  v52[2] = v30;
  v52[3] = v31;
  v53[3] = v21;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];

  if (!tintColor)
  {
  }

  v44 = objc_alloc(MEMORY[0x1E696AAB0]);
  title = [userData title];
  v46 = title;
  if (title)
  {
    v47 = title;
  }

  else
  {
    v47 = &stru_1F1741150;
  }

  v48 = [v44 initWithString:v47 attributes:v43];
  [titleLabel setAttributedText:v48];

  [v40 lineHeight];
  [titleLabel setFrame:{x + v5 * (width - width), y + v7 * (height - v49), width, v49}];
  PXEdgeInsetsMake();
}

- (PXStoryHUDView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXStoryHUDView;
  v3 = [(PXStoryHUDView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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