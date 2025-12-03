@interface SBIconContinuityItem
+ (SBIconContinuityItem)itemWithBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier;
+ (id)_resolvedItemForExplicitBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier;
+ (id)itemForBadgeTypeString:(id)string deviceTypeIdentifier:(id)identifier;
+ (id)itemForContinuityInfo:(id)info;
+ (int64_t)_continuityBadgeTypeForNSString:(id)string;
- (BOOL)isEqual:(id)equal;
- (SBIconContinuityItem)init;
- (SBIconContinuityItem)initWithBadgeType:(int64_t)type systemImageName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBIconContinuityItem

+ (id)itemForContinuityInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    if ([infoCopy isLocationBasedSuggestion])
    {
      v6 = 5;
    }

    else if ([v5 isBluetoothAudioPrediction])
    {
      v6 = 4;
    }

    else if ([v5 isBluetoothPrediction])
    {
      v6 = 3;
    }

    else if ([v5 isHeadphonesPrediction])
    {
      v6 = 2;
    }

    else if ([v5 isFirstWakePrediction])
    {
      v6 = 6;
    }

    else
    {
      v6 = 0;
    }

    originatingDeviceType = [v5 originatingDeviceType];
    v7 = [self _resolvedItemForExplicitBadgeType:v6 deviceTypeIdentifier:originatingDeviceType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SBIconContinuityItem)itemWithBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (type == 1 && !identifierCopy)
  {
    NSLog(&cfstr_Sbiconcontinui.isa);
  }

  v8 = [self _resolvedItemForExplicitBadgeType:type deviceTypeIdentifier:v7];

  return v8;
}

- (SBIconContinuityItem)initWithBadgeType:(int64_t)type systemImageName:(id)name
{
  nameCopy = name;
  if (!type)
  {
    [SBIconContinuityItem initWithBadgeType:a2 systemImageName:?];
  }

  v9 = nameCopy;
  if (!nameCopy)
  {
    [SBIconContinuityItem initWithBadgeType:a2 systemImageName:?];
  }

  v13.receiver = self;
  v13.super_class = SBIconContinuityItem;
  v10 = [(SBIconContinuityItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_badgeType = type;
    objc_storeStrong(&v10->_systemImageName, name);
  }

  return v11;
}

- (SBIconContinuityItem)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed for SBIconContinuityItem"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"SBIconContinuityItem.m";
    v17 = 1024;
    v18 = 74;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)itemForBadgeTypeString:(id)string deviceTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self itemWithBadgeType:objc_msgSend(self deviceTypeIdentifier:{"_continuityBadgeTypeForNSString:", string), identifierCopy}];

  return v7;
}

+ (id)_resolvedItemForExplicitBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:identifierCopy withResolutionStrategy:1 variantOptions:1 error:&v17];
    v8 = v17;
    if (v7)
    {
      name = [v7 name];
LABEL_6:

      type = 1;
      goto LABEL_23;
    }

    if ([identifierCopy isEqualToString:@"com.apple.mac"])
    {
      name = @"display";
      goto LABEL_6;
    }

    v10 = SBLogContinuity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBIconContinuityItem _resolvedItemForExplicitBadgeType:identifierCopy deviceTypeIdentifier:v10];
    }
  }

  if (type > 3)
  {
    v12 = @"airpods";
    v13 = @"location.fill";
    v15 = @"alarm";
    if (type != 6)
    {
      v15 = 0;
    }

    if (type != 5)
    {
      v13 = v15;
    }

    v14 = type == 4;
  }

  else
  {
    v11 = 0;
    if (type < 2)
    {
      goto LABEL_24;
    }

    v12 = @"headphones";
    v13 = @"bluetooth";
    if (type != 3)
    {
      v13 = 0;
    }

    v14 = type == 2;
  }

  if (v14)
  {
    name = v12;
  }

  else
  {
    name = v13;
  }

LABEL_23:
  v11 = [[self alloc] initWithBadgeType:type systemImageName:name];

LABEL_24:

  return v11;
}

+ (int64_t)_continuityBadgeTypeForNSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeDevice"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeAUX"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeBluetooth"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeHeadphones"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeLocation"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeWake"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      badgeType = [(SBIconContinuityItem *)self badgeType];
      if (badgeType == [(SBIconContinuityItem *)v7 badgeType])
      {
        systemImageName = [(SBIconContinuityItem *)self systemImageName];
        systemImageName2 = [(SBIconContinuityItem *)v7 systemImageName];
        v11 = BSEqualObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  badgeType = [(SBIconContinuityItem *)self badgeType];
  systemImageName = [(SBIconContinuityItem *)self systemImageName];
  v5 = [systemImageName hash];

  return v5 ^ badgeType;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SBIconContinuityItem *)self badgeType]- 1;
  if (v5 > 5)
  {
    v6 = @"none";
  }

  else
  {
    v6 = off_1E808A390[v5];
  }

  systemImageName = [(SBIconContinuityItem *)self systemImageName];
  v8 = [v3 stringWithFormat:@"<%@: %p badgeType: %@, systemImageName: %@>", v4, self, v6, systemImageName];;

  return v8;
}

- (void)initWithBadgeType:(const char *)a1 systemImageName:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemImageName != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    v8 = @"SBIconContinuityItem.m";
    v9 = 1024;
    v10 = 64;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithBadgeType:(const char *)a1 systemImageName:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"badgeType != SBIconContinuityBadgeTypeNone"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    v8 = @"SBIconContinuityItem.m";
    v9 = 1024;
    v10 = 63;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_resolvedItemForExplicitBadgeType:(uint64_t)a1 deviceTypeIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Failed to find symbol for device type identifier: '%{public}@'", &v2, 0xCu);
}

@end