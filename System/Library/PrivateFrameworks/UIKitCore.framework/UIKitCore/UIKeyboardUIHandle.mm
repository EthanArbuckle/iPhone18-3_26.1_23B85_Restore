@interface UIKeyboardUIHandle
- (UIKeyboardUIHandle)initWithService:(id)service connection:(id)connection;
- (id)snapshotForOptions:(id)options;
- (id)snapshotForView:(id)view;
- (void)setKeyboardAlpha:(id)alpha force:(id)force processId:(id)id;
@end

@implementation UIKeyboardUIHandle

- (UIKeyboardUIHandle)initWithService:(id)service connection:(id)connection
{
  serviceCopy = service;
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = UIKeyboardUIHandle;
  v8 = [(UIKeyboardUIHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, serviceCopy);
    objc_storeStrong(&v9->_connection, connection);
  }

  return v9;
}

- (id)snapshotForView:(id)view
{
  v44[8] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _window = [viewCopy _window];
  screen = [_window screen];

  if (screen)
  {
    [screen scale];
    v8 = v7;
    [viewCopy frame];
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc_init(UIKeyboardUISnapshot);
    WeakRetained = objc_loadWeakRetained(&self->_service);
    -[UIKeyboardUISnapshot setSlotID:](v13, "setSlotID:", [WeakRetained createSlot:{v8 * v10, v8 * v12}]);

    [(UIKeyboardUISnapshot *)v13 setSize:v10, v12];
    v15 = *MEMORY[0x1E6979FB0];
    v44[0] = *MEMORY[0x1E6979FD0];
    v16 = *MEMORY[0x1E6979F68];
    v43[0] = v15;
    v43[1] = v16;
    v40 = screen;
    displayConfiguration = [screen displayConfiguration];
    name = [displayConfiguration name];
    v44[1] = name;
    v43[2] = *MEMORY[0x1E6979F40];
    v17 = MEMORY[0x1E696AD98];
    layer = [viewCopy layer];
    context = [layer context];
    v19 = [v17 numberWithUnsignedInt:{objc_msgSend(context, "contextId")}];
    v44[2] = v19;
    v43[3] = *MEMORY[0x1E6979FA8];
    v20 = MEMORY[0x1E696AD98];
    layer2 = [viewCopy layer];
    v22 = [v20 numberWithUnsignedLongLong:layer2];
    v44[3] = v22;
    v43[4] = *MEMORY[0x1E6979F50];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[UIKeyboardUISnapshot slotID](v13, "slotID")}];
    v44[4] = v23;
    v43[5] = *MEMORY[0x1E697A000];
    v24 = MEMORY[0x1E696B098];
    v25 = *(MEMORY[0x1E69792E8] + 80);
    *&v41.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v41.m33 = v25;
    v26 = *(MEMORY[0x1E69792E8] + 112);
    *&v41.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v41.m43 = v26;
    v27 = *(MEMORY[0x1E69792E8] + 16);
    *&v41.m11 = *MEMORY[0x1E69792E8];
    *&v41.m13 = v27;
    v28 = *(MEMORY[0x1E69792E8] + 48);
    *&v41.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v41.m23 = v28;
    CATransform3DScale(&v42, &v41, v8, v8, 1.0);
    v29 = [v24 valueWithCATransform3D:&v42];
    v30 = *MEMORY[0x1E6979FF0];
    v44[5] = v29;
    v44[6] = MEMORY[0x1E695E118];
    v31 = *MEMORY[0x1E6979FA0];
    v43[6] = v30;
    v43[7] = v31;
    v44[7] = MEMORY[0x1E695E118];
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:8];
    v33 = [(UIView *)viewCopy _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v32];

    if (CARenderServerSnapshot())
    {
      v34 = v13;
    }

    else
    {
      v35 = KeyboardUIServiceLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v42.m11) = 0;
        _os_log_error_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Failed to snapshot", &v42, 2u);
      }

      v34 = 0;
    }

    screen = v40;
  }

  else
  {
    v13 = KeyboardUIServiceLog();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v42.m11) = 0;
      _os_log_error_impl(&dword_188A29000, &v13->super, OS_LOG_TYPE_ERROR, "Snapshot view does not have a screen", &v42, 2u);
    }

    v34 = 0;
  }

  return v34;
}

- (id)snapshotForOptions:(id)options
{
  if (options)
  {
    unsignedIntegerValue = [options unsignedIntegerValue];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__190;
    v12 = __Block_byref_object_dispose__190;
    v13 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__UIKeyboardUIHandle_snapshotForOptions___block_invoke;
    block[3] = &unk_1E711BF88;
    block[5] = &v8;
    block[6] = unsignedIntegerValue;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __41__UIKeyboardUIHandle_snapshotForOptions___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (([UIApp isSuspended] & 1) == 0)
  {
    v2 = *(a1 + 48);
    if (v2 == 1)
    {
      v4 = +[UIKeyboard activeKeyboard];
      v3 = [v4 window];

      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v2 != 2)
      {
        v8 = KeyboardUIServiceLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 48);
          v10[0] = 67109120;
          v10[1] = v9;
          _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unsupported snapshot options %d", v10, 8u);
        }

        goto LABEL_11;
      }

      v3 = +[UIKeyboard snapshotViewForPredictionViewTransition];
      if (!v3)
      {
LABEL_11:
        v3 = KeyboardUIServiceLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v10[0]) = 0;
          _os_log_error_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Snapshot target is nil", v10, 2u);
        }

        goto LABEL_13;
      }
    }

    v5 = [*(a1 + 32) snapshotForView:v3];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

LABEL_13:
  }
}

- (void)setKeyboardAlpha:(id)alpha force:(id)force processId:(id)id
{
  alphaCopy = alpha;
  forceCopy = force;
  idCopy = id;
  remoteProcess = [(BSServiceConnectionHost *)self->_connection remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];
  v13 = [bundleIdentifier hasPrefix:@"com.apple."];

  if (alphaCopy && v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__UIKeyboardUIHandle_setKeyboardAlpha_force_processId___block_invoke;
    block[3] = &unk_1E70F6228;
    v15 = alphaCopy;
    v16 = forceCopy;
    v17 = idCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __55__UIKeyboardUIHandle_setKeyboardAlpha_force_processId___block_invoke(id *a1)
{
  [a1[4] doubleValue];
  v3 = v2;
  v4 = [a1[5] BOOLValue];
  v5 = [a1[6] intValue];
  if ((v4 & 1) != 0 || v3 > 0.0 || (result = +[UIKeyboard keyboardProcessId], v5 == result))
  {

    return [UIKeyboard setKeyboardAlpha:1 remote:v4 force:v5 processId:v3];
  }

  return result;
}

@end