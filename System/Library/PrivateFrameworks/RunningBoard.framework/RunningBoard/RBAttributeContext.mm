@interface RBAttributeContext
- (RBBundleProperties)originatorProperties;
- (RBBundleProperties)targetProperties;
- (RBEntitlementPossessing)originatorEntitlements;
- (RBEntitlementPossessing)targetEntitlements;
- (void)setAssertion:(id)assertion;
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
      identifier = [(RBProcess *)self->_targetProcess identifier];
      v6 = [(RBBundlePropertiesManaging *)bundlePropertiesManager propertiesForIdentity:targetIdentity identifier:identifier];
      targetProperties = self->_targetProperties;
      self->_targetProperties = v6;
    }

    else
    {
      v8 = objc_alloc_init(RBBundleProperties);
      identifier = self->_targetProperties;
      self->_targetProperties = v8;
    }
  }

  v9 = self->_targetProperties;

  return v9;
}

- (void)setAssertion:(id)assertion
{
  assertionCopy = assertion;
  objc_storeStrong(&self->_assertion, assertion);
  identifier = [assertionCopy identifier];
  assertionID = self->_assertionID;
  self->_assertionID = identifier;

  target = self->_target;
  target = [assertionCopy target];
  targetEntitlements = target;
  if (target == target)
  {
    goto LABEL_8;
  }

  if (!target || !target)
  {

    goto LABEL_7;
  }

  v10 = [(RBConcreteTargeting *)target isEqual:target];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    target2 = [assertionCopy target];
    v12 = self->_target;
    self->_target = target2;

    process = [(RBConcreteTargeting *)self->_target process];
    targetProcess = self->_targetProcess;
    self->_targetProcess = process;

    identity = [(RBConcreteTargeting *)self->_target identity];
    targetIdentity = self->_targetIdentity;
    self->_targetIdentity = identity;

    self->_targetIsSystem = [(RBConcreteTargeting *)self->_target isSystem];
    targetProperties = self->_targetProperties;
    self->_targetProperties = 0;

    targetEntitlements = self->_targetEntitlements;
    self->_targetEntitlements = 0;
LABEL_8:
  }

  originatorProcess = self->_originatorProcess;
  originator = [assertionCopy originator];
  originatorEntitlements = originator;
  if (originatorProcess == originator)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (!originatorProcess || !originator)
  {

    goto LABEL_15;
  }

  v21 = [(RBProcess *)originatorProcess isEqual:originator];

  if ((v21 & 1) == 0)
  {
LABEL_15:
    originator2 = [assertionCopy originator];
    v23 = self->_originatorProcess;
    self->_originatorProcess = originator2;

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
    identity = [(RBProcess *)self->_originatorProcess identity];

    if (identity)
    {
      bundlePropertiesManager = self->_bundlePropertiesManager;
      identity2 = [(RBProcess *)self->_originatorProcess identity];
      identifier = [(RBProcess *)self->_originatorProcess identifier];
      v7 = [(RBBundlePropertiesManaging *)bundlePropertiesManager propertiesForIdentity:identity2 identifier:identifier];
      originatorProperties = self->_originatorProperties;
      self->_originatorProperties = v7;
    }

    else
    {
      v9 = objc_alloc_init(RBBundleProperties);
      identity2 = self->_originatorProperties;
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