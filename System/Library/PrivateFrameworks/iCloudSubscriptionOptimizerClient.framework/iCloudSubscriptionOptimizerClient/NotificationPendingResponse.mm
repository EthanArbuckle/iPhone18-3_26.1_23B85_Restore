@interface NotificationPendingResponse
- (NSString)debugDescription;
- (NSString)description;
- (_TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse)init;
- (id)error;
- (id)maxDelayTimestampMillis;
@end

@implementation NotificationPendingResponse

- (id)maxDelayTimestampMillis
{
  if (self->responseError[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_maxDelayTsMillis])
  {
    initWithLongLong_ = 0;
  }

  else
  {
    initWithLongLong_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  }

  return initWithLongLong_;
}

- (id)error
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_responseError);
  if (v2)
  {
    v3 = v2;
    v4 = sub_275A3D2E4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_275A346AC();

  v3 = sub_275A3D924();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(NotificationPendingResponse *)self description];

  return v2;
}

- (_TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end