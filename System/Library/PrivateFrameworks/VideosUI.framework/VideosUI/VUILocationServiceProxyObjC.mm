@interface VUILocationServiceProxyObjC
+ (void)retrieveLocationWithCompletionHandler:(id)handler;
@end

@implementation VUILocationServiceProxyObjC

+ (void)retrieveLocationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_1E38364EC(&unk_1E42D4BF8, v5);
}

@end