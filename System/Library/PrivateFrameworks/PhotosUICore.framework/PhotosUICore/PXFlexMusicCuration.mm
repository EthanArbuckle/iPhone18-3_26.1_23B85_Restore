@interface PXFlexMusicCuration
- (PXFlexMusicCuration)init;
- (PXFlexMusicCuration)initWithBestSongSuggestions:(id)a3 secondarySongSuggestions:(id)a4;
@end

@implementation PXFlexMusicCuration

- (PXFlexMusicCuration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFlexMusicCuration.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXFlexMusicCuration init]"}];

  abort();
}

- (PXFlexMusicCuration)initWithBestSongSuggestions:(id)a3 secondarySongSuggestions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXFlexMusicCuration;
  v9 = [(PXFlexMusicCuration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bestSongSuggestions, a3);
    objc_storeStrong(&v10->_secondarySongSuggestions, a4);
  }

  return v10;
}

@end