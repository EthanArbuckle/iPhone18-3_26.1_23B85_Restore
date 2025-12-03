@interface SNNetworkActivityTracingInternal
+ (SNNetworkActivityTracingInternal)shared;
- (void)activateWithLabel:(int64_t)label completion:(id)completion;
- (void)currentNetworkActivityToken:(id)token;
- (void)startWithLabel:(int64_t)label activate:(BOOL)activate completion:(id)completion;
- (void)stopWithLabel:(int64_t)label reason:(int64_t)reason error:(id)error completion:(id)completion;
- (void)tracingCancelWithCompletion:(id)completion;
@end

@implementation SNNetworkActivityTracingInternal

- (void)startWithLabel:(int64_t)label activate:(BOOL)activate completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  selfCopy = self;
  NetworkActivityTracing.start(label:activate:completion:)(label);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

- (void)tracingCancelWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  NetworkActivityTracing.tracingCancel(completion:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

- (void)stopWithLabel:(int64_t)label reason:(int64_t)reason error:(id)error completion:(id)completion
{
  v9 = _Block_copy(completion);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  selfCopy = self;
  errorCopy = error;
  NetworkActivityTracing.stop(label:reason:error:completion:)(label);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v9);
}

+ (SNNetworkActivityTracingInternal)shared
{
  v2 = static NetworkActivityTracing.shared.getter();

  return v2;
}

- (void)activateWithLabel:(int64_t)label completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  selfCopy = self;
  NetworkActivityTracing.activate(label:completion:)(label);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
}

- (void)currentNetworkActivityToken:(id)token
{
  v4 = _Block_copy(token);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  NetworkActivityTracing.currentNetworkActivityToken(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

@end