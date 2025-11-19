@interface TPIncomingCallMetricsProvider
+ (BOOL)deviceHasHomeButton;
+ (CGRect)fullDeviceBounds;
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6;
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 window:(id)a4;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 window:(id)a4;
+ (double)callDetailsButtonPaddingPercentTop_ForSnapshot;
+ (double)callDetailsButtonPaddingTop_ForSnapshot;
+ (double)callDetailsButtonPaddingTrailPercent_ForSnapshot;
+ (double)callDetailsButtonPaddingTrail_ForSnapshot;
+ (double)fullDeviceHeight;
+ (double)fullDeviceWidth;
+ (double)homeButtonOffsetForSafeAreaFrame:(CGRect)a3;
+ (double)incomingCallAndInCallControlsBottomPadding;
+ (double)sixPercentOfDeviceHeight;
+ (double)twelvePercentOfDeviceHeight;
+ (double)twentyTwoPointFivePercentOfDeviceHeight;
+ (double)verticalTextTopMargin;
+ (id)posterDisplayNameForContact:(id)a3;
+ (void)addCallerNameView:(id)a3 toContainerView:(id)a4;
+ (void)addCallerNameView:(id)a3 toViewController:(id)a4;
+ (void)constraintIncomingCallTextViewAdapterWrapper:(id)a3 toView:(id)a4;
+ (void)constraintIncomingCallTextViewForHorizontalLayout:(id)a3 toView:(id)a4;
+ (void)constraintIncomingCallTextViewForVerticalLayout:(id)a3 toView:(id)a4;
@end

