@interface PHAsset(PXStoryResource)
- (double)px_storyResourceFetchBestPlaybackRect;
- (id)px_storyResourceFetchVideoAdjustments;
- (uint64_t)px_storyResourceFetchCurationScore;
- (uint64_t)px_storyResourceFetchFaceCount;
- (uint64_t)px_storyResourceFetchSceneClassifications;
- (void)px_storyResourceFetchBestPlaybackRange;
@end

@implementation PHAsset(PXStoryResource)

- (uint64_t)px_storyResourceFetchFaceCount
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 mediaAnalysisProperties];
  v3 = [v2 faceCount];

  return v3;
}

- (uint64_t)px_storyResourceFetchCurationScore
{
  [a1 fetchPropertySetsIfNeeded];

  return [a1 curationScore];
}

- (uint64_t)px_storyResourceFetchSceneClassifications
{
  [a1 fetchPropertySetsIfNeeded];

  return [a1 sceneClassifications];
}

- (double)px_storyResourceFetchBestPlaybackRect
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 mediaAnalysisProperties];
  [v2 bestPlaybackRect];
  v4 = v3;

  return v4;
}

- (void)px_storyResourceFetchBestPlaybackRange
{
  v18 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (([a1 isVideo] & 1) != 0 || objc_msgSend(a1, "isPhotoIris"))
  {
    [a1 fetchPropertySetsIfNeeded];
    v4 = [a1 mediaAnalysisProperties];
    v5 = v4;
    if (v4)
    {
      [v4 bestVideoTimeRange];
      v6 = HIDWORD(v12);
      v7 = *(&v13 + 1);
      v8 = v13;
      v10 = v14;
      v9 = DWORD1(v14);
      v11 = *(&v14 + 1) != 0;
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      v7 = 0;
      v8 = 0;
      v6 = 0;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
    }

    v16 = v12;
    v17 = DWORD2(v12);

    if ((v6 & 1) != 0 && (v9 & 1) != 0 && !v11 && (v7 & 0x8000000000000000) == 0)
    {
      *&v12 = v7;
      *(&v12 + 1) = __PAIR64__(v9, v10);
      *&v13 = 0;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&v12, &time2))
      {
        *a2 = v16;
        *(a2 + 8) = v17;
        *(a2 + 12) = v6;
        *(a2 + 16) = v8;
        *(a2 + 24) = v7;
        *(a2 + 32) = v10;
        *(a2 + 36) = v9;
        *(a2 + 40) = 0;
      }
    }
  }
}

- (id)px_storyResourceFetchVideoAdjustments
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [MEMORY[0x1E69786D8] assetResourcesForAsset:{a1, 0}];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 type] == 7)
        {
          v6 = objc_alloc(MEMORY[0x1E69C0910]);
          v7 = [v5 privateFileURL];
          v2 = [v6 initWithURL:v7];

          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

@end