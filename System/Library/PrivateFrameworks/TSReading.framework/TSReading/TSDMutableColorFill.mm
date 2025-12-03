@interface TSDMutableColorFill
- (void)setBrightness:(double)brightness;
- (void)setColor:(id)color;
- (void)setHue:(double)hue;
- (void)setOpacity:(double)opacity;
- (void)setSaturation:(double)saturation;
@end

@implementation TSDMutableColorFill

- (void)setColor:(id)color
{
  mColor = self->super.mColor;
  if (([(TSUColor *)mColor isEqual:?]& 1) == 0)
  {
    self->super.mColor = [color copy];
  }
}

- (void)setOpacity:(double)opacity
{
  v4 = [(TSUColor *)[(TSDColorFill *)self color] colorWithAlphaComponent:opacity];

  [(TSDMutableColorFill *)self setColor:v4];
}

- (void)setHue:(double)hue
{
  v5 = MEMORY[0x277D6C2A8];
  [(TSDColorFill *)self saturation];
  v7 = v6;
  [(TSDColorFill *)self brightness];
  v9 = v8;
  [(TSDColorFill *)self opacity];
  v11 = [v5 colorWithHue:hue saturation:v7 brightness:v9 alpha:v10];

  [(TSDMutableColorFill *)self setColor:v11];
}

- (void)setBrightness:(double)brightness
{
  v5 = MEMORY[0x277D6C2A8];
  [(TSDColorFill *)self hue];
  v7 = v6;
  [(TSDColorFill *)self saturation];
  v9 = v8;
  [(TSDColorFill *)self opacity];
  v11 = [v5 colorWithHue:v7 saturation:v9 brightness:brightness alpha:v10];

  [(TSDMutableColorFill *)self setColor:v11];
}

- (void)setSaturation:(double)saturation
{
  v5 = MEMORY[0x277D6C2A8];
  [(TSDColorFill *)self hue];
  v7 = v6;
  [(TSDColorFill *)self brightness];
  v9 = v8;
  [(TSDColorFill *)self opacity];
  v11 = [v5 colorWithHue:v7 saturation:saturation brightness:v9 alpha:v10];

  [(TSDMutableColorFill *)self setColor:v11];
}

@end