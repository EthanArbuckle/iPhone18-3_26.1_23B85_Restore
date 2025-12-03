@interface XBSnapshotManifestIdentity
+ (id)identityWithBundleIdentifier:(id)identifier store:(id)store;
- (BOOL)isEqual:(id)equal;
- (XBSnapshotManifestIdentity)init;
- (XBSnapshotManifestIdentity)initWithBundleIdentifier:(id)identifier store:(id)store;
- (id)description;
- (unint64_t)hash;
@end

@implementation XBSnapshotManifestIdentity

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_bundleIdentifier];
  v5 = [builder appendObject:self->_store];
  v6 = [builder hash];

  return v6;
}

+ (id)identityWithBundleIdentifier:(id)identifier store:(id)store
{
  storeCopy = store;
  identifierCopy = identifier;
  v7 = [[XBSnapshotManifestIdentity alloc] initWithBundleIdentifier:identifierCopy store:storeCopy];

  return v7;
}

- (XBSnapshotManifestIdentity)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"XBSnapshotManifestIdentity.m" lineNumber:30 description:@"init is not allowed"];

  return 0;
}

- (XBSnapshotManifestIdentity)initWithBundleIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v9 = storeCopy;
  if (identifierCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [XBSnapshotManifestIdentity initWithBundleIdentifier:a2 store:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [XBSnapshotManifestIdentity initWithBundleIdentifier:a2 store:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = XBSnapshotManifestIdentity;
  v10 = [(XBSnapshotManifestIdentity *)&v14 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    objc_storeStrong(&v10->_store, store);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_bundleIdentifier withName:@"bundleIdentifier"];
  v4 = [v3 appendObject:self->_store withName:@"store"];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    bundleIdentifier = self->_bundleIdentifier;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__XBSnapshotManifestIdentity_isEqual___block_invoke;
    v18[3] = &unk_279CF93E0;
    v7 = equalCopy;
    v19 = v7;
    v8 = [v5 appendString:bundleIdentifier counterpart:v18];
    store = self->_store;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __38__XBSnapshotManifestIdentity_isEqual___block_invoke_2;
    v16 = &unk_279CF9408;
    v17 = v7;
    v10 = [v5 appendObject:store counterpart:&v13];
    v11 = [v5 isEqual];
  }

  return v11;
}

- (void)initWithBundleIdentifier:(uint64_t)a1 store:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBSnapshotManifestIdentity.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

- (void)initWithBundleIdentifier:(uint64_t)a1 store:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBSnapshotManifestIdentity.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"store"}];
}

@end