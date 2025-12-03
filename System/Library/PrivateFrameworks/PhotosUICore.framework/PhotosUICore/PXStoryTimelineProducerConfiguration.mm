@interface PXStoryTimelineProducerConfiguration
- (PXStoryTimelineProducerConfiguration)init;
- (PXStoryTimelineProducerConfiguration)initWithResourcesDataSource:(id)source style:(id)style spec:(id)spec options:(unint64_t)options loadingCoordinator:(id)coordinator errorReporter:(id)reporter;
- (_NSRange)rangeOfPrioritizedDisplayAssetResources;
@end

@implementation PXStoryTimelineProducerConfiguration

- (_NSRange)rangeOfPrioritizedDisplayAssetResources
{
  length = self->_rangeOfPrioritizedDisplayAssetResources.length;
  location = self->_rangeOfPrioritizedDisplayAssetResources.location;
  result.length = length;
  result.location = location;
  return result;
}

- (PXStoryTimelineProducerConfiguration)initWithResourcesDataSource:(id)source style:(id)style spec:(id)spec options:(unint64_t)options loadingCoordinator:(id)coordinator errorReporter:(id)reporter
{
  sourceCopy = source;
  styleCopy = style;
  specCopy = spec;
  coordinatorCopy = coordinator;
  reporterCopy = reporter;
  if (sourceCopy)
  {
    if (styleCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"style != nil"}];

    if (specCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"resourcesDataSource != nil"}];

  if (!styleCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (specCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"spec != nil"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = PXStoryTimelineProducerConfiguration;
  v18 = [(PXStoryTimelineProducerConfiguration *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_resourcesDataSource, source);
    objc_storeStrong(&v19->_style, style);
    objc_storeStrong(&v19->_spec, spec);
    v19->_options = options;
    objc_storeStrong(&v19->_loadingCoordinator, coordinator);
    objc_storeStrong(&v19->_errorReporter, reporter);
    v19->_rangeOfPrioritizedDisplayAssetResources = xmmword_1A5380D90;
  }

  return v19;
}

- (PXStoryTimelineProducerConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXStoryTimelineProducerConfiguration init]"}];

  abort();
}

@end