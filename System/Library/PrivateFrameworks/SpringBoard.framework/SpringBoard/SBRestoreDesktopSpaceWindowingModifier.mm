@interface SBRestoreDesktopSpaceWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBRestoreDesktopSpaceWindowingModifier

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:0];
  [(SBWindowingModifier *)self appendResponse:v6];
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
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
    appLayout = [v6 appLayout];
    LODWORD(launchingOverDesktopSpaceAppLayout) = [(SBAppLayout *)launchingOverDesktopSpaceAppLayout isOrContainsAppLayout:appLayout];

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