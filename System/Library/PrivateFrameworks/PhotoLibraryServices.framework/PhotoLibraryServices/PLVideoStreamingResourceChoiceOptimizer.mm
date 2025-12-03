@interface PLVideoStreamingResourceChoiceOptimizer
- (NSArray)preferredVideoResources;
- (PLVideoStreamingResourceChoiceOptimizer)initWithVideoResources:(id)resources;
@end

@implementation PLVideoStreamingResourceChoiceOptimizer

- (NSArray)preferredVideoResources
{
  streamableVideos = self->_streamableVideos;
  if (!streamableVideos)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    videoResources = self->_videoResources;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PLVideoStreamingResourceChoiceOptimizer_preferredVideoResources__block_invoke;
    v10[3] = &unk_1E756D460;
    v6 = v4;
    v11 = v6;
    [(NSArray *)videoResources enumerateObjectsUsingBlock:v10];
    v7 = self->_streamableVideos;
    self->_streamableVideos = v6;
    v8 = v6;

    streamableVideos = self->_streamableVideos;
  }

  return streamableVideos;
}

void __66__PLVideoStreamingResourceChoiceOptimizer_preferredVideoResources__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isStreamable])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (PLVideoStreamingResourceChoiceOptimizer)initWithVideoResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = PLVideoStreamingResourceChoiceOptimizer;
  v6 = [(PLVideoStreamingResourceChoiceOptimizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoResources, resources);
  }

  return v7;
}

@end