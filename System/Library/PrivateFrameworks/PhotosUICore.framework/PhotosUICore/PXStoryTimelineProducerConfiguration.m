@interface PXStoryTimelineProducerConfiguration
- (PXStoryTimelineProducerConfiguration)init;
- (PXStoryTimelineProducerConfiguration)initWithResourcesDataSource:(id)a3 style:(id)a4 spec:(id)a5 options:(unint64_t)a6 loadingCoordinator:(id)a7 errorReporter:(id)a8;
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

- (PXStoryTimelineProducerConfiguration)initWithResourcesDataSource:(id)a3 style:(id)a4 spec:(id)a5 options:(unint64_t)a6 loadingCoordinator:(id)a7 errorReporter:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v26 = a7;
  v17 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"style != nil"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"resourcesDataSource != nil"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"spec != nil"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = PXStoryTimelineProducerConfiguration;
  v18 = [(PXStoryTimelineProducerConfiguration *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_resourcesDataSource, a3);
    objc_storeStrong(&v19->_style, a4);
    objc_storeStrong(&v19->_spec, a5);
    v19->_options = a6;
    objc_storeStrong(&v19->_loadingCoordinator, a7);
    objc_storeStrong(&v19->_errorReporter, a8);
    v19->_rangeOfPrioritizedDisplayAssetResources = xmmword_1A5380D90;
  }

  return v19;
}

- (PXStoryTimelineProducerConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineProducer.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXStoryTimelineProducerConfiguration init]"}];

  abort();
}

@end