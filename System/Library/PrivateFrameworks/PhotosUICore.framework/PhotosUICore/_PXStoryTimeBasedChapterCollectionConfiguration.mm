@interface _PXStoryTimeBasedChapterCollectionConfiguration
- (_PXStoryTimeBasedChapterCollectionConfiguration)init;
- (void)addChapterWithDateInterval:(id)interval configuration:(id)configuration;
@end

@implementation _PXStoryTimeBasedChapterCollectionConfiguration

- (void)addChapterWithDateInterval:(id)interval configuration:(id)configuration
{
  configurationCopy = configuration;
  intervalCopy = interval;
  v9 = [[_PXStoryTimeBasedChapter alloc] initWithDateInterval:intervalCopy firstAssetLocalIdentifier:0];

  configurationCopy[2](configurationCopy, v9);
  chapters = [(_PXStoryTimeBasedChapterCollectionConfiguration *)self chapters];
  [chapters addObject:v9];
}

- (_PXStoryTimeBasedChapterCollectionConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _PXStoryTimeBasedChapterCollectionConfiguration;
  v2 = [(_PXStoryTimeBasedChapterCollectionConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    chapters = v2->_chapters;
    v2->_chapters = v3;
  }

  return v2;
}

@end