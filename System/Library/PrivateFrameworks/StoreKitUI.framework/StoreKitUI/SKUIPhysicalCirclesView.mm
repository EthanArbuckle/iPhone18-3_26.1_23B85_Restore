@interface SKUIPhysicalCirclesView
- (BOOL)_addNextMissingSpringJoint;
- (CGPoint)_initialPositionForCircleIndex:(int64_t)index view:(id)view;
- (SKUIPhysicalCircleConstants)constants;
- (SKUIPhysicalCirclesDataSource)dataSource;
- (SKUIPhysicalCirclesDelegate)delegate;
- (SKUIPhysicalCirclesView)initWithFrame:(CGRect)frame;
- (id)_circleBodyWithView:(id)view;
- (id)addRepellorWithCenter:(CGPoint)center radius:(double)radius bufferSize:(double)size;
- (id)circleViewAtIndex:(int64_t)index;
- (int64_t)_circleIndexForPoint:(CGPoint)point;
- (void)_addSpringForCircleBody:(id)body;
- (void)_calculateFrequencyScaling;
- (void)_cancelStepTimers;
- (void)_displayLinkTick:(id)tick;
- (void)_loadCirclesWithStartIndex:(int64_t)index totalCount:(int64_t)count;
- (void)_longPressAction:(id)action;
- (void)_panGestureAction:(id)action;
- (void)_reloadDidFinish;
- (void)_removeCircleBodies:(id)bodies;
- (void)_startFluctuationForCircleView:(id)view;
- (void)_stopFluctuationForCircleView:(id)view;
- (void)_tapGestureAction:(id)action;
- (void)addCirclesWithCount:(int64_t)count;
- (void)dealloc;
- (void)reloadData;
- (void)removeAllCirclesAnimated:(BOOL)animated completionBlock:(id)block;
- (void)removeAllRepellors;
- (void)removeCircleAtIndex:(int64_t)index animated:(BOOL)animated completionBlock:(id)block;
- (void)removeCirclesInIndexSet:(id)set animated:(BOOL)animated completionBlock:(id)block;
- (void)removeCirclesInIndexSet:(id)set byAnimatingToPoint:(CGPoint)point delay:(double)delay completionBlock:(id)block;
- (void)removeRepellor:(id)repellor;
- (void)setConstants:(SKUIPhysicalCircleConstants *)constants;
- (void)setSize:(CGSize)size forCircleAtIndex:(int64_t)index;
- (void)startPhysics;
- (void)stopPhysics;
@end

@implementation SKUIPhysicalCirclesView

- (SKUIPhysicalCirclesView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPhysicalCirclesView initWithFrame:];
  }

  v21.receiver = self;
  v21.super_class = SKUIPhysicalCirclesView;
  height = [(SKUIPhysicalCirclesView *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = SKUIPhysicsKitFramework();
    *(height + 70) = v9;
    v10 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Pkphysicsworld.isa, v9));
    v11 = *(height + 71);
    *(height + 71) = v10;

    [*(height + 71) setContactDelegate:height];
    [*(height + 71) setGravity:{0.0, 0.0}];
    v12 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Pkphysicsbody.isa, *(height + 70)));
    v13 = *(height + 64);
    *(height + 64) = v12;

    [*(height + 64) setPosition:{0.0, 0.0}];
    [*(height + 71) addBody:*(height + 64)];
    [*(height + 64) setDynamic:0];
    *(height + 65) = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:height action:sel__longPressAction_];
    v15 = *(height + 66);
    *(height + 66) = v14;

    [height addGestureRecognizer:*(height + 66)];
    v16 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:height action:sel__panGestureAction_];
    v17 = *(height + 69);
    *(height + 69) = v16;

    [height addGestureRecognizer:*(height + 69)];
    v18 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:height action:sel__tapGestureAction_];
    v19 = *(height + 73);
    *(height + 73) = v18;

    [height addGestureRecognizer:*(height + 73)];
    [height setClipsToBounds:1];
  }

  return height;
}

