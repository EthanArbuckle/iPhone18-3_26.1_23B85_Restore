@interface VUIUTSURLRequestFactoryProxy
+ (void)createRoute:(NSString *)route completion:(id)completion;
@end

@implementation VUIUTSURLRequestFactoryProxy

+ (void)createRoute:(NSString *)route completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = route;
  v7[3] = v6;
  v7[4] = self;
  routeCopy = route;

  sub_1E38364EC(&unk_1E42CAEE8, v7);
}

@end