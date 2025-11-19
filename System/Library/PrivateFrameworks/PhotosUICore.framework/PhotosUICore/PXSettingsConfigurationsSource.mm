@interface PXSettingsConfigurationsSource
- (PXSettingsConfigurationsSource)init;
- (PXSettingsConfigurationsSource)initWithUserDefaults:(id)a3;
- (PXSettingsConfigurationsSourceObserver)observer;
- (id)configurationAtIndex:(int64_t)a3;
- (int64_t)indexOfConfiguration:(id)a3;
- (int64_t)numberOfConfigurations;
- (void)_save;
- (void)deleteAllConfigurations;
- (void)deleteConfigurationAtIndex:(int64_t)a3;
- (void)insertConfiguration:(id)a3 atIndex:(int64_t)a4;
- (void)insertConfigurations:(id)a3 atIndex:(int64_t)a4;
- (void)performChanges:(id)a3;
- (void)renameConfigurationAtIndex:(int64_t)a3 withName:(id)a4;
- (void)updateConfigurationAtIndex:(int64_t)a3;
@end

@implementation PXSettingsConfigurationsSource

- (PXSettingsConfigurationsSourceObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)updateConfigurationAtIndex:(int64_t)a3
{
  v7 = [(PXSettingsConfigurationsSource *)self configurationAtIndex:?];
  v5 = [(PXSettingsConfigurationsSource *)self configurations];
  v6 = [v7 copyWithUpdatedSettingsValues];
  [v5 replaceObjectAtIndex:a3 withObject:v6];
}

- (void)renameConfigurationAtIndex:(int64_t)a3 withName:(id)a4
{
  v6 = a4;
  v9 = [(PXSettingsConfigurationsSource *)self configurationAtIndex:a3];
  v7 = [(PXSettingsConfigurationsSource *)self configurations];
  v8 = [v9 copyWithName:v6];

  [v7 replaceObjectAtIndex:a3 withObject:v8];
}

- (void)deleteAllConfigurations
{
  v2 = [(PXSettingsConfigurationsSource *)self configurations];
  [v2 removeAllObjects];
}

- (void)deleteConfigurationAtIndex:(int64_t)a3
{
  v4 = [(PXSettingsConfigurationsSource *)self configurations];
  [v4 removeObjectAtIndex:a3];
}

- (void)insertConfigurations:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v8 = [(PXSettingsConfigurationsSource *)self configurations];
  v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a4, objc_msgSend(v6, "count")}];
  [v8 insertObjects:v6 atIndexes:v7];
}

- (void)insertConfiguration:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXSettingsConfigurationsSource *)self configurations];
  [v7 insertObject:v6 atIndex:a4];
}

- (void)_save
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = [(PXSettingsConfigurationsSource *)self configurations];
  v10 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v10];
  v7 = v10;

  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsSource.m" lineNumber:79 description:{@"couldn't archive configurations: %@", v7}];
  }

  v8 = [(PXSettingsConfigurationsSource *)self userDefaults];
  [v8 setObject:v6 forKey:@"PXSettingsConfigurations"];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXSettingsConfigurationsSource *)self observer];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXSettingsConfigurationsSource_performChanges___block_invoke;
  aBlock[3] = &unk_1E774A0E0;
  aBlock[4] = self;
  v12 = v4;
  v6 = v5;
  v11 = v6;
  v7 = v4;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v6)
  {
    [v6 settingsConfigurationSource:self performChanges:v8];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

void __49__PXSettingsConfigurationsSource_performChanges___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configurations];
  v6 = [v2 copy];

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _save];
  v3 = [*(a1 + 32) configurations];
  v4 = [v3 copy];

  v5 = [off_1E7721450 changeDetailsFromArray:v6 toArray:v4 changedObjects:MEMORY[0x1E695E0F0]];
  [*(a1 + 40) settingsConfigurationSource:*(a1 + 32) didChange:v5];
}

- (int64_t)indexOfConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PXSettingsConfigurationsSource *)self configurations];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)configurationAtIndex:(int64_t)a3
{
  v4 = [(PXSettingsConfigurationsSource *)self configurations];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)numberOfConfigurations
{
  v2 = [(PXSettingsConfigurationsSource *)self configurations];
  v3 = [v2 count];

  return v3;
}

- (PXSettingsConfigurationsSource)initWithUserDefaults:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PXSettingsConfigurationsSource;
  v6 = [(PXSettingsConfigurationsSource *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
    v8 = [(NSUserDefaults *)v7->_userDefaults objectForKey:@"PXSettingsConfigurations"];
    if (v8)
    {
      v9 = MEMORY[0x1E696ACD0];
      v10 = MEMORY[0x1E695DFD8];
      v24[0] = objc_opt_class();
      v24[1] = objc_opt_class();
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      v12 = [v10 setWithArray:v11];
      v20 = 0;
      v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v8 error:&v20];
      v14 = v20;
      configurations = v7->_configurations;
      v7->_configurations = v13;

      v16 = PLUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v14;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "couldn't unarchive configurations data: %@", buf, 0xCu);
      }
    }

    if (!v7->_configurations)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = v7->_configurations;
      v7->_configurations = v17;
    }
  }

  return v7;
}

- (PXSettingsConfigurationsSource)init
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [(PXSettingsConfigurationsSource *)self initWithUserDefaults:v3];

  return v4;
}

@end