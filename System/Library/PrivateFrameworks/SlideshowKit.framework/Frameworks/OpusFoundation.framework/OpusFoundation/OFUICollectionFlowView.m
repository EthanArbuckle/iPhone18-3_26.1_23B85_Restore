@interface OFUICollectionFlowView
- (BOOL)_isFrameEntirelyVisible:(CGRect)a3;
- (BOOL)isFrameVisible:(CGRect)a3;
- (BOOL)performDragOperation:(id)a3;
- (CGRect)draggingDestination:(id)a3 originalFrameForItem:(id)a4;
- (OFUICollectionFlowView)initWithFrame:(CGRect)a3 collectionViewFlowLayout:(id)a4;
- (float)autoscrollDistance:(CGRect)a3;
- (unint64_t)draggingDestinationEntered:(id)a3;
- (unint64_t)draggingDestinationUpdated:(id)a3;
- (void)_cleanupDragging:(id)a3;
- (void)_prepareDragging:(id)a3;
- (void)autoscroll:(float)a3;
- (void)dealloc;
- (void)draggingDestinationEnded:(id)a3 cancelled:(BOOL)a4;
- (void)draggingDestinationExited:(id)a3;
- (void)draggingDestinationWillEnd:(id)a3 cancelled:(BOOL)a4;
- (void)registerDraggingPasteboardType:(id)a3;
- (void)setDraggingEmptyIndexPath:(id)a3 session:(id)a4;
- (void)setDraggingSelectionIndexPath:(id)a3;
@end

@implementation OFUICollectionFlowView

- (OFUICollectionFlowView)initWithFrame:(CGRect)a3 collectionViewFlowLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = OFUICollectionFlowView;
  v5 = [(OFUICollectionFlowView *)&v10 initWithFrame:a3.origin.x collectionViewLayout:a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [a4 scrollDirection];
    v7 = v6 == 0;
    v8 = v6 != 0;
    [(OFUICollectionFlowView *)v5 setAlwaysBounceHorizontal:v8];
    [(OFUICollectionFlowView *)v5 setAlwaysBounceVertical:v7];
    [(OFUICollectionFlowView *)v5 setShowsHorizontalScrollIndicator:v8];
    [(OFUICollectionFlowView *)v5 setShowsVerticalScrollIndicator:v7];
    v5->_draggingDelegate = 0;
    v5->_draggingPasteboardTypes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->_isDragging = 0;
    v5->_draggingSelectionIndexPath = 0;
    v5->_draggingEmptyIndexPath = 0;
    v5->_isAnimating = 0;
    v5->_mergeRectInset = 10.0;
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_draggingDelegate, 0);
  draggingPasteboardTypes = self->_draggingPasteboardTypes;
  if (draggingPasteboardTypes)
  {

    self->_draggingPasteboardTypes = 0;
  }

  draggingSelectionIndexPath = self->_draggingSelectionIndexPath;
  if (draggingSelectionIndexPath)
  {

    self->_draggingSelectionIndexPath = 0;
  }

  draggingEmptyIndexPath = self->_draggingEmptyIndexPath;
  if (draggingEmptyIndexPath)
  {

    self->_draggingEmptyIndexPath = 0;
  }

  v6.receiver = self;
  v6.super_class = OFUICollectionFlowView;
  [(OFUICollectionFlowView *)&v6 dealloc];
}

- (void)registerDraggingPasteboardType:(id)a3
{
  if (([(NSMutableArray *)self->_draggingPasteboardTypes containsObject:?]& 1) == 0)
  {
    draggingPasteboardTypes = self->_draggingPasteboardTypes;

    [(NSMutableArray *)draggingPasteboardTypes addObject:a3];
  }
}

