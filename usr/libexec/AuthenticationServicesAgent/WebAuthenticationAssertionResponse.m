@interface WebAuthenticationAssertionResponse
- (NSData)credentialID;
- (NSData)userHandle;
- (WebAuthenticationAssertionResponse)init;
- (WebAuthenticationAssertionResponse)initWithName:(id)a3 displayName:(id)a4 userHandle:(id)a5 synchronizable:(BOOL)a6 group:(id)a7 credentialID:(id)a8 accessGroup:(id)a9;
- (WebAuthenticationAssertionResponse)initWithWKResponse:(id)a3;
- (void)setCredentialID:(id)a3;
- (void)setLaContext:(id)a3;
- (void)setUserHandle:(id)a3;
- (void)setWkResponse:(id)a3;
@end

@implementation WebAuthenticationAssertionResponse

- (void)setWkResponse:(id)a3
{
  v4 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse);
  *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse) = a3;
  v3 = a3;
}

- (NSData)userHandle
{
  v2 = (self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle);
  v3 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_10000B9BC(*v2, v3);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B9A8(v5, v3);
    v4 = isa;
  }

  return v4;
}

- (void)setUserHandle:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  v9 = (self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle);
  v10 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle);
  v11 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle + 8);
  *v9 = v3;
  v9[1] = v7;
  sub_10000B9A8(v10, v11);
}

- (NSData)credentialID
{
  v2 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID);
  v3 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID + 8);
  sub_10000B9BC(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10000B954(v2, v3);

  return v4.super.isa;
}

- (void)setCredentialID:(id)a3
{
  v4 = a3;
  v11 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (v11 + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID);
  v9 = *(v11 + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID);
  v10 = *(v11 + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID + 8);
  *v8 = v5;
  v8[1] = v7;
  sub_10000B954(v9, v10);
}

- (void)setLaContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_laContext);
  *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_laContext) = a3;
  v5 = a3;
  v7 = self;

  if (v5)
  {
    v6 = [(WebAuthenticationAssertionResponse *)v7 wkResponse];
    [(_WKWebAuthenticationAssertionResponse *)v6 setLAContext:v5];
  }
}

- (WebAuthenticationAssertionResponse)initWithName:(id)a3 displayName:(id)a4 userHandle:(id)a5 synchronizable:(BOOL)a6 group:(id)a7 credentialID:(id)a8 accessGroup:(id)a9
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v13;
  v36 = v12;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = sub_10000B598(v36, v35, v34, v15, v20, v22, a6, v23, v25, v26, v28, v29, v31);
  sub_10000B954(v26, v28);
  sub_10000B954(v20, v22);
  return v32;
}

- (WebAuthenticationAssertionResponse)initWithWKResponse:(id)a3
{
  v3 = a3;
  v4 = sub_10000B6DC(v3);

  return v4;
}

- (WebAuthenticationAssertionResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end