@interface PXGAXCoalescingResponder
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (PXGAXResponder)axNextResponder;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (void)_distributeEvents;
- (void)_notifyResponder:(id)responder;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)setPauseEventDelivery:(BOOL)delivery;
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
    axNextResponder = [(PXGAXCoalescingResponder *)self axNextResponder];
    if (axNextResponder)
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

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXGAXCoalescingResponder *)self axNextResponder];
  LOBYTE(action) = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return action;
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PXGAXCoalescingResponder_axGroup_didChange_userInfo___block_invoke;
  v12[3] = &unk_2782AC628;
  v14 = infoCopy;
  changeCopy = change;
  v13 = groupCopy;
  v10 = infoCopy;
  v11 = groupCopy;
  [(PXGAXCoalescingResponder *)self _notifyResponder:v12];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  groupCopy = group;
  axNextResponder = [(PXGAXCoalescingResponder *)self axNextResponder];
  v6 = [axNextResponder axContainingScrollViewForAXGroup:groupCopy];

  return v6;
}

- (void)_notifyResponder:(id)responder
{
  responderCopy = responder;
  axNextResponder = [(PXGAXCoalescingResponder *)self axNextResponder];
  if (axNextResponder)
  {
    if ([(PXGAXCoalescingResponder *)self pauseEventDelivery])
    {
      pendingAXEventBlocks = self->_pendingAXEventBlocks;
      v6 = MEMORY[0x21CEE40A0](responderCopy);
      [(NSMutableArray *)pendingAXEventBlocks addObject:v6];
    }

    else
    {
      responderCopy[2](responderCopy, axNextResponder);
    }
  }
}

- (void)setPauseEventDelivery:(BOOL)delivery
{
  if (self->_pauseEventDelivery != delivery)
  {
    self->_pauseEventDelivery = delivery;
    if (!delivery)
    {
      [(PXGAXCoalescingResponder *)self _distributeEvents];
    }
  }
}

@end