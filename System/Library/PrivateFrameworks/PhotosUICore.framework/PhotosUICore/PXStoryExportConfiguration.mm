@interface PXStoryExportConfiguration
- (PXExtendedTraitCollection)extendedTraitCollection;
- (PXStoryErrorReporter)errorReporter;
- (PXStoryExportConfiguration)initWithConfiguration:(id)a3 videoOptions:(id)a4;
- (PXStoryExportConfiguration)initWithConfiguration:(id)a3 videoOptions:(id)a4 builder:(id)a5;
- (void)copyOptionalPropertiesFromOtherExportConfiguration:(id)a3;
@end

@implementation PXStoryExportConfiguration

- (PXStoryErrorReporter)errorReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_errorReporter);

  return WeakRetained;
}

- (PXExtendedTraitCollection)extendedTraitCollection
{
  v3 = [(PXStoryExportConfiguration *)self videoOptions];
  v4 = [v3 fullSizePlayerExtendedTraitCollectionSnapshot];

  v5 = [(PXStoryExportConfiguration *)self videoOptions];
  v6 = [v5 prefersExportLayoutMatchesPlayback];

  v7 = [PXStoryExportExtendedTraitCollection alloc];
  if (v6 && v4)
  {
    [v4 layoutReferenceSize];
    v9 = v8;
    v11 = v10;
    [v4 displayScale];
    v13 = v12;
    [v4 fullScreenReferenceRect];
    v18 = [(PXStoryExportExtendedTraitCollection *)v7 initWithLayoutReferenceSize:v9 displayScale:v11 overrideFullScreenReferenceRect:v13, v14, v15, v16, v17];
  }

  else
  {
    v19 = [(PXStoryExportConfiguration *)self videoOptions];
    [v19 resolution];
    v21 = v20;
    v23 = v22;
    v24 = [(PXStoryExportConfiguration *)self videoOptions];
    [v24 scale];
    v18 = [(PXStoryExportExtendedTraitCollection *)v7 initWithLayoutReferenceSize:v21 displayScale:v23 overrideFullScreenReferenceRect:v25, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  return v18;
}

- (void)copyOptionalPropertiesFromOtherExportConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  [(PXStoryExportConfiguration *)self setActivityType:v5];

  v6 = [v4 activityCategory];
  [(PXStoryExportConfiguration *)self setActivityCategory:v6];

  v7 = [v4 errorReporter];

  [(PXStoryExportConfiguration *)self setErrorReporter:v7];
}

- (PXStoryExportConfiguration)initWithConfiguration:(id)a3 videoOptions:(id)a4 builder:(id)a5
{
  v8 = a5;
  v9 = [(PXStoryExportConfiguration *)self initWithConfiguration:a3 videoOptions:a4];
  if (v9)
  {
    v8[2](v8, v9);
  }

  return v9;
}

- (PXStoryExportConfiguration)initWithConfiguration:(id)a3 videoOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXStoryExportConfiguration;
  v9 = [(PXStoryExportConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storyConfiguration, a3);
    v11 = [v8 copy];
    videoOptions = v10->_videoOptions;
    v10->_videoOptions = v11;
  }

  return v10;
}

@end