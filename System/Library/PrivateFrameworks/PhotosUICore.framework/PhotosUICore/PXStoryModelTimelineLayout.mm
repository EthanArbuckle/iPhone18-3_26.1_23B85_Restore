@interface PXStoryModelTimelineLayout
- (PXStoryModelTimelineLayout)init;
- (PXStoryModelTimelineLayout)initWithModel:(id)a3;
- (void)configureClipLayout:(id)a3;
- (void)didUpdate;
- (void)invalidateClipsCornerRadius;
- (void)invalidateDisplayedRect;
- (void)invalidateDisplayedTimeRange;
- (void)invalidateDisplayedTimeline;
- (void)invalidatePresentedTimelineTransition;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)update;
- (void)updateDisplayedTimeRange;
- (void)updateDisplayedTimeline;
- (void)updateDisplayedTimelineRect;
- (void)willUpdate;
@end

@implementation PXStoryModelTimelineLayout

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (ModelObservationContext_206293 == a5)
  {

    [(PXStoryModelTimelineLayout *)self handleModelChange:a4];
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v7.receiver = self;
    v7.super_class = PXStoryModelTimelineLayout;
    [(PXStoryTimelineLayout *)&v7 observable:a3 didChange:a4 context:?];
  }
}

- (void)invalidateClipsCornerRadius
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout invalidateClipsCornerRadius]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryModelTimelineLayout.m" lineNumber:124 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXStoryModelTimelineLayout *)self setNeedsUpdate];
  }
}

- (void)invalidatePresentedTimelineTransition
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout invalidatePresentedTimelineTransition]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryModelTimelineLayout.m" lineNumber:116 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryModelTimelineLayout *)self setNeedsUpdate];
  }
}

- (void)updateDisplayedTimelineRect
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryModelTimelineLayout.m" lineNumber:112 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryModelTimelineLayout updateDisplayedTimelineRect]", v6}];

  abort();
}

- (void)invalidateDisplayedRect
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout invalidateDisplayedRect]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryModelTimelineLayout.m" lineNumber:108 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryModelTimelineLayout *)self setNeedsUpdate];
  }
}

- (void)updateDisplayedTimeRange
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryModelTimelineLayout.m" lineNumber:104 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryModelTimelineLayout updateDisplayedTimeRange]", v6}];

  abort();
}

- (void)invalidateDisplayedTimeRange
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout invalidateDisplayedTimeRange]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryModelTimelineLayout.m" lineNumber:100 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryModelTimelineLayout *)self setNeedsUpdate];
  }
}

- (void)updateDisplayedTimeline
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryModelTimelineLayout.m" lineNumber:96 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryModelTimelineLayout updateDisplayedTimeline]", v6}];

  abort();
}

- (void)invalidateDisplayedTimeline
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout invalidateDisplayedTimeline]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryModelTimelineLayout.m" lineNumber:92 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryModelTimelineLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryModelTimelineLayout;
  [(PXStoryTimelineLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryModelTimelineLayout.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXStoryModelTimelineLayout.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryModelTimelineLayout *)self updateDisplayedTimeline];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout update]"];
        [v11 handleFailureInFunction:v12 file:@"PXStoryModelTimelineLayout.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryModelTimelineLayout *)self updateDisplayedTimeRange];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXStoryModelTimelineLayout.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryModelTimelineLayout *)self updateDisplayedTimelineRect];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout update]"];
      [v15 handleFailureInFunction:v16 file:@"PXStoryModelTimelineLayout.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryModelTimelineLayout *)self updatePresentedTimelineTransition];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXStoryModelTimelineLayout.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v8 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryModelTimelineLayout *)self updateClipsCornerRadius];
      v8 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v8)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXStoryModelTimelineLayout.m" lineNumber:82 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v21.receiver = self;
  v21.super_class = PXStoryModelTimelineLayout;
  [(PXStoryTimelineLayout *)&v21 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryModelTimelineLayout;
  [(PXStoryTimelineLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryModelTimelineLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryModelTimelineLayout.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)configureClipLayout:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryModelTimelineLayout;
  v4 = a3;
  [(PXStoryTimelineLayout *)&v6 configureClipLayout:v4];
  v5 = [(PXStoryModelTimelineLayout *)self model:v6.receiver];
  [v4 setModel:v5];
}

- (PXStoryModelTimelineLayout)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryModelTimelineLayout;
  v6 = [(PXStoryTimelineLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    [(PXStoryModel *)v7->_model registerChangeObserver:v7 context:ModelObservationContext_206293];
    [(PXStoryModelTimelineLayout *)v7 invalidateDisplayedTimeline];
    [(PXStoryModelTimelineLayout *)v7 invalidateDisplayedTimeRange];
    [(PXStoryModelTimelineLayout *)v7 invalidateDisplayedRect];
    [(PXStoryModelTimelineLayout *)v7 invalidatePresentedTimelineTransition];
    [(PXStoryModelTimelineLayout *)v7 invalidateClipsCornerRadius];
  }

  return v7;
}

- (PXStoryModelTimelineLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryModelTimelineLayout.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXStoryModelTimelineLayout init]"}];

  abort();
}

@end