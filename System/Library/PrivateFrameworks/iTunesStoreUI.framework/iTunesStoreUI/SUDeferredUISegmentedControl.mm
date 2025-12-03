@interface SUDeferredUISegmentedControl
- (CGRect)frame;
- (id)imageForSegmentAtIndex:(unint64_t)index;
- (id)titleForSegmentAtIndex:(unint64_t)index;
- (int64_t)segmentedControlStyle;
- (int64_t)selectedSegmentIndex;
- (unint64_t)numberOfSegments;
- (void)_commitDeferredInterfaceUpdates;
- (void)_insertSegmentWithValue:(id)value atIndex:(unint64_t)index;
- (void)_saveCurrentStateAsDeferred;
- (void)_saveSegmentsAsDeferred;
- (void)dealloc;
- (void)insertSegmentWithImage:(id)image atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)insertSegmentWithTitle:(id)title atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)removeAllSegments;
- (void)removeSegmentAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setDeferringInterfaceUpdates:(BOOL)updates;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image forSegmentAtIndex:(unint64_t)index;
- (void)setSegmentedControlStyle:(int64_t)style;
- (void)setSelectedSegmentIndex:(int64_t)index;
- (void)setTitle:(id)title forSegmentAtIndex:(unint64_t)index;
- (void)sizeToFit;
- (void)sizeToFitWithMinimumSegmentWidth:(double)width maximumTotalWidth:(double)totalWidth;
@end

@implementation SUDeferredUISegmentedControl

- (void)dealloc
{
  self->_deferredSegments = 0;
  self->_isDeferringInterfaceUpdates = 0;
  v3.receiver = self;
  v3.super_class = SUDeferredUISegmentedControl;
  [(SUDeferredUISegmentedControl *)&v3 dealloc];
}

- (void)setDeferringInterfaceUpdates:(BOOL)updates
{
  isDeferringInterfaceUpdates = self->_isDeferringInterfaceUpdates;
  if (isDeferringInterfaceUpdates != updates)
  {
    if (!isDeferringInterfaceUpdates)
    {
      [(SUDeferredUISegmentedControl *)self _saveCurrentStateAsDeferred];
    }

    self->_isDeferringInterfaceUpdates = updates;
    if (!updates)
    {

      [(SUDeferredUISegmentedControl *)self _commitDeferredInterfaceUpdates];
    }
  }
}

- (CGRect)frame
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    x = self->_deferredFrame.origin.x;
    y = self->_deferredFrame.origin.y;
    width = self->_deferredFrame.size.width;
    height = self->_deferredFrame.size.height;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v7 frame];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)imageForSegmentAtIndex:(unint64_t)index
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    if ([(NSMutableArray *)self->_deferredSegments count]<= index)
    {
      return 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_deferredSegments objectAtIndex:index];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISegmentedControl;
    return [(SUDeferredUISegmentedControl *)&v7 imageForSegmentAtIndex:index];
  }
}

- (void)insertSegmentWithImage:(id)image atIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {

    [(SUDeferredUISegmentedControl *)self _insertSegmentWithValue:image atIndex:index];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v9 insertSegmentWithImage:image atIndex:index animated:animatedCopy];
  }
}

- (void)insertSegmentWithTitle:(id)title atIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {

    [(SUDeferredUISegmentedControl *)self _insertSegmentWithValue:title atIndex:index];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v9 insertSegmentWithTitle:title atIndex:index animated:animatedCopy];
  }
}

- (unint64_t)numberOfSegments
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    deferredSegments = self->_deferredSegments;

    return [(NSMutableArray *)deferredSegments count];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUDeferredUISegmentedControl;
    return [(SUDeferredUISegmentedControl *)&v5 numberOfSegments];
  }
}

- (void)removeAllSegments
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    deferredSegments = self->_deferredSegments;

    [(NSMutableArray *)deferredSegments removeAllObjects];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v4 removeAllSegments];
  }
}

- (void)removeSegmentAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    if ([(NSMutableArray *)self->_deferredSegments count]> index)
    {
      deferredSegments = self->_deferredSegments;

      [(NSMutableArray *)deferredSegments removeObjectAtIndex:index];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v8 removeSegmentAtIndex:index animated:animatedCopy];
  }
}

- (int64_t)segmentedControlStyle
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredSegmentedControlStyle;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISegmentedControl;
  return [(SUDeferredUISegmentedControl *)&v4 segmentedControlStyle];
}

- (int64_t)selectedSegmentIndex
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredSelectedSegmentIndex;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISegmentedControl;
  return [(SUDeferredUISegmentedControl *)&v4 selectedSegmentIndex];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    self->_deferredFrame.origin.x = x;
    self->_deferredFrame.origin.y = y;
    self->_deferredFrame.size.width = width;
    self->_deferredFrame.size.height = height;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setImage:(id)image forSegmentAtIndex:(unint64_t)index
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    if ([(NSMutableArray *)self->_deferredSegments count]> index)
    {
      deferredSegments = self->_deferredSegments;

      [(NSMutableArray *)deferredSegments replaceObjectAtIndex:index withObject:image];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v8 setImage:image forSegmentAtIndex:index];
  }
}

