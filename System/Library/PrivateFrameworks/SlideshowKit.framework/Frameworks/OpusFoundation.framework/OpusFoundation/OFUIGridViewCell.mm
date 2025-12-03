@interface OFUIGridViewCell
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasOperations;
- (OFUIGridViewCell)initWithFrame:(CGRect)frame;
- (OFUIGridViewCell)initWithReuseIdentifier:(id)identifier;
- (id)gridView;
- (id)newDraggingItem;
- (unint64_t)countOperations;
- (void)_setHighlightedOnCell:(BOOL)cell;
- (void)addOperation:(id)operation;
- (void)cancelAllOperations;
- (void)commonInit;
- (void)dealloc;
- (void)enumerateOperations:(id)operations;
- (void)handleSelectAll:(id)all;
- (void)handleTap:(id)tap;
- (void)removeOperation:(id)operation;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setOperationsPriority:(int64_t)priority;
- (void)setSelected:(BOOL)selected;
- (void)showSelectionBorder:(BOOL)border;
- (void)startDragging:(id)dragging;
@end

@implementation OFUIGridViewCell

- (OFUIGridViewCell)initWithReuseIdentifier:(id)identifier
{
  v4 = [(OFUIGridViewCell *)self initWithFrame:0.0, 0.0, 128.0, 128.0];
  if (v4)
  {
    v4->_reuseIdentifier = [identifier copy];
  }

  return v4;
}

- (void)commonInit
{
  self->_reuseIdentifier = 0;
  self->_item = 0;
  self->_operations = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(OFUIGridViewCell *)self setAutoresizingMask:0];
  [-[OFUIGridViewCell layer](self "layer")];
  [-[OFUIGridViewCell layer](self "layer")];
  [(OFUIGridViewCell *)self setClipsToBounds:1];
  v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_startDragging_];
  self->_longPressRecognizer = v3;
  [(UILongPressGestureRecognizer *)v3 setNumberOfTapsRequired:0];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setNumberOfTouchesRequired:1];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setMinimumPressDuration:0.150000006];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setDelegate:self];
  [(OFUIGridViewCell *)self addGestureRecognizer:self->_longPressRecognizer];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  self->_singleTapRecognizer = v4;
  [(UITapGestureRecognizer *)v4 setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_singleTapRecognizer setDelegate:self];
  [(OFUIGridViewCell *)self addGestureRecognizer:self->_singleTapRecognizer];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleSelectAll_];
  self->_selectAllRecognizer = v5;
  [(UITapGestureRecognizer *)v5 setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_selectAllRecognizer setNumberOfTouchesRequired:2];
  [(UITapGestureRecognizer *)self->_selectAllRecognizer setDelegate:self];
  [(OFUIGridViewCell *)self addGestureRecognizer:self->_selectAllRecognizer];
  self->_selected = 0;
}

- (OFUIGridViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OFUIGridViewCell;
  v3 = [(OFUIGridViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFUIGridViewCell *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(OFUIGridViewCell *)self cancelAllOperations];
  operations = self->_operations;
  if (operations)
  {

    self->_operations = 0;
  }

  reuseIdentifier = self->_reuseIdentifier;
  if (reuseIdentifier)
  {

    self->_reuseIdentifier = 0;
  }

  item = self->_item;
  if (item)
  {

    self->_item = 0;
  }

  singleTapRecognizer = self->_singleTapRecognizer;
  if (singleTapRecognizer)
  {

    self->_singleTapRecognizer = 0;
  }

  selectAllRecognizer = self->_selectAllRecognizer;
  if (selectAllRecognizer)
  {

    self->_selectAllRecognizer = 0;
  }

  longPressRecognizer = self->_longPressRecognizer;
  if (longPressRecognizer)
  {

    self->_longPressRecognizer = 0;
  }

  v9.receiver = self;
  v9.super_class = OFUIGridViewCell;
  [(OFUIGridViewCell *)&v9 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OFUIGridViewCell *)self bounds];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v9.receiver = self;
    v9.super_class = OFUIGridViewCell;
    [(OFUIGridViewCell *)&v9 setBounds:x, y, width, height];
    if ([(OFUIGridViewItem *)self->_item isSelected])
    {
      v8 = MEMORY[0x277D75208];
      [(OFUIGridViewCell *)self bounds];
      [-[OFUIGridViewCell layer](self "layer")];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(OFUIGridViewCell *)self frame];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v9.receiver = self;
    v9.super_class = OFUIGridViewCell;
    [(OFUIGridViewCell *)&v9 setFrame:x, y, width, height];
    if ([(OFUIGridViewItem *)self->_item isSelected])
    {
      v8 = MEMORY[0x277D75208];
      [(OFUIGridViewCell *)self bounds];
      [-[OFUIGridViewCell layer](self "layer")];
    }
  }
}

