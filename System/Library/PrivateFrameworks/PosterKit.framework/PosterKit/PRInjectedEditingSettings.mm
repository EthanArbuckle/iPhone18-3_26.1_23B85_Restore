@interface PRInjectedEditingSettings
- (BOOL)isEqual:(id)equal;
- (PRInjectedEditingSettings)initWithBSXPCCoder:(id)coder;
- (PRInjectedEditingSettings)initWithCoder:(id)coder;
- (PRInjectedEditingSettings)initWithState:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRInjectedEditingSettings

- (PRInjectedEditingSettings)initWithState:(int64_t)state
{
  v9.receiver = self;
  v9.super_class = PRInjectedEditingSettings;
  v5 = [(PRInjectedEditingSettings *)&v9 init];
  if (v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (([&unk_1F1C6BC68 containsObject:bundleIdentifier] & 1) == 0)
    {
      [(PRInjectedEditingSettings *)a2 initWithState:v5];
    }

    [(PRInjectedEditingSettings *)v5 setState:state];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
      selectedColors = [(PRInjectedEditingSettings *)self selectedColors];
      selectedColors2 = [(PRInjectedEditingSettings *)v9 selectedColors];
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
  currentLook = [(PRInjectedEditingSettings *)self currentLook];
  v6 = [v3 appendString:currentLook];

  currentEditingLook = [(PRInjectedEditingSettings *)self currentEditingLook];
  v8 = [v3 appendObject:currentEditingLook];

  selectedColors = [(PRInjectedEditingSettings *)self selectedColors];
  v10 = [v3 appendObject:selectedColors];

  v11 = [v3 hash];
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithState:{-[PRInjectedEditingSettings state](self, "state")}];
  currentLook = [(PRInjectedEditingSettings *)self currentLook];
  [v4 setCurrentLook:currentLook];

  currentEditingLook = [(PRInjectedEditingSettings *)self currentEditingLook];
  [v4 setCurrentEditingLook:currentEditingLook];

  selectedColors = [(PRInjectedEditingSettings *)self selectedColors];
  [v4 setSelectedColors:selectedColors];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"_state"];
  [coderCopy encodeObject:self->_currentLook forKey:@"_currentLook"];
  [coderCopy encodeObject:self->_currentEditingLook forKey:@"_currentEditingLook"];
  [coderCopy encodeObject:self->_selectedColors forKey:@"_selectedColors"];
}

- (PRInjectedEditingSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PRInjectedEditingSettings;
  v5 = [(PRInjectedEditingSettings *)&v13 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"_state"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentLook"];
    currentLook = v5->_currentLook;
    v5->_currentLook = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentEditingLook"];
    currentEditingLook = v5->_currentEditingLook;
    v5->_currentEditingLook = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_selectedColors"];
    selectedColors = v5->_selectedColors;
    v5->_selectedColors = v10;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInt64:state forKey:@"_state"];
  [coderCopy encodeObject:self->_currentLook forKey:@"_currentLook"];
  [coderCopy encodeObject:self->_currentEditingLook forKey:@"_currentEditingLook"];
  [coderCopy encodeObject:self->_selectedColors forKey:@"_selectedColors"];
}

- (PRInjectedEditingSettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PRInjectedEditingSettings;
  v5 = [(PRInjectedEditingSettings *)&v15 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeInt64ForKey:@"_state"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentLook"];
    currentLook = v5->_currentLook;
    v5->_currentLook = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentEditingLook"];
    currentEditingLook = v5->_currentEditingLook;
    v5->_currentEditingLook = v8;

    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = [coderCopy decodeCollectionOfClass:v10 containingClass:v11 forKey:@"_selectedColors"];
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