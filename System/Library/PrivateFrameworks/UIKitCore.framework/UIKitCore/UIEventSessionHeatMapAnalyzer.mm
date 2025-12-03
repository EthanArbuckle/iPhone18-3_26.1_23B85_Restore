@interface UIEventSessionHeatMapAnalyzer
+ ($5E4061BE7C3C8BB942C4587960135C41)determineGridCoordinateWithLocationInWindow:(SEL)window withWindowFrame:(CGPoint)frame;
+ (id)stringForHardwareAttachedType:(int64_t)type;
+ (id)stringForTouchPhase:(int64_t)phase;
+ (id)stringForTouchType:(int64_t)type;
- (BOOL)checkIfGestureComplete:(id)complete;
- (UIEventSessionHeatMapAnalyzer)init;
- (void)completeGesture:(id)gesture;
- (void)didTouchWithID:(id)d withPhase:(int64_t)phase withType:(int64_t)type withLocationInWindow:(CGPoint)window withWindowFrame:(CGRect)frame withUIInterfaceOrientation:(int64_t)orientation withHardwareKeyboardState:(int64_t)state withMagicKeyboardState:(int64_t)self0;
- (void)sendAnalyticsEventWithName:(id)name payload:(id)payload;
- (void)sendCoordinateReportForTouch:(id)touch atCoordinate:(id *)coordinate withGesture:(id)gesture;
- (void)sendFingerReportsForGesture:(id)gesture;
- (void)sendGestureReportsForGesture:(id)gesture;
@end

@implementation UIEventSessionHeatMapAnalyzer

- (UIEventSessionHeatMapAnalyzer)init
{
  v9.receiver = self;
  v9.super_class = UIEventSessionHeatMapAnalyzer;
  v2 = [(UIEventSessionHeatMapAnalyzer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    gesturesByTouchID = v2->_gesturesByTouchID;
    v2->_gesturesByTouchID = v3;

    currentGesture = v2->_currentGesture;
    v2->_currentGesture = 0;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingGestures = v2->_pendingGestures;
    v2->_pendingGestures = v6;
  }

  return v2;
}

+ (id)stringForTouchType:(int64_t)type
{
  if (type > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7107F30[type];
  }
}

+ (id)stringForTouchPhase:(int64_t)phase
{
  if (phase > 7)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = stringForTouchPhase__touchPhases[phase];
  }

  return v4;
}

+ (id)stringForHardwareAttachedType:(int64_t)type
{
  if (type > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7107F50[type];
  }
}