- (void)dealloc
{
  circleLoadStepTimer = self->_circleLoadStepTimer;
  if (circleLoadStepTimer)
  {
    dispatch_source_cancel(circleLoadStepTimer);
  }

  [(CADisplayLink *)self->_displayLink invalidate];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer removeTarget:self action:0];
  [(SKUIPhysicalCirclesView *)self removeGestureRecognizer:self->_longPressRecognizer];
  [(UIPanGestureRecognizer *)self->_panRecognizer removeTarget:self action:0];
  [(SKUIPhysicalCirclesView *)self removeGestureRecognizer:self->_panRecognizer];
  [(UITapGestureRecognizer *)self->_tapRecognizer removeTarget:self action:0];
  [(SKUIPhysicalCirclesView *)self removeGestureRecognizer:self->_tapRecognizer];
  v4.receiver = self;
  v4.super_class = SKUIPhysicalCirclesView;
  [(SKUIPhysicalCirclesView *)&v4 dealloc];
}

- (void)addCirclesWithCount:(int64_t)count
{
  if (self->_circleLoadStepTimer)
  {

    [(SKUIPhysicalCirclesView *)self reloadData];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_circleBodies count];
    if (!self->_circleBodies)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      circleBodies = self->_circleBodies;
      self->_circleBodies = v6;
    }

    [(SKUIPhysicalCirclesView *)self _loadCirclesWithStartIndex:v5 totalCount:v5 + count];
  }
}

- (id)addRepellorWithCenter:(CGPoint)center radius:(double)radius bufferSize:(double)size
{
  y = center.y;
  x = center.x;
  v10 = objc_alloc_init(SKUICircleRepellor);
  [(SKUICircleRepellor *)v10 setBufferSize:size];
  [(SKUICircleRepellor *)v10 setCenter:x, y];
  [(SKUICircleRepellor *)v10 setRadius:radius];
  v11 = [SKUIWeakLinkedClassForString(&cfstr_Pkphysicsbody.isa self->_physicsKitFramework)];
  [v11 setCategoryBitMask:1];
  [v11 setCollisionBitMask:1];
  [v11 setDensity:1.0];
  [v11 setFriction:0.0];
  [v11 setLinearDamping:0.2];
  [(SKUIPhysicalCirclesView *)self bounds];
  [v11 setPosition:{x, v12 - y}];
  [v11 setRestitution:0.1];
  [(PKPhysicsWorld *)self->_physicsWorld addBody:v11];
  [(SKUICircleRepellor *)v10 setPhysicsBody:v11];
  [v11 setDynamic:0];
  repellors = self->_repellors;
  if (!repellors)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = self->_repellors;
    self->_repellors = v14;

    repellors = self->_repellors;
  }

  [(NSMutableArray *)repellors addObject:v10];

  return v10;
}

- (id)circleViewAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_circleBodies count]<= index)
  {
    representedObject = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_circleBodies objectAtIndex:index];
    representedObject = [v5 representedObject];
  }

  return representedObject;
}

- (void)reloadData
{
  v25 = *MEMORY[0x277D85DE8];
  traitCollection = [(SKUIPhysicalCirclesView *)self traitCollection];
  v4 = [traitCollection horizontalSizeClass] == 2;

  v5 = dbl_215F3FF00[v4];
  *&self->_maximumFrequencyDistance = qword_215F3FEF0[v4];
  self->_minimumFrequencyDistance = v5;
  [(SKUIPhysicalCirclesView *)self _cancelStepTimers];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_circleBodies;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        representedObject = [v11 representedObject];
        [representedObject removeFromSuperview];
        [(PKPhysicsWorld *)self->_physicsWorld removeBody:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [(PKPhysicsWorld *)self->_physicsWorld removeAllJoints];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  circleBodies = self->_circleBodies;
  self->_circleBodies = v13;

  self->_longPressCircleIndex = 0x7FFFFFFFFFFFFFFFLL;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v16 = [WeakRetained numberOfCirclesInCircleView:self];

  if (v16 < 1)
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__SKUIPhysicalCirclesView_reloadData__block_invoke;
    v17[3] = &unk_2781F8320;
    objc_copyWeak(&v18, &location);
    dispatch_async(MEMORY[0x277D85CD0], v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SKUIPhysicalCirclesView *)self _loadCirclesWithStartIndex:0 totalCount:v16];
  }
}

