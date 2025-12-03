@interface TSDAllTouchesDoneGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (TSDAllTouchesDoneGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)p_touchesEndedOrCancelled:(id)cancelled;
- (void)reset;
@end

@implementation TSDAllTouchesDoneGestureRecognizer

- (TSDAllTouchesDoneGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v6.receiver = self;
  v6.super_class = TSDAllTouchesDoneGestureRecognizer;
  v4 = [(TSDAllTouchesDoneGestureRecognizer *)&v6 initWithTarget:target action:action];
  if (v4)
  {
    v4->mTouches = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDAllTouchesDoneGestureRecognizer;
  [(TSDAllTouchesDoneGestureRecognizer *)&v3 dealloc];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSDAllTouchesDoneGestureRecognizer;
  [(TSDAllTouchesDoneGestureRecognizer *)&v3 reset];
  [(NSMutableSet *)self->mTouches removeAllObjects];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([recognizer view], objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)p_touchesEndedOrCancelled:(id)cancelled
{
  [(NSMutableSet *)self->mTouches minusSet:cancelled];
  if (![(NSMutableSet *)self->mTouches count]&& ![(TSDAllTouchesDoneGestureRecognizer *)self state])
  {

    [(TSDAllTouchesDoneGestureRecognizer *)self setState:3];
  }
}

@end