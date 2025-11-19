@interface _UIIntelligentTextInsertionAnimatedColor
- (_UIIntelligentTextInsertionAnimatedColor)initWithBounds:(CGRect)a3 invalidationHandler:(id)a4;
- (void)_drawPalette:(id)a3 boundingRect:(CGRect)a4 usingContext:(CGContext *)a5 progress:(double)a6;
- (void)drawRect:(CGRect)a3 usingContext:(CGContext *)a4 progress:(double)a5;
- (void)setResolvedColor:(id)a3;
@end

@implementation _UIIntelligentTextInsertionAnimatedColor

- (_UIIntelligentTextInsertionAnimatedColor)initWithBounds:(CGRect)a3 invalidationHandler:(id)a4
{
  v11.receiver = self;
  v11.super_class = _UIIntelligentTextInsertionAnimatedColor;
  v4 = [(_UIAnimatedColor *)&v11 initWithBounds:a4 invalidationHandler:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = +[_UIColorPalette textAssistantReplacementSheenPalette];
    sheenPalette = v4->_sheenPalette;
    v4->_sheenPalette = v5;

    v7 = +[_UIColorPalette textAssistantReplacementBuildInPalette];
    foregroundPalette = v4->_foregroundPalette;
    v4->_foregroundPalette = v7;

    v9 = +[UIColor labelColor];
    [(_UIIntelligentTextInsertionAnimatedColor *)v4 setResolvedColor:v9];
  }

  return v4;
}

- (void)setResolvedColor:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_resolvedColor, a3);
  v5 = a3;
  v6 = [_UIColorPalette alloc];
  v11[0] = v5;
  v7 = +[UIColor clearColor];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(_UIColorPalette *)v6 initWithColors:v8 locations:&unk_1EFE2D888 colorSpaceName:0];
  resolvedBackgroundPalette = self->_resolvedBackgroundPalette;
  self->_resolvedBackgroundPalette = v9;
}

- (void)_drawPalette:(id)a3 boundingRect:(CGRect)a4 usingContext:(CGContext *)a5 progress:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  v10 = [a3 gradientRepresentation];

  v12.x = (width + width) * a6 - width;
  v12.y = height * -2.0;
  v13.x = width * 4.0 * a6;
  v13.y = height * 4.0 * a6;
  CGContextDrawLinearGradient(a5, v10, v12, v13, 3u);
}

- (void)drawRect:(CGRect)a3 usingContext:(CGContext *)a4 progress:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17[3] = *MEMORY[0x1E69E9840];
  v12 = self->_resolvedBackgroundPalette;
  v16 = v12;
  v17[0] = self->_foregroundPalette;
  v17[1] = self->_sheenPalette;
  v17[2] = 0;
  if (v12)
  {
    v13 = v17;
    do
    {
      [(_UIIntelligentTextInsertionAnimatedColor *)self _drawPalette:v12 boundingRect:a4 usingContext:x progress:y, width, height, a5];
      v14 = *v13++;
      v12 = v14;
    }

    while (v14);
  }

  for (i = 3; i != -1; --i)
  {
  }
}

@end