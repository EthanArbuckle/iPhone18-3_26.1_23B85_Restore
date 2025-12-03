@interface SBHSidebarVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)insets;
- (SBHSidebarVisualConfiguration)init;
- (double)effectiveContentWidthWithContainerWidth:(double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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

- (double)effectiveContentWidthWithContainerWidth:(double)width
{
  if ([(SBHSidebarVisualConfiguration *)self isContentFullscreen])
  {
    [(SBHSidebarVisualConfiguration *)self insets];
    return width - v5 - v6;
  }

  else
  {

    [(SBHSidebarVisualConfiguration *)self contentWidth];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  succinctDescriptionBuilder = [(SBHSidebarVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHSidebarVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHSidebarVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHSidebarVisualConfiguration *)self contentWidth];
  v5 = [succinctDescriptionBuilder appendFloat:@"contentWidth" withName:?];
  [(SBHSidebarVisualConfiguration *)self searchBarTopOffset];
  v6 = [succinctDescriptionBuilder appendFloat:@"searchBarTopOffset" withName:?];
  [(SBHSidebarVisualConfiguration *)self firstWidgetTopOffset];
  v7 = [succinctDescriptionBuilder appendFloat:@"firstWidgetTopOffset" withName:?];
  v8 = [succinctDescriptionBuilder appendBool:-[SBHSidebarVisualConfiguration isContentFullscreen](self withName:{"isContentFullscreen"), @"isContentFullscreen"}];
  v9 = NSStringFromDirectionalEdgeInsets(self->_insets);
  [succinctDescriptionBuilder appendString:v9 withName:@"insets"];

  return succinctDescriptionBuilder;
}

@end