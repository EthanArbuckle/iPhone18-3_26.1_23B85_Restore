@interface SBAppPlatterDragPreviewDelayCleanupAssertion
- (SBAppPlatterDragPreview)dragPreview;
- (SBAppPlatterDragPreviewDelayCleanupAssertion)initWithDragPreview:(id)preview reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBAppPlatterDragPreviewDelayCleanupAssertion

- (SBAppPlatterDragPreviewDelayCleanupAssertion)initWithDragPreview:(id)preview reason:(id)reason
{
  previewCopy = preview;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBAppPlatterDragPreviewDelayCleanupAssertion;
  v8 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dragPreview, previewCopy);
    v10 = [reasonCopy copy];
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
    dragPreview = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self dragPreview];
    [dragPreview _removeDelayCleanupAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBAppPlatterDragPreviewDelayCleanupAssertion *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_reason withName:@"reason"];

  return succinctDescriptionBuilder;
}

- (SBAppPlatterDragPreview)dragPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_dragPreview);

  return WeakRetained;
}

@end