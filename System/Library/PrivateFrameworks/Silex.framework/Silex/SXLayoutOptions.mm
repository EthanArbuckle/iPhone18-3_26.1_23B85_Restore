@interface SXLayoutOptions
- (CGSize)viewportSize;
- (SXLayoutOptions)initWithColumnLayout:(id)layout viewportSize:(CGSize)size traitCollection:(id)collection contentSizeCategory:(id)category bundleSubscriptionStatus:(int64_t)status channelSubscriptionStatus:(int64_t)subscriptionStatus testing:(BOOL)testing viewingLocation:(unint64_t)self0 contentScaleFactor:(double)self1 newsletterSubscriptionStatus:(unint64_t)self2 offerUpsellScenario:(int64_t)self3 subscriptionActivationEligibility:(int64_t)self4 offerIdentifier:(id)self5 smartInvertColorsEnabled:(BOOL)self6 conditionKeys:(id)self7 tagSubscriptionStatus:(id)self8;
- (id)description;
- (unint64_t)diffWithLayoutOptions:(id)options;
- (unint64_t)hash;
@end

@implementation SXLayoutOptions

- (SXLayoutOptions)initWithColumnLayout:(id)layout viewportSize:(CGSize)size traitCollection:(id)collection contentSizeCategory:(id)category bundleSubscriptionStatus:(int64_t)status channelSubscriptionStatus:(int64_t)subscriptionStatus testing:(BOOL)testing viewingLocation:(unint64_t)self0 contentScaleFactor:(double)self1 newsletterSubscriptionStatus:(unint64_t)self2 offerUpsellScenario:(int64_t)self3 subscriptionActivationEligibility:(int64_t)self4 offerIdentifier:(id)self5 smartInvertColorsEnabled:(BOOL)self6 conditionKeys:(id)self7 tagSubscriptionStatus:(id)self8
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  collectionCopy = collection;
  categoryCopy = category;
  identifierCopy = identifier;
  keysCopy = keys;
  tagSubscriptionStatusCopy = tagSubscriptionStatus;
  v37.receiver = self;
  v37.super_class = SXLayoutOptions;
  v29 = [(SXLayoutOptions *)&v37 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_columnLayout, layout);
    v30->_viewportSize.width = width;
    v30->_viewportSize.height = height;
    objc_storeStrong(&v30->_traitCollection, collection);
    objc_storeStrong(&v30->_contentSizeCategory, category);
    v30->_bundleSubscriptionStatus = status;
    v30->_channelSubscriptionStatus = subscriptionStatus;
    v30->_testing = testing;
    v30->_viewingLocation = location;
    v30->_contentScaleFactor = factor;
    v30->_newsletterSubscriptionStatus = newsletterSubscriptionStatus;
    v30->_offerUpsellScenario = scenario;
    v30->_subscriptionActivationEligibility = eligibility;
    objc_storeStrong(&v30->_offerIdentifier, identifier);
    v30->_smartInvertColorsEnabled = enabled;
    objc_storeStrong(&v30->_conditionKeys, keys);
    objc_storeStrong(&v30->_tagSubscriptionStatus, tagSubscriptionStatus);
  }

  return v30;
}

