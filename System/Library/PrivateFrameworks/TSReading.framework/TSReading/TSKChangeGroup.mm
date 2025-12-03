@interface TSKChangeGroup
- (TSKChangeGroup)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)registerChange:(int)change details:(id)details forChangeSource:(id)source;
@end

@implementation TSKChangeGroup

- (TSKChangeGroup)init
{
  v4.receiver = self;
  v4.super_class = TSKChangeGroup;
  v2 = [(TSKChangeGroup *)&v4 init];
  if (v2)
  {
    v2->mChangesArray = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKChangeGroup;
  [(TSKChangeGroup *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());

  v4[1] = [(NSMutableArray *)self->mChangesArray mutableCopy];
  return v4;
}

- (void)registerChange:(int)change details:(id)details forChangeSource:(id)source
{
  v7 = *&change;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mChangesArray = self->mChangesArray;
  v10 = [(NSMutableArray *)mChangesArray countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  changes = 0;
  v13 = *v18;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(mChangesArray);
      }

      v15 = *(*(&v17 + 1) + 8 * i);
      if ([v15 changeSource] == source)
      {
        changes = [v15 changes];
      }
    }

    v11 = [(NSMutableArray *)mChangesArray countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v11);
  if (!changes)
  {
LABEL_11:
    changes = [MEMORY[0x277CBEB18] array];
    v16 = [[TSKChangeEntry alloc] initWithChangeSource:source changes:changes];
    [(NSMutableArray *)self->mChangesArray addObject:v16];
  }

  [changes addObject:{+[TSKChangeRecord changeRecordWithKind:details:](TSKChangeRecord, "changeRecordWithKind:details:", v7, details)}];
  if ([changes count] >= 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [source coalesceChanges:changes];
  }
}

@end