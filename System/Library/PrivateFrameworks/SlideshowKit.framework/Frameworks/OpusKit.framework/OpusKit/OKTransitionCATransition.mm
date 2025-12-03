@interface OKTransitionCATransition
- (void)_transitionInView:(id)view fromSubview:(id)subview toSubview:(id)toSubview wasInteractive:(BOOL)interactive duration:(double)duration doEaseIn:(BOOL)in doEaseOut:(BOOL)out isCompleting:(BOOL)self0 wasCancelled:(BOOL)self1 fromProgress:(double)self2 completionHandler:(id)self3;
- (void)dealloc;
- (void)prepareInView:(id)view;
@end

@implementation OKTransitionCATransition

- (void)dealloc
{
  transition = self->_transition;
  if (transition)
  {

    self->_transition = 0;
  }

  v4.receiver = self;
  v4.super_class = OKTransitionCATransition;
  [(OKTransition *)&v4 dealloc];
}

- (void)_transitionInView:(id)view fromSubview:(id)subview toSubview:(id)toSubview wasInteractive:(BOOL)interactive duration:(double)duration doEaseIn:(BOOL)in doEaseOut:(BOOL)out isCompleting:(BOOL)self0 wasCancelled:(BOOL)self1 fromProgress:(double)self2 completionHandler:(id)self3
{
  if (interactive)
  {
    v19.receiver = self;
    v19.super_class = OKTransitionCATransition;
    [(OKTransitionParallaxPush *)&v19 _transitionInView:view fromSubview:subview toSubview:toSubview wasInteractive:1 duration:in doEaseIn:out doEaseOut:duration isCompleting:progress wasCancelled:__PAIR16__(cancelled fromProgress:completing) completionHandler:handler];
  }

  else
  {
    [(OKTransitionCATransition *)self prepareInView:view, subview, toSubview, interactive, in, out, duration, progress];
    [MEMORY[0x277CD9FF0] begin];
    [(OKTransition *)self duration];
    [MEMORY[0x277CD9FF0] setAnimationDuration:?];
    v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [MEMORY[0x277CD9FF0] setAnimationTimingFunction:v16];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __168__OKTransitionCATransition__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke;
    v18[3] = &unk_279C90700;
    v18[4] = handler;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v18];
    layer = [view layer];
    [layer addAnimation:self->_transition forKey:*MEMORY[0x277CDA920]];
    [view addSubview:toSubview];
    [MEMORY[0x277CD9FF0] commit];
  }
}

uint64_t __168__OKTransitionCATransition__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)prepareInView:(id)view
{
  transition = self->_transition;
  if (transition)
  {

    self->_transition = 0;
  }

  animation = [MEMORY[0x277CDA000] animation];
  self->_transition = animation;

  [(CATransition *)animation setRemovedOnCompletion:1];
}

@end