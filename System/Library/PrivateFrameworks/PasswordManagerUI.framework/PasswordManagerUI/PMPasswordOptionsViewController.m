@interface PMPasswordOptionsViewController
- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithCoder:(id)a3;
- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation PMPasswordOptionsViewController

- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21CB855C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_21CACE094(v5, v7, a4);
}

- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithCoder:(id)a3
{
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21CACE360();
}

@end