@interface VUIUTSURLRequestFactoryProxy
+ (void)createRoute:(NSString *)a3 completion:(id)a4;
@end

@implementation VUIUTSURLRequestFactoryProxy

+ (void)createRoute:(NSString *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1E38364EC(&unk_1E42CAEE8, v7);
}

@end