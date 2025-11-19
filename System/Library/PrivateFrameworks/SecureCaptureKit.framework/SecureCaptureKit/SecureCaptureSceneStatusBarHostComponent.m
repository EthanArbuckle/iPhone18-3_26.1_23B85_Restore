@interface SecureCaptureSceneStatusBarHostComponent
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
@end

@implementation SecureCaptureSceneStatusBarHostComponent

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_264F03DF4(v7);
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_264F033A0(v6, v7);
}

@end