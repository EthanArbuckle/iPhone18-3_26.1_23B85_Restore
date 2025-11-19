@interface PRInjectedEditingSettings
- (BOOL)isEqual:(id)a3;
- (PRInjectedEditingSettings)initWithBSXPCCoder:(id)a3;
- (PRInjectedEditingSettings)initWithCoder:(id)a3;
- (PRInjectedEditingSettings)initWithState:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRInjectedEditingSettings

- (PRInjectedEditingSettings)initWithState:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PRInjectedEditingSettings;
  v5 = [(PRInjectedEditingSettings *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];

    if (([&unk_1F1C6BC68 containsObject:v7] & 1) == 0)
    {
      [(PRInjectedEditingSettings *)a2 initWithState:v5];
    }

    [(PRInjectedEditingSettings *)v5 setState:a3];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && ([(PRInjectedEditingSettings *)self currentLook], v10 = objc_claimAutoreleasedReturnValue(), [(PRInjectedEditingSettings *)v9 currentLook], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(PRInjectedEditingSettings *)self currentEditingLook], v13 = objc_claimAutoreleasedReturnValue(), [(PRInjectedEditingSettings *)v9 currentEditingLook], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && (v16 = [(PRInjectedEditingSettings *)self state], v16 == [(PRInjectedEditingSettings *)v9 state]))
    {
      v17 = [(PRInjectedEditingSettings *)self selectedColors];
      v18 = [(PRInjectedEditingSettings *)v9 selectedColors];
      v8 = BSEqualArrays();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendInteger:{-[PRInjectedEditingSettings state](self, "state")}];
  v5 = [(PRInjectedEditingSettings *)self currentLook];
  v6 = [v3 appendString:v5];

  v7 = [(PRInjectedEditingSettings *)self currentEditingLook];
  v8 = [v3 appendObject:v7];

  v9 = [(PRInjectedEditingSettings *)self selectedColors];
  v10 = [v3 appendObject:v9];

  v11 = [v3 hash];
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithState:{-[PRInjectedEditingSettings state](self, "state")}];
  v5 = [(PRInjectedEditingSettings *)self currentLook];
  [v4 setCurrentLook:v5];

  v6 = [(PRInjectedEditingSettings *)self currentEditingLook];
  [v4 setCurrentEditingLook:v6];

  v7 = [(PRInjectedEditingSettings *)self selectedColors];
  [v4 setSelectedColors:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"_state"];
  [v5 encodeObject:self->_currentLook forKey:@"_currentLook"];
  [v5 encodeObject:self->_currentEditingLook forKey:@"_currentEditingLook"];
  [v5 encodeObject:self->_selectedColors forKey:@"_selectedColors"];
}

- (PRInjectedEditingSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PRInjectedEditingSettings;
  v5 = [(PRInjectedEditingSettings *)&v13 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"_state"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentLook"];
    currentLook = v5->_currentLook;
    v5->_currentLook = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentEditingLook"];
    currentEditingLook = v5->_currentEditingLook;
    v5->_currentEditingLook = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_selectedColors"];
    selectedColors = v5->_selectedColors;
    v5->_selectedColors = v10;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInt64:state forKey:@"_state"];
  [v5 encodeObject:self->_currentLook forKey:@"_currentLook"];
  [v5 encodeObject:self->_currentEditingLook forKey:@"_currentEditingLook"];
  [v5 encodeObject:self->_selectedColors forKey:@"_selectedColors"];
}

- (PRInjectedEditingSettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PRInjectedEditingSettings;
  v5 = [(PRInjectedEditingSettings *)&v15 init];
  if (v5)
  {
    v5->_state = [v4 decodeInt64ForKey:@"_state"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentLook"];
    currentLook = v5->_currentLook;
    v5->_currentLook = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentEditingLook"];
    currentEditingLook = v5->_currentEditingLook;
    v5->_currentEditingLook = v8;

    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = [v4 decodeCollectionOfClass:v10 containingClass:v11 forKey:@"_selectedColors"];
    selectedColors = v5->_selectedColors;
    v5->_selectedColors = v12;
  }

  return v5;
}

- (void)initWithState:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"You are not allowed to use this object."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRInjectedEditingSettings_ForMessagesOnly.m";
    v16 = 1024;
    v17 = 26;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end