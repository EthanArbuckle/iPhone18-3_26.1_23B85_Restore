@interface PXStoryConcreteTransition
- (NSString)description;
- (PXStoryConcreteTransition)initWithIdentifier:(id)a3 kind:(char)a4 duration:(id *)a5 event:(int64_t)a6;
- (PXStoryConcreteTransition)initWithKind:(char)a3 duration:(id *)a4 effect:(id)a5 auxiliaryEffect:(id)a6;
- (double)clipAlphaForTime:(id *)a3;
- (double)progress;
- (void)_end:(BOOL)a3;
- (void)_updateClipAlphaForTime:(id *)a3;
- (void)configureEffectForTime:(id *)a3;
- (void)setPrimaryEffectAlpha:(double)a3 auxiliaryEffectAlpha:(double)a4;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryConcreteTransition

- (NSString)description
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(PXStoryConcreteTransition *)self clipLayouts];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v24 + 1) + 8 * i) clip];
          [v5 addIndex:{objc_msgSend(v11, "identifier")}];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 px_shortDescription];
    v14 = [v12 stringWithFormat:@" clips=%@", v13];
  }

  else
  {
    v14 = &stru_1F1741150;
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [(PXStoryConcreteTransition *)self kind];
  if (v18 > 0xA)
  {
    v19 = @"??";
  }

  else
  {
    v19 = off_1E7740168[v18];
  }

  v20 = v19;
  [(PXStoryAnimation *)self time];
  time = v23;
  v21 = [v15 initWithFormat:@"<%@: %p; %@, t=%0.1f%@>", v17, self, v20, CMTimeGetSeconds(&time), v14];

  return v21;
}

- (void)setPrimaryEffectAlpha:(double)a3 auxiliaryEffectAlpha:(double)a4
{
  v6 = [(PXStoryConcreteTransition *)self effectAlphaHandler];
  if (v6)
  {
    v7 = v6;
    v6[2](a3, a4);
    v6 = v7;
  }
}

- (void)configureEffectForTime:(id *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:156 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryConcreteTransition configureEffectForTime:]", v7}];

  abort();
}

- (double)clipAlphaForTime:(id *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:152 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryConcreteTransition clipAlphaForTime:]", v7}];

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

- (void)_end:(BOOL)a3
{
  [(PXStoryConcreteTransition *)self setFinished:a3];

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
  v5 = [(PXStoryConcreteTransition *)self clipLayouts];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        *&v7 = v10;
        [*(*(&v14 + 1) + 8 * v11++) setContentAlpha:v7];
      }

      while (v8 != v11);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(PXStoryConcreteTransition *)self completionHandler];
  if (v12)
  {
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    (v12)[2](v12, [(PXStoryConcreteTransition *)self finished]);
  }
}

- (void)_updateClipAlphaForTime:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = *a3;
  [(PXStoryConcreteTransition *)self clipAlphaForTime:&v17];
  v5 = v4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PXStoryConcreteTransition *)self clipLayouts];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        *&v8 = v11;
        [*(*(&v13 + 1) + 8 * v12++) setContentAlpha:v8];
      }

      while (v9 != v12);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  v3 = [(PXStoryConcreteTransition *)self clipLayouts];

  if (v3)
  {
    memset(&time1, 0, sizeof(time1));
    [(PXStoryConcreteTransition *)self _updateClipAlphaForTime:&time1];
  }

  else
  {
    v4 = [(PXStoryConcreteTransition *)self effect];

    if (v4)
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

- (PXStoryConcreteTransition)initWithKind:(char)a3 duration:(id *)a4 effect:(id)a5 auxiliaryEffect:(id)a6
{
  v9 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E696AEC0];
  if (v9 > 0xA)
  {
    v14 = @"??";
  }

  else
  {
    v14 = off_1E7740168[v9];
  }

  v15 = v14;
  v16 = objc_opt_class();
  v17 = [v13 stringWithFormat:@"PXStoryConcreteTransition.%@.%@.%@", v15, v16, objc_opt_class()];

  v21 = *&a4->var0;
  var3 = a4->var3;
  v18 = [(PXStoryConcreteTransition *)self initWithIdentifier:v17 kind:v9 duration:&v21 event:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_effect, a5);
    objc_storeStrong(&v19->_auxiliaryEffect, a6);
  }

  return v19;
}

- (PXStoryConcreteTransition)initWithIdentifier:(id)a3 kind:(char)a4 duration:(id *)a5 event:(int64_t)a6
{
  v12 = a4;
  v14 = a3;
  v15 = v14;
  if (!v14)
  {
    v16 = MEMORY[0x1E696AEC0];
    if (v12 > 0xA)
    {
      v17 = @"??";
    }

    else
    {
      v17 = off_1E7740168[v12];
    }

    v6 = v17;
    v18 = @"undefined";
    if (a6 == 1)
    {
      v18 = @"orderIn";
    }

    if (a6 == 2)
    {
      v18 = @"orderOut";
    }

    v7 = v18;
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v15 = [v16 stringWithFormat:@"PXStoryConcreteTransition.%@.%@.%@", v6, v7, v9];
  }

  v22.receiver = self;
  v22.super_class = PXStoryConcreteTransition;
  v19 = [(PXStoryAnimation *)&v22 initWithIdentifier:v15];
  if (!v14)
  {
  }

  if (v19)
  {
    v19->_kind = v12;
    v20 = *&a5->var0;
    v19->_duration.epoch = a5->var3;
    *&v19->_duration.value = v20;
    v19->_event = a6;
  }

  return v19;
}

@end