@implementation TPIncomingCallMetricsProvider

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 window:(id)a4
{
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:a3 caption:0 window:a4 preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [objc_alloc(getPRIncomingCallTextViewAdapterWrapperClass()) initWithName:v13 status:v12];

  [v14 setPreferredLayout:0];
  if (v11)
  {
    [v14 setEmphasizedNameFont:v11];
  }

  if (v10)
  {
    [v10 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 bounds];
    v16 = v24;
    v18 = v25;
    v20 = v26;
    v22 = v27;
  }

  v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v18, v20, v22}];
  v29 = [v14 viewController];
  v30 = [v29 view];

  [v28 addSubview:v30];
  [a1 constraintIncomingCallTextViewAdapterWrapper:v14 toView:v28];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  [v30 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = TPDefaultLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v51.origin.x = v32;
    v51.origin.y = v34;
    v51.size.width = v36;
    v51.size.height = v38;
    v40 = NSStringFromCGRect(v51);
    v46 = 138412546;
    v47 = v40;
    v48 = 2112;
    v49 = v10;
    _os_log_impl(&dword_1B4894000, v39, OS_LOG_TYPE_DEFAULT, "Returning horizontalNameLabelBoundingRect: %@ using window: %@", &v46, 0x16u);
  }

  v41 = *MEMORY[0x1E69E9840];
  v42 = v32;
  v43 = v34;
  v44 = v36;
  v45 = v38;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 window:(id)a4
{
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:a3 caption:0 window:a4 preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)a3 caption:(id)a4 window:(id)a5 preferredTitleFont:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [objc_alloc(getPRIncomingCallTextViewAdapterWrapperClass()) initWithName:v13 status:v12];

  [v14 setPreferredLayout:1];
  if (v11)
  {
    [v14 setEmphasizedNameFont:v11];
  }

  if (v10)
  {
    [v10 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 bounds];
    v16 = v24;
    v18 = v25;
    v20 = v26;
    v22 = v27;
  }

  v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v18, v20, v22}];
  v29 = [v14 viewController];
  v30 = [v29 view];

  [v28 addSubview:v30];
  [a1 constraintIncomingCallTextViewAdapterWrapper:v14 toView:v28];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  [v30 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [getPRIncomingCallMetricsProviderClass() maxVerticalTextHeight];
  if (v38 > v39)
  {
    [getPRIncomingCallMetricsProviderClass() maxVerticalTextHeight];
    v38 = v40;
  }

  v41 = TPDefaultLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v51.origin.x = v32;
    v51.origin.y = v34;
    v51.size.width = v36;
    v51.size.height = v38;
    v42 = NSStringFromCGRect(v51);
    v48 = 138412290;
    v49 = v42;
    _os_log_impl(&dword_1B4894000, v41, OS_LOG_TYPE_DEFAULT, "Returning verticalNameLabelBoundingRect: %@", &v48, 0xCu);
  }

  v43 = *MEMORY[0x1E69E9840];
  v44 = v32;
  v45 = v34;
  v46 = v36;
  v47 = v38;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (void)addCallerNameView:(id)a3 toViewController:(id)a4
{
  v46[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 contentViewCoordinator];
  v8 = [v7 vibrantObscurableContentView];
  v9 = v5;
  v10 = [v9 viewController];
  [v10 willMoveToParentViewController:v6];
  [v6 addChildViewController:v10];
  v11 = [v10 view];
  [v8 addSubview:v11];

  [v10 didMoveToParentViewController:v6];
  [v6 registerPosterAppearanceObserver:v9];
  v12 = [v6 obscurableContentView];
  [TPIncomingCallMetricsProvider constraintIncomingCallTextViewAdapterWrapper:v9 toView:v12];

  v13 = [v9 emojiViewController];
  if (v13)
  {
    v45 = [v7 obscurableOverlayView];
    [v13 willMoveToParentViewController:v6];
    [v6 addChildViewController:v13];
    v14 = [v13 view];
    [v45 addSubview:v14];

    [v13 didMoveToParentViewController:v6];
    v15 = [v13 view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = MEMORY[0x1E696ACD8];
    v44 = [v13 view];
    v42 = [v44 leadingAnchor];
    v43 = [v10 view];
    v41 = [v43 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v46[0] = v40;
    v39 = [v13 view];
    v37 = [v39 trailingAnchor];
    v38 = [v10 view];
    v36 = [v38 trailingAnchor];
    v34 = [v37 constraintEqualToAnchor:v36];
    v46[1] = v34;
    v33 = [v13 view];
    v31 = [v33 topAnchor];
    v32 = [v10 view];
    v30 = [v32 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v46[2] = v29;
    v28 = [v13 view];
    v27 = [v28 bottomAnchor];
    v16 = [v10 view];
    v17 = [v16 bottomAnchor];
    [v27 constraintEqualToAnchor:v17];
    v19 = v18 = v7;
    v46[3] = v19;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    v20 = v10;
    v21 = v8;
    v23 = v22 = v9;
    [v35 activateConstraints:v23];

    v9 = v22;
    v8 = v21;
    v10 = v20;

    v7 = v18;
  }

  v24 = [v7 vibrantObscurableContentView];
  [v24 setNeedsLayout];

  v25 = [v7 vibrantObscurableContentView];
  [v25 layoutIfNeeded];

  [v9 tightFrame];
  [v7 setPrimaryContentTightFrame:?];

  v26 = *MEMORY[0x1E69E9840];
}

+ (void)addCallerNameView:(id)a3 toContainerView:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 viewController];
  v7 = [v6 view];
  [v5 addSubview:v7];

  [TPIncomingCallMetricsProvider constraintIncomingCallTextViewAdapterWrapper:v8 toView:v5];
}

+ (void)constraintIncomingCallTextViewAdapterWrapper:(id)a3 toView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 viewController];
  v10 = [v8 view];

  v9 = [v7 layout];
  if (v9 == 1)
  {
    [a1 constraintIncomingCallTextViewForVerticalLayout:v10 toView:v6];
  }

  else
  {
    [a1 constraintIncomingCallTextViewForHorizontalLayout:v10 toView:v6];
  }
}

