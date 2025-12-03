@interface PNPPairingViewControllerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PNPPairingViewControllerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [(PNPPairingViewControllerView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        v14 = [v13 hitTest:eventCopy withEvent:?];
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end