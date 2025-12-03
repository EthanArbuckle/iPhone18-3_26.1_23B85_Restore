@interface _UIDynamicAnimation
+ (id)dynamicAnimationForView:(id)view withInitialValue:(double)value velocity:(double)velocity type:(int)type anchorPoint:(CGPoint)point;
+ (void)_updateAnimations:(id)animations timer:(id)timer;
- (_UIDynamicAnimation)init;
- (id)description;
- (void)_appendDescriptionToString:(id)string atLevel:(int)level;
- (void)_callAppliers:(id)appliers additionalEndAppliers:(id)endAppliers done:(BOOL)done;
- (void)_cancelWithAppliers:(id)appliers;
- (void)_completeWithFinished:(BOOL)finished;
- (void)_setGrouped:(BOOL)grouped;
- (void)_setShouldYield:(BOOL)yield;
- (void)_setUsesNSTimer:(BOOL)timer;
- (void)_stopAnimation;
- (void)dealloc;
- (void)runWithCompletion:(id)completion forScreen:(id)screen runLoopMode:(id)mode;
- (void)stop;
@end

@implementation _UIDynamicAnimation

+ (void)_updateAnimations:(id)animations timer:(id)timer
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1ED499FC8)
  {
    [qword_1ED499FC8 enumerateObjectsUsingBlock:&__block_literal_global_25];

    qword_1ED499FC8 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = qword_1ED499FD8;
  v7 = [qword_1ED499FD8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (animations && *(v11 + 16) == animations || timer && *(v11 + 24) == timer)
        {
          if (*(v11 + 48) == 1)
          {
            sched_yield();
          }

          if (animations)
          {
            [animations timestamp];
          }

          else
          {
            v12 = CACurrentMediaTime();
          }

          v13 = v12;
          v14 = *(v11 + 40);
          v15 = [*(v11 + 32) copy];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = v13 - v14;
            v19 = *v26;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v25 + 1) + 8 * j);
                if ([v21 _usesNSTimer])
                {
                  timerCopy = animations;
                }

                else
                {
                  timerCopy = timer;
                }

                if (!timerCopy)
                {
                  v23 = v21;
                  if ([v21 _animateForInterval:v18])
                  {
                    v24 = qword_1ED499FC8;
                    if (!qword_1ED499FC8)
                    {
                      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
                      qword_1ED499FC8 = v24;
                    }

                    [v24 addObject:v21];
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v17);
          }

          *(v11 + 40) = v13;
          return;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [animations invalidate];
  [timer invalidate];
}

+ (id)dynamicAnimationForView:(id)view withInitialValue:(double)value velocity:(double)velocity type:(int)type anchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v13 = [_UIDynamicValueAnimation alloc];
  if ((type - 6) >= 7)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0001;
  }

  v15 = [(_UIDynamicValueAnimation *)v13 initWithValue:value velocity:velocity unitSize:v14];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  *&v28[3] = value;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3010000000;
  v27[3] = "";
  *&v27[4] = x;
  *&v27[5] = y;
  switch(type)
  {
    case 0:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v16 = ___CreateDefaultAnimationApplier_block_invoke_8;
      goto LABEL_15;
    case 1:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v16 = ___CreateDefaultAnimationApplier_block_invoke_9;
      goto LABEL_15;
    case 2:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v16 = ___CreateDefaultAnimationApplier_block_invoke_10;
      goto LABEL_15;
    case 3:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v16 = ___CreateDefaultAnimationApplier_block_invoke_11;
      goto LABEL_15;
    case 4:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v16 = ___CreateDefaultAnimationApplier_block_invoke_12;
      goto LABEL_15;
    case 5:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v16 = ___CreateDefaultAnimationApplier_block_invoke_13;
LABEL_15:
      v22 = v16;
      v23 = &unk_1E70F5D18;
      viewCopy3 = view;
      goto LABEL_21;
    case 6:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v17 = ___CreateDefaultAnimationApplier_block_invoke_2;
      goto LABEL_20;
    case 7:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v17 = ___CreateDefaultAnimationApplier_block_invoke_3;
      goto LABEL_20;
    case 8:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v17 = ___CreateDefaultAnimationApplier_block_invoke_4;
      goto LABEL_20;
    case 9:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v17 = ___CreateDefaultAnimationApplier_block_invoke_5;
      goto LABEL_20;
    case 10:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v17 = ___CreateDefaultAnimationApplier_block_invoke_6;
      goto LABEL_20;
    case 11:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v17 = ___CreateDefaultAnimationApplier_block_invoke_7;
LABEL_20:
      v22 = v17;
      v23 = &unk_1E70F5CF0;
      viewCopy3 = view;
      v25 = v27;
      v26 = v28;
      goto LABEL_21;
    case 12:
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = ___CreateDefaultAnimationApplier_block_invoke;
      v23 = &unk_1E70F5CC8;
      viewCopy3 = view;
      v25 = v27;
LABEL_21:
      v18 = [&v20 copy];
      break;
    default:
      v18 = 0;
      break;
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
  v15->_viewApplier = v18;
  return v15;
}

