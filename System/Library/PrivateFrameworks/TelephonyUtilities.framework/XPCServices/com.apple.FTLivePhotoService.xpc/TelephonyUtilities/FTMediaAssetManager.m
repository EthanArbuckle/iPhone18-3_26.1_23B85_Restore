@interface FTMediaAssetManager
- (void)saveLivePhotoWithPhotoURL:(NSURL *)a3 videoURL:(NSURL *)a4 completion:(id)a5;
- (void)saveVideoWithURL:(NSURL *)a3 completion:(id)a4;
@end

@implementation FTMediaAssetManager

- (void)saveLivePhotoWithPhotoURL:(NSURL *)a3 videoURL:(NSURL *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1000297CC(&unk_10003FDC0, v9);
}

- (void)saveVideoWithURL:(NSURL *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1000297CC(&unk_10003FD70, v7);
}

@end