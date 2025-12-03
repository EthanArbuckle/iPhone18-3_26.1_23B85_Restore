@interface _SBSwitcherGenieEffectContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _SBSwitcherGenieEffectContainerView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(_SBSwitcherGenieEffectContainerView *)self subviews];
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
        [(_SBSwitcherGenieEffectContainerView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:eventCopy withEvent:?])
        {
          v14 = 1;
          goto LABEL_11;
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
LABEL_11:

  return v14;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _SBSwitcherGenieEffectContainerView;
  v5 = [(_SBSwitcherGenieEffectContainerView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end