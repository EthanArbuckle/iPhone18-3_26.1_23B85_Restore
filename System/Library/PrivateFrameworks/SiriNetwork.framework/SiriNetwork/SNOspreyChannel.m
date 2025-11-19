@interface SNOspreyChannel
- (NSString)description;
- (SNOspreyChannel)initWithURL:(id)a3 configuration:(id)a4;
- (SNOspreyChannel)initWithURL:(id)a3 configuration:(id)a4 useCache:(BOOL)a5;
- (id)bidirectionalStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6;
@end

@implementation SNOspreyChannel

- (NSString)description
{
  v2 = self;
  v3 = SiriNetworkOspreyChannel.description.getter();
  v5 = v4;

  v6 = MEMORY[0x223DE2070](v3, v5);

  return v6;
}

- (id)bidirectionalStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a4);
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v9)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    v9 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SNLinkRecommendationInfo?) -> ();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = self;
  v19 = SiriNetworkOspreyChannel.bidirectionalStreamingRequest(withMethodName:requestBuilder:streamingResponseHandler:completion:)(v12, v14, v9, v15, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSData) -> (), v16, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v17);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v9);

  return v19;
}

- (SNOspreyChannel)initWithURL:(id)a3 configuration:(id)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return SiriNetworkOspreyChannel.init(url:configuration:)(v8, a4);
}

- (SNOspreyChannel)initWithURL:(id)a3 configuration:(id)a4 useCache:(BOOL)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return SiriNetworkOspreyChannel.init(url:configuration:useCache:)(v10, a4, a5);
}

@end