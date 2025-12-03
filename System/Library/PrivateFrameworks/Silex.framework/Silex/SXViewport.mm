@interface SXViewport
- (BOOL)isPopulated;
- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view;
- (CGPoint)convertPoint:(CGPoint)point toView:(id)view;
- (CGPoint)convertPointToViewportCoordinateSpace:(CGPoint)space fromView:(id)view;
- (CGRect)bounds;
- (CGRect)contentFrame;
- (CGRect)convertRect:(CGRect)rect fromView:(id)view;
- (CGRect)convertRect:(CGRect)rect toView:(id)view;
- (CGRect)convertRectToViewportCoordinateSpace:(CGRect)space fromView:(id)view;
- (CGRect)dynamicBounds;
- (CGSize)documentSize;
- (SXViewport)initWithView:(id)view;
- (UIScrollView)view;
- (id)debugDescriptionForViewport:(id)viewport;
- (id)stringForAppearState:(unint64_t)state;
- (id)stringFroInterfaceOrientation:(int64_t)orientation;
- (void)addViewportChangeListener:(id)listener forOptions:(unint64_t)options;
- (void)appearStateChangedFromState:(unint64_t)state;
- (void)beginUpdates;
- (void)boundsDidChangeFromBounds:(CGRect)bounds;
- (void)contentFrameDidChangeFromFrame:(CGRect)frame;
- (void)documentSizeDidChangeFromSize:(CGSize)size;
- (void)dynamicBoundsDidChangeFromBounds:(CGRect)bounds;
- (void)endUpdates;
- (void)interfaceOrientationChangedFromOrientation:(int64_t)orientation;
- (void)removeViewportChangeListener:(id)listener forOptions:(unint64_t)options;
- (void)reset;
- (void)setAppearState:(unint64_t)state;
- (void)setBounds:(CGRect)bounds;
- (void)setContentFrame:(CGRect)frame;
- (void)setDocumentSize:(CGSize)size;
- (void)setDynamicBounds:(CGRect)bounds;
- (void)setInterfaceOrientation:(int64_t)orientation;
@end

@implementation SXViewport

- (SXViewport)initWithView:(id)view
{
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = SXViewport;
  v5 = [(SXViewport *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, viewCopy);
    v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    dynamicBoundsListeners = v6->_dynamicBoundsListeners;
    v6->_dynamicBoundsListeners = v7;

    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    boundsListeners = v6->_boundsListeners;
    v6->_boundsListeners = v9;

    v11 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    appearStateListeners = v6->_appearStateListeners;
    v6->_appearStateListeners = v11;

    v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    documentSizeListeners = v6->_documentSizeListeners;
    v6->_documentSizeListeners = v13;

    v15 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    contentFrameListeners = v6->_contentFrameListeners;
    v6->_contentFrameListeners = v15;

    v17 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    interfaceOrientationListeners = v6->_interfaceOrientationListeners;
    v6->_interfaceOrientationListeners = v17;
  }

  return v6;
}

