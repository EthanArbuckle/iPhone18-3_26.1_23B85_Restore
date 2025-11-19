@interface TVRTouchProcessor
+ (id)touchProcessorForDevice:(id)a3;
- (BOOL)_deviceSupportsMovableBoundingBox;
- (CGPoint)_virtualTouchLocationForTouch:(id)a3;
- (CGRect)_boundingBoxForTouch:(id)a3 relativeStartLocation:(int64_t)a4;
- (TVRTouchProcessorDelegate)delegate;
- (id)_init;
- (int64_t)_defaultRelativeStartingLocation;
- (int64_t)_relativeTouchLocationForDistanceTraveled:(CGPoint)a3;
- (void)_beginTrackingAnyTouchIfNeeded;
- (void)_beginTrackingTouch:(id)a3 withRelativeLocation:(int64_t)a4;
- (void)_deliverTouchToDelegate:(id)a3 info:(id)a4;
- (void)_dispatchGameControllerEventForTouch:(id)a3 event:(id)a4;
- (void)_touchTimerExpired:(id)a3;
- (void)markCurrentTouchToBeCancelled;
- (void)reset;
- (void)sendPressBegan:(int64_t)a3;
- (void)sendPressEnded:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TVRTouchProcessor

+ (id)touchProcessorForDevice:(id)a3
{
  v3 = [a3 supportsTouchEvents];
  v4 = off_279D86B78;
  if (!v3)
  {
    v4 = off_279D86B50;
  }

  v5 = [objc_alloc(*v4) _init];
  v6 = [[TVRTouchpadView alloc] _init];
  [v6 setTouchProcessor:v5];
  [v5 setTouchpadView:v6];

  return v5;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = TVRTouchProcessor;
  v2 = [(TVRTouchProcessor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    touches = v2->_touches;
    v2->_touches = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeButtonTypes = v2->_activeButtonTypes;
    v2->_activeButtonTypes = v5;
  }

  return v2;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v28 = *MEMORY[0x277CBE738];
    v11 = 0x282029000uLL;
    v27 = self;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [(TVRTouchProcessor *)self touchpadView];
        [v13 preciseLocationInView:v14];
        v16 = v15;
        v18 = v17;
        v19 = objc_alloc_init((v11 + 3416));
        [v19 setInitialLocation:{v16, v18}];
        [v19 setVirtualPhase:0];
        [v7 timestamp];
        [v19 setTimestamp:?];
        [v7 timestamp];
        [v19 setPreviousTimestamp:?];
        [(NSMapTable *)self->_touches setObject:v19 forKey:v13];
        if ([(TVRTouchProcessor *)self _deviceSupportsMovableBoundingBox])
        {
          v20 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__touchTimerExpired_ selector:v13 userInfo:0 repeats:0.2];
          [MEMORY[0x277CBEB88] mainRunLoop];
          v21 = v14;
          v22 = v7;
          v23 = v9;
          v24 = v10;
          v26 = v25 = v11;
          [v26 addTimer:v20 forMode:v28];

          v11 = v25;
          v10 = v24;
          v9 = v23;
          v7 = v22;
          v14 = v21;
          self = v27;
        }

        else
        {
          [(TVRTouchProcessor *)self _beginTrackingTouch:v13 withRelativeLocation:[(TVRTouchProcessor *)self _defaultRelativeStartingLocation]];
        }

        [(TVRTouchProcessor *)self _dispatchGameControllerEventForTouch:v13 event:v7];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v106 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v100 = [v6 countByEnumeratingWithState:&v101 objects:v105 count:16];
  if (v100)
  {
    v8 = &OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
    v9 = &OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
    v99 = *v102;
    do
    {
      v10 = 0;
      do
      {
        if (*v102 != v99)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v101 + 1) + 8 * v10);
        v12 = [(NSMapTable *)self->_touches objectForKey:v11];
        [v7 timestamp];
        [v12 setTimestamp:?];
        [v7 timestamp];
        v14 = v13;
        [v12 previousTimestamp];
        v16 = v14 - v15;
        [v11 preciseLocationInView:self->_touchpadView];
        v18 = v17;
        v20 = v19;
        [v11 precisePreviousLocationInView:self->_touchpadView];
        v22 = v21;
        v24 = v23;
        v25 = hypot(v21 - v18, v23 - v20);
        [v12 initialLocation];
        v28 = hypot(v26 - v18, v27 - v20);
        v29 = v25 / v16;
        [v12 boundingBox];
        v107.x = v18;
        v107.y = v20;
        v30 = CGRectContainsPoint(v109, v107);
        [v12 boundingBox];
        v108.x = v22;
        v108.y = v24;
        v31 = CGRectContainsPoint(v110, v108);
        if ([v12 virtualPhase])
        {
          if ([v12 virtualPhase] == 1 || objc_msgSend(v12, "virtualPhase") == 2)
          {
            if (v30 || !v31)
            {
              if (v30)
              {
                goto LABEL_77;
              }

LABEL_39:
              if (![(TVRTouchProcessor *)self _deviceSupportsMovableBoundingBox])
              {
                goto LABEL_77;
              }

              [v12 boundingBox];
              v97 = v44;
              v46 = v45;
              v48 = v47;
              [(TVRTouchpadView *)self->_touchpadView bounds];
              v94 = v50;
              v95 = v49;
              v93 = v51;
              v96 = v52;
              v91 = v48;
              v92 = v46;
              v90 = v18;
              if (![v12 isLikelyLongListScrollingEdgeGesture])
              {
                goto LABEL_56;
              }

              [v12 boundingBox];
              if (v18 <= CGRectGetMaxX(v111))
              {
                goto LABEL_56;
              }

              [v12 boundingBox];
              MaxX = CGRectGetMaxX(v112);
              if (_TVRCGetBoundingBoxExtraRightDistance_onceToken != -1)
              {
                [TVRTouchProcessor touchesMoved:withEvent:];
              }

              if ((__hasCachedBoundingBoxExtraRightDistance & 1) == 0)
              {
                v54 = [MEMORY[0x277CBEBD0] standardUserDefaults];
                v55 = [v54 objectForKey:@"BoundingBoxExtraRightDistance"];

                if (v55)
                {
                  [v55 doubleValue];
                }

                else
                {
                  v56 = 0.25;
                }

                __cachedBoundingBoxExtraRightDistance = *&v56;
                __hasCachedBoundingBoxExtraRightDistance = 1;
              }

              v62 = *&__cachedBoundingBoxExtraRightDistance;
              [v12 boundingBox];
              if (v18 > MaxX + v62 * CGRectGetWidth(v113))
              {
LABEL_56:
                [v12 boundingBox];
                MinX = CGRectGetMinX(v114);
                [v12 boundingBox];
                v64 = CGRectGetMaxX(v115);
                v116.origin.x = v95;
                v116.origin.y = v94;
                v116.size.width = v93;
                v116.size.height = v96;
                v98 = CGRectGetMinX(v116);
                v117.origin.x = v95;
                v117.origin.y = v94;
                v117.size.width = v93;
                v117.size.height = v96;
                v65 = CGRectGetMaxX(v117);
                v66 = v64 - MinX;
                v67 = MinX;
                if (v18 > v64)
                {
                  if (v64 + v66 <= v65)
                  {
                    v67 = MinX + v66;
                  }

                  else
                  {
                    v67 = v65 - v66;
                  }
                }

                v68 = MinX - v66;
                v69 = v67 - v66;
                if (v68 >= v98)
                {
                  v70 = v69;
                }

                else
                {
                  v70 = v98;
                }

                if (v18 >= MinX)
                {
                  v70 = v67;
                }

                v97 = v70;
              }

              [v12 boundingBox];
              MinY = CGRectGetMinY(v118);
              [v12 boundingBox];
              MaxY = CGRectGetMaxY(v119);
              v120.origin.x = v95;
              v120.origin.y = v94;
              v120.size.width = v93;
              v120.size.height = v96;
              v73 = CGRectGetMinY(v120);
              v121.origin.x = v95;
              v121.origin.y = v94;
              v121.size.width = v93;
              v121.size.height = v96;
              v74 = CGRectGetMaxY(v121);
              v75 = MaxY - MinY;
              v76 = MinY;
              if (v20 > MaxY)
              {
                if (MaxY + v75 <= v74)
                {
                  v76 = MinY + v75;
                }

                else
                {
                  v76 = v74 - v75;
                }
              }

              v77 = MinY - v75;
              v78 = v76 - v75;
              v79 = v77 >= v73 ? v78 : v73;
              v80 = v20 < MinY ? v79 : v76;
              [v12 boundingBox];
              v125.origin.x = v81;
              v125.origin.y = v82;
              v125.size.width = v83;
              v125.size.height = v84;
              v85 = v97;
              v122.origin.x = v97;
              v122.origin.y = v80;
              v122.size.width = v92;
              v122.size.height = v91;
              if (CGRectEqualToRect(v122, v125))
              {
LABEL_77:
                v40 = 2;
                goto LABEL_78;
              }

              if ([v12 isLikelyLongListScrollingEdgeGesture])
              {
                [v12 initialProportionalLocation];
                v88 = v87;
                v123.origin.x = v97;
                v123.origin.y = v80;
                v123.size.width = v92;
                v123.size.height = v91;
                v85 = v90 - CGRectGetWidth(v123) * v88;
                [v12 boundingBox];
                if (v90 < CGRectGetMinX(v124))
                {
                  [v12 setIsLikelyLongListScrollingEdgeGesture:0];
                }
              }

              [v12 setVirtualPhase:4];
              [(TVRTouchProcessor *)self _deliverTouchToDelegate:v11 info:v12];
              [v12 setBoundingBox:{v85, v80, v92, v91}];
              v86 = v12;
              v40 = 1;
LABEL_79:
              [v86 setVirtualPhase:v40];
LABEL_80:
              [(TVRTouchProcessor *)self _deliverTouchToDelegate:v11 info:v12];
              goto LABEL_81;
            }

            if (_TVRCGetBoundingBoxExitSpeed_onceToken != -1)
            {
              [TVRTouchProcessor touchesMoved:withEvent:];
            }

            if ((__hasCachedBoundingBoxExitSpeed & 1) == 0)
            {
              v35 = v8;
              v36 = v6;
              v37 = [MEMORY[0x277CBEBD0] standardUserDefaults];
              v38 = [v37 objectForKey:@"BoundingBoxExitSpeed"];

              if (v38)
              {
                [v38 doubleValue];
              }

              else
              {
                v39 = 0x408F400000000000;
              }

              __cachedBoundingBoxExitSpeed = v39;
              __hasCachedBoundingBoxExitSpeed = 1;

              v6 = v36;
              v8 = v35;
              v9 = &OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
            }

            if (v29 <= *&__cachedBoundingBoxExitSpeed)
            {
              v40 = 2;
            }

            else
            {
              v40 = 4;
            }

            if (v29 <= *&__cachedBoundingBoxExitSpeed && !v30)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if ([v12 virtualPhase] != 4)
            {
              goto LABEL_80;
            }

            if (v31 || !v30)
            {
              goto LABEL_81;
            }

            v40 = 1;
          }

LABEL_78:
          v86 = v12;
          goto LABEL_79;
        }

        if (v8[270] != -1)
        {
          [TVRTouchProcessor touchesMoved:withEvent:];
        }

        if ((v9[271] & 1) == 0)
        {
          v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v33 = [v32 objectForKey:@"BoundingBoxThresholdDistance"];

          if (v33)
          {
            [v33 doubleValue];
          }

          else
          {
            v34 = 20.0;
          }

          __cachedBoundingBoxThresholdDistance = *&v34;
          *(v9 + 2168) = 1;
        }

        if (v28 > *&__cachedBoundingBoxThresholdDistance)
        {
          if (_TVRCGetBoundingBoxThresholdSpeed_onceToken != -1)
          {
            [TVRTouchProcessor touchesMoved:withEvent:];
          }

          if ((__hasCachedBoundingBoxThresholdSpeed & 1) == 0)
          {
            v41 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v42 = [v41 objectForKey:@"BoundingBoxThresholdSpeed"];

            if (v42)
            {
              [v42 doubleValue];
            }

            else
            {
              v43 = 0x4069000000000000;
            }

            __cachedBoundingBoxThresholdSpeed = v43;
            __hasCachedBoundingBoxThresholdSpeed = 1;
          }

          if (v29 <= *&__cachedBoundingBoxThresholdSpeed)
          {
            v60 = self;
            v61 = v11;
            v59 = 0;
          }

          else
          {
            [v12 initialLocation];
            v59 = [(TVRTouchProcessor *)self _relativeTouchLocationForDistanceTraveled:v18 - v57, v20 - v58];
            v60 = self;
            v61 = v11;
          }

          [(TVRTouchProcessor *)v60 _beginTrackingTouch:v61 withRelativeLocation:v59];
        }

LABEL_81:
        [(TVRTouchProcessor *)self _dispatchGameControllerEventForTouch:v11 event:v7];
        [v7 timestamp];
        [v12 setPreviousTimestamp:?];

        ++v10;
      }

      while (v100 != v10);
      v89 = [v6 countByEnumeratingWithState:&v101 objects:v105 count:16];
      v100 = v89;
    }

    while (v89);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_touches objectForKey:v12];
        if ([v13 pendingCancellation])
        {
          v14 = 5;
        }

        else
        {
          v14 = 4;
        }

        if ([v13 virtualPhase] && objc_msgSend(v13, "virtualPhase") != 4 && objc_msgSend(v13, "virtualPhase") != 5)
        {
          [v13 setVirtualPhase:v14];
          [(TVRTouchProcessor *)self _deliverTouchToDelegate:v12 info:v13];
        }

        [(NSMapTable *)self->_touches removeObjectForKey:v12];
        [(TVRTouchProcessor *)self _dispatchGameControllerEventForTouch:v12 event:v7];
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (![(NSMapTable *)self->_touches count])
  {
    [(TVRTouchProcessor *)self reset];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_touches objectForKey:v12];
        if ([v13 virtualPhase] && objc_msgSend(v13, "virtualPhase") != 4 && objc_msgSend(v13, "virtualPhase") != 5)
        {
          [v13 setVirtualPhase:5];
          [(TVRTouchProcessor *)self _deliverTouchToDelegate:v12 info:v13];
        }

        [(NSMapTable *)self->_touches removeObjectForKey:v12];
        [(TVRTouchProcessor *)self _dispatchGameControllerEventForTouch:v12 event:v7];
      }

      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (![(NSMapTable *)self->_touches count])
  {
    [(TVRTouchProcessor *)self reset];
  }
}

