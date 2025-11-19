@interface VUIActionAppStoreOffer
- (void)performWithTargetResponder:(UIResponder *)a3 completionHandler:(id)a4;
@end

@implementation VUIActionAppStoreOffer

- (void)performWithTargetResponder:(UIResponder *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1E38364EC(&unk_1E42AD5D0, v7);
}

@end