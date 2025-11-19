@interface TSKChangeGroup
- (TSKChangeGroup)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)registerChange:(int)a3 details:(id)a4 forChangeSource:(id)a5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());

  v4[1] = [(NSMutableArray *)self->mChangesArray mutableCopy];
  return v4;
}

- (void)registerChange:(int)a3 details:(id)a4 forChangeSource:(id)a5
{
  v7 = *&a3;
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
  v12 = 0;
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
      if ([v15 changeSource] == a5)
      {
        v12 = [v15 changes];
      }
    }

    v11 = [(NSMutableArray *)mChangesArray countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v11);
  if (!v12)
  {
LABEL_11:
    v12 = [MEMORY[0x277CBEB18] array];
    v16 = [[TSKChangeEntry alloc] initWithChangeSource:a5 changes:v12];
    [(NSMutableArray *)self->mChangesArray addObject:v16];
  }

  [v12 addObject:{+[TSKChangeRecord changeRecordWithKind:details:](TSKChangeRecord, "changeRecordWithKind:details:", v7, a4)}];
  if ([v12 count] >= 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a5 coalesceChanges:v12];
  }
}

@end