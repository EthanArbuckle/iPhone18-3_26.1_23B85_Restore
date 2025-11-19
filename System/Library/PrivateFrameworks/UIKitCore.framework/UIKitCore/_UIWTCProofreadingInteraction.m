@interface _UIWTCProofreadingInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (_UIWTCProofreadingInteraction)initWithDelegate:(id)a3;
- (_UIWTCProofreadingInteractionDelegate)delegate;
- (id)proofreadingTapCreateIfNecessary;
- (void)didMoveToView:(id)a3;
- (void)tapInteraction:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIWTCProofreadingInteraction

- (_UIWTCProofreadingInteraction)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIWTCProofreadingInteraction;
  v5 = [(_UIWTCProofreadingInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)willMoveToView:(id)a3
{
  obj = a3;
  if (self->_proofreadingTap)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_proofreadingTap];
  }

  objc_storeWeak(&self->_view, obj);
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  v5 = [(_UIWTCProofreadingInteraction *)self proofreadingTapCreateIfNecessary];
  [v4 addGestureRecognizer:v5];
}

- (id)proofreadingTapCreateIfNecessary
{
  proofreadingTap = self->_proofreadingTap;
  if (!proofreadingTap)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_tapInteraction_];
    v5 = self->_proofreadingTap;
    self->_proofreadingTap = v4;

    [(UITapGestureRecognizer *)self->_proofreadingTap setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_proofreadingTap setNumberOfTouchesRequired:1];
    [(UIGestureRecognizer *)self->_proofreadingTap setDelegate:self];
    proofreadingTap = self->_proofreadingTap;
  }

  [(UIGestureRecognizer *)proofreadingTap setEnabled:1];
  v6 = self->_proofreadingTap;

  return v6;
}

- (void)tapInteraction:(id)a3
{
  v6 = a3;
  if ([v6 state] == 3)
  {
    v4 = [(_UIWTCProofreadingInteraction *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [v6 locationInView:WeakRetained];
    [v4 proofreadingInteraction:self receivedTapAtLocation:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIWTCProofreadingInteraction *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [v4 locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  LOBYTE(self) = [v5 proofreadingInteraction:self shouldRespondToTapAtPoint:{v8, v10}];
  return self;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UIWTCProofreadingInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end