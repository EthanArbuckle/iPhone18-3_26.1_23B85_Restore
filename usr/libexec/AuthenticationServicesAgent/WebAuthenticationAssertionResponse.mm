@interface WebAuthenticationAssertionResponse
- (NSData)credentialID;
- (NSData)userHandle;
- (WebAuthenticationAssertionResponse)init;
- (WebAuthenticationAssertionResponse)initWithName:(id)name displayName:(id)displayName userHandle:(id)handle synchronizable:(BOOL)synchronizable group:(id)group credentialID:(id)d accessGroup:(id)accessGroup;
- (WebAuthenticationAssertionResponse)initWithWKResponse:(id)response;
- (void)setCredentialID:(id)d;
- (void)setLaContext:(id)context;
- (void)setUserHandle:(id)handle;
- (void)setWkResponse:(id)response;
@end

@implementation WebAuthenticationAssertionResponse

- (void)setWkResponse:(id)response
{
  v4 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse);
  *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse) = response;
  responseCopy = response;
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

- (void)setUserHandle:(id)handle
{
  handleCopy = handle;
  if (handle)
  {
    selfCopy = self;
    v5 = handleCopy;
    handleCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  v9 = (self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle);
  v10 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle);
  v11 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle + 8);
  *v9 = handleCopy;
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

- (void)setCredentialID:(id)d
{
  dCopy = d;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (selfCopy + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID);
  v9 = *(selfCopy + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID);
  v10 = *(selfCopy + OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID + 8);
  *v8 = v5;
  v8[1] = v7;
  sub_10000B954(v9, v10);
}

- (void)setLaContext:(id)context
{
  v4 = *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_laContext);
  *(self + OBJC_IVAR___WebAuthenticationAssertionResponse_laContext) = context;
  contextCopy = context;
  selfCopy = self;

  if (contextCopy)
  {
    wkResponse = [(WebAuthenticationAssertionResponse *)selfCopy wkResponse];
    [(_WKWebAuthenticationAssertionResponse *)wkResponse setLAContext:contextCopy];
  }
}

- (WebAuthenticationAssertionResponse)initWithName:(id)name displayName:(id)displayName userHandle:(id)handle synchronizable:(BOOL)synchronizable group:(id)group credentialID:(id)d accessGroup:(id)accessGroup
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v13;
  v36 = v12;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  handleCopy = handle;
  groupCopy = group;
  dCopy = d;
  accessGroupCopy = accessGroup;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = sub_10000B598(v36, v35, v34, v15, v20, v22, synchronizable, v23, v25, v26, v28, v29, v31);
  sub_10000B954(v26, v28);
  sub_10000B954(v20, v22);
  return v32;
}

- (WebAuthenticationAssertionResponse)initWithWKResponse:(id)response
{
  responseCopy = response;
  v4 = sub_10000B6DC(responseCopy);

  return v4;
}

- (WebAuthenticationAssertionResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end