@interface PKDaemonClient
+ (id)convertToXPC:(id)a3 version:(unint64_t)a4;
- (PKDaemonClient)initWithConnection:(id)a3 queue:(id)a4 user:(unsigned int)a5;
- (id)convertFromXPC:(id)a3;
- (id)errorInReply:(id)a3;
- (id)request:(const char *)a3;
- (id)request:(const char *)a3 paths:(id)a4;
- (void)addPlugIns:(id)a3 reply:(id)a4;
- (void)bulkPlugins:(unint64_t)a3 reply:(id)a4;
- (void)bulkSetPluginAnnotations:(id)a3 reply:(id)a4;
- (void)findPlugInByPathURL:(id)a3 reply:(id)a4;
- (void)holdPlugins:(id)a3 extensionPointName:(id)a4 platforms:(id)a5 flags:(unint64_t)a6 reply:(id)a7;
- (void)matchPlugIns:(id)a3 flags:(unint64_t)a4 uuid:(id)a5 reply:(id)a6;
- (void)releaseHold:(id)a3 flags:(unint64_t)a4 reply:(id)a5;
- (void)removePlugIns:(id)a3 reply:(id)a4;
- (void)sendSynchronously:(BOOL)a3 request:(id)a4 retry:(BOOL)a5 reply:(id)a6;
- (void)set:(id)a3 plugins:(id)a4;
- (void)set:(id)a3 uuids:(id)a4;
- (void)setPluginAnnotations:(id)a3 annotations:(id)a4 reply:(id)a5;
@end

@implementation PKDaemonClient

- (PKDaemonClient)initWithConnection:(id)a3 queue:(id)a4 user:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = PKDaemonClient;
  v11 = [(PKDaemonClient *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_replyQueue, a4);
    objc_storeStrong(&v12->_pkd, a3);
    objc_initWeak(&location, v12);
    pkd = v12->_pkd;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1C68ACFA8;
    v19 = &unk_1E827F9F0;
    objc_copyWeak(&v20, &location);
    xpc_connection_set_event_handler(pkd, &v16);
    if (a5)
    {
      v14 = v12->_pkd;
      xpc_connection_set_target_uid();
    }

    [(PKDaemonClient *)v12 setProtocolVersion:3, v16, v17, v18, v19];
    xpc_connection_resume(v12->_pkd);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)errorInReply:(id)a3
{
  v3 = a3;
  if (MEMORY[0x1C6960700]() == MEMORY[0x1E69E9E98])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28])}];
    v7 = 4;
    goto LABEL_6;
  }

  uint64 = xpc_dictionary_get_uint64(v3, "errorcode");
  string = xpc_dictionary_get_string(v3, "error");
  if (uint64)
  {
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v7 = uint64;
LABEL_6:
      v8 = pkError(v7, v6);

      goto LABEL_11;
    }

    v8 = pkError(uint64, @"unknown error returned by PlugInKit subsystem");
  }

  else
  {
    if (string)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"pkd reported error without a code: %s", string}];
    }

    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (void)addPlugIns:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PKDaemonClient *)self request:"add" paths:a3];
  [(PKDaemonClient *)self send:v7 reply:v6];
}

- (void)removePlugIns:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PKDaemonClient *)self request:"remove" paths:a3];
  [(PKDaemonClient *)self send:v7 reply:v6];
}

- (void)bulkPlugins:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(PKDaemonClient *)self request:"bulk"];
  xpc_dictionary_set_uint64(v7, "flags", a3);
  [(PKDaemonClient *)self send:v7 reply:v6];
}

- (void)findPlugInByPathURL:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  xdict = [(PKDaemonClient *)self request:"find"];
  v8 = [v7 absoluteString];

  xpc_dictionary_set_string(xdict, "paths", [v8 UTF8String]);
  [(PKDaemonClient *)self send:xdict reply:v6];
}

- (void)matchPlugIns:(id)a3 flags:(unint64_t)a4 uuid:(id)a5 reply:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v16 = 0;
  v10 = a6;
  v11 = a3;
  [a5 getUUIDBytes:uuid];
  v12 = [(PKDaemonClient *)self request:"match"];
  v13 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(v12, "rules", v13);
  xpc_dictionary_set_uint64(v12, "flags", a4);
  xpc_dictionary_set_uuid(v12, "uuids", uuid);
  [(PKDaemonClient *)self sendSynchronously:(a4 >> 10) & 1 request:v12 retry:1 reply:v10];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setPluginAnnotations:(id)a3 annotations:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  xdict = [(PKDaemonClient *)self request:"annotate"];
  [(PKDaemonClient *)self set:xdict uuids:v10];

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(xdict, "annotations", v11);
  [(PKDaemonClient *)self send:xdict reply:v8];
}

- (void)bulkSetPluginAnnotations:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  xdict = [(PKDaemonClient *)self request:"bulk-annotate"];
  v8 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(xdict, "annotations", v8);
  [(PKDaemonClient *)self send:xdict reply:v6];
}

