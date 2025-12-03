@interface SBHPageManagementListTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBHPageManagementListTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBHPageManagementListTapGestureRecognizer;
  [(SBHPageManagementListTapGestureRecognizer *)&v3 reset];
  [(SBHPageManagementListTapGestureRecognizer *)self setActiveTouch:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v8.receiver = self;
  v8.super_class = SBHPageManagementListTapGestureRecognizer;
  [(SBHPageManagementListTapGestureRecognizer *)&v8 touchesBegan:beganCopy withEvent:event];
  if ([beganCopy count] < 2)
  {
    if (![(SBHPageManagementListTapGestureRecognizer *)self state])
    {
      anyObject = [beganCopy anyObject];
      [(SBHPageManagementListTapGestureRecognizer *)self setActiveTouch:anyObject];
      [(SBHPageManagementListTapGestureRecognizer *)self setState:1];
    }
  }

  else
  {
    [(SBHPageManagementListTapGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBHPageManagementListTapGestureRecognizer;
  movedCopy = moved;
  [(SBHPageManagementListTapGestureRecognizer *)&v11 touchesMoved:movedCopy withEvent:event];
  anyObject = [movedCopy anyObject];
  v8 = [movedCopy count];

  if (v8 > 1)
  {
    v10 = 5;
  }

  else
  {
    activeTouch = [(SBHPageManagementListTapGestureRecognizer *)self activeTouch];

    if (anyObject == activeTouch)
    {
      v10 = 2;
    }

    else
    {
      v10 = 5;
    }
  }

  [(SBHPageManagementListTapGestureRecognizer *)self setState:v10];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBHPageManagementListTapGestureRecognizer;
  endedCopy = ended;
  [(SBHPageManagementListTapGestureRecognizer *)&v11 touchesEnded:endedCopy withEvent:event];
  anyObject = [endedCopy anyObject];
  v8 = [endedCopy count];

  if (v8 > 1)
  {
    v10 = 5;
  }

  else
  {
    activeTouch = [(SBHPageManagementListTapGestureRecognizer *)self activeTouch];

    if (anyObject == activeTouch)
    {
      v10 = 3;
    }

    else
    {
      v10 = 5;
    }
  }

  [(SBHPageManagementListTapGestureRecognizer *)self setState:v10];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SBHPageManagementListTapGestureRecognizer;
  [(SBHPageManagementListTapGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(SBHPageManagementListTapGestureRecognizer *)self setState:4];
}

@end