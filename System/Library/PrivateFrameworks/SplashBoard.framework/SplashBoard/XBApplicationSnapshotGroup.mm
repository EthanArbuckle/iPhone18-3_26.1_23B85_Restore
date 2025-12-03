@interface XBApplicationSnapshotGroup
- (BOOL)_validateWithContainerIdentity:(id)identity;
- (BOOL)removeSnapshot:(id)snapshot;
- (NSString)containerPath;
- (XBApplicationSnapshotGroup)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier containerIdentity:(id)identity;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionForStateCaptureWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_commonInit;
- (void)_invalidate;
- (void)_manifestQueueDecode_setStore:(id)store;
- (void)addSnapshot:(id)snapshot;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XBApplicationSnapshotGroup

- (void)_commonInit
{
  self->_snapshots = objc_alloc_init(MEMORY[0x277CBEB58]);

  MEMORY[0x2821F96F8]();
}

- (id)_initWithIdentifier:(id)identifier containerIdentity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = XBApplicationSnapshotGroup;
  v8 = [(XBApplicationSnapshotGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(XBApplicationSnapshotGroup *)v8 _commonInit];
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_containerIdentity, identity);
  }

  return v9;
}

- (NSString)containerPath
{
  containerIdentity = [(XBApplicationSnapshotGroup *)self containerIdentity];
  v4 = [containerIdentity snapshotContainerPathForGroupID:self->_identifier];

  return v4;
}

- (void)addSnapshot:(id)snapshot
{
  if (snapshot)
  {
    [(NSMutableSet *)self->_snapshots addObject:?];
  }
}

- (BOOL)removeSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = [(NSMutableSet *)self->_snapshots containsObject:snapshotCopy];
  if (v5)
  {
    [(NSMutableSet *)self->_snapshots removeObject:snapshotCopy];
    variantID = [snapshotCopy variantID];

    if (variantID)
    {
      snapshots = self->_snapshots;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__XBApplicationSnapshotGroup_removeSnapshot___block_invoke;
      v9[3] = &unk_279CF9CF8;
      v10 = snapshotCopy;
      [(NSMutableSet *)snapshots enumerateObjectsUsingBlock:v9];
    }
  }

  return v5;
}

