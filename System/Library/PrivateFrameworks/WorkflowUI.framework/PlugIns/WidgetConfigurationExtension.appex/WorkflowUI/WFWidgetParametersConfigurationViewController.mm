@interface WFWidgetParametersConfigurationViewController
- (NSString)intentIdentifier;
- (UIViewController)hostingVC;
- (WFAction)action;
- (WFWidgetConfigurationRequest)request;
- (_TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource)dataSource;
- (_TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController)initWithRequest:(id)request action:(id)action intentIdentifier:(id)identifier dismiss:(id)dismiss cancel:(id)cancel;
- (id)cancel;
- (id)dismiss;
- (void)populateConfiguredIntentWithCompletion:(id)completion;
- (void)setHostingVC:(id)c;
- (void)viewDidLoad;
@end

@implementation WFWidgetParametersConfigurationViewController

- (WFWidgetConfigurationRequest)request
{
  v2 = sub_10000258C();

  return v2;
}

- (WFAction)action
{
  v2 = sub_1000025CC();

  return v2;
}

- (NSString)intentIdentifier
{
  sub_100002624();
  v2 = sub_10001B8D4();

  return v2;
}

- (_TtC28WidgetConfigurationExtension38WidgetConfigurationParameterDataSource)dataSource
{
  v2 = sub_100002690();

  return v2;
}

- (id)dismiss
{
  v5[4] = sub_100002738();
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100002770;
  v5[3] = &unk_10002D3F8;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)cancel
{
  v2 = sub_10000285C();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100002770;
    v6[3] = &unk_10002D3D0;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIViewController)hostingVC
{
  v2 = sub_1000028C8();

  return v2;
}

- (void)setHostingVC:(id)c
{
  cCopy = c;
  selfCopy = self;
  sub_100002934(c);
}

- (_TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController)initWithRequest:(id)request action:(id)action intentIdentifier:(id)identifier dismiss:(id)dismiss cancel:(id)cancel
{
  v10 = _Block_copy(dismiss);
  v11 = _Block_copy(cancel);
  v12 = sub_10001B8E4();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  if (v11)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    v11 = sub_100004A6C;
  }

  else
  {
    v16 = 0;
  }

  return sub_10000297C(request, action, v12, v14, sub_100004A10, v15, v11, v16);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002C4C();
}

- (void)populateConfiguredIntentWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_100003814(&unk_100028090, v5);
}

- (_TtC28WidgetConfigurationExtension45WFWidgetParametersConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_10001B8E4();
  }

  bundleCopy = bundle;
  sub_10000392C();
}

@end