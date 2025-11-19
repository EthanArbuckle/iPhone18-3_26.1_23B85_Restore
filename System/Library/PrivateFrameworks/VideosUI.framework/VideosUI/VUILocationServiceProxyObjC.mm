@interface VUILocationServiceProxyObjC
+ (void)retrieveLocationWithCompletionHandler:(id)a3;
@end

@implementation VUILocationServiceProxyObjC

+ (void)retrieveLocationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1E38364EC(&unk_1E42D4BF8, v5);
}

@end