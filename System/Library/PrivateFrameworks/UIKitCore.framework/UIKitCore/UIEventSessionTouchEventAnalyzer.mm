@interface UIEventSessionTouchEventAnalyzer
- (UIEventSessionTouchEventAnalyzer)init;
- (id)checkifGestureComplete:(id)complete;
- (id)completeGesture:(id)gesture;
- (id)didPointerClickWithTrackpadFingerDownCount:(int64_t)count withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds;
- (id)didPointerHoverWithTrackpadFingerDownCount:(int64_t)count withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds;
- (id)didTouchWithID:(id)d withPhase:(int64_t)phase withType:(int64_t)type withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds withTrackpadFingerDownCount:(int64_t)count;
- (int64_t)determineWindowSectionWithLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds;
@end

@implementation UIEventSessionTouchEventAnalyzer

- (UIEventSessionTouchEventAnalyzer)init
{
  v9.receiver = self;
  v9.super_class = UIEventSessionTouchEventAnalyzer;
  v2 = [(UIEventSessionTouchEventAnalyzer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _MergedGlobals_1180;
    _MergedGlobals_1180 = v3;

    v5 = qword_1ED49F1D0;
    qword_1ED49F1D0 = 0;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = qword_1ED49F1D8;
    qword_1ED49F1D8 = v6;
  }

  return v2;
}

- (id)completeGesture:(id)gesture
{
  v25 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  v4 = objc_alloc_init(_UIEventSessionTouchAction);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  touchStatus = [gestureCopy touchStatus];
  v6 = [touchStatus countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(touchStatus);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        touchStatus2 = [gestureCopy touchStatus];
        v12 = [touchStatus2 objectForKeyedSubscript:v10];
        windowSection = [v12 windowSection];

        touchStatus3 = [gestureCopy touchStatus];
        v15 = [touchStatus3 objectForKeyedSubscript:v10];

        tapDragState = [v15 tapDragState];
        if (tapDragState == 2)
        {
          v17 = 2;
          goto LABEL_13;
        }
      }

      v7 = [touchStatus countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    windowSection = 0;
  }

  v17 = 1;
LABEL_13:

  [(_UIEventSessionTouchAction *)v4 setTapDragState:v17];
  if ([gestureCopy touchType] && objc_msgSend(gestureCopy, "trackpadFingerDownCount") >= 1)
  {
    -[_UIEventSessionTouchAction setNumFingers:](v4, "setNumFingers:", [gestureCopy trackpadFingerDownCount]);
  }

  else
  {
    touchStatus4 = [gestureCopy touchStatus];
    -[_UIEventSessionTouchAction setNumFingers:](v4, "setNumFingers:", [touchStatus4 count]);
  }

  [(_UIEventSessionTouchAction *)v4 setWindowSection:windowSection];
  -[_UIEventSessionAction setSource:](v4, "setSource:", +[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", [gestureCopy touchType]));

  return v4;
}

- (id)checkifGestureComplete:(id)complete
{
  v21 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  touchStatus = [completeCopy touchStatus];
  v6 = [touchStatus countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(touchStatus);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        touchStatus2 = [completeCopy touchStatus];
        v12 = [touchStatus2 objectForKeyedSubscript:v10];
        upDownState = [v12 upDownState];

        if (upDownState != 2)
        {

          v14 = 0;
          goto LABEL_11;
        }
      }

      v7 = [touchStatus countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(UIEventSessionTouchEventAnalyzer *)self completeGesture:completeCopy];
LABEL_11:

  return v14;
}

- (int64_t)determineWindowSectionWithLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds
{
  height = bounds.size.height;
  y = window.y;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v8 = v7;

  if (height != v8)
  {
    return 0;
  }

  v9 = height / 3.0;
  v10 = 3;
  if (y < v9 + v9)
  {
    v10 = 2;
  }

  if (y < v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

- (id)didTouchWithID:(id)d withPhase:(int64_t)phase withType:(int64_t)type withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds withTrackpadFingerDownCount:(int64_t)count
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = window.y;
  v14 = window.x;
  v85 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (phase != 1)
  {
    if (!phase)
    {
      v20 = [_MergedGlobals_1180 objectForKeyedSubscript:dCopy];

      if (!v20)
      {
        if (qword_1ED49F1D0 && [qword_1ED49F1D0 touchType] != type && objc_msgSend(qword_1ED49F1D0, "trackpadFingerDownCount") != count)
        {
          v21 = [(UIEventSessionTouchEventAnalyzer *)self checkifGestureComplete:qword_1ED49F1D0];
          if (v21)
          {
            v67 = v21;
            [v19 addObject:v21];
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            touchStatus = [qword_1ED49F1D0 touchStatus];
            v23 = [touchStatus countByEnumeratingWithState:&v78 objects:v84 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v79;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v79 != v25)
                  {
                    objc_enumerationMutation(touchStatus);
                  }

                  [_MergedGlobals_1180 removeObjectForKey:*(*(&v78 + 1) + 8 * i)];
                }

                v24 = [touchStatus countByEnumeratingWithState:&v78 objects:v84 count:16];
              }

              while (v24);
            }

            v21 = v67;
          }

          else
          {
            [qword_1ED49F1D8 addObject:qword_1ED49F1D0];
          }
        }

        v59 = objc_alloc_init(UIEventSessionTouchEventDetail);
        [(UIEventSessionTouchEventDetail *)v59 setUpDownState:1];
        [(UIEventSessionTouchEventDetail *)v59 setLastLocation:v14, v13];
        v60 = qword_1ED49F1D0;
        if (!qword_1ED49F1D0)
        {
          v61 = [[UIEventSessionTouchEvent alloc] initWithTouchType:type withTrackpadFingerDownCount:count];
          v62 = qword_1ED49F1D0;
          qword_1ED49F1D0 = v61;

          v60 = qword_1ED49F1D0;
        }

        touchStatus2 = [v60 touchStatus];
        [touchStatus2 setObject:v59 forKeyedSubscript:dCopy];

        [_MergedGlobals_1180 setObject:qword_1ED49F1D0 forKeyedSubscript:dCopy];
      }

      goto LABEL_60;
    }

    if ((phase - 3) > 1)
    {
      goto LABEL_60;
    }

    v35 = [_MergedGlobals_1180 objectForKeyedSubscript:dCopy];
    if (!v35)
    {
      goto LABEL_60;
    }

    v36 = v35;
    touchStatus3 = [v35 touchStatus];
    v38 = [touchStatus3 objectForKeyedSubscript:dCopy];

    [v38 setUpDownState:2];
    [v38 setWindowSection:{-[UIEventSessionTouchEventAnalyzer determineWindowSectionWithLocationInWindow:withWindowBounds:](self, "determineWindowSectionWithLocationInWindow:withWindowBounds:", v14, v13, x, y, width, height)}];
    [v38 dragDistanceSquared];
    if (v39 <= 10.0)
    {
      [v38 lastLocation];
      [UIEventSessionTouchEventAnalyzer squaredDistanceBetweenPoint:"squaredDistanceBetweenPoint:andPoint:" andPoint:?];
      v41 = v40;
      [v38 dragDistanceSquared];
      [v38 setDragDistanceSquared:v41 + v42];
    }

    [v38 dragDistanceSquared];
    if (v43 <= 10.0)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    [v38 setTapDragState:v44];
    if ([qword_1ED49F1D0 containsTouchID:dCopy])
    {
      v45 = [(UIEventSessionTouchEventAnalyzer *)self checkifGestureComplete:qword_1ED49F1D0];
      if (v45)
      {
        v68 = v38;
        [v19 addObject:v45];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        touchStatus4 = [qword_1ED49F1D0 touchStatus];
        v47 = [touchStatus4 countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v75;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v75 != v49)
              {
                objc_enumerationMutation(touchStatus4);
              }

              [_MergedGlobals_1180 removeObjectForKey:*(*(&v74 + 1) + 8 * j)];
            }

            v48 = [touchStatus4 countByEnumeratingWithState:&v74 objects:v83 count:16];
          }

          while (v48);
        }

        v38 = v68;
      }

      else
      {
        [qword_1ED49F1D8 addObject:qword_1ED49F1D0];
      }

      v53 = qword_1ED49F1D0;
      qword_1ED49F1D0 = 0;
    }

    else
    {
      if (![qword_1ED49F1D8 count])
      {
LABEL_46:

        goto LABEL_60;
      }

      v51 = 0;
      while (1)
      {
        v45 = [qword_1ED49F1D8 objectAtIndexedSubscript:v51];
        if ([v45 containsTouchID:dCopy])
        {
          v52 = [(UIEventSessionTouchEventAnalyzer *)self checkifGestureComplete:v45];
          if (v52)
          {
            break;
          }
        }

        if (++v51 >= [qword_1ED49F1D8 count])
        {
          goto LABEL_46;
        }
      }

      v53 = v52;
      v66 = v19;
      v69 = v38;
      v65 = v36;
      [v19 addObject:v52];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      touchStatus5 = [v45 touchStatus];
      v55 = [touchStatus5 countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v71;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v71 != v57)
            {
              objc_enumerationMutation(touchStatus5);
            }

            [_MergedGlobals_1180 removeObjectForKey:*(*(&v70 + 1) + 8 * k)];
          }

          v56 = [touchStatus5 countByEnumeratingWithState:&v70 objects:v82 count:16];
        }

        while (v56);
      }

      [qword_1ED49F1D8 removeObjectAtIndex:v51];
      v36 = v65;
      v19 = v66;
      v38 = v69;
    }

    goto LABEL_46;
  }

  v27 = [_MergedGlobals_1180 objectForKeyedSubscript:dCopy];
  if (v27)
  {
    v28 = v27;
    touchStatus6 = [v27 touchStatus];
    v30 = [touchStatus6 objectForKeyedSubscript:dCopy];

    [v30 dragDistanceSquared];
    if (v31 <= 10.0)
    {
      [v30 lastLocation];
      [UIEventSessionTouchEventAnalyzer squaredDistanceBetweenPoint:"squaredDistanceBetweenPoint:andPoint:" andPoint:?];
      v33 = v32;
      [v30 dragDistanceSquared];
      [v30 setDragDistanceSquared:v33 + v34];
      [v30 setLastLocation:{v14, v13}];
    }
  }