- (void)setSegmentedControlStyle:(int64_t)style
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    self->_deferredSegmentedControlStyle = style;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v5 setSegmentedControlStyle:style];
  }
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    self->_deferredSelectedSegmentIndex = index;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v5 setSelectedSegmentIndex:index];
  }
}

- (void)setTitle:(id)title forSegmentAtIndex:(unint64_t)index
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    if ([(NSMutableArray *)self->_deferredSegments count]> index)
    {
      deferredSegments = self->_deferredSegments;

      [(NSMutableArray *)deferredSegments replaceObjectAtIndex:index withObject:title];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v8 setTitle:title forSegmentAtIndex:index];
  }
}

- (void)sizeToFit
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    self->_deferredSizeToFit = 1;
  }

  else
  {
    v3.receiver = self;
    v3.super_class = SUDeferredUISegmentedControl;
    [(SUDeferredUISegmentedControl *)&v3 sizeToFit];
  }
}

- (void)sizeToFitWithMinimumSegmentWidth:(double)width maximumTotalWidth:(double)totalWidth
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    self->_deferredMaxTotalWidth = totalWidth;
    self->_deferredMinSegmentWidth = width;
    self->_deferredSizeToFit = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISegmentedControl;
    [(UISegmentedControl *)&v7 sizeToFitWithMinimumSegmentWidth:width maximumTotalWidth:totalWidth];
  }
}

- (id)titleForSegmentAtIndex:(unint64_t)index
{
  if ([(SUDeferredUISegmentedControl *)self isDeferringInterfaceUpdates])
  {
    if ([(NSMutableArray *)self->_deferredSegments count]<= index)
    {
      return 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_deferredSegments objectAtIndex:index];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISegmentedControl;
    return [(SUDeferredUISegmentedControl *)&v7 titleForSegmentAtIndex:index];
  }
}

- (void)_commitDeferredInterfaceUpdates
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_deferredSegments)
  {
    [(SUDeferredUISegmentedControl *)self removeAllSegments];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    deferredSegments = self->_deferredSegments;
    v4 = [(NSMutableArray *)deferredSegments countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(deferredSegments);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          numberOfSegments = [(SUDeferredUISegmentedControl *)self numberOfSegments];
          if (isKindOfClass)
          {
            [(SUDeferredUISegmentedControl *)self insertSegmentWithImage:v8 atIndex:numberOfSegments animated:0];
          }

          else
          {
            [(SUDeferredUISegmentedControl *)self insertSegmentWithTitle:v8 atIndex:numberOfSegments animated:0];
          }
        }

        v5 = [(NSMutableArray *)deferredSegments countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    self->_deferredSegments = 0;
  }

  [(SUDeferredUISegmentedControl *)self setSelectedSegmentIndex:self->_deferredSelectedSegmentIndex];
  if (self->_deferredSizeToFit)
  {
    self->_deferredSizeToFit = 0;
    [(SUDeferredUISegmentedControl *)self sizeToFitWithMinimumSegmentWidth:self->_deferredMinSegmentWidth maximumTotalWidth:self->_deferredMaxTotalWidth];
  }

  else
  {
    [(SUDeferredUISegmentedControl *)self setFrame:self->_deferredFrame.origin.x, self->_deferredFrame.origin.y, self->_deferredFrame.size.width, self->_deferredFrame.size.height];
  }
}

- (void)_insertSegmentWithValue:(id)value atIndex:(unint64_t)index
{
  deferredSegments = self->_deferredSegments;
  if (!deferredSegments)
  {
    deferredSegments = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_deferredSegments = deferredSegments;
  }

  v8 = [(NSMutableArray *)deferredSegments count];
  if (v8 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v8;
  }

  [(NSMutableArray *)deferredSegments insertObject:value atIndex:indexCopy];
}

- (void)_saveCurrentStateAsDeferred
{
  p_deferredFrame = &self->_deferredFrame;
  [(SUDeferredUISegmentedControl *)self frame];
  p_deferredFrame->origin.x = v4;
  p_deferredFrame->origin.y = v5;
  p_deferredFrame->size.width = v6;
  p_deferredFrame->size.height = v7;
  self->_deferredMaxTotalWidth = 0.0;
  self->_deferredMinSegmentWidth = 0.0;
  self->_deferredSegmentedControlStyle = [(SUDeferredUISegmentedControl *)self segmentedControlStyle];
  self->_deferredSelectedSegmentIndex = [(SUDeferredUISegmentedControl *)self selectedSegmentIndex];
  self->_deferredSizeToFit = 0;

  [(SUDeferredUISegmentedControl *)self _saveSegmentsAsDeferred];
}

- (void)_saveSegmentsAsDeferred
{
  deferredSegments = self->_deferredSegments;
  if (!deferredSegments)
  {
    deferredSegments = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_deferredSegments = deferredSegments;
  }

  [(NSMutableArray *)deferredSegments removeAllObjects];
  numberOfSegments = [(SUDeferredUISegmentedControl *)self numberOfSegments];
  if (numberOfSegments >= 1)
  {
    v5 = numberOfSegments;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(SUDeferredUISegmentedControl *)self titleForSegmentAtIndex:i];
      if (!v7)
      {
        v7 = [(SUDeferredUISegmentedControl *)self imageForSegmentAtIndex:i];
      }

      [(NSMutableArray *)self->_deferredSegments addObject:v7];
    }
  }
}

@end