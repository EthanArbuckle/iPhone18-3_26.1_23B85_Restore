@interface SUViewControllerScriptProperties
- (SUViewControllerScriptProperties)initWithCoder:(id)a3;
- (UIEdgeInsets)scrollContentInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUViewControllerScriptProperties

- (SUViewControllerScriptProperties)initWithCoder:(id)a3
{
  v17[5] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SUViewControllerScriptProperties;
  v4 = [(SUViewControllerScriptProperties *)&v16 init];
  if (v4)
  {
    if ([a3 containsValueForKey:@"alwaysDispatchesScroll"])
    {
      v5 = [a3 decodeBoolForKey:@"alwaysDispatchesScroll"];
    }

    else
    {
      v6 = [MEMORY[0x1E69E47F8] sharedCache];
      v7 = [objc_msgSend(v6 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"p2-client-options"}];
      objc_opt_class();
      v8 = 0;
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 objectForKey:@"always-dispatch-scroll-events"];
      }

      if (objc_opt_respondsToSelector())
      {
        v5 = [v8 BOOLValue];
      }

      else
      {
        v5 = ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1;
      }
    }

    v4->_alwaysDispatchesScrollEvents = v5;
    v9 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v10 = [v9 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v17, 5)}];
    v4->_backgroundColor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bgcolor"];
    v4->_contextDictionary = [a3 decodeObjectOfClasses:v10 forKey:@"ctxdict"];
    v4->_doubleTapEnabled = [a3 decodeBoolForKey:@"doubletap"];
    v4->_embedded = [a3 decodeBoolForKey:@"embedded"];
    v4->_flashesScrollIndicators = [a3 decodeBoolForKey:@"flashscrollers"];
    v4->_inputViewObeysDOMFocus = [a3 decodeBoolForKey:@"inputViewObeysDOMFocus"];
    v4->_loadingIndicatorStyle = [a3 decodeIntegerForKey:@"activitystyle"];
    v4->_loadingTextColor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"loadtextcolor"];
    v4->_loadingTextShadowColor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"loadtextscolor"];
    v4->_placeholderBackgroundGradient = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"placeholdergradient"];
    [a3 decodeUIEdgeInsetsForKey:@"scrollinsets"];
    v4->_scrollContentInsets.top = v11;
    v4->_scrollContentInsets.left = v12;
    v4->_scrollContentInsets.bottom = v13;
    v4->_scrollContentInsets.right = v14;
    v4->_scrollingDisabled = [a3 decodeBoolForKey:@"scrollingdisabled"];
    v4->_shouldLoadProgressively = [a3 decodeBoolForKey:@"loadprogressively"];
    v4->_shouldShowFormAccessory = [a3 decodeBoolForKey:@"formaccessory"];
    v4->_showsBackgroundShadow = [a3 decodeBoolForKey:@"bgshadow"];
    v4->_showsHorizontalScrollIndicator = [a3 decodeBoolForKey:@"hscroller"];
    v4->_showsVerticalScrollIndicator = [a3 decodeBoolForKey:@"vscroller"];
    v4->_topExtensionColor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"topcolor"];
    v4->_usesBlurredBackground = [a3 decodeBoolForKey:@"blurredbg"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUViewControllerScriptProperties;
  [(SUViewControllerScriptProperties *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_alwaysDispatchesScrollEvents;
  *(v5 + 16) = self->_backgroundColor;
  *(v5 + 24) = [(NSDictionary *)self->_contextDictionary copyWithZone:a3];
  *(v5 + 32) = self->_doubleTapEnabled;
  *(v5 + 33) = self->_embedded;
  *(v5 + 34) = self->_flashesScrollIndicators;
  *(v5 + 35) = self->_inputViewObeysDOMFocus;
  *(v5 + 40) = self->_loadingIndicatorStyle;
  *(v5 + 48) = self->_loadingTextColor;
  *(v5 + 56) = self->_loadingTextShadowColor;
  *(v5 + 64) = [(SUGradient *)self->_placeholderBackgroundGradient copyWithZone:a3];
  v6 = *&self->_scrollContentInsets.bottom;
  *(v5 + 72) = *&self->_scrollContentInsets.top;
  *(v5 + 88) = v6;
  *(v5 + 104) = self->_scrollingDisabled;
  *(v5 + 105) = self->_shouldLoadProgressively;
  *(v5 + 106) = self->_shouldShowFormAccessory;
  *(v5 + 109) = self->_showsBackgroundShadow;
  *(v5 + 107) = self->_showsHorizontalScrollIndicator;
  *(v5 + 108) = self->_showsVerticalScrollIndicator;
  *(v5 + 112) = self->_topExtensionColor;
  *(v5 + 120) = self->_usesBlurredBackground;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [(SUViewControllerScriptProperties *)a2 encodeWithCoder:?];
  }

  [a3 encodeBool:self->_alwaysDispatchesScrollEvents forKey:@"alwaysDispatchesScroll"];
  [a3 safeEncodeUIColor:self->_backgroundColor forKey:@"bgcolor"];
  [a3 encodeObject:self->_contextDictionary forKey:@"ctxdict"];
  [a3 encodeBool:self->_doubleTapEnabled forKey:@"doubletap"];
  [a3 encodeBool:self->_embedded forKey:@"embedded"];
  [a3 encodeBool:self->_flashesScrollIndicators forKey:@"flashscrollers"];
  [a3 encodeBool:self->_inputViewObeysDOMFocus forKey:@"inputViewObeysDOMFocus"];
  [a3 encodeInteger:self->_loadingIndicatorStyle forKey:@"activitystyle"];
  [a3 safeEncodeUIColor:self->_loadingTextColor forKey:@"loadtextcolor"];
  [a3 safeEncodeUIColor:self->_loadingTextShadowColor forKey:@"loadtextscolor"];
  [a3 encodeObject:self->_placeholderBackgroundGradient forKey:@"placeholdergradient"];
  [a3 encodeUIEdgeInsets:@"scrollinsets" forKey:{self->_scrollContentInsets.top, self->_scrollContentInsets.left, self->_scrollContentInsets.bottom, self->_scrollContentInsets.right}];
  [a3 encodeBool:self->_scrollingDisabled forKey:@"scrollingdisabled"];
  [a3 encodeBool:self->_shouldLoadProgressively forKey:@"loadprogressively"];
  [a3 encodeBool:self->_shouldShowFormAccessory forKey:@"formaccessory"];
  [a3 encodeBool:self->_showsBackgroundShadow forKey:@"bgshadow"];
  [a3 encodeBool:self->_showsHorizontalScrollIndicator forKey:@"hscroller"];
  [a3 encodeBool:self->_showsVerticalScrollIndicator forKey:@"vscroller"];
  [a3 safeEncodeUIColor:self->_topExtensionColor forKey:@"topcolor"];
  usesBlurredBackground = self->_usesBlurredBackground;

  [a3 encodeBool:usesBlurredBackground forKey:@"blurredbg"];
}

- (UIEdgeInsets)scrollContentInsets
{
  top = self->_scrollContentInsets.top;
  left = self->_scrollContentInsets.left;
  bottom = self->_scrollContentInsets.bottom;
  right = self->_scrollContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (uint64_t)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUViewControllerScriptProperties.m" lineNumber:159 description:0];
}

@end