LABEL_60:

  return v19;
}

- (id)didPointerHoverWithTrackpadFingerDownCount:(int64_t)count withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds
{
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (qword_1ED49F1E0 == 2)
  {
    if (!count)
    {
      qword_1ED49F1E0 = 0;
      qword_1ED49F1E8 = 0;
    }
  }

  else if (qword_1ED49F1E0 == 1)
  {
    if (count)
    {
      countCopy = qword_1ED49F1E8;
      if (qword_1ED49F1E8 <= count)
      {
        countCopy = count;
      }

      qword_1ED49F1E8 = countCopy;
    }

    else
    {
      v8 = objc_alloc_init(_UIEventSessionHoverAction);
      [(_UIEventSessionAction *)v8 setSource:4];
      [(_UIEventSessionHoverAction *)v8 setNumFingers:qword_1ED49F1E8];
      [v6 addObject:v8];
      qword_1ED49F1E0 = 0;
      qword_1ED49F1E8 = 0;
    }
  }

  else if (count >= 1)
  {
    qword_1ED49F1E0 = 1;
    qword_1ED49F1E8 = count;
  }

  return v6;
}

- (id)didPointerClickWithTrackpadFingerDownCount:(int64_t)count withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = window.y;
  v10 = window.x;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v14 = objc_alloc_init(_UIEventSessionTouchAction);
  [(_UIEventSessionAction *)v14 setSource:4];
  [(_UIEventSessionTouchAction *)v14 setNumFingers:count];
  [(_UIEventSessionTouchAction *)v14 setWindowSection:[(UIEventSessionTouchEventAnalyzer *)self determineWindowSectionWithLocationInWindow:v10 withWindowBounds:v9, x, y, width, height]];
  [v13 addObject:v14];
  if (qword_1ED49F1E0 == 1)
  {
    qword_1ED49F1E0 = 2;
  }

  return v13;
}

@end