@interface UIBridgedAnimatable
- (UIBridgedAnimatable)initWithLayer:(id)a3 key:(id)a4 fromValue:(id)a5 toValue:(id)a6 completion:(id)a7;
- (void)animationDidFinish:(BOOL)a3;
- (void)dealloc;
- (void)updateWithProgress:(double)a3;
@end

@implementation UIBridgedAnimatable

- (UIBridgedAnimatable)initWithLayer:(id)a3 key:(id)a4 fromValue:(id)a5 toValue:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31.receiver = self;
  v31.super_class = UIBridgedAnimatable;
  v18 = [(UIBridgedAnimatable *)&v31 init];
  v19 = v18;
  if (v18)
  {
    v18->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v18->_layer, a3);
    objc_storeStrong(&v19->_key, a4);
    v20 = [v15 copy];
    fromValue = v19->_fromValue;
    v19->_fromValue = v20;

    v22 = [v16 copy];
    toValue = v19->_toValue;
    v19->_toValue = v22;

    v24 = _Block_copy(v17);
    completion = v19->_completion;
    v19->_completion = v24;

    v26 = objc_alloc(MEMORY[0x1E6979410]);
    v27 = [(UIVectorOperatable *)v19->_fromValue getValue];
    v28 = [v26 initWithKeyPath:v14 initialValue:v27 additive:0];
    presentationModifier = v19->_presentationModifier;
    v19->_presentationModifier = v28;

    v19->_isFinished = 0;
    [(CALayer *)v19->_layer addPresentationModifier:v19->_presentationModifier];
  }

  return v19;
}

- (void)dealloc
{
  if (!self->_isFinished)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"UIBridgedAnimatable.m" lineNumber:57 description:{@"UIBridgedAnimatable was deallocated before animationDidFinish: (%@)", self->_key}];
  }

  [(CALayer *)self->_layer removePresentationModifier:self->_presentationModifier];
  v5.receiver = self;
  v5.super_class = UIBridgedAnimatable;
  [(UIBridgedAnimatable *)&v5 dealloc];
}

- (void)updateWithProgress:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(UIBridgedAnimatable *)self toValue];
  v16 = [v5 copy];

  v6 = [(UIBridgedAnimatable *)self fromValue];
  v7 = [v6 copy];
  v8 = [v7 multiplyByScalar:-1.0];
  v9 = [v16 addVector:v8];

  v10 = [v16 multiplyByScalar:a3];
  v11 = [(UIBridgedAnimatable *)self fromValue];
  v12 = [v11 copy];
  v13 = [v16 addVector:v12];

  v14 = [v16 getValue];
  v15 = [(UIBridgedAnimatable *)self presentationModifier];
  [v15 setValue:v14];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)animationDidFinish:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (![(UIBridgedAnimatable *)self isFinished])
  {
    [(UIBridgedAnimatable *)self setIsFinished:1];
    v5 = [(UIBridgedAnimatable *)self completion];
    v5[2](v5, v3);

    [(UIBridgedAnimatable *)self setCompletion:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end