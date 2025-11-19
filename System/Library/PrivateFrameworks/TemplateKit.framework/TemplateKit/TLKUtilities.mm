@interface TLKUtilities
+ (BOOL)deviceSupportsRotation;
+ (BOOL)isHiddenView:(id)a3;
+ (BOOL)isIpad;
+ (BOOL)isLargePhone;
+ (BOOL)isPhone;
+ (BOOL)isRenderingForRemoteDevice;
+ (BOOL)isSafari;
+ (BOOL)isShortcutsUI;
+ (BOOL)isSiri;
+ (BOOL)isSpotlightApp;
+ (BOOL)isSpotlightUICLI;
+ (BOOL)recursivelyCheckIfSubviewTapped:(id)a3 forTappedView:(id)a4;
+ (double)appIconCornerRadiusRatio;
+ (double)pixelWidthForView:(id)a3;
+ (double)standardRoundedCornerRadiusRatio;
+ (double)standardTableCellContentInset;
+ (id)testImageWithSize:(CGSize)a3 text:(id)a4 color:(id)a5;
+ (void)dispatchAsync:(id)a3;
+ (void)dispatchAsyncIfNecessary:(id)a3;
+ (void)dispatchMainIfNecessary:(id)a3;
+ (void)executeBlock:(id)a3 async:(BOOL)a4;
+ (void)performAnimatableChanges:(id)a3 animated:(BOOL)a4 completion:(id)a5;
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
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

+ (double)standardTableCellContentInset
{
  if (!_UISolariumEnabled() || !+[TLKUtilities isIpad](TLKUtilities, "isIpad") || (v4 = +[TLKUtilities isSiri], result = 22.0, v4))
  {
    v5 = [a1 isLargePhone];
    result = 16.0;
    if (v5)
    {
      return 20.0;
    }
  }

  return result;
}

+ (BOOL)isLargePhone
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
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

+ (void)dispatchAsync:(id)a3
{
  v3 = dispatchAsync__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
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

+ (void)dispatchAsyncIfNecessary:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v7 = a3;
  v5 = [v4 currentThread];
  v6 = [v5 isMainThread];

  if (v6)
  {
    [a1 dispatchAsync:v7];
  }

  else
  {
    v7[2]();
  }
}

+ (void)dispatchMainIfNecessary:(id)a3
{
  v3 = MEMORY[0x1E696AF00];
  block = a3;
  v4 = [v3 currentThread];
  v5 = [v4 isMainThread];

  if (v5)
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

+ (void)executeBlock:(id)a3 async:(BOOL)a4
{
  if (a4)
  {
    [a1 dispatchAsyncIfNecessary:a3];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

+ (BOOL)deviceSupportsRotation
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v3 = CGRectGetHeight(v5) > 667.0;

  return v3;
}

+ (double)pixelWidthForView:(id)a3
{
  [a3 tlks_scale];
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

    [a1 appIconCornerRadiusRatio];
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

+ (id)testImageWithSize:(CGSize)a3 text:(id)a4 color:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] blackColor];
  }

  v12 = v11;
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
  v25 = v8;
  v30 = width;
  v31 = height;
  v14 = v8;
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

+ (BOOL)recursivelyCheckIfSubviewTapped:(id)a3 forTappedView:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 == v7)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v8 = [v6 subviews];
    v9 = [v8 count];

    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [v6 subviews];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(v10);
            }

            v13 |= [a1 recursivelyCheckIfSubviewTapped:*(*(&v17 + 1) + 8 * i) forTappedView:v7];
          }

          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (void)performAnimatableChanges:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v6)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__TLKUtilities_performAnimatableChanges_animated_completion___block_invoke;
    v11[3] = &unk_1E7FD8F88;
    v12 = v8;
    [v10 _animateUsingDefaultTimingWithOptions:6 animations:v7 completion:v11];
  }

  else
  {
    v7[2](v7);
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
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

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

+ (BOOL)isHiddenView:(id)a3
{
  if (a3)
  {
    return [a3 isHidden];
  }

  else
  {
    return 1;
  }
}

@end