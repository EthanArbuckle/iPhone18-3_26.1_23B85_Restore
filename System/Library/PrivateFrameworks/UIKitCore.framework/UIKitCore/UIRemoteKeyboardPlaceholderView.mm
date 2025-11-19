@interface UIRemoteKeyboardPlaceholderView
@end

@implementation UIRemoteKeyboardPlaceholderView

void __69___UIRemoteKeyboardPlaceholderView__configureDebugOverlayIfNecessary__block_invoke()
{
  if (qword_1ED4997F8 != -1)
  {
    dispatch_once(&qword_1ED4997F8, &__block_literal_global_1164_0);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"KeyboardPlaceholderDebugOverlay"];

  LODWORD(v0) = [v1 BOOLValue];
  if (v0)
  {
    if ([UIApp isFrontBoard])
    {
      v18 = [UIImage systemImageNamed:@"xmark"];
      v2 = [UIColor colorWithPatternImage:?];
      v3 = [v2 colorWithAlphaComponent:0.2];
      v4 = qword_1ED499740;
      qword_1ED499740 = v3;
    }

    else
    {
      v5 = [MEMORY[0x1E696AAE8] mainBundle];
      v6 = [v5 infoDictionary];
      v7 = [v6 objectForKeyedSubscript:@"CFBundleIcons"];
      v8 = [v7 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
      v9 = [v8 objectForKeyedSubscript:@"CFBundleIconFiles"];
      v18 = [v9 lastObject];

      if (v18)
      {
        v10 = [UIImage imageNamed:v18];
        v2 = [v10 imageByPreparingThumbnailOfSize:{1.0, 1.0}];

        v11 = [UIColor colorWithPatternImage:v2];
        v12 = [v11 colorWithAlphaComponent:0.5];
        v13 = qword_1ED499740;
        qword_1ED499740 = v12;
      }

      else
      {
        v14 = [MEMORY[0x1E696AAE8] mainBundle];
        v15 = [v14 bundleIdentifier];
        v16 = vcvtd_n_f64_u64([v15 hash], 0x40uLL);

        v17 = [UIColor colorWithHue:v16 saturation:1.0 brightness:1.0 alpha:0.5];
        v18 = 0;
        v2 = qword_1ED499740;
        qword_1ED499740 = v17;
      }
    }
  }
}

@end