- (_UIDynamicAnimation)init
{
  v4.receiver = self;
  v4.super_class = _UIDynamicAnimation;
  v2 = [(_UIDynamicAnimation *)&v4 init];
  if (v2)
  {
    if (qword_1ED499FD0 != -1)
    {
      dispatch_once(&qword_1ED499FD0, &__block_literal_global_16_0);
    }

    *(v2 + 20) = *(v2 + 20) & 0xDF | (32 * _MergedGlobals_3_2);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIDynamicAnimation;
  [(_UIDynamicAnimation *)&v3 dealloc];
}

- (void)_stopAnimation
{
  self->_completion = 0;
  *(self + 20) &= 0xFCu;
  self->_state = 0;
}

- (void)_callAppliers:(id)appliers additionalEndAppliers:(id)endAppliers done:(BOOL)done
{
  doneCopy = done;
  self->_state = 2;
  v8 = *(self + 20);
  if (v8)
  {
    if (done)
    {
      v12 = 3;
      self->_state = 3;
    }

    else
    {
      v12 = 2;
    }

    v10 = *(appliers + 2);
    endAppliersCopy = appliers;
    goto LABEL_10;
  }

  self->_state = 1;
  *(self + 20) = v8 | 1;
  (*(appliers + 2))(appliers, 1);
  if (!doneCopy)
  {
    return;
  }

  self->_state = 3;
  if (endAppliers)
  {
    v10 = *(endAppliers + 2);
    endAppliersCopy = endAppliers;
    v12 = 3;
LABEL_10:

    v10(endAppliersCopy, v12);
    return;
  }

  v13 = *(appliers + 2);

  v13(appliers, 3);
}

- (void)runWithCompletion:(id)completion forScreen:(id)screen runLoopMode:(id)mode
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(self + 20) & 0x10) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@ is grouped. Grouped dynamic animations may not be run independent of their group", self}];
  }

  if (!screen)
  {
    screen = [objc_opt_self() mainScreen];
  }

  if (!mode)
  {
    mode = *MEMORY[0x1E695DA28];
  }

  if ((*(self + 20) & 2) == 0)
  {

    self->_completion = [completion copy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = qword_1ED499FD8;
    v10 = [qword_1ED499FD8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
LABEL_10:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (v14->_screen == screen)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      if (!qword_1ED499FD8)
      {
        qword_1ED499FD8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      }

      v14 = objc_alloc_init(_UIDynamicAnimationState);
      [qword_1ED499FD8 addObject:v14];
    }

    if ((*(self + 20) & 8) != 0)
    {
      v14->_shouldSchedYield = 1;
    }

    activeAnimations = v14->_activeAnimations;
    if (!activeAnimations)
    {
      activeAnimations = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14->_activeAnimations = activeAnimations;
    }

    [(NSMutableArray *)activeAnimations addObject:self];
    if (![(_UIDynamicAnimation *)self _usesNSTimer]&& !v14->_displayLink)
    {
      v16 = [screen displayLinkWithTarget:objc_opt_class() selector:sel__updateAnimations_];
      v14->_displayLink = v16;
      -[CADisplayLink addToRunLoop:forMode:](v16, "addToRunLoop:forMode:", [MEMORY[0x1E695DFD0] mainRunLoop], mode);
      v14->_lastUpdateTime = CACurrentMediaTime();
    }

    if ([(_UIDynamicAnimation *)self _usesNSTimer])
    {
      if (!v14->_timer)
      {
        v14->_timer = [MEMORY[0x1E695DFF0] timerWithTimeInterval:objc_opt_class() target:sel__updateAnimationsWithTimer_ selector:0 userInfo:1 repeats:0.0166666667];
        [objc_msgSend(MEMORY[0x1E695DFD0] "mainRunLoop")];
        v14->_lastUpdateTime = CACurrentMediaTime();
      }
    }

    *(self + 20) |= 2u;
  }
}

