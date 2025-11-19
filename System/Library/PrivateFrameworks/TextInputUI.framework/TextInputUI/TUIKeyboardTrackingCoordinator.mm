@interface TUIKeyboardTrackingCoordinator
+ (id)trackingCoordinatorForScene:(id)a3;
- (BOOL)shouldUpdateExternalTrackerForWindow:(id)a3;
- (CGPoint)hostedOriginOffset;
- (CGRect)convertSceneCoordinateSpaceFrame:(CGRect)a3 toWindow:(id)a4;
- (CGRect)incomingFrame;
- (CGRect)incomingKeyboardFrame;
- (CGRect)intersectionOfSceneRect:(CGRect)a3 withWindow:(id)a4;
- (CGRect)knownIAVBounds;
- (CGRect)lastKnownFrame;
- (CGRect)lastKnownKeyboardFrame;
- (CGRect)lastPostedEndNotificationFrame;
- (CGRect)notificationBeginFrame;
- (CGSize)_filteredStartingSizeDiff:(CGSize)a3 sizeUpdate:(CGSize)a4;
- (CGSize)_lastKnownSizeForWindow:(id)a3;
- (CGSize)_updatedSizeFromSize:(CGSize)a3 diff:(CGSize)a4 forWindow:(id)a5;
- (CGSize)startingSizeForInteraction;
- (TUIKeyboardTrackingCoordinator)initWithWindowScene:(id)a3;
- (UIOffset)_lastKnownOffsetForWindow:(id)a3;
- (UIOffset)_updatedOffsetFromOffset:(UIOffset)a3 diff:(UIOffset)a4 forWindow:(id)a5;
- (UIOffset)startingOffsetForInteraction;
- (id)description;
- (id)privateUserInfoForUserInfo:(id)a3 animationInfo:(id)a4 stateInfo:(id)a5;
- (id)userInfoForBeginFrame:(CGRect)a3 endFrame:(CGRect)a4 animationInfo:(id)a5;
- (int64_t)notificationTypeFromState:(id)a3 previousState:(id)a4;
- (void)_postNotificationsWithAnimationInfo:(id)a3 type:(int64_t)a4 start:(BOOL)a5;
- (void)_updateIAVBounds:(CGRect)a3 forWindow:(id)a4;
- (void)_updateOffset:(UIOffset)a3 forWindow:(id)a4;
- (void)_updateSize:(CGSize)a3 forWindow:(id)a4;
- (void)addTracker:(id)a3;
- (void)addTrackingWindow:(id)a3;
- (void)dealloc;
- (void)interactiveOffsetUpdate:(UIOffset)a3;
- (void)interactiveSizeUpdate:(CGSize)a3;
- (void)interactiveUpdateChangingOffset:(UIOffset)a3 size:(CGSize)a4;
- (void)moveGuidesOffscreen;
- (void)postEndNotificationOnlyWithEndFrame:(CGRect)a3 state:(id)a4 animationInfo:(id)a5;
- (void)postEndNotificationsFromState:(id)a3 toState:(id)a4;
- (void)postNotificationType:(unint64_t)a3 forStart:(BOOL)a4;
- (void)postNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)postNotificationsOnlyWithEndFrame:(CGRect)a3 animationInfo:(id)a4;
- (void)postNotificationsWithInfo:(id)a3 type:(int64_t)a4 start:(BOOL)a5;
- (void)postStartNotificationsFromState:(id)a3 toState:(id)a4;
- (void)removeTracker:(id)a3;
- (void)removeTrackingWindow:(id)a3;
- (void)resetForTesting;
- (void)sendUpdateCompleteWithExistingInfo;
- (void)updateAccessoryViewBounds:(CGRect)a3 forWindow:(id)a4;
- (void)updateClientsForState:(id)a3 finalFrame:(CGRect)a4 animationInfo:(id)a5 forStart:(BOOL)a6;
- (void)updateGuideInWindow:(id)a3 withSceneFrame:(CGRect)a4 accessoryBounds:(CGRect)a5 state:(id)a6 updatedInfo:(id)a7;
- (void)updateKeyboardTrackingState:(id)a3;
- (void)updateNotificationsOnly:(id)a3;
- (void)updateTEWHostingOrigin:(CGPoint)a3;
- (void)updatedIAVBounds:(CGRect)a3 previousBounds:(CGRect)a4;
@end

@implementation TUIKeyboardTrackingCoordinator

- (CGRect)lastKnownKeyboardFrame
{
  [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
  v4 = v3;
  [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
  if (v4 > 0.0)
  {
    v8 = v4 + v8;
    v6 = v6 - v4;
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)lastKnownFrame
{
  x = self->_lastKnownFrame.origin.x;
  y = self->_lastKnownFrame.origin.y;
  width = self->_lastKnownFrame.size.width;
  height = self->_lastKnownFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)hostedOriginOffset
{
  x = self->_hostedOriginOffset.x;
  y = self->_hostedOriginOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)knownIAVBounds
{
  x = self->_knownIAVBounds.origin.x;
  y = self->_knownIAVBounds.origin.y;
  width = self->_knownIAVBounds.size.width;
  height = self->_knownIAVBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastPostedEndNotificationFrame
{
  x = self->_lastPostedEndNotificationFrame.origin.x;
  y = self->_lastPostedEndNotificationFrame.origin.y;
  width = self->_lastPostedEndNotificationFrame.size.width;
  height = self->_lastPostedEndNotificationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)incomingFrame
{
  x = self->_incomingFrame.origin.x;
  y = self->_incomingFrame.origin.y;
  width = self->_incomingFrame.size.width;
  height = self->_incomingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)notificationBeginFrame
{
  x = self->_notificationBeginFrame.origin.x;
  y = self->_notificationBeginFrame.origin.y;
  width = self->_notificationBeginFrame.size.width;
  height = self->_notificationBeginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIOffset)startingOffsetForInteraction
{
  horizontal = self->_startingOffsetForInteraction.horizontal;
  vertical = self->_startingOffsetForInteraction.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGSize)startingSizeForInteraction
{
  width = self->_startingSizeForInteraction.width;
  height = self->_startingSizeForInteraction.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)resetForTesting
{
  v41 = *MEMORY[0x1E69E9840];
  [(TUIKeyboardTrackingCoordinator *)self setHostedOriginOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(TUIKeyboardTrackingCoordinator *)self setKeyboardState:0];
  [(TUIKeyboardTrackingCoordinator *)self setAnimationInfo:0];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  [(TUIKeyboardTrackingCoordinator *)self setLastKnownFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  [(TUIKeyboardTrackingCoordinator *)self setKnownIAVBounds:v3, v4, v5, v6];
  [(TUIKeyboardTrackingCoordinator *)self setNotificationBeginFrame:v3, v4, v5, v6];
  [(TUIKeyboardTrackingCoordinator *)self setStartingSizeForInteraction:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(TUIKeyboardTrackingCoordinator *)self setStartingOffsetForInteraction:-1.0, -1.0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        __49__TUIKeyboardTrackingCoordinator_resetForTesting__block_invoke(*(*(&v34 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * j);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v18 = [v17 sceneForTracker];
        v19 = [v18 windows];

        v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v27;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v27 != v22)
              {
                objc_enumerationMutation(v19);
              }

              __49__TUIKeyboardTrackingCoordinator_resetForTesting__block_invoke(*(*(&v26 + 1) + 8 * k));
            }

            v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v21);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v24 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
  [v24 removeAllObjects];

  v25 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
  [v25 removeAllObjects];

  [(TUIKeyboardTrackingCoordinator *)self setTrackingWindows:0];
  [(TUIKeyboardTrackingCoordinator *)self setTrackingElements:0];
}

void __49__TUIKeyboardTrackingCoordinator_resetForTesting__block_invoke(void *a1)
{
  object = a1;
  objc_setAssociatedObject(object, &_TUIIAVBoundsKey, 0, 1);
  objc_setAssociatedObject(object, &_TUIOverlapSizeKey, 0, 1);
  objc_setAssociatedObject(object, &_TUIOverlapOffsetKey, 0, 1);
}

- (id)privateUserInfoForUserInfo:(id)a3 animationInfo:(id)a4 stateInfo:(id)a5
{
  v7 = a4;
  v8 = [a3 mutableCopy];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v7 isRotating];

  v11 = [v9 numberWithBool:v10];
  [v8 setObject:v11 forKey:*MEMORY[0x1E69DDFE0]];

  [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
  v29.origin.x = v20;
  v29.origin.y = v21;
  v29.size.width = v22;
  v29.size.height = v23;
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  v28 = CGRectUnion(v27, v29);
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v28)];
  [v8 setObject:v24 forKey:*MEMORY[0x1E69DDF90]];

  return v8;
}

- (id)userInfoForBeginFrame:(CGRect)a3 endFrame:(CGRect)a4 animationInfo:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v14 = MEMORY[0x1E695DF90];
  v15 = a5;
  v16 = [v14 dictionaryWithCapacity:8];
  v17 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
  v18 = [v17 effectiveGeometry];
  v19 = [v18 coordinateSpace];
  v20 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
  v21 = [v20 screen];
  v22 = [v21 coordinateSpace];
  [v19 convertRect:v22 toCoordinateSpace:{v12, v11, v10, v9}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
  v32 = [v31 effectiveGeometry];
  v33 = [v32 coordinateSpace];
  v34 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
  v35 = [v34 screen];
  v36 = [v35 coordinateSpace];
  [v33 convertRect:v36 toCoordinateSpace:{x, y, width, height}];
  v38 = v37;
  v65 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v26, v28, v30}];
  [v16 setObject:v45 forKey:*MEMORY[0x1E69DDF98]];

  v46 = v38;
  v47 = v40;
  v48 = [MEMORY[0x1E696B098] valueWithCGRect:{v46, v40, v42, v44}];
  [v16 setObject:v48 forKey:*MEMORY[0x1E69DDFA0]];

  v49 = MEMORY[0x1E696AD98];
  [v15 duration];
  v50 = [v49 numberWithDouble:?];
  [v16 setObject:v50 forKey:*MEMORY[0x1E69DDF40]];

  v51 = [v15 options];
  v52 = [MEMORY[0x1E696AD98] numberWithInteger:(v51 >> 16) & 0xF];
  [v16 setObject:v52 forKey:*MEMORY[0x1E69DDF38]];

  v53 = MEMORY[0x1E696AD98];
  v54 = [v15 isLocalKeyboard];

  v55 = [v53 numberWithBool:v54];
  [v16 setObject:v55 forKey:*MEMORY[0x1E69DDFC8]];

  v56 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v42, v44}];
  [v16 setObject:v56 forKey:*MEMORY[0x1E69DDF48]];

  v57 = MEMORY[0x1E696B098];
  v67.origin.x = v24;
  v67.origin.y = v26;
  v67.size.width = v28;
  v58 = v30;
  v67.size.height = v30;
  MidX = CGRectGetMidX(v67);
  v68.origin.x = v24;
  v68.origin.y = v26;
  v68.size.width = v28;
  v68.size.height = v58;
  v60 = [v57 valueWithCGPoint:{MidX, CGRectGetMidY(v68)}];
  [v16 setObject:v60 forKey:*MEMORY[0x1E69DDF50]];

  v61 = MEMORY[0x1E696B098];
  v69.origin.x = v65;
  v69.origin.y = v47;
  v69.size.width = v42;
  v69.size.height = v44;
  v62 = CGRectGetMidX(v69);
  v70.origin.x = v65;
  v70.origin.y = v47;
  v70.size.width = v42;
  v70.size.height = v44;
  v63 = [v61 valueWithCGPoint:{v62, CGRectGetMidY(v70)}];
  [v16 setObject:v63 forKey:*MEMORY[0x1E69DDF58]];

  return v16;
}