void __37__SKUIPhysicalCirclesView_reloadData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadDidFinish];
}

- (void)removeAllCirclesAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(SKUIPhysicalCirclesView *)self _cancelStepTimers];
  v7 = [(NSMutableArray *)self->_circleBodies count];
  if (animatedCopy && v7)
  {
    v26 = v7;
    v27 = blockCopy;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v37 = 0u;
    obj = self->_circleBodies;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          representedObject = [v13 representedObject];
          v15 = MEMORY[0x277D75D18];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __68__SKUIPhysicalCirclesView_removeAllCirclesAnimated_completionBlock___block_invoke;
          v35[3] = &unk_2781F80F0;
          v16 = representedObject;
          v36 = v16;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __68__SKUIPhysicalCirclesView_removeAllCirclesAnimated_completionBlock___block_invoke_2;
          v28[3] = &unk_2781FE858;
          v29 = v16;
          selfCopy = self;
          v31 = v13;
          v32 = v27;
          v33 = v10;
          v34 = v26;
          v17 = v16;
          [v15 animateWithDuration:0x10000 delay:v35 options:v28 animations:0.2 completion:v10++ * 0.04];
        }

        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_circleBodies removeAllObjects];
    self->_longPressCircleIndex = 0x7FFFFFFFFFFFFFFFLL;
    blockCopy = v27;
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = self->_circleBodies;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * j);
          representedObject2 = [v23 representedObject];
          [representedObject2 removeFromSuperview];
          [(PKPhysicsWorld *)self->_physicsWorld removeBody:v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v20);
    }

    [(NSMutableArray *)self->_circleBodies removeAllObjects];
    self->_longPressCircleIndex = 0x7FFFFFFFFFFFFFFFLL;
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 1);
    }
  }
}

uint64_t __68__SKUIPhysicalCirclesView_removeAllCirclesAnimated_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  return [v2 setTransform:&v4];
}

uint64_t __68__SKUIPhysicalCirclesView_removeAllCirclesAnimated_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(*(a1 + 40) + 568) removeBody:*(a1 + 48)];
  result = *(a1 + 56);
  if (result && *(a1 + 64) == *(a1 + 72) - 1)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeAllRepellors
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_repellors copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SKUIPhysicalCirclesView *)self removeRepellor:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeCircleAtIndex:(int64_t)index animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  v8 = MEMORY[0x277CCAA78];
  blockCopy = block;
  v10 = [[v8 alloc] initWithIndex:index];
  [(SKUIPhysicalCirclesView *)self removeCirclesInIndexSet:v10 animated:animatedCopy completionBlock:blockCopy];
}

- (void)removeCirclesInIndexSet:(id)set animated:(BOOL)animated completionBlock:(id)block
{
  blockCopy = block;
  longPressCircleIndex = self->_longPressCircleIndex;
  setCopy = set;
  if ([setCopy containsIndex:longPressCircleIndex])
  {
    self->_longPressCircleIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__SKUIPhysicalCirclesView_removeCirclesInIndexSet_animated_completionBlock___block_invoke;
  v19[3] = &unk_2781FA850;
  v12 = v11;
  v20 = v12;
  selfCopy = self;
  [setCopy enumerateIndexesWithOptions:2 usingBlock:v19];

  if (animated)
  {
    v13 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__SKUIPhysicalCirclesView_removeCirclesInIndexSet_animated_completionBlock___block_invoke_2;
    v17[3] = &unk_2781F80F0;
    v18 = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__SKUIPhysicalCirclesView_removeCirclesInIndexSet_animated_completionBlock___block_invoke_3;
    v14[3] = &unk_2781FE880;
    v14[4] = self;
    v15 = v18;
    v16 = blockCopy;
    [v13 animateWithDuration:0x10000 delay:v17 options:v14 animations:0.2 completion:0.0];
  }

  else
  {
    [(SKUIPhysicalCirclesView *)self _removeCircleBodies:v12];
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 1);
    }
  }
}

