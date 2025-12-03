@interface PREditingContentStyleItemsDataSource
- (PREditingContentStyleItemsDataSource)initWithConfiguration:(id)configuration includesSuggestedStyle:(BOOL)style delegate:(id)delegate;
- (PREditingContentStyleItemsDataSourceDelegate)delegate;
- (id)coordinatorForIndex:(unint64_t)index;
- (id)firstCoordinatorPassingTest:(id)test;
- (unint64_t)indexForCoordinator:(id)coordinator;
- (void)buildCoordinators;
- (void)setContentsLuminance:(double)luminance;
@end

@implementation PREditingContentStyleItemsDataSource

- (PREditingContentStyleItemsDataSource)initWithConfiguration:(id)configuration includesSuggestedStyle:(BOOL)style delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PREditingContentStyleItemsDataSource;
  v11 = [(PREditingContentStyleItemsDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    v12->_includeSuggestedStyle = style;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    [(PREditingContentStyleItemsDataSource *)v12 buildCoordinators];
  }

  return v12;
}

- (void)buildCoordinators
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_coordinators)
  {
    array = [MEMORY[0x1E695DF70] array];
    suggestedStyle = [(PREditorContentStylePickerConfiguration *)self->_configuration suggestedStyle];
    stylePalette = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
    if (self->_includeSuggestedStyle && [(PREditorContentStylePickerConfiguration *)self->_configuration showsSuggestedContentStyleItem]&& suggestedStyle)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = [WeakRetained coordinatorForStyle:suggestedStyle isSuggestedStyle:1 fromDataSource:self];

      if (!v7)
      {
        v7 = [[PREditingPosterContentStyleCoordinator alloc] initWithInitialStyle:suggestedStyle suggested:1];
      }

      [array addObject:v7];
      if ([stylePalette isDefaultPalette] && objc_msgSend(stylePalette, "context") == 1)
      {
        styles = [stylePalette styles];
        v9 = [styles mutableCopy];

        [v9 removeObjectAtIndex:15];
        v10 = [PREditorContentStylePalette alloc];
        localizedName = [stylePalette localizedName];
        v12 = [(PREditorContentStylePalette *)v10 initWithContentStyles:v9 localizedName:localizedName];

        stylePalette = v12;
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    styles2 = [stylePalette styles];
    v14 = [styles2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(styles2);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_loadWeakRetained(&self->_delegate);
          v20 = [v19 coordinatorForStyle:v18 isSuggestedStyle:0 fromDataSource:self];

          if (!v20)
          {
            v20 = [[PREditingPosterContentStyleCoordinator alloc] initWithInitialStyle:v18 suggested:0];
          }

          [array addObject:v20];
        }

        v15 = [styles2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v21 = [array copy];
    coordinators = self->_coordinators;
    self->_coordinators = v21;
  }
}

- (id)firstCoordinatorPassingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
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
        if (testCopy[2](testCopy, v9))
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

- (unint64_t)indexForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinators = self->_coordinators;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PREditingContentStyleItemsDataSource_indexForCoordinator___block_invoke;
  v9[3] = &unk_1E78460C8;
  v10 = coordinatorCopy;
  v6 = coordinatorCopy;
  v7 = [(NSArray *)coordinators indexOfObjectPassingTest:v9];

  return v7;
}

- (id)coordinatorForIndex:(unint64_t)index
{
  if ([(NSArray *)self->_coordinators count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_coordinators objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)setContentsLuminance:(double)luminance
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_contentsLuminance != luminance)
  {
    self->_contentsLuminance = luminance;
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

          [*(*(&v9 + 1) + 8 * i) setContentsLuminance:{luminance, v9}];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (PREditingContentStyleItemsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end