@interface PFPosterExtension
+ (id)extensionWithIdentity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LSPropertyList)posterExtensionEntitlementsPlist;
- (LSPropertyList)posterExtensionInfoPlist;
- (NSBundle)posterExtensionBundle;
- (NSData)persistentIdentifier;
- (NSSet)supportedRoles;
- (NSString)posterExtensionContainerBundleIdentifier;
- (PFPosterExtension)initWithIdentity:(id)a3;
- (id)applicationExtensionRecord;
- (id)description;
@end

@implementation PFPosterExtension

- (PFPosterExtension)initWithIdentity:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [PFPosterExtension initWithIdentity:a2];
  }

  v7 = v6;
  v14.receiver = self;
  v14.super_class = PFPosterExtension;
  v8 = [(PFPosterExtension *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identity, a3);
    v10 = [v7 uniqueIdentifier];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v12 = [(PFPosterExtension *)v9 applicationExtensionRecord];
  }

  return v9;
}

+ (id)extensionWithIdentity:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PFPosterExtension alloc] initWithIdentity:v3];
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
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_uuid isEqual:v4->_uuid]&& [(RBSProcessIdentity *)self->_processIdentity isEqual:v4->_processIdentity]&& [(_EXHostConfiguration *)self->_hostConfiguration isEqual:v4->_hostConfiguration])
    {
      [(_EXExtensionIdentity *)self->_identity isEqual:v4->_identity];
    }
  }

  return v4 == self;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendString:v4 withName:@"instanceIdentifier"];

  v5 = [(PFPosterExtension *)self posterExtensionBundleIdentifier];
  [v3 appendString:v5 withName:@"posterExtensionBundleIdentifier"];

  v6 = [(PFPosterExtension *)self localizedName];
  [v3 appendString:v6 withName:@"localizedName"];

  v7 = [v3 build];

  return v7;
}

- (id)applicationExtensionRecord
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  record = self->_record;
  if (record)
  {
    v4 = record;
  }

  else
  {
    v5 = [(_EXExtensionIdentity *)self->_identity applicationExtensionRecord];
    v6 = self->_record;
    self->_record = v5;

    if (self->_record)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(_EXExtensionIdentity *)self->_identity uniqueIdentifier];

      if (v7)
      {
        v8 = objc_alloc(MEMORY[0x1E69635D0]);
        uuid = self->_uuid;
        v25 = 0;
        v10 = [v8 initWithUUID:uuid error:&v25];
        v7 = v25;
        v11 = self->_record;
        self->_record = v10;
      }

      if (!self->_record)
      {
        v12 = [(_EXExtensionIdentity *)self->_identity bundleIdentifier];

        if (v12)
        {
          v13 = objc_alloc(MEMORY[0x1E69635D0]);
          v14 = [(_EXExtensionIdentity *)self->_identity bundleIdentifier];
          v24 = v7;
          v15 = [v13 initWithBundleIdentifier:v14 error:&v24];
          v16 = v24;

          v17 = self->_record;
          self->_record = v15;

          v7 = v16;
        }

        if (!self->_record)
        {
          v18 = PFLogHosting();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            identity = self->_identity;
            *buf = 134218498;
            v27 = self;
            v28 = 2114;
            v29 = identity;
            v30 = 2114;
            v31 = v7;
            _os_log_error_impl(&dword_1C269D000, v18, OS_LOG_TYPE_ERROR, "%p Failure to fault in application extensionRecord for identity %{public}@: %{public}@", buf, 0x20u);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = self->_record;
  v20 = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (NSString)posterExtensionContainerBundleIdentifier
{
  v2 = [(PFPosterExtension *)self applicationExtensionRecord];
  v3 = [v2 containingBundleRecord];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (LSPropertyList)posterExtensionInfoPlist
{
  v2 = [(PFPosterExtension *)self applicationExtensionRecord];
  v3 = [v2 infoDictionary];

  return v3;
}

- (LSPropertyList)posterExtensionEntitlementsPlist
{
  v2 = [(PFPosterExtension *)self applicationExtensionRecord];
  v3 = [v2 entitlements];

  return v3;
}

- (NSData)persistentIdentifier
{
  v2 = [(PFPosterExtension *)self applicationExtensionRecord];
  v3 = [v2 persistentIdentifier];

  return v3;
}

- (NSBundle)posterExtensionBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = [(PFPosterExtension *)self applicationExtensionRecord];
  v4 = [v3 URL];
  v5 = [v2 pf_uniqueBundleWithURL:v4];

  return v5;
}

- (NSSet)supportedRoles
{
  v2 = [(PFPosterExtension *)self posterExtensionInfoPlist];
  v3 = [v2 pf_supportedRoles];

  return v3;
}

- (void)initWithIdentity:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PFPosterExtension.m";
    v9 = 1024;
    v10 = 35;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end