uint64_t __76__SKUIPhysicalCirclesView_removeCirclesInIndexSet_animated_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 416) objectAtIndex:a2];
  [v4 addObject:v5];

  v6 = *(*(a1 + 40) + 416);

  return [v6 removeObjectAtIndex:a2];
}

void __76__SKUIPhysicalCirclesView_removeCirclesInIndexSet_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) representedObject];
        [v6 setAlpha:0.0];
        CGAffineTransformMakeScale(&v7, 0.9, 0.9);
        [v6 setTransform:&v7];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

uint64_t __76__SKUIPhysicalCirclesView_removeCirclesInIndexSet_animated_completionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _removeCircleBodies:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeCirclesInIndexSet:(id)set byAnimatingToPoint:(CGPoint)point delay:(double)delay completionBlock:(id)block
{
  y = point.y;
  x = point.x;
  v51 = *MEMORY[0x277D85DE8];
  setCopy = set;
  blockCopy = block;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __92__SKUIPhysicalCirclesView_removeCirclesInIndexSet_byAnimatingToPoint_delay_completionBlock___block_invoke;
  v47[3] = &unk_2781FA850;
  v47[4] = self;
  v14 = v13;
  v48 = v14;
  v35 = setCopy;
  [setCopy enumerateIndexesWithOptions:2 usingBlock:v47];
  [MEMORY[0x277CD9FF0] begin];
  v15 = MEMORY[0x277CD9FF0];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __92__SKUIPhysicalCirclesView_removeCirclesInIndexSet_byAnimatingToPoint_delay_completionBlock___block_invoke_2;
  v44[3] = &unk_2781F98F0;
  v16 = v14;
  v45 = v16;
  v34 = blockCopy;
  v46 = v34;
  [v15 setCompletionBlock:v44];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v16;
  v39 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v39)
  {
    v38 = *v41;
    v37 = *MEMORY[0x277CDA238];
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        layer = [*(*(&v40 + 1) + 8 * v17) layer];
        v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position.x"];
        v20 = +[SKUISimpleAnimationFactory easeQuadOutTimingFunction];
        [v19 setTimingFunction:v20];

        v21 = MEMORY[0x277CCABB0];
        [layer position];
        v22 = [v21 numberWithDouble:?];
        [v19 setFromValue:v22];

        v23 = [MEMORY[0x277CCABB0] numberWithDouble:x];
        [v19 setToValue:v23];

        v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position.y"];
        v25 = +[SKUISimpleAnimationFactory easeQuadInTimingFunction];
        [v24 setTimingFunction:v25];

        v26 = MEMORY[0x277CCABB0];
        [layer position];
        v28 = [v26 numberWithDouble:v27];
        [v24 setFromValue:v28];

        v29 = [MEMORY[0x277CCABB0] numberWithDouble:y];
        [v24 setToValue:v29];

        v30 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
        v31 = +[SKUISimpleAnimationFactory easeQuadInOutTimingFunction];
        [v30 setTimingFunction:v31];

        [v30 setFromValue:&unk_2828D2D98];
        [v30 setToValue:&unk_2828D3040];
        animation = [MEMORY[0x277CD9E00] animation];
        v49[0] = v19;
        v49[1] = v24;
        v49[2] = v30;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
        [animation setAnimations:v33];

        [animation setDuration:0.5];
        [animation setFillMode:v37];
        [animation setRemovedOnCompletion:0];
        delay = delay + 0.075;
        [animation setBeginTime:delay + CACurrentMediaTime()];
        [layer addAnimation:animation forKey:@"groupAnimation"];

        ++v17;
      }

      while (v39 != v17);
      v39 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v39);
  }

  [MEMORY[0x277CD9FF0] commit];
}

void __92__SKUIPhysicalCirclesView_removeCirclesInIndexSet_byAnimatingToPoint_delay_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(*(a1 + 32) + 416) objectAtIndex:a2];
  v4 = [v5 representedObject];
  [*(a1 + 40) addObject:v4];
  [*(a1 + 32) bringSubviewToFront:v4];
  [*(*(a1 + 32) + 568) removeBody:v5];
  [*(*(a1 + 32) + 416) removeObjectAtIndex:a2];
}

