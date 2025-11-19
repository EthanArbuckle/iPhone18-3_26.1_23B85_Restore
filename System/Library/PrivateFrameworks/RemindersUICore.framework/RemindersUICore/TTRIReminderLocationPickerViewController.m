@interface TTRIReminderLocationPickerViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (MKMapView)mapView;
- (UIBarButtonItem)doneButton;
- (UISegmentedControl)alarmProximitySegmentedControl;
- (UITableView)tableView;
- (UIView)bottomControlsContainerView;
- (UIView)contentView;
- (UIView)mapAndDragRadiusContainerView;
- (_TtC15RemindersUICore40TTRIReminderLocationPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)alarmProximitySegmentedControlDidChange:(id)a3;
- (void)dealloc;
- (void)mapDragRadiusView:(id)a3 didUpdateRegion:(id)a4;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)setContentViewMinHeightConstraint:(id)a3;
- (void)stopHoldingCurrentContentViewHeight;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation TTRIReminderLocationPickerViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer);
  v5 = self;
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
  v2 = self;
  sub_21D583380();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21D583CAC(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_21D58531C(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21D585878(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TTRIReminderLocationPickerViewController *)&v7 viewWillDisappear:v3];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  v12 = sub_21D585E0C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_21D588800(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  sub_21D586174(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = sub_21DBFA16C();
  v7 = v6;
  v8 = self;
  sub_21D57BB34(v5, v7);
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D588AE0();
}

- (void)searchBarTextDidEndEditing:(id)a3
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

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_21D588BE4();
  v8 = v7;

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapDragRadiusView:(id)a3 didUpdateRegion:(id)a4
{
  v6 = a4;
  v5 = self;
  sub_21D57C94C(v6);
}

- (UIView)contentView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContentViewMinHeightConstraint:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint);
  *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint) = a3;
  v3 = a3;
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

- (void)alarmProximitySegmentedControlDidChange:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D586AB4();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (void)stopHoldingCurrentContentViewHeight
{
  v2 = self;
  sub_21D5871C8();
}

- (_TtC15RemindersUICore40TTRIReminderLocationPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = self;
  v4 = sub_21D57CC40();

  return (v4 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D5891BC();
}

@end