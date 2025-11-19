@interface SBAppPlatterDragPreviewDelayCleanupAssertion
- (SBAppPlatterDragPreview)dragPreview;
- (SBAppPlatterDragPreviewDelayCleanupAssertion)initWithDragPreview:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBAppPlatterDragPreviewDelayCleanupAssertion

- (SBAppPlatterDragPreviewDelayCleanupAssertion)initWithDragPreview:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBAppPlatterDragPreviewDelayCleanupAssertion;
  v8 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dragPreview, v6);
    v10 = [v7 copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBAppPlatterDragPreviewDelayCleanupAssertion;
  [(SBAppPlatterDragPreviewDelayCleanupAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(SBAppPlatterDragPreviewDelayCleanupAssertion *)self isInvalidated])
  {
    [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self setInvalidated:1];
    v3 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self dragPreview];
    [v3 _removeDelayCleanupAssertion:self];
  }
}

- (id)succinctDescription
{
  v2 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_reason withName:@"reason"];

  return v4;
}

- (SBAppPlatterDragPreview)dragPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_dragPreview);

  return WeakRetained;
}

@end