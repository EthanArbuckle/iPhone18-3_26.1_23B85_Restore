@interface PUIStyleItemsDataSource
- (PUIStyleItemsDataSource)initWithConfiguration:(id)a3 includesSuggestedStyle:(BOOL)a4 delegate:(id)a5;
- (PUIStyleItemsDataSourceDelegate)delegate;
- (id)coordinatorForIndex:(unint64_t)a3;
- (id)firstCoordinatorPassingTest:(id)a3;
- (unint64_t)indexForCoordinator:(id)a3;
- (void)buildCoordinators;
- (void)setContentsLuminance:(double)a3;
@end

@implementation PUIStyleItemsDataSource

- (PUIStyleItemsDataSource)initWithConfiguration:(id)a3 includesSuggestedStyle:(BOOL)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PUIStyleItemsDataSource;
  v11 = [(PUIStyleItemsDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a3);
    v12->_includeSuggestedStyle = a4;
    objc_storeWeak(&v12->_delegate, v10);
    [(PUIStyleItemsDataSource *)v12 buildCoordinators];
  }

  return v12;
}

- (void)buildCoordinators
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_coordinators)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(PUIStyleConfiguration *)self->_configuration suggestedStyle];
    v5 = [(PUIStyleConfiguration *)self->_configuration stylePalette];
    if (self->_includeSuggestedStyle && [(PUIStyleConfiguration *)self->_configuration showsSuggestedContentStyleItem]&& v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = [WeakRetained coordinatorForStyle:v4 isSuggestedStyle:1 fromDataSource:self];

      if (!v7)
      {
        v7 = [[PUIStyleUICoordinator alloc] initWithInitialStyle:v4 suggested:1];
      }

      [v3 addObject:v7];
      if ([v5 isDefaultPalette] && objc_msgSend(v5, "context") == 1)
      {
        v8 = [v5 styles];
        v9 = [v8 mutableCopy];

        [v9 removeObjectAtIndex:15];
        v10 = [PUIStylePalette alloc];
        v11 = [v5 localizedName];
        v12 = [(PUIStylePalette *)v10 initWithStyles:v9 localizedName:v11];

        v5 = v12;
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [v5 styles];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_loadWeakRetained(&self->_delegate);
          v20 = [v19 coordinatorForStyle:v18 isSuggestedStyle:0 fromDataSource:self];

          if (!v20)
          {
            v20 = [[PUIStyleUICoordinator alloc] initWithInitialStyle:v18 suggested:0];
          }

          [v3 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v21 = [v3 copy];
    coordinators = self->_coordinators;
    self->_coordinators = v21;
  }
}

- (id)firstCoordinatorPassingTest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_coordinators;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (unint64_t)indexForCoordinator:(id)a3
{
  v4 = a3;
  coordinators = self->_coordinators;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PUIStyleItemsDataSource_indexForCoordinator___block_invoke;
  v9[3] = &unk_1E78559C0;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)coordinators indexOfObjectPassingTest:v9];

  return v7;
}

- (id)coordinatorForIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_coordinators count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_coordinators objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)setContentsLuminance:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_contentsLuminance != a3)
  {
    self->_contentsLuminance = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_coordinators;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) setContentsLuminance:{a3, v9}];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (PUIStyleItemsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end