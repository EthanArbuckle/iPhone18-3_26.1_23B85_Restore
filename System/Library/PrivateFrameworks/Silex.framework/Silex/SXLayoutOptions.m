@interface SXLayoutOptions
- (CGSize)viewportSize;
- (SXLayoutOptions)initWithColumnLayout:(id)a3 viewportSize:(CGSize)a4 traitCollection:(id)a5 contentSizeCategory:(id)a6 bundleSubscriptionStatus:(int64_t)a7 channelSubscriptionStatus:(int64_t)a8 testing:(BOOL)a9 viewingLocation:(unint64_t)a10 contentScaleFactor:(double)a11 newsletterSubscriptionStatus:(unint64_t)a12 offerUpsellScenario:(int64_t)a13 subscriptionActivationEligibility:(int64_t)a14 offerIdentifier:(id)a15 smartInvertColorsEnabled:(BOOL)a16 conditionKeys:(id)a17 tagSubscriptionStatus:(id)a18;
- (id)description;
- (unint64_t)diffWithLayoutOptions:(id)a3;
- (unint64_t)hash;
@end

@implementation SXLayoutOptions

- (SXLayoutOptions)initWithColumnLayout:(id)a3 viewportSize:(CGSize)a4 traitCollection:(id)a5 contentSizeCategory:(id)a6 bundleSubscriptionStatus:(int64_t)a7 channelSubscriptionStatus:(int64_t)a8 testing:(BOOL)a9 viewingLocation:(unint64_t)a10 contentScaleFactor:(double)a11 newsletterSubscriptionStatus:(unint64_t)a12 offerUpsellScenario:(int64_t)a13 subscriptionActivationEligibility:(int64_t)a14 offerIdentifier:(id)a15 smartInvertColorsEnabled:(BOOL)a16 conditionKeys:(id)a17 tagSubscriptionStatus:(id)a18
{
  height = a4.height;
  width = a4.width;
  v25 = a3;
  v26 = a5;
  v27 = a6;
  v36 = a15;
  v28 = a17;
  v35 = a18;
  v37.receiver = self;
  v37.super_class = SXLayoutOptions;
  v29 = [(SXLayoutOptions *)&v37 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_columnLayout, a3);
    v30->_viewportSize.width = width;
    v30->_viewportSize.height = height;
    objc_storeStrong(&v30->_traitCollection, a5);
    objc_storeStrong(&v30->_contentSizeCategory, a6);
    v30->_bundleSubscriptionStatus = a7;
    v30->_channelSubscriptionStatus = a8;
    v30->_testing = a9;
    v30->_viewingLocation = a10;
    v30->_contentScaleFactor = a11;
    v30->_newsletterSubscriptionStatus = a12;
    v30->_offerUpsellScenario = a13;
    v30->_subscriptionActivationEligibility = a14;
    objc_storeStrong(&v30->_offerIdentifier, a15);
    v30->_smartInvertColorsEnabled = a16;
    objc_storeStrong(&v30->_conditionKeys, a17);
    objc_storeStrong(&v30->_tagSubscriptionStatus, a18);
  }

  return v30;
}

