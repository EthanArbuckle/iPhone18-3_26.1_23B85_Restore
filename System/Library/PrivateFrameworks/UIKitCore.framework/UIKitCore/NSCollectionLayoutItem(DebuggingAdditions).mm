@interface NSCollectionLayoutItem(DebuggingAdditions)
- (id)_visualDescription;
@end

@implementation NSCollectionLayoutItem(DebuggingAdditions)

- (id)_visualDescription
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [[_UICollectionLayoutContainer alloc] initWithContentSize:1000.0 contentInsets:0.0, 0.0, 0.0, 0.0];
  v3 = [[_UICollectionLayoutItemSolver alloc] initWithItem:self];
  v4 = v3;
  if (v3)
  {
    [(_UICollectionLayoutItemSolver *)v3 _solveForContainer:v2 layoutAxis:2 traitCollection:0 maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:0 preferredSizes:0 largestKnownItemSize:0 solutionRecursionDepth:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [v4[3] contentSize];
    v6 = v5;
    [v4[3] contentSize];
    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v6, v7}];
    v9 = [(_UICollectionLayoutItemSolver *)v4 queryFramesApplyingFrameOffset:*(MEMORY[0x1E695EFF8] + 8)];
    v10 = [v9 valueForKey:@"frame"];
    v16[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [v11 arrayByAddingObjectsFromArray:v10];

    v13 = [[_UIASCIIArtFramesRenderer alloc] initWithFrames:v12];
    v14 = [(_UIASCIIArtFramesRenderer *)v13 description];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end