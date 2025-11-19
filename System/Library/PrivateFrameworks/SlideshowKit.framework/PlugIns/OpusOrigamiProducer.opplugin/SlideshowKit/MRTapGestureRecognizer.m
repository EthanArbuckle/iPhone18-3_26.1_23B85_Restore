@interface MRTapGestureRecognizer
- (void)_addSpecificObjectToAction:(id)a3;
- (void)touchBegan:(id)a3;
- (void)touchEnded:(id)a3;
- (void)touchMoved:(id)a3;
@end

@implementation MRTapGestureRecognizer

- (void)touchBegan:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRTapGestureRecognizer;
  [(MRGestureRecognizer *)&v5 touchBegan:a3];
  if (!self->super._state)
  {
    v4 = [(NSSet *)[(MRTouchSet *)self->super._touchSet touches] count];
    if (v4 == [(MRGestureRecognizer *)self requiredTouchCount])
    {
      self->super._state = 1;
      [(MRGestureRecognizer *)self _sendStartActions];
    }
  }
}

- (void)touchMoved:(id)a3
{
  v7.receiver = self;
  v7.super_class = MRTapGestureRecognizer;
  [(MRGestureRecognizer *)&v7 touchMoved:?];
  self->super._state |= 2u;
  [(MRGestureRecognizer *)self _sendUpdateActions];
  [a3 timestamp];
  if (v5 - self->super._startTime > 0.5 || (v6 = self->super._referenceScale * 20.0, self->super._referenceSize.width * vabdd_f64(self->super._centroidStartLocation.x, self->super._centroidLocation.x) > v6) || self->super._referenceSize.height * vabdd_f64(self->super._centroidStartLocation.y, self->super._centroidLocation.y) > v6)
  {
    [(MRGestureRecognizer *)self abort];
  }
}

- (void)touchEnded:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRTapGestureRecognizer;
  [(MRGestureRecognizer *)&v6 touchEnded:a3];
  if (![(NSSet *)[(MRTouchSet *)self->super._touchSet touches] count])
  {
    state = self->super._state;
    if (state)
    {
      self->super._state = state | 0xC;
      LOBYTE(v4) = self->super._requiredTouchCount;
      self->super._score = v4;
    }

    else
    {
      [(MRGestureRecognizer *)self abort];
    }
  }
}

- (void)_addSpecificObjectToAction:(id)a3
{
  v6 = objc_alloc_init(MRGesturePanZoomRotation);
  [a3 time];
  v6->time = v5;
  *&v6->x = self->super._centroidLocation;
  v6->countOfTouches = [(NSSet *)[(MRTouchSet *)self->super._touchSet touches] count];
  v6->okToAnimate = 1;
  [a3 setSpecificObject:?];
}

@end