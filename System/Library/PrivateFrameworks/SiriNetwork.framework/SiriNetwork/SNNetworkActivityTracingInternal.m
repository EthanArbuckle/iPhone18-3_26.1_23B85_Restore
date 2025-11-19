@interface SNNetworkActivityTracingInternal
+ (SNNetworkActivityTracingInternal)shared;
- (void)activateWithLabel:(int64_t)a3 completion:(id)a4;
- (void)currentNetworkActivityToken:(id)a3;
- (void)startWithLabel:(int64_t)a3 activate:(BOOL)a4 completion:(id)a5;
- (void)stopWithLabel:(int64_t)a3 reason:(int64_t)a4 error:(id)a5 completion:(id)a6;
- (void)tracingCancelWithCompletion:(id)a3;
@end

@implementation SNNetworkActivityTracingInternal

- (void)startWithLabel:(int64_t)a3 activate:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  v8 = self;
  NetworkActivityTracing.start(label:activate:completion:)(a3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

- (void)tracingCancelWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  NetworkActivityTracing.tracingCancel(completion:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

- (void)stopWithLabel:(int64_t)a3 reason:(int64_t)a4 error:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  v10 = self;
  v11 = a5;
  NetworkActivityTracing.stop(label:reason:error:completion:)(a3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v9);
}

+ (SNNetworkActivityTracingInternal)shared
{
  v2 = static NetworkActivityTracing.shared.getter();

  return v2;
}

- (void)activateWithLabel:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  v7 = self;
  NetworkActivityTracing.activate(label:completion:)(a3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
}

- (void)currentNetworkActivityToken:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  NetworkActivityTracing.currentNetworkActivityToken(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

@end