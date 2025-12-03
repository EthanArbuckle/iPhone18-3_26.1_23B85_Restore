@interface SBHFloatyFolderVisualConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)contentBackgroundSize;
- (CGSize)pageControlCustomPadding;
- (SBHFloatyFolderVisualConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBHFloatyFolderVisualConfiguration

- (SBHFloatyFolderVisualConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBHFloatyFolderVisualConfiguration;
  result = [(SBHFloatyFolderVisualConfiguration *)&v3 init];
  if (result)
  {
    *&result->_continuousCornerRadius = vdupq_n_s64(0x4049000000000000uLL);
    *&result->_titleHorizontalInset = xmmword_1BEE85A00;
    result->_titleVerticallyCentered = 0;
    *&result->_pageControlAreaHeight = xmmword_1BEE85A10;
    result->_contentBackgroundSize = vdupq_n_s64(0x4079000000000000uLL);
    result->_pageControlCustomPadding = *MEMORY[0x1E695F060];
  }

  return result;
}

- (CGSize)contentBackgroundSize
{
  width = self->_contentBackgroundSize.width;
  height = self->_contentBackgroundSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 4) = self->_contentBackgroundSize;
    *(result + 2) = *&self->_continuousCornerRadius;
    *(result + 3) = *&self->_titleFontSize;
    *(result + 4) = *&self->_titleHorizontalInset;
    *(result + 8) = self->_titleVerticallyCentered;
    *(result + 5) = *&self->_titleBottomInset;
    *(result + 6) = *&self->_pageControlAreaHeight;
    *(result + 5) = self->_pageControlCustomPadding;
    *(result + 7) = *&self->_rubberBandIntervalForOverscroll;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = self->_contentBackgroundSize.width == v7->_contentBackgroundSize.width && self->_contentBackgroundSize.height == v7->_contentBackgroundSize.height;
      if (v8 && self->_continuousCornerRadius == v7->_continuousCornerRadius && self->_titleFontSize == v7->_titleFontSize && self->_titleHorizontalInset == v7->_titleHorizontalInset && self->_titleBottomInset == v7->_titleBottomInset && self->_titleVerticallyCentered == v7->_titleVerticallyCentered && self->_pageControlAreaHeight == v7->_pageControlAreaHeight)
      {
        v9 = 0;
        if (self->_pageControlCustomPadding.width == v7->_pageControlCustomPadding.width && self->_pageControlCustomPadding.height == v7->_pageControlCustomPadding.height)
        {
          v9 = self->_rubberBandIntervalForOverscroll == v7->_rubberBandIntervalForOverscroll;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  titleHorizontalInset = self->_titleHorizontalInset;
  v3 = self->_contentBackgroundSize.width + self->_contentBackgroundSize.height + self->_continuousCornerRadius + self->_titleFontSize + titleHorizontalInset;
  LOBYTE(titleHorizontalInset) = self->_titleVerticallyCentered;
  return (self->_rubberBandIntervalForOverscroll + self->_pageControlCustomPadding.height + self->_pageControlCustomPadding.width + self->_pageControlAreaHeight + self->_titleBottomInset + v3 + *&titleHorizontalInset);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHFloatyFolderVisualConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHFloatyFolderVisualConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHFloatyFolderVisualConfiguration *)self succinctDescriptionBuilder];
  [(SBHFloatyFolderVisualConfiguration *)self contentBackgroundSize];
  v5 = [succinctDescriptionBuilder appendSize:@"contentBackgroundSize" withName:?];
  [(SBHFloatyFolderVisualConfiguration *)self continuousCornerRadius];
  v6 = [succinctDescriptionBuilder appendFloat:@"continuousCornerRadius" withName:?];
  [(SBHFloatyFolderVisualConfiguration *)self titleFontSize];
  v7 = [succinctDescriptionBuilder appendFloat:@"titleFontSize" withName:?];
  [(SBHFloatyFolderVisualConfiguration *)self titleHorizontalInset];
  v8 = [succinctDescriptionBuilder appendFloat:@"titleHorizontalInset" withName:?];
  [(SBHFloatyFolderVisualConfiguration *)self titleBottomInset];
  v9 = [succinctDescriptionBuilder appendFloat:@"titleBottomInset" withName:?];
  v10 = [succinctDescriptionBuilder appendBool:-[SBHFloatyFolderVisualConfiguration isTitleVerticallyCentered](self withName:{"isTitleVerticallyCentered"), @"titleVerticallyCentered"}];
  [(SBHFloatyFolderVisualConfiguration *)self pageControlAreaHeight];
  v11 = [succinctDescriptionBuilder appendFloat:@"pageControlAreaHeight" withName:?];
  [(SBHFloatyFolderVisualConfiguration *)self pageControlCustomPadding];
  v12 = NSStringFromCGSize(v16);
  [succinctDescriptionBuilder appendString:v12 withName:@"pageControlCustomPadding"];

  [(SBHFloatyFolderVisualConfiguration *)self rubberBandIntervalForOverscroll];
  v13 = [succinctDescriptionBuilder appendFloat:@"rubberBandIntervalForOverscroll" withName:?];

  return succinctDescriptionBuilder;
}

- (CGSize)pageControlCustomPadding
{
  width = self->_pageControlCustomPadding.width;
  height = self->_pageControlCustomPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

@end