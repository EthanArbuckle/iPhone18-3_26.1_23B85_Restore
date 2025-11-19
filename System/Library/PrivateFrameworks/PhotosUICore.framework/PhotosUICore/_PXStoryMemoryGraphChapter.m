@interface _PXStoryMemoryGraphChapter
- (NSDictionary)graphChapterDictionary;
- (_PXStoryMemoryGraphChapter)init;
- (void)setLocalizedSubtitle:(id)a3;
- (void)setLocalizedTitle:(id)a3;
@end

@implementation _PXStoryMemoryGraphChapter

- (void)setLocalizedSubtitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_graphChapterDictionary setObject:v4 forKeyedSubscript:@"subtitle"];
}

- (void)setLocalizedTitle:(id)a3
{
  v4 = [a3 copy];
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