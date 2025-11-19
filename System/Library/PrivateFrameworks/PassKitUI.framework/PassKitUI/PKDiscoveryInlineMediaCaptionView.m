@interface PKDiscoveryInlineMediaCaptionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDiscoveryInlineMediaCaptionView)initWithCaptionText:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKDiscoveryInlineMediaCaptionView

- (PKDiscoveryInlineMediaCaptionView)initWithCaptionText:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PKDiscoveryInlineMediaCaptionView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PKDiscoveryShelfView *)&v20 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PKDiscoveryInlineMediaCaptionView *)v10 setBackgroundColor:v11];

    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    objc_storeStrong(&v10->_captionText, a3);
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    captionLabel = v10->_captionLabel;
    v10->_captionLabel = v13;

    v15 = v10->_captionLabel;
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v15 setBackgroundColor:v16];

    [(UILabel *)v10->_captionLabel setFont:v12];
    v17 = v10->_captionLabel;
    v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v17 setTextColor:v18];

    [(UILabel *)v10->_captionLabel setNumberOfLines:0];
    [(UILabel *)v10->_captionLabel setText:v5];
    [(PKDiscoveryInlineMediaCaptionView *)v10 addSubview:v10->_captionLabel];
  }

  return v10;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKDiscoveryInlineMediaCaptionView;
  [(PKDiscoveryInlineMediaCaptionView *)&v15 layoutSubviews];
  [(PKDiscoveryInlineMediaCaptionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKDiscoveryShelfView *)self contentInsets];
  [(UILabel *)self->_captionLabel setFrame:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21[1] = *MEMORY[0x1E69E9840];
  [(PKDiscoveryShelfView *)self contentInsets];
  v8 = width - (v6 + v7);
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
  [v9 lineHeight];
  v11 = v10;
  v20 = *MEMORY[0x1E69DB648];
  v21[0] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_captionText attributes:v12];
  [v13 pkui_sizeThatFits:0 withNumberOfLines:{v8, height}];
  v15 = v14;
  v17 = v16;

  v18 = v17 + v11 * 0.75 * 2.0;
  v19 = v15;
  result.height = v18;
  result.width = v19;
  return result;
}

@end