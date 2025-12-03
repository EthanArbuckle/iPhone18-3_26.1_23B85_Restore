@interface SXPresentationAttributesManager
- (SXPresentationAttributesManager)init;
- (void)addObserver:(id)observer;
- (void)attributesChangedFrom:(id)from to:(id)to;
- (void)removeObserver:(id)observer;
- (void)updateAttributes:(id)attributes;
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

- (void)attributesChangedFrom:(id)from to:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(SXPresentationAttributesManager *)self observers];
  v9 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(observers);
        }

        [*(*(&v13 + 1) + 8 * v12++) presentationAttributesDidChangeFrom:fromCopy toAttributes:toCopy];
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)updateAttributes:(id)attributes
{
  v14 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  presentationAttributes = [(SXPresentationAttributesManager *)self presentationAttributes];
  v6 = [presentationAttributes isEqual:attributesCopy];

  if ((v6 & 1) == 0)
  {
    v7 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = attributesCopy;
      _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Updating presentation attributes: %{public}@", &v12, 0xCu);
    }

    presentationAttributes2 = [(SXPresentationAttributesManager *)self presentationAttributes];
    v9 = [attributesCopy copy];
    presentationAttributes = self->_presentationAttributes;
    self->_presentationAttributes = v9;

    presentationAttributes3 = [(SXPresentationAttributesManager *)self presentationAttributes];
    [(SXPresentationAttributesManager *)self attributesChangedFrom:presentationAttributes2 to:presentationAttributes3];
  }
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SXPresentationAttributesManager *)self observers];
    [observers addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SXPresentationAttributesManager *)self observers];
    [observers removeObject:observerCopy];
  }
}

@end