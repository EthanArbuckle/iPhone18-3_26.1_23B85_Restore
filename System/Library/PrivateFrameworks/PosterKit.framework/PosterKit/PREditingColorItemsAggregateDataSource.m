@interface PREditingColorItemsAggregateDataSource
- (PREditingColorItemsAggregateDataSource)initWithDataSources:(id)a3;
- (id)colorItemForIndex:(unint64_t)a3;
- (id)firstColorItemPassingTest:(id)a3;
- (unint64_t)indexForItem:(id)a3;
- (unint64_t)numberOfItems;
@end

@implementation PREditingColorItemsAggregateDataSource

- (PREditingColorItemsAggregateDataSource)initWithDataSources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PREditingColorItemsAggregateDataSource;
  v5 = [(PREditingColorItemsAggregateDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dataSources = v5->_dataSources;
    v5->_dataSources = v6;
  }

  return v5;
}

- (unint64_t)numberOfItems
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfItems];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstColorItemPassingTest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_dataSources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) firstColorItemPassingTest:{v4, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (unint64_t)indexForItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_dataSources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 indexForItem:{v4, v15}];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = v13 + v9;
          goto LABEL_11;
        }

        v9 += [v12 numberOfItems];
      }

      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:

  return v7;
}

- (id)colorItemForIndex:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_dataSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * v9);
        v12 = [v11 numberOfItems];
        v7 = v12 + v10;
        if (v12 + v10 - 1 >= a3)
        {
          v13 = [v11 colorItemForIndex:a3 - v10];
          goto LABEL_11;
        }

        ++v9;
        v10 += v12;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end