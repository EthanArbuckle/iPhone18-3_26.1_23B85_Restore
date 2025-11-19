@interface SBRestoreDesktopSpaceWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBRestoreDesktopSpaceWindowingModifier

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:0];
  [(SBWindowingModifier *)self appendResponse:v6];
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v6 = a4;
  retstr->bounds.origin = 0u;
  retstr->bounds.size = 0u;
  retstr->position = 0u;
  retstr->anchorPoint = 0u;
  retstr->scale = 0u;
  retstr->translation = 0u;
  v17.receiver = self;
  v17.super_class = SBRestoreDesktopSpaceWindowingModifier;
  [(SBWindowingItemFrame *)&v17 frameForItem:v6];
  if ([v6 isAppLayout])
  {
    launchingOverDesktopSpaceAppLayout = self->_launchingOverDesktopSpaceAppLayout;
    v8 = [v6 appLayout];
    LODWORD(launchingOverDesktopSpaceAppLayout) = [(SBAppLayout *)launchingOverDesktopSpaceAppLayout isOrContainsAppLayout:v8];

    if (launchingOverDesktopSpaceAppLayout)
    {
      v9 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_launchingOverDesktopSpaceAppLayout];
      [v9 boundingBox];

      SBRectWithSize();
      retstr->bounds.origin.x = v10;
      retstr->bounds.origin.y = v11;
      retstr->bounds.size.width = v12;
      retstr->bounds.size.height = v13;
      UIRectGetCenter();
      retstr->position.x = v14;
      retstr->position.y = v15;
    }
  }

  return result;
}

@end