- (void)addViewportChangeListener:(id)listener forOptions:(unint64_t)options
{
  optionsCopy = options;
  listenerCopy = listener;
  if (!listenerCopy)
  {
    goto LABEL_10;
  }

  v13 = listenerCopy;
  if ((optionsCopy & 2) != 0)
  {
    dynamicBoundsListeners = [(SXViewport *)self dynamicBoundsListeners];
    [dynamicBoundsListeners addObject:v13];

    if ((optionsCopy & 4) == 0)
    {
LABEL_4:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_4;
  }

  boundsListeners = [(SXViewport *)self boundsListeners];
  [boundsListeners addObject:v13];

  if ((optionsCopy & 8) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  appearStateListeners = [(SXViewport *)self appearStateListeners];
  [appearStateListeners addObject:v13];

  if ((optionsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  documentSizeListeners = [(SXViewport *)self documentSizeListeners];
  [documentSizeListeners addObject:v13];

  if ((optionsCopy & 0x20) != 0)
  {
LABEL_7:
    contentFrameListeners = [(SXViewport *)self contentFrameListeners];
    [contentFrameListeners addObject:v13];
  }

LABEL_8:
  listenerCopy = v13;
  if ((optionsCopy & 0x40) != 0)
  {
    interfaceOrientationListeners = [(SXViewport *)self interfaceOrientationListeners];
    [interfaceOrientationListeners addObject:v13];

    listenerCopy = v13;
  }

LABEL_10:
}

- (void)removeViewportChangeListener:(id)listener forOptions:(unint64_t)options
{
  optionsCopy = options;
  listenerCopy = listener;
  if (!listenerCopy)
  {
    goto LABEL_10;
  }

  v13 = listenerCopy;
  if ((optionsCopy & 2) != 0)
  {
    dynamicBoundsListeners = [(SXViewport *)self dynamicBoundsListeners];
    [dynamicBoundsListeners removeObject:v13];

    if ((optionsCopy & 4) == 0)
    {
LABEL_4:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_4;
  }

  boundsListeners = [(SXViewport *)self boundsListeners];
  [boundsListeners removeObject:v13];

  if ((optionsCopy & 8) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  appearStateListeners = [(SXViewport *)self appearStateListeners];
  [appearStateListeners removeObject:v13];

  if ((optionsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  documentSizeListeners = [(SXViewport *)self documentSizeListeners];
  [documentSizeListeners removeObject:v13];

  if ((optionsCopy & 0x20) != 0)
  {
LABEL_7:
    contentFrameListeners = [(SXViewport *)self contentFrameListeners];
    [contentFrameListeners removeObject:v13];
  }

LABEL_8:
  listenerCopy = v13;
  if ((optionsCopy & 0x40) != 0)
  {
    interfaceOrientationListeners = [(SXViewport *)self interfaceOrientationListeners];
    [interfaceOrientationListeners removeObject:v13];

    listenerCopy = v13;
  }

LABEL_10:
}

- (void)beginUpdates
{
  viewportBeforeUpdates = [(SXViewport *)self viewportBeforeUpdates];

  if (!viewportBeforeUpdates)
  {
    v4 = [SXViewport alloc];
    view = [(SXViewport *)self view];
    v6 = [(SXViewport *)v4 initWithView:view];
    [(SXViewport *)self setViewportBeforeUpdates:v6];
  }

  viewportBeforeUpdates2 = [(SXViewport *)self viewportBeforeUpdates];
  [(SXViewport *)self dynamicBounds];
  [viewportBeforeUpdates2 setDynamicBounds:?];

  viewportBeforeUpdates3 = [(SXViewport *)self viewportBeforeUpdates];
  [(SXViewport *)self bounds];
  [viewportBeforeUpdates3 setBounds:?];

  viewportBeforeUpdates4 = [(SXViewport *)self viewportBeforeUpdates];
  [(SXViewport *)self documentSize];
  [viewportBeforeUpdates4 setDocumentSize:?];

  viewportBeforeUpdates5 = [(SXViewport *)self viewportBeforeUpdates];
  [viewportBeforeUpdates5 setAppearState:{-[SXViewport appearState](self, "appearState")}];

  viewportBeforeUpdates6 = [(SXViewport *)self viewportBeforeUpdates];
  [viewportBeforeUpdates6 setInterfaceOrientation:{-[SXViewport interfaceOrientation](self, "interfaceOrientation")}];

  [(SXViewport *)self setGroupChanges:1];
}

- (void)endUpdates
{
  viewportBeforeUpdates = [(SXViewport *)self viewportBeforeUpdates];
  [viewportBeforeUpdates dynamicBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SXViewport *)self dynamicBounds];
  v54.origin.x = v12;
  v54.origin.y = v13;
  v54.size.width = v14;
  v54.size.height = v15;
  v52.origin.x = v5;
  v52.origin.y = v7;
  v52.size.width = v9;
  v52.size.height = v11;
  v16 = CGRectEqualToRect(v52, v54);

  if (!v16)
  {
    viewportBeforeUpdates2 = [(SXViewport *)self viewportBeforeUpdates];
    [viewportBeforeUpdates2 dynamicBounds];
    [(SXViewport *)self dynamicBoundsDidChangeFromBounds:?];
  }

  viewportBeforeUpdates3 = [(SXViewport *)self viewportBeforeUpdates];
  [viewportBeforeUpdates3 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(SXViewport *)self bounds];
  v55.origin.x = v27;
  v55.origin.y = v28;
  v55.size.width = v29;
  v55.size.height = v30;
  v53.origin.x = v20;
  v53.origin.y = v22;
  v53.size.width = v24;
  v53.size.height = v26;
  v31 = CGRectEqualToRect(v53, v55);

  if (!v31)
  {
    viewportBeforeUpdates4 = [(SXViewport *)self viewportBeforeUpdates];
    [viewportBeforeUpdates4 bounds];
    [(SXViewport *)self boundsDidChangeFromBounds:?];
  }

  viewportBeforeUpdates5 = [(SXViewport *)self viewportBeforeUpdates];
  appearState = [viewportBeforeUpdates5 appearState];
  appearState2 = [(SXViewport *)self appearState];

  if (appearState != appearState2)
  {
    viewportBeforeUpdates6 = [(SXViewport *)self viewportBeforeUpdates];
    -[SXViewport appearStateChangedFromState:](self, "appearStateChangedFromState:", [viewportBeforeUpdates6 appearState]);
  }

  viewportBeforeUpdates7 = [(SXViewport *)self viewportBeforeUpdates];
  [viewportBeforeUpdates7 documentSize];
  v39 = v38;
  v41 = v40;
  [(SXViewport *)self documentSize];
  v43 = v42;
  v45 = v44;

  if (v39 != v43 || v41 != v45)
  {
    viewportBeforeUpdates8 = [(SXViewport *)self viewportBeforeUpdates];
    [viewportBeforeUpdates8 documentSize];
    [(SXViewport *)self documentSizeDidChangeFromSize:?];
  }

  viewportBeforeUpdates9 = [(SXViewport *)self viewportBeforeUpdates];
  interfaceOrientation = [viewportBeforeUpdates9 interfaceOrientation];
  interfaceOrientation2 = [(SXViewport *)self interfaceOrientation];

  if (interfaceOrientation != interfaceOrientation2)
  {
    viewportBeforeUpdates10 = [(SXViewport *)self viewportBeforeUpdates];
    -[SXViewport interfaceOrientationChangedFromOrientation:](self, "interfaceOrientationChangedFromOrientation:", [viewportBeforeUpdates10 interfaceOrientation]);
  }

  [(SXViewport *)self setGroupChanges:0];
}

- (void)dynamicBoundsDidChangeFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dynamicBoundsListeners = [(SXViewport *)self dynamicBoundsListeners];
  v9 = [dynamicBoundsListeners copy];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) viewport:self dynamicBoundsDidChangeFromBounds:{x, y, width, height}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)boundsDidChangeFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  boundsListeners = [(SXViewport *)self boundsListeners];
  v9 = [boundsListeners copy];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) viewport:self boundsDidChangeFromBounds:{x, y, width, height}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)appearStateChangedFromState:(unint64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  appearStateListeners = [(SXViewport *)self appearStateListeners];
  v6 = [appearStateListeners copy];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) viewport:self appearStateChangedFromState:state];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)documentSizeDidChangeFromSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  documentSizeListeners = [(SXViewport *)self documentSizeListeners];
  v7 = [documentSizeListeners copy];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) viewport:self documentSizeDidChangeFromSize:{width, height}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)contentFrameDidChangeFromFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentFrameListeners = [(SXViewport *)self contentFrameListeners];
  v9 = [contentFrameListeners copy];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) viewport:self contentFrameDidChangeFromFrame:{x, y, width, height}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)interfaceOrientationChangedFromOrientation:(int64_t)orientation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  interfaceOrientationListeners = [(SXViewport *)self interfaceOrientationListeners];
  v6 = [interfaceOrientationListeners copy];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) viewport:self interfaceOrientationChangedFromOrientation:orientation];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setDynamicBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SXViewport *)self dynamicBounds];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v8 = self->_dynamicBounds.origin.x;
    v9 = self->_dynamicBounds.origin.y;
    v10 = self->_dynamicBounds.size.width;
    v11 = self->_dynamicBounds.size.height;
    self->_dynamicBounds.origin.x = x;
    self->_dynamicBounds.origin.y = y;
    self->_dynamicBounds.size.width = width;
    self->_dynamicBounds.size.height = height;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self dynamicBoundsDidChangeFromBounds:v8, v9, v10, v11];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SXViewport *)self bounds];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v8 = self->_bounds.origin.x;
    v9 = self->_bounds.origin.y;
    v10 = self->_bounds.size.width;
    v11 = self->_bounds.size.height;
    self->_bounds.origin.x = x;
    self->_bounds.origin.y = y;
    self->_bounds.size.width = width;
    self->_bounds.size.height = height;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self boundsDidChangeFromBounds:v8, v9, v10, v11];
    }
  }
}

