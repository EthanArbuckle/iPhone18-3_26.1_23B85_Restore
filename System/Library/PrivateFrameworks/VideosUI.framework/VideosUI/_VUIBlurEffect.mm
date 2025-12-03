@interface _VUIBlurEffect
- (id)effectSettings;
@end

@implementation _VUIBlurEffect

- (id)effectSettings
{
  v8.receiver = self;
  v8.super_class = _VUIBlurEffect;
  effectSettings = [(UIBlurEffect *)&v8 effectSettings];
  if (self->_isProgressBar)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4];
    [effectSettings setColorTint:v4];

    v5 = 10.0;
    v6 = 0.7;
  }

  else
  {
    v5 = 5.0;
    v6 = 0.94;
  }

  [effectSettings setSaturationDeltaFactor:v6];
  [effectSettings setBlurRadius:v5];

  return effectSettings;
}

@end