@interface MTDBConfig
- (id)databaseFileUrl;
- (id)managedObjectModel;
- (id)persistentStoreOptions;
@end

@implementation MTDBConfig

- (id)managedObjectModel
{
  model = self->_model;
  if (!model)
  {
    managedObjectModel = [objc_opt_class() managedObjectModel];
    v5 = self->_model;
    self->_model = managedObjectModel;

    model = self->_model;
  }

  return model;
}

- (id)persistentStoreOptions
{
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"WAL", @"journal_mode", 0}];
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = *MEMORY[0x1E695D4A0];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v6 = *MEMORY[0x1E695D380];
  v7 = [v3 initWithObjectsAndKeys:{v2, v4, v5, *MEMORY[0x1E695D380], *MEMORY[0x1E696A3A8], *MEMORY[0x1E695D3F8], MEMORY[0x1E695E118], *MEMORY[0x1E695D3C0], MEMORY[0x1E695E118], *MEMORY[0x1E695D430], MEMORY[0x1E695E118], *MEMORY[0x1E695D448], 0}];

  return v7;
}

- (id)databaseFileUrl
{
  v2 = objc_opt_class();

  return [v2 libraryPath];
}

@end