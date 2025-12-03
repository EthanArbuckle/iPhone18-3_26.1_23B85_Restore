@interface VTKFileStoreManager
- (VTKFileStoreManager)init;
- (id)saveItems:(id)items withID:(id)d testCase:(id)case;
- (void)setItemsDirectory:(id)directory;
@end

@implementation VTKFileStoreManager

- (VTKFileStoreManager)init
{
  v6.receiver = self;
  v6.super_class = VTKFileStoreManager;
  v2 = [(VTKFileStoreManager *)&v6 init];
  if (v2)
  {
    v3 = _saveItemsRootURLWithItemsDirectory(0);
    saveItemsRootURL = v2->_saveItemsRootURL;
    v2->_saveItemsRootURL = v3;
  }

  return v2;
}

- (void)setItemsDirectory:(id)directory
{
  directoryCopy = directory;
  if (self->_itemsDirectory != directoryCopy)
  {
    v12 = directoryCopy;
    v5 = directoryCopy;
    if ([(NSString *)v5 length])
    {
      stringByStandardizingPath = [(NSString *)v5 stringByStandardizingPath];

      v7 = [NSURL URLWithString:stringByStandardizingPath];
      if (!v7)
      {
        [NSException raise:NSInvalidArgumentException format:@"given itemsDirectory:%@ is not valid", stringByStandardizingPath];
      }
    }

    else
    {
      stringByStandardizingPath = v5;
    }

    v8 = [stringByStandardizingPath copy];

    itemsDirectory = self->_itemsDirectory;
    self->_itemsDirectory = v8;

    v10 = _saveItemsRootURLWithItemsDirectory(self->_itemsDirectory);
    saveItemsRootURL = self->_saveItemsRootURL;
    self->_saveItemsRootURL = v10;

    directoryCopy = v12;
  }
}

- (id)saveItems:(id)items withID:(id)d testCase:(id)case
{
  dCopy = d;
  itemsCopy = items;
  v9 = +[NSFileManager defaultManager];
  saveItemsRootURL = [(VTKFileStoreManager *)self saveItemsRootURL];
  [v9 createDirectoryAtURL:saveItemsRootURL withIntermediateDirectories:1 attributes:0 error:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __49__VTKFileStoreManager_saveItems_withID_testCase___block_invoke;
  v19 = &unk_C0D8;
  v20 = dCopy;
  v21 = saveItemsRootURL;
  v11 = saveItemsRootURL;
  v12 = dCopy;
  [itemsCopy enumerateObjectsUsingBlock:&v16];

  v13 = [VTKFileStoreManagerResult alloc];
  v14 = [(VTKFileStoreManagerResult *)v13 initWithURL:v11, v16, v17, v18, v19];

  return v14;
}

void __49__VTKFileStoreManager_saveItems_withID_testCase___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v4 fileNameWithTestID:v3];
  v5 = [*(a1 + 40) URLByAppendingPathComponent:v7];
  v6 = [v4 itemData];

  [v6 writeToURL:v5 atomically:1];
}

@end