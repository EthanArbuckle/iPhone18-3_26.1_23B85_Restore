@interface PXStoryDummyCountChapterCollectionProducer
- (PXStoryDummyCountChapterCollectionProducer)initWithCountInterval:(int64_t)a3 storyQueue:(id)a4;
- (id)workQueue_uneditedChapterCollectionWithAssets:(id)a3 keyAsset:(id)a4;
@end

@implementation PXStoryDummyCountChapterCollectionProducer

- (id)workQueue_uneditedChapterCollectionWithAssets:(id)a3 keyAsset:(id)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = [(PXStoryDummyCountChapterCollectionProducer *)self countInterval];
  v8 = +[PXStoryChapterSettings sharedInstance];
  v9 = [v8 dummyChaptersIncludeSubtitles];

  v10 = [PXStoryExplicitChapterCollection alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PXStoryDummyCountChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke;
  v13[3] = &__block_descriptor_49_e51_v16__0___PXStoryMutableExplicitChapterCollection__8l;
  v13[4] = v6;
  v13[5] = v7;
  v14 = v9;
  v11 = [(PXStoryExplicitChapterCollection *)v10 initWithAssets:v5 configuration:v13];

  return v11;
}

uint64_t __101__PXStoryDummyCountChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2 >= 2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = *(result + 40);
    do
    {
      v9 = v2 - v6;
      if (v8 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      LOBYTE(v11) = *(v4 + 48);
      result = [a2 addChapterWithAssetRange:v6 configuration:{v7, 3221225472, __101__PXStoryDummyCountChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke_2, &__block_descriptor_57_e33_v16__0___PXStoryMutableChapter__8l, v5++, v6, v10, v11}];
      v2 = *(v4 + 32);
      v8 = *(v4 + 40);
      v6 += v8;
    }

    while (v6 < v2 - 1);
  }

  return result;
}

void __101__PXStoryDummyCountChapterCollectionProducer_workQueue_uneditedChapterCollectionWithAssets_keyAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Chapter %ti", *(a1 + 32) + 1];
  [v5 setLocalizedTitle:v3];

  if (*(a1 + 56) == 1)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Assets %ti - %ti", *(a1 + 40), *(a1 + 40) + *(a1 + 48) - 1];
    [v5 setLocalizedSubtitle:v4];
  }
}

- (PXStoryDummyCountChapterCollectionProducer)initWithCountInterval:(int64_t)a3 storyQueue:(id)a4
{
  v6.receiver = self;
  v6.super_class = PXStoryDummyCountChapterCollectionProducer;
  result = [(PXStoryTransientChapterCollectionProducer *)&v6 initWithStoryQueue:a4];
  if (result)
  {
    result->_countInterval = a3;
  }

  return result;
}

@end