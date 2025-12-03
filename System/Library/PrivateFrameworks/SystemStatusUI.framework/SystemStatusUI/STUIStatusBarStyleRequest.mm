@interface STUIStatusBarStyleRequest
- (BOOL)isEqual:(id)equal;
- (STUIStatusBarStyleRequest)initWithResolvedStyle:(int64_t)style foregroundColor:(id)color;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STUIStatusBarStyleRequest

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarStyleRequest;
  v3 = [(STUIStatusBarStyleRequest *)&v5 hash];
  return 1000 * self->_resolvedStyle - v3 + 32 * v3;
}

- (STUIStatusBarStyleRequest)initWithResolvedStyle:(int64_t)style foregroundColor:(id)color
{
  colorCopy = color;
  v7 = _UIStatusBarStyleFromResolvedStyle();
  v10.receiver = self;
  v10.super_class = STUIStatusBarStyleRequest;
  v8 = [(STUIStatusBarStyleRequest *)&v10 initWithStyle:v7 legibilityStyle:0 foregroundColor:colorCopy];

  if (v8)
  {
    v8->_resolvedStyle = style;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = STUIStatusBarStyleRequest;
  if ([(STUIStatusBarStyleRequest *)&v8 isEqual:equalCopy])
  {
    resolvedStyle = self->_resolvedStyle;
    v6 = resolvedStyle == [equalCopy resolvedStyle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarStyleRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarStyleRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarStyleRequest *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarStyleRequest *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__STUIStatusBarStyleRequest__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

id __77__STUIStatusBarStyleRequest__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[STUIStatusBar stringForStatusBarStyle:](STUIStatusBar, "stringForStatusBarStyle:", [*(a1 + 40) resolvedStyle]);
  [v2 appendString:v3 withName:@"resolvedStyle" skipIfEmpty:1];

  [*(a1 + 40) style];
  v4 = _UIStatusBarResolvedStyleFromStyle();
  if (v4 != [*(a1 + 40) resolvedStyle])
  {
    v5 = *(a1 + 32);
    v6 = _STUIStringFromStatusBarLegacyStyle([*(a1 + 40) style]);
    [v5 appendString:v6 withName:@"style"];
  }

  if ([*(a1 + 40) legibilityStyle])
  {
    v7 = *(a1 + 32);
    v8 = _STUIStringFromUILegibilityStyle([*(a1 + 40) legibilityStyle]);
    [v7 appendString:v8 withName:@"legibilityStyle"];
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) foregroundColor];
  v11 = [v9 appendObject:v10 withName:@"foregroundColor" skipIfNil:1];

  [*(a1 + 40) foregroundAlpha];
  if (v12 != 1.0)
  {
    v13 = *(a1 + 32);
    [*(a1 + 40) foregroundAlpha];
    v14 = [v13 appendDouble:@"foregroundAlpha" withName:1 decimalPrecision:?];
  }

  v15 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isDoubleHeight") ifEqualTo:{@"isDoubleHeight", 1}];
  v16 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isTranslucent") ifEqualTo:{@"isTranslucent", 0}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isLegacy") ifEqualTo:{@"isLegacy", 1}];
}

@end