@interface STUIStatusBarVisualProvider_RoundierPad
+ (NSDirectionalEdgeInsets)edgeInsets;
- (id)normalRoundFont;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
@end

@implementation STUIStatusBarVisualProvider_RoundierPad

- (id)normalRoundFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E768;
  if (unk_280C1E768)
  {
    v4 = byte_280C1E726 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E726 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() baseFontSize];
    v6 = [v5 systemFontOfSize:*MEMORY[0x277D74368] weight:? design:?];
    v7 = unk_280C1E768;
    unk_280C1E768 = v6;

    v3 = unk_280C1E768;
  }

  return v3;
}

+ (NSDirectionalEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 25.0;
  v4 = 0.0;
  v5 = 26.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
  v6 = v5;
  if (v5 == identifierCopy)
  {
  }

  else
  {
    v7 = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];

    if (v7 != identifierCopy)
    {
      v11.receiver = self;
      v11.super_class = STUIStatusBarVisualProvider_RoundierPad;
      v8 = [(STUIStatusBarVisualProvider_Pad *)&v11 overriddenStyleAttributesForDisplayItemWithIdentifier:identifierCopy];
      goto LABEL_6;
    }
  }

  v8 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  normalRoundFont = [(STUIStatusBarVisualProvider_RoundierPad *)self normalRoundFont];
  [v8 setFont:normalRoundFont];

LABEL_6:

  return v8;
}

@end