- (void)setAppearState:(unint64_t)state
{
  if ([(SXViewport *)self appearState]!= state)
  {
    appearState = self->_appearState;
    self->_appearState = state;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self appearStateChangedFromState:appearState];
    }
  }
}

- (void)setDocumentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SXViewport *)self documentSize];
  if (v7 != width || v6 != height)
  {
    v9 = self->_documentSize.width;
    v10 = self->_documentSize.height;
    self->_documentSize.width = width;
    self->_documentSize.height = height;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self documentSizeDidChangeFromSize:v9, v10];
    }
  }
}

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SXViewport *)self contentFrame];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v8 = self->_contentFrame.origin.x;
    v9 = self->_contentFrame.origin.y;
    v10 = self->_contentFrame.size.width;
    v11 = self->_contentFrame.size.height;
    self->_contentFrame.origin.x = x;
    self->_contentFrame.origin.y = y;
    self->_contentFrame.size.width = width;
    self->_contentFrame.size.height = height;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self contentFrameDidChangeFromFrame:v8, v9, v10, v11];
    }
  }
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != orientation)
  {
    self->_interfaceOrientation = orientation;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self interfaceOrientationChangedFromOrientation:interfaceOrientation];
    }
  }
}

- (BOOL)isPopulated
{
  [(SXViewport *)self dynamicBounds];
  if (CGRectIsEmpty(v6))
  {
    return 0;
  }

  [(SXViewport *)self bounds];
  if (CGRectIsEmpty(v7))
  {
    return 0;
  }

  [(SXViewport *)self contentFrame];
  if (CGRectIsEmpty(v8))
  {
    return 0;
  }

  [(SXViewport *)self documentSize];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(SXViewport *)self documentSize];
  return v4 > 0.0;
}

