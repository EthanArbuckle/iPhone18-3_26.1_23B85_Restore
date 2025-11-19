@interface XBSnapshotContainerIdentity
+ (id)identityForApplicationInfo:(id)a3;
+ (id)identityForApplicationRecord:(id)a3;
+ (id)identityForBundleProxy:(id)a3;
+ (id)identityForCompatibilityInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (XBSnapshotContainerIdentity)init;
- (id)_initWithBundleIdentifier:(id)a3 bundlePath:(id)a4 dataContainerPath:(id)a5 bundleContainerPath:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)snapshotContainerPathForGroupID:(id)a3;
- (id)snapshotContainerPathForSnapshot:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation XBSnapshotContainerIdentity

- (XBSnapshotContainerIdentity)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"XBSnapshotContainerIdentity.m" lineNumber:31 description:@"this constructor is disallowed"];

  return [(XBSnapshotContainerIdentity *)self _initWithBundleIdentifier:0 bundlePath:0 dataContainerPath:0 bundleContainerPath:0];
}

- (id)_initWithBundleIdentifier:(id)a3 bundlePath:(id)a4 dataContainerPath:(id)a5 bundleContainerPath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    [XBSnapshotContainerIdentity _initWithBundleIdentifier:a2 bundlePath:self dataContainerPath:? bundleContainerPath:?];
  }

  v28.receiver = self;
  v28.super_class = XBSnapshotContainerIdentity;
  v15 = [(XBSnapshotContainerIdentity *)&v28 init];
  if (v15)
  {
    v16 = [v11 copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v16;

    v18 = [v12 copy];
    bundlePath = v15->_bundlePath;
    v15->_bundlePath = v18;

    v20 = [v13 copy];
    dataContainerPath = v15->_dataContainerPath;
    v15->_dataContainerPath = v20;

    v22 = [v14 copy];
    bundleContainerPath = v15->_bundleContainerPath;
    v15->_bundleContainerPath = v22;

    v24 = XBSnapshotPathForBundleIdentifierWithSandboxPath(v15->_bundleIdentifier, v15->_dataContainerPath);
    v25 = [v24 copy];
    snapshotContainerPath = v15->_snapshotContainerPath;
    v15->_snapshotContainerPath = v25;
  }

  return v15;
}

+ (id)identityForApplicationRecord:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(XBSnapshotContainerIdentity *)a2 identityForApplicationRecord:a1];
  }

  v6 = [XBSnapshotContainerIdentity alloc];
  v7 = [v5 bundleIdentifier];
  v8 = [v5 URL];
  v9 = [v8 path];
  v10 = [v5 dataContainerURL];
  v11 = [v10 path];
  v12 = [v5 bundleContainerURL];
  v13 = [v12 path];
  v14 = [(XBSnapshotContainerIdentity *)v6 _initWithBundleIdentifier:v7 bundlePath:v9 dataContainerPath:v11 bundleContainerPath:v13];

  return v14;
}

+ (id)identityForBundleProxy:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(XBSnapshotContainerIdentity *)a2 identityForBundleProxy:a1];
  }

  v6 = [XBSnapshotContainerIdentity alloc];
  v7 = [v5 bundleIdentifier];
  v8 = [v5 bundleURL];
  v9 = [v8 path];
  v10 = [v5 dataContainerURL];
  v11 = [v10 path];
  v12 = [v5 bundleContainerURL];
  v13 = [v12 path];
  v14 = [(XBSnapshotContainerIdentity *)v6 _initWithBundleIdentifier:v7 bundlePath:v9 dataContainerPath:v11 bundleContainerPath:v13];

  return v14;
}

+ (id)identityForApplicationInfo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [XBSnapshotContainerIdentity alloc];
    v5 = [v3 bundleIdentifier];
    v6 = [v3 bundleURL];
    v7 = [v6 path];
    v8 = [v3 dataContainerURL];
    v9 = [v8 path];
    v10 = [v3 bundleContainerURL];

    v11 = [v10 path];
    v12 = [(XBSnapshotContainerIdentity *)v4 _initWithBundleIdentifier:v5 bundlePath:v7 dataContainerPath:v9 bundleContainerPath:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)identityForCompatibilityInfo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [XBSnapshotContainerIdentity alloc];
    v5 = [v3 bundleIdentifier];
    v6 = [v3 bundlePath];
    v7 = [v3 sandboxPath];
    v8 = [v3 bundleContainerPath];

    v9 = [(XBSnapshotContainerIdentity *)v4 _initWithBundleIdentifier:v5 bundlePath:v6 dataContainerPath:v7 bundleContainerPath:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)snapshotContainerPathForGroupID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(XBSnapshotContainerIdentity *)self snapshotContainerPath];
    v6 = [v5 stringByAppendingPathComponent:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)snapshotContainerPathForSnapshot:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 groupID];
    v7 = [(XBSnapshotContainerIdentity *)self snapshotContainerPathForGroupID:v6];

    v8 = [v5 variantID];

    if (v8)
    {
      v9 = [v5 variantID];
      v10 = [v7 stringByAppendingPathComponent:v9];

      v7 = v10;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_bundleIdentifier];
  v5 = [v3 appendObject:self->_bundlePath];
  v6 = [v3 appendObject:self->_dataContainerPath];
  v7 = [v3 appendObject:self->_bundleContainerPath];
  v8 = [v3 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(XBSnapshotContainerIdentity *)v4 bundleIdentifier];
      if (BSEqualStrings())
      {
        v6 = [(XBSnapshotContainerIdentity *)v4 bundlePath];
        if (BSEqualStrings())
        {
          v7 = [(XBSnapshotContainerIdentity *)v4 dataContainerPath];
          if (BSEqualStrings())
          {
            v8 = [(XBSnapshotContainerIdentity *)v4 bundleContainerPath];
            v9 = BSEqualStrings();
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)succinctDescription
{
  v2 = [(XBSnapshotContainerIdentity *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_bundleIdentifier withName:@"identifier"];
  v5 = [v3 appendBool:self->_dataContainerPath != 0 withName:@"sandboxed"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(XBSnapshotContainerIdentity *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(XBSnapshotContainerIdentity *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__XBSnapshotContainerIdentity_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9508;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __69__XBSnapshotContainerIdentity_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"bundlePath"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"bundleContainerPath"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"dataContainerPath"];
}

- (void)_initWithBundleIdentifier:(uint64_t)a1 bundlePath:(uint64_t)a2 dataContainerPath:bundleContainerPath:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBSnapshotContainerIdentity.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

+ (void)identityForApplicationRecord:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBSnapshotContainerIdentity.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"record"}];
}

+ (void)identityForBundleProxy:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBSnapshotContainerIdentity.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"proxy"}];
}

@end