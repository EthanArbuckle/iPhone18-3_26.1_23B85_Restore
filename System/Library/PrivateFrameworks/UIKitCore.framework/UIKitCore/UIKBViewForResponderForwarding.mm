@interface UIKBViewForResponderForwarding
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIKBViewForResponderForwarding

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
        [v13 convertPoint:self fromView:{x, y}];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  responderForForwarding = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (responderForForwarding)
  {
    responderForForwarding2 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [responderForForwarding2 touchesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  responderForForwarding = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (responderForForwarding)
  {
    responderForForwarding2 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [responderForForwarding2 touchesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  responderForForwarding = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (responderForForwarding)
  {
    responderForForwarding2 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [responderForForwarding2 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  responderForForwarding = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (responderForForwarding)
  {
    responderForForwarding2 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [responderForForwarding2 touchesMoved:movedCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

@end