- (void)_manifestQueueDecode_setStore:(id)store
{
  v15 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_snapshots;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _manifestQueueDecode_setStore:{storeCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_validateWithContainerIdentity:(id)identity
{
  v91 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (!identityCopy)
  {
    [(XBApplicationSnapshotGroup *)a2 _validateWithContainerIdentity:?];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  containerIdentity = [(XBApplicationSnapshotGroup *)self containerIdentity];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    [(XBApplicationSnapshotGroup *)self setContainerIdentity:identityCopy];
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [identityCopy snapshotContainerPathForGroupID:self->_identifier];
  selfCopy = self;
  if (v9)
  {
    v61 = identityCopy;
    obj = v9;
    v10 = [defaultManager enumeratorAtPath:v9];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v78;
      v14 = *MEMORY[0x277CCA1F0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v78 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v77 + 1) + 8 * i);
          fileAttributes = [v10 fileAttributes];
          fileType = [fileAttributes fileType];
          v19 = [fileType isEqualToString:v14];

          if (v19)
          {
            [v8 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v12);
    }

    self = selfCopy;
    v9 = obj;
    identityCopy = v61;
  }

  v20 = [(NSMutableSet *)self->_snapshots copy];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __61__XBApplicationSnapshotGroup__validateWithContainerIdentity___block_invoke;
  v73[3] = &unk_279CF9D20;
  v21 = identityCopy;
  v74 = v21;
  selfCopy2 = self;
  v22 = v8;
  v76 = v22;
  [v20 enumerateObjectsUsingBlock:v73];

  if ([(NSMutableSet *)self->_snapshots count])
  {
    if (v9)
    {
      v23 = self->_identifier == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    if (!v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v24 = 0;
    if (!v9)
    {
      goto LABEL_33;
    }
  }

  if (!v24)
  {
    v25 = XBLogFileManifest();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      containerIdentity2 = [(XBApplicationSnapshotGroup *)self containerIdentity];
      bundleIdentifier = [containerIdentity2 bundleIdentifier];
      identifier = self->_identifier;
      *buf = 138543874;
      v83 = bundleIdentifier;
      v84 = 2114;
      v85 = identifier;
      v86 = 2114;
      v87 = v9;
      _os_log_impl(&dword_26B5EF000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Group %{public}@ deleting container with no valid snapshots: %{public}@", buf, 0x20u);
    }

    v72 = 0;
    v29 = [defaultManager removeItemAtPath:v9 error:&v72];
    v30 = v72;
    obja = v30;
    if ((v29 & 1) == 0)
    {
      v31 = v30;
      domain = [v30 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v31 code];

        if (code == 4)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      v53 = XBLogFileManifest();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        containerIdentity3 = [(XBApplicationSnapshotGroup *)self containerIdentity];
        bundleIdentifier2 = [containerIdentity3 bundleIdentifier];
        v57 = self->_identifier;
        *buf = 138544130;
        v83 = bundleIdentifier2;
        v84 = 2114;
        v85 = v57;
        v86 = 2114;
        v87 = v9;
        v88 = 2114;
        v89 = obja;
        _os_log_error_impl(&dword_26B5EF000, v53, OS_LOG_TYPE_ERROR, "[%{public}@] Error with Group %{public}@ deleting container with no valid snapshots at %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    goto LABEL_55;
  }

LABEL_33:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obja = v22;
  v34 = [obja countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v34)
  {
    v35 = v34;
    v58 = v24;
    v59 = v21;
    v36 = v9;
    v37 = *v69;
    v62 = *MEMORY[0x277CCA050];
    v38 = obja;
    while (1)
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v69 != v37)
        {
          objc_enumerationMutation(v38);
        }

        v40 = [v36 stringByAppendingPathComponent:*(*(&v68 + 1) + 8 * j)];
        v41 = XBLogFileManifest();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          containerIdentity4 = [(XBApplicationSnapshotGroup *)selfCopy containerIdentity];
          bundleIdentifier3 = [containerIdentity4 bundleIdentifier];
          v44 = selfCopy->_identifier;
          v38 = obja;
          *buf = 138543874;
          v83 = bundleIdentifier3;
          v84 = 2114;
          v85 = v44;
          v86 = 2114;
          v87 = v40;
          _os_log_impl(&dword_26B5EF000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] Group %{public}@ deleting unreferenced file: %{public}@", buf, 0x20u);
        }

        v67 = 0;
        v45 = [defaultManager removeItemAtPath:v40 error:&v67];
        v46 = v67;
        v47 = v46;
        if ((v45 & 1) == 0)
        {
          domain2 = [v46 domain];
          if ([domain2 isEqualToString:v62])
          {
            code2 = [v47 code];

            if (code2 == 4)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v50 = XBLogFileManifest();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            containerIdentity5 = [(XBApplicationSnapshotGroup *)selfCopy containerIdentity];
            bundleIdentifier4 = [containerIdentity5 bundleIdentifier];
            v52 = selfCopy->_identifier;
            v38 = obja;
            *buf = 138544130;
            v83 = bundleIdentifier4;
            v84 = 2114;
            v85 = v52;
            v86 = 2114;
            v87 = v40;
            v88 = 2114;
            v89 = v47;
            _os_log_error_impl(&dword_26B5EF000, v50, OS_LOG_TYPE_ERROR, "[%{public}@] Error with Group %{public}@ deleting unreferenced file at %{public}@: %{public}@", buf, 0x2Au);
          }
        }

LABEL_48:
      }

      v35 = [v38 countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (!v35)
      {
        v9 = v36;
        v21 = v59;
        LOBYTE(v24) = v58;
        break;
      }
    }
  }

LABEL_55:

  return v24;
}

void __61__XBApplicationSnapshotGroup__validateWithContainerIdentity___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 _validateWithContainerIdentity:a1[4]])
  {
    v4 = a1[6];
    v5 = [v3 filename];
    [v4 removeObject:v5];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v3 variants];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = a1[6];
          v13 = [v11 variantID];
          v14 = [v11 filename];
          v15 = [v13 stringByAppendingPathComponent:v14];
          [v12 removeObject:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [*(a1[5] + 24) removeObject:v3];
  }
}

- (void)_invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_snapshots;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_snapshots;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        path = [v11 path];

        if (path)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    [coderCopy encodeObject:array forKey:@"snapshots"];
  }
}

- (XBApplicationSnapshotGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = XBApplicationSnapshotGroup;
  v5 = [(XBApplicationSnapshotGroup *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(XBApplicationSnapshotGroup *)v5 _commonInit];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = objc_autoreleasePoolPush();
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"snapshots"];
    if (v13)
    {
      v14 = [MEMORY[0x277CBEB58] setWithArray:v13];
      snapshots = v6->_snapshots;
      v6->_snapshots = v14;
    }

    objc_autoreleasePoolPop(v9);
  }

  return v6;
}

- (id)descriptionForStateCaptureWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  succinctDescriptionBuilder = [(XBApplicationSnapshotGroup *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__XBApplicationSnapshotGroup_descriptionForStateCaptureWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9530;
  v9[4] = self;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  v11 = &v12;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  if (*(v13 + 24) == 1)
  {
    build = [v6 build];
  }

  else
  {
    build = 0;
  }

  _Block_object_dispose(&v12, 8);

  return build;
}

void __76__XBApplicationSnapshotGroup_descriptionForStateCaptureWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) activeMultilinePrefix];
        v9 = [v7 descriptionForStateCaptureWithMultilinePrefix:v8];

        if (v9)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v10 = [*(a1 + 40) appendObject:v9 withName:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotGroup *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotGroup *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotGroup *)self succinctDescriptionBuilder];
  allObjects = [(NSMutableSet *)self->_snapshots allObjects];
  [succinctDescriptionBuilder appendArraySection:allObjects withName:0 multilinePrefix:prefixCopy skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

- (void)_validateWithContainerIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBApplicationSnapshotGroup.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"containerIdentity"}];
}

@end