@interface MGNotificationRegistration
- (BOOL)start;
- (MGNotificationRegistration)initWithQueue:(id)global_queue block:(id)a4;
- (void)cancel;
- (void)dealloc;
@end

@implementation MGNotificationRegistration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MGNotificationRegistration;
  [(MGNotificationRegistration *)&v3 dealloc];
}

- (void)cancel
{
  v3 = objc_autoreleasePoolPush();
  self->_deliverNotifications = 0;
  if (qword_1ED4ADF50)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C3938C38;
    block[3] = &unk_1E81B1490;
    block[4] = self;
    dispatch_async(qword_1ED4ADF50, block);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)start
{
  v57 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_requestedRegistrations;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v44, v56, 16);
  if (v4)
  {
    v8 = v4;
    v42 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        v11 = objc_msgSend_objectAtIndexedSubscript_(v10, v5, 0, v6, v7);
        v16 = objc_msgSend_intValue(v11, v12, v13, v14, v15);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v10, v17, 1, v18, v19);
        v24 = objc_msgSend_objectForKey_(self->_requestedRegistrations, v21, v10, v22, v23);
        v29 = objc_msgSend_allObjects(v24, v25, v26, v27, v28);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_1C393AFCC;
        v43[3] = &unk_1E81B1528;
        v43[4] = self;
        v43[5] = v29;
        v34 = objc_msgSend_copy(v43, v30, v31, v32, v33);
        if (qword_1ED4ADF48 != -1)
        {
          sub_1C39392EC();
        }

        v50 = 0;
        v51 = &v50;
        v52 = 0x3052000000;
        v53 = sub_1C3938920;
        v54 = sub_1C39389E0;
        v55 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1C3938F1C;
        block[3] = &unk_1E81B1570;
        v49 = v16;
        block[5] = v34;
        block[6] = &v50;
        block[4] = v20;
        dispatch_sync(qword_1ED4ADF50, block);
        v35 = v51[5];
        _Block_object_dispose(&v50, 8);
        objc_msgSend_setObject_forKey_(self->_observers, v36, v34, v35, v37);

        ++v9;
      }

      while (v8 != v9);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v44, v56, 16);
    }

    while (v8);
  }

  self->_requestedRegistrations = 0;
  self->_deliverNotifications = 1;
  objc_autoreleasePoolPop(context);
  v38 = *MEMORY[0x1E69E9840];
  return 1;
}

- (MGNotificationRegistration)initWithQueue:(id)global_queue block:(id)a4
{
  v12.receiver = self;
  v12.super_class = MGNotificationRegistration;
  v6 = [(MGNotificationRegistration *)&v12 init];
  if (v6)
  {
    v6->_observers = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    v6->_queue = global_queue;
    dispatch_retain(global_queue);
    v6->_block = objc_msgSend_copy(a4, v7, v8, v9, v10);
    v6->_requestedRegistrations = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

@end