- (void)setDraggingSelectionIndexPath:(id)a3
{
  if (self->_draggingSelectionIndexPath)
  {
    v5 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:?];
    if (v5)
    {
      [v5 setHighlighted:0];
    }

    else if (OFLoggerLevel >= 2)
    {
      [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:153 andFormat:@"Seriously, how can we end up here while we are dragging with a valid index path set, come on!"];
    }
  }

  if (a3)
  {
    v6 = a3;
    self->_draggingSelectionIndexPath = v6;
    v7 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:v6];
    if (v7)
    {
      if (!self->_isAnimating)
      {

        [v7 setHighlighted:1];
      }
    }

    else if (OFLoggerLevel >= 2)
    {

      [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:174 andFormat:@"Seriously, how can we end up here while we are dragging with a valid index path set, come on!"];
    }
  }

  else
  {
    self->_draggingSelectionIndexPath = 0;
  }
}

- (void)setDraggingEmptyIndexPath:(id)a3 session:(id)a4
{
  if (([(NSIndexPath *)self->_draggingEmptyIndexPath isEqual:?]& 1) == 0)
  {
    draggingEmptyIndexPath = self->_draggingEmptyIndexPath;
    if (a3)
    {
      v8 = [(OFUICollectionFlowView *)self draggingDelegate];
      if (draggingEmptyIndexPath)
      {
        if (v8)
        {
          [(OFUICollectionFlowView *)self draggingDelegate];
          if (objc_opt_respondsToSelector())
          {
            if (([(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionView:self moveEmptyItemAtIndexPath:self->_draggingEmptyIndexPath toIndexPath:a3 session:a4]& 1) == 0 && OFLoggerLevel >= 2)
            {
              [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:196 andFormat:@"We are in an unstable state which is unexpected, trying to recover with no guarantee..."];
            }

            [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:0];
            v9 = [(NSIndexPath *)self->_draggingEmptyIndexPath item];
            if (v9 >= [(OFUICollectionFlowView *)self numberOfItemsInSection:[(NSIndexPath *)self->_draggingEmptyIndexPath section]])
            {
              [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:a3];
              goto LABEL_35;
            }

            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke;
            v18[3] = &unk_279C89FB8;
            v18[4] = self;
            v18[5] = a3;
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_2;
            v17[3] = &unk_279C8A230;
            v17[4] = self;
            v17[5] = a3;
            v10 = v18;
            v11 = v17;
            goto LABEL_29;
          }
        }

        if (OFLoggerLevel >= 2)
        {
          v12 = 218;
          goto LABEL_34;
        }

LABEL_35:

        self->_draggingEmptyIndexPath = a3;
        return;
      }

      if (v8)
      {
        [(OFUICollectionFlowView *)self draggingDelegate];
        if (objc_opt_respondsToSelector())
        {
          if (([(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionView:self insertEmptyItemAtIndexPath:a3 session:a4]& 1) == 0 && OFLoggerLevel >= 2)
          {
            [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:228 andFormat:@"We are in an unstable state which is unexpected, trying to recover with no guarantee..."];
          }

          [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:0];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_3;
          v16[3] = &unk_279C89FB8;
          v16[4] = self;
          v16[5] = a3;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_4;
          v15[3] = &unk_279C8A208;
          v15[4] = self;
          v10 = v16;
          v11 = v15;
LABEL_29:
          [(OFUICollectionFlowView *)self performBatchUpdates:v10 completion:v11];
          goto LABEL_35;
        }
      }

      if (OFLoggerLevel < 2)
      {
        goto LABEL_35;
      }

      v12 = 243;
    }

    else
    {
      if (!draggingEmptyIndexPath)
      {
        goto LABEL_35;
      }

      if ([(OFUICollectionFlowView *)self draggingDelegate])
      {
        [(OFUICollectionFlowView *)self draggingDelegate];
        if (objc_opt_respondsToSelector())
        {
          if (([(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionView:self removeEmptyItemAtIndexPath:self->_draggingEmptyIndexPath session:a4]& 1) == 0 && OFLoggerLevel >= 2)
          {
            [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:256 andFormat:@"We are in an unstable state which is unexpected, trying to recover with no guarantee..."];
          }

          [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:0];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_5;
          v14[3] = &unk_279C89F90;
          v14[4] = self;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_6;
          v13[3] = &unk_279C8A208;
          v13[4] = self;
          v10 = v14;
          v11 = v13;
          goto LABEL_29;
        }
      }

      if (OFLoggerLevel < 2)
      {
        goto LABEL_35;
      }

      v12 = 271;
    }

LABEL_34:
    [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:v12 andFormat:@"Seriously, how can we end up here if we have dragging insertion in place, come on!"];
    goto LABEL_35;
  }

  [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:a3];
}

uint64_t __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 3409) = 1;
  [*(a1 + 32) insertItemsAtIndexPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", *(a1 + 40))}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDraggingSelectionIndexPath:v3];
}

uint64_t __60__OFUICollectionFlowView_setDraggingEmptyIndexPath_session___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 3409) = 1;
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObject:v1[428]];

  return [v1 deleteItemsAtIndexPaths:v2];
}

