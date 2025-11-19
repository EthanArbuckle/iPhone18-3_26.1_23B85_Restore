@interface SXDOMCacheKey
- (BOOL)isEqual:(id)a3;
- (SXDOMCacheKey)initWithLayoutOptions:(id)a3 hints:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SXDOMCacheKey

- (SXDOMCacheKey)initWithLayoutOptions:(id)a3 hints:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXDOMCacheKey;
  v9 = [(SXDOMCacheKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, a3);
    objc_storeStrong(&v10->_hints, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  if (self == v4 || (options = self->_options, options == v4->_options) || (v6 = [(SXLayoutOptions *)options diffWithLayoutOptions:?]) == 0)
  {
LABEL_48:
    v10 = 1;
    goto LABEL_49;
  }

  v7 = v6;
  hints = self->_hints;
  if (!hints)
  {
    goto LABEL_47;
  }

  v9 = v4->_hints;
  if (!v9 || hints != v9 && ![(SXJSONObject *)hints isEqual:?])
  {
    goto LABEL_47;
  }

  if ((v7 & 1) != 0 && ([(SXConditionHints *)self->_hints minColumns]|| [(SXConditionHints *)self->_hints maxColumns]) || (v7 & 2) != 0 && ([(SXConditionHints *)self->_hints minViewportWidth]|| [(SXConditionHints *)self->_hints maxViewportWidth]|| [(SXConditionHints *)self->_hints minViewportAspectRatio]|| [(SXConditionHints *)self->_hints maxViewportAspectRatio]))
  {
    goto LABEL_47;
  }

  if ((v7 & 4) != 0)
  {
    if ([(SXConditionHints *)self->_hints minContentSizeCategory]|| [(SXConditionHints *)self->_hints maxContentSizeCategory]| v7 & 0x100)
    {
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if ((v7 & 0x100) == 0)
  {
LABEL_25:
    if ((v7 & 8) != 0 && [(SXConditionHints *)self->_hints subscriptionStatus]|| (v7 & 0x10) != 0 && [(SXConditionHints *)self->_hints subscriptionStatus]|| (v7 & 0x200) != 0 && [(SXConditionHints *)self->_hints horizontalSizeClass]|| (v7 & 0x400) != 0 && [(SXConditionHints *)self->_hints verticalSizeClass]|| (v7 & 0x40) != 0 && [(SXConditionHints *)self->_hints testing]|| (v7 & 0x20) != 0 && [(SXConditionHints *)self->_hints viewLocation]|| (v7 & 0x800) != 0 && [(SXConditionHints *)self->_hints newsletter]|| (v7 & 0x20000) != 0 && [(SXConditionHints *)self->_hints following]|| (v7 & 0x1000) != 0 && [(SXConditionHints *)self->_hints upsellScenario]|| (v7 & 0x2000) != 0 && [(SXConditionHints *)self->_hints subscriptionActivationEligibility]|| (v7 & 0x10000) != 0 && [(SXConditionHints *)self->_hints offerIdentifier])
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = 0;
LABEL_49:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SXDOMCacheKey alloc];
  options = self->_options;
  hints = self->_hints;

  return [(SXDOMCacheKey *)v4 initWithLayoutOptions:options hints:hints];
}

@end