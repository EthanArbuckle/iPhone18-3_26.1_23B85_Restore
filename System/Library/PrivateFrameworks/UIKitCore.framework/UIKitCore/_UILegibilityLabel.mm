@interface _UILegibilityLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UILegibilityLabel)initWithSettings:(id)a3 strength:(double)a4 string:(id)a5 font:(id)a6 options:(int64_t)a7;
- (double)baselineOffset;
- (void)dealloc;
- (void)setFont:(id)a3;
- (void)setString:(id)a3;
- (void)updateImage;
@end

@implementation _UILegibilityLabel

- (_UILegibilityLabel)initWithSettings:(id)a3 strength:(double)a4 string:(id)a5 font:(id)a6 options:(int64_t)a7
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *off_1E70EC918;
  v20[0] = a6;
  [a5 sizeWithAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
  v18.receiver = self;
  v18.super_class = _UILegibilityLabel;
  v15 = [(UIView *)&v18 initWithFrame:0.0, 0.0, v13, v14];
  v16 = v15;
  if (v15)
  {
    [(CALayer *)[(UIView *)v15 layer] setAllowsGroupBlending:0];
    [(CALayer *)[(UIView *)v16 layer] setAllowsGroupOpacity:0];
    [(_UILegibilityView *)v16 setStrength:a4];
    v16->_string = [a5 copy];
    v16->_font = a6;
    [(_UILegibilityView *)v16 setOptions:a7];
    [(_UILegibilityView *)v16 updateForChangedSettings:a3];
  }

  return v16;
}

- (void)dealloc
{
  self->_string = 0;

  self->_font = 0;
  v3.receiver = self;
  v3.super_class = _UILegibilityLabel;
  [(_UILegibilityView *)&v3 dealloc];
}

- (void)setString:(id)a3
{
  if (([a3 isEqualToString:self->_string] & 1) == 0)
  {

    self->_string = [a3 copy];
    [(_UILegibilityView *)self setImage:0];
    [(_UILegibilityView *)self setShadowImage:0];
    [(_UILegibilityLabel *)self updateImage];
    v5 = [(_UILegibilityView *)self settings];
    v6 = [(_UILegibilityView *)self image];
    v7 = [(_UILegibilityView *)self shadowImage];

    [(_UILegibilityView *)self setSettings:v5 image:v6 shadowImage:v7];
  }
}

- (void)setFont:(id)a3
{
  if (([(UIFont *)[(_UILegibilityLabel *)self font] isEqual:a3]& 1) == 0)
  {

    self->_font = a3;
    [(UIView *)self sizeToFit];
    [(_UILegibilityView *)self setImage:0];
    [(_UILegibilityView *)self setShadowImage:0];
    [(_UILegibilityLabel *)self updateImage];
    v5 = [(_UILegibilityView *)self settings];
    v6 = [(_UILegibilityView *)self image];
    v7 = [(_UILegibilityView *)self shadowImage];

    [(_UILegibilityView *)self setSettings:v5 image:v6 shadowImage:v7];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *off_1E70EC918;
  v9[0] = [(_UILegibilityLabel *)self font:a3.width];
  -[NSString sizeWithAttributes:](-[_UILegibilityLabel string](self, "string"), "sizeWithAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1]);
  *&v4 = v4;
  v5 = ceilf(*&v4);
  *&v6 = v6;
  v7 = ceilf(*&v6);
  result.height = v7;
  result.width = v5;
  return result;
}

- (double)baselineOffset
{
  v3 = [UILabel alloc];
  [(UIView *)self bounds];
  v4 = [(UILabel *)v3 initWithFrame:?];
  [(UILabel *)v4 setText:[(_UILegibilityLabel *)self string]];
  [(UILabel *)v4 setFont:[(_UILegibilityLabel *)self font]];
  [(UILabel *)v4 _baselineOffsetFromBottom];
  v6 = v5;

  return v6;
}

- (void)updateImage
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([(_UILegibilityView *)self settings]&& [(NSString *)[(_UILegibilityLabel *)self string] length]&& [(_UILegibilityLabel *)self font])
  {
    v3 = [(_UILegibilityView *)self drawingColor];
    if ([(_UILegibilityView *)self usesColorFilters])
    {
      v3 = +[UIColor whiteColor];
    }

    v4 = [(_UILegibilityLabel *)self font];
    v5 = *off_1E70EC920;
    v18[0] = *off_1E70EC918;
    v18[1] = v5;
    v19[0] = v4;
    v19[1] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:-[_UILegibilityLabel string](self attributes:{"string"), v6}];
    [(UIView *)self bounds];
    [UILabel _insetRect:v7 forAttributedString:v4 withDefaultFont:self inView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [objc_msgSend(objc_opt_self() "mainScreen")];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __33___UILegibilityLabel_updateImage__block_invoke;
    v17[3] = &unk_1E710C398;
    v17[6] = v9;
    v17[7] = v11;
    *&v17[8] = v13;
    *&v17[9] = v15;
    v17[4] = self;
    v17[5] = v7;
    [(_UILegibilityView *)self setImage:_UIGraphicsDrawIntoImageContextWithMoreOptions(0, 0, v17, v13, v15, v16)];

    [(_UILegibilityView *)self setShadowImage:0];
  }

  else
  {
    [(_UILegibilityView *)self setImage:0];

    [(_UILegibilityView *)self setShadowImage:0];
  }
}

@end