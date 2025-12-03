@interface MGNotificationObserver
- (MGNotificationObserver)initWithType:(int)type argument:(id)argument;
- (void)_addBlock:(id)block;
- (void)_cancelRegistration;
- (void)_removeBlock:(id)block;
- (void)dealloc;
- (void)invokeBlocks;
- (void)startDynaStoreMonitoringWithArgument:(id)argument;
@end

@implementation MGNotificationObserver

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MGNotificationObserver;
  [(MGNotificationObserver *)&v3 dealloc];
}

- (void)invokeBlocks
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C3939CE0;
  block[3] = &unk_1E81B1490;
  block[4] = self;
  dispatch_async(qword_1ED4ADF50, block);
}

- (void)startDynaStoreMonitoringWithArgument:(id)argument
{
  v35[1] = *MEMORY[0x1E69E9840];
  context.version = 0;
  context.info = self;
  context.retain = MEMORY[0x1E695D7C8];
  context.release = MEMORY[0x1E695D7C0];
  context.copyDescription = 0;
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
  }

  else
  {
    Identifier = @"com.apple.mobilegestaltlistener";
  }

  if (Identifier)
  {
    v7 = Identifier;
  }

  else
  {
    v7 = @"com.apple.mobilegestaltlistener";
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = SCDynamicStoreCreate(*MEMORY[0x1E695E480], v7, sub_1C393A014, &context);
  self->_registration._darwinTokens = v9;
  if (v9)
  {
    ComputerName = SCDynamicStoreKeyCreateComputerName(v8);
    v35[0] = ComputerName;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v35, 1, v12);
    if (ComputerName)
    {
      CFRelease(ComputerName);
    }

    if (SCDynamicStoreSetNotificationKeys(self->_registration._scPrefs, v13, 0))
    {
      darwinTokens = self->_registration._darwinTokens;
      global_queue = dispatch_get_global_queue(0, 0);
      SCDynamicStoreSetDispatchQueue(darwinTokens, global_queue);
    }

    else
    {
      v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
      if (v23)
      {
        v29 = v23 + 1;
      }

      else
      {
        v29 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
      }

      sub_1C3938818(v29, 285, @"Failed to register for %@", v24, v25, v26, v27, v28, argument);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        argumentCopy = argument;
        _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to register for %@", buf, 0xCu);
      }

      CFRelease(self->_registration._darwinTokens);
      self->_registration._darwinTokens = 0;
    }
  }

  else
  {
    v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
    if (v16)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
    }

    sub_1C3938818(v22, 294, @"Failed to create dynamic store", v17, v18, v19, v20, v21, v31);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create dynamic store", buf, 2u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (MGNotificationObserver)initWithType:(int)type argument:(id)argument
{
  v165 = *MEMORY[0x1E69E9840];
  v161.receiver = self;
  v161.super_class = MGNotificationObserver;
  v6 = [(MGNotificationObserver *)&v161 init];
  if (!v6)
  {
    goto LABEL_99;
  }

  v6->_blocks = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6->_type = type;
  argumentCopy = argument;
  v6->_argument = argumentCopy;
  type = v6->_type;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v73 = *(qword_1ED4ADF68 + 152);
        if (!v73)
        {
          v73 = sub_1C39382B4(19, 2);
        }

        v74 = *MEMORY[0x1E695E480];
        global_queue = dispatch_get_global_queue(0, 0);
        v76 = v73(v74, @"com.apple.mobilegestalt", global_queue, 0);
        v6->_registration._darwinTokens = v76;
        if (v76)
        {
          CFRetain(v76);
          v77 = qword_1ED4ADF68;
          v78 = *(qword_1ED4ADF68 + 192);
          if (!v78)
          {
            v78 = sub_1C39382B4(24, 2);
            v77 = qword_1ED4ADF68;
          }

          darwinTokens = v6->_registration._darwinTokens;
          v80 = *(v77 + 600);
          if (!v80)
          {
            v80 = sub_1C39382B4(75, 1);
          }

          v81 = *v80;
          v149[0] = MEMORY[0x1E69E9820];
          v149[1] = 3221225472;
          v149[2] = sub_1C393A9D4;
          v149[3] = &unk_1E81B1500;
          v149[4] = v6;
          v78(darwinTokens, v81, v149);
          goto LABEL_56;
        }

        v116 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
        if (v116)
        {
          v122 = v116 + 1;
        }

        else
        {
          v122 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
        }

        sub_1C3938818(v122, 412, @"failed to connect to CTServer", v117, v118, v119, v120, v121, v148);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_98;
        }

        LOWORD(context.version) = 0;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "failed to connect to CTServer";
        goto LABEL_96;
      }

      if (type != 8)
      {
        goto LABEL_51;
      }

      objc_msgSend_startDynaStoreMonitoringWithArgument_(v6, v8, argumentCopy, v10, v11);
    }

    else
    {
      if (type != 5)
      {
        v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
        if (v16)
        {
          v22 = v16 + 1;
        }

        else
        {
          v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
        }

        sub_1C3938818(v22, 403, @"MGNotificationTypeSWBehavior not supported", v17, v18, v19, v20, v21, v148);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_98;
        }

        LOWORD(context.version) = 0;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "MGNotificationTypeSWBehavior not supported";
        goto LABEL_96;
      }

      if (MGGetSInt32Answer() != 4)
      {
        v109 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
        if (v109)
        {
          v115 = v109 + 1;
        }

        else
        {
          v115 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
        }

        sub_1C3938818(v115, 395, @"can't observe display mode changes", v110, v111, v112, v113, v114, v148);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_98;
        }

        LOWORD(context.version) = 0;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "can't observe display mode changes";
        goto LABEL_96;
      }

      v55 = *qword_1ED4ADF68;
      if (!*qword_1ED4ADF68)
      {
        v55 = sub_1C39382B4(0, 3);
      }

      v56 = objc_msgSend_mainDisplay(v55, v51, v52, v53, v54);
      v6->_registration._darwinTokens = v56;
      if (!v56)
      {
        v139 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
        if (v139)
        {
          v145 = v139 + 1;
        }

        else
        {
          v145 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
        }

        sub_1C3938818(v145, 383, @"failed to register for notification", v140, v141, v142, v143, v144, v148);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_98;
        }

        LOWORD(context.version) = 0;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "failed to register for notification";
        goto LABEL_96;
      }

      objc_msgSend_addObserver_forKeyPath_options_context_(v56, v57, v6, @"currentMode", 0, 0);
      objc_msgSend_currentMode(v6->_registration._darwinTokens, v58, v59, v60, v61);
    }
  }

  else
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v30 = objc_msgSend_componentsSeparatedByString_(argumentCopy, v8, @",", v10, v11);
        v6->_registration._darwinTokens = objc_alloc_init(MEMORY[0x1E695DF70]);
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v157, v164, 16);
        if (v32)
        {
          v37 = v32;
          v38 = *v158;
          while (2)
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v158 != v38)
              {
                objc_enumerationMutation(v30);
              }

              v40 = *(*(&v157 + 1) + 8 * i);
              out_token = -1;
              v41 = objc_msgSend_UTF8String(v40, v33, v34, v35, v36);
              v42 = dispatch_get_global_queue(0, 0);
              handler[0] = MEMORY[0x1E69E9820];
              handler[1] = 3221225472;
              handler[2] = sub_1C393A9B4;
              handler[3] = &unk_1E81B14D8;
              handler[4] = v6;
              if (notify_register_dispatch(v41, &out_token, v42, handler))
              {
                v91 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
                if (v91)
                {
                  v97 = v91 + 1;
                }

                else
                {
                  v97 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
                }

                sub_1C3938818(v97, 317, @"failed to register for %@ notification", v92, v93, v94, v95, v96, v40);
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(context.version) = 138412290;
                  *(&context.version + 4) = v40;
                  _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to register for %@ notification", &context, 0xCu);
                }

                v153 = 0u;
                v154 = 0u;
                v151 = 0u;
                v152 = 0u;
                v99 = v6->_registration._darwinTokens;
                v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v98, &v151, v163, 16);
                if (v100)
                {
                  v105 = v100;
                  v106 = *v152;
                  do
                  {
                    for (j = 0; j != v105; ++j)
                    {
                      if (*v152 != v106)
                      {
                        objc_enumerationMutation(v99);
                      }

                      v108 = objc_msgSend_intValue(*(*(&v151 + 1) + 8 * j), v101, v102, v103, v104);
                      notify_cancel(v108);
                    }

                    v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v101, &v151, v163, 16);
                  }

                  while (v105);
                }

                v6->_registration._darwinTokens = 0;
                goto LABEL_98;
              }

              v46 = v6->_registration._darwinTokens;
              v47 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v43, out_token, v44, v45);
              objc_msgSend_addObject_(v46, v48, v47, v49, v50);
            }

            v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v157, v164, 16);
            if (v37)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_56;
      }

      if (type == 2)
      {
        v13 = SCPreferencesCreate(0, @"MobileGestalt", argument);
        v6->_registration._darwinTokens = v13;
        if (v13)
        {
          context.version = 0;
          context.info = v6;
          context.retain = MEMORY[0x1E695D7C8];
          context.release = MEMORY[0x1E695D7C0];
          context.copyDescription = 0;
          SCPreferencesSetCallback(v13, sub_1C393A9BC, &context);
          scPrefs = v6->_registration._scPrefs;
          v15 = dispatch_get_global_queue(0, 0);
          SCPreferencesSetDispatchQueue(scPrefs, v15);
          goto LABEL_56;
        }

        v123 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
        if (v123)
        {
          v129 = v123 + 1;
        }

        else
        {
          v129 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
        }

        sub_1C3938818(v129, 339, @"failed to register for %@ notification", v124, v125, v126, v127, v128, v6->_argument);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
LABEL_85:
          argument = v6->_argument;
          LODWORD(context.version) = 138412290;
          *(&context.version + 4) = argument;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "failed to register for %@ notification";
          v131 = 12;
LABEL_97:
          _os_log_impl(&dword_1C3937000, v23, OS_LOG_TYPE_DEFAULT, v24, &context, v131);
        }

