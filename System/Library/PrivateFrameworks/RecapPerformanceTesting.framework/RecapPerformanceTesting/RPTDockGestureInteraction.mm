@interface RPTDockGestureInteraction
- (RPTDockGestureInteraction)initWithGestureStyle:(unint64_t)style;
- (id)interactionByScalingBy:(double)by;
- (id)reversedInteraction;
- (void)invokeWithComposer:(id)composer duration:(double)duration;
@end

@implementation RPTDockGestureInteraction

- (RPTDockGestureInteraction)initWithGestureStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = RPTDockGestureInteraction;
  result = [(RPTDockGestureInteraction *)&v5 init];
  if (result)
  {
    result->_gestureStyle = style;
    result->_amplitude = 1.0;
  }

  return result;
}

- (void)invokeWithComposer:(id)composer duration:(double)duration
{
  composerCopy = composer;
  v7 = [(RPTDockGestureInteraction *)self gestureStyle]- 1;
  v8 = 1.0;
  if (v7 <= 4)
  {
    v8 = dbl_261A28848[v7];
  }

  v9 = [(RPTDockGestureInteraction *)self gestureStyle]& 0xFFFFFFFFFFFFFFFELL;
  interactionOptions = [composerCopy interactionOptions];
  pointerFrequency = [interactionOptions pointerFrequency];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__RPTDockGestureInteraction_invokeWithComposer_duration___block_invoke;
  v13[3] = &unk_279AF38D8;
  v13[4] = self;
  *&v13[5] = v8;
  *&v13[6] = duration;
  if (v9 == 4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  [composerCopy composeDockGestureInMotion:v12 frequency:pointerFrequency actionBlock:v13];
}

void __57__RPTDockGestureInteraction_invokeWithComposer_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = a2;
  [v4 amplitude];
  [v6 updateProgressTo:v3 * v5 duration:*(a1 + 48)];
}

- (id)reversedInteraction
{
  v3 = [RPTDockGestureInteraction alloc];
  gestureStyle = self->_gestureStyle;
  if (gestureStyle > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_261A28870[gestureStyle];
  }

  v6 = [(RPTDockGestureInteraction *)v3 initWithGestureStyle:v5];

  return v6;
}

- (id)interactionByScalingBy:(double)by
{
  v5 = [[RPTDockGestureInteraction alloc] initWithGestureStyle:self->_gestureStyle];
  [(RPTDockGestureInteraction *)self amplitude];
  [(RPTDockGestureInteraction *)v5 setAmplitude:v6 * by];

  return v5;
}

@end