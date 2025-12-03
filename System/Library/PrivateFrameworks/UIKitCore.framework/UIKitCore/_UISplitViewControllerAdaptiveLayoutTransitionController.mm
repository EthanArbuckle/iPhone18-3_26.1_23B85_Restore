@interface _UISplitViewControllerAdaptiveLayoutTransitionController
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (_UISplitViewControllerAdaptiveLayout)previousLayout;
- (_UISplitViewControllerAdaptiveLayout)scheduledLayout;
- (_UISplitViewControllerAdaptiveLayoutTransition)upcomingTransition;
- (_UISplitViewControllerAdaptiveLayoutTransitionController)init;
- (void)animateWithTransition:(id)transition;
- (void)commitWithTransition:(id)transition;
- (void)completeWithTransition:(id)transition;
- (void)performTransitionAlongsideTransitionCoordinator:(id)coordinator;
- (void)performTransitionAnimated:(BOOL)animated;
- (void)prepareTransitionToLayout:(id)layout;
- (void)scheduleCollapsedWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler;
- (void)scheduleContainerView:(id)view;
- (void)scheduleDisplayModeWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler;
- (void)scheduleSnapshot:(id)snapshot;
- (void)scheduleSplitViewControllerColumnModeWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler splitViewControllerColumn:(int64_t)column;
- (void)scheduleSplitViewControllerColumnSizeWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler splitViewControllerColumn:(int64_t)column;
- (void)scheduleSplitViewControllerColumnSuspendingDelegateUpdates:(int64_t)updates;
- (void)scheduleSplitViewControllerColumnVisibilityWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler splitViewControllerColumn:(int64_t)column;
- (void)startWithTransition:(id)transition;
@end

@implementation _UISplitViewControllerAdaptiveLayoutTransitionController

- (void)scheduleDisplayModeWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler
{
  v6 = _Block_copy(handler);
  v7 = _Block_copy(changeHandler);
  v8 = v7;
  if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v6 = sub_188B17524;
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = sub_188B17524;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  selfCopy = self;
  sub_188FEAD2C(0, 3, v6, v9, v11, v10);

  sub_188A55B8C(v11);

  sub_188A55B8C(v6);
}

- (void)scheduleCollapsedWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler
{
  v6 = _Block_copy(handler);
  v7 = _Block_copy(changeHandler);
  v8 = v7;
  if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v6 = sub_188B17524;
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = sub_188B17524;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  selfCopy = self;
  sub_188FEAD2C(1, 3, v6, v9, v11, v10);

  sub_188A55B8C(v11);

  sub_188A55B8C(v6);
}

- (void)scheduleSplitViewControllerColumnVisibilityWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler splitViewControllerColumn:(int64_t)column
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(changeHandler);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_188B17524;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_188B17524;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  selfCopy = self;
  sub_188FEAD2C(column, 2, v8, v11, v10, v12);

  sub_188A55B8C(v10);

  sub_188A55B8C(v8);
}

- (void)scheduleSplitViewControllerColumnSizeWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler splitViewControllerColumn:(int64_t)column
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(changeHandler);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_188B17524;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_188B17524;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  selfCopy = self;
  sub_188FEAD2C(column, 1, v8, v11, v10, v12);

  sub_188A55B8C(v10);

  sub_188A55B8C(v8);
}

- (_UISplitViewControllerAdaptiveLayout)previousLayout
{
  selfCopy = self;
  v3 = sub_188B169F4();

  return v3;
}

- (_UISplitViewControllerAdaptiveLayoutTransitionController)init
{
  *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutablePreviousLayout) = 0;
  *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition) = 0;
  *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition) = 0;
  *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_updates) = MEMORY[0x1E69E7CC8];
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveLayoutTransitionController;
  return [(_UISplitViewControllerAdaptiveLayoutTransitionController *)&v3 init];
}

- (_UISplitViewControllerAdaptiveLayout)scheduledLayout
{
  mutableNewLayout = *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
  if (mutableNewLayout)
  {
    mutableNewLayout = [mutableNewLayout mutableNewLayout];
    v2 = vars8;
  }

  return mutableNewLayout;
}

- (void)commitWithTransition:(id)transition
{
  transitionCopy = transition;
  selfCopy = self;
  sub_188BB4838(transitionCopy);
}

- (void)startWithTransition:(id)transition
{
  transitionCopy = transition;
  selfCopy = self;
  sub_188BB4A04(transitionCopy);
}

- (void)animateWithTransition:(id)transition
{
  transitionCopy = transition;
  selfCopy = self;
  sub_188BB4E30(transitionCopy);
}

- (void)completeWithTransition:(id)transition
{
  transitionCopy = transition;
  selfCopy = self;
  sub_188C317BC(transitionCopy);
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  v2 = sub_188FEA520();

  return v2;
}

- (void)prepareTransitionToLayout:(id)layout
{
  swift_unknownObjectRetain();
  selfCopy = self;
  upcomingTransition = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)selfCopy upcomingTransition];
  [(_UISplitViewControllerAdaptiveLayoutTransition *)upcomingTransition setMutableNewLayout:layout];
  swift_unknownObjectRelease();
  v7 = *(&selfCopy->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition);
  *(&selfCopy->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition) = 0;

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
  *(&selfCopy->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition) = upcomingTransition;
}

- (void)performTransitionAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_188FEA628(animated);
}

- (void)performTransitionAlongsideTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188FEA728(coordinator);
  swift_unknownObjectRelease();
}

- (_UISplitViewControllerAdaptiveLayoutTransition)upcomingTransition
{
  selfCopy = self;
  v3 = sub_188FEAB60();

  return v3;
}

- (void)scheduleContainerView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  upcomingTransition = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)selfCopy upcomingTransition];
  [(_UISplitViewControllerAdaptiveLayoutTransition *)upcomingTransition setMutableContainerView:viewCopy];
}

- (void)scheduleSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  upcomingTransition = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)self upcomingTransition];
  v6 = *(&upcomingTransition->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayoutSnapshotView);
  *(&upcomingTransition->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayoutSnapshotView) = snapshotCopy;
}

- (void)scheduleSplitViewControllerColumnModeWillChangeHandler:(id)handler didChangeHandler:(id)changeHandler splitViewControllerColumn:(int64_t)column
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(changeHandler);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_188B17524;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_188B17524;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  selfCopy = self;
  sub_188FEAD2C(column, 0, v8, v11, v10, v12);

  sub_188A55B8C(v10);

  sub_188A55B8C(v8);
}

- (void)scheduleSplitViewControllerColumnSuspendingDelegateUpdates:(int64_t)updates
{
  selfCopy = self;
  upcomingTransition = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)selfCopy upcomingTransition];
  swift_beginAccess();
  sub_188CC38D8(&v6, updates);
  swift_endAccess();
}

@end