+ ($5E4061BE7C3C8BB942C4587960135C41)determineGridCoordinateWithLocationInWindow:(SEL)window withWindowFrame:(CGPoint)frame
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v33 = frame.y;
  v34 = frame.x;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  if (CGRectGetWidth(v36) > 0.0 && (v37.origin.x = v12, v37.origin.y = v14, v37.size.width = v16, v37.size.height = v18, CGRectGetHeight(v37) > 0.0) && (v38.origin.x = x, v38.origin.y = y, v38.size.width = width, v38.size.height = height, CGRectGetWidth(v38) > 0.0) && (v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, CGRectGetHeight(v39) > 0.0) && v34 >= 0.0 && v34 <= width && v33 >= 0.0 && v33 <= height && (v40.origin.x = x, v40.origin.y = y, v40.size.width = width, v40.size.height = height, v20 = v34 + CGRectGetMinX(v40), v41.origin.x = x, v41.origin.y = y, v41.size.width = width, v41.size.height = height, v21 = v20, v22 = v33 + CGRectGetMinY(v41), v42.origin.x = v12, v42.origin.y = v14, v42.size.width = v16, v42.size.height = v18, v35.x = v21, v35.y = v22, result = CGRectContainsPoint(v42, v35), (result & 1) != 0))
  {
    v43.origin.x = v12;
    v43.origin.y = v14;
    v43.size.width = v16;
    v43.size.height = v18;
    v23 = v21 - CGRectGetMinX(v43);
    v44.origin.x = v12;
    v44.origin.y = v14;
    v44.size.width = v16;
    v44.size.height = v18;
    v24 = v23 / CGRectGetWidth(v44);
    v45.origin.x = v12;
    v45.origin.y = v14;
    v45.size.width = v16;
    v45.size.height = v18;
    v25 = v22 - CGRectGetMinY(v45);
    v46.origin.x = v12;
    v46.origin.y = v14;
    v46.size.width = v16;
    v46.size.height = v18;
    v26 = v25 / CGRectGetHeight(v46);
    if (v24 <= 1.0)
    {
      v27 = v24;
    }

    else
    {
      v27 = 1.0;
    }

    v28 = fmax(v27, 0.0);
    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    v29 = vcvtmd_s64_f64(v28 * 15.0);
    v30 = vcvtmd_s64_f64(fmax(v26, 0.0) * 15.0);
    if (v29 >= 14)
    {
      v29 = 14;
    }

    if (v30 >= 14)
    {
      v30 = 14;
    }

    if (v29 > 0xE || v30 >= 0xF)
    {
      v32 = 0;
      retstr->var0 = -1;
      retstr->var1 = -1;
    }

    else
    {
      retstr->var0 = v30;
      retstr->var1 = v29;
      v32 = 1;
    }

    retstr->var2 = v32;
  }

  else
  {
    retstr->var0 = -1;
    retstr->var1 = -1;
    retstr->var2 = 0;
  }

  return result;
}

- (void)sendAnalyticsEventWithName:(id)name payload:(id)payload
{
  payloadCopy = payload;
  v6 = payloadCopy;
  if (name && payloadCopy)
  {
    v7 = payloadCopy;
    AnalyticsSendEventLazy();
  }
}

- (void)sendCoordinateReportForTouch:(id)touch atCoordinate:(id *)coordinate withGesture:(id)gesture
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (gesture)
  {
    if (coordinate->var2)
    {
      gestureCopy = gesture;
      v8 = +[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", [gestureCopy touchType]);
      v18[0] = @"inputSource";
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v19[0] = v9;
      v18[1] = @"hardwareKeyboardAttachmentState";
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(gestureCopy, "hardwareKeyboardState")}];
      v19[1] = v10;
      v18[2] = @"magicKeyboardAttachmentState";
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(gestureCopy, "magicKeyboardState")}];
      v19[2] = v11;
      v18[3] = @"uiInterfaceOrientation";
      v12 = MEMORY[0x1E696AD98];
      uiInterfaceOrientation = [gestureCopy uiInterfaceOrientation];

      v14 = [v12 numberWithInteger:uiInterfaceOrientation];
      v19[3] = v14;
      v18[4] = @"xGridCoordinate";
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:coordinate->var1];
      v19[4] = v15;
      v18[5] = @"yGridCoordinate";
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:coordinate->var0];
      v19[5] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

      [(UIEventSessionHeatMapAnalyzer *)self sendAnalyticsEventWithName:@"com.apple.inputAnalytics.eventSessionActionHeatMapCoordinateReport" payload:v17];
    }
  }
}

- (void)sendFingerReportsForGesture:(id)gesture
{
  v30 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  v4 = gestureCopy;
  if (gestureCopy)
  {
    v18 = +[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", [gestureCopy touchType]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v4 touches];
    v20 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v20)
    {
      v17 = *v24;
      do
      {
        v5 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v23 + 1) + 8 * v5);
          touches = [v4 touches];
          v8 = [touches objectForKeyedSubscript:v6];

          v27[0] = @"inputSource";
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
          v28[0] = v22;
          v27[1] = @"hardwareKeyboardAttachmentState";
          v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "hardwareKeyboardState")}];
          v28[1] = v21;
          v27[2] = @"magicKeyboardAttachmentState";
          v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "magicKeyboardState")}];
          v28[2] = v9;
          v27[3] = @"uiInterfaceOrientation";
          v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "uiInterfaceOrientation")}];
          v28[3] = v10;
          v27[4] = @"touchDownDuration";
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "touchDownDurationMS")}];
          v28[4] = v11;
          v27[5] = @"touchDownDurationRaw";
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "touchDownDurationMS")}];
          v28[5] = v12;
          v27[6] = @"dragDistance";
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "dragDistanceForAnalytics")}];
          v28[6] = v13;
          v27[7] = @"dragDistanceRaw";
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "dragDistanceForAnalytics")}];
          v28[7] = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];

          [(UIEventSessionHeatMapAnalyzer *)self sendAnalyticsEventWithName:@"com.apple.inputAnalytics.eventSessionActionHeatMapFingerReport" payload:v15];
          ++v5;
        }

        while (v20 != v5);
        v20 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v20);
    }
  }
}

