@interface PXStoryWipeTransitionConfiguration
- (CGSize)viewportSize;
- (PXStoryWipeTransitionConfiguration)init;
- (PXStoryWipeTransitionConfiguration)initWithDuration:(id *)duration;
- (void)addClipLayout:(id)layout configurationBlock:(id)block;
- (void)dealloc;
- (void)enumerateLayoutsUsingBlock:(id)block;
@end

@implementation PXStoryWipeTransitionConfiguration

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)enumerateLayoutsUsingBlock:(id)block
{
  blockCopy = block;
  v38 = 0;
  if (self->_count >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_clipLayouts objectAtIndexedSubscript:v7];
      v9 = &self->_sourceStates[v5];
      v10 = &self->_targetStates[v5];
      v11 = &self->_primaryDividerInfos[v6];
      v12 = &self->_secondaryDividerInfos[v6];
      v13 = blockCopy[2];
      size = v9->var0.size;
      v37[0] = v9->var0.origin;
      v37[1] = size;
      v15 = *&v9->var1.var0.var0;
      v16 = *&v9->var1.var0.var2;
      v17 = *&v9->var1.var2.var0;
      v37[4] = *&v9->var1.var1.var1;
      v37[5] = v17;
      v37[2] = v15;
      v37[3] = v16;
      v18 = *&v9->var1.var2.var2;
      v19 = *&v9->var1.var3.var1;
      var3 = v9->var3;
      v37[8] = v9->var2;
      v37[9] = var3;
      v37[6] = v18;
      v37[7] = v19;
      v21 = v10->var0.size;
      v36[0] = v10->var0.origin;
      v36[1] = v21;
      v22 = *&v10->var1.var0.var0;
      v23 = *&v10->var1.var0.var2;
      v24 = *&v10->var1.var2.var0;
      v36[4] = *&v10->var1.var1.var1;
      v36[5] = v24;
      v36[2] = v22;
      v36[3] = v23;
      v25 = *&v10->var1.var2.var2;
      v26 = *&v10->var1.var3.var1;
      v27 = v10->var3;
      v36[8] = v10->var2;
      v36[9] = v27;
      v36[6] = v25;
      v36[7] = v26;
      v35[0] = v11->var0;
      var1 = v11->var1;
      var2 = v11->var2;
      var5 = v11->var5;
      v35[3] = *&v11->var3;
      v35[4] = var5;
      v35[1] = var1;
      v35[2] = var2;
      v34[0] = v12->var0;
      v31 = v12->var1;
      v32 = v12->var2;
      v33 = v12->var5;
      v34[3] = *&v12->var3;
      v34[4] = v33;
      v34[1] = v31;
      v34[2] = v32;
      v13(blockCopy, v8, v37, v36, v35, v34, &v38);

      if (v38 == 1)
      {
        break;
      }

      ++v7;
      ++v6;
      ++v5;
    }

    while (v7 < self->_count);
  }
}

- (void)addClipLayout:(id)layout configurationBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  clipLayouts = self->_clipLayouts;
  if (!clipLayouts)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_clipLayouts;
    self->_clipLayouts = v9;

    clipLayouts = self->_clipLayouts;
  }

  [(NSMutableArray *)clipLayouts addObject:layoutCopy];
  capacity = self->_capacity;
  ++self->_count;
  *&v12 = capacity;
  _PXGArrayCapacityResizeToCount();
}

- (void)dealloc
{
  free(self->_sourceStates);
  free(self->_targetStates);
  free(self->_primaryDividerInfos);
  free(self->_secondaryDividerInfos);
  v3.receiver = self;
  v3.super_class = PXStoryWipeTransitionConfiguration;
  [(PXStoryWipeTransitionConfiguration *)&v3 dealloc];
}

- (PXStoryWipeTransitionConfiguration)initWithDuration:(id *)duration
{
  v6.receiver = self;
  v6.super_class = PXStoryWipeTransitionConfiguration;
  result = [(PXStoryWipeTransitionConfiguration *)&v6 init];
  if (result)
  {
    v5 = *&duration->var0;
    result->_duration.epoch = duration->var3;
    *&result->_duration.value = v5;
  }

  return result;
}

- (PXStoryWipeTransitionConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:384 description:{@"%s is not available as initializer", "-[PXStoryWipeTransitionConfiguration init]"}];

  abort();
}

@end