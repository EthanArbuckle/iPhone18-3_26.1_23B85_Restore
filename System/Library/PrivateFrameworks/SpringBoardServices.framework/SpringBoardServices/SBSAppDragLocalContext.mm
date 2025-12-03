@interface SBSAppDragLocalContext
- (SBSAppDragLocalContext)initWithUniqueIdentifier:(id)identifier withLaunchActions:(id)actions startLocation:(int64_t)location;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)setGridSizeClass:(id)class;
@end

@implementation SBSAppDragLocalContext

- (SBSAppDragLocalContext)initWithUniqueIdentifier:(id)identifier withLaunchActions:(id)actions startLocation:(int64_t)location
{
  identifierCopy = identifier;
  actionsCopy = actions;
  v16.receiver = self;
  v16.super_class = SBSAppDragLocalContext;
  v10 = [(SBSAppDragLocalContext *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v11;

    v13 = [actionsCopy copy];
    launchActions = v10->_launchActions;
    v10->_launchActions = v13;

    v10->_startLocation = location;
  }

  return v10;
}

- (void)setGridSizeClass:(id)class
{
  classCopy = class;
  v7 = classCopy;
  if (classCopy && classCopy <= 5)
  {
    classCopy = off_1E73619D0[classCopy - 1];
  }

  v5 = [(__CFString *)classCopy copy];
  gridSizeClass = self->_gridSizeClass;
  self->_gridSizeClass = v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSAppDragLocalContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
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
  succinctDescriptionBuilder = [(SBSAppDragLocalContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end