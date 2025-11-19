@interface SXFullscreenVideoPlaybackManager
- (SXFullscreenVideoPlaybackManager)init;
- (uint64_t)addCandidate:(uint64_t)result;
- (uint64_t)didLayoutForSize:(uint64_t)result;
- (uint64_t)didTransitionToSize:(uint64_t)result;
- (uint64_t)enterFullscreenIfNeeded;
- (uint64_t)removeCandidate:(uint64_t)result;
- (uint64_t)willLayoutAndTransitionToSize:(uint64_t)result;
@end

@implementation SXFullscreenVideoPlaybackManager

- (SXFullscreenVideoPlaybackManager)init
{
  v6.receiver = self;
  v6.super_class = SXFullscreenVideoPlaybackManager;
  v2 = [(SXFullscreenVideoPlaybackManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    candidates = v2->_candidates;
    v2->_candidates = v3;
  }

  return v2;
}

- (uint64_t)addCandidate:(uint64_t)result
{
  if (result)
  {
    return [*(result + 16) addObject:a2];
  }

  return result;
}

- (uint64_t)removeCandidate:(uint64_t)result
{
  if (result)
  {
    return [*(result + 16) removeObject:a2];
  }

  return result;
}

- (uint64_t)enterFullscreenIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    memset(v4, 0, sizeof(v4));
    v2 = *(result + 16);
    if ([v2 countByEnumeratingWithState:v4 objects:v5 count:16])
    {
      v3 = **(&v4[0] + 1);
      if ([**(&v4[0] + 1) canEnterFullscreen])
      {
        [v3 enterFullscreen];
      }
    }

    return [*(v1 + 16) removeAllObjects];
  }

  return result;
}

- (uint64_t)willLayoutAndTransitionToSize:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = 257;
  }

  return result;
}

- (uint64_t)didTransitionToSize:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1 && (*(result + 9) & 1) == 0)
    {
      result = [(SXFullscreenVideoPlaybackManager *)result enterFullscreenIfNeeded];
    }

    *(v1 + 8) = 0;
  }

  return result;
}

- (uint64_t)didLayoutForSize:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    if (*(result + 9) == 1 && (*(result + 8) & 1) == 0)
    {
      result = [(SXFullscreenVideoPlaybackManager *)result enterFullscreenIfNeeded];
    }

    *(v1 + 9) = 0;
  }

  return result;
}

@end