- (void)_prepareDragging:(id)a3
{
  if (!self->_isDragging)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_isDragging = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__OFUICollectionFlowView__prepareDragging___block_invoke;
    v5[3] = &unk_279C89F90;
    v5[4] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:196610 delay:v5 options:&__block_literal_global_8 animations:0.200000003 completion:0.0];
  }
}

uint64_t __43__OFUICollectionFlowView__prepareDragging___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentationView];

  return [v1 setAlpha:0.800000012];
}

- (void)_cleanupDragging:(id)a3
{
  if (self->_isDragging)
  {
    [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:0];
    [(OFUICollectionFlowView *)self setDraggingEmptyIndexPath:0 session:a3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__OFUICollectionFlowView__cleanupDragging___block_invoke;
    v5[3] = &unk_279C89F90;
    v5[4] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:196610 delay:v5 options:&__block_literal_global_22 animations:0.200000003 completion:0.0];
    self->_isDragging = 0;
  }
}

uint64_t __43__OFUICollectionFlowView__cleanupDragging___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentationView];

  return [v1 setAlpha:1.0];
}

- (unint64_t)draggingDestinationEntered:(id)a3
{
  if (![objc_msgSend(a3 "pasteboard")])
  {
    return 1;
  }

  if ([(OFUICollectionFlowView *)self draggingDelegate])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionViewDraggingStarted:self];
    }
  }

  [a3 setDelayUpdates:1];
  if ([a3 sourceOperation] != 2)
  {
    if ([a3 sourceOperation] == 4)
    {
      v5 = 4;
      goto LABEL_9;
    }

    return 1;
  }

  v5 = 2;
LABEL_9:
  [(OFUICollectionFlowView *)self _prepareDragging:a3];
  return v5;
}

- (unint64_t)draggingDestinationUpdated:(id)a3
{
  [a3 position];
  -[OFUICollectionFlowView convertPoint:fromView:](self, "convertPoint:fromView:", [a3 window], v5, v6);
  v8 = v7;
  v10 = v9;
  v11 = [(OFUICollectionFlowView *)self indexPathForItemAtPoint:?];
  v12 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:v11];
  v13 = v12;
  if (!v11 || !v12)
  {
    if (![-[OFUICollectionFlowView dataSource](self "dataSource")])
    {
      v20 = MEMORY[0x277CCAA70];
      v19 = 0;
LABEL_10:
      v11 = [v20 indexPathForItem:v19 inSection:0];
      goto LABEL_11;
    }

    [-[OFUICollectionFlowView collectionViewLayout](self "collectionViewLayout")];
    v8 = v8 + v14;
    v11 = [(OFUICollectionFlowView *)self indexPathForItemAtPoint:v8, v10];
    v15 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:v11];
    v13 = v15;
    if (!v11 || !v15)
    {
      draggingEmptyIndexPath = self->_draggingEmptyIndexPath;
      v17 = MEMORY[0x277CCAA70];
      v18 = [-[OFUICollectionFlowView dataSource](self "dataSource")];
      v19 = v18;
      if (draggingEmptyIndexPath)
      {
        v19 = v18 - 1;
      }

      v20 = v17;
      goto LABEL_10;
    }
  }

