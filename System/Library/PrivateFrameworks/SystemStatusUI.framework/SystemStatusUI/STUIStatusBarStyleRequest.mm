@interface STUIStatusBarStyleRequest
- (BOOL)isEqual:(id)a3;
- (STUIStatusBarStyleRequest)initWithResolvedStyle:(int64_t)a3 foregroundColor:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (STUIStatusBarStyleRequest)initWithResolvedStyle:(int64_t)a3 foregroundColor:(id)a4
{
  v6 = a4;
  v7 = _UIStatusBarStyleFromResolvedStyle();
  v10.receiver = self;
  v10.super_class = STUIStatusBarStyleRequest;
  v8 = [(STUIStatusBarStyleRequest *)&v10 initWithStyle:v7 legibilityStyle:0 foregroundColor:v6];

  if (v8)
  {
    v8->_resolvedStyle = a3;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STUIStatusBarStyleRequest;
  if ([(STUIStatusBarStyleRequest *)&v8 isEqual:v4])
  {
    resolvedStyle = self->_resolvedStyle;
    v6 = resolvedStyle == [v4 resolvedStyle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarStyleRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarStyleRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarStyleRequest *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarStyleRequest *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [v7 activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__STUIStatusBarStyleRequest__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

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