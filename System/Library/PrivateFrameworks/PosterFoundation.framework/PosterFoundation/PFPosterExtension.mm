@interface PFPosterExtension
+ (id)extensionWithIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (LSPropertyList)posterExtensionEntitlementsPlist;
- (LSPropertyList)posterExtensionInfoPlist;
- (NSBundle)posterExtensionBundle;
- (NSData)persistentIdentifier;
- (NSSet)supportedRoles;
- (NSString)posterExtensionContainerBundleIdentifier;
- (PFPosterExtension)initWithIdentity:(id)identity;
- (id)applicationExtensionRecord;
- (id)description;
@end

@implementation PFPosterExtension

- (PFPosterExtension)initWithIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [PFPosterExtension initWithIdentity:a2];
  }

  v7 = identityCopy;
  v14.receiver = self;
  v14.super_class = PFPosterExtension;
  v8 = [(PFPosterExtension *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identity, identity);
    uniqueIdentifier = [v7 uniqueIdentifier];
    uuid = v9->_uuid;
    v9->_uuid = uniqueIdentifier;

    applicationExtensionRecord = [(PFPosterExtension *)v9 applicationExtensionRecord];
  }

  return v9;
}

+ (id)extensionWithIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    v4 = [[PFPosterExtension alloc] initWithIdentity:identityCopy];
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
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_uuid isEqual:equalCopy->_uuid]&& [(RBSProcessIdentity *)self->_processIdentity isEqual:equalCopy->_processIdentity]&& [(_EXHostConfiguration *)self->_hostConfiguration isEqual:equalCopy->_hostConfiguration])
    {
      [(_EXExtensionIdentity *)self->_identity isEqual:equalCopy->_identity];
    }
  }

  return equalCopy == self;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendString:uUIDString withName:@"instanceIdentifier"];

  posterExtensionBundleIdentifier = [(PFPosterExtension *)self posterExtensionBundleIdentifier];
  [v3 appendString:posterExtensionBundleIdentifier withName:@"posterExtensionBundleIdentifier"];

  localizedName = [(PFPosterExtension *)self localizedName];
  [v3 appendString:localizedName withName:@"localizedName"];

  build = [v3 build];

  return build;
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
    applicationExtensionRecord = [(_EXExtensionIdentity *)self->_identity applicationExtensionRecord];
    v6 = self->_record;
    self->_record = applicationExtensionRecord;

    if (self->_record)
    {
      uniqueIdentifier = 0;
    }

    else
    {
      uniqueIdentifier = [(_EXExtensionIdentity *)self->_identity uniqueIdentifier];

      if (uniqueIdentifier)
      {
        v8 = objc_alloc(MEMORY[0x1E69635D0]);
        uuid = self->_uuid;
        v25 = 0;
        v10 = [v8 initWithUUID:uuid error:&v25];
        uniqueIdentifier = v25;
        v11 = self->_record;
        self->_record = v10;
      }

      if (!self->_record)
      {
        bundleIdentifier = [(_EXExtensionIdentity *)self->_identity bundleIdentifier];

        if (bundleIdentifier)
        {
          v13 = objc_alloc(MEMORY[0x1E69635D0]);
          bundleIdentifier2 = [(_EXExtensionIdentity *)self->_identity bundleIdentifier];
          v24 = uniqueIdentifier;
          v15 = [v13 initWithBundleIdentifier:bundleIdentifier2 error:&v24];
          v16 = v24;

          v17 = self->_record;
          self->_record = v15;

          uniqueIdentifier = v16;
        }

        if (!self->_record)
        {
          v18 = PFLogHosting();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            identity = self->_identity;
            *buf = 134218498;
            selfCopy = self;
            v28 = 2114;
            v29 = identity;
            v30 = 2114;
            v31 = uniqueIdentifier;
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
  applicationExtensionRecord = [(PFPosterExtension *)self applicationExtensionRecord];
  containingBundleRecord = [applicationExtensionRecord containingBundleRecord];
  bundleIdentifier = [containingBundleRecord bundleIdentifier];

  return bundleIdentifier;
}

- (LSPropertyList)posterExtensionInfoPlist
{
  applicationExtensionRecord = [(PFPosterExtension *)self applicationExtensionRecord];
  infoDictionary = [applicationExtensionRecord infoDictionary];

  return infoDictionary;
}

- (LSPropertyList)posterExtensionEntitlementsPlist
{
  applicationExtensionRecord = [(PFPosterExtension *)self applicationExtensionRecord];
  entitlements = [applicationExtensionRecord entitlements];

  return entitlements;
}

- (NSData)persistentIdentifier
{
  applicationExtensionRecord = [(PFPosterExtension *)self applicationExtensionRecord];
  persistentIdentifier = [applicationExtensionRecord persistentIdentifier];

  return persistentIdentifier;
}

- (NSBundle)posterExtensionBundle
{
  v2 = MEMORY[0x1E696AAE8];
  applicationExtensionRecord = [(PFPosterExtension *)self applicationExtensionRecord];
  v4 = [applicationExtensionRecord URL];
  v5 = [v2 pf_uniqueBundleWithURL:v4];

  return v5;
}

- (NSSet)supportedRoles
{
  posterExtensionInfoPlist = [(PFPosterExtension *)self posterExtensionInfoPlist];
  pf_supportedRoles = [posterExtensionInfoPlist pf_supportedRoles];

  return pf_supportedRoles;
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