- (int64_t)notificationTypeFromState:(id)a3 previousState:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_35;
  }

  v9 = [v6 showsInputViews];
  v10 = [v5 showsInputViews];
  v11 = v10;
  v12 = 0;
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    v13 = [v7 showsInputOrAssistantViews];
    v12 = v13 ^ [v5 showsInputOrAssistantViews] ^ 1;
  }

  if ([v5 isDocked])
  {
    v8 = 0;
    if (v12)
    {
      goto LABEL_35;
    }
  }

  else if ([v5 hasFloatingAssistantView])
  {
    v8 = 2;
    if (v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ([v7 isDocked])
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    if (v12)
    {
      goto LABEL_35;
    }
  }

  if ([v7 isRotating])
  {
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else if (!(v11 & 1 | (([v5 isRotating] & 1) == 0)))
  {
    goto LABEL_33;
  }

  if (((v9 | v11 ^ 1) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((v9 ^ 1 | v11) & 1) == 0)
  {
LABEL_33:
    v8 = 3;
    goto LABEL_35;
  }

  if (((v9 ^ 1 | v11 ^ 1) & 1) == 0)
  {
    if ([v7 hasInputView] && objc_msgSend(v5, "isOffscreen") && (objc_msgSend(v5, "hasAccessoryView") & 1) != 0 || objc_msgSend(v7, "isInteractive") && (objc_msgSend(v5, "isOffscreen") & 1) != 0)
    {
      goto LABEL_33;
    }

LABEL_34:
    v8 = 2;
    goto LABEL_35;
  }

  if ([v5 isOffscreen] && !objc_msgSend(v7, "isOffscreen"))
  {
    goto LABEL_33;
  }

  v14 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_18FFDC000, v14, OS_LOG_TYPE_DEBUG, "[Notifications] Transition from %@ to %@ will send only frame change", &v16, 0x16u);
  }

  v8 = 1;
LABEL_35:

  return v8;
}

- (void)_postNotificationsWithAnimationInfo:(id)a3 type:(int64_t)a4 start:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (a4 && v10 != 6)
  {
    v11 = [v8 notificationInfo];
    v12 = v11;
    if (!v11 || ![v11 count])
    {
      v15 = _TUIKeyboardTrackingLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = @"did";
        if (v5)
        {
          v20 = @"will";
        }

        *v37 = 138412290;
        *&v37[4] = v20;
        _os_log_error_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_ERROR, "[Notifications]: Attempting to post %@ notification with nil userInfo", v37, 0xCu);
      }

      goto LABEL_54;
    }

    v13 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v14 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
    v15 = [(TUIKeyboardTrackingCoordinator *)self privateUserInfoForUserInfo:v12 animationInfo:v13 stateInfo:v14];

    v16 = keyboardPerfLog();
    v17 = os_signpost_enabled(v16);
    if (v5)
    {
      if (v17)
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.notification.willChangeFrame", "", v37, 2u);
      }

      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE068] userInfo:v12];
      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE018] userInfo:v15];
      v18 = keyboardPerfLog();
      if (os_signpost_enabled(v18))
      {
        *v37 = 0;
        v19 = "keyboard.notification.willChangeFrame";
LABEL_18:
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v19, "", v37, 2u);
      }
    }

    else
    {
      if (v17)
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.notification.didChangeFrame", "", v37, 2u);
      }

      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DDF68] userInfo:v12];
      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DDFF0] userInfo:v15];
      v18 = keyboardPerfLog();
      if (os_signpost_enabled(v18))
      {
        *v37 = 0;
        v19 = "keyboard.notification.didChangeFrame";
        goto LABEL_18;
      }
    }

    if (a4 != 3)
    {
      if (a4 == 2)
      {
        v21 = keyboardPerfLog();
        v22 = os_signpost_enabled(v21);
        if (v5)
        {
          if (v22)
          {
            *v37 = 0;
            _os_signpost_emit_with_name_impl(&dword_18FFDC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.notification.willShow", "", v37, 2u);
          }

          [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE080] userInfo:v12];
          [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE028] userInfo:v15];
          v23 = keyboardPerfLog();
          if (!os_signpost_enabled(v23))
          {
            goto LABEL_41;
          }

          *v37 = 0;
          v24 = "keyboard.notification.willShow";
        }

        else
        {
          if (v22)
          {
            *v37 = 0;
            _os_signpost_emit_with_name_impl(&dword_18FFDC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.notification.didShow", "", v37, 2u);
          }

          [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DDF78] userInfo:v12];
          [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE008] userInfo:v15];
          v23 = keyboardPerfLog();
          if (!os_signpost_enabled(v23))
          {
            goto LABEL_41;
          }

          *v37 = 0;
          v24 = "keyboard.notification.didShow";
        }

        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v24, "", v37, 2u);
LABEL_41:

        v29 = _TUIKeyboardTrackingLogger();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_52;
        }

        if (v5)
        {
          v34 = @"will";
        }

        else
        {
          v34 = @"did";
        }

        v31 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
        v32 = [v31 notificationsDebugString];
        *v37 = 138412802;
        *&v37[4] = v34;
        v38 = 2112;
        v39 = v12;
        v40 = 2112;
        v41 = v32;
        v33 = "Posted notification %@Show with %@ %@";
        goto LABEL_60;
      }

      v29 = _TUIKeyboardTrackingLogger();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_52;
      }

      if (v5)
      {
        v30 = @"will";
      }

      else
      {
        v30 = @"did";
      }

      v31 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
      v32 = [v31 notificationsDebugString];
      *v37 = 138412802;
      *&v37[4] = v30;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = v32;
      v33 = "Posted notification %@ChangeFrame with %@ %@";
LABEL_60:
      _os_log_debug_impl(&dword_18FFDC000, v29, OS_LOG_TYPE_DEBUG, v33, v37, 0x20u);

LABEL_52:
      if (!v5)
      {
        v35 = [v12 objectForKey:*MEMORY[0x1E69DDFA0]];
        [v35 CGRectValue];
        [(TUIKeyboardTrackingCoordinator *)self setLastPostedEndNotificationFrame:?];
      }

LABEL_54:

      goto LABEL_55;
    }

    v25 = keyboardPerfLog();
    v26 = os_signpost_enabled(v25);
    if (v5)
    {
      if (v26)
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.notification.willHide", "", v37, 2u);
      }

      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE078] userInfo:v12];
      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DE020] userInfo:v15];
      v27 = keyboardPerfLog();
      if (!os_signpost_enabled(v27))
      {
        goto LABEL_51;
      }

      *v37 = 0;
      v28 = "keyboard.notification.willHide";
    }

    else
    {
      if (v26)
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.notification.didHide", "", v37, 2u);
      }

      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DDF70] userInfo:v12];
      [(TUIKeyboardTrackingCoordinator *)self postNotificationWithName:*MEMORY[0x1E69DDFF8] userInfo:v15];
      v27 = keyboardPerfLog();
      if (!os_signpost_enabled(v27))
      {
        goto LABEL_51;
      }

      *v37 = 0;
      v28 = "keyboard.notification.didHide";
    }

    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v28, "", v37, 2u);
LABEL_51:

    v29 = _TUIKeyboardTrackingLogger();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    if (v5)
    {
      v36 = @"will";
    }

    else
    {
      v36 = @"did";
    }

    v31 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v32 = [v31 notificationsDebugString];
    *v37 = 138412802;
    *&v37[4] = v36;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v32;
    v33 = "Posted notification %@Hide with %@ %@";
    goto LABEL_60;
  }

LABEL_55:
}

- (void)postNotificationsWithInfo:(id)a3 type:(int64_t)a4 start:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[TUIKeyboardAnimationInfo defaultInfo];
  [v9 setNotificationInfo:v8];

  [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v9 type:a4 start:v5];
}

- (void)postNotificationWithName:(id)a3 userInfo:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
  v9 = [v8 screen];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
    v12 = [v11 windowScene];
    v10 = [v12 screen];

    if (!v10)
    {
      v13 = _TUIKeyboardTrackingLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
        v16 = 138412290;
        v17 = v15;
        _os_log_error_impl(&dword_18FFDC000, v13, OS_LOG_TYPE_ERROR, "[Notifications]: Screen not found for %@", &v16, 0xCu);
      }

      v10 = 0;
    }
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:v7 object:v10 userInfo:v6];
}

- (void)postNotificationType:(unint64_t)a3 forStart:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v7 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    if (v7)
    {
      v8 = v7;
      v9 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
      v10 = [v9 notificationInfo];

      if (v10)
      {
        v11 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
        [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v11 type:a3 start:v4];
      }
    }
  }
}

- (void)postEndNotificationsFromState:(id)a3 toState:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
  if (v7)
  {
    v8 = v7;
    v9 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v10 = [v9 notificationInfo];

    if (v10)
    {
      v11 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v6 previousState:v13];
      if (!v11)
      {
        if ([v13 isRotating])
        {
          v11 = 0;
        }

        else if ([v6 isOffscreen])
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }
      }

      v12 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
      [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v12 type:v11 start:0];
    }
  }
}

- (void)postStartNotificationsFromState:(id)a3 toState:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
  if (v7)
  {
    v8 = v7;
    v9 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v10 = [v9 notificationInfo];

    if (v10)
    {
      v11 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v6 previousState:v13];
      if (!v11)
      {
        if ([v13 isRotating])
        {
          v11 = 0;
        }

        else if ([v6 isOffscreen])
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }
      }

      v12 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
      [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v12 type:v11 start:1];
    }
  }
}

