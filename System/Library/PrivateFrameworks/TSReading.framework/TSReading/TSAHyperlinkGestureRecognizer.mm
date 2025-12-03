@interface TSAHyperlinkGestureRecognizer
- (TSAHyperlinkGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (id)p_smartFieldForTouch:(id)touch outRep:(id *)rep;
- (void)dealloc;
- (void)reset;
- (void)setEnabled:(BOOL)enabled;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TSAHyperlinkGestureRecognizer

- (TSAHyperlinkGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = TSAHyperlinkGestureRecognizer;
  result = [(TSAHyperlinkGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_tapEnabled = 1;
    result->_tapHoldEnabled = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v3 dealloc];
}

- (void)reset
{
  if ([(TSAHyperlinkGestureRecognizer *)self state]!= 3)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  }

  [(TSAHyperlinkGestureRecognizer *)self setHitRep:0];
  [(TSAHyperlinkGestureRecognizer *)self setHitField:0];
  v3.receiver = self;
  v3.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v3 reset];
}

- (void)setEnabled:(BOOL)enabled
{
  v3.receiver = self;
  v3.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v3 setEnabled:enabled];
}

- (void)setState:(int64_t)state
{
  if (state == 5)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    if ([(TSAHyperlinkGestureRecognizer *)self hitRep])
    {
      [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
    }
  }

  v5.receiver = self;
  v5.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v5 setState:state];
}

- (id)p_smartFieldForTouch:(id)touch outRep:(id *)rep
{
  [(TSDInteractiveCanvasController *)self->_icc layoutIfNeeded];
  icc = self->_icc;
  [touch locationInView:{-[TSAHyperlinkGestureRecognizer view](self, "view")}];
  [(TSDInteractiveCanvasController *)icc convertBoundsToUnscaledPoint:?];
  v9 = v8;
  v11 = v10;
  result = [(TSDInteractiveCanvasController *)self->_icc hitRep:?];
  if (result)
  {
    [result convertNaturalPointFromUnscaledCanvas:{v9, v11}];
    v14 = v13;
    v16 = v15;
    objc_opt_class();
    [(TSDInteractiveCanvasController *)self->_icc hitRep:v9, v11];
    result = TSUDynamicCast();
    if (result)
    {
      v17 = result;
      result = [result smartFieldAtPoint:{v14, v16}];
      if (rep)
      {
        if (result)
        {
          *rep = v17;
        }
      }
    }
  }

  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v12 touchesBegan:began withEvent:event];
  self->_wasTapHold = 0;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  if (!self->_tapEnabled && !self->_tapHoldEnabled || [(TSDInteractiveCanvasController *)self->_icc currentlyScrolling])
  {
    goto LABEL_4;
  }

  if (![(TSAHyperlinkGestureRecognizer *)self state])
  {
    if (-[TSAHyperlinkGestureRecognizer numberOfTouches](self, "numberOfTouches") != 1 || (v6 = [began anyObject], objc_msgSend(v6, "locationInView:", -[TSAHyperlinkGestureRecognizer view](self, "view")), self->_touchBeginPoint.x = v7, self->_touchBeginPoint.y = v8, v11 = 0, objc_opt_class(), -[TSAHyperlinkGestureRecognizer p_smartFieldForTouch:outRep:](self, "p_smartFieldForTouch:outRep:", v6, &v11), (v9 = TSUDynamicCast()) == 0))
    {
LABEL_4:
      [(TSAHyperlinkGestureRecognizer *)self setState:5];
      return;
    }

    v10 = v9;
    [(TSAHyperlinkGestureRecognizer *)self setHitRep:v11];
    [(TSAHyperlinkGestureRecognizer *)self setHitField:v10];
    [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
    [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
    if (self->_tapHoldEnabled)
    {
      [(TSAHyperlinkGestureRecognizer *)self performSelector:sel_p_delayElapsed_ withObject:v6 afterDelay:1.0];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v10 touchesMoved:moved withEvent:event];
  anyObject = [moved anyObject];
  v7 = 14.0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(TSWPHyperlinkHostRepProtocol *)self->_hitRep isEditing])
  {
    v7 = 0.0;
  }

  [anyObject locationInView:{-[TSAHyperlinkGestureRecognizer view](self, "view")}];
  if (TSDDistance(self->_touchBeginPoint.x, self->_touchBeginPoint.y, v8, v9) > v7 || [(TSAHyperlinkGestureRecognizer *)self p_smartFieldForTouch:anyObject outRep:0]!= self->_hitField)
  {
    [(TSAHyperlinkGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSAHyperlinkGestureRecognizer;
  [(TSAHyperlinkGestureRecognizer *)&v6 touchesEnded:ended withEvent:event];
  if (!self->_wasTapHold)
  {
    if (self->_tapEnabled)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
      [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
      v5 = 3;
    }

    else
    {
      if (!self->_tapHoldEnabled)
      {
        return;
      }

      v5 = 5;
    }

    [(TSAHyperlinkGestureRecognizer *)self setState:v5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(TSAHyperlinkGestureRecognizer *)self state]!= 3)
  {
    v7.receiver = self;
    v7.super_class = TSAHyperlinkGestureRecognizer;
    [(TSAHyperlinkGestureRecognizer *)&v7 touchesCancelled:cancelled withEvent:event];
    [(TSAHyperlinkGestureRecognizer *)self setState:5];
    [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  }
}

@end