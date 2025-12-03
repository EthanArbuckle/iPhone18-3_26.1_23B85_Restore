@interface _UIWTCProofreadingInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (_UIWTCProofreadingInteraction)initWithDelegate:(id)delegate;
- (_UIWTCProofreadingInteractionDelegate)delegate;
- (id)proofreadingTapCreateIfNecessary;
- (void)didMoveToView:(id)view;
- (void)tapInteraction:(id)interaction;
- (void)willMoveToView:(id)view;
@end

@implementation _UIWTCProofreadingInteraction

- (_UIWTCProofreadingInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UIWTCProofreadingInteraction;
  v5 = [(_UIWTCProofreadingInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)willMoveToView:(id)view
{
  obj = view;
  if (self->_proofreadingTap)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_proofreadingTap];
  }

  objc_storeWeak(&self->_view, obj);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  proofreadingTapCreateIfNecessary = [(_UIWTCProofreadingInteraction *)self proofreadingTapCreateIfNecessary];
  [viewCopy addGestureRecognizer:proofreadingTapCreateIfNecessary];
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

- (void)tapInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([interactionCopy state] == 3)
  {
    delegate = [(_UIWTCProofreadingInteraction *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [interactionCopy locationInView:WeakRetained];
    [delegate proofreadingInteraction:self receivedTapAtLocation:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(_UIWTCProofreadingInteraction *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [beginCopy locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  LOBYTE(self) = [delegate proofreadingInteraction:self shouldRespondToTapAtPoint:{v8, v10}];
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