@interface _TVRMAlertControllerTransitioning
- (void)animateTransition:(id)transition;
@end

@implementation _TVRMAlertControllerTransitioning

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = MEMORY[0x277CBF2C0];
  if (!self->_isPresentation)
  {
    memset(&v24, 0, sizeof(v24));
    goto LABEL_5;
  }

  v7 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  [containerView addSubview:v7];
  [containerView layoutIfNeeded];

  isPresentation = self->_isPresentation;
  memset(&v24, 0, sizeof(v24));
  if (!isPresentation)
  {
LABEL_5:
    v11 = v6[1];
    *&v24.a = *v6;
    *&v24.c = v11;
    *&v24.tx = v6[2];
    v9 = 1.0;
    v10 = 0.0;
    goto LABEL_6;
  }

  CGAffineTransformMakeScale(&v24, 1.2, 1.2);
  v9 = 0.0;
  v10 = 1.0;
LABEL_6:
  contentView = self->_contentView;
  v23 = v24;
  [(UIView *)contentView setTransform:&v23];
  [(UIView *)self->_contentView setAlpha:v9];
  [(UIView *)self->_dimmingView setAlpha:v9];
  v13 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v14 = v6[1];
  v19 = *v6;
  v18[2] = __55___TVRMAlertControllerTransitioning_animateTransition___block_invoke;
  v18[3] = &unk_279D87B80;
  v18[4] = self;
  v20 = v14;
  v21 = v6[2];
  v22 = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55___TVRMAlertControllerTransitioning_animateTransition___block_invoke_2;
  v16[3] = &unk_279D87BA8;
  v16[4] = self;
  v17 = transitionCopy;
  v15 = transitionCopy;
  [v13 animateWithDuration:6 delay:v18 usingSpringWithDamping:v16 initialSpringVelocity:0.404 options:0.0 animations:600.0 completion:0.0];
}

@end