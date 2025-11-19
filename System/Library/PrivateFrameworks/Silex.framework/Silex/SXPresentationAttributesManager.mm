@interface SXPresentationAttributesManager
- (SXPresentationAttributesManager)init;
- (void)addObserver:(id)a3;
- (void)attributesChangedFrom:(id)a3 to:(id)a4;
- (void)removeObserver:(id)a3;
- (void)updateAttributes:(id)a3;
@end

@implementation SXPresentationAttributesManager

- (SXPresentationAttributesManager)init
{
  v6.receiver = self;
  v6.super_class = SXPresentationAttributesManager;
  v2 = [(SXPresentationAttributesManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)attributesChangedFrom:(id)a3 to:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(SXPresentationAttributesManager *)self observers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) presentationAttributesDidChangeFrom:v6 toAttributes:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)updateAttributes:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXPresentationAttributesManager *)self presentationAttributes];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Updating presentation attributes: %{public}@", &v12, 0xCu);
    }

    v8 = [(SXPresentationAttributesManager *)self presentationAttributes];
    v9 = [v4 copy];
    presentationAttributes = self->_presentationAttributes;
    self->_presentationAttributes = v9;

    v11 = [(SXPresentationAttributesManager *)self presentationAttributes];
    [(SXPresentationAttributesManager *)self attributesChangedFrom:v8 to:v11];
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXPresentationAttributesManager *)self observers];
    [v5 addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXPresentationAttributesManager *)self observers];
    [v5 removeObject:v4];
  }
}

@end