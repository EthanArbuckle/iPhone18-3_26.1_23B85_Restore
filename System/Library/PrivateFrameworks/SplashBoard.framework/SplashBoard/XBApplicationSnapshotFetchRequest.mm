@interface XBApplicationSnapshotFetchRequest
+ (id)fetchRequest;
- (NSArray)NSSortDescriptors;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation XBApplicationSnapshotFetchRequest

+ (id)fetchRequest
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSArray)NSSortDescriptors
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_sortDescriptors, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_sortDescriptors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        nSSortDescriptor = [*(*(&v11 + 1) + 8 * i) NSSortDescriptor];
        [v3 addObject:nSSortDescriptor];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotFetchRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotFetchRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotFetchRequest *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__XBApplicationSnapshotFetchRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9508;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __75__XBApplicationSnapshotFetchRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"predicate" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"sortDescriptors" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"fallbackGenerationContext" skipIfNil:1];
}

@end