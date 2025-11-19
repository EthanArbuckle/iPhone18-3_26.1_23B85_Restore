@interface PushSubscriptionRequest
- (NSDictionary)parameters;
- (_TtC18PodcastsFoundation23PushSubscriptionRequest)init;
- (_TtC18PodcastsFoundation23PushSubscriptionRequest)initWithEndpointURL:(id)a3 action:(id)a4 apnsToken:(id)a5;
- (id)buildURLRequestAndReturnError:(id *)a3;
@end

@implementation PushSubscriptionRequest

- (_TtC18PodcastsFoundation23PushSubscriptionRequest)initWithEndpointURL:(id)a3 action:(id)a4 apnsToken:(id)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  v13 = sub_1D917820C();
  v15 = v14;
  v16 = a5;
  v17 = sub_1D9176C8C();
  v19 = v18;

  (*(v9 + 16))(self + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL, v12, v8);
  v20 = (self + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action);
  *v20 = v13;
  v20[1] = v15;
  v21 = (self + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken);
  *v21 = v17;
  v21[1] = v19;
  v24.receiver = self;
  v24.super_class = ObjectType;
  v22 = [(PushSubscriptionRequest *)&v24 init];
  (*(v9 + 8))(v12, v8);
  return v22;
}

- (NSDictionary)parameters
{
  v2 = self;
  PushSubscriptionRequest.parameters.getter();

  v3 = sub_1D917802C();

  return v3;
}

- (id)buildURLRequestAndReturnError:(id *)a3
{
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  PushSubscriptionRequest.buildURLRequest()(v8);

  v10 = sub_1D91764BC();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (_TtC18PodcastsFoundation23PushSubscriptionRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end