- (void)interactiveUpdateChangingOffset:(UIOffset)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(TUIKeyboardTrackingCoordinator *)self interactiveOffsetUpdate:a3.horizontal, a3.vertical];

  [(TUIKeyboardTrackingCoordinator *)self interactiveSizeUpdate:width, height];
}

- (void)interactiveOffsetUpdate:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v75 = *MEMORY[0x1E69E9840];
  if (a3.vertical != 0.0 || a3.horizontal != 0.0 || ([(TUIKeyboardTrackingCoordinator *)self startingOffsetForInteraction], v6 != 0.0) || ([(TUIKeyboardTrackingCoordinator *)self startingOffsetForInteraction], v7 != 0.0))
  {
    [(TUIKeyboardTrackingCoordinator *)self setIsTransitioning:1];
    [(TUIKeyboardTrackingCoordinator *)self startingOffsetForInteraction];
    v9 = v8;
    if (v8 < 0.0)
    {
      [(TUIKeyboardTrackingCoordinator *)self setStartingOffsetForInteraction:horizontal, vertical];
      v10 = _TUIKeyboardTrackingLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(TUIKeyboardTrackingCoordinator *)self startingOffsetForInteraction];
        v52 = NSStringFromUIOffset(v77);
        v53 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
        *buf = 138412546;
        v72 = v52;
        v73 = 2112;
        v74 = v53;
        _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "Initial offset set to %@ for %@", buf, 0x16u);
      }
    }

    [(TUIKeyboardTrackingCoordinator *)self startingOffsetForInteraction];
    v12 = v11;
    [(TUIKeyboardTrackingCoordinator *)self startingOffsetForInteraction];
    v14 = v13;
    v15 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v76.horizontal = horizontal;
      v76.vertical = vertical;
      v51 = NSStringFromUIOffset(v76);
      *buf = 138412290;
      v72 = v51;
      _os_log_debug_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_DEBUG, "Offset update received %@", buf, 0xCu);
    }

    v16 = horizontal - v12;
    v17 = vertical - v14;

    v18 = +[TUIKeyboardAnimationInfo infoForInteractiveTransition];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v19 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
    v20 = [v19 copy];

    obj = v20;
    v21 = [v20 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v21)
    {
      v22 = v21;
      v55 = *v65;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v65 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v64 + 1) + 8 * i);
          if (v9 < 0.0)
          {
            v25 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
            v26 = [TUIKeyboardState interactiveStateForState:v25];

            [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
            [v24 keyboardWillChangeToState:v26 trackingFrame:v18 animationInfo:?];
            [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
            [v24 keyboardDidChangeToState:v26 trackingFrame:?];
          }

          v27 = [v24 sceneForTracker];
          v28 = [v27 _allWindows];
          v29 = [v28 copy];

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v61;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v61 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v60 + 1) + 8 * j);
                if ([(TUIKeyboardTrackingCoordinator *)self shouldUpdateExternalTrackerForWindow:v35])
                {
                  [(TUIKeyboardTrackingCoordinator *)self _updatedOffsetFromOffset:v35 diff:horizontal forWindow:vertical, v16, v17];
                  v37 = v36;
                  v39 = v38;
                  [v24 trackingOffsetWillChange:v35 inWindow:v18 animationInfo:?];
                  [v24 trackingOffsetDidChange:v35 inWindow:v18 animationInfo:{v37, v39}];
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v32);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v22);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
    v41 = [v40 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v57;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v56 + 1) + 8 * k);
          if ([v45 isTrackingKeyboard])
          {
            if (([v45 _isTextEffectsWindow] & 1) == 0)
            {
              [(TUIKeyboardTrackingCoordinator *)self _updatedOffsetFromOffset:v45 diff:horizontal forWindow:vertical, v16, v17];
              v47 = v46;
              v49 = v48;
              v50 = [v45 _primaryKeyboardTrackingGuide];
              [v50 changeOffsetConstants:{v47, v49}];
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v42);
    }
  }
}

- (CGSize)_filteredStartingSizeDiff:(CGSize)a3 sizeUpdate:(CGSize)a4
{
  v4 = a3.width - a4.width;
  if (a3.width == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  if (a3.height == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3.height - a4.height;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)interactiveSizeUpdate:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v79 = *MEMORY[0x1E69E9840];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == a3.width && v6 == height)
  {

    [(TUIKeyboardTrackingCoordinator *)self setStartingSizeForInteraction:a3.width, height];
  }

  else
  {
    [(TUIKeyboardTrackingCoordinator *)self setIsTransitioning:1, *MEMORY[0x1E695F060], v6];
    [(TUIKeyboardTrackingCoordinator *)self startingSizeForInteraction];
    v9 = v8;
    if (v8 <= 0.0)
    {
      [(TUIKeyboardTrackingCoordinator *)self setStartingSizeForInteraction:width, height];
      v10 = _TUIKeyboardTrackingLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(TUIKeyboardTrackingCoordinator *)self startingSizeForInteraction];
        v55 = NSStringFromCGSize(v82);
        v56 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
        *buf = 138412546;
        v76 = v55;
        v77 = 2112;
        v78 = v56;
        _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "Initial size set to %@ for %@", buf, 0x16u);
      }

      [(TUIKeyboardTrackingCoordinator *)self setLastPostedEndNotificationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    [(TUIKeyboardTrackingCoordinator *)self startingSizeForInteraction];
    [TUIKeyboardTrackingCoordinator _filteredStartingSizeDiff:"_filteredStartingSizeDiff:sizeUpdate:" sizeUpdate:?];
    v12 = v11;
    v14 = v13;
    v15 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v81.width = width;
      v81.height = height;
      v53 = NSStringFromCGSize(v81);
      [(TUIKeyboardTrackingCoordinator *)self startingSizeForInteraction];
      *buf = 138412546;
      v76 = v53;
      v77 = 2048;
      v78 = v54;
      _os_log_debug_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_DEBUG, "Size update received %@ [%0.2f]", buf, 0x16u);
    }

    v16 = +[TUIKeyboardAnimationInfo infoForInteractiveTransition];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v17 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
    v18 = [v17 copy];

    obj = v18;
    v19 = [v18 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v19)
    {
      v20 = v19;
      v58 = *v69;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v69 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v68 + 1) + 8 * i);
          if (v9 <= 0.0)
          {
            v23 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
            v24 = [TUIKeyboardState interactiveStateForState:v23];

            [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
            [v22 keyboardWillChangeToState:v24 trackingFrame:v16 animationInfo:?];
            [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
            [v22 keyboardDidChangeToState:v24 trackingFrame:?];
          }

          v25 = [v22 sceneForTracker];
          v26 = [v25 _allWindows];
          v27 = [v26 copy];

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v64 objects:v73 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v65;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v65 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v64 + 1) + 8 * j);
                if ([(TUIKeyboardTrackingCoordinator *)self shouldUpdateExternalTrackerForWindow:v33])
                {
                  [(TUIKeyboardTrackingCoordinator *)self _updatedSizeFromSize:v33 diff:width forWindow:height, v12, v14];
                  v35 = v34;
                  v37 = v36;
                  [v22 trackingSizeWillChange:v33 inWindow:v16 animationInfo:?];
                  [v22 trackingSizeDidChange:v33 inWindow:v16 animationInfo:{v35, v37}];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v64 objects:v73 count:16];
            }

            while (v30);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v20);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
    v39 = [v38 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v61;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v61 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v60 + 1) + 8 * k);
          if ([v43 _isTextEffectsWindow])
          {
            [(TUIKeyboardTrackingCoordinator *)self _updatedSizeFromSize:v43 diff:width forWindow:height, v12, v14];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __56__TUIKeyboardTrackingCoordinator_interactiveSizeUpdate___block_invoke;
            v59[3] = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
            v59[4] = v44;
            v59[5] = v45;
            [MEMORY[0x1E69DCC08] performOnControllers:v59];
          }

          if ([v43 isTrackingKeyboard])
          {
            v46 = [v43 _primaryKeyboardTrackingGuide];
            v47 = 0.0;
            if ([v46 usesBottomSafeArea])
            {
              [v43 safeAreaInsets];
              v47 = v48;
            }

            [(TUIKeyboardTrackingCoordinator *)self _updatedSizeFromSize:v43 diff:width forWindow:height, v12, v14];
            v51 = v50;
            if (v49 >= v47)
            {
              v47 = v49;
            }

            v52 = [v43 _primaryKeyboardTrackingGuide];
            [v52 changeSizingConstants:{v51, v47}];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v40);
    }
  }
}

- (UIOffset)_updatedOffsetFromOffset:(UIOffset)a3 diff:(UIOffset)a4 forWindow:(id)a5
{
  vertical = a4.vertical;
  horizontal = a4.horizontal;
  [(TUIKeyboardTrackingCoordinator *)self _lastKnownOffsetForWindow:a5, a3.horizontal, a3.vertical];
  v8 = horizontal + v7;
  v10 = vertical + v9;
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  result.vertical = v10;
  result.horizontal = v8;
  return result;
}

- (CGSize)_updatedSizeFromSize:(CGSize)a3 diff:(CGSize)a4 forWindow:(id)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3.height;
  v9 = a5;
  [(TUIKeyboardTrackingCoordinator *)self _lastKnownSizeForWindow:v9];
  v11 = v10;
  v13 = v12;
  if ((v12 == 0.0 || ([(TUIKeyboardTrackingCoordinator *)self lastKnownFrame], v13 >= v14)) && height > 0.0)
  {
    [(TUIKeyboardTrackingCoordinator *)self incomingFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if (([v9 _isTextEffectsWindow] & 1) == 0)
    {
      [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
      v18 = v18 - v23;
      [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
      v22 = v22 + v24;
    }

    [(TUIKeyboardTrackingCoordinator *)self intersectionOfSceneRect:v9 withWindow:v16, height + v18, v20, v22];
    if (v26 <= v7)
    {
      v27 = v26;
    }

    else
    {
      v27 = v7;
    }
  }

  else
  {
    v25 = v11 - width;
    v27 = v13 - height;
  }

  if (v25 >= 0.0)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0.0;
  }

  if (v27 >= 0.0)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v28;
  v31 = v29;
  result.height = v31;
  result.width = v30;
  return result;
}

- (UIOffset)_lastKnownOffsetForWindow:(id)a3
{
  v3 = objc_getAssociatedObject(a3, &_TUIOverlapOffsetKey);
  v4 = v3;
  if (v3)
  {
    [v3 UIOffsetValue];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.vertical = v10;
  result.horizontal = v9;
  return result;
}

- (void)_updateOffset:(UIOffset)a3 forWindow:(id)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v6 = MEMORY[0x1E696B098];
  v7 = a4;
  v8 = [v6 valueWithUIOffset:{horizontal, vertical}];
  objc_setAssociatedObject(v7, &_TUIOverlapOffsetKey, v8, 1);
}

- (CGSize)_lastKnownSizeForWindow:(id)a3
{
  v3 = objc_getAssociatedObject(a3, &_TUIOverlapSizeKey);
  v4 = v3;
  if (v3)
  {
    [v3 CGSizeValue];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateSize:(CGSize)a3 forWindow:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x1E696B098];
  v7 = a4;
  v8 = [v6 valueWithCGSize:{width, height}];
  objc_setAssociatedObject(v7, &_TUIOverlapSizeKey, v8, 1);
}

- (void)_updateIAVBounds:(CGRect)a3 forWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  object = a4;
  v8 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  v9 = v8;
  if (width == 0.0 && height == 0.0)
  {

    v9 = 0;
  }

  objc_setAssociatedObject(object, &_TUIIAVBoundsKey, v9, 1);
}

