@interface UIBridgedAnimatable
- (UIBridgedAnimatable)initWithLayer:(id)layer key:(id)key fromValue:(id)value toValue:(id)toValue completion:(id)completion;
- (void)animationDidFinish:(BOOL)finish;
- (void)dealloc;
- (void)updateWithProgress:(double)progress;
@end

@implementation UIBridgedAnimatable

- (UIBridgedAnimatable)initWithLayer:(id)layer key:(id)key fromValue:(id)value toValue:(id)toValue completion:(id)completion
{
  layerCopy = layer;
  keyCopy = key;
  valueCopy = value;
  toValueCopy = toValue;
  completionCopy = completion;
  v31.receiver = self;
  v31.super_class = UIBridgedAnimatable;
  v18 = [(UIBridgedAnimatable *)&v31 init];
  v19 = v18;
  if (v18)
  {
    v18->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v18->_layer, layer);
    objc_storeStrong(&v19->_key, key);
    v20 = [valueCopy copy];
    fromValue = v19->_fromValue;
    v19->_fromValue = v20;

    v22 = [toValueCopy copy];
    toValue = v19->_toValue;
    v19->_toValue = v22;

    v24 = _Block_copy(completionCopy);
    completion = v19->_completion;
    v19->_completion = v24;

    v26 = objc_alloc(MEMORY[0x1E6979410]);
    getValue = [(UIVectorOperatable *)v19->_fromValue getValue];
    v28 = [v26 initWithKeyPath:keyCopy initialValue:getValue additive:0];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIBridgedAnimatable.m" lineNumber:57 description:{@"UIBridgedAnimatable was deallocated before animationDidFinish: (%@)", self->_key}];
  }

  [(CALayer *)self->_layer removePresentationModifier:self->_presentationModifier];
  v5.receiver = self;
  v5.super_class = UIBridgedAnimatable;
  [(UIBridgedAnimatable *)&v5 dealloc];
}

- (void)updateWithProgress:(double)progress
{
  os_unfair_lock_lock(&self->_lock);
  toValue = [(UIBridgedAnimatable *)self toValue];
  v16 = [toValue copy];

  fromValue = [(UIBridgedAnimatable *)self fromValue];
  v7 = [fromValue copy];
  v8 = [v7 multiplyByScalar:-1.0];
  v9 = [v16 addVector:v8];

  v10 = [v16 multiplyByScalar:progress];
  fromValue2 = [(UIBridgedAnimatable *)self fromValue];
  v12 = [fromValue2 copy];
  v13 = [v16 addVector:v12];

  getValue = [v16 getValue];
  presentationModifier = [(UIBridgedAnimatable *)self presentationModifier];
  [presentationModifier setValue:getValue];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)animationDidFinish:(BOOL)finish
{
  finishCopy = finish;
  os_unfair_lock_lock(&self->_lock);
  if (![(UIBridgedAnimatable *)self isFinished])
  {
    [(UIBridgedAnimatable *)self setIsFinished:1];
    completion = [(UIBridgedAnimatable *)self completion];
    completion[2](completion, finishCopy);

    [(UIBridgedAnimatable *)self setCompletion:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end