LABEL_98:
        v6->_type = -1;
        goto LABEL_99;
      }

LABEL_51:
      v82 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
      if (v82)
      {
        v88 = v82 + 1;
      }

      else
      {
        v88 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
      }

      sub_1C3938818(v88, 424, @"can't create observer of type %d", v83, v84, v85, v86, v87, v6->_type);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v89 = v6->_type;
        LODWORD(context.version) = 67109120;
        HIDWORD(context.version) = v89;
        _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "can't create observer of type %d", &context, 8u);
      }

      goto LABEL_56;
    }

    if (type != 3)
    {
      v25 = *(qword_1ED4ADF68 + 752);
      if (!v25)
      {
        v25 = sub_1C39382B4(94, 3);
      }

      v26 = objc_msgSend_sharedConnection(v25, v8, v9, v10, v11);
      v6->_registration._darwinTokens = v26;
      if (v26)
      {
        objc_msgSend_addObserver_(v26, v27, v6, v28, v29);
        goto LABEL_56;
      }

      v132 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
      if (v132)
      {
        v138 = v132 + 1;
      }

      else
      {
        v138 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
      }

      sub_1C3938818(v138, 370, @"failed to register for notification", v133, v134, v135, v136, v137, v148);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      LOWORD(context.version) = 0;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "failed to register for notification";
LABEL_96:
      v131 = 2;
      goto LABEL_97;
    }

    v62 = [MGFileWatcher alloc];
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = sub_1C393A9CC;
    v150[3] = &unk_1E81B1490;
    v150[4] = v6;
    v65 = objc_msgSend_initWithPath_block_(v62, v63, argument, v150, v64);
    v6->_registration._darwinTokens = v65;
    if (!v65)
    {
      v66 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
      if (v66)
      {
        v72 = v66 + 1;
      }

      else
      {
        v72 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
      }

      sub_1C3938818(v72, 359, @"failed to register for %@ notification", v67, v68, v69, v70, v71, v6->_argument);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      goto LABEL_85;
    }
  }

