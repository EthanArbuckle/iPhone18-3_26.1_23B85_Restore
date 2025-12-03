@interface PKApplyControllerConfiguration
- (NSString)referenceIdentifier;
- (PKApplyControllerConfiguration)initWithSetupDelegate:(id)delegate context:(int64_t)context provisioningController:(id)controller;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (int64_t)applicationType;
- (unint64_t)feature;
@end

@implementation PKApplyControllerConfiguration

- (PKApplyControllerConfiguration)initWithSetupDelegate:(id)delegate context:(int64_t)context provisioningController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PKApplyControllerConfiguration;
  v10 = [(PKApplyControllerConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_setupDelegate, delegateCopy);
    v11->_context = context;
    objc_storeStrong(&v11->_provisioningController, controller);
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
  referenceIdentifier = [(PKFeatureApplication *)self->_featureApplication referenceIdentifier];

  if (referenceIdentifier)
  {
    referenceIdentifier2 = [(PKFeatureApplication *)self->_featureApplication referenceIdentifier];
  }

  else
  {
    referenceIdentifier2 = self->_referenceIdentifier;
  }

  return referenceIdentifier2;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end