uint64_t __92__SKUIPhysicalCirclesView_removeCirclesInIndexSet_byAnimatingToPoint_delay_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)removeRepellor:(id)repellor
{
  repellorCopy = repellor;
  v4 = [(NSMutableArray *)self->_repellors indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    physicsWorld = self->_physicsWorld;
    physicsBody = [repellorCopy physicsBody];
    [(PKPhysicsWorld *)physicsWorld removeBody:physicsBody];

    [(NSMutableArray *)self->_repellors removeObjectAtIndex:v5];
  }
}

- (void)setSize:(CGSize)size forCircleAtIndex:(int64_t)index
{
  width = size.width;
  v7 = [(NSMutableArray *)self->_circleBodies objectAtIndex:index, size.width, size.height];
  v6 = SKUIWeakLinkedSymbolForString("PKGet_INV_PTM_RATIO", self->_physicsKitFramework);
  if (v6)
  {
    [v7 setRadius:width * 0.5 * v6()];
  }

  [(SKUIPhysicalCirclesView *)self _calculateFrequencyScaling];
}

- (void)startPhysics
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
  }

  v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTick_];
  v5 = self->_displayLink;
  self->_displayLink = v4;

  v6 = self->_displayLink;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)stopPhysics
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)_longPressAction:(id)action
{
  actionCopy = action;
  delegate = [(SKUIPhysicalCirclesView *)self delegate];
  state = [actionCopy state];
  if ((state - 3) < 2)
  {
    longPressCircleIndex = self->_longPressCircleIndex;
    self->_longPressCircleIndex = 0x7FFFFFFFFFFFFFFFLL;
    if (longPressCircleIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v7 = [(NSMutableArray *)self->_circleBodies objectAtIndex:longPressCircleIndex];
    [v7 setDynamic:1];
    representedObject = [v7 representedObject];
    [(SKUIPhysicalCirclesView *)self _stopFluctuationForCircleView:representedObject];

    if (objc_opt_respondsToSelector())
    {
      [delegate circleView:self didEndLongPressForCircleAtIndex:longPressCircleIndex];
    }

    goto LABEL_9;
  }

  if (state == 1)
  {
    [actionCopy locationInView:self];
    v9 = [(SKUIPhysicalCirclesView *)self _circleIndexForPoint:?];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      self->_longPressCircleIndex = v9;
      v7 = [(NSMutableArray *)self->_circleBodies objectAtIndex:v9];
      [v7 setDynamic:0];
      representedObject2 = [v7 representedObject];
      [(SKUIPhysicalCirclesView *)self _startFluctuationForCircleView:representedObject2];

      if (objc_opt_respondsToSelector())
      {
        [delegate circleView:self didBeginLongPressForCircleAtIndex:v10];
      }

LABEL_9:
    }
  }

LABEL_10:
}

