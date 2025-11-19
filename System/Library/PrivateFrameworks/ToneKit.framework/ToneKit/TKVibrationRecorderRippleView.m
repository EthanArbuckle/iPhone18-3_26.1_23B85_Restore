@interface TKVibrationRecorderRippleView
- (TKVibrationRecorderRippleView)initWithStyleProvider:(id)a3;
- (double)_currentSpeed;
- (id)_reusableRingLayer;
- (id)_reusableTouchContextObject;
- (void)_enqueueReusableRingLayer:(id)a3;
- (void)_enqueueReusableTouchContextObject:(id)a3;
- (void)_enqueueRingLayerWithTimeIntervalSinceCreation:(double)a3 normalizedLocation:(CGPoint)a4 speed:(double)a5;
- (void)_refresh:(id)a3;
- (void)_startAnimation;
- (void)_stopAnimation;
- (void)_touchBeganAtLocation:(CGPoint)a3;
- (void)_updateRingEnlargementAnimation;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFadeOutRadius:(double)a3;
- (void)setFirstRippleInitialRadius:(double)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TKVibrationRecorderRippleView

- (TKVibrationRecorderRippleView)initWithStyleProvider:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TKVibrationRecorderRippleView;
  v6 = [(TKVibrationRecorderRippleView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = v11;
    if (v7 && v8 && v9 && v10 && v11)
    {
      objc_storeStrong(&v6->_reusableTouchContexts, v7);
      objc_storeStrong(&v6->_recentTouchesContextQueue, v8);
      objc_storeStrong(&v6->_ringLayersQueue, v9);
      objc_storeStrong(&v6->_reusableRingLayers, v10);
      objc_storeStrong(&v6->_ringLayersByIdentifiers, v12);
      objc_storeStrong(&v6->_styleProvider, a3);
      v13 = [v5 vibrationRecorderRippleViewBackgroundColor];
      [(TKVibrationRecorderRippleView *)v6 setBackgroundColor:v13];

      [(TKVibrationRecorderRippleView *)v6 setOpaque:1];
      [(TKVibrationRecorderRippleView *)v6 setFingerStillSpeed:1.0];
      [(TKVibrationRecorderRippleView *)v6 setFingerMovingSpeed:1.0];
      [(TKVibrationRecorderRippleView *)v6 setFirstRippleInitialRadius:50.0];
      [(TKVibrationRecorderRippleView *)v6 setFadeOutRadius:100.0];
      [(TKVibrationRecorderRippleView *)v6 setAccessibilityTraits:*MEMORY[0x277D76540]];
      [(TKVibrationRecorderRippleView *)v6 setIsAccessibilityElement:1];
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(TKVibrationRecorderRippleView *)self _stopAnimation];
  v3.receiver = self;
  v3.super_class = TKVibrationRecorderRippleView;
  [(TKVibrationRecorderRippleView *)&v3 dealloc];
}

- (void)setFirstRippleInitialRadius:(double)a3
{
  if (self->_firstRippleInitialRadius != a3)
  {
    self->_firstRippleInitialRadius = a3;
    [(TKVibrationRecorderRippleView *)self _updateRingEnlargementAnimation];
  }
}

- (void)setFadeOutRadius:(double)a3
{
  if (self->_fadeOutRadius != a3)
  {
    self->_fadeOutRadius = a3;
    [(TKVibrationRecorderRippleView *)self _updateRingEnlargementAnimation];
    reusableRingLayers = self->_reusableRingLayers;

    [(NSMutableArray *)reusableRingLayers removeAllObjects];
  }
}

- (void)_refresh:(id)a3
{
  x = self->_currentTouchLocation.x;
  y = self->_currentTouchLocation.y;
  [(TKVibrationRecorderRippleView *)self bounds];
  v6 = v46.origin.x;
  v7 = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  v10 = CGRectGetWidth(v46);
  v47.origin.x = v6;
  v47.origin.y = v7;
  v47.size.width = width;
  v47.size.height = height;
  v11 = CGRectGetHeight(v47);
  [(NSMutableArray *)self->_ringLayersQueue count];
  isTrackingTouch = self->_isTrackingTouch;
  if (isTrackingTouch)
  {
    v45 = x;
    v13 = x / v10;
    v14 = y / v11;
    [(TKVibrationRecorderRippleView *)self _currentSpeed];
    v16 = v15;
    numberOfRipplesForCurrentTouch = self->_numberOfRipplesForCurrentTouch;
    if (!numberOfRipplesForCurrentTouch)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(TKVibrationRecorderRippleView *)self _enqueueRingLayerWithTimeIntervalSinceCreation:v18 - self->_currentTouchStartTime normalizedLocation:v13 speed:v14, v16];
      numberOfRipplesForCurrentTouch = 1;
    }

    v19 = [(NSMutableArray *)self->_ringLayersQueue tk_lastEnqueuedObject];
    [v19 normalizedRingLocation];
    v21 = v20;
    v23 = v22;
    [v19 timeIntervalSinceCreation];
    v25 = v24;
    [v19 ringSpeed];
    v27 = v26;
    v28 = vcvtmd_u64_f64(v25 * v26);
    if (v28)
    {
      v29 = v21 - v13;
      v30 = numberOfRipplesForCurrentTouch + v28;
      v31 = v23 - v14;
      v32 = numberOfRipplesForCurrentTouch - 1;
      numberOfRipplesForCurrentTouch = 1;
      v33 = 1;
      v34 = v28;
      while (v28 != 1 || v32)
      {
        [(TKVibrationRecorderRippleView *)self _enqueueRingLayerWithTimeIntervalSinceCreation:v25 - v33 / v27 normalizedLocation:v13 + v29 * ((v25 - v33 / v27) / v25) speed:v14 + v31 * ((v25 - v33 / v27) / v25), v16];
        ++v32;
        ++v33;
        if (!--v34)
        {
          numberOfRipplesForCurrentTouch = v30;
          break;
        }
      }
    }

    self->_numberOfRipplesForCurrentTouch = numberOfRipplesForCurrentTouch;

    x = v45;
  }

  v35 = [(NSMutableArray *)self->_recentTouchesContextQueue count];
  v36 = v35;
  if (isTrackingTouch || v35)
  {
    if (isTrackingTouch)
    {
      if (v35)
      {
        v37 = [(NSMutableArray *)self->_recentTouchesContextQueue tk_lastEnqueuedObject];
        [v37 timeIntervalSinceCreation];
        v39 = v38;

        if (v39 <= 0.0)
        {
          do
          {
LABEL_18:
            if (v36 <= 5 && isTrackingTouch)
            {
              v41 = [(NSMutableArray *)self->_recentTouchesContextQueue tk_nextDequeuedObject];
              [v41 timeIntervalSinceCreation];
              v43 = v42;

              if (v43 <= 0.0)
              {
                break;
              }
            }

            v44 = [(NSMutableArray *)self->_recentTouchesContextQueue tk_dequeueObject];
            if (v44)
            {
              [(TKVibrationRecorderRippleView *)self _enqueueReusableTouchContextObject:v44];
            }

            --v36;
            self->_needsCurrentSpeedRefresh = 1;
          }

          while (v36);
          return;
        }
      }

      v40 = [(TKVibrationRecorderRippleView *)self _reusableTouchContextObject];
      [v40 configureWithTimeIntervalSinceCreation:0.0 location:{x, y}];
      [(NSMutableArray *)self->_recentTouchesContextQueue tk_enqueueObject:v40];
      ++v36;
      self->_needsCurrentSpeedRefresh = 1;
    }

    if (!v36)
    {
      return;
    }

    goto LABEL_18;
  }
}