LABEL_11:
  v21 = v11;
  if (self->_draggingEmptyIndexPath)
  {
    v22 = [v11 item];
    v21 = v11;
    if (v22 > [(NSIndexPath *)self->_draggingEmptyIndexPath item])
    {
      v21 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v11 inSection:{"item") + 1, objc_msgSend(v11, "section")}];
    }
  }

  v23 = 0;
  if ([(OFUICollectionFlowView *)self draggingDelegate])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFUICollectionFlowView *)self draggingDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(OFUICollectionFlowView *)self draggingDelegate];
        if (objc_opt_respondsToSelector())
        {
          [(OFUICollectionFlowView *)self draggingDelegate];
          if (objc_opt_respondsToSelector())
          {
            [(OFUICollectionFlowView *)self draggingDelegate];
            if (objc_opt_respondsToSelector() & 1) != 0 && (-[OFUICollectionFlowViewDragging collectionView:canInsertItemsFromPasteboard:atIndexPath:session:](-[OFUICollectionFlowView draggingDelegate](self, "draggingDelegate"), "collectionView:canInsertItemsFromPasteboard:atIndexPath:session:", self, [a3 pasteboard], v21, a3))
            {
              v23 = 1;
            }
          }
        }
      }
    }
  }

  v24 = self->_draggingEmptyIndexPath;
  if (v24)
  {
    v25 = [(NSIndexPath *)v24 isEqual:v11];
    if (!v13 || (v25 & 1) != 0)
    {
      goto LABEL_46;
    }
  }

  else if (!v13)
  {
LABEL_46:
    if (v23)
    {
      -[OFUICollectionFlowView setDraggingEmptyIndexPath:session:](self, "setDraggingEmptyIndexPath:session:", [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v11 inSection:{"item"), objc_msgSend(v11, "section")}], a3);
      return 16;
    }

    else
    {
      [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:0];
      return 1;
    }
  }

  v26 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:self->_draggingSelectionIndexPath];
  mergeRectInset = self->_mergeRectInset;
  if (v23 && self->_draggingEmptyIndexPath)
  {
    v28 = [v11 item];
    v29 = [(NSIndexPath *)self->_draggingEmptyIndexPath item];
    [v13 frame];
    v31 = v30;
    if (v28 >= v29)
    {
      [v13 frame];
      v35 = v40;
      [v13 frame];
      v37 = v41 - mergeRectInset;
      goto LABEL_34;
    }

    v32 = mergeRectInset;
    v31 = v30 + v32;
  }

  else
  {
    [v13 frame];
    v32 = mergeRectInset;
    v31 = v33 + v32;
  }

  [v13 frame];
  v35 = v34;
  [v13 frame];
  v37 = v36 - v32;
LABEL_34:
  [v13 frame];
  v45.origin.x = v31;
  v45.origin.y = v35;
  v45.size.width = v37;
  v43.x = v8;
  v43.y = v10;
  if (!CGRectContainsPoint(v45, v43))
  {
    goto LABEL_46;
  }

  if (![(OFUICollectionFlowView *)self draggingDelegate])
  {
    goto LABEL_46;
  }

  [(OFUICollectionFlowView *)self draggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_46;
  }

  [(OFUICollectionFlowView *)self draggingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || !-[OFUICollectionFlowViewDragging collectionView:canMergeWithItemsFromPasteboard:atIndexPath:session:](-[OFUICollectionFlowView draggingDelegate](self, "draggingDelegate"), "collectionView:canMergeWithItemsFromPasteboard:atIndexPath:session:", self, [a3 pasteboard], v11, a3))
  {
    goto LABEL_46;
  }

  if (self->_draggingEmptyIndexPath)
  {
    v38 = [v11 item];
    if (v38 < [(NSIndexPath *)self->_draggingEmptyIndexPath item])
    {
      [(OFUICollectionFlowView *)self setDraggingEmptyIndexPath:0 session:a3];
    }
  }

  [v26 frame];
  v44.x = v8;
  v44.y = v10;
  if (CGRectContainsPoint(v46, v44))
  {

    return [a3 destinationOperation];
  }

  else
  {
    [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:v11];
    return 32;
  }
}