- (void)stop
{
  selfCopy = self;
  if ((*(self + 20) & 2) != 0)
  {
    [(_UIDynamicAnimation *)self _completeWithFinished:0];
  }

  else
  {
    [(_UIDynamicAnimation *)self _stopAnimation];
  }
}

- (void)_completeWithFinished:(BOOL)finished
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(self + 20) & 4) == 0)
  {
    v4 = *(self + 20) | 4;
    *(self + 20) = v4;
    completion = self->_completion;
    if (completion)
    {
      finishedCopy = finished;
      v7 = completion;
      v7[2](v7, finishedCopy);

      v4 = *(self + 20);
    }

    *(self + 20) = v4 & 0xFB;
    [(_UIDynamicAnimation *)self _stopAnimation];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = qword_1ED499FD8;
    v9 = [qword_1ED499FD8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = 0;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          [*(v13 + 32) removeObject:self];
          if ([*(v13 + 32) count])
          {
            *(v13 + 48) = 0;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v14 = *(v13 + 32);
            v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v21;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v21 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  if ((*(*(*(&v20 + 1) + 8 * j) + 20) & 8) != 0)
                  {
                    *(v13 + 48) = 1;
                    goto LABEL_21;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }
          }

          else
          {
            [*(v13 + 16) invalidate];

            *(v13 + 16) = 0;
            [*(v13 + 24) invalidate];

            *(v13 + 24) = 0;
            *(v13 + 32) = 0;
            v19 = v13;
          }

LABEL_21:
          ;
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    else
    {
      v19 = 0;
    }

    [qword_1ED499FD8 removeObject:v19];
    if (![qword_1ED499FD8 count])
    {

      qword_1ED499FD8 = 0;
    }
  }
}

- (void)_cancelWithAppliers:(id)appliers
{
  if ((*(self + 20) & 2) != 0)
  {
    self->_state = 4;
    (*(appliers + 2))(appliers, a2);

    [(_UIDynamicAnimation *)self stop];
  }
}

- (void)_setShouldYield:(BOOL)yield
{
  if (yield)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xF7 | v3;
}

- (void)_setUsesNSTimer:(BOOL)timer
{
  if (timer)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xDF | v3;
}

- (void)_setGrouped:(BOOL)grouped
{
  if (grouped)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 20) = *(self + 20) & 0xEF | v3;
}

- (void)_appendDescriptionToString:(id)string atLevel:(int)level
{
  v4 = *&level;
  v12 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([string length])
  {
    [string appendString:@"\n"];
  }

  if (v4)
  {
    v7 = 1;
    do
    {
      [string appendString:@"    "];
      ++v7;
    }

    while (v7 <= v4);
  }

  [string appendFormat:@"<%@: %p", objc_opt_class(), self];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  for (i = objc_opt_class(); [MEMORY[0x1E696AAE8] bundleForClass:i] != v8; i = objc_msgSend(i, "superclass"))
  {
    if (i == objc_opt_class())
    {
      break;
    }
  }

  if (objc_opt_class() != i)
  {
    [string appendFormat:@"; baseClass = %@", NSStringFromClass(i)];
  }

  state = self->_state;
  if (state > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E70F5D38[state];
  }

  [string appendFormat:@"; state = %@", v11];
  [(_UIDynamicAnimation *)self _appendSubclassDescription:string atLevel:v4];
  [string appendFormat:@">"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [(_UIDynamicAnimation *)self _appendDescriptionToString:string atLevel:0];
  return string;
}

@end