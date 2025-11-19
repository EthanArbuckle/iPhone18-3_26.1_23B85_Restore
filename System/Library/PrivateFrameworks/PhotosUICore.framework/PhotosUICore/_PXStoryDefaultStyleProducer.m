@interface _PXStoryDefaultStyleProducer
- (_PXStoryDefaultStyleProducer)initWithStoryConfiguration:(id)a3;
- (id)styleWithCustomColorGradeKind:(int64_t)a3 originalColorGradeCategory:(id)a4 songResource:(id)a5 cueSource:(id)a6 autoEditDecisionList:(id)a7 styleOptions:(id)a8 isCustomized:(BOOL)a9;
@end

@implementation _PXStoryDefaultStyleProducer

- (id)styleWithCustomColorGradeKind:(int64_t)a3 originalColorGradeCategory:(id)a4 songResource:(id)a5 cueSource:(id)a6 autoEditDecisionList:(id)a7 styleOptions:(id)a8 isCustomized:(BOOL)a9
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self->_thumbnailOnly)
  {
    v17 = a4;
    v18 = [[PXStoryConcreteThumbnailOnlyStyle alloc] initWithCustomColorGradeKind:a3 originalColorGradeCategory:v17];
  }

  else
  {
    v19 = a4;
    v20 = [PXStoryConcreteStyle alloc];
    v17 = [(_PXStoryDefaultStyleProducer *)self storyConfiguration];
    LOBYTE(v22) = a9;
    v18 = [(PXStoryConcreteStyle *)v20 initWithCustomColorGradeKind:a3 originalColorGradeCategory:v19 songResource:v14 cueSource:v15 autoEditDecisionList:v16 styleOptions:a8.var0 isCustomized:*&a8.var1 storyConfiguration:v22, v17];
  }

  return v18;
}

- (_PXStoryDefaultStyleProducer)initWithStoryConfiguration:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = _PXStoryDefaultStyleProducer;
  v6 = [(_PXStoryDefaultStyleProducer *)&v8 init];
  if (v6)
  {
    v6->_thumbnailOnly = ([v5 options] & 2) != 0;
    objc_storeStrong(&v6->_storyConfiguration, a3);
  }

  return v6;
}

@end