- (unint64_t)diffWithLayoutOptions:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == v4)
    {
      v20 = 0;
    }

    else
    {
      if ([(SXColumnLayout *)self->_columnLayout isEqual:v4->_columnLayout])
      {
        v5 = 262142;
      }

      else
      {
        v5 = 0x3FFFFLL;
      }

      v6 = [(UITraitCollection *)self->_traitCollection horizontalSizeClass];
      if (v6 == [(UITraitCollection *)v4->_traitCollection horizontalSizeClass])
      {
        v5 &= 0x3FDFFuLL;
      }

      v7 = [(UITraitCollection *)self->_traitCollection verticalSizeClass];
      if (v7 == [(UITraitCollection *)v4->_traitCollection verticalSizeClass])
      {
        v5 &= 0x3FBFFuLL;
      }

      v8 = [(UITraitCollection *)self->_traitCollection userInterfaceStyle];
      v9 = [(UITraitCollection *)v4->_traitCollection userInterfaceStyle];
      v10 = v5 & 0x3FEFF;
      if (v8 != v9)
      {
        v10 = v5;
      }

      width = self->_viewportSize.width;
      if (self->_viewportSize.height == v4->_viewportSize.height && width == v4->_viewportSize.width)
      {
        v13 = v10 & 0x3FFFD;
      }

      else
      {
        v13 = v10;
      }

      v14 = [(NSString *)self->_contentSizeCategory isEqual:v4->_contentSizeCategory, width];
      v15 = v13 & 0x3FFFB;
      if (!v14)
      {
        v15 = v13;
      }

      if (self->_bundleSubscriptionStatus == v4->_bundleSubscriptionStatus)
      {
        v15 &= ~8uLL;
      }

      if (self->_channelSubscriptionStatus == v4->_channelSubscriptionStatus)
      {
        v15 &= ~0x10uLL;
      }

      if (self->_viewingLocation == v4->_viewingLocation)
      {
        v15 &= ~0x20uLL;
      }

      if (self->_testing == v4->_testing)
      {
        v15 &= ~0x40uLL;
      }

      v16 = self->_contentScaleFactor - v4->_contentScaleFactor;
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      if (v16 < 2.22044605e-16)
      {
        v15 &= ~0x80uLL;
      }

      if (self->_newsletterSubscriptionStatus == v4->_newsletterSubscriptionStatus)
      {
        v15 &= ~0x800uLL;
      }

      if (self->_offerUpsellScenario == v4->_offerUpsellScenario)
      {
        v15 &= ~0x1000uLL;
      }

      offerIdentifier = self->_offerIdentifier;
      if (self->_subscriptionActivationEligibility == v4->_subscriptionActivationEligibility)
      {
        v18 = v15 & 0xFFFFFFFFFFFFDFFFLL;
      }

      else
      {
        v18 = v15;
      }

      if (offerIdentifier == v4->_offerIdentifier || [(NSString *)offerIdentifier isEqualToString:?])
      {
        v18 &= ~0x10000uLL;
      }

      if (self->_smartInvertColorsEnabled == v4->_smartInvertColorsEnabled)
      {
        v18 &= ~0x4000uLL;
      }

      conditionKeys = self->_conditionKeys;
      if (conditionKeys == v4->_conditionKeys || [(NSSet *)conditionKeys isEqual:?])
      {
        v18 &= ~0x8000uLL;
      }

      if ([(SXTagSubscriptionStatus *)self->_tagSubscriptionStatus isEqual:v4->_tagSubscriptionStatus])
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
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%@: %p; options: \n", objc_opt_class(), self];
  [(SXLayoutOptions *)self viewportSize];
  v4 = NSStringFromCGSize(v28);
  [v3 appendFormat:@"  viewportSize: %@; \n", v4];

  v5 = [(SXLayoutOptions *)self contentSizeCategory];
  [v3 appendFormat:@"  contentSizeCategory: %@; \n", v5];

  v6 = [(SXLayoutOptions *)self bundleSubscriptionStatus];
  if (v6 <= 3)
  {
    [v3 appendFormat:off_1E85003E8[v6]];
  }

  v7 = [(SXLayoutOptions *)self channelSubscriptionStatus];
  if (v7 <= 3)
  {
    [v3 appendFormat:off_1E8500408[v7]];
  }

  v8 = [(SXLayoutOptions *)self offerUpsellScenario];
  if (v8 <= 9)
  {
    [v3 appendFormat:off_1E8500428[v8]];
  }

  v9 = [(SXLayoutOptions *)self columnLayout];
  v10 = [v9 numberOfColumns];
  v11 = [(SXLayoutOptions *)self columnLayout];
  [v11 constrainedViewportSize];
  v12 = NSStringFromCGSize(v29);
  [v3 appendFormat:@"  columnLayout: (numberOfColumns: %d, constrainedViewportSize: %@); \n", v10, v12];

  v13 = [(SXLayoutOptions *)self traitCollection];
  v14 = [v13 description];
  [v3 appendFormat:@"  traitCollection: %@; \n", v14];

  if ([(SXLayoutOptions *)self testing])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v3 appendFormat:@"  testing: %@; \n", v15];
  v16 = [(SXLayoutOptions *)self viewingLocation];
  if (v16 <= 3)
  {
    [v3 appendFormat:off_1E8500478[v16]];
  }

  [(SXLayoutOptions *)self contentScaleFactor];
  [v3 appendFormat:@"  contentScaleFactor: %f; \n", v17];
  v18 = [(SXLayoutOptions *)self newsletterSubscriptionStatus];
  if (v18 - 1 > 4)
  {
    v19 = @"unspecified";
  }

  else
  {
    v19 = off_1E8500498[v18 - 1];
  }

  [v3 appendFormat:@"  newsletter status: %@; \n", v19];
  v20 = [(SXLayoutOptions *)self subscriptionActivationEligibility];
  if ((v20 - 1) > 3)
  {
    v21 = @"unknown";
  }

  else
  {
    v21 = off_1E85004C0[v20 - 1];
  }

  [v3 appendFormat:@"  subscriptionActivationEligibility: %@; \n", v21];
  v22 = [(SXLayoutOptions *)self offerIdentifier];
  [v3 appendFormat:@"  offerIdentifier: %@; \n", v22];

  v23 = [(SXLayoutOptions *)self conditionKeys];
  [v3 appendFormat:@"  conditionKeys: %@; \n", v23];

  if ([(SXLayoutOptions *)self smartInvertColorsEnabled])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 appendFormat:@"  smartInvertColorsEnabled: %@; \n", v24];
  v25 = [(SXLayoutOptions *)self tagSubscriptionStatus];
  [v3 appendFormat:@"  tagSubscriptionStatus: %@; \n", v25];

  [v3 appendFormat:@">"];

  return v3;
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