- (void)updatedIAVBounds:(CGRect)a3 previousBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v6 = a3.size.height;
  v7 = a3.size.width;
  v109 = a3.origin.x;
  v110 = a3.origin.y;
  v144 = *MEMORY[0x1E69E9840];
  [(TUIKeyboardTrackingCoordinator *)self incomingFrame];
  rect1.origin.x = v9;
  v111 = v10;
  v12 = v11;
  v113 = v13;
  rect = height;
  v14 = v6 - height;
  v15 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v88 = objc_opt_class();
    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = rect;
    v89 = NSStringFromCGRect(v148);
    v149.origin.x = v109;
    v149.origin.y = v110;
    v149.size.width = v7;
    v149.size.height = v6;
    v90 = NSStringFromCGRect(v149);
    *buf = 138413058;
    v137 = v88;
    v138 = 2048;
    v139 = self;
    v140 = 2112;
    v141 = v89;
    v142 = 2112;
    v143 = v90;
    _os_log_debug_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_DEBUG, "Updating tracking clients for IAV bounds change: <%@:%p previousBounds=%@; updatedBounds=%@>", buf, 0x2Au);
  }

  v112 = width;

  v114 = v14;
  if (v14 != 0.0)
  {
    v16 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    if (!v16)
    {
      v16 = +[TUIKeyboardAnimationInfo defaultInfo];
      [v16 setDuration:0.0];
      [v16 setShouldAnimate:0];
    }

    v17 = v6 + v113;
    v18 = -v14;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v19 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
    v20 = [v19 copy];

    *&rect1.origin.y = v20;
    v21 = [v20 countByEnumeratingWithState:&v129 objects:v135 count:16];
    if (v21)
    {
      v22 = v21;
      rect1.size.width = *v130;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v130 != *&rect1.size.width)
          {
            objc_enumerationMutation(*&rect1.origin.y);
          }

          v24 = *(*(&v129 + 1) + 8 * i);
          v25 = [v24 sceneForTracker];
          v26 = [v25 _allWindows];
          v27 = [v26 copy];

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v125 objects:v134 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v126;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v126 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v125 + 1) + 8 * j);
                if ([(TUIKeyboardTrackingCoordinator *)self shouldUpdateExternalTrackerForWindow:v33])
                {
                  [(TUIKeyboardTrackingCoordinator *)self _updatedSizeFromSize:v33 diff:v12 forWindow:v17, 0.0, v18];
                  v35 = v34;
                  v37 = v36;
                  [v24 trackingSizeWillChange:v33 inWindow:v16 animationInfo:?];
                  [v24 trackingSizeDidChange:v33 inWindow:v16 animationInfo:{v35, v37}];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v125 objects:v134 count:16];
            }

            while (v30);
          }
        }

        v22 = [*&rect1.origin.y countByEnumeratingWithState:&v129 objects:v135 count:16];
      }

      while (v22);
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v38 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
    v39 = [v38 countByEnumeratingWithState:&v121 objects:v133 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v122;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v122 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v121 + 1) + 8 * k);
          if ([v43 isTrackingKeyboard] && (objc_msgSend(v43, "_isTextEffectsWindow") & 1) == 0)
          {
            v44 = [v43 _primaryKeyboardTrackingGuide];
            v45 = 0.0;
            if ([v44 usesBottomSafeArea])
            {
              [v43 safeAreaInsets];
              v45 = v46;
            }

            [(TUIKeyboardTrackingCoordinator *)self _updatedSizeFromSize:v43 diff:v12 forWindow:v17, 0.0, v18];
            v49 = v48;
            if (v47 >= v45)
            {
              v45 = v47;
            }

            v50 = [v43 _primaryKeyboardTrackingGuide];
            v51 = [v50 changeSizingConstants:{v49, v45}];

            if (v51)
            {
              [v43 layoutViewsForTrackedGuides];
            }
          }

          if ([v43 _isTextEffectsWindow])
          {
            *&rect1.size.height = MEMORY[0x1E69E9820];
            v116 = 3221225472;
            v117 = __66__TUIKeyboardTrackingCoordinator_updatedIAVBounds_previousBounds___block_invoke;
            v118 = &__block_descriptor_48_e33_v16__0__UIKeyboardSceneDelegate_8l;
            v119 = v12;
            v120 = v6 + v113;
            [MEMORY[0x1E69DCC08] performOnControllers:&rect1.size.height];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v121 objects:v133 count:16];
      }

      while (v40);
    }
  }

  v52 = v6;
  v53 = v7;
  [(TUIKeyboardTrackingCoordinator *)self notificationBeginFrame];
  rect1.origin.y = v55;
  rect1.size.width = v54;
  v57 = v56;
  v59 = v58;
  v145.origin.x = rect1.origin.x;
  v60 = v111;
  v145.origin.y = v111;
  v145.size.width = v12;
  v61 = v113;
  v145.size.height = v113;
  if (CGRectEqualToRect(v145, *MEMORY[0x1E695F058]))
  {
    v62 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
    v63 = [v62 _primaryKeyboardTrackingGuide];
    [v63 layoutFrame];
    rect1.origin.x = v64;
    v60 = v65;
    v12 = v66;
    v61 = v67;
  }

  v68 = v60 == 0.0;
  MaxY = v60;
  v70 = v52;
  if (v68)
  {
    v146.origin.x = v109;
    v146.origin.y = v110;
    v146.size.width = v53;
    v146.size.height = v52;
    MaxY = CGRectGetMaxY(v146);
    v12 = v53;
  }

  v71 = MaxY - v52;
  v72 = v52 + v61;
  v73 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
  [v73 bounds];
  v153.origin.x = v74;
  v153.origin.y = v75;
  v153.size.width = v76;
  v153.size.height = v77;
  v147.origin.x = rect1.origin.x;
  v147.origin.y = v71;
  v147.size.width = v12;
  v147.size.height = v72;
  CGRectIntersection(v147, v153);

  v78 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
  [v78 isOffscreen];

  v79 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
  v80 = [(TUIKeyboardTrackingCoordinator *)self userInfoForBeginFrame:v79 endFrame:rect1.size.width animationInfo:v57, rect1.origin.y, v59, rect1.origin.x, v71, v12, v72];

  v81 = fmax(vabdd_f64(v53, v112), fabs(v114)) > 1.0;
  if (v70 <= 0.0 || v72 <= 0.0 && v12 <= 0.0)
  {
    goto LABEL_62;
  }

  v82 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
  v83 = [v82 notificationInfo];
  if (v83)
  {
    v84 = v83;
    if ([(TUIKeyboardTrackingCoordinator *)self isChangingState])
    {
      v85 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
      if ([v85 isOffscreen])
      {
        v86 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
        v87 = [v86 hasAccessoryView];

        if (v87)
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      }
    }

LABEL_56:
    v91 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      v103 = objc_opt_class();
      v151.origin.x = x;
      v151.origin.y = y;
      v151.size.width = v112;
      v151.size.height = rect;
      v104 = NSStringFromCGRect(v151);
      v152.origin.x = v109;
      v152.origin.y = v110;
      v152.size.width = v53;
      v152.size.height = v70;
      v105 = NSStringFromCGRect(v152);
      *buf = 138413058;
      v137 = v103;
      v138 = 2048;
      v139 = self;
      v140 = 2112;
      v141 = v104;
      v142 = 2112;
      v143 = v105;
      _os_log_debug_impl(&dword_18FFDC000, v91, OS_LOG_TYPE_DEBUG, "[Notifications]: Updating notifications for IAV bounds change: <%@:%p previousBounds=%@; updatedBounds=%@>", buf, 0x2Au);
    }

    v92 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v93 = [v92 notificationInfo];
    v94 = [v93 mutableCopy];

    v95 = [MEMORY[0x1E696B098] valueWithCGRect:{rect1.origin.x, v71, v12, v72}];
    [v94 setObject:v95 forKey:*MEMORY[0x1E69DDFA0]];

    v96 = MEMORY[0x1E696AEC0];
    v97 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v98 = [v97 notificationsDebugString];
    v150.origin.x = v109;
    v150.origin.y = v110;
    v150.size.width = v53;
    v150.size.height = v70;
    v99 = NSStringFromCGRect(v150);
    v100 = [v96 stringWithFormat:@"%@ Update from coordinator for IAV bounds change to %@", v98, v99];;
    [v94 setObject:v100 forKey:@"DebugString"];

    if (v81 && ![(TUIKeyboardTrackingCoordinator *)self isChangingState])
    {
      [v94 setObject:&unk_1F03D91E8 forKey:*MEMORY[0x1E69DDF40]];
    }

    v101 = v94;

    v102 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    [v102 setNotificationInfo:v101];

    v80 = v101;
LABEL_62:
    [(TUIKeyboardTrackingCoordinator *)self setNotificationBeginFrame:rect1.origin.x, v71, v12, v72];
    goto LABEL_63;
  }

LABEL_63:
}

