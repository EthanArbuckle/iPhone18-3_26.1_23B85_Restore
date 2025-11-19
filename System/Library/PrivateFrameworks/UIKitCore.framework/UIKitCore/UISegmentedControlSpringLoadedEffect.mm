@interface UISegmentedControlSpringLoadedEffect
- (UISegmentedControlSpringLoadedEffect)init;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
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

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15 = [v7 view];
  v8 = [v6 targetItem];
  v9 = [v8 integerValue];

  v10 = [v15 _segmentAtIndex:v9];
  [v6 setTargetView:v10];

  v11 = [v6 state];
  v12 = [(UISegmentedControlSpringLoadedEffect *)self blinkEffect];
  [v12 interaction:v7 didChangeWithContext:v6];

  v13 = -1;
  if (v11)
  {
    v14 = v15;
    if (v11 != 3)
    {
      if (v11 != 1)
      {
        goto LABEL_6;
      }

      v13 = v9;
    }
  }

  [v15 _highlightSegment:v13];
  v14 = v15;
LABEL_6:
}

@end