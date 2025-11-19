@interface PXStoryDefaultAutoEditDecisionListsProducerFactory
- (PXStoryDefaultAutoEditDecisionListsProducerFactory)initWithStoryConfiguration:(id)a3;
- (id)autoEditDecisionListsProducerForAssetCollection:(id)a3 displayAssets:(id)a4 movieHighlights:(id)a5 chapterCollection:(id)a6 targetOverallDurationInfo:(id *)a7;
- (id)fallbackAutoEditDecisionListsProducer;
@end

@implementation PXStoryDefaultAutoEditDecisionListsProducerFactory

- (id)fallbackAutoEditDecisionListsProducer
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = PFStoryColorGradeSupportedCategories();
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  memset(&v35, 0, sizeof(v35));
  [(PFStoryAutoEditConfiguration *)self->_configuration outroDurationForSongPace:2];
  CMTimeMakeWithSeconds(&v35, v5, 600);
  v6 = [(PXStoryDefaultAutoEditDecisionListsProducerFactory *)self storyConfiguration];
  v7 = [v6 disableNUp];

  v8 = [PXStoryConcreteAutoEditDecisionList alloc];
  v23 = *(MEMORY[0x1E69C0DB8] + 48);
  v24 = *(MEMORY[0x1E69C0DB8] + 32);
  v32 = v24;
  v33 = v23;
  v22 = *(MEMORY[0x1E69C0DB8] + 64);
  v34 = v22;
  v20 = *MEMORY[0x1E69C0DB8];
  v21 = *(MEMORY[0x1E69C0DB8] + 16);
  v30 = *MEMORY[0x1E69C0DB8];
  v31 = v21;
  v29 = v35;
  v9 = [(PXStoryConcreteAutoEditDecisionList *)v8 initWithColorGradeCategory:0 song:0 clipCatalog:0 constrainedOverallDurationInfo:&v30 outroDuration:&v29 allowsNUp:v7 ^ 1u];
  [v4 addObject:v9];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [PXStoryConcreteAutoEditDecisionList alloc];
        v32 = v24;
        v33 = v23;
        v34 = v22;
        v30 = v20;
        v31 = v21;
        v29 = v35;
        v17 = [(PXStoryConcreteAutoEditDecisionList *)v16 initWithColorGradeCategory:v15 song:0 clipCatalog:0 constrainedOverallDurationInfo:&v30 outroDuration:&v29 allowsNUp:v7 ^ 1u];
        [v4 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v12);
  }

  v18 = [[PXStoryPassthroughAutoEditDecisionListsProducer alloc] initWithAutoEditDecisionLists:v4];

  return v18;
}

- (id)autoEditDecisionListsProducerForAssetCollection:(id)a3 displayAssets:(id)a4 movieHighlights:(id)a5 chapterCollection:(id)a6 targetOverallDurationInfo:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [PXStorySongsAutoEditDecisionListsProducer alloc];
  configuration = self->_configuration;
  v18 = [(PXStoryDefaultAutoEditDecisionListsProducerFactory *)self storyConfiguration];
  v19 = *&a7->var1.var1.var3;
  v23[2] = *&a7->var1.var1.var0;
  v23[3] = v19;
  v23[4] = *&a7->var1.var2.var1;
  v20 = *&a7->var1.var0.var1;
  v23[0] = *&a7->var0;
  v23[1] = v20;
  v21 = [(PXStorySongsAutoEditDecisionListsProducer *)v16 initWithAssetCollection:v15 displayAssets:v14 movieHighlights:v13 chapterCollection:v12 targetOverallDurationInfo:v23 configuration:configuration storyConfiguration:v18];

  return v21;
}

- (PXStoryDefaultAutoEditDecisionListsProducerFactory)initWithStoryConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXStoryDefaultAutoEditDecisionListsProducerFactory;
  v6 = [(PXStoryDefaultAutoEditDecisionListsProducerFactory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storyConfiguration, a3);
    v8 = +[PXStoryAutoEditConfigurationFactory autoEditConfiguration];
    configuration = v7->_configuration;
    v7->_configuration = v8;
  }

  return v7;
}

@end