@interface PXGLayout(PXCuratedLibraryLayoutAnimation)
- (id)createCuratedLibraryLayoutAnimationIfNeededWithContext:()PXCuratedLibraryLayoutAnimation userData:;
- (id)createCuratedLibraryLayoutTransitionIfNeededWithContext:()PXCuratedLibraryLayoutAnimation;
- (id)createCuratedLibraryLayoutZoomLevelChangeAnimationFromZoomLevel:()PXCuratedLibraryLayoutAnimation toZoomLevel:withContext:;
@end

@implementation PXGLayout(PXCuratedLibraryLayoutAnimation)

- (id)createCuratedLibraryLayoutTransitionIfNeededWithContext:()PXCuratedLibraryLayoutAnimation
{
  v4 = [a1 superlayout];
  if (!v4)
  {
    PXAssertGetLog();
  }

  v5 = [v4 createCuratedLibraryLayoutTransitionIfNeededWithContext:a3];

  return v5;
}

- (id)createCuratedLibraryLayoutZoomLevelChangeAnimationFromZoomLevel:()PXCuratedLibraryLayoutAnimation toZoomLevel:withContext:
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"PXCuratedLibraryZoomLevelChangeFromKey";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v13[1] = @"PXCuratedLibraryZoomLevelChangeToKey";
  v14[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [a1 createCuratedLibraryLayoutAnimationIfNeededWithContext:a5 userData:v10];

  return v11;
}

- (id)createCuratedLibraryLayoutAnimationIfNeededWithContext:()PXCuratedLibraryLayoutAnimation userData:
{
  v6 = a4;
  v7 = [a1 superlayout];
  if (!v7)
  {
    PXAssertGetLog();
  }

  v8 = [v7 createCuratedLibraryLayoutAnimationIfNeededWithContext:a3 userData:v6];

  return v8;
}

@end