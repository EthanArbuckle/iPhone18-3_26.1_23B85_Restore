@interface TTRIReminderLocationPickerViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (MKMapView)mapView;
- (UIBarButtonItem)doneButton;
- (UISegmentedControl)alarmProximitySegmentedControl;
- (UITableView)tableView;
- (UIView)bottomControlsContainerView;
- (UIView)contentView;
- (UIView)mapAndDragRadiusContainerView;
- (_TtC15RemindersUICore40TTRIReminderLocationPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)alarmProximitySegmentedControlDidChange:(id)change;
- (void)dealloc;
- (void)mapDragRadiusView:(id)view didUpdateRegion:(id)region;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)setContentViewMinHeightConstraint:(id)constraint;
- (void)stopHoldingCurrentContentViewHeight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation TTRIReminderLocationPickerViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(TTRIReminderLocationPickerViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D583380();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D583CAC(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D58531C(appear);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21D585878(controller);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TTRIReminderLocationPickerViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_searchBar];
  if (v5)
  {
    v6 = v5;
    [v6 resignFirstResponder];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIReminderLocationPickerViewController *)&v3 viewDidLayoutSubviews];
  sub_21D585B48(0, 0.0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_21D585E0C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_21D588800(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  sub_21D586174(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = sub_21DBFA16C();
  v7 = v6;
  selfCopy = self;
  sub_21D57BB34(v5, v7);
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21D588AE0();
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setAccessibilityElementsHidden_];
  }

  else
  {
    __break(1u);
  }
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21D588BE4();
  v8 = v7;

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapDragRadiusView:(id)view didUpdateRegion:(id)region
{
  regionCopy = region;
  selfCopy = self;
  sub_21D57C94C(regionCopy);
}

- (UIView)contentView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContentViewMinHeightConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint);
  *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint) = constraint;
  constraintCopy = constraint;
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)bottomControlsContainerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)mapAndDragRadiusContainerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (MKMapView)mapView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UISegmentedControl)alarmProximitySegmentedControl
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIBarButtonItem)doneButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)alarmProximitySegmentedControlDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D586AB4();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (void)stopHoldingCurrentContentViewHeight
{
  selfCopy = self;
  sub_21D5871C8();
}

- (_TtC15RemindersUICore40TTRIReminderLocationPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  selfCopy = self;
  v4 = sub_21D57CC40();

  return (v4 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21D5891BC();
}

@end