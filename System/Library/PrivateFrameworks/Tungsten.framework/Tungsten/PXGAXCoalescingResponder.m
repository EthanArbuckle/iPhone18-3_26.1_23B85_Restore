@interface PXGAXCoalescingResponder
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (PXGAXResponder)axNextResponder;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (void)_distributeEvents;
- (void)_notifyResponder:(id)a3;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)setPauseEventDelivery:(BOOL)a3;
@end

@implementation PXGAXCoalescingResponder

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->axNextResponder);

  return WeakRetained;
}

- (void)_distributeEvents
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_pendingAXEventBlocks count])
  {
    v3 = [(NSMutableArray *)self->_pendingAXEventBlocks copy];
    [(NSMutableArray *)self->_pendingAXEventBlocks removeAllObjects];
    v4 = [(PXGAXCoalescingResponder *)self axNextResponder];
    if (v4)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXGAXCoalescingResponder *)self axNextResponder];
  LOBYTE(a4) = [v10 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return a4;
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PXGAXCoalescingResponder_axGroup_didChange_userInfo___block_invoke;
  v12[3] = &unk_2782AC628;
  v14 = v9;
  v15 = a4;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(PXGAXCoalescingResponder *)self _notifyResponder:v12];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v4 = a3;
  v5 = [(PXGAXCoalescingResponder *)self axNextResponder];
  v6 = [v5 axContainingScrollViewForAXGroup:v4];

  return v6;
}

- (void)_notifyResponder:(id)a3
{
  v7 = a3;
  v4 = [(PXGAXCoalescingResponder *)self axNextResponder];
  if (v4)
  {
    if ([(PXGAXCoalescingResponder *)self pauseEventDelivery])
    {
      pendingAXEventBlocks = self->_pendingAXEventBlocks;
      v6 = MEMORY[0x21CEE40A0](v7);
      [(NSMutableArray *)pendingAXEventBlocks addObject:v6];
    }

    else
    {
      v7[2](v7, v4);
    }
  }
}

- (void)setPauseEventDelivery:(BOOL)a3
{
  if (self->_pauseEventDelivery != a3)
  {
    self->_pauseEventDelivery = a3;
    if (!a3)
    {
      [(PXGAXCoalescingResponder *)self _distributeEvents];
    }
  }
}

@end