LABEL_56:
  if (v6->_type != -1)
  {
    v90 = v6;
  }

LABEL_99:
  v146 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_cancelRegistration
{
  v45 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(qword_1ED4ADF50);
  type = self->_type;
  if (type <= 4)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        darwinTokens = self->_registration._darwinTokens;
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(darwinTokens, v3, &v38, v44, 16);
        if (v13)
        {
          v18 = v13;
          v19 = *v39;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v39 != v19)
              {
                objc_enumerationMutation(darwinTokens);
              }

              v21 = objc_msgSend_intValue(*(*(&v38 + 1) + 8 * i), v14, v15, v16, v17);
              notify_cancel(v21);
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(darwinTokens, v14, &v38, v44, 16);
          }

          while (v18);
        }

        self->_registration._darwinTokens = 0;
LABEL_47:
        self->_type = -1;
        if (type == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (type == 2)
      {
        p_registration = &self->_registration;
        v8 = self->_registration._darwinTokens;
        if (v8)
        {
          SCPreferencesSetDispatchQueue(v8, 0);
          SCPreferencesSetCallback(p_registration->_scPrefs, 0, 0);
LABEL_37:
          CFRelease(p_registration->_darwinTokens);
          goto LABEL_38;
        }

        goto LABEL_39;
      }

LABEL_42:
      v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
      if (v30)
      {
        v36 = v30 + 1;
      }

      else
      {
        v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
      }

      sub_1C3938818(v36, 519, @"can't cancel registration of type %d", v31, v32, v33, v34, v35, self->_type);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v37 = self->_type;
        *buf = 67109120;
        v43 = v37;
        _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "can't cancel registration of type %d", buf, 8u);
      }

      goto LABEL_47;
    }

    if (type == 3)
    {
      p_registration = &self->_registration;
      v24 = self->_registration._darwinTokens;
      if (!v24)
      {
        goto LABEL_39;
      }

      objc_msgSend_cancel(v24, v3, v4, v5, v6);
      v23 = p_registration->_darwinTokens;
      goto LABEL_30;
    }

    p_registration = &self->_registration;
    v10 = self->_registration._darwinTokens;
    if (!v10)
    {
      goto LABEL_39;
    }

    objc_msgSend_removeObserver_(v10, v3, self, v5, v6);
