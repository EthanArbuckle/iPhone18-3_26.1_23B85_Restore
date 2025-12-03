@interface WFAppIconColorMatcher
- (WFAppIconColorMatcher)initWithBundleIdentifier:(id)identifier;
- (id)matchedColor;
@end

@implementation WFAppIconColorMatcher

- (id)matchedColor
{
  v11[1] = *MEMORY[0x1E69E9840];
  cachedColor = [(WFAppIconColorMatcher *)self cachedColor];

  if (cachedColor)
  {
    cachedColor2 = [(WFAppIconColorMatcher *)self cachedColor];
  }

  else
  {
    v5 = MEMORY[0x1E69E0B58];
    bundleIdentifier = [(WFAppIconColorMatcher *)self bundleIdentifier];
    v7 = [v5 applicationIconImageForBundleIdentifier:bundleIdentifier];

    v8 = [WFJoeColorUtility colorForImage:v7];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    cachedColor2 = [[WFMatchedAppIconColorData alloc] initWithColors:v9];
    objc_storeStrong(&self->_cachedColor, cachedColor2);
  }

  return cachedColor2;
}

- (WFAppIconColorMatcher)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = WFAppIconColorMatcher;
  v6 = [(WFAppIconColorMatcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

@end