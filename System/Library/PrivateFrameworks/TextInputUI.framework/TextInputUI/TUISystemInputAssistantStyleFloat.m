@interface TUISystemInputAssistantStyleFloat
- (UIColor)predictionSeparatorColor;
- (UIImageSymbolConfiguration)barButtonImageSymbolConfiguration;
- (double)highlightCornerRadius;
@end

@implementation TUISystemInputAssistantStyleFloat

- (UIImageSymbolConfiguration)barButtonImageSymbolConfiguration
{
  v2 = _UISolariumEnabled();
  v3 = MEMORY[0x1E69DCAD8];
  if (v2)
  {
    v4 = [MEMORY[0x1E69DB878] fontWithName:@".SFCompact" size:22.0];
    v5 = [v3 configurationWithFont:v4 scale:2];
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:19.0];
  }

  return v5;
}

- (double)highlightCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 10.0;
  if (v2)
  {
    return 19.0;
  }

  return result;
}

- (UIColor)predictionSeparatorColor
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

@end