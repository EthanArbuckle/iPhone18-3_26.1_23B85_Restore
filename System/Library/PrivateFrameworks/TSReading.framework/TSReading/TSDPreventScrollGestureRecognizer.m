@interface TSDPreventScrollGestureRecognizer
- (TSDPreventScrollGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation TSDPreventScrollGestureRecognizer

- (TSDPreventScrollGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSDPreventScrollGestureRecognizer;
  v4 = [(TSDPreventScrollGestureRecognizer *)&v8 initWithTarget:0 action:0];
  if (v4)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDPreventScrollGestureRecognizer initWithInteractiveCanvasController:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPreventScrollGestureRecognizer.m"), 24, @"invalid nil value for '%s'", "icc"}];
    }

    v4->mICC = a3;
  }

  return v4;
}

- (void)reset
{
  self->mTouch = 0;

  self->mSecondTouch = 0;
  v3.receiver = self;
  v3.super_class = TSDPreventScrollGestureRecognizer;
  [(TSDPreventScrollGestureRecognizer *)&v3 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TSDPreventScrollGestureRecognizer;
  [(TSDPreventScrollGestureRecognizer *)&v18 touchesBegan:a3 withEvent:a4];
  if (![(TSDPreventScrollGestureRecognizer *)self state]&& [(TSDInteractiveCanvasController *)self->mICC currentlyScrolling])
  {
    [(TSDPreventScrollGestureRecognizer *)self setState:5];
    return;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![(TSDPreventScrollGestureRecognizer *)self state])
        {
          mTouch = self->mTouch;
          v12 = v10;
          if (mTouch)
          {
            self->mSecondTouch = v12;
            v13 = 1;
LABEL_15:
            [(TSDPreventScrollGestureRecognizer *)self setState:v13];
            continue;
          }

          self->mTouch = v12;
          if (-[UITouch tapCount](v12, "tapCount") != 1 || ![objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->mICC "layerHost")])
          {
            v13 = 5;
            goto LABEL_15;
          }
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSDPreventScrollGestureRecognizer;
  [(TSDPreventScrollGestureRecognizer *)&v6 touchesEnded:a3 withEvent:a4];
  if (self->mTouch && [a3 containsObject:?])
  {

    self->mTouch = 0;
  }

  if (self->mSecondTouch && [a3 containsObject:?])
  {

    self->mSecondTouch = 0;
  }

  if (!self->mTouch && !self->mSecondTouch)
  {
    [(TSDPreventScrollGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSDPreventScrollGestureRecognizer;
  [(TSDPreventScrollGestureRecognizer *)&v6 touchesCancelled:a3 withEvent:a4];
  if (self->mTouch && [a3 containsObject:?])
  {

    self->mTouch = 0;
  }

  if (self->mSecondTouch && [a3 containsObject:?])
  {

    self->mSecondTouch = 0;
  }

  if (!self->mTouch && !self->mSecondTouch)
  {
    [(TSDPreventScrollGestureRecognizer *)self setState:3];
  }
}

@end