- (id)gridView
{
  superview = [(OFUIGridViewCell *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return superview;
  }

  else
  {
    return 0;
  }
}

- (void)setItem:(id)item
{
  item = self->_item;
  if (item)
  {

    self->_item = 0;
  }

  if (item)
  {
    self->_item = item;
    -[OFUIGridViewCell setHighlighted:](self, "setHighlighted:", [item isHighlighted]);
    isSelected = [item isSelected];
  }

  else
  {
    [(OFUIGridViewCell *)self setHighlighted:0];
    isSelected = 0;
  }

  [(OFUIGridViewCell *)self setSelected:isSelected];
}

- (void)_setHighlightedOnCell:(BOOL)cell
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__OFUIGridViewCell__setHighlightedOnCell___block_invoke;
  v3[3] = &unk_279C8A190;
  cellCopy = cell;
  v3[4] = self;
  [self performBlockWithoutAnimations:v3];
}

void __42__OFUIGridViewCell__setHighlightedOnCell___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = OFCreateMultiplyColorFilter();
    [v3 setValue:objc_msgSend(objc_msgSend(MEMORY[0x277D75348] forKey:{"colorWithRed:green:blue:alpha:", 0.513725519, 0.521568656, 0.533333361, 1.0), "CGColor"), @"inputColor"}];
    [objc_msgSend(*(a1 + 32) "layer")];
  }

  else
  {
    v2 = [*(a1 + 32) layer];

    [v2 setFilters:0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(OFUIGridViewItem *)self->_item setHighlighted:?];

  [(OFUIGridViewCell *)self _setHighlightedOnCell:highlightedCopy];
}

- (void)showSelectionBorder:(BOOL)border
{
  borderCopy = border;
  layer = [(OFUIGridViewCell *)self layer];
  if (borderCopy)
  {
    [layer setBorderWidth:2.0];
    [-[OFUIGridViewCell layer](self "layer")];
    [-[OFUIGridViewCell layer](self "layer")];
    [-[OFUIGridViewCell layer](self "layer")];
    [-[OFUIGridViewCell layer](self "layer")];
    layer2 = [(OFUIGridViewCell *)self layer];
    LODWORD(v7) = 1.0;
    [layer2 setShadowOpacity:v7];
    v8 = MEMORY[0x277D75208];
    [(OFUIGridViewCell *)self bounds];
    [-[OFUIGridViewCell layer](self "layer")];
    layer3 = [(OFUIGridViewCell *)self layer];

    [layer3 setOpaque:1];
  }

  else
  {
    [layer setBorderWidth:0.0];
    layer4 = [(OFUIGridViewCell *)self layer];

    [layer4 setShadowOpacity:0.0];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_item)
  {
    selectedCopy = selected;
    if (!-[OFUIGridViewCell gridView](self, "gridView") || ![-[OFUIGridViewCell gridView](self "gridView")] || (objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "gridViewDelegate"), (objc_opt_respondsToSelector() & 1) == 0) || objc_msgSend(objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "gridViewDelegate"), "gridView:canSelectCell:", -[OFUIGridViewCell gridView](self, "gridView"), self))
    {
      if (self->_selected != selectedCopy)
      {
        self->_selected = selectedCopy;
        [(OFUIGridViewItem *)self->_item setSelected:selectedCopy];
        [(OFUIGridViewCell *)self showSelectionBorder:selectedCopy];
        gridView = [(OFUIGridViewCell *)self gridView];
        if (selectedCopy)
        {
          if (gridView)
          {
            if ([-[OFUIGridViewCell gridView](self "gridView")])
            {
              [-[OFUIGridViewCell gridView](self "gridView")];
              if (objc_opt_respondsToSelector())
              {
                v6 = [-[OFUIGridViewCell gridView](self "gridView")];
                gridView2 = [(OFUIGridViewCell *)self gridView];

                [v6 gridView:gridView2 cellWasSelected:self];
              }
            }
          }
        }

        else if (gridView)
        {
          if ([-[OFUIGridViewCell gridView](self "gridView")])
          {
            [-[OFUIGridViewCell gridView](self "gridView")];
            if (objc_opt_respondsToSelector())
            {
              v8 = [-[OFUIGridViewCell gridView](self "gridView")];
              gridView3 = [(OFUIGridViewCell *)self gridView];

              [v8 gridView:gridView3 cellWasDeselected:self];
            }
          }
        }
      }
    }
  }
}