- (void)draggingDestinationExited:(id)a3
{
  if ([(OFUICollectionFlowView *)self draggingDelegate])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionViewDraggingWillFinish:self];
    }
  }

  if ([(OFUICollectionFlowView *)self draggingDelegate])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionViewDraggingDidFinish:self];
    }
  }

  [(OFUICollectionFlowView *)self _cleanupDragging:a3];
}

- (BOOL)performDragOperation:(id)a3
{
  if ([a3 destinationOperation] == 32)
  {
    v5 = -[OFUICollectionFlowViewDragging collectionView:mergeWithItemsFromPasteboard:atIndexPath:session:](-[OFUICollectionFlowView draggingDelegate](self, "draggingDelegate"), "collectionView:mergeWithItemsFromPasteboard:atIndexPath:session:", self, [a3 pasteboard], self->_draggingSelectionIndexPath, a3);
    v6 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:self->_draggingSelectionIndexPath];
    if (v6)
    {
      [v6 setHighlighted:0];
    }

    if (v5)
    {
      if ([a3 animation] == 1)
      {
        [a3 setAnimation:8];
      }

      return 1;
    }

LABEL_27:
    [a3 setAnimation:2];
    return 0;
  }

  if ([a3 destinationOperation] == 16)
  {
    if (self->_draggingEmptyIndexPath)
    {
      if ([(OFUICollectionFlowView *)self draggingDelegate])
      {
        [(OFUICollectionFlowView *)self draggingDelegate];
        if (objc_opt_respondsToSelector())
        {
          if (([(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionView:self removeEmptyItemAtIndexPath:self->_draggingEmptyIndexPath session:a3]& 1) != 0 || OFLoggerLevel < 2)
          {
            goto LABEL_19;
          }

          v7 = @"We are in an unstable state which is unexpected, trying to recover with no guarantee...";
          v8 = 557;
          goto LABEL_18;
        }
      }

      if (OFLoggerLevel >= 2)
      {
        v7 = @"Seriously, how can we end up here if we have dragging insertion in place, come on!";
        v8 = 562;
LABEL_18:
        [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Kit/OFUICollectionFlowView.m" line:v8 andFormat:v7];
      }
    }

    else if (OFLoggerLevel >= 2)
    {
      v7 = @"Seriously, how can we end up here if we have dragging insertion in place, come on!";
      v8 = 567;
      goto LABEL_18;
    }

LABEL_19:
    v9 = -[OFUICollectionFlowViewDragging collectionView:insertItemsFromPasteboard:atIndexPath:session:](-[OFUICollectionFlowView draggingDelegate](self, "draggingDelegate"), "collectionView:insertItemsFromPasteboard:atIndexPath:session:", self, [a3 pasteboard], self->_draggingEmptyIndexPath, a3);
    v10 = [(OFUICollectionFlowView *)self cellForItemAtIndexPath:self->_draggingEmptyIndexPath];
    if (v9)
    {
      v11 = v10;
      if ([a3 animation] == 1)
      {
        [a3 setAnimation:4];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__OFUICollectionFlowView_performDragOperation___block_invoke;
      v14[3] = &unk_279C89EF0;
      v14[4] = self;
      v14[5] = v9;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__OFUICollectionFlowView_performDragOperation___block_invoke_2;
      v13[3] = &unk_279C8A208;
      v13[4] = self;
      [(OFUICollectionFlowView *)self performBatchUpdates:v14 completion:v13];
      if (v11)
      {
        [v11 setHighlighted:0];
      }

      return 1;
    }

    if (self->_draggingEmptyIndexPath)
    {
      -[OFUICollectionFlowView deleteItemsAtIndexPaths:](self, "deleteItemsAtIndexPaths:", [MEMORY[0x277CBEA60] arrayWithObject:?]);
      [(OFUICollectionFlowView *)self setDraggingEmptyIndexPath:0];
    }

    goto LABEL_27;
  }

  return 0;
}

uint64_t __47__OFUICollectionFlowView_performDragOperation___block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  *(*(result + 32) + 3409) = 1;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = [MEMORY[0x277CBEB18] array];
    if (*(v3 + 40) != 1)
    {
      v5 = 0;
      do
      {
        [v4 addObject:{objc_msgSend(MEMORY[0x277CCAA70], "indexPathForItem:inSection:", ++v5 + objc_msgSend(*(*(v3 + 32) + 3424), "item"), objc_msgSend(*(*(v3 + 32) + 3424), "section"))}];
      }

      while (v5 < *(v3 + 40) - 1);
    }

    v6 = *(v3 + 32);

    return [v6 insertItemsAtIndexPaths:v4];
  }

  return result;
}

