@interface PXStoryDummyStyleProducer
- (PXStoryDummyStyleProducer)initWithStyleConfiguration:(id)configuration;
- (id)styleWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category songResource:(id)resource cueSource:(id)source autoEditDecisionList:(id)list styleOptions:(id)options isCustomized:(BOOL)customized;
@end

@implementation PXStoryDummyStyleProducer

- (id)styleWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category songResource:(id)resource cueSource:(id)source autoEditDecisionList:(id)list styleOptions:(id)options isCustomized:(BOOL)customized
{
  v10 = [PXStoryDummyStyle alloc];
  styleConfiguration = [(PXStoryDummyStyleProducer *)self styleConfiguration];
  v12 = [(PXStoryDummyStyle *)v10 initWithConfiguration:styleConfiguration];

  return v12;
}

- (PXStoryDummyStyleProducer)initWithStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PXStoryDummyStyleProducer;
  v5 = [(PXStoryDummyStyleProducer *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    styleConfiguration = v5->_styleConfiguration;
    v5->_styleConfiguration = v6;
  }

  return v5;
}

@end