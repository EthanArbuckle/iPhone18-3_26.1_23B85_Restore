@interface _UISplitViewControllerAdaptiveLayoutTransition
- (BOOL)animateAlongsideTransition:(id)transition completion:(id)completion;
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (BOOL)hasSuspendedDelegateUpdatesForSplitViewControllerColumn:(int64_t)column;
- (CGAffineTransform)targetTransform;
- (NSSet)viewControllersWithSuspendedAppearanceTransitions;
- (NSString)description;
- (UIView)containerView;
- (_UISplitViewControllerAdaptiveLayout)mutableNewLayout;
- (_UISplitViewControllerAdaptiveLayout)mutablePreviousLayout;
- (_UISplitViewControllerAdaptiveLayout)newLayout;
- (_UISplitViewControllerAdaptiveLayout)previousLayout;
- (_UISplitViewControllerAdaptiveLayoutTransition)init;
- (void)addViewControllerWithSuspendedAppearanceTransitions:(id)transitions;
- (void)setMutableContainerView:(id)view;
@end

@implementation _UISplitViewControllerAdaptiveLayoutTransition

- (void)setMutableContainerView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableContainerView);
  *(&self->super.isa + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_mutableContainerView) = view;
  viewCopy = view;
}

- (_UISplitViewControllerAdaptiveLayout)newLayout
{
  selfCopy = self;
  mutableNewLayout = [(_UISplitViewControllerAdaptiveLayoutTransition *)selfCopy mutableNewLayout];
  if (mutableNewLayout)
  {
    v4 = mutableNewLayout;

    return v4;
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

- (_UISplitViewControllerAdaptiveLayout)mutableNewLayout
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (CGAffineTransform)targetTransform
{
  retstr->a = 1.0;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = 1.0;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return self;
}

- (_UISplitViewControllerAdaptiveLayout)previousLayout
{
  mutablePreviousLayout = [(_UISplitViewControllerAdaptiveLayoutTransition *)self mutablePreviousLayout];

  return mutablePreviousLayout;
}

- (_UISplitViewControllerAdaptiveLayout)mutablePreviousLayout
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (UIView)containerView
{
  selfCopy = self;
  mutableContainerView = [(_UISplitViewControllerAdaptiveLayoutTransition *)selfCopy mutableContainerView];
  if (mutableContainerView)
  {
    v4 = mutableContainerView;

    return v4;
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

- (BOOL)hasSuspendedDelegateUpdatesForSplitViewControllerColumn:(int64_t)column
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_suspendedDelegateUpdateColumns;
  swift_beginAccess();
  return sub_188C1CAD8(column, *(&self->super.isa + v5));
}

- (BOOL)animateAlongsideTransition:(id)transition completion:(id)completion
{
  v6 = _Block_copy(transition);
  v7 = _Block_copy(completion);
  v8 = v7;
  if (!v6)
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v6 = sub_188B17524;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = sub_188B17524;
LABEL_6:
  selfCopy = self;
  v13 = sub_188C1CCEC(v6, v9, v11, v10);
  sub_188A55B8C(v11);
  sub_188A55B8C(v6);

  return v13 & 1;
}

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  v8 = _Block_copy(animation);
  v9 = _Block_copy(completion);
  v10 = v9;
  if (!v8)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v8 = sub_188B17524;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v10 = sub_188B17584;
LABEL_6:
  viewCopy = view;
  selfCopy = self;
  v15 = sub_188C1CF7C(v8, v11, v10, v12);
  sub_188A55B8C(v10);
  sub_188A55B8C(v8);

  return v15 & 1;
}

- (NSSet)viewControllersWithSuspendedAppearanceTransitions
{
  swift_beginAccess();
  sub_188A34624(0, &qword_1ED48D5A0);
  sub_188FEB360();

  v2 = sub_18A4A7798();

  return v2;
}

- (void)addViewControllerWithSuspendedAppearanceTransitions:(id)transitions
{
  swift_beginAccess();
  transitionsCopy = transitions;
  selfCopy = self;
  sub_188E71674(&v7, transitionsCopy);
  swift_endAccess();
}

- (NSString)description
{
  selfCopy = self;
  sub_188FEA294();

  v3 = sub_18A4A7258();

  return v3;
}

- (_UISplitViewControllerAdaptiveLayoutTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end