- (double)_currentSpeed
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = 0x27CDE0000;
  if (self->_needsCurrentSpeedRefresh)
  {
    v4 = [(NSMutableArray *)self->_recentTouchesContextQueue count];
    v5 = 0.0;
    if (v4 >= 2)
    {
      v6 = v4;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = self->_recentTouchesContextQueue;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = 0;
        v12 = *v30;
        v13 = (((v6 - 1) * v6) >> 1);
        do
        {
          v14 = 0;
          v15 = v10;
          v16 = v11;
          do
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v7);
            }

            v17 = *(*(&v29 + 1) + 8 * v14);
            if (v15)
            {
              [v15 location];
              v19 = v18;
              v21 = v20;
              [v17 location];
              v5 = v5 + TKPointGetDistanceToPoint(v19, v21, v22, v23) * (v16 / v13);
            }

            v10 = v17;

            ++v16;
            ++v14;
            v15 = v10;
          }

          while (v9 != v14);
          v11 += v9;
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      v3 = 0x27CDE0000uLL;
    }

    *(&self->super.super.super.isa + *(v3 + 3676)) = fmin(v5, 12.8) / 12.8;
    self->_needsCurrentSpeedRefresh = 0;
  }

  [(TKVibrationRecorderRippleView *)self fingerStillSpeed];
  v25 = v24;
  [(TKVibrationRecorderRippleView *)self fingerMovingSpeed];
  v26 = *MEMORY[0x277D85DE8];
  return v25 + (v27 - v25) * *(&self->super.super.super.isa + *(v3 + 3676));
}

