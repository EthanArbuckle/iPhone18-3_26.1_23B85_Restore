@interface STCommunicationLimitsBlockingViewControllerFactory
+ (id)communicationLimitsBlockingViewControllerWithViewModel:(id)a3;
+ (id)createCommunicationLimitsBlockingViewModelWithBlockingViewType:(int64_t)a3 contactNameByHandle:(id)a4 delegate:(id)a5 handles:(id)a6;
- (_TtC12ScreenTimeUI50STCommunicationLimitsBlockingViewControllerFactory)init;
@end

@implementation STCommunicationLimitsBlockingViewControllerFactory

+ (id)communicationLimitsBlockingViewControllerWithViewModel:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for STCommunicationLimitsBlockingViewController());
  *&v4[qword_27CE90620] = a3;
  v5 = a3;
  v6 = sub_21DDBD7E0();

  return v6;
}

+ (id)createCommunicationLimitsBlockingViewModelWithBlockingViewType:(int64_t)a3 contactNameByHandle:(id)a4 delegate:(id)a5 handles:(id)a6
{
  if (a4)
  {
    v8 = sub_21DDBDA70();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_21DDBDB60();
  if ((a3 - 1) >= 3)
  {
    a3 = 0;
  }

  type metadata accessor for CommunicationLimitsBlockingViewModel();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = sub_21DDB78F8(a3, v8, a5, v9);

  return v10;
}

- (_TtC12ScreenTimeUI50STCommunicationLimitsBlockingViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STCommunicationLimitsBlockingViewControllerFactory();
  return [(STCommunicationLimitsBlockingViewControllerFactory *)&v3 init];
}

@end