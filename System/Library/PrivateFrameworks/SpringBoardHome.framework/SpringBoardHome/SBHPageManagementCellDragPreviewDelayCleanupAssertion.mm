@interface SBHPageManagementCellDragPreviewDelayCleanupAssertion
- (SBHPageManagementCellDragPreview)dragPreview;
- (SBHPageManagementCellDragPreviewDelayCleanupAssertion)initWithDragPreview:(id)preview reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBHPageManagementCellDragPreviewDelayCleanupAssertion

- (SBHPageManagementCellDragPreviewDelayCleanupAssertion)initWithDragPreview:(id)preview reason:(id)reason
{
  previewCopy = preview;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBHPageManagementCellDragPreviewDelayCleanupAssertion;
  v8 = [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)&v13 init];
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
  [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBHPageManagementCellDragPreviewDelayCleanupAssertion;
  [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self isInvalidated])
  {
    [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self setInvalidated:1];
    dragPreview = [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self dragPreview];
    [dragPreview _removeDelayCleanupAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHPageManagementCellDragPreviewDelayCleanupAssertion *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_reason withName:@"reason"];

  return succinctDescriptionBuilder;
}

- (SBHPageManagementCellDragPreview)dragPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_dragPreview);

  return WeakRetained;
}

@end