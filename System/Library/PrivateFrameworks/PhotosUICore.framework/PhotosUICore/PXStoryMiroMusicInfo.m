@interface PXStoryMiroMusicInfo
- (PXStoryMiroMusicInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PXStoryMiroMusicInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryMiroMusicInfo *)self flexMusicID];
  [v4 encodeObject:v5 forKey:@"MoodSongDictID"];
}

- (PXStoryMiroMusicInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryMiroMusicInfo;
  v5 = [(PXStoryMiroMusicInfo *)&v9 init];
  if (v5 && ([v4 containsValueForKey:@"MoodiTunesMediaID"] & 1) == 0)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MoodSongDictID"];
    flexMusicID = v5->_flexMusicID;
    v5->_flexMusicID = v6;
  }

  return v5;
}

@end