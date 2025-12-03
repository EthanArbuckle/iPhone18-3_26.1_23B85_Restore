@interface _UIIntelligentTextInsertionAnimatedColor
- (_UIIntelligentTextInsertionAnimatedColor)initWithBounds:(CGRect)bounds invalidationHandler:(id)handler;
- (void)_drawPalette:(id)palette boundingRect:(CGRect)rect usingContext:(CGContext *)context progress:(double)progress;
- (void)drawRect:(CGRect)rect usingContext:(CGContext *)context progress:(double)progress;
- (void)setResolvedColor:(id)color;
@end

@implementation _UIIntelligentTextInsertionAnimatedColor

- (_UIIntelligentTextInsertionAnimatedColor)initWithBounds:(CGRect)bounds invalidationHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = _UIIntelligentTextInsertionAnimatedColor;
  v4 = [(_UIAnimatedColor *)&v11 initWithBounds:handler invalidationHandler:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

- (void)setResolvedColor:(id)color
{
  v11[2] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_resolvedColor, color);
  colorCopy = color;
  v6 = [_UIColorPalette alloc];
  v11[0] = colorCopy;
  v7 = +[UIColor clearColor];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(_UIColorPalette *)v6 initWithColors:v8 locations:&unk_1EFE2D888 colorSpaceName:0];
  resolvedBackgroundPalette = self->_resolvedBackgroundPalette;
  self->_resolvedBackgroundPalette = v9;
}

- (void)_drawPalette:(id)palette boundingRect:(CGRect)rect usingContext:(CGContext *)context progress:(double)progress
{
  height = rect.size.height;
  width = rect.size.width;
  gradientRepresentation = [palette gradientRepresentation];

  v12.x = (width + width) * progress - width;
  v12.y = height * -2.0;
  v13.x = width * 4.0 * progress;
  v13.y = height * 4.0 * progress;
  CGContextDrawLinearGradient(context, gradientRepresentation, v12, v13, 3u);
}

- (void)drawRect:(CGRect)rect usingContext:(CGContext *)context progress:(double)progress
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
      [(_UIIntelligentTextInsertionAnimatedColor *)self _drawPalette:v12 boundingRect:context usingContext:x progress:y, width, height, progress];
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