+ (void)constraintIncomingCallTextViewForHorizontalLayout:(id)a3 toView:(id)a4
{
  v26[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  +[TPIncomingCallMetricsProvider twentyTwoPointFivePercentOfDeviceHeight];
  v8 = v7;
  [getPRIncomingCallMetricsProviderClass() horizontalTextEdgePadding];
  v10 = v9;
  v22 = MEMORY[0x1E696ACD8];
  v25 = [v6 lastBaselineAnchor];
  v24 = [v5 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:v8];
  v26[0] = v23;
  v11 = [v6 centerXAnchor];
  v12 = [v5 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v26[1] = v13;
  v14 = [v6 leadingAnchor];
  v15 = [v5 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v10];
  v26[2] = v16;
  v17 = [v6 trailingAnchor];

  v18 = [v5 trailingAnchor];

  v19 = [v17 constraintEqualToAnchor:v18 constant:-v10];
  v26[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v22 activateConstraints:v20];

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)constraintIncomingCallTextViewForVerticalLayout:(id)a3 toView:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  +[TPIncomingCallMetricsProvider verticalTextTopMargin];
  v8 = v7;
  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  if ([v9 screenSizeCategory] == 1)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  v22 = MEMORY[0x1E696ACD8];
  v11 = [v6 topAnchor];
  v12 = [v5 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:v8];
  v23[0] = v13;
  v14 = [v6 leftAnchor];
  v15 = [v5 leftAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:v10];
  v23[1] = v16;
  v17 = [v6 rightAnchor];

  v18 = [v5 rightAnchor];

  v19 = [v17 constraintEqualToAnchor:v18 constant:-v10];
  v23[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [v22 activateConstraints:v20];

  v21 = *MEMORY[0x1E69E9840];
}

+ (double)homeButtonOffsetForSafeAreaFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = 0.0;
  if (+[TPUIConfiguration pipStatusBarPadding]== 5)
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      v8 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v8 bounds];
      v7 = v9 - (y + height);
    }
  }

  return v7;
}

+ (double)sixPercentOfDeviceHeight
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.0599999987;
}

+ (double)twelvePercentOfDeviceHeight
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.119999997;
}

+ (double)twentyTwoPointFivePercentOfDeviceHeight
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.224999994;
}

+ (CGRect)fullDeviceBounds
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (double)fullDeviceHeight
{
  [a1 fullDeviceBounds];
  v4 = v3;
  [a1 fullDeviceBounds];
  if (v4 >= v5)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (double)fullDeviceWidth
{
  [a1 fullDeviceBounds];
  v4 = v3;
  [a1 fullDeviceBounds];
  if (v4 >= v5)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[TPIncomingCallMetricsProvider deviceHasHomeButton];
  }

  return deviceHasHomeButton_homeButtonType != 2;
}

uint64_t __52__TPIncomingCallMetricsProvider_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_homeButtonType = result;
  return result;
}

+ (double)callDetailsButtonPaddingPercentTop_ForSnapshot
{
  if ([a1 deviceHasHomeButton])
  {

    [a1 callDetailsButtonPaddingTopPercent_HomeButton];
  }

  else
  {

    [a1 callDetailsButtonPaddingTopPercent_DynamicIsland];
  }

  return result;
}

+ (double)callDetailsButtonPaddingTrailPercent_ForSnapshot
{
  if ([a1 deviceHasHomeButton])
  {

    [a1 callDetailsButtonPaddingTrailingPercent_HomeButton];
  }

  else
  {

    [a1 callDetailsButtonPaddingTrailingPercent_DynamicIsland];
  }

  return result;
}

+ (double)callDetailsButtonPaddingTop_ForSnapshot
{
  [a1 fullDeviceHeight];
  v4 = v3;
  [a1 callDetailsButtonPaddingPercentTop_ForSnapshot];
  return v4 * v5 / 100.0;
}

+ (double)callDetailsButtonPaddingTrail_ForSnapshot
{
  [a1 fullDeviceWidth];
  v4 = v3;
  [a1 callDetailsButtonPaddingTrailPercent_ForSnapshot];
  return v4 * v5 / 100.0;
}

+ (double)verticalTextTopMargin
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.129999995;
}

+ (double)incomingCallAndInCallControlsBottomPadding
{
  v3 = +[TPUIConfiguration screenSize]== 1;
  [a1 fullDeviceHeight];
  return v4 * dbl_1B48EBD70[v3];
}

+ (id)posterDisplayNameForContact:(id)a3
{
  v3 = a3;
  v4 = posterDisplayNameForContact__sFormatter;
  if (!posterDisplayNameForContact__sFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v6 = posterDisplayNameForContact__sFormatter;
    posterDisplayNameForContact__sFormatter = v5;

    [posterDisplayNameForContact__sFormatter setStyle:0];
    v4 = posterDisplayNameForContact__sFormatter;
  }

  v7 = [v4 stringFromContact:v3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F2CA8008;
  }

  v10 = v9;

  return v9;
}

@end