- (void)holdPlugins:(id)a3 extensionPointName:(id)a4 platforms:(id)a5 flags:(unint64_t)a6 reply:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    [(PKDaemonClient *)self request:"lock" paths:v12];
  }

  else
  {
    [(PKDaemonClient *)self request:"lock"];
  }
  v16 = ;

  if (v13)
  {
    xpc_dictionary_set_string(v16, "extensionpoint", [v13 UTF8String]);
    if ([v14 count])
    {
      v24 = self;
      v25 = a6;
      v17 = xpc_array_create(0, 0);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v19)
      {
        v20 = *v27;
        do
        {
          v21 = 0;
          if (v19 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v19;
          }

          do
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v18);
            }

            xpc_array_set_uint64(v17, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v26 + 1) + 8 * v21++) unsignedLongLongValue]);
          }

          while (v22 != v21);
          v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v19);
      }

      xpc_dictionary_set_value(v16, "platforms", v17);
      self = v24;
      a6 = v25;
    }
  }

  xpc_dictionary_set_uint64(v16, "flags", a6);
  [(PKDaemonClient *)self sendSynchronously:(a6 >> 3) & 1 request:v16 reply:v15];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)releaseHold:(id)a3 flags:(unint64_t)a4 reply:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = [(PKDaemonClient *)self request:"lock"];
  v13[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  [(PKDaemonClient *)self set:v10 uuids:v11];
  xpc_dictionary_set_uint64(v10, "flags", a4);
  [(PKDaemonClient *)self sendSynchronously:(a4 >> 3) & 1 request:v10 reply:v8];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)request:(const char *)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "request", a3);
  xpc_dictionary_set_uint64(v5, "version", [(PKDaemonClient *)self protocolVersion]);

  return v5;
}

- (id)request:(const char *)a3 paths:(id)a4
{
  v6 = a4;
  v7 = [(PKDaemonClient *)self request:a3];
  v8 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(v7, "paths", v8);

  return v7;
}

- (void)sendSynchronously:(BOOL)a3 request:(id)a4 retry:(BOOL)a5 reply:(id)a6
{
  v7 = a5;
  v8 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1C68AE17C;
  v27[3] = &unk_1E827FA18;
  objc_copyWeak(&v29, &location);
  v12 = v11;
  v28 = v12;
  v13 = MEMORY[0x1C6960190](v27);
  if (v8)
  {
    v14 = xpc_connection_send_message_with_reply_sync(self->_pkd, v10);
    v15 = MEMORY[0x1E69E9E18];
    if (v14 == MEMORY[0x1E69E9E18] && v7)
    {
      uint64 = xpc_dictionary_get_uint64(v10, "flags");
      xpc_dictionary_set_uint64(v10, "flags", uint64 & 0xFFFFFFFFFFFF7FFFLL);
      v17 = 1;
      while (1)
      {
        v18 = pklog_handle_for_category(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = self;
          _os_log_error_impl(&dword_1C6892000, v18, OS_LOG_TYPE_ERROR, "%@: retrying sync request", buf, 0xCu);
        }

        v14 = xpc_connection_send_message_with_reply_sync(self->_pkd, v10);
        if (v14 != v15)
        {
          break;
        }

        if (--v17)
        {
          v14 = v15;
          break;
        }
      }
    }

    (v13)[2](v13, v14);
  }

  else
  {
    pkd = self->_pkd;
    replyQueue = self->_replyQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1C68AE224;
    handler[3] = &unk_1E827FA68;
    objc_copyWeak(&v25, &location);
    v26 = v7;
    v23 = v10;
    v24 = v13;
    xpc_connection_send_message_with_reply(pkd, v23, replyQueue, handler);

    objc_destroyWeak(&v25);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)set:(id)a3 plugins:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = xpc_array_create(0, 0);
  v8 = xpc_array_create(0, 0);
  v9 = xpc_array_create(0, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C68AE544;
  v13[3] = &unk_1E827FA90;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
  [v5 enumerateObjectsUsingBlock:v13];

  xpc_dictionary_set_value(v6, "uuids", v12);
  xpc_dictionary_set_value(v6, "paths", v11);
  xpc_dictionary_set_value(v6, "oneshotuuids", v10);
}

- (void)set:(id)a3 uuids:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = xpc_array_create(0, 0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v11);
        *uuid = 0;
        v20 = 0;
        [v13 getUUIDBytes:{uuid, v15}];
        xpc_array_set_uuid(v7, 0xFFFFFFFFFFFFFFFFLL, uuid);
        ++v11;
      }

      while (v12 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  xpc_dictionary_set_value(v5, "uuids", v7);
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)convertToXPC:(id)a3 version:(unint64_t)a4
{
  if (a4 == 3)
  {
    v5 = _CFXPCCreateXPCMessageWithCFObject();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)convertFromXPC:(id)a3
{
  v4 = a3;
  if ([(PKDaemonClient *)self protocolVersion]== 3)
  {
    v5 = _CFXPCCreateCFObjectFromXPCMessage();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end