- (id)newDraggingItem
{
  v3 = [OFUIWindowDraggingItem alloc];
  item = [(OFUIGridViewCell *)self item];
  snapshot = [(UIView *)self snapshot];

  return [(OFUIWindowDraggingItem *)v3 initWithObject:item image:snapshot];
}

- (void)startDragging:(id)dragging
{
  if ([dragging state] != 5)
  {
    if ([dragging state] == 1)
    {
      if ([dragging numberOfTouches] == 1 && -[OFUIGridViewCell gridView](self, "gridView") && objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "draggingSource") && (-[OFUIGridViewCell window](self, "window"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(-[OFUIGridViewCell window](self, "window"), "isDragging") & 1) == 0)
      {
        [-[OFUIGridViewCell gridView](self "gridView")];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![objc_msgSend(-[OFUIGridViewCell gridView](self "gridView")])
        {
          return;
        }

        window = [(OFUIGridViewCell *)self window];
        newDraggingItem = [(OFUIGridViewCell *)self newDraggingItem];
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:{newDraggingItem, 0}];
        [dragging locationInView:window];
        v22 = [window beginDraggingItems:v19 position:objc_msgSend(-[OFUIGridViewCell gridView](self source:{"gridView"), "draggingSource"), v20, v21}];
        [-[OFUIGridViewCell gridView](self "gridView")];
        [v22 setPresentationViewSize:?];
      }

      else if ([-[OFUIGridViewCell gridView](self "gridView")])
      {
        if (!-[OFUIGridViewCell gridView](self, "gridView") || ![-[OFUIGridViewCell gridView](self "gridView")] || (objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "gridViewDelegate"), (objc_opt_respondsToSelector() & 1) == 0) || objc_msgSend(objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "gridViewDelegate"), "gridView:canSelectCell:", -[OFUIGridViewCell gridView](self, "gridView"), self))
        {
          if ([(OFUIGridViewItem *)[(OFUIGridViewCell *)self item] isSelected])
          {
            [(OFUIGridViewCell *)self showSelectionBorder:0];
            mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
            [mainRunLoop runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.100000001)}];
            [(OFUIGridViewCell *)self showSelectionBorder:1];
            mainRunLoop2 = [MEMORY[0x277CBEB88] mainRunLoop];
            [mainRunLoop2 runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.100000001)}];
            [(OFUIGridViewCell *)self setSelected:0];
            self->_continuousSelection = 0;
          }

          else
          {
            [(OFUIGridViewCell *)self showSelectionBorder:1];
            mainRunLoop3 = [MEMORY[0x277CBEB88] mainRunLoop];
            [mainRunLoop3 runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.100000001)}];
            [(OFUIGridViewCell *)self showSelectionBorder:0];
            mainRunLoop4 = [MEMORY[0x277CBEB88] mainRunLoop];
            [mainRunLoop4 runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.100000001)}];
            [(OFUIGridViewCell *)self setSelected:1];
            self->_continuousSelection = 1;
          }

          return;
        }
      }

      [dragging setEnabled:0];

      [dragging setEnabled:1];
    }

    else if ([dragging state] == 2)
    {
      if ([-[OFUIGridViewCell gridView](self "gridView")])
      {
        [dragging locationOfTouch:0 inView:{-[OFUIGridViewCell gridView](self, "gridView")}];
        v9 = [-[OFUIGridViewCell gridView](self "gridView")];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_msgSend(-[OFUIGridViewCell gridView](self "gridView")])
          {
            continuousSelection = self->_continuousSelection;
            v11 = [objc_msgSend(v9 "item")];
            if (continuousSelection)
            {
              if (v11)
              {
                return;
              }

              v12 = v9;
              v13 = 1;
            }

            else
            {
              if (!v11)
              {
                return;
              }

              v12 = v9;
              v13 = 0;
            }

            [v12 setSelected:v13];
          }
        }
      }
    }

    else if ([dragging state] == 3 || objc_msgSend(dragging, "state") == 4)
    {
      gridView = [(OFUIGridViewCell *)self gridView];

      [gridView allowContinuousSelection];
    }
  }
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {
    if (-[OFUIGridViewCell gridView](self, "gridView") && [-[OFUIGridViewCell gridView](self "gridView")] && (-[OFUIGridViewCell window](self, "window"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(-[OFUIGridViewCell window](self, "window"), "isDragging") && (v4 = objc_msgSend(objc_msgSend(-[OFUIGridViewCell window](self, "window"), "draggingSession"), "source"), v4 == objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "draggingSource")))
    {
      window = [(OFUIGridViewCell *)self window];
      newDraggingItem = [(OFUIGridViewCell *)self newDraggingItem];
      [objc_msgSend(window "draggingSession")];
    }

    else if ([(OFUIGridViewCell *)self gridView])
    {
      if ([-[OFUIGridViewCell gridView](self "gridView")])
      {
        [-[OFUIGridViewCell gridView](self "gridView")];
        if (objc_opt_respondsToSelector())
        {
          v5 = [-[OFUIGridViewCell gridView](self "gridView")];
          gridView = [(OFUIGridViewCell *)self gridView];

          [v5 gridView:gridView cellWasTapped:self];
        }
      }
    }
  }
}

