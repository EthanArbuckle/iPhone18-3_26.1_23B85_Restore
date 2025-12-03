@interface SXLayoutOptionsFactory
- (SXLayoutOptionsFactory)initWithColumnCalculator:(id)calculator documentProvider:(id)provider;
- (id)createLayoutOptionsWithViewportSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection bundleSubscriptionStatus:(int64_t)status channelSubscriptionStatus:(int64_t)subscriptionStatus contentSizeCategory:(id)category testing:(BOOL)testing viewingLocation:(unint64_t)self0 contentScaleFactor:(double)self1 newsletterSubscriptionStatus:(unint64_t)self2 offerUpsellScenario:(int64_t)self3 subscriptionActivationEligibility:(int64_t)self4 offerIdentifier:(id)self5 smartInvertColorsEnabled:(BOOL)self6 conditionKeys:(id)self7 tagSubscriptionStatus:(id)self8;
@end

@implementation SXLayoutOptionsFactory

- (SXLayoutOptionsFactory)initWithColumnCalculator:(id)calculator documentProvider:(id)provider
{
  calculatorCopy = calculator;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = SXLayoutOptionsFactory;
  v9 = [(SXLayoutOptionsFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_columnCalculator, calculator);
    objc_storeStrong(&v10->_documentProvider, provider);
  }

  return v10;
}

- (id)createLayoutOptionsWithViewportSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection bundleSubscriptionStatus:(int64_t)status channelSubscriptionStatus:(int64_t)subscriptionStatus contentSizeCategory:(id)category testing:(BOOL)testing viewingLocation:(unint64_t)self0 contentScaleFactor:(double)self1 newsletterSubscriptionStatus:(unint64_t)self2 offerUpsellScenario:(int64_t)self3 subscriptionActivationEligibility:(int64_t)self4 offerIdentifier:(id)self5 smartInvertColorsEnabled:(BOOL)self6 conditionKeys:(id)self7 tagSubscriptionStatus:(id)self8
{
  testingCopy = testing;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v56 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  categoryCopy = category;
  identifierCopy = identifier;
  keysCopy = keys;
  tagSubscriptionStatusCopy = tagSubscriptionStatus;
  documentProvider = [(SXLayoutOptionsFactory *)self documentProvider];
  document = [documentProvider document];
  layout = [document layout];

  if (!layout)
  {
    v43 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      documentProvider2 = [(SXLayoutOptionsFactory *)self documentProvider];
      document2 = [documentProvider2 document];
      *buf = 138412290;
      v55 = document2;
      _os_log_impl(&dword_1D825C000, v44, OS_LOG_TYPE_DEFAULT, "Unable to create LayoutOptions, missing document layout for document: %@", buf, 0xCu);

LABEL_21:
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (!collectionCopy || ![collectionCopy horizontalSizeClass]|| ![collectionCopy verticalSizeClass]|| ![collectionCopy userInterfaceStyle])
  {
    v41 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = collectionCopy;
      v42 = "Unable to create LayoutOptions, invalid trait collection %@";
LABEL_18:
      _os_log_impl(&dword_1D825C000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0xCu);
    }

LABEL_22:
    tagSubscriptionStatusCopy = 0;
    goto LABEL_23;
  }

  if (!categoryCopy || UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC90], categoryCopy) == NSOrderedSame)
  {
    v41 = SXLayoutLog;
    if (!os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138412290;
    v55 = categoryCopy;
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

    documentProvider2 = v48;
    v58.width = width;
    v58.height = height;
    v44 = NSStringFromCGSize(v58);
    *buf = 138543362;
    v55 = v44;
    _os_log_impl(&dword_1D825C000, documentProvider2, OS_LOG_TYPE_DEFAULT, "Unable to create LayoutOptions, invalid viewport size: %{public}@", buf, 0xCu);
    goto LABEL_21;
  }

  v36 = width - (left + right);
  columnCalculator = [(SXLayoutOptionsFactory *)self columnCalculator];
  v38 = [columnCalculator columnLayoutWithViewportSize:layout constrainedToWidth:v36 documentLayout:height contentScaleFactor:v36 safeAreaInsets:{factor, top, left, bottom, right}];

  if (enabled)
  {
    v39 = [collectionCopy traitCollectionByModifyingTraits:&__block_literal_global_7];

    collectionCopy = v39;
  }

  LOBYTE(v49) = enabled;
  tagSubscriptionStatusCopy = [[SXLayoutOptions alloc] initWithColumnLayout:v38 viewportSize:collectionCopy traitCollection:categoryCopy contentSizeCategory:status bundleSubscriptionStatus:subscriptionStatus channelSubscriptionStatus:testingCopy testing:v36 viewingLocation:height contentScaleFactor:factor newsletterSubscriptionStatus:location offerUpsellScenario:newsletterSubscriptionStatus subscriptionActivationEligibility:scenario offerIdentifier:eligibility smartInvertColorsEnabled:identifierCopy conditionKeys:v49 tagSubscriptionStatus:keysCopy, tagSubscriptionStatusCopy];

LABEL_23:

  return tagSubscriptionStatusCopy;
}

@end