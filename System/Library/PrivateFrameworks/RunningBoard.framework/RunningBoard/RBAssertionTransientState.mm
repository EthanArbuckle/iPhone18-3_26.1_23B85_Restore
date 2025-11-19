@interface RBAssertionTransientState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addTag:(id)a3;
- (void)unionState:(id)a3;
@end

@implementation RBAssertionTransientState

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(NSMutableSet *)self->_tags allObjects];
  v5 = [v4 count];

  cpuUsageViolationPoliciesByRole = self->_cpuUsageViolationPoliciesByRole;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__RBAssertionTransientState_description__block_invoke;
  v15[3] = &unk_279B33050;
  v7 = v3;
  v16 = v7;
  [(NSMutableDictionary *)cpuUsageViolationPoliciesByRole enumerateKeysAndObjectsUsingBlock:v15];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [objc_opt_class() description];
  v10 = v9;
  if (v5)
  {
    v11 = [(NSMutableSet *)self->_tags allObjects];
    v12 = [v11 componentsJoinedByString:{@", \n\t"}];
    v13 = [v8 initWithFormat:@"<%@| policies:[\n\t%@\n\t]%@%@>", v10, v7, @" tags:[\n\t", v12];
  }

  else
  {
    v13 = [v8 initWithFormat:@"<%@| policies:[\n\t%@\n\t]%@%@>", v9, v7, &stru_287507640, &stru_287507640];
  }

  return v13;
}

void __40__RBAssertionTransientState_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 unsignedIntegerValue];
  v7 = NSStringFromRBSRole();
  [v5 unsignedIntegerValue];

  v6 = NSStringFromRBSCPUMaximumUsageViolationPolicy();
  [v4 appendFormat:@"%@=%@\n\t", v7, v6];
}

- (void)addTag:(id)a3
{
  v4 = a3;
  tags = self->_tags;
  v8 = v4;
  if (!tags)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_tags;
    self->_tags = v6;

    v4 = v8;
    tags = self->_tags;
  }

  [(NSMutableSet *)tags addObject:v4];
}

- (void)unionState:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (v4 && v4 != self)
  {
    v6 = v4->_cpuUsageViolationPoliciesByRole;
    if ([(NSMutableDictionary *)v6 count])
    {
      if (self->_cpuUsageViolationPoliciesByRole)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __40__RBAssertionTransientState_unionState___block_invoke;
        v13[3] = &unk_279B33050;
        v13[4] = self;
        [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v13];
      }

      else
      {
        v7 = [(NSMutableDictionary *)v6 mutableCopy];
        cpuUsageViolationPoliciesByRole = self->_cpuUsageViolationPoliciesByRole;
        self->_cpuUsageViolationPoliciesByRole = v7;
      }
    }

    v9 = p_isa[2];
    if ([v9 count])
    {
      tags = self->_tags;
      if (tags)
      {
        [(NSMutableSet *)tags unionSet:v9];
      }

      else
      {
        v11 = [v9 mutableCopy];
        v12 = self->_tags;
        self->_tags = v11;
      }
    }
  }
}

void __40__RBAssertionTransientState_unionState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = a2;
  v13 = [v5 objectForKeyedSubscript:v7];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v13 unsignedIntegerValue];
  v10 = [v6 unsignedIntegerValue];

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v8 numberWithUnsignedInteger:v11];
  [*(*(a1 + 32) + 8) setObject:v12 forKeyedSubscript:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[RBAssertionTransientState allocWithZone:](RBAssertionTransientState init];
  v6 = [(NSMutableDictionary *)self->_cpuUsageViolationPoliciesByRole mutableCopyWithZone:a3];
  cpuUsageViolationPoliciesByRole = v5->_cpuUsageViolationPoliciesByRole;
  v5->_cpuUsageViolationPoliciesByRole = v6;

  v8 = [(NSMutableSet *)self->_tags mutableCopyWithZone:a3];
  tags = v5->_tags;
  v5->_tags = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    if ((v5 = objc_opt_class(), v5 != objc_opt_class()) || (tags = self->_tags, tags != v4->_tags) && ![(NSMutableSet *)tags isEqualToSet:?]|| (cpuUsageViolationPoliciesByRole = self->_cpuUsageViolationPoliciesByRole, cpuUsageViolationPoliciesByRole != v4->_cpuUsageViolationPoliciesByRole) && ![(NSMutableDictionary *)cpuUsageViolationPoliciesByRole isEqualToDictionary:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

@end