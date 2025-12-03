@interface _PXStoryMemoryGraphChapter
- (NSDictionary)graphChapterDictionary;
- (_PXStoryMemoryGraphChapter)init;
- (void)setLocalizedSubtitle:(id)subtitle;
- (void)setLocalizedTitle:(id)title;
@end

@implementation _PXStoryMemoryGraphChapter

- (void)setLocalizedSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  [(NSMutableDictionary *)self->_graphChapterDictionary setObject:v4 forKeyedSubscript:@"subtitle"];
}

- (void)setLocalizedTitle:(id)title
{
  v4 = [title copy];
  [(NSMutableDictionary *)self->_graphChapterDictionary setObject:v4 forKeyedSubscript:@"title"];
}

- (NSDictionary)graphChapterDictionary
{
  v2 = [(NSMutableDictionary *)self->_graphChapterDictionary copy];

  return v2;
}

- (_PXStoryMemoryGraphChapter)init
{
  v6.receiver = self;
  v6.super_class = _PXStoryMemoryGraphChapter;
  v2 = [(_PXStoryMemoryGraphChapter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    graphChapterDictionary = v2->_graphChapterDictionary;
    v2->_graphChapterDictionary = v3;
  }

  return v2;
}

@end