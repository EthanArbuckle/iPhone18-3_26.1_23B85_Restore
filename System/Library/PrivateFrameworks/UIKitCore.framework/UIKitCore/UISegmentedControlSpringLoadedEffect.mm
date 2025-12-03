@interface UISegmentedControlSpringLoadedEffect
- (UISegmentedControlSpringLoadedEffect)init;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation UISegmentedControlSpringLoadedEffect

- (UISegmentedControlSpringLoadedEffect)init
{
  v5.receiver = self;
  v5.super_class = UISegmentedControlSpringLoadedEffect;
  v2 = [(UISegmentedControlSpringLoadedEffect *)&v5 init];
  if (v2)
  {
    v3 = +[UISpringLoadedInteraction _blinkEffect];
    [(UISegmentedControlSpringLoadedEffect *)v2 setBlinkEffect:v3];
  }

  return v2;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  interactionCopy = interaction;
  view = [interactionCopy view];
  targetItem = [contextCopy targetItem];
  integerValue = [targetItem integerValue];

  v10 = [view _segmentAtIndex:integerValue];
  [contextCopy setTargetView:v10];

  state = [contextCopy state];
  blinkEffect = [(UISegmentedControlSpringLoadedEffect *)self blinkEffect];
  [blinkEffect interaction:interactionCopy didChangeWithContext:contextCopy];

  v13 = -1;
  if (state)
  {
    v14 = view;
    if (state != 3)
    {
      if (state != 1)
      {
        goto LABEL_6;
      }

      v13 = integerValue;
    }
  }

  [view _highlightSegment:v13];
  v14 = view;
LABEL_6:
}

@end