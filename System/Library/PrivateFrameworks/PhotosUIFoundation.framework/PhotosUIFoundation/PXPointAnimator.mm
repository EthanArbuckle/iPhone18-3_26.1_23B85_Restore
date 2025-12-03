@interface PXPointAnimator
- (CGPoint)approximateVelocity;
- (CGPoint)presentationValue;
- (CGPoint)value;
- (NSString)description;
- (PXPointAnimator)initWithValue:(CGPoint)value epsilon:(double)epsilon;
- (void)_setInternalValue:(CGPoint)value;
- (void)_update;
- (void)didPerformChanges;
- (void)handleDisplayLink:(id)link;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)performChangesUsingDefaultSpringAnimationWithInitialVelocity:(CGPoint)velocity changes:(id)changes;
- (void)performChangesUsingSpringAnimationWithStiffness:(double)stiffness dampingRatio:(double)ratio initialVelocity:(CGPoint)velocity changes:(id)changes;
- (void)performChangesWithDuration:(double)duration curve:(int64_t)curve changes:(id)changes;
- (void)performChangesWithoutAnimation:(id)animation;
- (void)setIsAnimating:(BOOL)animating;
- (void)setLabel:(id)label;
- (void)setPresentationValue:(CGPoint)value;
- (void)setValue:(CGPoint)value;
@end

@implementation PXPointAnimator

- (CGPoint)presentationValue
{
  x = self->_presentationValue.x;
  y = self->_presentationValue.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)value
{
  x = self->_value.x;
  y = self->_value.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)handleDisplayLink:(id)link
{
  linkCopy = link;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PXPointAnimator_handleDisplayLink___block_invoke;
  v7[3] = &unk_1E7BB7D80;
  v7[4] = self;
  v8 = linkCopy;
  v6.receiver = self;
  v6.super_class = PXPointAnimator;
  v5 = linkCopy;
  [(PXObservable *)&v6 performChanges:v7];
}

uint64_t __37__PXPointAnimator_handleDisplayLink___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) handleDisplayLink:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 handleDisplayLink:v2];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5.receiver = self;
  v5.super_class = PXPointAnimator;
  [(PXObservable *)&v5 performChanges:&__block_literal_global_14906, change, context];
}

- (void)setValue:(CGPoint)value
{
  y = value.y;
  [(PXMutableNumberAnimator *)self->_xAnimator setValue:value.x];
  yAnimator = self->_yAnimator;

  [(PXMutableNumberAnimator *)yAnimator setValue:y];
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXPointAnimator;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXPointAnimator *)self _update];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PXPointAnimator_performChanges___block_invoke;
  v7[3] = &unk_1E7BB7C98;
  v7[4] = self;
  v8 = changesCopy;
  v6.receiver = self;
  v6.super_class = PXPointAnimator;
  v5 = changesCopy;
  [(PXObservable *)&v6 performChanges:v7];
}

void __34__PXPointAnimator_performChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PXPointAnimator_performChanges___block_invoke_2;
  v4[3] = &unk_1E7BB7C70;
  v4[4] = v2;
  v5 = v1;
  [v3 performChanges:v4];
}

void __34__PXPointAnimator_performChanges___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PXPointAnimator_performChanges___block_invoke_3;
  v4[3] = &unk_1E7BB7C70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performChanges:v4];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  labelCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"x_%@", labelCopy];
  [(PXMutableNumberAnimator *)self->_xAnimator setLabel:labelCopy];

  labelCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y_%@", labelCopy];
  [(PXMutableNumberAnimator *)self->_yAnimator setLabel:labelCopy2];
}

