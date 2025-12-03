@interface FTMediaAssetManager
- (void)saveLivePhotoWithPhotoURL:(NSURL *)l videoURL:(NSURL *)rL completion:(id)completion;
- (void)saveVideoWithURL:(NSURL *)l completion:(id)completion;
@end

@implementation FTMediaAssetManager

- (void)saveLivePhotoWithPhotoURL:(NSURL *)l videoURL:(NSURL *)rL completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = l;
  v9[3] = rL;
  v9[4] = v8;
  v9[5] = self;
  lCopy = l;
  rLCopy = rL;
  selfCopy = self;

  sub_1000297CC(&unk_10003FDC0, v9);
}

- (void)saveVideoWithURL:(NSURL *)l completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = l;
  v7[3] = v6;
  v7[4] = self;
  lCopy = l;
  selfCopy = self;

  sub_1000297CC(&unk_10003FD70, v7);
}

@end