@interface PBFPosterRoleCoordinatorChange
+ (id)addPosterToRole:(id)a3 incomingPoster:(id)a4;
+ (id)assignAttributeToPosterWithinRole:(id)a3 matchingUUID:(id)a4 attribute:(id)a5;
+ (id)distillArrayOfChangesIntoChangesOrderedByPosterRoleEntropy:(id)a3;
+ (id)duplicatePosterWithinRole:(id)a3 matchingUUID:(id)a4 toUUID:(id)a5;
+ (id)refreshRoleCoordinator:(id)a3;
+ (id)removeAttributeFromPosterWithinRole:(id)a3 matchingUUID:(id)a4 attributeType:(id)a5;
+ (id)removePosterFromRole:(id)a3 matchingUUID:(id)a4;
+ (id)reorderPostersForRole:(id)a3 sortedPosterUUIDs:(id)a4;
+ (id)resetRole:(id)a3;
+ (id)selectPosterForRole:(id)a3 matchingUUID:(id)a4;
+ (id)updateConfiguredProperties:(id)a3 forPosterWithinRole:(id)a4 matchingUUID:(id)a5;
+ (id)updatePosterWithinRole:(id)a3 incomingPoster:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChange:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (PBFPosterRoleCoordinatorChange)initWithType:(id)a3 role:(id)a4 userInfo:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PBFPosterRoleCoordinatorChange

+ (id)addPosterToRole:(id)a3 incomingPoster:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [PBFPosterRoleCoordinatorChange alloc];
  v11 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration";
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(PBFPosterRoleCoordinatorChange *)v7 initWithType:@"PBFPosterRoleCoordinatorChangeTypeAddPoster" role:v6 userInfo:v8];

  return v9;
}

+ (id)updatePosterWithinRole:(id)a3 incomingPoster:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [PBFPosterRoleCoordinatorChange alloc];
  v11 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration";
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(PBFPosterRoleCoordinatorChange *)v7 initWithType:@"PBFPosterRoleCoordinatorChangeTypeUpdatePoster" role:v6 userInfo:v8];

  return v9;
}

+ (id)removePosterFromRole:(id)a3 matchingUUID:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [PBFPosterRoleCoordinatorChange alloc];
  v11 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID";
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(PBFPosterRoleCoordinatorChange *)v7 initWithType:@"PBFPosterRoleCoordinatorChangeTypeRemovePoster" role:v6 userInfo:v8];

  return v9;
}

+ (id)reorderPostersForRole:(id)a3 sortedPosterUUIDs:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [PBFPosterRoleCoordinatorChange alloc];
  v11 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyOrderedUUIDs";
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(PBFPosterRoleCoordinatorChange *)v7 initWithType:@"PBFPosterRoleCoordinatorChangeTypeReorderPosters" role:v6 userInfo:v8];

  return v9;
}

+ (id)duplicatePosterWithinRole:(id)a3 matchingUUID:(id)a4 toUUID:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PBFPosterRoleCoordinatorChange alloc];
  v14[0] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID";
  v14[1] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyOutPosterUUID";
  v15[0] = v8;
  v15[1] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [(PBFPosterRoleCoordinatorChange *)v10 initWithType:@"PBFPosterRoleCoordinatorChangeTypeDuplicatePoster" role:v9 userInfo:v11];

  return v12;
}

+ (id)assignAttributeToPosterWithinRole:(id)a3 matchingUUID:(id)a4 attribute:(id)a5
{
  v16[3] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PBFPosterRoleCoordinatorChange alloc];
  v16[0] = v8;
  v15[0] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID";
  v15[1] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType";
  v11 = [v7 attributeType];
  v15[2] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyAttribute";
  v16[1] = v11;
  v16[2] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = [(PBFPosterRoleCoordinatorChange *)v10 initWithType:@"PBFPosterRoleCoordinatorChangeTypeAssignAttribute" role:v9 userInfo:v12];

  return v13;
}

+ (id)removeAttributeFromPosterWithinRole:(id)a3 matchingUUID:(id)a4 attributeType:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PBFPosterRoleCoordinatorChange alloc];
  v14[0] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID";
  v14[1] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType";
  v15[0] = v8;
  v15[1] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [(PBFPosterRoleCoordinatorChange *)v10 initWithType:@"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute" role:v9 userInfo:v11];

  return v12;
}

+ (id)selectPosterForRole:(id)a3 matchingUUID:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [PBFPosterRoleCoordinatorChange alloc];
  v11 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID";
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(PBFPosterRoleCoordinatorChange *)v7 initWithType:@"PBFPosterRoleCoordinatorChangeTypeSelectPoster" role:v6 userInfo:v8];

  return v9;
}

+ (id)updateConfiguredProperties:(id)a3 forPosterWithinRole:(id)a4 matchingUUID:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PBFPosterRoleCoordinatorChange alloc];
  v14[0] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID";
  v14[1] = @"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties";
  v15[0] = v7;
  v15[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [(PBFPosterRoleCoordinatorChange *)v10 initWithType:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties" role:v8 userInfo:v11];

  return v12;
}

+ (id)refreshRoleCoordinator:(id)a3
{
  v3 = a3;
  v4 = [PBFPosterRoleCoordinatorChange alloc];
  v5 = [(PBFPosterRoleCoordinatorChange *)v4 initWithType:@"PBFPosterRoleCoordinatorChangeTypeRefreshRoleCoordinator" role:v3 userInfo:MEMORY[0x277CBEC10]];

  return v5;
}

+ (id)resetRole:(id)a3
{
  v3 = a3;
  v4 = [PBFPosterRoleCoordinatorChange alloc];
  v5 = [(PBFPosterRoleCoordinatorChange *)v4 initWithType:@"PBFPosterRoleCoordinatorChangeTypeResetRoleCoordinator" role:v3 userInfo:MEMORY[0x277CBEC10]];

  return v5;
}

+ (id)distillArrayOfChangesIntoChangesOrderedByPosterRoleEntropy:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (!v9 || ([*(*(&v19 + 1) + 8 * i) role], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v9, "isEqual:", v13), v13, (v14 & 1) == 0))
        {
          v15 = [v12 role];

          v16 = objc_opt_new();
          [v4 addObject:v16];
          v8 = v16;
          v9 = v15;
        }

        [v8 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v17 = [v4 copy];

  return v17;
}

