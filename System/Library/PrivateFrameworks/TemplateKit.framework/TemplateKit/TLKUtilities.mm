@interface TLKUtilities
+ (BOOL)deviceSupportsRotation;
+ (BOOL)isHiddenView:(id)view;
+ (BOOL)isIpad;
+ (BOOL)isLargePhone;
+ (BOOL)isPhone;
+ (BOOL)isRenderingForRemoteDevice;
+ (BOOL)isSafari;
+ (BOOL)isShortcutsUI;
+ (BOOL)isSiri;
+ (BOOL)isSpotlightApp;
+ (BOOL)isSpotlightUICLI;
+ (BOOL)recursivelyCheckIfSubviewTapped:(id)tapped forTappedView:(id)view;
+ (double)appIconCornerRadiusRatio;
+ (double)pixelWidthForView:(id)view;
+ (double)standardRoundedCornerRadiusRatio;
+ (double)standardTableCellContentInset;
+ (id)testImageWithSize:(CGSize)size text:(id)text color:(id)color;
+ (void)dispatchAsync:(id)async;
+ (void)dispatchAsyncIfNecessary:(id)necessary;
+ (void)dispatchMainIfNecessary:(id)necessary;
+ (void)executeBlock:(id)block async:(BOOL)async;
+ (void)performAnimatableChanges:(id)changes animated:(BOOL)animated completion:(id)completion;
@end

@implementation TLKUtilities

+ (BOOL)isSpotlightApp
{
  if (isSpotlightApp_onceToken != -1)
  {
    +[TLKUtilities isSpotlightApp];
  }

  return isSpotlightApp_isSpotlight;
}

void __30__TLKUtilities_isSpotlightApp__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSpotlightApp_isSpotlight = [v0 isEqualToString:@"com.apple.Spotlight"];
}

+ (BOOL)isSiri
{
  if (isSiri_onceToken != -1)
  {
    +[TLKUtilities isSiri];
  }

  return isSiri_isSiri;
}

+ (BOOL)isIpad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

+ (double)standardTableCellContentInset
{
  if (!_UISolariumEnabled() || !+[TLKUtilities isIpad](TLKUtilities, "isIpad") || (v4 = +[TLKUtilities isSiri], result = 22.0, v4))
  {
    isLargePhone = [self isLargePhone];
    result = 16.0;
    if (isLargePhone)
    {
      return 20.0;
    }
  }

  return result;
}

+ (BOOL)isLargePhone
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v3 = CGRectGetWidth(v5) >= 414.0;

  return v3;
}

void __22__TLKUtilities_isSiri__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSiri_isSiri = [v0 isEqualToString:@"com.apple.siri"];
}

void __42__TLKUtilities_isRenderingForRemoteDevice__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  isRenderingForRemoteDevice_isRenderingForRemoteDevice = [v0 isEqualToString:@"SearchToolExtension"];
}

+ (double)appIconCornerRadiusRatio
{
  v2 = _UISolariumEnabled();
  result = 0.225;
  if (v2)
  {
    return 0.26;
  }

  return result;
}

+ (BOOL)isRenderingForRemoteDevice
{
  if (isRenderingForRemoteDevice_onceToken[0] != -1)
  {
    +[TLKUtilities isRenderingForRemoteDevice];
  }

  return isRenderingForRemoteDevice_isRenderingForRemoteDevice;
}

+ (void)dispatchAsync:(id)async
{
  v3 = dispatchAsync__onceToken;
  asyncCopy = async;
  v6 = asyncCopy;
  if (v3 == -1)
  {
    v5 = asyncCopy;
  }

  else
  {
    +[TLKUtilities dispatchAsync:];
    v5 = v6;
  }

  dispatch_async(dispatchAsync__queue, v5);
}

void __30__TLKUtilities_dispatchAsync___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("tlkasyncqueue", attr);
  v2 = dispatchAsync__queue;
  dispatchAsync__queue = v1;
}

+ (void)dispatchAsyncIfNecessary:(id)necessary
{
  v4 = MEMORY[0x1E696AF00];
  necessaryCopy = necessary;
  currentThread = [v4 currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    [self dispatchAsync:necessaryCopy];
  }

  else
  {
    necessaryCopy[2]();
  }
}