- (void)markCurrentTouchToBeCancelled
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMapTable *)self->_touches keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(NSMapTable *)self->_touches objectForKey:v8];
        if ([v9 virtualPhase] == 1 || objc_msgSend(v9, "virtualPhase") == 3 || objc_msgSend(v9, "virtualPhase") == 2)
        {
          [v9 setVirtualPhase:5];
          [(TVRTouchProcessor *)self _deliverTouchToDelegate:v8 info:v9];
        }

        else
        {
          [v9 setPendingCancellation:1];
        }

        ++v7;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }
}

- (void)sendPressBegan:(int64_t)a3
{
  activeButtonTypes = self->_activeButtonTypes;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  LOBYTE(activeButtonTypes) = [(NSMutableSet *)activeButtonTypes containsObject:v6];

  if ((activeButtonTypes & 1) == 0)
  {
    v7 = self->_activeButtonTypes;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableSet *)v7 addObject:v8];

    if (a3 == 1)
    {
      [(TVRTouchProcessor *)self _beginTrackingAnyTouchIfNeeded];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v13 = [objc_alloc(MEMORY[0x277D6C4C8]) _initWithButtonType:a3];
      v11 = [MEMORY[0x277D6C4D0] buttonEventForButton:v13 eventType:1];
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 touchProcessor:self generatedButtonEvent:v11];
    }
  }
}

