@interface _UIPreviewPresentationEffectView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)shadowOffset;
- (_UIPreviewPresentationEffectView)initWithFrame:(CGRect)a3;
- (double)blurRadius;
- (double)cornerRadius;
- (double)shadowAlpha;
- (double)shadowRadius;
- (void)setBlurRadius:(double)a3;
- (void)setCornerRadius:(double)a3;
- (void)setShadowAlpha:(double)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowRadius:(double)a3;
- (void)setShouldRasterizeForTransition:(BOOL)a3;
@end

@implementation _UIPreviewPresentationEffectView

- (_UIPreviewPresentationEffectView)initWithFrame:(CGRect)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIPreviewPresentationEffectView;
  v3 = [(UIView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6979378]);
    v5 = [v4 initWithType:*MEMORY[0x1E6979928]];
    [v5 setValue:&unk_1EFE2E958 forKey:*MEMORY[0x1E695FB10]];
    [v5 setValue:@"low" forKey:@"inputQuality"];
    [v5 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
    [v5 setName:@"gaussianBlur"];
    v13[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = [(UIView *)v3 layer];
    [v7 setFilters:v6];

    [(_UIPreviewPresentationEffectView *)v3 setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(_UIPreviewPresentationEffectView *)v3 setShadowRadius:0.0];
    v8 = +[UIColor blackColor];
    v9 = [v8 colorWithAlphaComponent:0.333333333];
    [(_UIPreviewPresentationEffectView *)v3 setShadowColor:v9];

    [(_UIPreviewPresentationEffectView *)v3 setShadowAlpha:0.0];
    v10 = v3;
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIPreviewPresentationEffectView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"cornerRadius") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"shadowOpacity") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"shadowOffset") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"shadowRadius") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"shadowColor"];
  }

  return v5;
}

- (double)blurRadius
{
  v2 = [(UIView *)self layer];
  v3 = [v2 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setBlurRadius:(double)a3
{
  v5 = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)setCornerRadius:(double)a3
{
  v5 = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"cornerRadius"];
}

- (double)cornerRadius
{
  v2 = [(UIView *)self layer];
  v3 = [v2 valueForKeyPath:@"cornerRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setShadowAlpha:(double)a3
{
  v5 = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"shadowOpacity"];
}

- (double)shadowAlpha
{
  v2 = [(UIView *)self layer];
  v3 = [v2 valueForKeyPath:@"shadowOpacity"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIView *)self layer];
  v5 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  [v6 setValue:v5 forKeyPath:@"shadowOffset"];
}

- (CGSize)shadowOffset
{
  v2 = [(UIView *)self layer];
  v3 = [v2 valueForKeyPath:@"shadowOffset"];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setShadowRadius:(double)a3
{
  v5 = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"shadowRadius"];
}

- (double)shadowRadius
{
  v2 = [(UIView *)self layer];
  v3 = [v2 valueForKeyPath:@"shadowRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setShadowColor:(id)a3
{
  v9 = a3;
  v4 = [(_UIPreviewPresentationEffectView *)self shadowColor];
  v5 = [v4 isEqual:v9];

  if ((v5 & 1) == 0)
  {
    v6 = [v9 copy];
    shadowColor = self->_shadowColor;
    self->_shadowColor = v6;

    v8 = [(UIView *)self layer];
    [v8 setValue:-[UIColor CGColor](self->_shadowColor forKeyPath:{"CGColor"), @"shadowColor"}];
  }
}

- (void)setShouldRasterizeForTransition:(BOOL)a3
{
  v3 = a3;
  self->_shouldRasterizeForTransition = a3;
  v5 = [(UIView *)self layer];
  [v5 setShouldRasterize:v3];

  v6 = [(UIView *)self window];
  v7 = [v6 screen];
  [v7 scale];
  v9 = v8;

  if (v9 >= 3.0)
  {
    v9 = v9 * 0.5;
  }

  v10 = [(UIView *)self layer];
  [v10 setRasterizationScale:v9];
}

@end