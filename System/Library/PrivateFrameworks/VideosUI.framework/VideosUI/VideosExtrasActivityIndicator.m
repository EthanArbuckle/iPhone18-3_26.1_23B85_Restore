@interface VideosExtrasActivityIndicator
- (CGSize)intrinsicContentSize;
- (VideosExtrasActivityIndicator)initWithElement:(id)a3;
- (void)setAlpha:(double)a3;
@end

@implementation VideosExtrasActivityIndicator

- (VideosExtrasActivityIndicator)initWithElement:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = VideosExtrasActivityIndicator;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(VideosExtrasActivityIndicator *)&v31 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  if (v9)
  {
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(VideosExtrasActivityIndicator *)v9 setBackgroundColor:v10];

    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v4 title];
        v12 = [v11 text];
        v13 = [v12 length];

        if (v13)
        {
          v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
          titleLabel = v9->_titleLabel;
          v9->_titleLabel = v14;

          [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
          v16 = v9->_titleLabel;
          v17 = [MEMORY[0x1E69DC888] clearColor];
          [(UILabel *)v16 setBackgroundColor:v17];

          v18 = v9->_titleLabel;
          v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
          [(UILabel *)v18 setTextColor:v19];

          v20 = *MEMORY[0x1E69DDCF8];
          v21 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
          [(UILabel *)v9->_titleLabel configureForIKTextElement:v11 fontDescriptor:v21 textStyle:v20];
          [(UILabel *)v9->_titleLabel setAlpha:0.0];
          [(VideosExtrasActivityIndicator *)v9 addSubview:v9->_titleLabel];
        }
      }
    }

    v22 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:0];
    spinner = v9->_spinner;
    v9->_spinner = v22;

    [(UIActivityIndicatorView *)v9->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v9->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v9->_spinner startAnimating];
    [(UIActivityIndicatorView *)v9->_spinner setAlpha:0.0];
    [(VideosExtrasActivityIndicator *)v9 addSubview:v9->_spinner];
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_spinner attribute:9 relatedBy:0 toItem:v9 attribute:9 multiplier:1.0 constant:0.0];
    [v24 addObject:v25];
    v26 = v9->_spinner;
    if (v9->_titleLabel)
    {
      v27 = [MEMORY[0x1E696ACD8] constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:0.0];
      [v24 addObject:v27];
      v28 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_titleLabel attribute:3 relatedBy:0 toItem:v9->_spinner attribute:4 multiplier:1.0 constant:5.0];
      [v24 addObject:v28];
      v29 = [MEMORY[0x1E696ACD8] constraintWithItem:v9->_titleLabel attribute:9 relatedBy:0 toItem:v9->_spinner attribute:9 multiplier:1.0 constant:0.0];
      [v24 addObject:v29];
    }

    else
    {
      v27 = [MEMORY[0x1E696ACD8] constraintWithItem:v26 attribute:10 relatedBy:0 toItem:v9 attribute:10 multiplier:1.0 constant:0.0];
      [v24 addObject:v27];
    }

    [(VideosExtrasActivityIndicator *)v9 addConstraints:v24];
  }

  return v9;
}

- (CGSize)intrinsicContentSize
{
  [(UIActivityIndicatorView *)self->_spinner intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v9 = v6 + v8 + 5.0;
  if (!self->_titleLabel)
  {
    v9 = v6;
  }

  if (v4 >= v7)
  {
    v7 = v4;
  }

  v10 = v7 + 10.0;
  v11 = v9 + 10.0;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setAlpha:(double)a3
{
  [(UILabel *)self->_titleLabel setAlpha:?];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner setAlpha:a3];
}

@end