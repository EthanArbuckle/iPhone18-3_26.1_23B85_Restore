@interface RBAttributeContext
- (RBBundleProperties)originatorProperties;
- (RBBundleProperties)targetProperties;
- (RBEntitlementPossessing)originatorEntitlements;
- (RBEntitlementPossessing)targetEntitlements;
- (void)setAssertion:(id)a3;
@end

@implementation RBAttributeContext

- (RBBundleProperties)targetProperties
{
  if (!self->_targetProperties)
  {
    targetIdentity = self->_targetIdentity;
    if (targetIdentity)
    {
      bundlePropertiesManager = self->_bundlePropertiesManager;
      v5 = [(RBProcess *)self->_targetProcess identifier];
      v6 = [(RBBundlePropertiesManaging *)bundlePropertiesManager propertiesForIdentity:targetIdentity identifier:v5];
      targetProperties = self->_targetProperties;
      self->_targetProperties = v6;
    }

    else
    {
      v8 = objc_alloc_init(RBBundleProperties);
      v5 = self->_targetProperties;
      self->_targetProperties = v8;
    }
  }

  v9 = self->_targetProperties;

  return v9;
}

- (void)setAssertion:(id)a3
{
  v25 = a3;
  objc_storeStrong(&self->_assertion, a3);
  v5 = [v25 identifier];
  assertionID = self->_assertionID;
  self->_assertionID = v5;

  target = self->_target;
  v8 = [v25 target];
  targetEntitlements = v8;
  if (target == v8)
  {
    goto LABEL_8;
  }

  if (!target || !v8)
  {

    goto LABEL_7;
  }

  v10 = [(RBConcreteTargeting *)target isEqual:v8];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [v25 target];
    v12 = self->_target;
    self->_target = v11;

    v13 = [(RBConcreteTargeting *)self->_target process];
    targetProcess = self->_targetProcess;
    self->_targetProcess = v13;

    v15 = [(RBConcreteTargeting *)self->_target identity];
    targetIdentity = self->_targetIdentity;
    self->_targetIdentity = v15;

    self->_targetIsSystem = [(RBConcreteTargeting *)self->_target isSystem];
    targetProperties = self->_targetProperties;
    self->_targetProperties = 0;

    targetEntitlements = self->_targetEntitlements;
    self->_targetEntitlements = 0;
LABEL_8:
  }

  originatorProcess = self->_originatorProcess;
  v19 = [v25 originator];
  originatorEntitlements = v19;
  if (originatorProcess == v19)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (!originatorProcess || !v19)
  {

    goto LABEL_15;
  }

  v21 = [(RBProcess *)originatorProcess isEqual:v19];

  if ((v21 & 1) == 0)
  {
LABEL_15:
    v22 = [v25 originator];
    v23 = self->_originatorProcess;
    self->_originatorProcess = v22;

    originatorProperties = self->_originatorProperties;
    self->_originatorProperties = 0;

    originatorEntitlements = self->_originatorEntitlements;
    self->_originatorEntitlements = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (RBEntitlementPossessing)targetEntitlements
{
  if (!self->_targetEntitlements)
  {
    if (self->_targetProcess)
    {
      v3 = [(RBEntitlementManaging *)self->_entitlementManager entitlementsForProcess:?];
      targetEntitlements = self->_targetEntitlements;
      self->_targetEntitlements = v3;
    }

    else
    {
      v5 = [RBEntitlements alloc];
      targetEntitlements = [MEMORY[0x277CBEB98] set];
      v6 = [(RBEntitlements *)v5 _initWithEntitlements:targetEntitlements];
      v7 = self->_targetEntitlements;
      self->_targetEntitlements = v6;
    }
  }

  v8 = self->_targetEntitlements;

  return v8;
}

- (RBBundleProperties)originatorProperties
{
  if (!self->_originatorProperties)
  {
    v3 = [(RBProcess *)self->_originatorProcess identity];

    if (v3)
    {
      bundlePropertiesManager = self->_bundlePropertiesManager;
      v5 = [(RBProcess *)self->_originatorProcess identity];
      v6 = [(RBProcess *)self->_originatorProcess identifier];
      v7 = [(RBBundlePropertiesManaging *)bundlePropertiesManager propertiesForIdentity:v5 identifier:v6];
      originatorProperties = self->_originatorProperties;
      self->_originatorProperties = v7;
    }

    else
    {
      v9 = objc_alloc_init(RBBundleProperties);
      v5 = self->_originatorProperties;
      self->_originatorProperties = v9;
    }
  }

  v10 = self->_originatorProperties;

  return v10;
}

- (RBEntitlementPossessing)originatorEntitlements
{
  if (!self->_originatorEntitlements)
  {
    if (self->_originatorProcess)
    {
      v3 = [(RBEntitlementManaging *)self->_entitlementManager entitlementsForProcess:?];
      originatorEntitlements = self->_originatorEntitlements;
      self->_originatorEntitlements = v3;
    }

    else
    {
      v5 = [RBEntitlements alloc];
      originatorEntitlements = [MEMORY[0x277CBEB98] set];
      v6 = [(RBEntitlements *)v5 _initWithEntitlements:originatorEntitlements];
      v7 = self->_originatorEntitlements;
      self->_originatorEntitlements = v6;
    }
  }

  v8 = self->_originatorEntitlements;

  return v8;
}

@end