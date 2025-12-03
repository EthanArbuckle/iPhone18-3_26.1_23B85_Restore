@interface _UIKeyboardViewControllerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation _UIKeyboardViewControllerView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(UIView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isUserInteractionEnabled])
        {
          [(UIView *)self convertPoint:v13 toView:x, y];
          if ([v13 pointInside:eventCopy withEvent:?])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end