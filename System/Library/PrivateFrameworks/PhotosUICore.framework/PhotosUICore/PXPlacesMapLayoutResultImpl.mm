@interface PXPlacesMapLayoutResultImpl
- (NSString)description;
- (PXPlacesMapLayoutResultImpl)init;
- (void)addItem:(id)item;
- (void)addItems:(id)items;
- (void)removeItem:(id)item;
@end

@implementation PXPlacesMapLayoutResultImpl

- (void)removeItem:(id)item
{
  itemCopy = item;
  items = [(PXPlacesMapLayoutResultImpl *)self items];
  [items removeObject:itemCopy];
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  items = [(PXPlacesMapLayoutResultImpl *)self items];
  [items unionOrderedSet:itemsCopy];
}

- (void)addItem:(id)item
{
  itemCopy = item;
  items = [(PXPlacesMapLayoutResultImpl *)self items];
  [items addObject:itemCopy];
}

- (NSString)description
{
  v22 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  viewPort = [(PXPlacesMapLayoutResultImpl *)self viewPort];
  [string appendFormat:@"Viewport %@\n", viewPort];

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
        geotaggables = [v10 geotaggables];
        [string appendFormat:@"Item %f, %f has %ld children\n", v12, v14, objc_msgSend(geotaggables, "count")];
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return string;
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