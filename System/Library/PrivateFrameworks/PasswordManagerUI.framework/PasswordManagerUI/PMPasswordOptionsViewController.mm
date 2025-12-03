@interface PMPasswordOptionsViewController
- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithCoder:(id)coder;
- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation PMPasswordOptionsViewController

- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21CB855C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_21CACE094(v5, v7, bundle);
}

- (_TtC17PasswordManagerUIP33_0FCB751D9C1401A422BE720A549BB52631PMPasswordOptionsViewController)initWithCoder:(id)coder
{
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21CACE360();
}

@end