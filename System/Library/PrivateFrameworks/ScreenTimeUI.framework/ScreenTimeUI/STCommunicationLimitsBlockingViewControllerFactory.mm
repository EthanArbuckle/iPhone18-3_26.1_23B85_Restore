@interface STCommunicationLimitsBlockingViewControllerFactory
+ (id)communicationLimitsBlockingViewControllerWithViewModel:(id)model;
+ (id)createCommunicationLimitsBlockingViewModelWithBlockingViewType:(int64_t)type contactNameByHandle:(id)handle delegate:(id)delegate handles:(id)handles;
- (_TtC12ScreenTimeUI50STCommunicationLimitsBlockingViewControllerFactory)init;
@end

@implementation STCommunicationLimitsBlockingViewControllerFactory

+ (id)communicationLimitsBlockingViewControllerWithViewModel:(id)model
{
  v4 = objc_allocWithZone(type metadata accessor for STCommunicationLimitsBlockingViewController());
  *&v4[qword_27CE90620] = model;
  modelCopy = model;
  v6 = sub_21DDBD7E0();

  return v6;
}

+ (id)createCommunicationLimitsBlockingViewModelWithBlockingViewType:(int64_t)type contactNameByHandle:(id)handle delegate:(id)delegate handles:(id)handles
{
  if (handle)
  {
    v8 = sub_21DDBDA70();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_21DDBDB60();
  if ((type - 1) >= 3)
  {
    type = 0;
  }

  type metadata accessor for CommunicationLimitsBlockingViewModel();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = sub_21DDB78F8(type, v8, delegate, v9);

  return v10;
}

- (_TtC12ScreenTimeUI50STCommunicationLimitsBlockingViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STCommunicationLimitsBlockingViewControllerFactory();
  return [(STCommunicationLimitsBlockingViewControllerFactory *)&v3 init];
}

@end