- (void)_panGestureAction:(id)action
{
  v23 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if ([actionCopy state] == 2)
  {
    [actionCopy translationInView:self];
    v6 = v5;
    v8 = v7;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_circleBodies;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      v13 = -v8;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          representedObject = [v15 representedObject];
          [representedObject bounds];
          [v15 applyForce:{v6 * self->_constants.translationForceMultiplier * (v17 / self->_constants.circleMinimumDiameter * 1.5), self->_constants.translationForceMultiplier * v13 * (v17 / self->_constants.circleMinimumDiameter * 1.5)}];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [actionCopy setTranslation:self inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)_tapGestureAction:(id)action
{
  actionCopy = action;
  delegate = [(SKUIPhysicalCirclesView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [actionCopy state] == 3)
  {
    [actionCopy locationInView:self];
    v5 = [(SKUIPhysicalCirclesView *)self _circleIndexForPoint:?];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [delegate circleView:self didTapCircleAtIndex:v5];
    }
  }
}

- (void)_displayLinkTick:(id)tick
{
  v49 = *MEMORY[0x277D85DE8];
  tickCopy = tick;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_circleBodies;
  v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v37)
  {
    v35 = *v44;
    selfCopy = self;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        [v5 position];
        v7 = v6;
        v9 = v8;
        representedObject = [v5 representedObject];
        [(SKUIPhysicalCirclesView *)self bounds];
        v12 = v11 - v9;
        [representedObject setCenter:{v7, v12}];
        joints = [v5 joints];
        firstObject = [joints firstObject];

        if (firstObject)
        {
          [(PKPhysicsWorld *)self->_physicsWorld removeJoint:firstObject];
          [(SKUIPhysicalCirclesView *)self _calculateFrequencyScaling];
          [(SKUIPhysicalCirclesView *)self _addSpringForCircleBody:v5];
        }

        v38 = firstObject;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = self->_repellors;
        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v40;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v40 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v39 + 1) + 8 * j);
              [v20 center];
              v23 = v12 - v22;
              *&v21 = (v7 - v21) * (v7 - v21) + v23 * v23;
              v24 = sqrtf(*&v21);
              [representedObject bounds];
              v26 = v25 * 0.5;
              [v20 bufferSize];
              v28 = v27;
              [v20 radius];
              if (v24 - v29 - v28 < v26)
              {
                v30 = v24 - v26;
                if (v24 - v26 <= v29)
                {
                  v31 = 50.0;
                }

                else
                {
                  v31 = 0.0;
                  if (v30 < v28 + v29)
                  {
                    v31 = (v30 - v29) / (v28 + v29 - v29) * -50.0 + 50.0;
                  }
                }

                [v5 applyForce:{0.0, -v23 / v24 * v31}];
              }
            }

            v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v17);
        }

        self = selfCopy;
      }

      v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v37);
  }

  physicsWorld = self->_physicsWorld;
  [tickCopy duration];
  [(PKPhysicsWorld *)physicsWorld stepWithTime:8 velocityIterations:2 positionIterations:?];
}

- (BOOL)_addNextMissingSpringJoint
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_circleBodies;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        joints = [v8 joints];
        v10 = [joints count];

        if (!v10)
        {
          [(SKUIPhysicalCirclesView *)self _calculateFrequencyScaling];
          [(SKUIPhysicalCirclesView *)self _addSpringForCircleBody:v8];
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_addSpringForCircleBody:(id)body
{
  bodyCopy = body;
  [(SKUIPhysicalCirclesView *)self bounds];
  v6 = v5 * 0.5;
  v8 = v7 * 0.5;
  [bodyCopy position];
  v10 = v9;
  v12 = v11;
  v18 = [SKUIWeakLinkedClassForString(&cfstr_Pkphysicsjoint.isa self->_physicsKitFramework)];

  [v18 setCollideConnected:1];
  [v18 setDamping:self->_constants.springDamping];
  v13 = (v8 - v12) * (v8 - v12) + (v6 - v10) * (v6 - v10);
  v14 = fabsf(sqrtf(v13));
  minimumFrequencyDistance = self->_minimumFrequencyDistance;
  springMinimumFrequency = self->_constants.springMinimumFrequency;
  if (minimumFrequencyDistance < v14)
  {
    maximumFrequencyDistance = self->_maximumFrequencyDistance;
    if (maximumFrequencyDistance <= v14)
    {
      springMinimumFrequency = self->_constants.springMaximumFrequency;
    }

    else
    {
      springMinimumFrequency = springMinimumFrequency + (v14 - minimumFrequencyDistance) / (maximumFrequencyDistance - minimumFrequencyDistance) * (self->_constants.springMaximumFrequency - springMinimumFrequency);
    }
  }

  [v18 setFrequency:springMinimumFrequency];
  [(PKPhysicsWorld *)self->_physicsWorld addJoint:v18];
  [v18 setLength:0.0];
}

- (void)_cancelStepTimers
{
  circleLoadStepTimer = self->_circleLoadStepTimer;
  if (circleLoadStepTimer)
  {
    dispatch_source_cancel(circleLoadStepTimer);
    v4 = self->_circleLoadStepTimer;
    self->_circleLoadStepTimer = 0;
  }
}

- (void)_calculateFrequencyScaling
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_circleBodies;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        joints = [v10 joints];
        v12 = [joints count];

        if (v12)
        {
          representedObject = [v10 representedObject];
          [representedObject bounds];
          v8 = v8 + v14;
          ++v6;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);

    if (v6 >= 1)
    {
      v15 = v8 / v6;
      v16 = sqrtf(v15);
      v17 = 16;
      if (v6 > 0x10)
      {
        v17 = v6;
      }

      v18 = (v16 * v17);
      self->_maximumFrequencyDistance = v18 * 4.0 * v18 * 0.00715;
      self->_minimumFrequencyDistance = v18 * 1.89999998 * v18 * 0.00715;
    }
  }

  else
  {
  }
}

