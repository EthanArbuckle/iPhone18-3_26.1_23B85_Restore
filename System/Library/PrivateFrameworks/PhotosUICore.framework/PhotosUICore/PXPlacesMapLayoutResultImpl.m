@interface PXPlacesMapLayoutResultImpl
- (NSString)description;
- (PXPlacesMapLayoutResultImpl)init;
- (void)addItem:(id)a3;
- (void)addItems:(id)a3;
- (void)removeItem:(id)a3;
@end

@implementation PXPlacesMapLayoutResultImpl

- (void)removeItem:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapLayoutResultImpl *)self items];
  [v5 removeObject:v4];
}

- (void)addItems:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapLayoutResultImpl *)self items];
  [v5 unionOrderedSet:v4];
}

- (void)addItem:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapLayoutResultImpl *)self items];
  [v5 addObject:v4];
}

- (NSString)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PXPlacesMapLayoutResultImpl *)self viewPort];
  [v3 appendFormat:@"Viewport %@\n", v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 coordinate];
        v12 = v11;
        [v10 coordinate];
        v14 = v13;
        v15 = [v10 geotaggables];
        [v3 appendFormat:@"Item %f, %f has %ld children\n", v12, v14, objc_msgSend(v15, "count")];
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v3;
}

- (PXPlacesMapLayoutResultImpl)init
{
  v6.receiver = self;
  v6.super_class = PXPlacesMapLayoutResultImpl;
  v2 = [(PXPlacesMapLayoutResultImpl *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

@end