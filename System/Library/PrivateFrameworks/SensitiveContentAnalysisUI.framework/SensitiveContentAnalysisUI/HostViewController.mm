@interface HostViewController
- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithCoder:(id)coder;
- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation HostViewController

- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1BC75BB60();
    bundleCopy = bundle;
    v7 = sub_1BC75BB30();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HostViewController();
  v9 = [(HostViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HostViewController();
  coderCopy = coder;
  v5 = [(HostViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end