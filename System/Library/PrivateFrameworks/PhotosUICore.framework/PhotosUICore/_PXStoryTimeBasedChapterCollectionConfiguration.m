@interface _PXStoryTimeBasedChapterCollectionConfiguration
- (_PXStoryTimeBasedChapterCollectionConfiguration)init;
- (void)addChapterWithDateInterval:(id)a3 configuration:(id)a4;
@end

@implementation _PXStoryTimeBasedChapterCollectionConfiguration

- (void)addChapterWithDateInterval:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[_PXStoryTimeBasedChapter alloc] initWithDateInterval:v7 firstAssetLocalIdentifier:0];

  v6[2](v6, v9);
  v8 = [(_PXStoryTimeBasedChapterCollectionConfiguration *)self chapters];
  [v8 addObject:v9];
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