- (void)sendPressEnded:(int64_t)a3
{
  activeButtonTypes = self->_activeButtonTypes;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  LODWORD(activeButtonTypes) = [(NSMutableSet *)activeButtonTypes containsObject:v6];

  if (activeButtonTypes)
  {
    v7 = self->_activeButtonTypes;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableSet *)v7 removeObject:v8];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v8) = objc_opt_respondsToSelector();

    if (v8)
    {
      v12 = [objc_alloc(MEMORY[0x277D6C4C8]) _initWithButtonType:a3];
      v10 = [MEMORY[0x277D6C4D0] buttonEventForButton:v12 eventType:2];
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 touchProcessor:self generatedButtonEvent:v10];
    }
  }
}

- (void)reset
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_activeButtonTypes;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = objc_alloc(MEMORY[0x277D6C4C8]);
          v12 = [v11 _initWithButtonType:{objc_msgSend(v8, "integerValue", v15)}];
          v13 = [MEMORY[0x277D6C4D0] buttonEventForButton:v12 eventType:2];
          v14 = objc_loadWeakRetained(&self->_delegate);
          [v14 touchProcessor:self generatedButtonEvent:v13];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_activeButtonTypes removeAllObjects];
}

- (void)_touchTimerExpired:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [(NSMapTable *)self->_touches objectForKey:?];
  v5 = v4;
  if (v4 && ![v4 virtualPhase])
  {
    [(TVRTouchProcessor *)self _beginTrackingTouch:v6 withRelativeLocation:[(TVRTouchProcessor *)self _defaultRelativeStartingLocation]];
  }
}

- (void)_beginTrackingAnyTouchIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMapTable *)self->_touches objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {

LABEL_11:
    if ([(NSMapTable *)self->_touches count])
    {
      v9 = [(NSMapTable *)self->_touches keyEnumerator];
      v10 = [v9 nextObject];

      [(TVRTouchProcessor *)self _beginTrackingTouch:v10 withRelativeLocation:[(TVRTouchProcessor *)self _defaultRelativeStartingLocation]];
    }

    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v6 |= [*(*(&v11 + 1) + 8 * i) virtualPhase] != 0;
    }

    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }
}

- (int64_t)_defaultRelativeStartingLocation
{
  if ([(TVRTouchProcessor *)self _deviceSupportsMovableBoundingBox])
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_relativeTouchLocationForDistanceTraveled:(CGPoint)a3
{
  v3 = fabs(a3.x);
  v4 = fabs(a3.y);
  v5 = 4;
  if (a3.x > 0.0)
  {
    v5 = 3;
  }

  v6 = 2;
  if (a3.y > 0.0)
  {
    v6 = 1;
  }

  if (v3 <= v4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (BOOL)_deviceSupportsMovableBoundingBox
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (void)_beginTrackingTouch:(id)a3 withRelativeLocation:(int64_t)a4
{
  touches = self->_touches;
  v7 = a3;
  v12 = [(NSMapTable *)touches objectForKey:v7];
  [(TVRTouchProcessor *)self _boundingBoxForTouch:v7 relativeStartLocation:a4];
  [v12 setBoundingBox:?];
  [v12 setVirtualPhase:1];
  [(TVRTouchProcessor *)self _virtualTouchLocationForTouch:v7];
  v9 = v8;
  [v12 setInitialProportionalLocation:?];
  v11 = v9 >= 0.9 && (a4 - 5) < 0xFFFFFFFFFFFFFFFELL;
  [v12 setIsLikelyLongListScrollingEdgeGesture:v11];
  [(TVRTouchProcessor *)self _deliverTouchToDelegate:v7 info:v12];
}

- (void)_deliverTouchToDelegate:(id)a3 info:(id)a4
{
  v17 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    [(TVRTouchProcessor *)self _virtualTouchLocationForTouch:v17];
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x277D6C538]);
    [v6 timestamp];
    v15 = [v13 _initWithTimestamp:1 finger:objc_msgSend(v6 phase:"virtualPhase") digitizerLocation:{v14, v10, v12}];
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 touchProcessor:self generatedTouchEvent:v15];
  }
}

