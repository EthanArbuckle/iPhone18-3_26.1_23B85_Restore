@interface PREditingStandaloneLabelViewInteractiveTransition
- (NSString)description;
- (PREditingStandaloneLabelView)label;
- (PREditingStandaloneLabelViewInteractiveTransition)initWithLabel:(id)a3 currentText:(id)a4 transitionText:(id)a5;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)a3;
@end

@implementation PREditingStandaloneLabelViewInteractiveTransition

- (PREditingStandaloneLabelViewInteractiveTransition)initWithLabel:(id)a3 currentText:(id)a4 transitionText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PREditingStandaloneLabelViewInteractiveTransition;
  v11 = [(PREditingStandaloneLabelViewInteractiveTransition *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_label, v8);
    v13 = [v9 copy];
    currentText = v12->_currentText;
    v12->_currentText = v13;

    v15 = [v10 copy];
    transitionText = v12->_transitionText;
    v12->_transitionText = v15;
  }

  return v12;
}

- (void)updateInteractiveTransition:(double)a3
{
  v5 = [(PREditingStandaloneLabelViewInteractiveTransition *)self label];
  [v5 interactiveTransition:self didUpdate:a3];
}

- (void)finishInteractiveTransition
{
  v3 = [(PREditingStandaloneLabelViewInteractiveTransition *)self label];
  [v3 interactiveTransition:self didFinishSuccessfully:1];
}

- (void)cancelInteractiveTransition
{
  v3 = [(PREditingStandaloneLabelViewInteractiveTransition *)self label];
  [v3 interactiveTransition:self didFinishSuccessfully:0];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__PREditingStandaloneLabelViewInteractiveTransition_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PREditingStandaloneLabelViewInteractiveTransition *)self currentText];
  v5 = [v8 appendObject:v4 withName:@"currentText"];

  v6 = [(PREditingStandaloneLabelViewInteractiveTransition *)self transitionText];
  v7 = [v8 appendObject:v6 withName:@"transitionText"];
}

- (PREditingStandaloneLabelView)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end