- (PBFPosterRoleCoordinatorChange)initWithType:(id)a3 role:(id)a4 userInfo:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    [PBFPosterRoleCoordinatorChange initWithType:a2 role:? userInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterRoleCoordinatorChange initWithType:a2 role:? userInfo:?];
  }

  v14 = v11;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v14)
  {
    [PBFPosterRoleCoordinatorChange initWithType:a2 role:? userInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterRoleCoordinatorChange initWithType:a2 role:? userInfo:?];
  }

  v15 = v12;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v15)
  {
    [PBFPosterRoleCoordinatorChange initWithType:a2 role:? userInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterRoleCoordinatorChange initWithType:a2 role:? userInfo:?];
  }

  v23.receiver = self;
  v23.super_class = PBFPosterRoleCoordinatorChange;
  v16 = [(PBFPosterRoleCoordinatorChange *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_changeType, a3);
    objc_storeStrong(&v17->_role, a4);
    v18 = [v15 copy];
    userInfo = v17->_userInfo;
    v17->_userInfo = v18;

    v20 = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v20;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_changeType hash];
  v4 = [(NSString *)self->_role hash]^ v3;
  v5 = [(NSDictionary *)self->_userInfo hash];
  v6 = 0xBF58476D1CE4E5B9 * (v4 ^ v5 ^ ((v4 ^ v5) >> 30));
  return (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
}

- (BOOL)isEqualToChange:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if (BSEqualStrings() && BSEqualStrings())
  {
    v5 = BSEqualDictionaries();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PBFPosterRoleCoordinatorChange *)self isEqualToChange:v4];
  }

  return v7;
}

- (BOOL)isValidWithError:(id *)a3
{
  v33[3] = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeAddPoster"]|| [(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeUpdatePoster"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration", 0, v30, v31}];
    v6 = LABEL_8:;
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeRemovePoster"]|| [(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeSelectPoster"])
  {
    v5 = MEMORY[0x277CBEB98];
    v29 = 0;
LABEL_7:
    [v5 setWithObjects:{@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID", v29, v30, v31}];
    goto LABEL_8;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeReorderPosters"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"PBFPosterRoleCoordinatorChangeUserInfoKeyOrderedUUIDs", 0, v30, v31}];
    goto LABEL_8;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeDuplicatePoster"])
  {
    v5 = MEMORY[0x277CBEB98];
    v28 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyOutPosterUUID";
LABEL_38:
    v29 = v28;
    v30 = 0;
    goto LABEL_7;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeAssignAttribute"])
  {
    v5 = MEMORY[0x277CBEB98];
    v30 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyAttribute";
    v31 = 0;
    v29 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType";
    goto LABEL_7;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute"])
  {
    v5 = MEMORY[0x277CBEB98];
    v28 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType";
    goto LABEL_38;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties"])
  {
    v5 = MEMORY[0x277CBEB98];
    v28 = @"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties";
    goto LABEL_38;
  }

  if ([(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeRefreshRoleCoordinator"]|| [(NSString *)self->_changeType isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeResetRoleCoordinator"])
  {
    v6 = [MEMORY[0x277CBEB98] set];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:
  v8 = MEMORY[0x277CBEB98];
  v9 = [(NSDictionary *)self->_userInfo allKeys];
  v10 = [v8 setWithArray:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v12;

  v14 = MEMORY[0x277CBEB38];
  v32[0] = @"expectedUserInfoKeys";
  v15 = [v7 allObjects];
  v16 = v15;
  v17 = MEMORY[0x277CBEBF8];
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v33[0] = v18;
  v32[1] = @"receivedUserInfoKeys";
  v19 = [v13 allObjects];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  v32[2] = @"changeType";
  changeType = self->_changeType;
  if (!changeType)
  {
    changeType = @"PBFPosterRoleCoordinatorChangeTypeUnknown";
  }

  v33[1] = v21;
  v33[2] = changeType;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v24 = [v14 dictionaryWithDictionary:v23];

  if (![(NSDictionary *)self->_userInfo count])
  {
    if (!a3)
    {
      goto LABEL_32;
    }

    v26 = -3343;
LABEL_31:
    [MEMORY[0x277CCA9B8] errorWithDomain:@"PBFPosterRoleCoordinatorChangeErrorDomain" code:v26 userInfo:v24];
    *a3 = v25 = 0;
    goto LABEL_33;
  }

  if (!v7)
  {
    if (!a3)
    {
      goto LABEL_32;
    }

    v26 = -3342;
    goto LABEL_31;
  }

  if (([v13 isSubsetOfSet:v7] & 1) == 0)
  {
    if (a3)
    {
      v26 = -3341;
      goto LABEL_31;
    }

LABEL_32:
    v25 = 0;
    goto LABEL_33;
  }

  v25 = 1;
LABEL_33:

  return v25;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_changeType withName:@"changeType"];
  [v3 appendString:self->_role withName:@"role"];
  v4 = [v3 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v5 = [v3 build];

  return v5;
}

- (void)initWithType:(char *)a1 role:userInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 role:userInfo:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 role:userInfo:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 role:userInfo:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 role:userInfo:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 role:userInfo:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end