- (id)_reusableTouchContextObject
{
  if ([(NSMutableArray *)self->_reusableTouchContexts count])
  {
    v3 = [(NSMutableArray *)self->_reusableTouchContexts tk_dequeueObject];
  }

  else
  {
    v3 = objc_alloc_init(TKVibrationRecorderRippleTouchContext);
  }

  return v3;
}

- (void)_enqueueReusableTouchContextObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 reset];
    [(NSMutableArray *)self->_reusableTouchContexts tk_enqueueObject:v4];
  }
}

- (void)_startAnimation
{
  if (!self->_isAnimating)
  {
    self->_isAnimating = 1;
    v3 = +[TKDisplayLinkManager currentDisplayLinkManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__TKVibrationRecorderRippleView__startAnimation__block_invoke;
    v6[3] = &unk_278316958;
    v6[4] = self;
    v4 = [v3 addObserverWithHandler:v6];
    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = v4;
  }
}

- (void)_stopAnimation
{
  if (self->_isAnimating)
  {
    self->_isAnimating = 0;
    v4 = +[TKDisplayLinkManager currentDisplayLinkManager];
    [v4 removeObserverWithToken:self->_displayLinkManagerObserverToken];

    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = 0;
  }
}

- (void)_enqueueRingLayerWithTimeIntervalSinceCreation:(double)a3 normalizedLocation:(CGPoint)a4 speed:(double)a5
{
  y = a4.y;
  x = a4.x;
  [(TKVibrationRecorderRippleView *)self firstRippleInitialRadius];
  v11 = v10;
  [(TKVibrationRecorderRippleView *)self fadeOutRadius];
  v13 = (v12 / 0.84 - v11) / (a5 * 12.8);
  v16 = [(TKVibrationRecorderRippleView *)self _reusableRingLayer];
  [v16 configureWithTimeIntervalSinceCreation:a3 normalizedRingLocation:x ringSpeed:{y, a5}];
  ++self->_lastRingLayerIdentifier;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)self->_ringLayersByIdentifiers setObject:v16 forKey:v14];
  [(NSMutableArray *)self->_ringLayersQueue tk_enqueueObject:v16];
  v15 = [(TKVibrationRecorderRippleView *)self layer];
  [v15 addSublayer:v16];

  [(TKVibrationRecorderRippleView *)self setNeedsLayout];
  [(CAAnimation *)self->_ringEnlargementAnimation setDelegate:self];
  [(CAAnimation *)self->_ringEnlargementAnimation setDuration:v13];
  [(CAAnimation *)self->_ringEnlargementAnimation setBeginTime:CACurrentMediaTime() - a3];
  [(CAAnimation *)self->_ringEnlargementAnimation setValue:v14 forKey:@"ring layer identifier"];
  [v16 addAnimation:self->_ringEnlargementAnimation forKey:@"ring enlargement animation"];
  [(CAAnimation *)self->_ringEnlargementAnimation setDelegate:0];
}

