@interface VUIMutableBookmark
- (void)setBookmarkTime:(double)time;
- (void)setBookmarkTimestamp:(id)timestamp;
@end

@implementation VUIMutableBookmark

- (void)setBookmarkTime:(double)time
{
  [(VUIBookmark *)self _setBookmarkTimeWithoutUpdatingTimestamp:time];
  date = [MEMORY[0x1E695DF00] date];
  [(VUIBookmark *)self _setBookmarkTimestamp:date];

  [(VUIBookmark *)self setHasFakeTimestamp:1];
}

- (void)setBookmarkTimestamp:(id)timestamp
{
  [(VUIBookmark *)self _setBookmarkTimestamp:timestamp];

  [(VUIBookmark *)self setHasFakeTimestamp:0];
}

@end