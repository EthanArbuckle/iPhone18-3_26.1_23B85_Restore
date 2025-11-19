@interface _UISplitViewControllerAdaptiveLayoutTransitionController
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (_UISplitViewControllerAdaptiveLayout)previousLayout;
- (_UISplitViewControllerAdaptiveLayout)scheduledLayout;
- (_UISplitViewControllerAdaptiveLayoutTransition)upcomingTransition;
- (_UISplitViewControllerAdaptiveLayoutTransitionController)init;
- (void)animateWithTransition:(id)a3;
- (void)commitWithTransition:(id)a3;
- (void)completeWithTransition:(id)a3;
- (void)performTransitionAlongsideTransitionCoordinator:(id)a3;
- (void)performTransitionAnimated:(BOOL)a3;
- (void)prepareTransitionToLayout:(id)a3;
- (void)scheduleCollapsedWillChangeHandler:(id)a3 didChangeHandler:(id)a4;
- (void)scheduleContainerView:(id)a3;
- (void)scheduleDisplayModeWillChangeHandler:(id)a3 didChangeHandler:(id)a4;
- (void)scheduleSnapshot:(id)a3;
- (void)scheduleSplitViewControllerColumnModeWillChangeHandler:(id)a3 didChangeHandler:(id)a4 splitViewControllerColumn:(int64_t)a5;
- (void)scheduleSplitViewControllerColumnSizeWillChangeHandler:(id)a3 didChangeHandler:(id)a4 splitViewControllerColumn:(int64_t)a5;
- (void)scheduleSplitViewControllerColumnSuspendingDelegateUpdates:(int64_t)a3;
- (void)scheduleSplitViewControllerColumnVisibilityWillChangeHandler:(id)a3 didChangeHandler:(id)a4 splitViewControllerColumn:(int64_t)a5;
- (void)startWithTransition:(id)a3;
@end

@implementation _UISplitViewControllerAdaptiveLayoutTransitionController

- (void)scheduleDisplayModeWillChangeHandler:(id)a3 didChangeHandler:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
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
  v12 = self;
  sub_188FEAD2C(0, 3, v6, v9, v11, v10);

  sub_188A55B8C(v11);

  sub_188A55B8C(v6);
}

- (void)scheduleCollapsedWillChangeHandler:(id)a3 didChangeHandler:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
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
  v12 = self;
  sub_188FEAD2C(1, 3, v6, v9, v11, v10);

  sub_188A55B8C(v11);

  sub_188A55B8C(v6);
}

- (void)scheduleSplitViewControllerColumnVisibilityWillChangeHandler:(id)a3 didChangeHandler:(id)a4 splitViewControllerColumn:(int64_t)a5
{
  v8 = _Block_copy(a3);
  v9 = _Block_copy(a4);
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
  v13 = self;
  sub_188FEAD2C(a5, 2, v8, v11, v10, v12);

  sub_188A55B8C(v10);

  sub_188A55B8C(v8);
}

- (void)scheduleSplitViewControllerColumnSizeWillChangeHandler:(id)a3 didChangeHandler:(id)a4 splitViewControllerColumn:(int64_t)a5
{
  v8 = _Block_copy(a3);
  v9 = _Block_copy(a4);
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
  v13 = self;
  sub_188FEAD2C(a5, 1, v8, v11, v10, v12);

  sub_188A55B8C(v10);

  sub_188A55B8C(v8);
}

- (_UISplitViewControllerAdaptiveLayout)previousLayout
{
  v2 = self;
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
  v3 = *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
  if (v3)
  {
    v3 = [v3 mutableNewLayout];
    v2 = vars8;
  }

  return v3;
}

- (void)commitWithTransition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188BB4838(v4);
}

- (void)startWithTransition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188BB4A04(v4);
}

- (void)animateWithTransition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188BB4E30(v4);
}

- (void)completeWithTransition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188C317BC(v4);
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  v2 = sub_188FEA520();

  return v2;
}

- (void)prepareTransitionToLayout:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v5 upcomingTransition];
  [(_UISplitViewControllerAdaptiveLayoutTransition *)v6 setMutableNewLayout:a3];
  swift_unknownObjectRelease();
  v7 = *(&v5->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition);
  *(&v5->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableUpcomingTransition) = 0;

  v8 = *(&v5->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
  *(&v5->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition) = v6;
}

- (void)performTransitionAnimated:(BOOL)a3
{
  v4 = self;
  sub_188FEA628(a3);
}

- (void)performTransitionAlongsideTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188FEA728(a3);
  swift_unknownObjectRelease();
}

- (_UISplitViewControllerAdaptiveLayoutTransition)upcomingTransition
{
  v2 = self;
  v3 = sub_188FEAB60();

  return v3;
}

- (void)scheduleContainerView:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v6 upcomingTransition];
  [(_UISplitViewControllerAdaptiveLayoutTransition *)v5 setMutableContainerView:v4];
}

- (void)scheduleSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)self upcomingTransition];
  v6 = *(&v5->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayoutSnapshotView);
  *(&v5->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutablePreviousLayoutSnapshotView) = v4;
}

- (void)scheduleSplitViewControllerColumnModeWillChangeHandler:(id)a3 didChangeHandler:(id)a4 splitViewControllerColumn:(int64_t)a5
{
  v8 = _Block_copy(a3);
  v9 = _Block_copy(a4);
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
  v13 = self;
  sub_188FEAD2C(a5, 0, v8, v11, v10, v12);

  sub_188A55B8C(v10);

  sub_188A55B8C(v8);
}

- (void)scheduleSplitViewControllerColumnSuspendingDelegateUpdates:(int64_t)a3
{
  v4 = self;
  v5 = [(_UISplitViewControllerAdaptiveLayoutTransitionController *)v4 upcomingTransition];
  swift_beginAccess();
  sub_188CC38D8(&v6, a3);
  swift_endAccess();
}

@end