- (void)postNotificationsOnlyWithEndFrame:(CGRect)a3 animationInfo:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = a4;
  v9 = [v31 notificationInfo];
  [(TUIKeyboardTrackingCoordinator *)self lastPostedEndNotificationFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v9 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v18 CGRectValue];
  v34.origin.x = v19;
  v34.origin.y = v20;
  v34.size.width = v21;
  v34.size.height = v22;
  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v15;
  v33.size.height = v17;
  v23 = CGRectEqualToRect(v33, v34);

  if ([v31 isInteractive])
  {
    v24 = 1;
  }

  else
  {
    v25 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
    v26 = [(TUIKeyboardTrackingCoordinator *)self previousKeyboardState];
    if (v26)
    {
      v24 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v25 previousState:v26];
    }

    else
    {
      v27 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
      v24 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v25 previousState:v27];
    }
  }

  [(TUIKeyboardTrackingCoordinator *)self setNotificationBeginFrame:x, y, width, height];
  if (!v23)
  {
    [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v31 type:v24 start:1];
  }

  [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v31 type:v24 start:0];
  v28 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
  if ([v28 isOffscreen])
  {
    v29 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    v30 = [v29 animationType];

    if (v30 == 4)
    {
      [(TUIKeyboardTrackingCoordinator *)self moveGuidesOffscreen];
    }
  }

  else
  {
  }
}

- (void)postEndNotificationOnlyWithEndFrame:(CGRect)a3 state:(id)a4 animationInfo:(id)a5
{
  height = a3.size.height;
  v35 = a4;
  v8 = a5;
  v9 = [v8 notificationInfo];

  if (v9)
  {
    [(TUIKeyboardTrackingCoordinator *)self lastPostedEndNotificationFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v8 notificationInfo];
    v19 = [v18 objectForKey:*MEMORY[0x1E69DDFA0]];
    [v19 CGRectValue];
    v38.origin.x = v20;
    v38.origin.y = v21;
    v38.size.width = v22;
    v38.size.height = v23;
    v37.origin.x = v11;
    v37.origin.y = v13;
    v37.size.width = v15;
    v37.size.height = v17;
    v24 = CGRectEqualToRect(v37, v38);

    if (!v24)
    {
      v25 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v35;
      }

      v27 = [(TUIKeyboardTrackingCoordinator *)self previousKeyboardState];
      if (v27)
      {
        v28 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v26 previousState:v27];
      }

      else
      {
        v29 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
        v28 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v26 previousState:v29];
      }

      if (v28 == 2 && height == 0.0)
      {
        [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
        if (v30 == 0.0)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }
      }

      v31 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
      [(TUIKeyboardTrackingCoordinator *)self _postNotificationsWithAnimationInfo:v31 type:v28 start:0];
    }
  }

  v32 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
  if ([v32 isOffscreen] & 1) != 0 || (objc_msgSend(v35, "isOffscreen"))
  {
    v33 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    if ([v33 animationType] == 4)
    {
    }

    else
    {
      v34 = [v8 animationType];

      if (v34 != 4)
      {
        goto LABEL_22;
      }
    }

    [(TUIKeyboardTrackingCoordinator *)self moveGuidesOffscreen];
  }

  else
  {
  }

LABEL_22:
}

- (void)sendUpdateCompleteWithExistingInfo
{
  v3 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
  v4 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
  v5 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v3 previousState:v4];

  [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
  v23 = [(TUIKeyboardTrackingCoordinator *)self userInfoForBeginFrame:v22 endFrame:v7 animationInfo:v9, v11, v13, v15, v17, v19, v21];

  [(TUIKeyboardTrackingCoordinator *)self postNotificationsWithInfo:v23 type:v5 start:0];
}

- (void)moveGuidesOffscreen
{
  v28 = *MEMORY[0x1E69E9840];
  if (![(TUIKeyboardTrackingCoordinator *)self isTransitioning])
  {
    v3 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
    v4 = [(TUIKeyboardTrackingCoordinator *)self _lastKnownIAVBoundsForWindow:v3];

    v5 = MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 24);
    v7 = v6;
    if (v4)
    {
      [v4 CGRectValue];
      v7 = v8;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
    v10 = [v9 copy];

    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      v14 = *MEMORY[0x1E69DE258];
      v15 = *(MEMORY[0x1E69DE258] + 8);
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          [v17 bounds];
          v19 = v18;
          if ([v17 _isTextEffectsWindow])
          {
            v20 = 0.0;
          }

          else
          {
            v20 = v7;
          }

          v21 = [v17 _primaryKeyboardTrackingGuide];
          [v21 changeSizingConstants:{v19, v20}];

          v22 = [v17 _primaryKeyboardTrackingGuide];
          [v22 changeOffsetConstants:{v14, v15}];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    [(TUIKeyboardTrackingCoordinator *)self setLastKnownFrame:*v5, v5[1], v5[2], v6];
  }
}

- (void)updateClientsForState:(id)a3 finalFrame:(CGRect)a4 animationInfo:(id)a5 forStart:(BOOL)a6
{
  v119 = a6;
  height = a4.size.height;
  y = a4.origin.y;
  rect = a4.size.width;
  x = a4.origin.x;
  v174[5] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v119)
    {
      v12 = @"start";
    }

    else
    {
      v12 = @"end";
    }

    v13 = objc_opt_class();
    v175.origin.x = x;
    v175.origin.y = y;
    v175.size.width = rect;
    v175.size.height = height;
    v14 = NSStringFromCGRect(v175);
    *buf = 138413570;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    v173 = self;
    LOWORD(v174[0]) = 2112;
    *(v174 + 2) = v9;
    WORD1(v174[1]) = 2112;
    *(&v174[1] + 4) = v14;
    WORD2(v174[2]) = 2112;
    *(&v174[2] + 6) = v10;
    _os_log_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_DEFAULT, "Updating tracking clients for %@ <%@:%p state=%@; frame=%@; animation=%@>", buf, 0x3Eu);
  }

  v15 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
  v120 = v15;
  if ([(TUIKeyboardTrackingCoordinator *)v9 isNonKeyboard])
  {
    if (([v15 isNonKeyboard] & 1) == 0 && ((objc_msgSend(v15, "hasInputView") & 1) != 0 || (objc_msgSend(v15, "hasFloatingAssistantView") & 1) != 0 || objc_msgSend(v15, "hasAccessoryView")))
    {
      if (([(TUIKeyboardTrackingCoordinator *)v9 isOffscreen]& 1) != 0)
      {
        goto LABEL_66;
      }

      v83 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
      [v83 safeAreaInsets];
      v85 = v84;

      if (height < v85)
      {
        goto LABEL_66;
      }
    }

    v16 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
    v17 = [v16 screen];
    v18 = [v17 coordinateSpace];
    v19 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
    v20 = [v19 effectiveGeometry];
    v21 = [v20 coordinateSpace];
    [v18 convertRect:v21 toCoordinateSpace:{x, y, rect, height}];
    x = v22;
    y = v23;
    rect = v24;
    height = v25;
  }

  [(TUIKeyboardTrackingCoordinator *)self setKeyboardState:v9];
  [(TUIKeyboardTrackingCoordinator *)self setIncomingFrame:x, y, rect, height];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v173 = &unk_1900D41E9;
  memset(v174, 0, 32);
  [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
  v174[0] = v26;
  v174[1] = v27;
  v174[2] = v28;
  v174[3] = v29;
  v30 = [v10 notificationInfo];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 objectForKey:*MEMORY[0x1E69DDFA0]];
    v33 = v32;
    if (v32)
    {
      [v32 CGRectValue];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v117 = v40;
      v41 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v33 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v166 = 138412290;
      v167 = v9;
      _os_log_debug_impl(&dword_18FFDC000, v33, OS_LOG_TYPE_DEBUG, "State change arrived without notification info for %@", v166, 0xCu);
    }
  }

  v41 = 0;
  v117 = height;
  v37 = y;
  v39 = rect;
  v35 = x;
LABEL_15:

  v42 = [v10 animationType];
  if (v42 == 4)
  {
    if ([(TUIKeyboardTrackingCoordinator *)v9 isOffscreen])
    {
      [(TUIKeyboardTrackingCoordinator *)self setIncomingFrame:x, y + height, rect, height];
    }

    v115 = 1;
    v43 = 8;
  }

  else if (v42 == 3)
  {
    v115 = 1;
    v43 = 2;
  }

  else
  {
    v115 = 0;
    v43 = 4;
  }

  v44 = [(TUIKeyboardTrackingCoordinator *)self localTEW];

  if (v44)
  {
    v45 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
    [v45 hostedViewOrigin];
    [(TUIKeyboardTrackingCoordinator *)self setHostedOriginOffset:?];
  }

  v118 = v31;
  if (![(TUIKeyboardTrackingCoordinator *)v9 hasAccessoryView]|| ([(TUIKeyboardTrackingCoordinator *)self localTEW], v46 = objc_claimAutoreleasedReturnValue(), [(TUIKeyboardTrackingCoordinator *)self _lastKnownIAVBoundsForWindow:v46], v47 = objc_claimAutoreleasedReturnValue(), v46, !v47))
  {
    if (([(TUIKeyboardTrackingCoordinator *)v9 hasAccessoryView]& 1) != 0)
    {
      v116 = 0;
    }

    else
    {
      v70 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
      v71 = MEMORY[0x1E695F058];
      v114 = height;
      v72 = v35;
      v73 = *MEMORY[0x1E695F058];
      v74 = *(MEMORY[0x1E695F058] + 8);
      v75 = v39;
      v76 = *(MEMORY[0x1E695F058] + 16);
      v77 = *(MEMORY[0x1E695F058] + 24);
      [(TUIKeyboardTrackingCoordinator *)self _updateIAVBounds:v70 forWindow:*MEMORY[0x1E695F058], v74, v76, v77];

      v78 = v73;
      height = v114;
      v79 = v74;
      v35 = v72;
      v80 = v77;
      v39 = v75;
      [(TUIKeyboardTrackingCoordinator *)self setKnownIAVBounds:v78, v79, v76, v80];
      v116 = 0;
      v81 = *&buf[8];
      v82 = v71[1];
      *(*&buf[8] + 32) = *v71;
      *(v81 + 48) = v82;
    }

LABEL_42:
    v53 = v119;
    goto LABEL_43;
  }

  [v47 CGRectValue];
  v49 = *&buf[8];
  *(*&buf[8] + 32) = v50;
  *(v49 + 40) = v51;
  *(v49 + 48) = v52;
  *(v49 + 56) = v48;
  v116 = v47;
  if ((v41 & 1) == 0)
  {
    v86 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      v110 = *(*&buf[8] + 56);
      v176.origin.x = v35;
      v176.origin.y = v37;
      v176.size.width = v39;
      v176.size.height = v117;
      v111 = NSStringFromCGRect(v176);
      *v166 = 138412802;
      v167 = self;
      v168 = 2048;
      v169 = v110;
      v170 = 2112;
      v171 = v111;
      _os_log_debug_impl(&dword_18FFDC000, v86, OS_LOG_TYPE_DEBUG, "%@ Adding %0.2f height for IAV to notification endFrame %@", v166, 0x20u);
    }

    v87 = *(*&buf[8] + 56);
    v37 = v37 - v87;
    v117 = v117 + v87;
    goto LABEL_42;
  }

  v53 = v119;
  if (v48 > 0.0 && [(TUIKeyboardTrackingCoordinator *)v9 isNonKeyboard])
  {
    v54 = *MEMORY[0x1E69DDF98];
    v55 = [v31 objectForKey:*MEMORY[0x1E69DDF98]];
    [v55 CGRectValue];
    v57 = v56;
    v59 = v58;
    v112 = v61;
    v113 = v60;

    v62 = *(*&buf[8] + 56);
    v63 = v37 - v62;
    v64 = v117 + v62;
    v65 = [v31 mutableCopy];
    [MEMORY[0x1E696B098] valueWithCGRect:{v57, v59, v113, v112}];
    v67 = v66 = v31;
    [v65 setObject:v67 forKey:v54];

    v68 = [MEMORY[0x1E696B098] valueWithCGRect:{v35, v63, v39, v64}];
    [v65 setObject:v68 forKey:*MEMORY[0x1E69DDFA0]];

    v69 = v65;
    v53 = v119;
    [v10 setNotificationInfo:v69];

    v118 = v69;
  }