- (void)sendGestureReportsForGesture:(id)gesture
{
  v33 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  v5 = gestureCopy;
  if (gestureCopy)
  {
    v6 = +[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction, "getUIEventSourceForUITouchType:", [gestureCopy touchType]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    touches = [v5 touches];
    v8 = [touches countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      v11 = 2;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(touches);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        touches2 = [v5 touches];
        v15 = [touches2 objectForKeyedSubscript:v13];

        tapDragState = [v15 tapDragState];
        if (tapDragState == 2)
        {
          break;
        }

        if (v9 == ++v12)
        {
          v9 = [touches countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = 1;
    }

    v30[0] = @"inputSource";
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v31[0] = v17;
    v30[1] = @"hardwareKeyboardAttachmentState";
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "hardwareKeyboardState")}];
    v31[1] = v18;
    v30[2] = @"magicKeyboardAttachmentState";
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "magicKeyboardState")}];
    v31[2] = v19;
    v30[3] = @"uiInterfaceOrientation";
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "uiInterfaceOrientation")}];
    v31[3] = v20;
    v30[4] = @"gestureType";
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v31[4] = v21;
    v30[5] = @"fingerCount";
    v22 = MEMORY[0x1E696AD98];
    touches3 = [v5 touches];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(touches3, "count")}];
    v31[5] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];

    [(UIEventSessionHeatMapAnalyzer *)self sendAnalyticsEventWithName:@"com.apple.inputAnalytics.eventSessionActionHeatMapGestureReport" payload:v25];
  }
}

- (void)completeGesture:(id)gesture
{
  if (gesture)
  {
    gestureCopy = gesture;
    [(UIEventSessionHeatMapAnalyzer *)self sendFingerReportsForGesture:gestureCopy];
    [(UIEventSessionHeatMapAnalyzer *)self sendGestureReportsForGesture:gestureCopy];
  }
}

- (BOOL)checkIfGestureComplete:(id)complete
{
  v22 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v5 = completeCopy;
  if (completeCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    touches = [completeCopy touches];
    v7 = [touches countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(touches);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          touches2 = [v5 touches];
          v13 = [touches2 objectForKeyedSubscript:v11];

          if (v13)
          {
            upDownState = [v13 upDownState];

            if (upDownState == 2)
            {
              continue;
            }
          }

          goto LABEL_13;
        }

        v8 = [touches countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(UIEventSessionHeatMapAnalyzer *)self completeGesture:v5];
    v15 = 1;
  }

  else
  {
LABEL_13:
    v15 = 0;
  }

  return v15;
}

- (void)didTouchWithID:(id)d withPhase:(int64_t)phase withType:(int64_t)type withLocationInWindow:(CGPoint)window withWindowFrame:(CGRect)frame withUIInterfaceOrientation:(int64_t)orientation withHardwareKeyboardState:(int64_t)state withMagicKeyboardState:(int64_t)self0
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = window.y;
  v16 = window.x;
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!type)
  {
    v18 = 0uLL;
    v19 = 0;
    [UIEventSessionHeatMapAnalyzer determineGridCoordinateWithLocationInWindow:v16 withWindowFrame:v15, x, y, width, height];
  }
}

@end