LABEL_27:
    v23 = self->_registration._darwinTokens;
LABEL_30:

    goto LABEL_38;
  }

  if (type <= 6)
  {
    if (type != 5)
    {
      p_registration = &self->_registration;
LABEL_38:
      p_registration->_darwinTokens = 0;
      goto LABEL_39;
    }

    p_registration = &self->_registration;
    v22 = self->_registration._darwinTokens;
    if (!v22)
    {
      goto LABEL_39;
    }

    objc_msgSend_removeObserver_forKeyPath_(v22, v3, self, @"currentMode", v6);
    goto LABEL_27;
  }

  if (type == 7)
  {
    p_registration = &self->_registration;
    scPrefs = self->_registration._scPrefs;
    if (scPrefs)
    {
      v26 = qword_1ED4ADF68;
      v27 = *(qword_1ED4ADF68 + 200);
      if (!v27)
      {
        v27 = sub_1C39382B4(25, 2);
        scPrefs = p_registration->_darwinTokens;
        v26 = qword_1ED4ADF68;
      }

      v28 = *(v26 + 600);
      if (!v28)
      {
        v28 = sub_1C39382B4(75, 1);
      }

      v27(scPrefs, *v28);
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  if (type != 8)
  {
    goto LABEL_42;
  }

  p_registration = &self->_registration;
  v11 = self->_registration._darwinTokens;
  if (v11)
  {
    SCDynamicStoreSetDispatchQueue(v11, 0);
    goto LABEL_37;
  }

LABEL_39:
  self->_type = -1;
LABEL_40:

LABEL_41:
  v29 = *MEMORY[0x1E69E9840];
}

- (void)_addBlock:(id)block
{
  dispatch_assert_queue_V2(qword_1ED4ADF50);
  blocks = self->_blocks;

  objc_msgSend_addObject_(blocks, v5, block, v6, v7);
}

- (void)_removeBlock:(id)block
{
  v29[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(qword_1ED4ADF50);
  objc_msgSend_removeObject_(self->_blocks, v5, block, v6, v7);
  if (!objc_msgSend_count(self->_blocks, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, self->_type, v14, v15);
    argument = self->_argument;
    v29[0] = v16;
    v29[1] = argument;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v29, 2, v19);
    objc_msgSend_removeObjectForKey_(qword_1ED4ADF40, v21, v20, v22, v23);
    objc_msgSend__cancelRegistration(self, v24, v25, v26, v27);
  }

  if (!objc_msgSend_count(qword_1ED4ADF40, v12, v13, v14, v15))
  {

    qword_1ED4ADF40 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end