- (void)performChangesUsingSpringAnimationWithStiffness:(double)stiffness dampingRatio:(double)ratio initialVelocity:(CGPoint)velocity changes:(id)changes
{
  y = velocity.y;
  x = velocity.x;
  changesCopy = changes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__PXPointAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke;
  v14[3] = &unk_1E7BB7D38;
  stiffnessCopy = stiffness;
  ratioCopy = ratio;
  v18 = x;
  v19 = y;
  v14[4] = self;
  v15 = changesCopy;
  v13.receiver = self;
  v13.super_class = PXPointAnimator;
  v12 = changesCopy;
  [(PXObservable *)&v13 performChanges:v14];
}

void __104__PXPointAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __104__PXPointAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke_2;
  v6[3] = &unk_1E7BB7D10;
  v6[4] = v1;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 64);
  v7 = *(a1 + 40);
  [v2 performChangesUsingSpringAnimationWithStiffness:v6 dampingRatio:v3 initialVelocity:v4 changes:v5];
}

void __104__PXPointAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __104__PXPointAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke_3;
  v7[3] = &unk_1E7BB7C70;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v2 performChangesUsingSpringAnimationWithStiffness:v7 dampingRatio:v3 initialVelocity:v4 changes:v5];
}

- (void)performChangesUsingDefaultSpringAnimationWithInitialVelocity:(CGPoint)velocity changes:(id)changes
{
  y = velocity.y;
  x = velocity.x;
  changesCopy = changes;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PXPointAnimator_performChangesUsingDefaultSpringAnimationWithInitialVelocity_changes___block_invoke;
  v10[3] = &unk_1E7BB7CE8;
  v12 = x;
  v13 = y;
  v10[4] = self;
  v11 = changesCopy;
  v9.receiver = self;
  v9.super_class = PXPointAnimator;
  v8 = changesCopy;
  [(PXObservable *)&v9 performChanges:v10];
}

void __88__PXPointAnimator_performChangesUsingDefaultSpringAnimationWithInitialVelocity_changes___block_invoke(double *a1)
{
  v2 = *(a1 + 4);
  v1 = *(a1 + 5);
  v3 = *(v2 + 96);
  v4 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PXPointAnimator_performChangesUsingDefaultSpringAnimationWithInitialVelocity_changes___block_invoke_2;
  v5[3] = &unk_1E7BB7CC0;
  v5[4] = v2;
  v7 = *(a1 + 3);
  v6 = v1;
  [v3 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v5 changes:v4];
}

void __88__PXPointAnimator_performChangesUsingDefaultSpringAnimationWithInitialVelocity_changes___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PXPointAnimator_performChangesUsingDefaultSpringAnimationWithInitialVelocity_changes___block_invoke_3;
  v5[3] = &unk_1E7BB7C70;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v5 changes:v3];
}

- (void)performChangesWithDuration:(double)duration curve:(int64_t)curve changes:(id)changes
{
  changesCopy = changes;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PXPointAnimator_performChangesWithDuration_curve_changes___block_invoke;
  v11[3] = &unk_1E7BB7CE8;
  durationCopy = duration;
  curveCopy = curve;
  v11[4] = self;
  v12 = changesCopy;
  v10.receiver = self;
  v10.super_class = PXPointAnimator;
  v9 = changesCopy;
  [(PXObservable *)&v10 performChanges:v11];
}

void __60__PXPointAnimator_performChangesWithDuration_curve_changes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PXPointAnimator_performChangesWithDuration_curve_changes___block_invoke_2;
  v5[3] = &unk_1E7BB7CC0;
  v5[4] = v1;
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 40);
  [v2 performChangesWithDuration:v4 curve:v5 changes:v3];
}

void __60__PXPointAnimator_performChangesWithDuration_curve_changes___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PXPointAnimator_performChangesWithDuration_curve_changes___block_invoke_3;
  v6[3] = &unk_1E7BB7C70;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 performChangesWithDuration:v4 curve:v6 changes:v3];
}

