@interface PXStoryMiroMusicInfo
- (PXStoryMiroMusicInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PXStoryMiroMusicInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  flexMusicID = [(PXStoryMiroMusicInfo *)self flexMusicID];
  [coderCopy encodeObject:flexMusicID forKey:@"MoodSongDictID"];
}

- (PXStoryMiroMusicInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PXStoryMiroMusicInfo;
  v5 = [(PXStoryMiroMusicInfo *)&v9 init];
  if (v5 && ([coderCopy containsValueForKey:@"MoodiTunesMediaID"] & 1) == 0)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MoodSongDictID"];
    flexMusicID = v5->_flexMusicID;
    v5->_flexMusicID = v6;
  }

  return v5;
}

@end