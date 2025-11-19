@interface PXStoryRelatedMusicCurationParameters
- (PXStoryRelatedMusicCurationParameters)init;
@end

@implementation PXStoryRelatedMusicCurationParameters

- (PXStoryRelatedMusicCurationParameters)init
{
  v8.receiver = self;
  v8.super_class = PXStoryRelatedMusicCurationParameters;
  v2 = [(PXStoryRelatedMusicCurationParameters *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
    recentlyUsedFlexSongIDs = v2->_recentlyUsedFlexSongIDs;
    v2->_recentlyUsedFlexSongIDs = v3;

    v5 = [MEMORY[0x1E695DFD8] set];
    recentlyUsedAppleMusicSongIDs = v2->_recentlyUsedAppleMusicSongIDs;
    v2->_recentlyUsedAppleMusicSongIDs = v5;
  }

  return v2;
}

@end