- (void)handleSelectAll:(id)all
{
  if ([all state] == 3)
  {
    if ([(OFUIGridViewCell *)self gridView])
    {
      if ([-[OFUIGridViewCell gridView](self "gridView")])
      {
        [-[OFUIGridViewCell gridView](self "gridView")];
        if (objc_opt_respondsToSelector())
        {
          v4 = [-[OFUIGridViewCell gridView](self "gridView")];
          gridView = [(OFUIGridViewCell *)self gridView];

          [v4 gridViewDidToggleSelectAll:gridView];
        }
      }
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if ([-[OFUIGridViewCell gridView](self "gridView")] & 1) != 0 || (objc_msgSend(-[OFUIGridViewCell gridView](self, "gridView"), "isDecelerating"))
  {
    return 0;
  }

  if (self->_selectAllRecognizer != begin)
  {
    return self->_longPressRecognizer == begin || self->_singleTapRecognizer == begin;
  }

  return ([-[OFUIGridViewCell gridView](self "gridView")] & 1) != 0;
}

- (BOOL)hasOperations
{
  selfCopy = self;
  operations = self->_operations;
  objc_sync_enter(operations);
  LOBYTE(selfCopy) = [(NSMutableArray *)selfCopy->_operations count]!= 0;
  objc_sync_exit(operations);
  return selfCopy;
}

- (void)addOperation:(id)operation
{
  operations = self->_operations;
  objc_sync_enter(operations);
  [(NSMutableArray *)self->_operations addObject:operation];

  objc_sync_exit(operations);
}

- (void)removeOperation:(id)operation
{
  operations = self->_operations;
  objc_sync_enter(operations);
  [operation cancel];
  [(NSMutableArray *)self->_operations removeObject:operation];

  objc_sync_exit(operations);
}

- (unint64_t)countOperations
{
  operations = self->_operations;
  objc_sync_enter(operations);
  v4 = [(NSMutableArray *)self->_operations count];
  objc_sync_exit(operations);
  return v4;
}

- (void)enumerateOperations:(id)operations
{
  v16 = *MEMORY[0x277D85DE8];
  operations = self->_operations;
  objc_sync_enter(operations);
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_operations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v7)
  {
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v6);
      }

      (*(operations + 2))(operations, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    (*(operations + 2))(operations, 0, &v14);
  }

  objc_sync_exit(operations);
}

- (void)setOperationsPriority:(int64_t)priority
{
  v15 = *MEMORY[0x277D85DE8];
  operations = self->_operations;
  objc_sync_enter(operations);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_operations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * i) setQueuePriority:priority];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(operations);
}

- (void)cancelAllOperations
{
  v13 = *MEMORY[0x277D85DE8];
  operations = self->_operations;
  objc_sync_enter(operations);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_operations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * i) cancel];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_operations removeAllObjects];
  objc_sync_exit(operations);
}

@end