@interface RegisterXPCActivity
@end

@implementation RegisterXPCActivity

void ___RegisterXPCActivity_block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      if (!a1[5])
      {
        goto LABEL_14;
      }

      if (!xpc_activity_set_state(v3, 4))
      {
        v5 = UAFGetLogCategory(&UAFLogContextXPCActivity);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v16 = "_RegisterXPCActivity_block_invoke";
          _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to continue", buf, 0xCu);
        }
      }

      v6 = a1[5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___RegisterXPCActivity_block_invoke_301;
      v13[3] = &unk_1E7FFCFD0;
      v14 = v3;
      (*(v6 + 16))(v6, v14, v13);
    }
  }

  else
  {
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }

  if (xpc_activity_should_defer(v3))
  {
    v8 = xpc_activity_set_state(v3, 3);
    v9 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = @"No";
      v12 = a1[4];
      v16 = "_RegisterXPCActivity_block_invoke";
      *buf = 136315650;
      v17 = 2112;
      if (v8)
      {
        v11 = @"Yes";
      }

      v18 = v12;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Deferring activity:%@ deferred:%@", buf, 0x20u);
    }
  }

LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
}

void ___RegisterXPCActivity_block_invoke_301(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "_RegisterXPCActivity_block_invoke";
      _os_log_error_impl(&dword_1BCF2C000, v1, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to done", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end