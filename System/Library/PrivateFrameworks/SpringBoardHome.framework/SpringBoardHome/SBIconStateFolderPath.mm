@interface SBIconStateFolderPath
- (SBIconStateFolderPath)init;
- (id)folderDefaultNameAtIndex:(unint64_t)index;
- (id)folderUniqueIdentifierAtIndex:(unint64_t)index;
- (void)addFolderWithName:(id)name defaultName:(id)defaultName uniqueIdentifier:(id)identifier indexPath:(id)path;
- (void)enumerateFoldersUsingBlock:(id)block;
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

- (id)folderDefaultNameAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_folderDefaultNames objectAtIndex:index];
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

- (id)folderUniqueIdentifierAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_folderUniqueIdentifiers objectAtIndex:index];
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

- (void)addFolderWithName:(id)name defaultName:(id)defaultName uniqueIdentifier:(id)identifier indexPath:(id)path
{
  defaultNameCopy = defaultName;
  identifierCopy = identifier;
  folderNames = self->_folderNames;
  pathCopy = path;
  [(NSMutableArray *)folderNames addObject:name];
  folderDefaultNames = self->_folderDefaultNames;
  if (defaultNameCopy)
  {
    [(NSMutableArray *)self->_folderDefaultNames addObject:?];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)folderDefaultNames addObject:null];
  }

  folderUniqueIdentifiers = self->_folderUniqueIdentifiers;
  if (identifierCopy)
  {
    [(NSMutableArray *)self->_folderUniqueIdentifiers addObject:identifierCopy];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)folderUniqueIdentifiers addObject:null2];
  }

  [(NSMutableArray *)self->_folderPaths addObject:pathCopy];
}

- (void)enumerateFoldersUsingBlock:(id)block
{
  blockCopy = block;
  folderNames = self->_folderNames;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SBIconStateFolderPath_enumerateFoldersUsingBlock___block_invoke;
  v7[3] = &unk_1E808A710;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
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