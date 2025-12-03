@interface _PXStoryDefaultStyleProducer
- (_PXStoryDefaultStyleProducer)initWithStoryConfiguration:(id)configuration;
- (id)styleWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category songResource:(id)resource cueSource:(id)source autoEditDecisionList:(id)list styleOptions:(id)options isCustomized:(BOOL)customized;
@end

@implementation _PXStoryDefaultStyleProducer

- (id)styleWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category songResource:(id)resource cueSource:(id)source autoEditDecisionList:(id)list styleOptions:(id)options isCustomized:(BOOL)customized
{
  resourceCopy = resource;
  sourceCopy = source;
  listCopy = list;
  if (self->_thumbnailOnly)
  {
    categoryCopy = category;
    categoryCopy = [[PXStoryConcreteThumbnailOnlyStyle alloc] initWithCustomColorGradeKind:kind originalColorGradeCategory:categoryCopy];
  }

  else
  {
    categoryCopy2 = category;
    v20 = [PXStoryConcreteStyle alloc];
    categoryCopy = [(_PXStoryDefaultStyleProducer *)self storyConfiguration];
    LOBYTE(v22) = customized;
    categoryCopy = [(PXStoryConcreteStyle *)v20 initWithCustomColorGradeKind:kind originalColorGradeCategory:categoryCopy2 songResource:resourceCopy cueSource:sourceCopy autoEditDecisionList:listCopy styleOptions:options.var0 isCustomized:*&options.var1 storyConfiguration:v22, categoryCopy];
  }

  return categoryCopy;
}

- (_PXStoryDefaultStyleProducer)initWithStoryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = _PXStoryDefaultStyleProducer;
  v6 = [(_PXStoryDefaultStyleProducer *)&v8 init];
  if (v6)
  {
    v6->_thumbnailOnly = ([configurationCopy options] & 2) != 0;
    objc_storeStrong(&v6->_storyConfiguration, configuration);
  }

  return v6;
}

@end