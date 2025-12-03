@interface PXFlexMusicCuration
- (PXFlexMusicCuration)init;
- (PXFlexMusicCuration)initWithBestSongSuggestions:(id)suggestions secondarySongSuggestions:(id)songSuggestions;
@end

@implementation PXFlexMusicCuration

- (PXFlexMusicCuration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicCuration.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXFlexMusicCuration init]"}];

  abort();
}

- (PXFlexMusicCuration)initWithBestSongSuggestions:(id)suggestions secondarySongSuggestions:(id)songSuggestions
{
  suggestionsCopy = suggestions;
  songSuggestionsCopy = songSuggestions;
  v12.receiver = self;
  v12.super_class = PXFlexMusicCuration;
  v9 = [(PXFlexMusicCuration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bestSongSuggestions, suggestions);
    objc_storeStrong(&v10->_secondarySongSuggestions, songSuggestions);
  }

  return v10;
}

@end