LABEL_43:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke;
  aBlock[3] = &unk_1E72D7760;
  v165 = v53;
  v88 = v9;
  v158 = v88;
  v159 = self;
  v161 = x;
  v162 = y;
  v163 = rect;
  v164 = height;
  v160 = buf;
  v89 = _Block_copy(aBlock);
  v148[0] = MEMORY[0x1E69E9820];
  v148[1] = 3221225472;
  v148[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_4;
  v148[3] = &unk_1E72D7788;
  v152 = x;
  v153 = y;
  v154 = rect;
  v155 = height;
  v156 = v43;
  v151 = buf;
  v148[4] = self;
  v90 = v88;
  v149 = v90;
  v91 = v10;
  v150 = v91;
  v92 = _Block_copy(v148);
  if (([(TUIKeyboardTrackingCoordinator *)v90 isNonKeyboard]& 1) != 0)
  {
    v93 = 1;
    if (!v41)
    {
      goto LABEL_51;
    }

LABEL_47:
    if (![v91 isInteractive] || (objc_msgSend(v120, "isEqual:", v90) & 1) == 0)
    {
      [(TUIKeyboardTrackingCoordinator *)self setAnimationInfo:v91];
    }

    goto LABEL_52;
  }

  v94 = [v91 isLocalKeyboard];
  v93 = v94 ^ 1;
  if (v41)
  {
    goto LABEL_47;
  }

  if ((v94 & 1) == 0)
  {
LABEL_51:
    [(TUIKeyboardTrackingCoordinator *)self lastPostedEndNotificationFrame];
    v95 = [TUIKeyboardTrackingCoordinator userInfoForBeginFrame:"userInfoForBeginFrame:endFrame:animationInfo:" endFrame:v91 animationInfo:?];

    v118 = v95;
  }

LABEL_52:
  [(TUIKeyboardTrackingCoordinator *)self setStartingSizeForInteraction:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *&v112];
  [(TUIKeyboardTrackingCoordinator *)self setStartingOffsetForInteraction:-1.0, -1.0];
  [(TUIKeyboardTrackingCoordinator *)self setNotificationBeginFrame:v35, v37, v39, v117];
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_22;
  v144[3] = &unk_1E72D77B0;
  v144[4] = self;
  v96 = v89;
  v145 = v96;
  v97 = v92;
  v146 = v97;
  v147 = v53;
  v98 = _Block_copy(v144);
  v99 = v98;
  if (v53)
  {
    v100 = [(TUIKeyboardTrackingCoordinator *)self notificationTypeFromState:v90 previousState:v120];
    [(TUIKeyboardTrackingCoordinator *)self setIsChangingState:1];
    [(TUIKeyboardTrackingCoordinator *)self setPreviousKeyboardState:v120];
    if (v115 && ([v91 isInteractive] & 1) == 0)
    {
      v101 = MEMORY[0x1E69DD250];
      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 3221225472;
      v142[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_25;
      v142[3] = &unk_1E72D77D8;
      v142[4] = self;
      v143 = v96;
      [v101 performWithoutAnimation:v142];
    }

    v137[0] = MEMORY[0x1E69E9820];
    v137[1] = 3221225472;
    v137[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_2_26;
    v137[3] = &unk_1E72D7800;
    v141 = v93;
    v139 = v99;
    v137[4] = self;
    v102 = v91;
    v138 = v102;
    v140 = v100;
    v103 = _Block_copy(v137);
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_27;
    v128[3] = &unk_1E72D7828;
    v128[4] = self;
    v130 = v97;
    v136 = v93;
    v104 = v102;
    v129 = v104;
    v131 = v100;
    v132 = x;
    v133 = y;
    v134 = rect;
    v135 = height;
    v105 = _Block_copy(v128);
    v106 = [v104 options];
    v107 = 0.0;
    if ([v104 shouldAnimate])
    {
      v15 = v120;
      if (([v104 isRotating] & 1) == 0)
      {
        [v104 duration];
        v107 = v108;
      }
    }

    else
    {
      v15 = v120;
    }

    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      v109 = MEMORY[0x1E69DD250];
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_28;
      v126[3] = &unk_1E72D8500;
      v127 = v103;
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_2_29;
      v124[3] = &unk_1E72D8160;
      v125 = v105;
      [v109 _animateWithDuration:v106 | 2 delay:v126 options:0 animations:v124 start:v107 completion:0.0];
    }

    else
    {
      v103[2](v103);
      v105[2](v105);
    }
  }

  else
  {
    (*(v98 + 2))(v98);
    [(TUIKeyboardTrackingCoordinator *)self setIsTransitioning:0];
    [(TUIKeyboardTrackingCoordinator *)self setIsChangingState:0];
    [(TUIKeyboardTrackingCoordinator *)self setLastKnownFrame:x, y, rect, height];
    v15 = v120;
  }

  _Block_object_dispose(buf, 8);
LABEL_66:
}

void __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTrackingKeyboard] && *(a1 + 88) == 1)
  {
    v4 = [v3 _primaryKeyboardTrackingGuide];
    [v4 setKeyboardTrackingState:*(a1 + 32)];
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_2;
  v17[3] = &unk_1E72D7738;
  v18 = v3;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = v6[4];
  v13 = v6[5];
  v14 = v6[6];
  v15 = v6[7];
  v16 = v3;
  [v5 updateGuideInWindow:v16 withSceneFrame:v7 accessoryBounds:v17 state:v8 updatedInfo:{v9, v10, v11, v12, v13, v14, v15}];
}

void __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *(*(*(a1 + 56) + 8) + 56);
  if (v10 > 0.0)
  {
    v8 = v8 + v10;
    v6 = v6 - v10;
  }

  v71 = v6;
  v72 = v8;
  if (a3 && *(a1 + 96) == 8)
  {
    v7 = v7 + v9;
  }

  v11 = [*(a1 + 32) primaryScene];
  v12 = [v11 effectiveGeometry];
  v13 = [v12 coordinateSpace];
  v14 = [v5 sceneForTracker];
  v15 = [v14 effectiveGeometry];
  v16 = [v15 coordinateSpace];
  [v13 convertRect:v16 toCoordinateSpace:{v7, v71, v9, v72}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if ((a3 & 1) == 0 && [*(a1 + 40) isOffscreen] && v24 > *(*(*(a1 + 56) + 8) + 56))
  {
    v25 = [v5 sceneForTracker];
    v26 = [v25 effectiveGeometry];
    v27 = [v26 coordinateSpace];
    [v27 bounds];
    v20 = v28 - *(*(*(a1 + 56) + 8) + 56);
    v29 = [v5 sceneForTracker];
    v30 = [v29 effectiveGeometry];
    v31 = [v30 coordinateSpace];
    [v31 bounds];
    v22 = v32;
    v24 = *(*(*(a1 + 56) + 8) + 56);
    v18 = 0.0;
  }

  v33 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v95.origin.x = v18;
    v95.origin.y = v20;
    v95.size.width = v22;
    v95.size.height = v24;
    v67 = NSStringFromCGRect(v95);
    *buf = 138412802;
    v78 = v67;
    v79 = 2112;
    v80 = objc_opt_class();
    v81 = 2048;
    v82 = v5;
    _os_log_debug_impl(&dword_18FFDC000, v33, OS_LOG_TYPE_DEBUG, "TUIKeyboardTracker: converted frame to %@ for <%@: %p>", buf, 0x20u);
  }

  v34 = *(a1 + 40);
  if (a3)
  {
    [v5 keyboardWillChangeToState:v34 trackingFrame:*(a1 + 48) animationInfo:{v18, v20, v22, v24}];
  }

  else
  {
    [v5 keyboardDidChangeToState:v34 trackingFrame:{v18, v20, v22, v24}];
  }

  v70 = v9;
  if (v72 > 0.0)
  {
    [*(a1 + 32) hostedOriginOffset];
    v7 = v7 - v35;
    [*(a1 + 32) hostedOriginOffset];
    v71 = v71 - v36;
  }

  v37 = [v5 sceneForTracker];
  v38 = [v37 _allWindows];
  v39 = [v38 copy];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = v39;
  v41 = [v40 countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v41)
  {
    v43 = v41;
    v44 = *v74;
    v45 = *MEMORY[0x1E69DE258];
    v46 = *(MEMORY[0x1E69DE258] + 8);
    *&v42 = 138413058;
    v68 = v42;
    v69 = a3;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v74 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v48 = *(*(&v73 + 1) + 8 * i);
        if ([*(a1 + 32) shouldUpdateExternalTrackerForWindow:{v48, v68}])
        {
          v49 = v7;
          [*(a1 + 32) intersectionOfSceneRect:v48 withWindow:{v7, v71, v70, v72}];
          v51 = v50;
          v53 = v52;
          Width = v54;
          v57 = v56;
          [v48 frame];
          MaxY = CGRectGetMaxY(v88);
          v89.origin.x = v51;
          v89.origin.y = v53;
          v89.size.width = Width;
          v89.size.height = v57;
          v59 = MaxY - CGRectGetMaxY(v89);
          v60 = _TUIKeyboardTrackingLogger();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v94.origin.x = v51;
            v94.origin.y = v53;
            v94.size.width = Width;
            v94.size.height = v57;
            v64 = NSStringFromCGRect(v94);
            v87.horizontal = v51;
            v87.vertical = v59;
            v65 = NSStringFromUIOffset(v87);
            v66 = objc_opt_class();
            *buf = v68;
            v78 = v64;
            v79 = 2112;
            v80 = v65;
            v81 = 2112;
            v82 = v66;
            v83 = 2048;
            v84 = v48;
            _os_log_debug_impl(&dword_18FFDC000, v60, OS_LOG_TYPE_DEBUG, "TUIKeyboardTracker: Intersection is %@ and offset is %@ for <%@: %p>", buf, 0x2Au);

            a3 = v69;
          }

          v90.origin.x = v51;
          v90.origin.y = v53;
          v90.size.width = Width;
          v90.size.height = v57;
          if (CGRectIsEmpty(v90))
          {
            [v48 frame];
            [v48 frame];
            [v48 frame];
            Width = CGRectGetWidth(v93);
            v57 = 0.0;
            v59 = v46;
            v51 = v45;
          }

          v7 = v49;
          v61 = v45 == v51;
          if (v46 != v59)
          {
            v61 = 0;
          }

          if (a3)
          {
            if (!v61)
            {
              [v5 trackingOffsetWillChange:v48 inWindow:*(a1 + 48) animationInfo:{v51, v59}];
            }

            [v5 trackingSizeWillChange:v48 inWindow:*(a1 + 48) animationInfo:{Width, v57}];
          }

          else
          {
            if (!v61)
            {
              [v5 trackingOffsetDidChange:v48 inWindow:*(a1 + 48) animationInfo:{v51, v59}];
            }

            [v5 trackingSizeDidChange:v48 inWindow:*(a1 + 48) animationInfo:{Width, v57}];
          }

          v62 = [*(a1 + 32) trackingWindows];
          if ([v62 containsObject:v48])
          {
          }

          else
          {
            v63 = [*(a1 + 40) isInteractive];

            if ((v63 & 1) == 0)
            {
              [*(a1 + 32) _updateSize:v48 forWindow:{Width, v57}];
              [*(a1 + 32) _updateOffset:v48 forWindow:{v51, v59}];
            }
          }
        }
      }

      v43 = [v40 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v43);
  }
}

