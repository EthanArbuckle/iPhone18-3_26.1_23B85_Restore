@interface UIEventSessionTouchEventAnalyzer
- (UIEventSessionTouchEventAnalyzer)init;
- (id)checkifGestureComplete:(id)a3;
- (id)completeGesture:(id)a3;
- (id)didPointerClickWithTrackpadFingerDownCount:(int64_t)a3 withLocationInWindow:(CGPoint)a4 withWindowBounds:(CGRect)a5;
- (id)didPointerHoverWithTrackpadFingerDownCount:(int64_t)a3 withLocationInWindow:(CGPoint)a4 withWindowBounds:(CGRect)a5;
- (id)didTouchWithID:(id)a3 withPhase:(int64_t)a4 withType:(int64_t)a5 withLocationInWindow:(CGPoint)a6 withWindowBounds:(CGRect)a7 withTrackpadFingerDownCount:(int64_t)a8;
- (int64_t)determineWindowSectionWithLocationInWindow:(CGPoint)a3 withWindowBounds:(CGRect)a4;
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

- (id)completeGesture:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(_UIEventSessionTouchAction);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v3 touchStatus];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v3 touchStatus];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 windowSection];

        v14 = [v3 touchStatus];
        v15 = [v14 objectForKeyedSubscript:v10];

        v16 = [v15 tapDragState];
        if (v16 == 2)
        {
          v17 = 2;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = 1;
LABEL_13:

  [(_UIEventSessionTouchAction *)v4 setTapDragState:v17];
  if ([v3 touchType] && objc_msgSend(v3, "trackpadFingerDownCount") >= 1)
  {
    -[_UIEventSessionTouchAction setNumFingers:](v4, "setNumFingers:", [v3 trackpadFingerDownCount]);
  }

  else
  {
    v18 = [v3 touchStatus];
    -[_UIEventSessionTouchAction setNumFingers:](v4, "setNumFingers:", [v18 count]);
  }

  [(_UIEventSessionTouchAction *)v4 setWindowSection:v13];
  -[_UIEventSessionAction setSource:](v4, "setSource:", +[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", [v3 touchType]));

  return v4;
}

- (id)checkifGestureComplete:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 touchStatus];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v4 touchStatus];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 upDownState];

        if (v13 != 2)
        {

          v14 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(UIEventSessionTouchEventAnalyzer *)self completeGesture:v4];
LABEL_11:

  return v14;
}

- (int64_t)determineWindowSectionWithLocationInWindow:(CGPoint)a3 withWindowBounds:(CGRect)a4
{
  height = a4.size.height;
  y = a3.y;
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
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

- (id)didTouchWithID:(id)a3 withPhase:(int64_t)a4 withType:(int64_t)a5 withLocationInWindow:(CGPoint)a6 withWindowBounds:(CGRect)a7 withTrackpadFingerDownCount:(int64_t)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a6.y;
  v14 = a6.x;
  v85 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a4 != 1)
  {
    if (!a4)
    {
      v20 = [_MergedGlobals_1180 objectForKeyedSubscript:v18];

      if (!v20)
      {
        if (qword_1ED49F1D0 && [qword_1ED49F1D0 touchType] != a5 && objc_msgSend(qword_1ED49F1D0, "trackpadFingerDownCount") != a8)
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
            v22 = [qword_1ED49F1D0 touchStatus];
            v23 = [v22 countByEnumeratingWithState:&v78 objects:v84 count:16];
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
                    objc_enumerationMutation(v22);
                  }

                  [_MergedGlobals_1180 removeObjectForKey:*(*(&v78 + 1) + 8 * i)];
                }

                v24 = [v22 countByEnumeratingWithState:&v78 objects:v84 count:16];
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
          v61 = [[UIEventSessionTouchEvent alloc] initWithTouchType:a5 withTrackpadFingerDownCount:a8];
          v62 = qword_1ED49F1D0;
          qword_1ED49F1D0 = v61;

          v60 = qword_1ED49F1D0;
        }

        v63 = [v60 touchStatus];
        [v63 setObject:v59 forKeyedSubscript:v18];

        [_MergedGlobals_1180 setObject:qword_1ED49F1D0 forKeyedSubscript:v18];
      }

      goto LABEL_60;
    }

    if ((a4 - 3) > 1)
    {
      goto LABEL_60;
    }

    v35 = [_MergedGlobals_1180 objectForKeyedSubscript:v18];
    if (!v35)
    {
      goto LABEL_60;
    }

    v36 = v35;
    v37 = [v35 touchStatus];
    v38 = [v37 objectForKeyedSubscript:v18];

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
    if ([qword_1ED49F1D0 containsTouchID:v18])
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
        v46 = [qword_1ED49F1D0 touchStatus];
        v47 = [v46 countByEnumeratingWithState:&v74 objects:v83 count:16];
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
                objc_enumerationMutation(v46);
              }

              [_MergedGlobals_1180 removeObjectForKey:*(*(&v74 + 1) + 8 * j)];
            }

            v48 = [v46 countByEnumeratingWithState:&v74 objects:v83 count:16];
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
        if ([v45 containsTouchID:v18])
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
      v54 = [v45 touchStatus];
      v55 = [v54 countByEnumeratingWithState:&v70 objects:v82 count:16];
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
              objc_enumerationMutation(v54);
            }

            [_MergedGlobals_1180 removeObjectForKey:*(*(&v70 + 1) + 8 * k)];
          }

          v56 = [v54 countByEnumeratingWithState:&v70 objects:v82 count:16];
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

  v27 = [_MergedGlobals_1180 objectForKeyedSubscript:v18];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 touchStatus];
    v30 = [v29 objectForKeyedSubscript:v18];

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

- (id)didPointerHoverWithTrackpadFingerDownCount:(int64_t)a3 withLocationInWindow:(CGPoint)a4 withWindowBounds:(CGRect)a5
{
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (qword_1ED49F1E0 == 2)
  {
    if (!a3)
    {
      qword_1ED49F1E0 = 0;
      qword_1ED49F1E8 = 0;
    }
  }

  else if (qword_1ED49F1E0 == 1)
  {
    if (a3)
    {
      v7 = qword_1ED49F1E8;
      if (qword_1ED49F1E8 <= a3)
      {
        v7 = a3;
      }

      qword_1ED49F1E8 = v7;
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

  else if (a3 >= 1)
  {
    qword_1ED49F1E0 = 1;
    qword_1ED49F1E8 = a3;
  }

  return v6;
}

- (id)didPointerClickWithTrackpadFingerDownCount:(int64_t)a3 withLocationInWindow:(CGPoint)a4 withWindowBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.y;
  v10 = a4.x;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v14 = objc_alloc_init(_UIEventSessionTouchAction);
  [(_UIEventSessionAction *)v14 setSource:4];
  [(_UIEventSessionTouchAction *)v14 setNumFingers:a3];
  [(_UIEventSessionTouchAction *)v14 setWindowSection:[(UIEventSessionTouchEventAnalyzer *)self determineWindowSectionWithLocationInWindow:v10 withWindowBounds:v9, x, y, width, height]];
  [v13 addObject:v14];
  if (qword_1ED49F1E0 == 1)
  {
    qword_1ED49F1E0 = 2;
  }

  return v13;
}

@end