@interface SBUIAnimationPropertyAnimator
- (BOOL)isReversed;
- (SBUIAnimationPropertyAnimator)initWithPropertyAnimator:(id)animator duration:(double)duration;
- (SBUIAnimationPropertyAnimator)initWithPropertyAnimatorGenerator:(id)generator;
- (double)transitionDuration:(id)duration;
- (void)_executeGenerator:(id)generator;
- (void)addCompletion:(id)completion;
- (void)animateTransition:(id)transition;
- (void)reverseAnimation;
@end

@implementation SBUIAnimationPropertyAnimator

- (SBUIAnimationPropertyAnimator)initWithPropertyAnimatorGenerator:(id)generator
{
  generatorCopy = generator;
  if (!generatorCopy)
  {
    [(SBUIAnimationPropertyAnimator *)a2 initWithPropertyAnimatorGenerator:?];
  }

  v10.receiver = self;
  v10.super_class = SBUIAnimationPropertyAnimator;
  v6 = [(SBUIAnimationPropertyAnimator *)&v10 init];
  if (v6)
  {
    v7 = [generatorCopy copy];
    generator = v6->_generator;
    v6->_generator = v7;
  }

  return v6;
}

- (SBUIAnimationPropertyAnimator)initWithPropertyAnimator:(id)animator duration:(double)duration
{
  animatorCopy = animator;
  if (!animatorCopy)
  {
    [SBUIAnimationPropertyAnimator initWithPropertyAnimator:a2 duration:self];
  }

  v12.receiver = self;
  v12.super_class = SBUIAnimationPropertyAnimator;
  v9 = [(SBUIAnimationPropertyAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyAnimator, animator);
    v10->_duration = duration;
  }

  return v10;
}

- (BOOL)isReversed
{
  propertyAnimator = [(SBUIAnimationPropertyAnimator *)self propertyAnimator];
  isReversed = [propertyAnimator isReversed];

  return isReversed;
}

- (void)reverseAnimation
{
  ++self->_reverseCount;
  propertyAnimator = [(SBUIAnimationPropertyAnimator *)self propertyAnimator];
  [propertyAnimator setReversed:{-[SBUIAnimationPropertyAnimator isReversed](self, "isReversed") ^ 1}];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  propertyAnimator = [(SBUIAnimationPropertyAnimator *)self propertyAnimator];

  if (propertyAnimator)
  {
    propertyAnimator2 = [(SBUIAnimationPropertyAnimator *)self propertyAnimator];
    [propertyAnimator2 addCompletion:completionCopy];
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    if (!completionBlocks)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = self->_completionBlocks;
      self->_completionBlocks = v7;

      completionBlocks = self->_completionBlocks;
    }

    propertyAnimator2 = [completionCopy copy];
    [(NSMutableArray *)completionBlocks addObject:propertyAnimator2];
  }
}

- (double)transitionDuration:(id)duration
{
  durationCopy = duration;
  generator = [(SBUIAnimationPropertyAnimator *)self generator];

  if (generator)
  {
    [(SBUIAnimationPropertyAnimator *)self _executeGenerator:durationCopy];
  }

  [(SBUIAnimationPropertyAnimator *)self duration];
  v7 = v6;

  return v7;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  generator = [(SBUIAnimationPropertyAnimator *)self generator];

  if (generator)
  {
    [(SBUIAnimationPropertyAnimator *)self _executeGenerator:transitionCopy];
  }

  [(SBUIAnimationPropertyAnimator *)self prepareToRunAnimation:transitionCopy];
  propertyAnimator = [(SBUIAnimationPropertyAnimator *)self propertyAnimator];
  [propertyAnimator startAnimation];

  self->_wasStarted = 1;
}

- (void)_executeGenerator:(id)generator
{
  v23 = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  p_propertyAnimator = &self->_propertyAnimator;
  if (!self->_propertyAnimator)
  {
    generator = [(SBUIAnimationPropertyAnimator *)self generator];
    v8 = (generator)[2](generator, generatorCopy);
    propertyAnimator = self->_propertyAnimator;
    self->_propertyAnimator = v8;

    v10 = self->_propertyAnimator;
    if (!v10)
    {
      [(SBUIAnimationPropertyAnimator *)a2 _executeGenerator:&self->_propertyAnimator, &v21];
      v10 = v21;
    }

    [(UIViewPropertyAnimator *)v10 duration];
    self->_duration = v11;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_completionBlocks;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(UIViewPropertyAnimator *)*p_propertyAnimator addCompletion:*(*(&v17 + 1) + 8 * v16++), v17];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)initWithPropertyAnimatorGenerator:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIAnimationPropertyAnimator.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"generator"}];
}

- (void)initWithPropertyAnimator:(uint64_t)a1 duration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIAnimationPropertyAnimator.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"animator"}];
}

- (void)_executeGenerator:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBUIAnimationPropertyAnimator.m" lineNumber:108 description:@"SBUIAnimationPropertyAnimator needs a UIViewPropertyAnimator."];

  *a4 = *a3;
}

@end