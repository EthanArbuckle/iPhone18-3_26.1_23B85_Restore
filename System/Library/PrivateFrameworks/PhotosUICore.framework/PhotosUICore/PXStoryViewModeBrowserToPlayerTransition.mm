@interface PXStoryViewModeBrowserToPlayerTransition
- (PXStoryViewModeBrowserToPlayerTransition)initWithDestinationTimelineLayoutSnapshot:(id)snapshot assetReference:(id)reference trackingClipIdentifier:(int64_t)identifier;
- (double)alphaForClipWithInfo:(id *)info proposedAlpha:(double)alpha inViewMode:(int64_t)mode layout:(id)layout;
- (double)springStiffness;
@end

@implementation PXStoryViewModeBrowserToPlayerTransition

- (double)alphaForClipWithInfo:(id *)info proposedAlpha:(double)alpha inViewMode:(int64_t)mode layout:(id)layout
{
  layoutCopy = layout;
  var1 = info->var1;
  if (var1 <= 3 && var1 != 1)
  {
    v16.receiver = self;
    v16.super_class = PXStoryViewModeBrowserToPlayerTransition;
    memcpy(v15, info, sizeof(v15));
    [(PXStoryViewModeTransition *)&v16 alphaForClipWithInfo:v15 proposedAlpha:mode inViewMode:layoutCopy layout:alpha];
    alpha = v13;
  }

  return alpha;
}

- (double)springStiffness
{
  v4.receiver = self;
  v4.super_class = PXStoryViewModeBrowserToPlayerTransition;
  [(PXStoryViewModeTransition *)&v4 springStiffness];
  return v2 * 1.5;
}

- (PXStoryViewModeBrowserToPlayerTransition)initWithDestinationTimelineLayoutSnapshot:(id)snapshot assetReference:(id)reference trackingClipIdentifier:(int64_t)identifier
{
  snapshotCopy = snapshot;
  v9 = MEMORY[0x1E696AD50];
  referenceCopy = reference;
  v11 = objc_alloc_init(v9);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  timeline = [snapshotCopy timeline];
  if (snapshotCopy)
  {
    [snapshotCopy timeRange];
  }

  else
  {
    memset(v30, 0, sizeof(v30));
  }

  [snapshotCopy timelineRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __124__PXStoryViewModeBrowserToPlayerTransition_initWithDestinationTimelineLayoutSnapshot_assetReference_trackingClipIdentifier___block_invoke;
  v27[3] = &unk_1E773A428;
  v28 = v11;
  v29 = v12;
  v22 = v12;
  v23 = v11;
  [timeline enumerateClipsInTimeRange:v30 rect:v27 usingBlock:{v15, v17, v19, v21}];

  v26.receiver = self;
  v26.super_class = PXStoryViewModeBrowserToPlayerTransition;
  v24 = [(PXStoryViewModeFocusedClipsViewTransition *)&v26 initWithSourceViewMode:2 sourceSnapshot:0 destinationViewMode:1 destinationSnapshot:snapshotCopy assetReference:referenceCopy focusedClipIdentifiers:v23 trackingClipIdentifier:identifier];

  return v24;
}

void __124__PXStoryViewModeBrowserToPlayerTransition_initWithDestinationTimelineLayoutSnapshot_assetReference_trackingClipIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 >= 1)
  {
    v29 = v14;
    v30 = v13;
    v31 = v12;
    v32 = v11;
    v33 = v10;
    v34 = v9;
    v35 = v8;
    v36 = v7;
    v37 = v6;
    v38 = v5;
    v39 = v15;
    v40 = v16;
    v18 = a2;
    v20 = (a4 + 16);
    do
    {
      v21 = *a5;
      [*(a1 + 32) addIndex:{*a5, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40}];
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      v25 = v20[1];
      v20 += 4;
      v26 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v23, v24, v25}];
      v27 = *(a1 + 40);
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
      [v27 setObject:v26 forKeyedSubscript:v28];

      a5 += 96;
      --v18;
    }

    while (v18);
  }
}

@end