- (id)_reusableRingLayer
{
  if (![(NSMutableArray *)self->_reusableRingLayers count])
  {
    v3 = objc_alloc_init(TKVibrationRecorderRippleRingLayer);
    [(TKVibrationRecorderRippleView *)self _enqueueReusableRingLayer:v3];
  }

  reusableRingLayers = self->_reusableRingLayers;

  return [(NSMutableArray *)reusableRingLayers tk_dequeueObject];
}

- (void)_enqueueReusableRingLayer:(id)a3
{
  if (a3)
  {
    v6 = a3;
    [v6 reset];
    [(TKVibrationRecorderRippleView *)self fadeOutRadius];
    [v6 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v4 + v4, v4 + v4}];
    v5 = [(TKVibrationRecorderRippleView *)self tintColor];
    [v6 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

    [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderRippleRingLineWidth];
    [v6 setLineWidth:?];
    [(NSMutableArray *)self->_reusableRingLayers tk_enqueueObject:v6];
  }
}

- (void)_updateRingEnlargementAnimation
{
  v15[2] = *MEMORY[0x277D85DE8];
  [(TKVibrationRecorderRippleView *)self firstRippleInitialRadius];
  v4 = v3;
  [(TKVibrationRecorderRippleView *)self fadeOutRadius];
  if (v4 > 0.0)
  {
    v6 = v5;
    if (v5 > 0.0)
    {
      v7 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v5 - v4, v5 - v4, v4 + v4, v4 + v4}];
      v8 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v6 + v6, v6 + v6}];
      v9 = objc_alloc_init(MEMORY[0x277CD9E10]);
      [v9 setKeyPath:@"path"];
      [v9 setFromValue:{objc_msgSend(v7, "CGPath")}];
      [v9 setToValue:{objc_msgSend(v8, "CGPath")}];
      v10 = objc_alloc_init(MEMORY[0x277CD9E10]);
      [v10 setKeyPath:@"opacity"];
      [v10 setFromValue:&unk_282E385D0];
      [v10 setToValue:&unk_282E385E0];
      v11 = objc_alloc_init(MEMORY[0x277CD9E00]);
      v15[0] = v9;
      v15[1] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
      [(CAAnimation *)v11 setAnimations:v12];

      ringEnlargementAnimation = self->_ringEnlargementAnimation;
      self->_ringEnlargementAnimation = v11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TKVibrationRecorderRippleView;
  [(TKVibrationRecorderRippleView *)&v22 layoutSubviews];
  [(TKVibrationRecorderRippleView *)self bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v7 = CGRectGetHeight(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v8 = CGRectGetWidth(v26);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_ringLayersQueue;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 normalizedRingLocation];
        [v14 setPosition:{v8 * v15, v7 * v16}];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  [MEMORY[0x277CD9FF0] commit];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_touchBeganAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_currentTouchStartTime = v6;
  self->_numberOfRipplesForCurrentTouch = 0;
  self->_isTrackingTouch = 1;
  self->_currentTouchLocation.x = x;
  self->_currentTouchLocation.y = y;

  [(TKVibrationRecorderRippleView *)self _startAnimation];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  [(TKVibrationRecorderRippleView *)self _touchBeganAtLocation:?];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  [(TKVibrationRecorderRippleView *)self _touchMovedToLocation:?];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  [(TKVibrationRecorderRippleView *)self _touchEndedAtLocation:?];
}

@end