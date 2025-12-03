@interface PXStoryConcreteTransition
- (NSString)description;
- (PXStoryConcreteTransition)initWithIdentifier:(id)identifier kind:(char)kind duration:(id *)duration event:(int64_t)event;
- (PXStoryConcreteTransition)initWithKind:(char)kind duration:(id *)duration effect:(id)effect auxiliaryEffect:(id)auxiliaryEffect;
- (double)clipAlphaForTime:(id *)time;
- (double)progress;
- (void)_end:(BOOL)_end;
- (void)_updateClipAlphaForTime:(id *)time;
- (void)configureEffectForTime:(id *)time;
- (void)setPrimaryEffectAlpha:(double)alpha auxiliaryEffectAlpha:(double)effectAlpha;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryConcreteTransition

- (NSString)description
{
  v30 = *MEMORY[0x1E69E9840];
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [clipLayouts count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    clipLayouts2 = [(PXStoryConcreteTransition *)self clipLayouts];
    v7 = [clipLayouts2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(clipLayouts2);
          }

          clip = [*(*(&v24 + 1) + 8 * i) clip];
          [v5 addIndex:{objc_msgSend(clip, "identifier")}];
        }

        v8 = [clipLayouts2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = MEMORY[0x1E696AEC0];
    px_shortDescription = [v5 px_shortDescription];
    v14 = [v12 stringWithFormat:@" clips=%@", px_shortDescription];
  }

  else
  {
    v14 = &stru_1F1741150;
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  kind = [(PXStoryConcreteTransition *)self kind];
  if (kind > 0xA)
  {
    v19 = @"??";
  }

  else
  {
    v19 = off_1E7740168[kind];
  }

  v20 = v19;
  [(PXStoryAnimation *)self time];
  time = v23;
  v21 = [v15 initWithFormat:@"<%@: %p; %@, t=%0.1f%@>", v17, self, v20, CMTimeGetSeconds(&time), v14];

  return v21;
}

- (void)setPrimaryEffectAlpha:(double)alpha auxiliaryEffectAlpha:(double)effectAlpha
{
  effectAlphaHandler = [(PXStoryConcreteTransition *)self effectAlphaHandler];
  if (effectAlphaHandler)
  {
    v7 = effectAlphaHandler;
    effectAlphaHandler[2](alpha, effectAlpha);
    effectAlphaHandler = v7;
  }
}

- (void)configureEffectForTime:(id *)time
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:156 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryConcreteTransition configureEffectForTime:]", v7}];

  abort();
}

- (double)clipAlphaForTime:(id *)time
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:152 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryConcreteTransition clipAlphaForTime:]", v7}];

  abort();
}

- (double)progress
{
  [(PXStoryConcreteTransition *)self duration];
  time = v5;
  Seconds = CMTimeGetSeconds(&time);
  result = 1.0;
  if (Seconds > 0.0)
  {
    [(PXStoryAnimation *)self time];
    time = v5;
    CMTimeGetSeconds(&time);
    PXClamp();
  }

  return result;
}

- (void)_end:(BOOL)_end
{
  [(PXStoryConcreteTransition *)self setFinished:_end];

  [(PXStoryAnimation *)self performChanges:&__block_literal_global_15];
}

- (void)wasStopped
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PXStoryConcreteTransition;
  [(PXStoryAnimation *)&v18 wasStopped];
  [(PXStoryConcreteTransition *)self initialClipAlpha];
  v4 = v3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];
  v6 = [clipLayouts countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    v10 = v4;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(clipLayouts);
        }

        *&v7 = v10;
        [*(*(&v14 + 1) + 8 * v11++) setContentAlpha:v7];
      }

      while (v8 != v11);
      v8 = [clipLayouts countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  completionHandler = [(PXStoryConcreteTransition *)self completionHandler];
  if (completionHandler)
  {
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    (completionHandler)[2](completionHandler, [(PXStoryConcreteTransition *)self finished]);
  }
}

