@interface TSDEditMenuTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = [-[TSDEditMenuTapGestureRecognizer delegate](self "delegate")];
  if (!-[TSDEditMenuTapGestureRecognizer numberOfTouches](self, "numberOfTouches") && [a3 count] == 1 && (objc_msgSend(v7, "currentlyScrolling") & 1) == 0)
  {
    v8 = [a3 anyObject];
    if (v8)
    {
      v9 = v8;
      if ([v8 tapCount] == 1)
      {
        if (([v9 locationInView:{-[TSDEditMenuTapGestureRecognizer view](self, "view")}], objc_msgSend(v7, "convertBoundsToUnscaledPoint:"), v11 = v10, v13 = v12, v18 = 0, (v14 = objc_msgSend(v7, "hitKnobAtPoint:returningRep:", &v18)) != 0) && objc_msgSend(v18, "wantsEditMenuForTapAtPoint:onKnob:", v14, v11, v13) && (v15 = v18) != 0 || (v16 = objc_msgSend(objc_msgSend(v7, "hitRep:", v11, v13), "repForSelecting")) != 0 && (v15 = v16, objc_msgSend(v16, "info")) && objc_msgSend(objc_msgSend(objc_msgSend(v7, "layerHost"), "asiOSCVC"), "shouldSelectAndShowEditMenuOnFirstTapForRep:", v15))
        {

          self->mTouchedRep = v15;
          self->mIgnoreTargetAction = 0;
          v17.receiver = self;
          v17.super_class = TSDEditMenuTapGestureRecognizer;
          [(TSDEditMenuTapGestureRecognizer *)&v17 touchesBegan:a3 withEvent:a4];
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