void __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_22(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = keyboardPerfLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.updateTrackingElements", "", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [*(a1 + 32) trackingWindows];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 40) + 16))();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(a1 + 32) trackingElements];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(a1 + 48) + 16))();
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = keyboardPerfLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.updateTrackingElements", "", buf, 2u);
  }
}

void __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_25(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) trackingWindows];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(a1 + 40) + 16))();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_2_26(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) _postNotificationsWithAnimationInfo:*(a1 + 40) type:*(a1 + 56) start:1];
  }

  v2 = keyboardPerfLog();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.animation", "", v3, 2u);
  }
}

uint64_t __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_27(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = keyboardPerfLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.updateTrackerForStart", "", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) trackingElements];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 48) + 16))();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v9 = keyboardPerfLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.updateTrackerForStart", "", buf, 2u);
  }

  v10 = keyboardPerfLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.animation", "", buf, 2u);
  }

  v11 = keyboardPerfLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18FFDC000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.complete", "", buf, 2u);
  }

  if (*(a1 + 96) == 1)
  {
    [*(a1 + 32) _postNotificationsWithAnimationInfo:*(a1 + 40) type:*(a1 + 56) start:0];
  }

  [*(a1 + 32) setIsTransitioning:0];
  [*(a1 + 32) setIsChangingState:0];
  return [*(a1 + 32) setLastKnownFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
}

uint64_t __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = [*(a1 + 32) _isTextEffectsWindow];
  if (result)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_3;
    v10[3] = &__block_descriptor_64_e33_v16__0__UIKeyboardSceneDelegate_8l;
    *&v10[4] = a2;
    *&v10[5] = a3;
    *&v10[6] = a4;
    *&v10[7] = a5;
    return [MEMORY[0x1E69DCC08] performOnControllers:v10];
  }

  return result;
}

void __90__TUIKeyboardTrackingCoordinator_updateClientsForState_finalFrame_animationInfo_forStart___block_invoke_3(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 updateTrackingElementsForSize:{v3, v4}];
  [v5 updateTrackingElementsForOffset:{a1[6], a1[7]}];
}

- (void)updateNotificationsOnly:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];

    v5 = v7;
    if (v6)
    {
      v4 = [(TUIKeyboardTrackingCoordinator *)self setAnimationInfo:v7];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)updateAccessoryViewBounds:(CGRect)a3 forWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = a4;
  if ([v21 _isTextEffectsWindow] && !-[TUIKeyboardTrackingCoordinator isTransitioning](self, "isTransitioning"))
  {
    v9 = [(TUIKeyboardTrackingCoordinator *)self _lastKnownIAVBoundsForWindow:v21];
    v10 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 isInteractive];

      if ((v12 & 1) == 0)
      {
        [v9 CGRectValue];
LABEL_13:
        v17 = v13;
        v18 = v14;
        v19 = v15;
        v20 = v16;
LABEL_14:
        [(TUIKeyboardTrackingCoordinator *)self _updateIAVBounds:v21 forWindow:x, y, width, height];
        [(TUIKeyboardTrackingCoordinator *)self setKnownIAVBounds:x, y, width, height];
        [(TUIKeyboardTrackingCoordinator *)self updatedIAVBounds:x previousBounds:y, width, height, v17, v18, v19, v20];
LABEL_15:

        goto LABEL_16;
      }

LABEL_9:
      v17 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 8);
      v19 = *(MEMORY[0x1E695F058] + 16);
      v20 = *(MEMORY[0x1E695F058] + 24);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v24.origin.x = *MEMORY[0x1E695F058];
      v24.origin.y = v18;
      v24.size.width = v19;
      v24.size.height = v20;
      if (CGRectEqualToRect(v23, v24))
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (([v10 hasAccessoryView] & 1) != 0 || height > 0.0)
    {
    }

    else
    {

      if (width <= 0.0)
      {
        goto LABEL_9;
      }
    }

    [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
    goto LABEL_13;
  }

LABEL_16:
}

- (CGRect)intersectionOfSceneRect:(CGRect)a3 withWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(TUIKeyboardTrackingCoordinator *)self convertSceneCoordinateSpaceFrame:v9 toWindow:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v9 bounds];
  v32.origin.x = v11;
  v32.origin.y = v13;
  v32.size.width = v15;
  v32.size.height = v17;
  v27 = CGRectIntersection(v26, v32);
  MinX = v27.origin.x;
  MaxY = v27.origin.y;
  v20 = v27.size.width;
  v21 = v27.size.height;
  if (CGRectIsEmpty(v27))
  {
    [v9 frame];
    MinX = CGRectGetMinX(v28);
    [v9 frame];
    MaxY = CGRectGetMaxY(v29);
    [v9 frame];
    v20 = CGRectGetWidth(v30);
    v21 = 0.0;
  }

  v22 = MinX;
  v23 = MaxY;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertSceneCoordinateSpaceFrame:(CGRect)a3 toWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if ([v9 _isTextEffectsWindow])
  {
    [v9 convertRect:0 fromWindow:{x, y, width, height}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v18 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
    v19 = [v18 effectiveGeometry];
    v20 = [v19 coordinateSpace];
    v21 = [v9 coordinateSpace];
    [v20 convertRect:v21 toCoordinateSpace:{x, y, width, height}];
    v11 = v22;
    v13 = v23;
    v15 = v24;
    v17 = v25;
  }

  v26 = v11;
  v27 = v13;
  v28 = v15;
  v29 = v17;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)updateGuideInWindow:(id)a3 withSceneFrame:(CGRect)a4 accessoryBounds:(CGRect)a5 state:(id)a6 updatedInfo:(id)a7
{
  height = a5.size.height;
  v10 = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v67 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v57 = y;
  if (height <= 0.0)
  {
    v20 = v10;
  }

  else
  {
    v18 = [v15 _isTextEffectsWindow];
    v19 = y - height;
    if (v18)
    {
      v20 = v10;
    }

    else
    {
      v20 = v10 + height;
    }

    if ((v18 & 1) == 0)
    {
      y = v19;
    }
  }

  v56 = x;
  if (v20 > 0.0)
  {
    [(TUIKeyboardTrackingCoordinator *)self hostedOriginOffset];
    x = x - v21;
    [(TUIKeyboardTrackingCoordinator *)self hostedOriginOffset];
    y = y - v22;
  }

  rect = width;
  [(TUIKeyboardTrackingCoordinator *)self intersectionOfSceneRect:v15 withWindow:x, y, width, v20];
  v23 = v70.origin.x;
  v24 = v70.origin.y;
  v25 = v70.size.width;
  v26 = v70.size.height;
  MinX = CGRectGetMinX(v70);
  [v15 bounds];
  MaxY = CGRectGetMaxY(v71);
  v72.origin.x = v23;
  v72.origin.y = v24;
  v72.size.width = v25;
  v72.size.height = v26;
  v29 = CGRectGetMaxY(v72);
  if (![v15 isTrackingKeyboard])
  {
    v31 = MaxY - v29;
    goto LABEL_43;
  }

  v73.origin.x = v23;
  v73.origin.y = v24;
  v73.size.width = v25;
  v73.size.height = v26;
  MinX = CGRectGetMinX(v73);
  [v15 bounds];
  v30 = CGRectGetMaxY(v74);
  v75.origin.x = v23;
  v75.origin.y = v24;
  v75.size.width = v25;
  v75.size.height = v26;
  v31 = v30 - CGRectGetMaxY(v75);
  rect1 = v10;
  if (v16 && [v16 isDocked])
  {
    v32 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
    if (![v32 isRotating])
    {

      v52 = *(MEMORY[0x1E69DE258] + 8);
      v54 = *MEMORY[0x1E69DE258];
      if (fmax(MinX, v31) > 0.0)
      {
        v31 = *(MEMORY[0x1E69DE258] + 8);
        MinX = *MEMORY[0x1E69DE258];
      }

      goto LABEL_16;
    }
  }

  v52 = *(MEMORY[0x1E69DE258] + 8);
  v54 = *MEMORY[0x1E69DE258];
LABEL_16:
  v33 = [v15 _isTextEffectsWindow];
  v34 = v25;
  v35 = v26;
  v36 = MinX;
  v37 = v31;
  if (v16)
  {
    v34 = v25;
    v35 = v26;
    v36 = MinX;
    v37 = v31;
    if (v33)
    {
      v34 = v25;
      v35 = v26;
      v36 = MinX;
      v37 = v31;
      if ([v16 isFloating])
      {
        [v15 bounds];
        v34 = v38;
        v39 = [v16 hasFloatingAssistantView];
        if (v39)
        {
          v35 = v26;
        }

        else
        {
          v35 = 0.0;
        }

        if (v39)
        {
          v36 = MinX;
        }

        else
        {
          v36 = v54;
        }

        if (v39)
        {
          v37 = v31;
        }

        else
        {
          v37 = v53;
        }
      }
    }
  }

  if ([v16 hasFloatingAssistantView])
  {
    v40 = [v15 _primaryKeyboardTrackingGuide];
    v41 = [v40 shouldFollowCurrentKeyboard];

    if ((v41 & 1) == 0)
    {
      v35 = v31 + v35;
      v36 = 0.0;
      v37 = 0.0;
    }
  }

  v42 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
  v43 = [v42 animationType];

  if (v43 == 4)
  {
    v36 = v25 + v36;
  }

  v44 = [v15 _primaryKeyboardTrackingGuide];
  v45 = [v44 changeSizingConstants:{v34, v35}];

  v46 = [v15 _primaryKeyboardTrackingGuide];
  v47 = [v46 changeOffsetConstants:{v36, v37}];

  if ((v45 & 1) != 0 || v47)
  {
    v48 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v68.width = v34;
      v68.height = v35;
      v49 = NSStringFromCGSize(v68);
      v69.horizontal = v36;
      v69.vertical = v37;
      v50 = NSStringFromUIOffset(v69);
      v77.origin.x = v56;
      v77.origin.y = v57;
      v77.size.width = rect;
      v77.size.height = rect1;
      v51 = NSStringFromCGRect(v77);
      *buf = 138413058;
      v60 = v49;
      v61 = 2112;
      v62 = v50;
      v63 = 2112;
      v64 = v51;
      v65 = 2112;
      v66 = v15;
      _os_log_debug_impl(&dword_18FFDC000, v48, OS_LOG_TYPE_DEBUG, "Update size to %@; offset to %@ from %@ for %@", buf, 0x2Au);
    }

    if (![v15 _isTextEffectsWindow] || (v76.origin.x = v56, v76.origin.y = v57, v76.size.width = rect, v76.size.height = rect1, !CGRectEqualToRect(v76, *MEMORY[0x1E695F058])))
    {
      [v15 layoutViewsForTrackedGuides];
    }
  }

  if (v17)
  {
    v17[2](v17, v34, v35, v36, v37);
  }

