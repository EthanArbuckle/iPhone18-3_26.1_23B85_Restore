@interface PKApplyControllerConfiguration
- (NSString)referenceIdentifier;
- (PKApplyControllerConfiguration)initWithSetupDelegate:(id)a3 context:(int64_t)a4 provisioningController:(id)a5;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (int64_t)applicationType;
- (unint64_t)feature;
@end

@implementation PKApplyControllerConfiguration

- (PKApplyControllerConfiguration)initWithSetupDelegate:(id)a3 context:(int64_t)a4 provisioningController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKApplyControllerConfiguration;
  v10 = [(PKApplyControllerConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_setupDelegate, v8);
    v11->_context = a4;
    objc_storeStrong(&v11->_provisioningController, a5);
  }

  return v11;
}

- (unint64_t)feature
{
  featureApplication = self->_featureApplication;
  if (featureApplication)
  {
    return [(PKFeatureApplication *)featureApplication feature];
  }

  else
  {
    return self->_feature;
  }
}

- (int64_t)applicationType
{
  featureApplication = self->_featureApplication;
  if (featureApplication)
  {
    return [(PKFeatureApplication *)featureApplication applicationType];
  }

  else
  {
    return self->_applicationType;
  }
}

- (NSString)referenceIdentifier
{
  v3 = [(PKFeatureApplication *)self->_featureApplication referenceIdentifier];

  if (v3)
  {
    v4 = [(PKFeatureApplication *)self->_featureApplication referenceIdentifier];
  }

  else
  {
    v4 = self->_referenceIdentifier;
  }

  return v4;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end