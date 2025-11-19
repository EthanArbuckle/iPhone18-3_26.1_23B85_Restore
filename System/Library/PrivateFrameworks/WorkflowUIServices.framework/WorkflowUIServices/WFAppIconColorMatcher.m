@interface WFAppIconColorMatcher
- (WFAppIconColorMatcher)initWithBundleIdentifier:(id)a3;
- (id)matchedColor;
@end

@implementation WFAppIconColorMatcher

- (id)matchedColor
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFAppIconColorMatcher *)self cachedColor];

  if (v3)
  {
    v4 = [(WFAppIconColorMatcher *)self cachedColor];
  }

  else
  {
    v5 = MEMORY[0x1E69E0B58];
    v6 = [(WFAppIconColorMatcher *)self bundleIdentifier];
    v7 = [v5 applicationIconImageForBundleIdentifier:v6];

    v8 = [WFJoeColorUtility colorForImage:v7];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    v4 = [[WFMatchedAppIconColorData alloc] initWithColors:v9];
    objc_storeStrong(&self->_cachedColor, v4);
  }

  return v4;
}

- (WFAppIconColorMatcher)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFAppIconColorMatcher;
  v6 = [(WFAppIconColorMatcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

@end