- (void)_updateClipAlphaForTime:(id *)time
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = *time;
  [(PXStoryConcreteTransition *)self clipAlphaForTime:&v17];
  v5 = v4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];
  v7 = [clipLayouts countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    v11 = v5;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(clipLayouts);
        }

        *&v8 = v11;
        [*(*(&v13 + 1) + 8 * v12++) setContentAlpha:v8];
      }

      while (v9 != v12);
      v9 = [clipLayouts countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)timeDidChange
{
  v7.receiver = self;
  v7.super_class = PXStoryConcreteTransition;
  [(PXStoryAnimation *)&v7 timeDidChange];
  [(PXStoryAnimation *)self time];
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];

  if (clipLayouts)
  {
    memset(&time1, 0, sizeof(time1));
    [(PXStoryConcreteTransition *)self _updateClipAlphaForTime:&time1];
  }

  else
  {
    effect = [(PXStoryConcreteTransition *)self effect];

    if (effect)
    {
      memset(&time1, 0, sizeof(time1));
      [(PXStoryConcreteTransition *)self configureEffectForTime:&time1];
    }
  }

  [(PXStoryConcreteTransition *)self duration];
  memset(&time1, 0, sizeof(time1));
  time2 = v6;
  v5 = CMTimeCompare(&time1, &time2);
  if ((v5 & 0x80000000) == 0 || (memset(&time1, 0, sizeof(time1)), *&time2.value = PXStoryTimeZero, time2.epoch = 0, CMTimeCompare(&time1, &time2) < 0))
  {
    [(PXStoryConcreteTransition *)self _end:v5 >= 0];
  }
}

- (PXStoryConcreteTransition)initWithKind:(char)kind duration:(id *)duration effect:(id)effect auxiliaryEffect:(id)auxiliaryEffect
{
  kindCopy = kind;
  effectCopy = effect;
  auxiliaryEffectCopy = auxiliaryEffect;
  v13 = MEMORY[0x1E696AEC0];
  if (kindCopy > 0xA)
  {
    v14 = @"??";
  }

  else
  {
    v14 = off_1E7740168[kindCopy];
  }

  v15 = v14;
  v16 = objc_opt_class();
  v17 = [v13 stringWithFormat:@"PXStoryConcreteTransition.%@.%@.%@", v15, v16, objc_opt_class()];

  v21 = *&duration->var0;
  var3 = duration->var3;
  v18 = [(PXStoryConcreteTransition *)self initWithIdentifier:v17 kind:kindCopy duration:&v21 event:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_effect, effect);
    objc_storeStrong(&v19->_auxiliaryEffect, auxiliaryEffect);
  }

  return v19;
}

- (PXStoryConcreteTransition)initWithIdentifier:(id)identifier kind:(char)kind duration:(id *)duration event:(int64_t)event
{
  kindCopy = kind;
  identifierCopy = identifier;
  v15 = identifierCopy;
  if (!identifierCopy)
  {
    v16 = MEMORY[0x1E696AEC0];
    if (kindCopy > 0xA)
    {
      v17 = @"??";
    }

    else
    {
      v17 = off_1E7740168[kindCopy];
    }

    v6 = v17;
    v18 = @"undefined";
    if (event == 1)
    {
      v18 = @"orderIn";
    }

    if (event == 2)
    {
      v18 = @"orderOut";
    }

    v7 = v18;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [v16 stringWithFormat:@"PXStoryConcreteTransition.%@.%@.%@", v6, v7, uUIDString];
  }

  v22.receiver = self;
  v22.super_class = PXStoryConcreteTransition;
  v19 = [(PXStoryAnimation *)&v22 initWithIdentifier:v15];
  if (!identifierCopy)
  {
  }

  if (v19)
  {
    v19->_kind = kindCopy;
    v20 = *&duration->var0;
    v19->_duration.epoch = duration->var3;
    *&v19->_duration.value = v20;
    v19->_event = event;
  }

  return v19;
}

@end