- (BOOL)isFrameVisible:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [-[OFUICollectionFlowView collectionViewLayout](self "collectionViewLayout")];
  [(OFUICollectionFlowView *)self contentOffset];
  if (v8 == 1)
  {
    if (x >= v9)
    {
      v11 = x + width;
      [(OFUICollectionFlowView *)self contentOffset];
      v13 = v12;
      [(OFUICollectionFlowView *)self frame];
      v15 = v13 + v14;
      return v11 <= v15;
    }

    return 0;
  }

  if (y < v10)
  {
    return 0;
  }

  v11 = y + height;
  [(OFUICollectionFlowView *)self contentOffset];
  v17 = v16;
  [(OFUICollectionFlowView *)self frame];
  v15 = v17 + v18;
  return v11 <= v15;
}

- (BOOL)_isFrameEntirelyVisible:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(OFUICollectionFlowView *)self convertRect:[(OFUICollectionFlowView *)self window] toView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = CGRectContainsRect(v19, v20);
  if (v16)
  {

    LOBYTE(v16) = [(OFUICollectionFlowView *)self isFrameVisible:x, y, width, height];
  }

  return v16;
}

- (CGRect)draggingDestination:(id)a3 originalFrameForItem:(id)a4
{
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  if ([(OFUICollectionFlowView *)self draggingDelegate])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionView:self originalFrameForItem:a4 session:a3];
      v7 = v11;
      v8 = v12;
      v9 = v13;
      v10 = v14;
    }
  }

  v27.origin.x = v7;
  v27.origin.y = v8;
  v27.size.width = v9;
  v27.size.height = v10;
  if (CGRectIsEmpty(v27))
  {
    v15 = [(NSIndexPath *)[(OFUICollectionFlowView *)self draggingSelectionIndexPath] row];
    v16 = [a3 indexOfItem:a4];
    v17 = -[OFUICollectionFlowView cellForItemAtIndexPath:](self, "cellForItemAtIndexPath:", [MEMORY[0x277CCAA70] indexPathForRow:v16 + v15 inSection:0]);
    [v17 frame];
    if ([(OFUICollectionFlowView *)self isFrameVisible:?])
    {
      v18 = [a3 window];
      [v17 frame];
      [v18 convertRect:self fromView:?];
      v7 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;
    }
  }

  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)draggingDestinationWillEnd:(id)a3 cancelled:(BOOL)a4
{
  if ([(OFUICollectionFlowView *)self draggingDelegate:a3])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(OFUICollectionFlowView *)self draggingDelegate];

      [(OFUICollectionFlowViewDragging *)v5 collectionViewDraggingWillFinish:self];
    }
  }
}

- (void)draggingDestinationEnded:(id)a3 cancelled:(BOOL)a4
{
  if ([(OFUICollectionFlowView *)self draggingDelegate])
  {
    [(OFUICollectionFlowView *)self draggingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(OFUICollectionFlowViewDragging *)[(OFUICollectionFlowView *)self draggingDelegate] collectionViewDraggingDidFinish:self];
    }
  }

  if (self->_draggingEmptyIndexPath && !a4)
  {
    -[OFUICollectionFlowView reloadItemsAtIndexPaths:](self, "reloadItemsAtIndexPaths:", [MEMORY[0x277CBEA60] arrayWithObject:?]);
  }

  [(OFUICollectionFlowView *)self setDraggingEmptyIndexPath:0];

  [(OFUICollectionFlowView *)self _cleanupDragging:a3];
}