+ (void)dispatchMainIfNecessary:(id)necessary
{
  v3 = MEMORY[0x1E696AF00];
  block = necessary;
  currentThread = [v3 currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

+ (void)executeBlock:(id)block async:(BOOL)async
{
  if (async)
  {
    [self dispatchAsyncIfNecessary:block];
  }

  else
  {
    (*(block + 2))(block);
  }
}

+ (BOOL)deviceSupportsRotation
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v3 = CGRectGetHeight(v5) > 667.0;

  return v3;
}

+ (double)pixelWidthForView:(id)view
{
  [view tlks_scale];
  if (v3 == 0.0)
  {
    v4 = objc_opt_new();
    [v4 tlks_scale];
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  return 1.0 / v6;
}

+ (double)standardRoundedCornerRadiusRatio
{
  if (!+[TLKUtilities isSiri](TLKUtilities, "isSiri") && _os_feature_enabled_impl() && +[TLKUtilities isMacOS]|| _UISolariumEnabled())
  {

    [self appIconCornerRadiusRatio];
  }

  else
  {
    v4 = +[TLKUtilities isMacOS];
    result = 0.166666667;
    if (v4)
    {
      return 0.1;
    }
  }

  return result;
}

+ (id)testImageWithSize:(CGSize)size text:(id)text color:(id)color
{
  height = size.height;
  width = size.width;
  textCopy = text;
  colorCopy = color;
  v10 = colorCopy;
  if (colorCopy)
  {
    blackColor = colorCopy;
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v12 = blackColor;
  v13 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __45__TLKUtilities_testImageWithSize_text_color___block_invoke;
  v23 = &unk_1E7FD8F60;
  v26 = 0;
  v27 = 0;
  v28 = width;
  v29 = height;
  v24 = v12;
  v25 = textCopy;
  v30 = width;
  v31 = height;
  v14 = textCopy;
  v15 = v12;
  v16 = [v13 imageWithActions:&v20];
  v17 = [TLKImage alloc];
  v18 = [(TLKImage *)v17 initWithImage:v16, v20, v21, v22, v23];
  [(TLKImage *)v18 setIsTemplate:v10 == 0];

  return v18;
}

void __45__TLKUtilities_testImageWithSize_text_color___block_invoke(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) set];
  [v3 fillRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  if (*(a1 + 40))
  {
    v4 = *(a1 + 80) * 0.05;
    [MEMORY[0x1E69DB878] systemFontSize];
    v6 = v5;
    v7 = *(a1 + 40);
    v34 = *MEMORY[0x1E69DB648];
    v8 = v34;
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
    v35[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    [v7 sizeWithAttributes:v10];
    v12 = v11;

    v13 = floor(v6 * ((*(a1 + 80) + v4 * -2.0) / v12));
    v14 = *(a1 + 40);
    v32 = v8;
    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:v13];
    v33 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v14 sizeWithAttributes:v16];
    v18 = v17;
    v20 = v19;

    CGContextSetBlendMode([v3 CGContext], kCGBlendModeClear);
    v21 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v22 = [v21 mutableCopy];

    [v22 setAlignment:1];
    v23 = *(a1 + 40);
    [TLKLayoutUtilities deviceScaledRoundedValue:0 forView:(*(a1 + 80) - v18) * 0.5];
    v25 = v24;
    [TLKLayoutUtilities deviceScaledRoundedValue:0 forView:(*(a1 + 88) - v20) * 0.5];
    v27 = v26;
    v30[0] = v8;
    v28 = [MEMORY[0x1E69DB878] systemFontOfSize:v13];
    v30[1] = *MEMORY[0x1E69DB688];
    v31[0] = v28;
    v31[1] = v22;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v23 drawInRect:v29 withAttributes:{v25, v27, v18, v20}];
  }
}

+ (BOOL)recursivelyCheckIfSubviewTapped:(id)tapped forTappedView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  viewCopy = view;
  if (tappedCopy == viewCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    subviews = [tappedCopy subviews];
    v9 = [subviews count];

    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      subviews2 = [tappedCopy subviews];
      v11 = [subviews2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(subviews2);
            }

            v13 |= [self recursivelyCheckIfSubviewTapped:*(*(&v17 + 1) + 8 * i) forTappedView:viewCopy];
          }

          v12 = [subviews2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13 & 1;
}

+ (void)performAnimatableChanges:(id)changes animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  changesCopy = changes;
  completionCopy = completion;
  v9 = completionCopy;
  if (animatedCopy)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__TLKUtilities_performAnimatableChanges_animated_completion___block_invoke;
    v11[3] = &unk_1E7FD8F88;
    v12 = completionCopy;
    [v10 _animateUsingDefaultTimingWithOptions:6 animations:changesCopy completion:v11];
  }

  else
  {
    changesCopy[2](changesCopy);
    if (v9)
    {
      v9[2](v9);
    }
  }
}

uint64_t __61__TLKUtilities_performAnimatableChanges_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)isPhone
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

+ (BOOL)isShortcutsUI
{
  if (isShortcutsUI_onceToken != -1)
  {
    +[TLKUtilities isShortcutsUI];
  }

  return isShortcutsUI_isShortcutsUI;
}

void __29__TLKUtilities_isShortcutsUI__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isShortcutsUI_isShortcutsUI = [v0 isEqualToString:@"com.apple.ShortcutsUI"];
}

+ (BOOL)isSafari
{
  if (isSafari_onceToken != -1)
  {
    +[TLKUtilities isSafari];
  }

  return isSafari_isSafari;
}

void __24__TLKUtilities_isSafari__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSafari_isSafari = [v0 isEqualToString:@"com.apple.mobilesafari"];
}

+ (BOOL)isSpotlightUICLI
{
  if (isSpotlightUICLI_onceToken != -1)
  {
    +[TLKUtilities isSpotlightUICLI];
  }

  return isSpotlightUICLI_isSpotlightUICLI;
}

void __32__TLKUtilities_isSpotlightUICLI__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSpotlightUICLI_isSpotlightUICLI = [v0 isEqualToString:@"com.apple.spotlightui.cli"];
}

+ (BOOL)isHiddenView:(id)view
{
  if (view)
  {
    return [view isHidden];
  }

  else
  {
    return 1;
  }
}

@end