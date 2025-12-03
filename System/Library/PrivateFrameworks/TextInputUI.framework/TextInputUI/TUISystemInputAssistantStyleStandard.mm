@interface TUISystemInputAssistantStyleStandard
- (UIColor)predictionSeparatorColor;
- (UIImageSymbolConfiguration)barButtonImageSymbolConfiguration;
- (double)highlightCornerRadius;
- (double)minimumInterBarItemSpace;
@end

@implementation TUISystemInputAssistantStyleStandard

- (UIColor)predictionSeparatorColor
{
  if (_UISolariumEnabled())
  {
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  }

  else
  {
    separatorColor = 0;
  }

  return separatorColor;
}

- (double)highlightCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 5.0;
  if (v2)
  {
    return 19.0;
  }

  return result;
}

- (double)minimumInterBarItemSpace
{
  v2 = _UISolariumEnabled();
  result = 5.0;
  if (v2)
  {
    return 24.0;
  }

  return result;
}

- (UIImageSymbolConfiguration)barButtonImageSymbolConfiguration
{
  if (_UISolariumEnabled())
  {
    v2 = MEMORY[0x1E69DCAD8];
    v3 = [MEMORY[0x1E69DB878] fontWithName:@".SFCompact" size:22.0];
    v4 = [v2 configurationWithFont:v3 scale:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end