- (void)performChangesWithoutAnimation:(id)animation
{
  animationCopy = animation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PXPointAnimator_performChangesWithoutAnimation___block_invoke;
  v7[3] = &unk_1E7BB7C98;
  v7[4] = self;
  v8 = animationCopy;
  v6.receiver = self;
  v6.super_class = PXPointAnimator;
  v5 = animationCopy;
  [(PXObservable *)&v6 performChanges:v7];
}

void __50__PXPointAnimator_performChangesWithoutAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PXPointAnimator_performChangesWithoutAnimation___block_invoke_2;
  v4[3] = &unk_1E7BB7C70;
  v4[4] = v2;
  v5 = v1;
  [v3 performChangesWithoutAnimation:v4];
}

void __50__PXPointAnimator_performChangesWithoutAnimation___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PXPointAnimator_performChangesWithoutAnimation___block_invoke_3;
  v4[3] = &unk_1E7BB7C70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performChangesWithoutAnimation:v4];
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    [(PXObservable *)self signalChange:4];
  }
}

- (void)setPresentationValue:(CGPoint)value
{
  if (self->_presentationValue.x != value.x || self->_presentationValue.y != value.y)
  {
    self->_presentationValue = value;
    [(PXObservable *)self signalChange:2];
  }
}

- (void)_setInternalValue:(CGPoint)value
{
  if (self->_value.x != value.x || self->_value.y != value.y)
  {
    self->_value = value;
    [(PXObservable *)self signalChange:1];
  }
}

- (void)_update
{
  [(PXMutableNumberAnimator *)self->_xAnimator value];
  v4 = v3;
  [(PXMutableNumberAnimator *)self->_yAnimator value];
  [(PXPointAnimator *)self _setInternalValue:v4, v5];
  [(PXMutableNumberAnimator *)self->_xAnimator presentationValue];
  v7 = v6;
  [(PXMutableNumberAnimator *)self->_yAnimator presentationValue];
  [(PXPointAnimator *)self setPresentationValue:v7, v8];
  if (([(PXMutableNumberAnimator *)self->_xAnimator isAnimating]& 1) != 0)
  {
    isAnimating = 1;
  }

  else
  {
    isAnimating = [(PXMutableNumberAnimator *)self->_yAnimator isAnimating];
  }

  [(PXPointAnimator *)self setIsAnimating:isAnimating];
}

- (CGPoint)approximateVelocity
{
  [(PXMutableNumberAnimator *)self->_xAnimator approximateVelocity];
  v4 = v3;
  [(PXMutableNumberAnimator *)self->_yAnimator approximateVelocity];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  xAnimator = [(PXPointAnimator *)self xAnimator];
  yAnimator = [(PXPointAnimator *)self yAnimator];
  v8 = [v3 stringWithFormat:@"<%@:%p x = %@, y = %@>", v5, self, xAnimator, yAnimator];;

  return v8;
}

- (PXPointAnimator)initWithValue:(CGPoint)value epsilon:(double)epsilon
{
  y = value.y;
  x = value.x;
  v16.receiver = self;
  v16.super_class = PXPointAnimator;
  v7 = [(PXObservable *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__PXPointAnimator_initWithValue_epsilon___block_invoke;
    v11[3] = &unk_1E7BB7C48;
    v12 = v7;
    v13 = x;
    v14 = y;
    epsilonCopy = epsilon;
    v10.receiver = v12;
    v10.super_class = PXPointAnimator;
    [(PXObservable *)&v10 performChanges:v11];
  }

  return v8;
}

uint64_t __41__PXPointAnimator_initWithValue_epsilon___block_invoke(uint64_t a1)
{
  v2 = [[PXNumberAnimator alloc] initWithValue:*(a1 + 40) epsilon:*(a1 + 56)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  v5 = [[PXNumberAnimator alloc] initWithValue:*(a1 + 48) epsilon:*(a1 + 56)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  [*(*(a1 + 32) + 96) setDisplayLinkTarget:?];
  v8 = *(*(a1 + 32) + 104);

  return [v8 setDisplayLinkTarget:?];
}

@end