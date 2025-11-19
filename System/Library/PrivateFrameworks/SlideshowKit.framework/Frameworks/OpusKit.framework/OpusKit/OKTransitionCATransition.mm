@interface OKTransitionCATransition
- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13;
- (void)dealloc;
- (void)prepareInView:(id)a3;
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

- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13
{
  if (a6)
  {
    v19.receiver = self;
    v19.super_class = OKTransitionCATransition;
    [(OKTransitionParallaxPush *)&v19 _transitionInView:a3 fromSubview:a4 toSubview:a5 wasInteractive:1 duration:a8 doEaseIn:a9 doEaseOut:a7 isCompleting:a12 wasCancelled:__PAIR16__(a11 fromProgress:a10) completionHandler:a13];
  }

  else
  {
    [(OKTransitionCATransition *)self prepareInView:a3, a4, a5, a6, a8, a9, a7, a12];
    [MEMORY[0x277CD9FF0] begin];
    [(OKTransition *)self duration];
    [MEMORY[0x277CD9FF0] setAnimationDuration:?];
    v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [MEMORY[0x277CD9FF0] setAnimationTimingFunction:v16];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __168__OKTransitionCATransition__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke;
    v18[3] = &unk_279C90700;
    v18[4] = a13;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v18];
    v17 = [a3 layer];
    [v17 addAnimation:self->_transition forKey:*MEMORY[0x277CDA920]];
    [a3 addSubview:a5];
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

- (void)prepareInView:(id)a3
{
  transition = self->_transition;
  if (transition)
  {

    self->_transition = 0;
  }

  v5 = [MEMORY[0x277CDA000] animation];
  self->_transition = v5;

  [(CATransition *)v5 setRemovedOnCompletion:1];
}

@end