- (void)reset
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  [(SXViewport *)self setDynamicBounds:*MEMORY[0x1E695F058], v4, v5, v6];
  [(SXViewport *)self setBounds:v3, v4, v5, v6];
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);

  [(SXViewport *)self setDocumentSize:v7, v8];
}

- (CGPoint)convertPoint:(CGPoint)point toView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  view = [(SXViewport *)self view];
  [view convertPoint:viewCopy toView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  view = [(SXViewport *)self view];
  [view convertPoint:viewCopy fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  view = [(SXViewport *)self view];
  [view convertRect:viewCopy toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  view = [(SXViewport *)self view];
  [view convertRect:viewCopy fromView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)convertRectToViewportCoordinateSpace:(CGRect)space fromView:(id)view
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  viewCopy = view;
  view = [(SXViewport *)self view];
  superview = [view superview];
  [superview convertRect:viewCopy fromView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGPoint)convertPointToViewportCoordinateSpace:(CGPoint)space fromView:(id)view
{
  y = space.y;
  x = space.x;
  viewCopy = view;
  view = [(SXViewport *)self view];
  superview = [view superview];
  [superview convertPoint:viewCopy fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)stringFroInterfaceOrientation:(int64_t)orientation
{
  if (orientation > 4)
  {
    return 0;
  }

  else
  {
    return off_1E84FF9C8[orientation];
  }
}

- (id)stringForAppearState:(unint64_t)state
{
  if (state > 3)
  {
    return 0;
  }

  else
  {
    return off_1E84FF9F0[state];
  }
}

- (id)debugDescriptionForViewport:(id)viewport
{
  viewportCopy = viewport;
  [viewportCopy dynamicBounds];
  v5 = NSStringFromCGRect(v16);
  [viewportCopy bounds];
  v6 = NSStringFromCGRect(v17);
  v7 = -[SXViewport stringForAppearState:](self, "stringForAppearState:", [viewportCopy appearState]);
  [viewportCopy documentSize];
  v8 = NSStringFromCGSize(v15);
  [viewportCopy contentFrame];
  v9 = NSStringFromCGRect(v18);
  interfaceOrientation = [viewportCopy interfaceOrientation];

  v11 = [(SXViewport *)self stringFroInterfaceOrientation:interfaceOrientation];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p dynamicBounds: %@; bounds: %@; appearState: %@; documentSize: %@; contentFrame: %@; interfaceOrientation: %@", objc_opt_class(), self, v5, v6, v7, v8, v9, v11];;

  return v12;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)dynamicBounds
{
  x = self->_dynamicBounds.origin.x;
  y = self->_dynamicBounds.origin.y;
  width = self->_dynamicBounds.size.width;
  height = self->_dynamicBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)documentSize
{
  width = self->_documentSize.width;
  height = self->_documentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIScrollView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end