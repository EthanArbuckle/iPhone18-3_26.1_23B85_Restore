@interface TSDEditMenuTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation TSDEditMenuTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSDEditMenuTapGestureRecognizer;
  [(TSDEditMenuTapGestureRecognizer *)&v3 reset];
  self->mIgnoreTargetAction = 0;

  self->mTouchedRep = 0;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7 = [-[TSDEditMenuTapGestureRecognizer delegate](self "delegate")];
  if (!-[TSDEditMenuTapGestureRecognizer numberOfTouches](self, "numberOfTouches") && [began count] == 1 && (objc_msgSend(v7, "currentlyScrolling") & 1) == 0)
  {
    anyObject = [began anyObject];
    if (anyObject)
    {
      v9 = anyObject;
      if ([anyObject tapCount] == 1)
      {
        if (([v9 locationInView:{-[TSDEditMenuTapGestureRecognizer view](self, "view")}], objc_msgSend(v7, "convertBoundsToUnscaledPoint:"), v11 = v10, v13 = v12, v18 = 0, (v14 = objc_msgSend(v7, "hitKnobAtPoint:returningRep:", &v18)) != 0) && objc_msgSend(v18, "wantsEditMenuForTapAtPoint:onKnob:", v14, v11, v13) && (v15 = v18) != 0 || (v16 = objc_msgSend(objc_msgSend(v7, "hitRep:", v11, v13), "repForSelecting")) != 0 && (v15 = v16, objc_msgSend(v16, "info")) && objc_msgSend(objc_msgSend(objc_msgSend(v7, "layerHost"), "asiOSCVC"), "shouldSelectAndShowEditMenuOnFirstTapForRep:", v15))
        {

          self->mTouchedRep = v15;
          self->mIgnoreTargetAction = 0;
          v17.receiver = self;
          v17.super_class = TSDEditMenuTapGestureRecognizer;
          [(TSDEditMenuTapGestureRecognizer *)&v17 touchesBegan:began withEvent:event];
        }
      }
    }
  }

  if (!self->mTouchedRep)
  {
    [(TSDEditMenuTapGestureRecognizer *)self setState:5];
  }
}

@end