- (unint64_t)diffWithLayoutOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == optionsCopy)
    {
      v20 = 0;
    }

    else
    {
      if ([(SXColumnLayout *)self->_columnLayout isEqual:optionsCopy->_columnLayout])
      {
        v5 = 262142;
      }

      else
      {
        v5 = 0x3FFFFLL;
      }

      horizontalSizeClass = [(UITraitCollection *)self->_traitCollection horizontalSizeClass];
      if (horizontalSizeClass == [(UITraitCollection *)optionsCopy->_traitCollection horizontalSizeClass])
      {
        v5 &= 0x3FDFFuLL;
      }

      verticalSizeClass = [(UITraitCollection *)self->_traitCollection verticalSizeClass];
      if (verticalSizeClass == [(UITraitCollection *)optionsCopy->_traitCollection verticalSizeClass])
      {
        v5 &= 0x3FBFFuLL;
      }

      userInterfaceStyle = [(UITraitCollection *)self->_traitCollection userInterfaceStyle];
      userInterfaceStyle2 = [(UITraitCollection *)optionsCopy->_traitCollection userInterfaceStyle];
      v10 = v5 & 0x3FEFF;
      if (userInterfaceStyle != userInterfaceStyle2)
      {
        v10 = v5;
      }

      width = self->_viewportSize.width;
      if (self->_viewportSize.height == optionsCopy->_viewportSize.height && width == optionsCopy->_viewportSize.width)
      {
        v13 = v10 & 0x3FFFD;
      }

      else
      {
        v13 = v10;
      }

      width = [(NSString *)self->_contentSizeCategory isEqual:optionsCopy->_contentSizeCategory, width];
      v15 = v13 & 0x3FFFB;
      if (!width)
      {
        v15 = v13;
      }

      if (self->_bundleSubscriptionStatus == optionsCopy->_bundleSubscriptionStatus)
      {
        v15 &= ~8uLL;
      }

      if (self->_channelSubscriptionStatus == optionsCopy->_channelSubscriptionStatus)
      {
        v15 &= ~0x10uLL;
      }

      if (self->_viewingLocation == optionsCopy->_viewingLocation)
      {
        v15 &= ~0x20uLL;
      }

      if (self->_testing == optionsCopy->_testing)
      {
        v15 &= ~0x40uLL;
      }

      v16 = self->_contentScaleFactor - optionsCopy->_contentScaleFactor;
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      if (v16 < 2.22044605e-16)
      {
        v15 &= ~0x80uLL;
      }

      if (self->_newsletterSubscriptionStatus == optionsCopy->_newsletterSubscriptionStatus)
      {
        v15 &= ~0x800uLL;
      }

      if (self->_offerUpsellScenario == optionsCopy->_offerUpsellScenario)
      {
        v15 &= ~0x1000uLL;
      }

      offerIdentifier = self->_offerIdentifier;
      if (self->_subscriptionActivationEligibility == optionsCopy->_subscriptionActivationEligibility)
      {
        v18 = v15 & 0xFFFFFFFFFFFFDFFFLL;
      }

      else
      {
        v18 = v15;
      }

      if (offerIdentifier == optionsCopy->_offerIdentifier || [(NSString *)offerIdentifier isEqualToString:?])
      {
        v18 &= ~0x10000uLL;
      }

      if (self->_smartInvertColorsEnabled == optionsCopy->_smartInvertColorsEnabled)
      {
        v18 &= ~0x4000uLL;
      }

      conditionKeys = self->_conditionKeys;
      if (conditionKeys == optionsCopy->_conditionKeys || [(NSSet *)conditionKeys isEqual:?])
      {
        v18 &= ~0x8000uLL;
      }

      if ([(SXTagSubscriptionStatus *)self->_tagSubscriptionStatus isEqual:optionsCopy->_tagSubscriptionStatus])
      {
        v20 = v18 & 0xFFFFFFFFFFFDFFFFLL;
      }

      else
      {
        v20 = v18;
      }
    }
  }

  else
  {
    v20 = 0x3FFFFLL;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(SXColumnLayout *)self->_columnLayout hash]^ self->_viewportSize.width;
  height = self->_viewportSize.height;
  v5 = v3 ^ height ^ [(UITraitCollection *)self->_traitCollection hash];
  return v5 ^ [(NSString *)self->_contentSizeCategory hash]^ self->_testing ^ self->_viewingLocation ^ self->_contentScaleFactor;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"<%@: %p; options: \n", objc_opt_class(), self];
  [(SXLayoutOptions *)self viewportSize];
  v4 = NSStringFromCGSize(v28);
  [string appendFormat:@"  viewportSize: %@; \n", v4];

  contentSizeCategory = [(SXLayoutOptions *)self contentSizeCategory];
  [string appendFormat:@"  contentSizeCategory: %@; \n", contentSizeCategory];

  bundleSubscriptionStatus = [(SXLayoutOptions *)self bundleSubscriptionStatus];
  if (bundleSubscriptionStatus <= 3)
  {
    [string appendFormat:off_1E85003E8[bundleSubscriptionStatus]];
  }

  channelSubscriptionStatus = [(SXLayoutOptions *)self channelSubscriptionStatus];
  if (channelSubscriptionStatus <= 3)
  {
    [string appendFormat:off_1E8500408[channelSubscriptionStatus]];
  }

  offerUpsellScenario = [(SXLayoutOptions *)self offerUpsellScenario];
  if (offerUpsellScenario <= 9)
  {
    [string appendFormat:off_1E8500428[offerUpsellScenario]];
  }

  columnLayout = [(SXLayoutOptions *)self columnLayout];
  numberOfColumns = [columnLayout numberOfColumns];
  columnLayout2 = [(SXLayoutOptions *)self columnLayout];
  [columnLayout2 constrainedViewportSize];
  v12 = NSStringFromCGSize(v29);
  [string appendFormat:@"  columnLayout: (numberOfColumns: %d, constrainedViewportSize: %@); \n", numberOfColumns, v12];

  traitCollection = [(SXLayoutOptions *)self traitCollection];
  v14 = [traitCollection description];
  [string appendFormat:@"  traitCollection: %@; \n", v14];

  if ([(SXLayoutOptions *)self testing])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [string appendFormat:@"  testing: %@; \n", v15];
  viewingLocation = [(SXLayoutOptions *)self viewingLocation];
  if (viewingLocation <= 3)
  {
    [string appendFormat:off_1E8500478[viewingLocation]];
  }

  [(SXLayoutOptions *)self contentScaleFactor];
  [string appendFormat:@"  contentScaleFactor: %f; \n", v17];
  newsletterSubscriptionStatus = [(SXLayoutOptions *)self newsletterSubscriptionStatus];
  if (newsletterSubscriptionStatus - 1 > 4)
  {
    v19 = @"unspecified";
  }

  else
  {
    v19 = off_1E8500498[newsletterSubscriptionStatus - 1];
  }

  [string appendFormat:@"  newsletter status: %@; \n", v19];
  subscriptionActivationEligibility = [(SXLayoutOptions *)self subscriptionActivationEligibility];
  if ((subscriptionActivationEligibility - 1) > 3)
  {
    v21 = @"unknown";
  }

  else
  {
    v21 = off_1E85004C0[subscriptionActivationEligibility - 1];
  }

  [string appendFormat:@"  subscriptionActivationEligibility: %@; \n", v21];
  offerIdentifier = [(SXLayoutOptions *)self offerIdentifier];
  [string appendFormat:@"  offerIdentifier: %@; \n", offerIdentifier];

  conditionKeys = [(SXLayoutOptions *)self conditionKeys];
  [string appendFormat:@"  conditionKeys: %@; \n", conditionKeys];

  if ([(SXLayoutOptions *)self smartInvertColorsEnabled])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [string appendFormat:@"  smartInvertColorsEnabled: %@; \n", v24];
  tagSubscriptionStatus = [(SXLayoutOptions *)self tagSubscriptionStatus];
  [string appendFormat:@"  tagSubscriptionStatus: %@; \n", tagSubscriptionStatus];

  [string appendFormat:@">"];

  return string;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end