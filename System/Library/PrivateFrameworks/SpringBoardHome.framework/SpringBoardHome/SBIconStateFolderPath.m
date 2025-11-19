@interface SBIconStateFolderPath
- (SBIconStateFolderPath)init;
- (id)folderDefaultNameAtIndex:(unint64_t)a3;
- (id)folderUniqueIdentifierAtIndex:(unint64_t)a3;
- (void)addFolderWithName:(id)a3 defaultName:(id)a4 uniqueIdentifier:(id)a5 indexPath:(id)a6;
- (void)enumerateFoldersUsingBlock:(id)a3;
@end

@implementation SBIconStateFolderPath

- (SBIconStateFolderPath)init
{
  v12.receiver = self;
  v12.super_class = SBIconStateFolderPath;
  v2 = [(SBIconStateFolderPath *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    folderNames = v2->_folderNames;
    v2->_folderNames = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    folderDefaultNames = v2->_folderDefaultNames;
    v2->_folderDefaultNames = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    folderUniqueIdentifiers = v2->_folderUniqueIdentifiers;
    v2->_folderUniqueIdentifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    folderPaths = v2->_folderPaths;
    v2->_folderPaths = v9;
  }

  return v2;
}

- (id)folderDefaultNameAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_folderDefaultNames objectAtIndex:a3];
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (id)folderUniqueIdentifierAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_folderUniqueIdentifiers objectAtIndex:a3];
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (void)addFolderWithName:(id)a3 defaultName:(id)a4 uniqueIdentifier:(id)a5 indexPath:(id)a6
{
  v17 = a4;
  v10 = a5;
  folderNames = self->_folderNames;
  v12 = a6;
  [(NSMutableArray *)folderNames addObject:a3];
  folderDefaultNames = self->_folderDefaultNames;
  if (v17)
  {
    [(NSMutableArray *)self->_folderDefaultNames addObject:?];
  }

  else
  {
    v14 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)folderDefaultNames addObject:v14];
  }

  folderUniqueIdentifiers = self->_folderUniqueIdentifiers;
  if (v10)
  {
    [(NSMutableArray *)self->_folderUniqueIdentifiers addObject:v10];
  }

  else
  {
    v16 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)folderUniqueIdentifiers addObject:v16];
  }

  [(NSMutableArray *)self->_folderPaths addObject:v12];
}

- (void)enumerateFoldersUsingBlock:(id)a3
{
  v4 = a3;
  folderNames = self->_folderNames;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SBIconStateFolderPath_enumerateFoldersUsingBlock___block_invoke;
  v7[3] = &unk_1E808A710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)folderNames enumerateObjectsUsingBlock:v7];
}

void __52__SBIconStateFolderPath_enumerateFoldersUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 folderDefaultNameAtIndex:a3];
  v7 = [*(a1 + 32) folderUniqueIdentifierAtIndex:a3];
  v8 = [*(a1 + 32) folderIndexPathAtIndex:a3];
  (*(*(a1 + 40) + 16))();
}

@end