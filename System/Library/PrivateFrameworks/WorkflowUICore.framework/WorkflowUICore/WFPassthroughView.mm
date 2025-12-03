@interface WFPassthroughView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation WFPassthroughView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subviews = [(WFPassthroughView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [(WFPassthroughView *)self convertPoint:v13 toView:x, y];
        v14 = [v13 pointInside:eventCopy withEvent:?];
        if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v13, "isUserInteractionEnabled") & v14) == 1)
        {
          [v13 alpha];
          if (v15 > 0.0)
          {
            v16 = 1;
            goto LABEL_13;
          }
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

@end