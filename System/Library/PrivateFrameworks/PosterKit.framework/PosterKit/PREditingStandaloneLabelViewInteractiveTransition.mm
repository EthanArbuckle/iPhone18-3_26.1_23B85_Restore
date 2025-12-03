@interface PREditingStandaloneLabelViewInteractiveTransition
- (NSString)description;
- (PREditingStandaloneLabelView)label;
- (PREditingStandaloneLabelViewInteractiveTransition)initWithLabel:(id)label currentText:(id)text transitionText:(id)transitionText;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation PREditingStandaloneLabelViewInteractiveTransition

- (PREditingStandaloneLabelViewInteractiveTransition)initWithLabel:(id)label currentText:(id)text transitionText:(id)transitionText
{
  labelCopy = label;
  textCopy = text;
  transitionTextCopy = transitionText;
  v18.receiver = self;
  v18.super_class = PREditingStandaloneLabelViewInteractiveTransition;
  v11 = [(PREditingStandaloneLabelViewInteractiveTransition *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_label, labelCopy);
    v13 = [textCopy copy];
    currentText = v12->_currentText;
    v12->_currentText = v13;

    v15 = [transitionTextCopy copy];
    transitionText = v12->_transitionText;
    v12->_transitionText = v15;
  }

  return v12;
}

- (void)updateInteractiveTransition:(double)transition
{
  label = [(PREditingStandaloneLabelViewInteractiveTransition *)self label];
  [label interactiveTransition:self didUpdate:transition];
}

- (void)finishInteractiveTransition
{
  label = [(PREditingStandaloneLabelViewInteractiveTransition *)self label];
  [label interactiveTransition:self didFinishSuccessfully:1];
}

- (void)cancelInteractiveTransition
{
  label = [(PREditingStandaloneLabelViewInteractiveTransition *)self label];
  [label interactiveTransition:self didFinishSuccessfully:0];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__PREditingStandaloneLabelViewInteractiveTransition_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  currentText = [(PREditingStandaloneLabelViewInteractiveTransition *)self currentText];
  v5 = [formatterCopy appendObject:currentText withName:@"currentText"];

  transitionText = [(PREditingStandaloneLabelViewInteractiveTransition *)self transitionText];
  v7 = [formatterCopy appendObject:transitionText withName:@"transitionText"];
}

- (PREditingStandaloneLabelView)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end