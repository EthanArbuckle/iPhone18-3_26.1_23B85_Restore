@interface XBSnapshotContainerIdentity
+ (id)identityForApplicationInfo:(id)info;
+ (id)identityForApplicationRecord:(id)record;
+ (id)identityForBundleProxy:(id)proxy;
+ (id)identityForCompatibilityInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (XBSnapshotContainerIdentity)init;
- (id)_initWithBundleIdentifier:(id)identifier bundlePath:(id)path dataContainerPath:(id)containerPath bundleContainerPath:(id)bundleContainerPath;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)snapshotContainerPathForGroupID:(id)d;
- (id)snapshotContainerPathForSnapshot:(id)snapshot;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation XBSnapshotContainerIdentity

- (XBSnapshotContainerIdentity)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"XBSnapshotContainerIdentity.m" lineNumber:31 description:@"this constructor is disallowed"];

  return [(XBSnapshotContainerIdentity *)self _initWithBundleIdentifier:0 bundlePath:0 dataContainerPath:0 bundleContainerPath:0];
}

- (id)_initWithBundleIdentifier:(id)identifier bundlePath:(id)path dataContainerPath:(id)containerPath bundleContainerPath:(id)bundleContainerPath
{
  identifierCopy = identifier;
  pathCopy = path;
  containerPathCopy = containerPath;
  bundleContainerPathCopy = bundleContainerPath;
  if (!identifierCopy)
  {
    [XBSnapshotContainerIdentity _initWithBundleIdentifier:a2 bundlePath:self dataContainerPath:? bundleContainerPath:?];
  }

  v28.receiver = self;
  v28.super_class = XBSnapshotContainerIdentity;
  v15 = [(XBSnapshotContainerIdentity *)&v28 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v16;

    v18 = [pathCopy copy];
    bundlePath = v15->_bundlePath;
    v15->_bundlePath = v18;

    v20 = [containerPathCopy copy];
    dataContainerPath = v15->_dataContainerPath;
    v15->_dataContainerPath = v20;

    v22 = [bundleContainerPathCopy copy];
    bundleContainerPath = v15->_bundleContainerPath;
    v15->_bundleContainerPath = v22;

    v24 = XBSnapshotPathForBundleIdentifierWithSandboxPath(v15->_bundleIdentifier, v15->_dataContainerPath);
    v25 = [v24 copy];
    snapshotContainerPath = v15->_snapshotContainerPath;
    v15->_snapshotContainerPath = v25;
  }

  return v15;
}

+ (id)identityForApplicationRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    [(XBSnapshotContainerIdentity *)a2 identityForApplicationRecord:self];
  }

  v6 = [XBSnapshotContainerIdentity alloc];
  bundleIdentifier = [recordCopy bundleIdentifier];
  v8 = [recordCopy URL];
  path = [v8 path];
  dataContainerURL = [recordCopy dataContainerURL];
  path2 = [dataContainerURL path];
  bundleContainerURL = [recordCopy bundleContainerURL];
  path3 = [bundleContainerURL path];
  v14 = [(XBSnapshotContainerIdentity *)v6 _initWithBundleIdentifier:bundleIdentifier bundlePath:path dataContainerPath:path2 bundleContainerPath:path3];

  return v14;
}

+ (id)identityForBundleProxy:(id)proxy
{
  proxyCopy = proxy;
  if (!proxyCopy)
  {
    [(XBSnapshotContainerIdentity *)a2 identityForBundleProxy:self];
  }

  v6 = [XBSnapshotContainerIdentity alloc];
  bundleIdentifier = [proxyCopy bundleIdentifier];
  bundleURL = [proxyCopy bundleURL];
  path = [bundleURL path];
  dataContainerURL = [proxyCopy dataContainerURL];
  path2 = [dataContainerURL path];
  bundleContainerURL = [proxyCopy bundleContainerURL];
  path3 = [bundleContainerURL path];
  v14 = [(XBSnapshotContainerIdentity *)v6 _initWithBundleIdentifier:bundleIdentifier bundlePath:path dataContainerPath:path2 bundleContainerPath:path3];

  return v14;
}

+ (id)identityForApplicationInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = [XBSnapshotContainerIdentity alloc];
    bundleIdentifier = [infoCopy bundleIdentifier];
    bundleURL = [infoCopy bundleURL];
    path = [bundleURL path];
    dataContainerURL = [infoCopy dataContainerURL];
    path2 = [dataContainerURL path];
    bundleContainerURL = [infoCopy bundleContainerURL];

    path3 = [bundleContainerURL path];
    v12 = [(XBSnapshotContainerIdentity *)v4 _initWithBundleIdentifier:bundleIdentifier bundlePath:path dataContainerPath:path2 bundleContainerPath:path3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)identityForCompatibilityInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = [XBSnapshotContainerIdentity alloc];
    bundleIdentifier = [infoCopy bundleIdentifier];
    bundlePath = [infoCopy bundlePath];
    sandboxPath = [infoCopy sandboxPath];
    bundleContainerPath = [infoCopy bundleContainerPath];

    v9 = [(XBSnapshotContainerIdentity *)v4 _initWithBundleIdentifier:bundleIdentifier bundlePath:bundlePath dataContainerPath:sandboxPath bundleContainerPath:bundleContainerPath];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)snapshotContainerPathForGroupID:(id)d
{
  if (d)
  {
    dCopy = d;
    snapshotContainerPath = [(XBSnapshotContainerIdentity *)self snapshotContainerPath];
    v6 = [snapshotContainerPath stringByAppendingPathComponent:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)snapshotContainerPathForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = snapshotCopy;
  if (snapshotCopy)
  {
    groupID = [snapshotCopy groupID];
    v7 = [(XBSnapshotContainerIdentity *)self snapshotContainerPathForGroupID:groupID];

    variantID = [v5 variantID];

    if (variantID)
    {
      variantID2 = [v5 variantID];
      v10 = [v7 stringByAppendingPathComponent:variantID2];

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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_bundleIdentifier];
  v5 = [builder appendObject:self->_bundlePath];
  v6 = [builder appendObject:self->_dataContainerPath];
  v7 = [builder appendObject:self->_bundleContainerPath];
  v8 = [builder hash];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleIdentifier = [(XBSnapshotContainerIdentity *)equalCopy bundleIdentifier];
      if (BSEqualStrings())
      {
        bundlePath = [(XBSnapshotContainerIdentity *)equalCopy bundlePath];
        if (BSEqualStrings())
        {
          dataContainerPath = [(XBSnapshotContainerIdentity *)equalCopy dataContainerPath];
          if (BSEqualStrings())
          {
            bundleContainerPath = [(XBSnapshotContainerIdentity *)equalCopy bundleContainerPath];
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
  succinctDescriptionBuilder = [(XBSnapshotContainerIdentity *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_bundleIdentifier withName:@"identifier"];
  v5 = [v3 appendBool:self->_dataContainerPath != 0 withName:@"sandboxed"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBSnapshotContainerIdentity *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBSnapshotContainerIdentity *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__XBSnapshotContainerIdentity_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9508;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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