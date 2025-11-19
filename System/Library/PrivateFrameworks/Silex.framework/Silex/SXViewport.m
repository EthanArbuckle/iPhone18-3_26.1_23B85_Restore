@interface SXViewport
- (BOOL)isPopulated;
- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4;
- (CGPoint)convertPointToViewportCoordinateSpace:(CGPoint)a3 fromView:(id)a4;
- (CGRect)bounds;
- (CGRect)contentFrame;
- (CGRect)convertRect:(CGRect)a3 fromView:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toView:(id)a4;
- (CGRect)convertRectToViewportCoordinateSpace:(CGRect)a3 fromView:(id)a4;
- (CGRect)dynamicBounds;
- (CGSize)documentSize;
- (SXViewport)initWithView:(id)a3;
- (UIScrollView)view;
- (id)debugDescriptionForViewport:(id)a3;
- (id)stringForAppearState:(unint64_t)a3;
- (id)stringFroInterfaceOrientation:(int64_t)a3;
- (void)addViewportChangeListener:(id)a3 forOptions:(unint64_t)a4;
- (void)appearStateChangedFromState:(unint64_t)a3;
- (void)beginUpdates;
- (void)boundsDidChangeFromBounds:(CGRect)a3;
- (void)contentFrameDidChangeFromFrame:(CGRect)a3;
- (void)documentSizeDidChangeFromSize:(CGSize)a3;
- (void)dynamicBoundsDidChangeFromBounds:(CGRect)a3;
- (void)endUpdates;
- (void)interfaceOrientationChangedFromOrientation:(int64_t)a3;
- (void)removeViewportChangeListener:(id)a3 forOptions:(unint64_t)a4;
- (void)reset;
- (void)setAppearState:(unint64_t)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentFrame:(CGRect)a3;
- (void)setDocumentSize:(CGSize)a3;
- (void)setDynamicBounds:(CGRect)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
@end

@implementation SXViewport

- (SXViewport)initWithView:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SXViewport;
  v5 = [(SXViewport *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
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

- (void)addViewportChangeListener:(id)a3 forOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_10;
  }

  v13 = v6;
  if ((v4 & 2) != 0)
  {
    v9 = [(SXViewport *)self dynamicBoundsListeners];
    [v9 addObject:v13];

    if ((v4 & 4) == 0)
    {
LABEL_4:
      if ((v4 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_4;
  }

  v10 = [(SXViewport *)self boundsListeners];
  [v10 addObject:v13];

  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [(SXViewport *)self appearStateListeners];
  [v11 addObject:v13];

  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  v12 = [(SXViewport *)self documentSizeListeners];
  [v12 addObject:v13];

  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    v7 = [(SXViewport *)self contentFrameListeners];
    [v7 addObject:v13];
  }

LABEL_8:
  v6 = v13;
  if ((v4 & 0x40) != 0)
  {
    v8 = [(SXViewport *)self interfaceOrientationListeners];
    [v8 addObject:v13];

    v6 = v13;
  }

LABEL_10:
}

- (void)removeViewportChangeListener:(id)a3 forOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_10;
  }

  v13 = v6;
  if ((v4 & 2) != 0)
  {
    v9 = [(SXViewport *)self dynamicBoundsListeners];
    [v9 removeObject:v13];

    if ((v4 & 4) == 0)
    {
LABEL_4:
      if ((v4 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_4;
  }

  v10 = [(SXViewport *)self boundsListeners];
  [v10 removeObject:v13];

  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [(SXViewport *)self appearStateListeners];
  [v11 removeObject:v13];

  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  v12 = [(SXViewport *)self documentSizeListeners];
  [v12 removeObject:v13];

  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    v7 = [(SXViewport *)self contentFrameListeners];
    [v7 removeObject:v13];
  }

LABEL_8:
  v6 = v13;
  if ((v4 & 0x40) != 0)
  {
    v8 = [(SXViewport *)self interfaceOrientationListeners];
    [v8 removeObject:v13];

    v6 = v13;
  }

LABEL_10:
}

- (void)beginUpdates
{
  v3 = [(SXViewport *)self viewportBeforeUpdates];

  if (!v3)
  {
    v4 = [SXViewport alloc];
    v5 = [(SXViewport *)self view];
    v6 = [(SXViewport *)v4 initWithView:v5];
    [(SXViewport *)self setViewportBeforeUpdates:v6];
  }

  v7 = [(SXViewport *)self viewportBeforeUpdates];
  [(SXViewport *)self dynamicBounds];
  [v7 setDynamicBounds:?];

  v8 = [(SXViewport *)self viewportBeforeUpdates];
  [(SXViewport *)self bounds];
  [v8 setBounds:?];

  v9 = [(SXViewport *)self viewportBeforeUpdates];
  [(SXViewport *)self documentSize];
  [v9 setDocumentSize:?];

  v10 = [(SXViewport *)self viewportBeforeUpdates];
  [v10 setAppearState:{-[SXViewport appearState](self, "appearState")}];

  v11 = [(SXViewport *)self viewportBeforeUpdates];
  [v11 setInterfaceOrientation:{-[SXViewport interfaceOrientation](self, "interfaceOrientation")}];

  [(SXViewport *)self setGroupChanges:1];
}

- (void)endUpdates
{
  v3 = [(SXViewport *)self viewportBeforeUpdates];
  [v3 dynamicBounds];
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
    v17 = [(SXViewport *)self viewportBeforeUpdates];
    [v17 dynamicBounds];
    [(SXViewport *)self dynamicBoundsDidChangeFromBounds:?];
  }

  v18 = [(SXViewport *)self viewportBeforeUpdates];
  [v18 bounds];
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
    v32 = [(SXViewport *)self viewportBeforeUpdates];
    [v32 bounds];
    [(SXViewport *)self boundsDidChangeFromBounds:?];
  }

  v33 = [(SXViewport *)self viewportBeforeUpdates];
  v34 = [v33 appearState];
  v35 = [(SXViewport *)self appearState];

  if (v34 != v35)
  {
    v36 = [(SXViewport *)self viewportBeforeUpdates];
    -[SXViewport appearStateChangedFromState:](self, "appearStateChangedFromState:", [v36 appearState]);
  }

  v37 = [(SXViewport *)self viewportBeforeUpdates];
  [v37 documentSize];
  v39 = v38;
  v41 = v40;
  [(SXViewport *)self documentSize];
  v43 = v42;
  v45 = v44;

  if (v39 != v43 || v41 != v45)
  {
    v46 = [(SXViewport *)self viewportBeforeUpdates];
    [v46 documentSize];
    [(SXViewport *)self documentSizeDidChangeFromSize:?];
  }

  v47 = [(SXViewport *)self viewportBeforeUpdates];
  v48 = [v47 interfaceOrientation];
  v49 = [(SXViewport *)self interfaceOrientation];

  if (v48 != v49)
  {
    v50 = [(SXViewport *)self viewportBeforeUpdates];
    -[SXViewport interfaceOrientationChangedFromOrientation:](self, "interfaceOrientationChangedFromOrientation:", [v50 interfaceOrientation]);
  }

  [(SXViewport *)self setGroupChanges:0];
}

- (void)dynamicBoundsDidChangeFromBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SXViewport *)self dynamicBoundsListeners];
  v9 = [v8 copy];

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

- (void)boundsDidChangeFromBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SXViewport *)self boundsListeners];
  v9 = [v8 copy];

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

- (void)appearStateChangedFromState:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SXViewport *)self appearStateListeners];
  v6 = [v5 copy];

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

        [*(*(&v11 + 1) + 8 * v10++) viewport:self appearStateChangedFromState:a3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)documentSizeDidChangeFromSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SXViewport *)self documentSizeListeners];
  v7 = [v6 copy];

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

- (void)contentFrameDidChangeFromFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SXViewport *)self contentFrameListeners];
  v9 = [v8 copy];

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

- (void)interfaceOrientationChangedFromOrientation:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SXViewport *)self interfaceOrientationListeners];
  v6 = [v5 copy];

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

        [*(*(&v11 + 1) + 8 * v10++) viewport:self interfaceOrientationChangedFromOrientation:a3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setDynamicBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setAppearState:(unint64_t)a3
{
  if ([(SXViewport *)self appearState]!= a3)
  {
    appearState = self->_appearState;
    self->_appearState = a3;
    if (![(SXViewport *)self groupChanges])
    {

      [(SXViewport *)self appearStateChangedFromState:appearState];
    }
  }
}

- (void)setDocumentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)setContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setInterfaceOrientation:(int64_t)a3
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != a3)
  {
    self->_interfaceOrientation = a3;
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

- (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SXViewport *)self view];
  [v8 convertPoint:v7 toView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SXViewport *)self view];
  [v8 convertPoint:v7 fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(SXViewport *)self view];
  [v10 convertRect:v9 toView:{x, y, width, height}];
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

- (CGRect)convertRect:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(SXViewport *)self view];
  [v10 convertRect:v9 fromView:{x, y, width, height}];
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

- (CGRect)convertRectToViewportCoordinateSpace:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(SXViewport *)self view];
  v11 = [v10 superview];
  [v11 convertRect:v9 fromView:{x, y, width, height}];
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

- (CGPoint)convertPointToViewportCoordinateSpace:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SXViewport *)self view];
  v9 = [v8 superview];
  [v9 convertPoint:v7 fromView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)stringFroInterfaceOrientation:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E84FF9C8[a3];
  }
}

- (id)stringForAppearState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E84FF9F0[a3];
  }
}

- (id)debugDescriptionForViewport:(id)a3
{
  v4 = a3;
  [v4 dynamicBounds];
  v5 = NSStringFromCGRect(v16);
  [v4 bounds];
  v6 = NSStringFromCGRect(v17);
  v7 = -[SXViewport stringForAppearState:](self, "stringForAppearState:", [v4 appearState]);
  [v4 documentSize];
  v8 = NSStringFromCGSize(v15);
  [v4 contentFrame];
  v9 = NSStringFromCGRect(v18);
  v10 = [v4 interfaceOrientation];

  v11 = [(SXViewport *)self stringFroInterfaceOrientation:v10];
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