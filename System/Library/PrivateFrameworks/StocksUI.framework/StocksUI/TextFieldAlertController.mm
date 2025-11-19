@interface TextFieldAlertController
- (NSArray)keyCommands;
- (_TtC8StocksUI24TextFieldAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TextFieldAlertController

- (void)cancel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel);
    v4 = self;
    v5 = sub_2204A80F0(v2, v3);
    v2(v5);
    sub_2204DA45C(v2);
  }

  else
  {
    v6 = self;
  }

  [(TextFieldAlertController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2206EA408();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TextFieldAlertController *)&v7 viewDidAppear:v3];
  v5 = sub_2206E9F4C();
  [v5 setEnabled_];

  v6 = *&v4[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField];
  [v6 becomeFirstResponder];
}

- (_TtC8StocksUI24TextFieldAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)keyCommands
{
  sub_22044D56C(0, &qword_281299860);
  sub_22089136C();
  v3 = self;
  v4 = sub_220891A8C();
  sub_22048BC00();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22089B130;
  *(v5 + 32) = v4;

  v6 = sub_2208916DC();

  return v6;
}

@end