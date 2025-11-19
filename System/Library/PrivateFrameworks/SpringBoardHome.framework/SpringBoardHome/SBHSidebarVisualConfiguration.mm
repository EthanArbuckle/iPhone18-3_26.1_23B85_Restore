@interface SBHSidebarVisualConfiguration
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)insets;
- (SBHSidebarVisualConfiguration)init;
- (double)effectiveContentWidthWithContainerWidth:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBHSidebarVisualConfiguration

- (NSDirectionalEdgeInsets)insets
{
  top = self->_insets.top;
  leading = self->_insets.leading;
  bottom = self->_insets.bottom;
  trailing = self->_insets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (SBHSidebarVisualConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBHSidebarVisualConfiguration;
  result = [(SBHSidebarVisualConfiguration *)&v3 init];
  if (result)
  {
    result->_contentWidth = 400.0;
  }

  return result;
}

- (double)effectiveContentWidthWithContainerWidth:(double)a3
{
  if ([(SBHSidebarVisualConfiguration *)self isContentFullscreen])
  {
    [(SBHSidebarVisualConfiguration *)self insets];
    return a3 - v5 - v6;
  }

  else
  {

    [(SBHSidebarVisualConfiguration *)self contentWidth];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    v5 = *&self->_insets.top;
    *(result + 56) = *&self->_insets.bottom;
    *(result + 40) = v5;
    *(result + 2) = *&self->_contentWidth;
    *(result + 8) = self->_contentFullscreen;
    *(result + 3) = *&self->_searchBarTopOffset;
    *(result + 4) = *&self->_firstWidgetTopOffset;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, *&v7->_insets.top), vceqq_f64(*&self->_insets.bottom, *&v7->_insets.bottom)))) & 1) != 0 && self->_contentWidth == v7->_contentWidth && self->_contentFullscreen == v7->_contentFullscreen && self->_searchBarTopOffset == v7->_searchBarTopOffset && self->_firstWidgetTopOffset == v7->_firstWidgetTopOffset;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  contentWidth = self->_contentWidth;
  v3 = self->_insets.top + self->_insets.leading + self->_insets.bottom + self->_insets.trailing + contentWidth;
  LOBYTE(contentWidth) = self->_contentFullscreen;
  return (self->_firstWidgetTopOffset + self->_searchBarTopOffset + v3 + *&contentWidth);
}

- (id)succinctDescription
{
  v2 = [(SBHSidebarVisualConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHSidebarVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHSidebarVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHSidebarVisualConfiguration *)self contentWidth];
  v5 = [v4 appendFloat:@"contentWidth" withName:?];
  [(SBHSidebarVisualConfiguration *)self searchBarTopOffset];
  v6 = [v4 appendFloat:@"searchBarTopOffset" withName:?];
  [(SBHSidebarVisualConfiguration *)self firstWidgetTopOffset];
  v7 = [v4 appendFloat:@"firstWidgetTopOffset" withName:?];
  v8 = [v4 appendBool:-[SBHSidebarVisualConfiguration isContentFullscreen](self withName:{"isContentFullscreen"), @"isContentFullscreen"}];
  v9 = NSStringFromDirectionalEdgeInsets(self->_insets);
  [v4 appendString:v9 withName:@"insets"];

  return v4;
}

@end