@interface SBIconContinuityItem
+ (SBIconContinuityItem)itemWithBadgeType:(int64_t)a3 deviceTypeIdentifier:(id)a4;
+ (id)_resolvedItemForExplicitBadgeType:(int64_t)a3 deviceTypeIdentifier:(id)a4;
+ (id)itemForBadgeTypeString:(id)a3 deviceTypeIdentifier:(id)a4;
+ (id)itemForContinuityInfo:(id)a3;
+ (int64_t)_continuityBadgeTypeForNSString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBIconContinuityItem)init;
- (SBIconContinuityItem)initWithBadgeType:(int64_t)a3 systemImageName:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBIconContinuityItem

+ (id)itemForContinuityInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isLocationBasedSuggestion])
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

    v8 = [v5 originatingDeviceType];
    v7 = [a1 _resolvedItemForExplicitBadgeType:v6 deviceTypeIdentifier:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SBIconContinuityItem)itemWithBadgeType:(int64_t)a3 deviceTypeIdentifier:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 1 && !v6)
  {
    NSLog(&cfstr_Sbiconcontinui.isa);
  }

  v8 = [a1 _resolvedItemForExplicitBadgeType:a3 deviceTypeIdentifier:v7];

  return v8;
}

- (SBIconContinuityItem)initWithBadgeType:(int64_t)a3 systemImageName:(id)a4
{
  v8 = a4;
  if (!a3)
  {
    [SBIconContinuityItem initWithBadgeType:a2 systemImageName:?];
  }

  v9 = v8;
  if (!v8)
  {
    [SBIconContinuityItem initWithBadgeType:a2 systemImageName:?];
  }

  v13.receiver = self;
  v13.super_class = SBIconContinuityItem;
  v10 = [(SBIconContinuityItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_badgeType = a3;
    objc_storeStrong(&v10->_systemImageName, a4);
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
    v14 = self;
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

+ (id)itemForBadgeTypeString:(id)a3 deviceTypeIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 itemWithBadgeType:objc_msgSend(a1 deviceTypeIdentifier:{"_continuityBadgeTypeForNSString:", a3), v6}];

  return v7;
}

+ (id)_resolvedItemForExplicitBadgeType:(int64_t)a3 deviceTypeIdentifier:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:v6 withResolutionStrategy:1 variantOptions:1 error:&v17];
    v8 = v17;
    if (v7)
    {
      v9 = [v7 name];
LABEL_6:

      a3 = 1;
      goto LABEL_23;
    }

    if ([v6 isEqualToString:@"com.apple.mac"])
    {
      v9 = @"display";
      goto LABEL_6;
    }

    v10 = SBLogContinuity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBIconContinuityItem _resolvedItemForExplicitBadgeType:v6 deviceTypeIdentifier:v10];
    }
  }

  if (a3 > 3)
  {
    v12 = @"airpods";
    v13 = @"location.fill";
    v15 = @"alarm";
    if (a3 != 6)
    {
      v15 = 0;
    }

    if (a3 != 5)
    {
      v13 = v15;
    }

    v14 = a3 == 4;
  }

  else
  {
    v11 = 0;
    if (a3 < 2)
    {
      goto LABEL_24;
    }

    v12 = @"headphones";
    v13 = @"bluetooth";
    if (a3 != 3)
    {
      v13 = 0;
    }

    v14 = a3 == 2;
  }

  if (v14)
  {
    v9 = v12;
  }

  else
  {
    v9 = v13;
  }

LABEL_23:
  v11 = [[a1 alloc] initWithBadgeType:a3 systemImageName:v9];

LABEL_24:

  return v11;
}

+ (int64_t)_continuityBadgeTypeForNSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeDevice"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeAUX"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeBluetooth"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeHeadphones"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeLocation"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SBIconContinuityBadgeTypeWake"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBIconContinuityItem *)self badgeType];
      if (v8 == [(SBIconContinuityItem *)v7 badgeType])
      {
        v9 = [(SBIconContinuityItem *)self systemImageName];
        v10 = [(SBIconContinuityItem *)v7 systemImageName];
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
  v3 = [(SBIconContinuityItem *)self badgeType];
  v4 = [(SBIconContinuityItem *)self systemImageName];
  v5 = [v4 hash];

  return v5 ^ v3;
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

  v7 = [(SBIconContinuityItem *)self systemImageName];
  v8 = [v3 stringWithFormat:@"<%@: %p badgeType: %@, systemImageName: %@>", v4, self, v6, v7];;

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