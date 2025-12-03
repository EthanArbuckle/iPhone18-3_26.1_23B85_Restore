@interface PRSubviewHitTestingView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation PRSubviewHitTestingView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [(PRSubviewHitTestingView *)self subviews];
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
        [(PRSubviewHitTestingView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:eventCopy withEvent:?])
        {

          v14 = 1;
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

  v16.receiver = self;
  v16.super_class = PRSubviewHitTestingView;
  v14 = [(PRSubviewHitTestingView *)&v16 pointInside:eventCopy withEvent:x, y];
LABEL_11:

  return v14;
}

@end