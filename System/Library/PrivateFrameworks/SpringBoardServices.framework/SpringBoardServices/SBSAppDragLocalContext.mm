@interface SBSAppDragLocalContext
- (SBSAppDragLocalContext)initWithUniqueIdentifier:(id)a3 withLaunchActions:(id)a4 startLocation:(int64_t)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)setGridSizeClass:(id)a3;
@end

@implementation SBSAppDragLocalContext

- (SBSAppDragLocalContext)initWithUniqueIdentifier:(id)a3 withLaunchActions:(id)a4 startLocation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SBSAppDragLocalContext;
  v10 = [(SBSAppDragLocalContext *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v11;

    v13 = [v9 copy];
    launchActions = v10->_launchActions;
    v10->_launchActions = v13;

    v10->_startLocation = a5;
  }

  return v10;
}

- (void)setGridSizeClass:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && v4 <= 5)
  {
    v4 = off_1E73619D0[v4 - 1];
  }

  v5 = [(__CFString *)v4 copy];
  gridSizeClass = self->_gridSizeClass;
  self->_gridSizeClass = v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSAppDragLocalContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [v4 appendObject:self->_applicationBundleIdentifier withName:@"applicationBundleIdentifier"];
  v7 = [v4 appendObject:self->_containedIconIdentifiers withName:@"containedIconIdentifiers" skipIfNil:1];
  v8 = [v4 appendObject:self->_launchActions withName:@"launchActions" skipIfNil:1];
  v9 = [v4 appendInteger:self->_startLocation withName:@"startLocation"];
  v10 = [v4 appendObject:self->_launchActions withName:@"launchActions" skipIfNil:1];
  v11 = [v4 appendObject:self->_launchURL withName:@"launchURL" skipIfNil:1];
  v12 = [v4 appendObject:self->_draggedSceneIdentifier withName:@"draggedSceneIdentifier" skipIfNil:1];
  v13 = [v4 appendObject:self->_portaledPreview withName:@"portaledPreview" skipIfNil:1];
  v14 = [v4 appendBool:self->_cancelsViaScaleAndFade withName:@"cancelsViaScaleAndFade" ifEqualTo:1];
  v15 = [v4 appendBool:self->_sourceLocal withName:@"sourceLocal"];
  v16 = [v4 appendObject:self->_droppedIconIdentifier withName:@"droppedIconIdentifier" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBSAppDragLocalContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end