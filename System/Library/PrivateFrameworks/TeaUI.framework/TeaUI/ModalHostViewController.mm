@interface ModalHostViewController
- (NSArray)keyCommands;
- (_TtC5TeaUI23ModalHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)closeButtonPressedWithSender:(id)sender;
- (void)dismissKeyCommand;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ModalHostViewController

- (void)closeButtonPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D8169BE0();
}

- (_TtC5TeaUI23ModalHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  ModalHostViewController.init(nibName:bundle:)();
}

- (void)viewDidLoad
{
  selfCopy = self;
  ModalHostViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  ModalHostViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ModalHostViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ModalHostViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  ModalHostViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  ModalHostViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = ModalHostViewController.keyCommands.getter();

  if (v3)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3260);
    v4 = sub_1D8191304();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dismissKeyCommand
{
  selfCopy = self;
  sub_1D816B818();
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = ModalHostViewController.animationController(forPresented:presenting:source:)(selfCopy, presentingControllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = ModalHostViewController.animationController(forDismissed:)();

  return v6;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  ModalHostViewController.presentationControllerDidDismiss(_:)(selfCopy);
}

@end