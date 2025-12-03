@interface PXTilingChange
- (BOOL)coordinateSpaceDidChange;
- (BOOL)isIdentity;
- (CGSize)initialReferenceSize;
- (CGSize)toReferenceSize;
- (NSArray)events;
- (NSArray)invalidationContexts;
- (PXTilingChange)init;
- (PXTilingLayout)toLayout;
- (UIEdgeInsets)initialContentInset;
- (UIEdgeInsets)toContentInset;
- (id)defaultAnimationOptionsForTilingController:(id)controller;
- (id)description;
- (void)addEvent:(id)event;
- (void)recordCompositionInvalidationContexts:(id)contexts;
- (void)recordLayout:(id)layout;
@end

@implementation PXTilingChange

- (UIEdgeInsets)initialContentInset
{
  top = self->_initialContentInset.top;
  left = self->_initialContentInset.left;
  bottom = self->_initialContentInset.bottom;
  right = self->_initialContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)initialReferenceSize
{
  width = self->_initialReferenceSize.width;
  height = self->_initialReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSArray)invalidationContexts
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(PXTilingChange *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == 5)
        {
          context = [v9 context];
          [array addObject:context];
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)defaultAnimationOptionsForTilingController:(id)controller
{
  controllerCopy = controller;
  compositionInvalidationContexts = [(PXTilingChange *)self compositionInvalidationContexts];
  v6 = [PXTilingControllerCompositionInvalidationContext defaultAnimationOptionsForTilingController:controllerCopy withInvalidationContexts:compositionInvalidationContexts];

  return v6;
}

- (BOOL)coordinateSpaceDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  events = [(PXTilingChange *)self events];
  reverseObjectEnumerator = [events reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 4)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (UIEdgeInsets)toContentInset
{
  v31 = *MEMORY[0x1E69E9840];
  [(PXTilingChange *)self initialContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  events = [(PXTilingChange *)self events];
  reverseObjectEnumerator = [events reverseObjectEnumerator];

  v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 type] == 3)
        {
          [v17 contentInset];
          v4 = v18;
          v6 = v19;
          v8 = v20;
          v10 = v21;
          goto LABEL_11;
        }
      }

      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v22 = v4;
  v23 = v6;
  v24 = v8;
  v25 = v10;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (CGSize)toReferenceSize
{
  v23 = *MEMORY[0x1E69E9840];
  [(PXTilingChange *)self initialReferenceSize];
  v4 = v3;
  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  events = [(PXTilingChange *)self events];
  reverseObjectEnumerator = [events reverseObjectEnumerator];

  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 type] == 2)
        {
          [v13 referenceSize];
          v4 = v14;
          v6 = v15;
          goto LABEL_11;
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = v4;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (PXTilingLayout)toLayout
{
  v18 = *MEMORY[0x1E69E9840];
  initialLayout = [(PXTilingChange *)self initialLayout];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  events = [(PXTilingChange *)self events];
  reverseObjectEnumerator = [events reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          layout = [v10 layout];

          initialLayout = layout;
          goto LABEL_11;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return initialLayout;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  initialLayout = self->_initialLayout;
  v6 = NSStringFromCGSize(self->_initialReferenceSize);
  v7 = [v3 stringWithFormat:@"<%@: %p, initialLayout=%@, initialReferenceSize=%@, events=%@", v4, self, initialLayout, v6, self->_events];

  if (self->_compositionInvalidationContexts)
  {
    [v7 appendFormat:@", compositionInvalidationContexts=%@", self->_compositionInvalidationContexts];
  }

  [v7 appendString:@">"];

  return v7;
}

- (NSArray)events
{
  v2 = [(NSMutableArray *)self->_events copy];

  return v2;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  events = self->_events;
  v8 = eventCopy;
  if (!events)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_events;
    self->_events = array;

    eventCopy = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:eventCopy];
}

- (void)recordCompositionInvalidationContexts:(id)contexts
{
  contextsCopy = contexts;
  if ([contextsCopy count])
  {
    if (self->_compositionInvalidationContexts)
    {
      if ([contextsCopy isEqualToArray:?])
      {
        goto LABEL_7;
      }

      v4 = [(NSArray *)self->_compositionInvalidationContexts arrayByAddingObjectsFromArray:self->_compositionInvalidationContexts];
    }

    else
    {
      v4 = [contextsCopy copy];
    }

    compositionInvalidationContexts = self->_compositionInvalidationContexts;
    self->_compositionInvalidationContexts = v4;
  }

LABEL_7:
}

- (void)recordLayout:(id)layout
{
  layoutCopy = layout;
  initialLayout = self->_initialLayout;
  p_initialLayout = &self->_initialLayout;
  if (!initialLayout)
  {
    v8 = layoutCopy;
    objc_storeStrong(p_initialLayout, layout);
    layoutCopy = v8;
  }
}

- (BOOL)isIdentity
{
  events = [(PXTilingChange *)self events];
  v3 = [events count] == 0;

  return v3;
}

- (PXTilingChange)init
{
  v5.receiver = self;
  v5.super_class = PXTilingChange;
  result = [(PXTilingChange *)&v5 init];
  if (result)
  {
    v3 = *off_1E7721F98;
    v4 = *(off_1E7721F98 + 1);
    result->_initialReferenceSize = *off_1E7722230;
    *&result->_initialContentInset.top = v3;
    *&result->_initialContentInset.bottom = v4;
  }

  return result;
}

@end