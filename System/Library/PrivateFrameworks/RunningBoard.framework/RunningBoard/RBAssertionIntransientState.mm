@interface RBAssertionIntransientState
- (BOOL)isEqual:(id)a3;
- (NSMutableSet)sourceEnvironments;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RBAssertionIntransientState

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  startPolicy = self->_startPolicy;
  v6 = NSStringFromRBSDurationStartPolicy();
  endPolicy = self->_endPolicy;
  v8 = NSStringFromRBSDurationEndPolicy();
  v9 = v8;
  v10 = &stru_287507640;
  v11 = @"susp";
  if (!self->_suspendsOnOriginatorSuspension)
  {
    v11 = &stru_287507640;
  }

  if (self->_definesRelativeStartTime)
  {
    v12 = @"drel";
  }

  else
  {
    v12 = &stru_287507640;
  }

  if (self->_hasHereditaryGrant)
  {
    v13 = @"herd";
  }

  else
  {
    v13 = &stru_287507640;
  }

  if (self->_hasDomainAttribute)
  {
    v14 = @"dom";
  }

  else
  {
    v14 = &stru_287507640;
  }

  if (self->_terminateTargetOnOriginatorExit)
  {
    v15 = @"term";
  }

  else
  {
    v15 = &stru_287507640;
  }

  if (self->_invalidatesSynchronously)
  {
    v16 = @"invalSync";
  }

  else
  {
    v16 = &stru_287507640;
  }

  if (self->_preventsSuspension)
  {
    v10 = @" prevSus";
  }

  v17 = [v3 initWithFormat:@"<%@| strt:%@ end:%@ nvld:%.2f warn:%.2f%@%@%@%@%@%@%@ runningReason:%lu legRes:%lu doms:%@ invOnConds:%@>", v4, v6, v8, *&self->_invalidationDuration, *&self->_warningDuration, v11, v12, v13, v14, v15, v16, v10, self->_runningReason, self->_legacyReason, self->_domainAttributes, self->_invalidatesOnConditions];

  return v17;
}

- (NSMutableSet)sourceEnvironments
{
  sourceEnvironments = self->_sourceEnvironments;
  if (!sourceEnvironments)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = self->_sourceEnvironments;
    self->_sourceEnvironments = v4;

    sourceEnvironments = self->_sourceEnvironments;
  }

  return sourceEnvironments;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RBAssertionIntransientState allocWithZone:?]];
  v4->_endPolicy = self->_endPolicy;
  v4->_startPolicy = self->_startPolicy;
  v4->_warningDuration = self->_warningDuration;
  v4->_invalidationDuration = self->_invalidationDuration;
  v4->_suspendsOnOriginatorSuspension = self->_suspendsOnOriginatorSuspension;
  v4->_terminateTargetOnOriginatorExit = self->_terminateTargetOnOriginatorExit;
  v4->_invalidatesSynchronously = self->_invalidatesSynchronously;
  v4->_definesRelativeStartTime = self->_definesRelativeStartTime;
  v4->_preventsSuspension = self->_preventsSuspension;
  v4->_hasHereditaryGrant = self->_hasHereditaryGrant;
  v4->_hasDomainAttribute = self->_hasDomainAttribute;
  v5 = [(NSMutableSet *)self->_sourceEnvironments mutableCopy];
  sourceEnvironments = v4->_sourceEnvironments;
  v4->_sourceEnvironments = v5;

  v4->_runningReason = self->_runningReason;
  v4->_legacyReason = self->_legacyReason;
  v7 = [(NSString *)self->_domainAttributes copy];
  domainAttributes = v4->_domainAttributes;
  v4->_domainAttributes = v7;

  v9 = [(NSMutableDictionary *)self->_invalidatesOnConditions mutableCopy];
  invalidatesOnConditions = v4->_invalidatesOnConditions;
  v4->_invalidatesOnConditions = v9;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_27;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_definesRelativeStartTime != v4->_definesRelativeStartTime || self->_endPolicy != v4->_endPolicy || self->_invalidationDuration != v4->_invalidationDuration || self->_startPolicy != v4->_startPolicy || self->_suspendsOnOriginatorSuspension != v4->_suspendsOnOriginatorSuspension || self->_warningDuration != v4->_warningDuration || self->_hasHereditaryGrant != v4->_hasHereditaryGrant || self->_terminateTargetOnOriginatorExit != v4->_terminateTargetOnOriginatorExit || self->_invalidatesSynchronously != v4->_invalidatesSynchronously || self->_preventsSuspension != v4->_preventsSuspension)
  {
    goto LABEL_26;
  }

  sourceEnvironments = self->_sourceEnvironments;
  v7 = v4->_sourceEnvironments;
  if (sourceEnvironments != v7)
  {
    v8 = 0;
    theSet = self->_sourceEnvironments;
    if (!sourceEnvironments)
    {
      goto LABEL_28;
    }

    v14 = v4->_sourceEnvironments;
    if (!v7)
    {
      goto LABEL_28;
    }

    Count = CFSetGetCount(theSet);
    if (Count != CFSetGetCount(v14) || ![(__CFSet *)theSet isEqualToSet:v14])
    {
      goto LABEL_26;
    }
  }

  if (self->_runningReason != v4->_runningReason || self->_legacyReason != v4->_legacyReason || (domainAttributes = self->_domainAttributes, domainAttributes != v4->_domainAttributes) && ![(NSString *)domainAttributes isEqualToString:?])
  {
LABEL_26:
    v8 = 0;
    goto LABEL_28;
  }

  invalidatesOnConditions = self->_invalidatesOnConditions;
  v12 = v4->_invalidatesOnConditions;
  if (invalidatesOnConditions == v12)
  {
LABEL_27:
    v8 = 1;
    goto LABEL_28;
  }

  v8 = 0;
  if (invalidatesOnConditions && v12)
  {
    v8 = [(NSMutableDictionary *)invalidatesOnConditions isEqual:?];
  }

LABEL_28:

  return v8;
}

@end