LABEL_43:
  [(TUIKeyboardTrackingCoordinator *)self _updateSize:v15 forWindow:v25, v26];
  [(TUIKeyboardTrackingCoordinator *)self _updateOffset:v15 forWindow:MinX, v31];
}

- (void)updateKeyboardTrackingState:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_keyboardState = &self->_keyboardState;
  if (self->_keyboardState != v5)
  {
    v7 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
    if ([v7 count])
    {
    }

    else
    {
      v8 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
      v9 = [v8 count];

      if (!v9)
      {
LABEL_8:
        objc_storeStrong(p_keyboardState, a3);
        goto LABEL_9;
      }
    }

    v10 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v11;
      _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "Updating state from keyboard: %@ [Previous: %@]", &v12, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)shouldUpdateExternalTrackerForWindow:(id)a3
{
  v3 = a3;
  if ([v3 _isTextEffectsWindow] & 1) != 0 || (objc_msgSend(v3, "_isTextEffectsWindowHosting"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 _isRemoteKeyboardWindow] ^ 1;
  }

  return v4;
}

- (void)removeTrackingWindow:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
    v11 = 134218498;
    v12 = [v10 count];
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = v4;
    _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Removing tracking window [%lu current windows]: <%@: %p>", &v11, 0x20u);
  }

  v6 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
  [v6 containsObject:v4];

  if ([v4 _isTextEffectsWindow])
  {
    v7 = [(TUIKeyboardTrackingCoordinator *)self localTEW];
    v8 = [v4 isEqual:v7];

    if (v8)
    {
      [(TUIKeyboardTrackingCoordinator *)self setLocalTEW:0];
    }
  }

  v9 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
  [v9 removeObject:v4];
}

- (void)addTrackingWindow:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyboardTrackingCoordinator *)self setTrackingWindows:v6];
  }

  v7 = [v4 isTrackingKeyboard];
  v8 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
  v9 = [v8 containsObject:v4];

  if (!v9)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    v11 = _TUIKeyboardTrackingLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v39 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
      *buf = 134218498;
      v44 = [v39 count];
      v45 = 2112;
      v46 = objc_opt_class();
      v47 = 2048;
      v48 = v4;
      _os_log_debug_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_DEBUG, "Adding new tracking window [%lu current windows]: <%@: %p>", buf, 0x20u);
    }

    if ([v4 _isTextEffectsWindow])
    {
      [(TUIKeyboardTrackingCoordinator *)self setLocalTEW:v4];
      v12 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
      [v12 addObject:v4];
    }

    else
    {
      v12 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
      [v12 insertObject:v4 atIndex:0];
    }

    goto LABEL_15;
  }

  v10 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v44 = objc_opt_class();
    v45 = 2048;
    v46 = v4;
    _os_log_debug_impl(&dword_18FFDC000, v10, OS_LOG_TYPE_DEBUG, "Adding tracking window again: <%@: %p>", buf, 0x16u);
  }

  if (v7)
  {
LABEL_15:
    v13 = [v4 _primaryKeyboardTrackingGuide];
    [v13 layoutFrame];
    v15 = v14;

    [(TUIKeyboardTrackingCoordinator *)self incomingFrame];
    if (v16 > 0.0)
    {
      [v4 safeAreaInsets];
      if (v15 <= v17)
      {
        v18 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
        v19 = [v18 isOffscreen];

        if ((v19 & 1) == 0)
        {
          v20 = [v4 _primaryKeyboardTrackingGuide];
          v21 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
          [v20 setKeyboardTrackingState:v21];

          [(TUIKeyboardTrackingCoordinator *)self incomingFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v38 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __52__TUIKeyboardTrackingCoordinator_addTrackingWindow___block_invoke;
          v40[3] = &unk_1E72D76F0;
          v41 = v4;
          v42 = self;
          [(TUIKeyboardTrackingCoordinator *)self updateGuideInWindow:v41 withSceneFrame:v38 accessoryBounds:v40 state:v23 updatedInfo:v25, v27, v29, v31, v33, v35, v37];
        }
      }
    }
  }

LABEL_19:
}

void __52__TUIKeyboardTrackingCoordinator_addTrackingWindow___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    [*(a1 + 40) incomingFrame];
    v5 = NSStringFromCGRect(v13);
    v6 = 138412802;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_debug_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_DEBUG, "Updated tracking window <%@: %p> with existing info %@", &v6, 0x20u);
  }
}

- (void)removeTracker:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
    v8 = 134218498;
    v9 = [v7 count];
    v10 = 2112;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = v4;
    _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Removing tracker [%lu current trackers]: <%@: %p>", &v8, 0x20u);
  }

  v6 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
  [v6 removeObject:v4];
}

- (void)addTracker:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _TUIKeyboardTrackingLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
    v10 = 134218498;
    v11 = [v9 count];
    v12 = 2112;
    v13 = objc_opt_class();
    v14 = 2048;
    v15 = v4;
    _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Adding new tracker [%lu current trackers]: <%@: %p>", &v10, 0x20u);
  }

  v6 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyboardTrackingCoordinator *)self setTrackingElements:v7];
  }

  v8 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
  [v8 addObject:v4];
}

- (void)updateTEWHostingOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TUIKeyboardTrackingCoordinator *)self hostedOriginOffset];
  if (v7 != x || v6 != y)
  {
    [(TUIKeyboardTrackingCoordinator *)self setHostedOriginOffset:x, y];
    if (![(TUIKeyboardTrackingCoordinator *)self isChangingState])
    {
      v19 = [(TUIKeyboardTrackingCoordinator *)self keyboardState];
      [(TUIKeyboardTrackingCoordinator *)self incomingFrame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(TUIKeyboardTrackingCoordinator *)self animationInfo];
      v18 = v17;
      if (!v17)
      {
        v18 = +[TUIKeyboardAnimationInfo defaultInfo];
      }

      [(TUIKeyboardTrackingCoordinator *)self updateClientsForState:v19 finalFrame:v18 animationInfo:1 forStart:v10, v12, v14, v16];
      if (!v17)
      {
      }
    }
  }
}

- (CGRect)incomingKeyboardFrame
{
  [(TUIKeyboardTrackingCoordinator *)self knownIAVBounds];
  v4 = v3;
  if ([(TUIKeyboardTrackingCoordinator *)self isChangingState])
  {
    [(TUIKeyboardTrackingCoordinator *)self incomingFrame];
  }

  else
  {
    [(TUIKeyboardTrackingCoordinator *)self lastKnownFrame];
  }

  if (v4 > 0.0)
  {
    v8 = v4 + v8;
    v6 = v6 - v4;
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUIKeyboardTrackingCoordinator *)self primaryScene];
  v6 = [(TUIKeyboardTrackingCoordinator *)self trackingWindows];
  v7 = [v6 count];
  v8 = [(TUIKeyboardTrackingCoordinator *)self trackingElements];
  v9 = [v3 stringWithFormat:@"<%@:%p scene=%@ windowCount=%li; trackerCount=%li>", v4, self, v5, v7, objc_msgSend(v8, "count")];;

  return v9;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_trackingWindows removeAllObjects];
  trackingWindows = self->_trackingWindows;
  self->_trackingWindows = 0;

  [(NSMutableArray *)self->_trackingElements removeAllObjects];
  trackingElements = self->_trackingElements;
  self->_trackingElements = 0;

  primaryScene = self->_primaryScene;
  self->_primaryScene = 0;

  v6.receiver = self;
  v6.super_class = TUIKeyboardTrackingCoordinator;
  [(TUIKeyboardTrackingCoordinator *)&v6 dealloc];
}

- (TUIKeyboardTrackingCoordinator)initWithWindowScene:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TUIKeyboardTrackingCoordinator;
  v6 = [(TUIKeyboardTrackingCoordinator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryScene, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    trackingWindows = v7->_trackingWindows;
    v7->_trackingWindows = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    trackingElements = v7->_trackingElements;
    v7->_trackingElements = v10;

    v7->_hostedOriginOffset = *MEMORY[0x1E695EFF8];
  }

  return v7;
}

+ (id)trackingCoordinatorForScene:(id)a3
{
  v3 = a3;
  v4 = [[TUIKeyboardTrackingCoordinator alloc] initWithWindowScene:v3];

  return v4;
}

@end