@interface _UIPreviewPresentationEffectView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)shadowOffset;
- (_UIPreviewPresentationEffectView)initWithFrame:(CGRect)frame;
- (double)blurRadius;
- (double)cornerRadius;
- (double)shadowAlpha;
- (double)shadowRadius;
- (void)setBlurRadius:(double)radius;
- (void)setCornerRadius:(double)radius;
- (void)setShadowAlpha:(double)alpha;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowRadius:(double)radius;
- (void)setShouldRasterizeForTransition:(BOOL)transition;
@end

@implementation _UIPreviewPresentationEffectView

- (_UIPreviewPresentationEffectView)initWithFrame:(CGRect)frame
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIPreviewPresentationEffectView;
  v3 = [(UIView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    layer = [(UIView *)v3 layer];
    [layer setFilters:v6];

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

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIPreviewPresentationEffectView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"cornerRadius") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"shadowOpacity") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"shadowOffset") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"shadowRadius") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"shadowColor"];
  }

  return v5;
}

- (double)blurRadius
{
  layer = [(UIView *)self layer];
  v3 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)setCornerRadius:(double)radius
{
  layer = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"cornerRadius"];
}

- (double)cornerRadius
{
  layer = [(UIView *)self layer];
  v3 = [layer valueForKeyPath:@"cornerRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setShadowAlpha:(double)alpha
{
  layer = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:alpha];
  [layer setValue:v4 forKeyPath:@"shadowOpacity"];
}

- (double)shadowAlpha
{
  layer = [(UIView *)self layer];
  v3 = [layer valueForKeyPath:@"shadowOpacity"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(UIView *)self layer];
  v5 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  [layer setValue:v5 forKeyPath:@"shadowOffset"];
}

- (CGSize)shadowOffset
{
  layer = [(UIView *)self layer];
  v3 = [layer valueForKeyPath:@"shadowOffset"];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setShadowRadius:(double)radius
{
  layer = [(UIView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"shadowRadius"];
}

- (double)shadowRadius
{
  layer = [(UIView *)self layer];
  v3 = [layer valueForKeyPath:@"shadowRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  shadowColor = [(_UIPreviewPresentationEffectView *)self shadowColor];
  v5 = [shadowColor isEqual:colorCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [colorCopy copy];
    shadowColor = self->_shadowColor;
    self->_shadowColor = v6;

    layer = [(UIView *)self layer];
    [layer setValue:-[UIColor CGColor](self->_shadowColor forKeyPath:{"CGColor"), @"shadowColor"}];
  }
}

- (void)setShouldRasterizeForTransition:(BOOL)transition
{
  transitionCopy = transition;
  self->_shouldRasterizeForTransition = transition;
  layer = [(UIView *)self layer];
  [layer setShouldRasterize:transitionCopy];

  window = [(UIView *)self window];
  screen = [window screen];
  [screen scale];
  v9 = v8;

  if (v9 >= 3.0)
  {
    v9 = v9 * 0.5;
  }

  layer2 = [(UIView *)self layer];
  [layer2 setRasterizationScale:v9];
}

@end