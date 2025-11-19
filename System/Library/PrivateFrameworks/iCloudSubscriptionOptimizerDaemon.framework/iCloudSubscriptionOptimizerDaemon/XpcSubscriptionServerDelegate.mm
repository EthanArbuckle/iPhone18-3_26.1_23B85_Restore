@interface XpcSubscriptionServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC33iCloudSubscriptionOptimizerDaemon29XpcSubscriptionServerDelegate)init;
- (void)dealloc;
@end

@implementation XpcSubscriptionServerDelegate

- (_TtC33iCloudSubscriptionOptimizerDaemon29XpcSubscriptionServerDelegate)init
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for XpcSubscriptionServerDelegate();
  v2 = [(XpcSubscriptionServerDelegate *)&v5 init];
  if (qword_28140FA80 != -1)
  {
    swift_once();
  }

  v3 = sub_275B7A96C();
  __swift_project_value_buffer(v3, qword_28140FA90);
  sub_275B7A91C();
  return v2;
}

- (void)dealloc
{
  v2 = qword_28140FA80;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_275B7A96C();
  __swift_project_value_buffer(v4, qword_28140FA90);
  sub_275B7A91C();
  v5.receiver = v3;
  v5.super_class = type metadata accessor for XpcSubscriptionServerDelegate();
  [(XpcSubscriptionServerDelegate *)&v5 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_275B78638(v7);

  return v9 & 1;
}

@end