- (CGRect)_boundingBoxForTouch:(id)a3 relativeStartLocation:(int64_t)a4
{
  touchpadView = self->_touchpadView;
  v7 = a3;
  [(TVRTouchpadView *)touchpadView bounds];
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  MidX = CGRectGetMidX(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MidY = CGRectGetMidY(v61);
  [v7 preciseLocationInView:self->_touchpadView];
  v13 = v12;
  v15 = v14;

  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v57 = v13;
  v17 = (v13 - MinX) / (CGRectGetMaxX(v63) - MinX);
  if (v17 >= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  MinY = CGRectGetMinY(v64);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  rect = v15;
  v20 = (v15 - MinY) / (CGRectGetMaxY(v65) - MinY);
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  if (_TVRCGetTouchCenteringWeight_onceToken != -1)
  {
    [TVRTouchProcessor _boundingBoxForTouch:relativeStartLocation:];
  }

  v22 = fmin(v18, 1.0);
  v54 = fmin(v21, 1.0);
  if ((__hasCachedTouchCenteringWeight & 1) == 0)
  {
    v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v24 = [v23 objectForKey:@"TouchCenteringWeight"];

    if (v24)
    {
      [v24 doubleValue];
    }

    else
    {
      v25 = -1.0;
    }

    __cachedTouchCenteringWeight = *&v25;
    __hasCachedTouchCenteringWeight = 1;
  }

  v26 = *&__cachedTouchCenteringWeight;
  v27 = hypot(v57 - MidX, v15 - MidY);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  v28 = CGRectGetWidth(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  v29 = CGRectGetHeight(v67);
  if (v28 < v29)
  {
    v29 = v28;
  }

  v30 = 0.5;
  v31 = v27 / (v29 * 0.5);
  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  v32 = v26 + (0.0 - v26) * fmin(v31, 1.0);
  v33 = v22 + (0.5 - v22) * v32;
  v34 = v54 + (0.5 - v54) * v32;
  if (a4 == 5)
  {
    v35 = 0.5;
  }

  else
  {
    v35 = v33;
  }

  if (a4 != 5)
  {
    v30 = v34;
  }

  if (a4 == 4)
  {
    v35 = 1.0;
    v30 = v34;
  }

  if (a4 == 3)
  {
    v35 = 0.0;
    v30 = v34;
  }

  if (a4 == 2)
  {
    v34 = 1.0;
  }

  if (a4 == 1)
  {
    v34 = 0.0;
  }

  if (a4 <= 2)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  if (a4 <= 2)
  {
    v37 = v34;
  }

  else
  {
    v37 = v30;
  }

  if (_TVRCPointSizeOfSiriRemoteOnMainScreen_onceToken != -1)
  {
    [TVRTouchProcessor _boundingBoxForTouch:relativeStartLocation:];
  }

  v38 = v57 - *&_TVRCPointSizeOfSiriRemoteOnMainScreen_size_0 * v36;
  v39 = v57 + *&_TVRCPointSizeOfSiriRemoteOnMainScreen_size_0 * (1.0 - v36);
  v40 = rect - *&_TVRCPointSizeOfSiriRemoteOnMainScreen_size_1 * v37;
  v68.size.width = v39 - v38;
  v41 = rect + *&_TVRCPointSizeOfSiriRemoteOnMainScreen_size_1 * (1.0 - v37) - v40;
  v68.origin.x = v38;
  v68.origin.y = v40;
  recta = v68.size.width;
  v68.size.height = v41;
  MaxX = CGRectGetMaxX(v68);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  if (MaxX <= CGRectGetMaxX(v69))
  {
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v44 = CGRectGetMinX(v72);
    v73.origin.x = v38;
    v73.origin.y = v40;
    v73.size.width = recta;
    v73.size.height = v41;
    if (v44 > CGRectGetMinX(v73))
    {
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      v45 = CGRectGetMinX(v74);
      v75.origin.x = v38;
      v75.origin.y = v40;
      v75.size.width = recta;
      v75.size.height = v41;
      v38 = v38 + v45 - CGRectGetMinX(v75);
    }
  }

  else
  {
    v70.origin.x = v38;
    v70.origin.y = v40;
    v70.size.width = recta;
    v70.size.height = v41;
    v43 = CGRectGetMaxX(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v38 = v38 - (v43 - CGRectGetMaxX(v71));
  }

  v76.origin.x = v38;
  v76.origin.y = v40;
  v76.size.width = recta;
  v76.size.height = v41;
  MaxY = CGRectGetMaxY(v76);
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  if (MaxY <= CGRectGetMaxY(v77))
  {
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = width;
    v80.size.height = height;
    v48 = CGRectGetMinY(v80);
    v81.origin.x = v38;
    v81.origin.y = v40;
    v81.size.width = recta;
    v81.size.height = v41;
    if (v48 > CGRectGetMinY(v81))
    {
      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      v49 = CGRectGetMinY(v82);
      v83.origin.x = v38;
      v83.origin.y = v40;
      v83.size.width = recta;
      v83.size.height = v41;
      v40 = v40 + v49 - CGRectGetMinY(v83);
    }
  }

  else
  {
    v78.origin.x = v38;
    v78.origin.y = v40;
    v78.size.width = recta;
    v78.size.height = v41;
    v47 = CGRectGetMaxY(v78);
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    v40 = v40 - (v47 - CGRectGetMaxY(v79));
  }

  v50 = v38;
  v51 = v40;
  v52 = recta;
  v53 = v41;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (CGPoint)_virtualTouchLocationForTouch:(id)a3
{
  touches = self->_touches;
  v5 = a3;
  v6 = [(NSMapTable *)touches objectForKey:v5];
  v7 = [(TVRTouchProcessor *)self touchpadView];
  [v5 preciseLocationInView:v7];
  v9 = v8;
  v23 = v10;

  [v6 boundingBox];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v16 = (v9 - MinX) / (CGRectGetMaxX(v26) - MinX);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = fmin(v16, 1.0) + 0.0;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v19 = (v23 - MinY) / (CGRectGetMaxY(v28) - MinY);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  v20 = fmin(v19, 1.0) + 0.0;

  v21 = v17;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)_dispatchGameControllerEventForTouch:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_copyWeak(&to, &self->_delegate);
  v8 = objc_loadWeakRetained(&to);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [v6 preciseLocationInView:self->_touchpadView];
    v11 = v10;
    v13 = v12;
    [(TVRTouchpadView *)self->_touchpadView bounds];
    MidX = CGRectGetMidX(v40);
    v15 = MidX;
    v16 = vabdd_f64(v15, v11);
    v17 = v11 < v15;
    if (v11 >= v15)
    {
      v18 = v11 - v15;
    }

    else
    {
      v18 = v16;
    }

    v19 = -80.0;
    if (!v17)
    {
      v19 = 80.0;
    }

    v20 = fmin(v18, 80.0) / v19;
    v21 = v20;
    if (v21 >= -1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = -1.0;
    }

    [(TVRTouchpadView *)self->_touchpadView bounds];
    v23 = fmin(v22, 1.0);
    MidY = CGRectGetMidY(v41);
    v25 = MidY;
    v26 = vabdd_f64(v25, v13);
    v27 = v13 < v25;
    if (v13 >= v25)
    {
      v28 = v13 - v25;
    }

    else
    {
      v28 = v26;
    }

    v29 = -80.0;
    if (!v27)
    {
      v29 = 80.0;
    }

    v30 = fmin(v28, 80.0) / v29;
    v31 = v30;
    if (v31 >= -1.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = -1.0;
    }

    v33 = __fpclassifyf(v23);
    v34 = fmin(v32, 1.0);
    if (v33 != 3 || __fpclassifyf(-v34) != 3)
    {
      v35 = [v6 phase] != 3 && objc_msgSend(v6, "phase") != 4;
      v36 = objc_alloc(MEMORY[0x277D6C4F8]);
      [v7 timestamp];
      v37 = [v36 _initWithTimestamp:v35 isDown:? joystickLocation:?];
      v38 = objc_loadWeakRetained(&to);
      [v38 touchProcessor:self generatedGameControllerEvent:v37];
    }
  }

  objc_destroyWeak(&to);
}

- (TVRTouchProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end