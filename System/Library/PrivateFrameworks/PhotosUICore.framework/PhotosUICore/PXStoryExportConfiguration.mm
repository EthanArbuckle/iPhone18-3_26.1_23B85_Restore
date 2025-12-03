@interface PXStoryExportConfiguration
- (PXExtendedTraitCollection)extendedTraitCollection;
- (PXStoryErrorReporter)errorReporter;
- (PXStoryExportConfiguration)initWithConfiguration:(id)configuration videoOptions:(id)options;
- (PXStoryExportConfiguration)initWithConfiguration:(id)configuration videoOptions:(id)options builder:(id)builder;
- (void)copyOptionalPropertiesFromOtherExportConfiguration:(id)configuration;
@end

@implementation PXStoryExportConfiguration

- (PXStoryErrorReporter)errorReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_errorReporter);

  return WeakRetained;
}

- (PXExtendedTraitCollection)extendedTraitCollection
{
  videoOptions = [(PXStoryExportConfiguration *)self videoOptions];
  fullSizePlayerExtendedTraitCollectionSnapshot = [videoOptions fullSizePlayerExtendedTraitCollectionSnapshot];

  videoOptions2 = [(PXStoryExportConfiguration *)self videoOptions];
  prefersExportLayoutMatchesPlayback = [videoOptions2 prefersExportLayoutMatchesPlayback];

  v7 = [PXStoryExportExtendedTraitCollection alloc];
  if (prefersExportLayoutMatchesPlayback && fullSizePlayerExtendedTraitCollectionSnapshot)
  {
    [fullSizePlayerExtendedTraitCollectionSnapshot layoutReferenceSize];
    v9 = v8;
    v11 = v10;
    [fullSizePlayerExtendedTraitCollectionSnapshot displayScale];
    v13 = v12;
    [fullSizePlayerExtendedTraitCollectionSnapshot fullScreenReferenceRect];
    v18 = [(PXStoryExportExtendedTraitCollection *)v7 initWithLayoutReferenceSize:v9 displayScale:v11 overrideFullScreenReferenceRect:v13, v14, v15, v16, v17];
  }

  else
  {
    videoOptions3 = [(PXStoryExportConfiguration *)self videoOptions];
    [videoOptions3 resolution];
    v21 = v20;
    v23 = v22;
    videoOptions4 = [(PXStoryExportConfiguration *)self videoOptions];
    [videoOptions4 scale];
    v18 = [(PXStoryExportExtendedTraitCollection *)v7 initWithLayoutReferenceSize:v21 displayScale:v23 overrideFullScreenReferenceRect:v25, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  return v18;
}

- (void)copyOptionalPropertiesFromOtherExportConfiguration:(id)configuration
{
  configurationCopy = configuration;
  activityType = [configurationCopy activityType];
  [(PXStoryExportConfiguration *)self setActivityType:activityType];

  activityCategory = [configurationCopy activityCategory];
  [(PXStoryExportConfiguration *)self setActivityCategory:activityCategory];

  errorReporter = [configurationCopy errorReporter];

  [(PXStoryExportConfiguration *)self setErrorReporter:errorReporter];
}

- (PXStoryExportConfiguration)initWithConfiguration:(id)configuration videoOptions:(id)options builder:(id)builder
{
  builderCopy = builder;
  v9 = [(PXStoryExportConfiguration *)self initWithConfiguration:configuration videoOptions:options];
  if (v9)
  {
    builderCopy[2](builderCopy, v9);
  }

  return v9;
}

- (PXStoryExportConfiguration)initWithConfiguration:(id)configuration videoOptions:(id)options
{
  configurationCopy = configuration;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = PXStoryExportConfiguration;
  v9 = [(PXStoryExportConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storyConfiguration, configuration);
    v11 = [optionsCopy copy];
    videoOptions = v10->_videoOptions;
    v10->_videoOptions = v11;
  }

  return v10;
}

@end