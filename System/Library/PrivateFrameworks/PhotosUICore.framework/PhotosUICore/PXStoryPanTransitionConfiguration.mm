@interface PXStoryPanTransitionConfiguration
- (PXStoryPanTransitionConfiguration)init;
- (PXStoryPanTransitionConfiguration)initWithDuration:(id *)a3;
- (void)addClipLayout:(id)a3 sourceRect:(CGRect)a4 targetRect:(CGRect)a5;
- (void)dealloc;
- (void)enumerateLayoutsUsingBlock:(id)a3;
@end

@implementation PXStoryPanTransitionConfiguration

- (void)enumerateLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  if (self->_count >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_clipLayouts objectAtIndexedSubscript:v6];
      v8 = &self->_sourceRects[v5];
      v4[2](v4, v7, &v9, v8->origin.x, v8->origin.y, v8->size.width, v8->size.height, self->_targetRects[v5].origin.x, self->_targetRects[v5].origin.y, self->_targetRects[v5].size.width, self->_targetRects[v5].size.height);

      if (v9 == 1)
      {
        break;
      }

      ++v6;
      ++v5;
    }

    while (v6 < self->_count);
  }
}

- (void)addClipLayout:(id)a3 sourceRect:(CGRect)a4 targetRect:(CGRect)a5
{
  v6 = a3;
  clipLayouts = self->_clipLayouts;
  if (!clipLayouts)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_clipLayouts;
    self->_clipLayouts = v8;

    clipLayouts = self->_clipLayouts;
  }

  [(NSMutableArray *)clipLayouts addObject:v6];
  ++self->_count;
  _PXGArrayCapacityResizeToCount();
}

- (void)dealloc
{
  free(self->_sourceRects);
  free(self->_targetRects);
  v3.receiver = self;
  v3.super_class = PXStoryPanTransitionConfiguration;
  [(PXStoryPanTransitionConfiguration *)&v3 dealloc];
}

- (PXStoryPanTransitionConfiguration)initWithDuration:(id *)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryPanTransitionConfiguration;
  result = [(PXStoryPanTransitionConfiguration *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0;
    result->_duration.epoch = a3->var3;
    *&result->_duration.value = v5;
  }

  return result;
}

- (PXStoryPanTransitionConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:562 description:{@"%s is not available as initializer", "-[PXStoryPanTransitionConfiguration init]"}];

  abort();
}

@end