- (id)_circleBodyWithView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  [viewCopy center];
  v8 = v7;
  v10 = v9;
  v11 = SKUIWeakLinkedClassForString(&cfstr_Pkphysicsbody.isa, self->_physicsKitFramework);
  v12 = v6 * 0.5;
  v13 = [v11 bodyWithCircleOfRadius:floorf(v12)];
  [v13 setCategoryBitMask:1];
  [v13 setCollisionBitMask:1];
  [v13 setDensity:self->_constants.circleDensity];
  [v13 setDynamic:1];
  [v13 setFriction:0.0];
  [v13 setLinearDamping:self->_constants.circleLinearDamping];
  [(SKUIPhysicalCirclesView *)self bounds];
  [v13 setPosition:{v8, v14 - v10}];
  [v13 setRepresentedObject:viewCopy];

  [v13 setRestitution:0.0];

  return v13;
}

- (int64_t)_circleIndexForPoint:(CGPoint)point
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  circleBodies = self->_circleBodies;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SKUIPhysicalCirclesView__circleIndexForPoint___block_invoke;
  v6[3] = &unk_2781FE8A8;
  pointCopy = point;
  v6[4] = &v8;
  [(NSMutableArray *)circleBodies enumerateObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __48__SKUIPhysicalCirclesView__circleIndexForPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 representedObject];
  [v7 frame];
  if (CGRectContainsPoint(v9, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (CGPoint)_initialPositionForCircleIndex:(int64_t)index view:(id)view
{
  viewCopy = view;
  [(SKUIPhysicalCirclesView *)self bounds];
  v8 = v7;
  v10 = v9;
  [viewCopy bounds];
  v12 = v11;
  v14 = v13;

  self = (self + 424);
  cachedTraitCollection = self->super._cachedTraitCollection;
  v16 = rand();
  v17 = v12 + *&self->super._constraintsExceptingSubviewAutoresizingConstraints + v12 * ((index / 2) >> 1) * 2.0;
  v18 = v8 + v17;
  *&v17 = v17;
  v19 = -*&v17;
  if (index)
  {
    v19 = v18;
  }

  v20 = floorf(v19);
  v21 = v10 * 0.5 + ((index + (index >> 63)) & 2) * v14 - v14;
  v22 = v16 / 2147483650.0 * (*&cachedTraitCollection * 0.200000003) + 0.0 + roundf(v21);
  result.y = v22;
  result.x = v20;
  return result;
}

- (void)_loadCirclesWithStartIndex:(int64_t)index totalCount:(int64_t)count
{
  if (index < count)
  {
    indexCopy = index;
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v8 = [WeakRetained circlesView:self circleForIndex:indexCopy];

      [(SKUIPhysicalCirclesView *)self _initialPositionForCircleIndex:indexCopy view:v8];
      [v8 setCenter:?];
      [v8 setUserInteractionEnabled:0];
      v9 = [(SKUIPhysicalCirclesView *)self _circleBodyWithView:v8];
      [(NSMutableArray *)self->_circleBodies addObject:v9];
      [(PKPhysicsWorld *)self->_physicsWorld addBody:v9];
      [(SKUIPhysicalCirclesView *)self addSubview:v8];

      ++indexCopy;
    }

    while (count != indexCopy);
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  circleLoadStepTimer = self->_circleLoadStepTimer;
  self->_circleLoadStepTimer = v10;

  dispatch_source_set_timer(self->_circleLoadStepTimer, 0, 0x4C4B400uLL, 0);
  objc_initWeak(&location, self);
  v12 = self->_circleLoadStepTimer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SKUIPhysicalCirclesView__loadCirclesWithStartIndex_totalCount___block_invoke;
  v13[3] = &unk_2781F8320;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v12, v13);
  dispatch_resume(self->_circleLoadStepTimer);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __65__SKUIPhysicalCirclesView__loadCirclesWithStartIndex_totalCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = [WeakRetained _addNextMissingSpringJoint];
    v2 = v4;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = [v4 _reloadDidFinish];
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)_reloadDidFinish
{
  circleLoadStepTimer = self->_circleLoadStepTimer;
  if (circleLoadStepTimer)
  {
    dispatch_source_cancel(circleLoadStepTimer);
    v4 = self->_circleLoadStepTimer;
    self->_circleLoadStepTimer = 0;
  }

  delegate = [(SKUIPhysicalCirclesView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate circleViewReloadDidFinish:self];
  }
}

- (void)_removeCircleBodies:(id)bodies
{
  v16 = *MEMORY[0x277D85DE8];
  bodiesCopy = bodies;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [bodiesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(bodiesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        representedObject = [v9 representedObject];
        [representedObject removeFromSuperview];
        [(PKPhysicsWorld *)self->_physicsWorld removeBody:v9];
      }

      v6 = [bodiesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_startFluctuationForCircleView:(id)view
{
  viewCopy = view;
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke;
  v6[3] = &unk_2781F80F0;
  v7 = viewCopy;
  v5 = viewCopy;
  [v4 animateKeyframesWithDuration:8 delay:v6 options:0 animations:0.2 completion:0.0];
}

void __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke_2;
  v9[3] = &unk_2781F80F0;
  v10 = *(a1 + 32);
  [v2 addKeyframeWithRelativeStartTime:v9 relativeDuration:0.0 animations:0.33];
  v3 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke_3;
  v7[3] = &unk_2781F80F0;
  v8 = *(a1 + 32);
  [v3 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.33 animations:0.33];
  v4 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke_4;
  v5[3] = &unk_2781F80F0;
  v6 = *(a1 + 32);
  [v4 addKeyframeWithRelativeStartTime:v5 relativeDuration:0.66 animations:0.33];
}

uint64_t __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 1.05, 1.05);
  return [v1 setTransform:&v3];
}

uint64_t __58__SKUIPhysicalCirclesView__startFluctuationForCircleView___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)_stopFluctuationForCircleView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [layer removeAllAnimations];

  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SKUIPhysicalCirclesView__stopFluctuationForCircleView___block_invoke;
  v7[3] = &unk_2781F80F0;
  v8 = viewCopy;
  v6 = viewCopy;
  [v5 animateWithDuration:v7 animations:0.2];
}

uint64_t __57__SKUIPhysicalCirclesView__stopFluctuationForCircleView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (SKUIPhysicalCircleConstants)constants
{
  v3 = *&self[6].translationForceMultiplier;
  *&retstr->circleDensity = *&self[6].springMinimumFrequency;
  *&retstr->circleMaximumDiameter = v3;
  v4 = *&self[7].circleMinimumDiameter;
  *&retstr->springMaximumFrequency = *&self[7].circleLinearDamping;
  *&retstr->springDamping = v4;
  return self;
}

- (void)setConstants:(SKUIPhysicalCircleConstants *)constants
{
  v3 = *&constants->springDamping;
  v5 = *&constants->circleDensity;
  v4 = *&constants->circleMaximumDiameter;
  *&self->_constants.springMaximumFrequency = *&constants->springMaximumFrequency;
  *&self->_constants.springDamping = v3;
  *&self->_constants.circleDensity = v5;
  *&self->_constants.circleMaximumDiameter = v4;
}

- (SKUIPhysicalCirclesDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SKUIPhysicalCirclesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPhysicalCirclesView initWithFrame:]";
}

@end