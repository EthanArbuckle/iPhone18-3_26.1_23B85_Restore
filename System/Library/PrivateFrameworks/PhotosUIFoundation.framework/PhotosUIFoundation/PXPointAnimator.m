@interface PXPointAnimator
- (CGPoint)approximateVelocity;
- (CGPoint)presentationValue;
- (CGPoint)value;
- (NSString)description;
- (PXPointAnimator)initWithValue:(CGPoint)a3 epsilon:(double)a4;
- (void)_setInternalValue:(CGPoint)a3;
- (void)_update;
- (void)didPerformChanges;
- (void)handleDisplayLink:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)performChangesUsingDefaultSpringAnimationWithInitialVelocity:(CGPoint)a3 changes:(id)a4;
- (void)performChangesUsingSpringAnimationWithStiffness:(double)a3 dampingRatio:(double)a4 initialVelocity:(CGPoint)a5 changes:(id)a6;
- (void)performChangesWithDuration:(double)a3 curve:(int64_t)a4 changes:(id)a5;
- (void)performChangesWithoutAnimation:(id)a3;
- (void)setIsAnimating:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setPresentationValue:(CGPoint)a3;
- (void)setValue:(CGPoint)a3;
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

- (void)handleDisplayLink:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PXPointAnimator_handleDisplayLink___block_invoke;
  v7[3] = &unk_1E7BB7D80;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PXPointAnimator;
  v5 = v4;
  [(PXObservable *)&v6 performChanges:v7];
}

uint64_t __37__PXPointAnimator_handleDisplayLink___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) handleDisplayLink:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 handleDisplayLink:v2];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5.receiver = self;
  v5.super_class = PXPointAnimator;
  [(PXObservable *)&v5 performChanges:&__block_literal_global_14906, a4, a5];
}

- (void)setValue:(CGPoint)a3
{
  y = a3.y;
  [(PXMutableNumberAnimator *)self->_xAnimator setValue:a3.x];
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

- (void)performChanges:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PXPointAnimator_performChanges___block_invoke;
  v7[3] = &unk_1E7BB7C98;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PXPointAnimator;
  v5 = v4;
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

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x_%@", v5];
  [(PXMutableNumberAnimator *)self->_xAnimator setLabel:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y_%@", v5];
  [(PXMutableNumberAnimator *)self->_yAnimator setLabel:v7];
}

- (void)performChangesUsingSpringAnimationWithStiffness:(double)a3 dampingRatio:(double)a4 initialVelocity:(CGPoint)a5 changes:(id)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __104__PXPointAnimator_performChangesUsingSpringAnimationWithStiffness_dampingRatio_initialVelocity_changes___block_invoke;
  v14[3] = &unk_1E7BB7D38;
  v16 = a3;
  v17 = a4;
  v18 = x;
  v19 = y;
  v14[4] = self;
  v15 = v11;
  v13.receiver = self;
  v13.super_class = PXPointAnimator;
  v12 = v11;
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

- (void)performChangesUsingDefaultSpringAnimationWithInitialVelocity:(CGPoint)a3 changes:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PXPointAnimator_performChangesUsingDefaultSpringAnimationWithInitialVelocity_changes___block_invoke;
  v10[3] = &unk_1E7BB7CE8;
  v12 = x;
  v13 = y;
  v10[4] = self;
  v11 = v7;
  v9.receiver = self;
  v9.super_class = PXPointAnimator;
  v8 = v7;
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

- (void)performChangesWithDuration:(double)a3 curve:(int64_t)a4 changes:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PXPointAnimator_performChangesWithDuration_curve_changes___block_invoke;
  v11[3] = &unk_1E7BB7CE8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10.receiver = self;
  v10.super_class = PXPointAnimator;
  v9 = v8;
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

- (void)performChangesWithoutAnimation:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PXPointAnimator_performChangesWithoutAnimation___block_invoke;
  v7[3] = &unk_1E7BB7C98;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PXPointAnimator;
  v5 = v4;
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

- (void)setIsAnimating:(BOOL)a3
{
  if (self->_isAnimating != a3)
  {
    self->_isAnimating = a3;
    [(PXObservable *)self signalChange:4];
  }
}

- (void)setPresentationValue:(CGPoint)a3
{
  if (self->_presentationValue.x != a3.x || self->_presentationValue.y != a3.y)
  {
    self->_presentationValue = a3;
    [(PXObservable *)self signalChange:2];
  }
}

- (void)_setInternalValue:(CGPoint)a3
{
  if (self->_value.x != a3.x || self->_value.y != a3.y)
  {
    self->_value = a3;
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
    v9 = 1;
  }

  else
  {
    v9 = [(PXMutableNumberAnimator *)self->_yAnimator isAnimating];
  }

  [(PXPointAnimator *)self setIsAnimating:v9];
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
  v6 = [(PXPointAnimator *)self xAnimator];
  v7 = [(PXPointAnimator *)self yAnimator];
  v8 = [v3 stringWithFormat:@"<%@:%p x = %@, y = %@>", v5, self, v6, v7];;

  return v8;
}

- (PXPointAnimator)initWithValue:(CGPoint)a3 epsilon:(double)a4
{
  y = a3.y;
  x = a3.x;
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
    v15 = a4;
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