@interface ModalHostViewController
- (NSArray)keyCommands;
- (_TtC5TeaUI23ModalHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)closeButtonPressedWithSender:(id)a3;
- (void)dismissKeyCommand;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ModalHostViewController

- (void)closeButtonPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8169BE0();
}

- (_TtC5TeaUI23ModalHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  ModalHostViewController.init(nibName:bundle:)();
}

- (void)viewDidLoad
{
  v2 = self;
  ModalHostViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  ModalHostViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ModalHostViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ModalHostViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  ModalHostViewController.viewDidDisappear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  ModalHostViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (NSArray)keyCommands
{
  v2 = self;
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
  v2 = self;
  sub_1D816B818();
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = ModalHostViewController.animationController(forPresented:presenting:source:)(v11, v9);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ModalHostViewController.animationController(forDismissed:)();

  return v6;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  ModalHostViewController.presentationControllerDidDismiss(_:)(v5);
}

@end