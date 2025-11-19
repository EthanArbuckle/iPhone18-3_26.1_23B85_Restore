@interface PLVideoPlaybackResourceChoiceOptimizer
- (NSArray)preferredVideoResources;
- (PLVideoPlaybackResourceChoiceOptimizer)initWithVideoResources:(id)a3;
@end

@implementation PLVideoPlaybackResourceChoiceOptimizer

- (NSArray)preferredVideoResources
{
  v28 = *MEMORY[0x1E69E9840];
  playableVideos = self->_playableVideos;
  if (!playableVideos)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = self->_videoResources;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (!self->_masterVideoIsPresent)
          {
            v9 = *(*(&v23 + 1) + 8 * i);
            if ([v9 hasAssociatedMediaMetadata])
            {
              self->_masterVideoIsPresent = 1;
              self->_masterVideoIsPlayable = [v9 isPlayable];
            }
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v10 = [(NSArray *)self->_videoResources firstObject];
    v11 = [objc_opt_class() deviceSupportsHDR];

    v12 = [(NSArray *)self->_videoResources indexOfObjectPassingTest:&__block_literal_global_63305]!= 0x7FFFFFFFFFFFFFFFLL;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    videoResources = self->_videoResources;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__PLVideoPlaybackResourceChoiceOptimizer_preferredVideoResources__block_invoke_2;
    v19[3] = &unk_1E756EFA8;
    v21 = v11;
    v22 = v12;
    v19[4] = self;
    v15 = v13;
    v20 = v15;
    [(NSArray *)videoResources enumerateObjectsUsingBlock:v19];
    v16 = self->_playableVideos;
    self->_playableVideos = v15;
    v17 = v15;

    playableVideos = self->_playableVideos;
  }

  return playableVideos;
}

void __65__PLVideoPlaybackResourceChoiceOptimizer_preferredVideoResources__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 isHDRDerivative];
  v4 = [v6 isSDRFallback];
  v5 = [v6 isHDROrSDRDependingOnMasterVideo];
  if (v3)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    if ((*(a1 + 48) & 1) == 0 || (*(a1 + 49) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v5)
    {
      if (([v6 isPlayable] & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (*(*(a1 + 32) + 25))
    {
LABEL_12:
      [*(a1 + 40) addObject:v6];
    }
  }

LABEL_13:
}

- (PLVideoPlaybackResourceChoiceOptimizer)initWithVideoResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLVideoPlaybackResourceChoiceOptimizer;
  v6 = [(PLVideoPlaybackResourceChoiceOptimizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoResources, a3);
  }

  return v7;
}

@end