@interface RBAssertionDescriptorValidatorContext
+ (id)context;
- (RBBundleProperties)targetProperties;
- (RBDomainRestriction)targetClientRestriction;
- (RBEntitlementManaging)entitlementManager;
- (RBEntitlementPossessing)originatorEntitlements;
- (RBEntitlementPossessing)targetEntitlements;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTarget:(id)a3;
- (void)setTargetClientRestriction:(id)a3;
@end

@implementation RBAssertionDescriptorValidatorContext

- (RBEntitlementPossessing)originatorEntitlements
{
  if ([(RBAssertionDescriptorValidatorContext *)self ignoreRestrictions])
  {
    v3 = objc_alloc_init(RBIgnoreAllEntitlementsManager);
  }

  else
  {
    originatorEntitlements = self->_originatorEntitlements;
    if (!originatorEntitlements)
    {
      v5 = [(RBEntitlementManaging *)self->_entitlementManager entitlementsForProcess:self->_originatorProcess];
      v6 = self->_originatorEntitlements;
      self->_originatorEntitlements = v5;

      originatorEntitlements = self->_originatorEntitlements;
    }

    v3 = originatorEntitlements;
  }

  return v3;
}

- (RBBundleProperties)targetProperties
{
  if (!self->_targetProperties)
  {
    targetIdentity = self->_targetIdentity;
    if (targetIdentity)
    {
      v4 = [(RBBundlePropertiesManaging *)self->_bundlePropertiesManager propertiesForIdentity:targetIdentity identifier:self->_targetIdentifier];
    }

    else
    {
      v4 = objc_alloc_init(RBBundleProperties);
    }

    targetProperties = self->_targetProperties;
    self->_targetProperties = v4;
  }

  v6 = self->_targetProperties;

  return v6;
}

- (RBEntitlementManaging)entitlementManager
{
  if ([(RBAssertionDescriptorValidatorContext *)self ignoreRestrictions])
  {
    v3 = objc_alloc_init(RBIgnoreAllEntitlementsManager);
  }

  else
  {
    v3 = self->_entitlementManager;
  }

  return v3;
}

+ (id)context
{
  v2 = objc_alloc_init(RBAssertionDescriptorValidatorContext);

  return v2;
}

- (RBEntitlementPossessing)targetEntitlements
{
  if ([(RBAssertionDescriptorValidatorContext *)self ignoreRestrictions])
  {
    v3 = objc_alloc_init(RBIgnoreAllEntitlementsManager);
  }

  else
  {
    if (!self->_targetEntitlements)
    {
      targetProcess = self->_targetProcess;
      if ((!targetProcess || [(RBProcess *)targetProcess isTerminating]) && [(RBAssertionAcquisitionContext *)self->_acquisitionContext allowAbstractTarget])
      {
        v5 = objc_alloc_init(RBIgnoreAllEntitlementsManager);
      }

      else
      {
        v5 = [(RBEntitlementManaging *)self->_entitlementManager entitlementsForProcess:self->_targetProcess];
      }

      targetEntitlements = self->_targetEntitlements;
      self->_targetEntitlements = v5;
    }

    v3 = self->_targetEntitlements;
  }

  return v3;
}

- (void)setTarget:(id)a3
{
  objc_storeStrong(&self->_target, a3);
  v5 = a3;
  v6 = [v5 isSystem];

  self->_targetIsSystem = v6;
}

- (RBDomainRestriction)targetClientRestriction
{
  v3 = self->_targetClientRestriction;
  if (!v3)
  {
    v3 = [(RBProcess *)self->_targetProcess clientRestriction];
    if (!v3)
    {
      v3 = [(RBAssertionAcquisitionContext *)self->_acquisitionContext targetClientRestriction];
    }
  }

  return v3;
}

- (void)setTargetClientRestriction:(id)a3
{
  v4 = [a3 copy];
  targetClientRestriction = self->_targetClientRestriction;
  self->_targetClientRestriction = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RBAssertionDescriptorValidatorContext allocWithZone:?]];
  [(RBAssertionDescriptorValidatorContext *)v4 setAssertionDescriptionValidator:self->_assertionDescriptionValidator];
  [(RBAssertionDescriptorValidatorContext *)v4 setAssertionDescriptor:self->_assertionDescriptor];
  [(RBAssertionDescriptorValidatorContext *)v4 setOriginatorProcess:self->_originatorProcess];
  [(RBAssertionDescriptorValidatorContext *)v4 setOriginatorState:self->_originatorState];
  [(RBAssertionDescriptorValidatorContext *)v4 setTarget:self->_target];
  [(RBAssertionDescriptorValidatorContext *)v4 setTargetProcess:self->_targetProcess];
  [(RBAssertionDescriptorValidatorContext *)v4 setTargetIdentity:self->_targetIdentity];
  [(RBAssertionDescriptorValidatorContext *)v4 setTargetIdentifier:self->_targetIdentifier];
  [(RBAssertionDescriptorValidatorContext *)v4 setTargetClientRestriction:self->_targetClientRestriction];
  [(RBAssertionDescriptorValidatorContext *)v4 setTargetState:self->_targetState];
  [(RBAssertionDescriptorValidatorContext *)v4 setBundlePropertiesManager:self->_bundlePropertiesManager];
  [(RBAssertionDescriptorValidatorContext *)v4 setDomainAttributeManager:self->_domainAttributeManager];
  [(RBAssertionDescriptorValidatorContext *)v4 setEntitlementManager:self->_entitlementManager];
  v4->_ignoreRestrictions = self->_ignoreRestrictions;
  objc_storeStrong(&v4->_acquisitionContext, self->_acquisitionContext);
  return v4;
}

@end