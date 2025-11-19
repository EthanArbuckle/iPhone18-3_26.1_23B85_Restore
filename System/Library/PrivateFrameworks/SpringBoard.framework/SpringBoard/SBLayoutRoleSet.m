@interface SBLayoutRoleSet
- (BOOL)isEqual:(id)a3;
- (SBLayoutRoleSet)init;
- (id)description;
- (id)setByRemovingRole:(int64_t)a3;
- (void)_initWithRoles:(void *)a1;
- (void)enumerateRolesUsingBlock:(id)a3;
@end

@implementation SBLayoutRoleSet

- (SBLayoutRoleSet)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"init is not allowed on %@", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"SBLayoutRole.m";
    v17 = 1024;
    v18 = 201;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)setByRemovingRole:(int64_t)a3
{
  p_roles = &self->_roles;
  if ([(NSIndexSet *)self->_roles containsIndex:?])
  {
    [(SBLayoutRoleSet *)p_roles setByRemovingRole:a3, &v8];
    v6 = v8;
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (void)enumerateRolesUsingBlock:(id)a3
{
  v4 = a3;
  roles = self->_roles;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBLayoutRoleSet_enumerateRolesUsingBlock___block_invoke;
  v7[3] = &unk_2783C0A40;
  v8 = v4;
  v6 = v4;
  [(NSIndexSet *)roles enumerateIndexesUsingBlock:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(NSIndexSet *)self->_roles isEqualToIndexSet:v4->_roles];
  }

  return v6;
}

- (id)description
{
  if ([(SBLayoutRoleSet *)self isEmpty])
  {
    v3 = @"none";
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    roles = self->_roles;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SBLayoutRoleSet_description__block_invoke;
    v8[3] = &unk_2783AC9B8;
    v9 = v4;
    v6 = v4;
    [(NSIndexSet *)roles enumerateIndexesUsingBlock:v8];
    v3 = [v6 componentsJoinedByString:{@", "}];
  }

  return v3;
}

void __30__SBLayoutRoleSet_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = SBLayoutRoleDescription(a2);
  [v2 addObject:v3];
}

- (void)_initWithRoles:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SBLayoutRoleSet;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (void)setByRemovingRole:(void *)a3 .cold.1(id *a1, uint64_t a2, void *a3)
{
  v7 = [*a1 mutableCopy];
  [v7 removeIndex:a2];
  v5 = [SBLayoutRoleSet alloc];
  v6 = [v7 copy];
  *a3 = [(SBLayoutRoleSet *)v5 _initWithRoles:v6];
}

@end