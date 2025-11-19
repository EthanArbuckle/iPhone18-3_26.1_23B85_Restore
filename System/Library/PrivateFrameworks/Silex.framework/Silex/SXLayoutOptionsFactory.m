@interface SXLayoutOptionsFactory
- (SXLayoutOptionsFactory)initWithColumnCalculator:(id)a3 documentProvider:(id)a4;
- (id)createLayoutOptionsWithViewportSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4 traitCollection:(id)a5 bundleSubscriptionStatus:(int64_t)a6 channelSubscriptionStatus:(int64_t)a7 contentSizeCategory:(id)a8 testing:(BOOL)a9 viewingLocation:(unint64_t)a10 contentScaleFactor:(double)a11 newsletterSubscriptionStatus:(unint64_t)a12 offerUpsellScenario:(int64_t)a13 subscriptionActivationEligibility:(int64_t)a14 offerIdentifier:(id)a15 smartInvertColorsEnabled:(BOOL)a16 conditionKeys:(id)a17 tagSubscriptionStatus:(id)a18;
@end

@implementation SXLayoutOptionsFactory

- (SXLayoutOptionsFactory)initWithColumnCalculator:(id)a3 documentProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXLayoutOptionsFactory;
  v9 = [(SXLayoutOptionsFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_columnCalculator, a3);
    objc_storeStrong(&v10->_documentProvider, a4);
  }

  return v10;
}

- (id)createLayoutOptionsWithViewportSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4 traitCollection:(id)a5 bundleSubscriptionStatus:(int64_t)a6 channelSubscriptionStatus:(int64_t)a7 contentSizeCategory:(id)a8 testing:(BOOL)a9 viewingLocation:(unint64_t)a10 contentScaleFactor:(double)a11 newsletterSubscriptionStatus:(unint64_t)a12 offerUpsellScenario:(int64_t)a13 subscriptionActivationEligibility:(int64_t)a14 offerIdentifier:(id)a15 smartInvertColorsEnabled:(BOOL)a16 conditionKeys:(id)a17 tagSubscriptionStatus:(id)a18
{
  v53 = a9;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v56 = *MEMORY[0x1E69E9840];
  v27 = a5;
  v28 = a8;
  v29 = a15;
  v30 = a17;
  v31 = a18;
  v32 = [(SXLayoutOptionsFactory *)self documentProvider];
  v33 = [v32 document];
  v34 = [v33 layout];

  if (!v34)
  {
    v43 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      v45 = [(SXLayoutOptionsFactory *)self documentProvider];
      v46 = [v45 document];
      *buf = 138412290;
      v55 = v46;
      _os_log_impl(&dword_1D825C000, v44, OS_LOG_TYPE_DEFAULT, "Unable to create LayoutOptions, missing document layout for document: %@", buf, 0xCu);

LABEL_21:
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (!v27 || ![v27 horizontalSizeClass]|| ![v27 verticalSizeClass]|| ![v27 userInterfaceStyle])
  {
    v41 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v27;
      v42 = "Unable to create LayoutOptions, invalid trait collection %@";
LABEL_18:
      _os_log_impl(&dword_1D825C000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0xCu);
    }

LABEL_22:
    v40 = 0;
    goto LABEL_23;
  }

  if (!v28 || UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC90], v28) == NSOrderedSame)
  {
    v41 = SXLayoutLog;
    if (!os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138412290;
    v55 = v28;
    v42 = "Unable to create LayoutOptions, unspecified content size category %@";
    goto LABEL_18;
  }

  v35 = *MEMORY[0x1E695F060] == width;
  if (*(MEMORY[0x1E695F060] + 8) != height)
  {
    v35 = 0;
  }

  if (width < 2.22044605e-16 || v35 || height < 2.22044605e-16)
  {
    v48 = SXLayoutLog;
    if (!os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v45 = v48;
    v58.width = width;
    v58.height = height;
    v44 = NSStringFromCGSize(v58);
    *buf = 138543362;
    v55 = v44;
    _os_log_impl(&dword_1D825C000, v45, OS_LOG_TYPE_DEFAULT, "Unable to create LayoutOptions, invalid viewport size: %{public}@", buf, 0xCu);
    goto LABEL_21;
  }

  v36 = width - (left + right);
  v37 = [(SXLayoutOptionsFactory *)self columnCalculator];
  v38 = [v37 columnLayoutWithViewportSize:v34 constrainedToWidth:v36 documentLayout:height contentScaleFactor:v36 safeAreaInsets:{a11, top, left, bottom, right}];

  if (a16)
  {
    v39 = [v27 traitCollectionByModifyingTraits:&__block_literal_global_7];

    v27 = v39;
  }

  LOBYTE(v49) = a16;
  v40 = [[SXLayoutOptions alloc] initWithColumnLayout:v38 viewportSize:v27 traitCollection:v28 contentSizeCategory:a6 bundleSubscriptionStatus:a7 channelSubscriptionStatus:v53 testing:v36 viewingLocation:height contentScaleFactor:a11 newsletterSubscriptionStatus:a10 offerUpsellScenario:a12 subscriptionActivationEligibility:a13 offerIdentifier:a14 smartInvertColorsEnabled:v29 conditionKeys:v49 tagSubscriptionStatus:v30, v31];

LABEL_23:

  return v40;
}

@end