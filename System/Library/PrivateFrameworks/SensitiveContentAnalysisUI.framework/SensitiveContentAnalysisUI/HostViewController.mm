@interface HostViewController
- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithCoder:(id)a3;
- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation HostViewController

- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1BC75BB60();
    v6 = a4;
    v7 = sub_1BC75BB30();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HostViewController();
  v9 = [(HostViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC26SensitiveContentAnalysisUI18HostViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HostViewController();
  v4 = a3;
  v5 = [(HostViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end