- (float)autoscrollDistance:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [-[OFUICollectionFlowView collectionViewLayout](self "collectionViewLayout")];
  [(OFUICollectionFlowView *)self bounds];
  v51.origin.x = v9;
  v51.origin.y = v10;
  v51.size.width = v11;
  v51.size.height = v12;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v13 = CGRectIntersectsRect(v42, v51);
  v14 = 0.0;
  v15 = 0.0;
  if (v8)
  {
    if (v13)
    {
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      MidX = CGRectGetMidX(v43);
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      [(OFUICollectionFlowView *)self bounds];
      v17 = MidX - CGRectGetMinX(v45);
      [(OFUICollectionFlowView *)self bounds];
      MaxX = CGRectGetMaxX(v46);
      if (v17 >= 50.0)
      {
        v24 = MaxX - MidX;
        v15 = 0.0;
        if (v24 < 50.0)
        {
          [(OFUICollectionFlowView *)self _autoscrollDistanceForProximityToEdge:?];
          v15 = v25;
        }
      }

      else
      {
        *&MaxX = v17;
        [(OFUICollectionFlowView *)self _autoscrollDistanceForProximityToEdge:MaxX];
        v15 = -v19;
      }
    }

    [(OFUICollectionFlowView *)self contentOffset];
    v26 = v15;
    if (v27 + v15 >= 0.0)
    {
      [(OFUICollectionFlowView *)self contentSize];
      v29 = v28;
      [(OFUICollectionFlowView *)self contentOffset];
      v31 = v30;
      [(OFUICollectionFlowView *)self frame];
      v33 = v31 + v32;
      goto LABEL_16;
    }
  }

  else
  {
    if (v13)
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      CGRectGetMidX(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      MidY = CGRectGetMidY(v48);
      [(OFUICollectionFlowView *)self bounds];
      v21 = MidY - CGRectGetMinY(v49);
      [(OFUICollectionFlowView *)self bounds];
      MaxY = CGRectGetMaxY(v50);
      if (v21 >= 50.0)
      {
        v34 = MaxY - MidY;
        v15 = 0.0;
        if (v34 < 50.0)
        {
          [(OFUICollectionFlowView *)self _autoscrollDistanceForProximityToEdge:?];
          v15 = v35;
        }
      }

      else
      {
        *&MaxY = v21;
        [(OFUICollectionFlowView *)self _autoscrollDistanceForProximityToEdge:MaxY];
        v15 = -v23;
      }
    }

    [(OFUICollectionFlowView *)self contentOffset];
    v26 = v15;
    if (v36 + v15 >= 0.0)
    {
      [(OFUICollectionFlowView *)self contentSize];
      v29 = v37;
      [(OFUICollectionFlowView *)self contentOffset];
      v39 = v38;
      [(OFUICollectionFlowView *)self frame];
      v33 = v39 + v40;
LABEL_16:
      if (v29 >= v33 + v26)
      {
        return v15;
      }
    }
  }

  return v14;
}

- (void)autoscroll:(float)a3
{
  [-[OFUICollectionFlowView collectionViewLayout](self "collectionViewLayout")];
  [(OFUICollectionFlowView *)self contentOffset];
  [(OFUICollectionFlowView *)self contentSize];
  [(OFUICollectionFlowView *)self frame];
  [(OFUICollectionFlowView *)self contentOffset];
  [(OFUICollectionFlowView *)self contentOffset];
  [(OFUICollectionFlowView *)self setContentOffset:?];
  if (self->_isDragging)
  {

    [(OFUICollectionFlowView *)self setDraggingSelectionIndexPath:0];
  }
}

@end