@interface SRXPCListener
+ (void)handleCommand:(unint64_t)command info:(id)info reply:(id)reply error:(id *)error;
+ (void)handleMessage:(id)message error:(id *)error;
@end

@implementation SRXPCListener

+ (void)handleCommand:(unint64_t)command info:(id)info reply:(id)reply error:(id *)error
{
  infoCopy = info;
  replyCopy = reply;
  if (command == 1)
  {
    string = xpc_dictionary_get_string(infoCopy, "l");
    if (string)
    {
      v15 = string;
      v16 = xpc_dictionary_get_string(infoCopy, "d");
      if (v16)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
        v19 = SRIsAssetAvailable(v17, v18, 0, 0, 0, 0);
      }

      else
      {
        v23 = MEMORY[0x1E695DF58];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
        v18 = [v23 localeWithLocaleIdentifier:v17];
        v19 = SRAreAssetsAvailableForLocale(v18);
      }

      v24 = v19;

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(empty, "av", v24);
      xpc_dictionary_set_value(replyCopy, "i", empty);

      goto LABEL_23;
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-3 userInfo:0];
    }

    v21 = replyCopy;
    v22 = -3;
LABEL_20:
    xpc_dictionary_set_int64(v21, "e", v22);
    goto LABEL_23;
  }

  if (command)
  {
    v20 = SRLogCategoryAssets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SRXPCListener handleCommand:command info:v20 reply:? error:?];
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-7 userInfo:0];
    }

    v21 = replyCopy;
    v22 = -7;
    goto LABEL_20;
  }

  v11 = [[SRAssetBundleQuery alloc] initWithXPCObject:infoCopy isResult:0];
  v12 = +[SRAssetBundleCache sharedInstance];
  [v12 queryCache:v11 loading:0];

  xpcObject = [(SRAssetBundleQuery *)v11 xpcObject];
  if (xpcObject)
  {
    xpc_dictionary_set_value(replyCopy, "i", xpcObject);
  }

  else
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-4 userInfo:0];
    }

    xpc_dictionary_set_int64(replyCopy, "e", -4);
  }

LABEL_23:
}

+ (void)handleMessage:(id)message error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = messageCopy;
  if (messageCopy && MEMORY[0x1B2705140](messageCopy) == MEMORY[0x1E69E9E80])
  {
    v9 = xpc_dictionary_get_remote_connection(v7);
    reply = xpc_dictionary_create_reply(v7);
    uint64 = xpc_dictionary_get_uint64(v7, "c");
    v14 = xpc_dictionary_get_uint64(v7, "rid");
    v15 = xpc_dictionary_get_uint64(v7, "pid");
    v16 = xpc_dictionary_get_value(v7, "i");
    v17 = SRLogCategorySafety();
    v18 = v17;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = 134218240;
      v21 = v15;
      v22 = 2048;
      v23 = qos_class_self();
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v18, OS_SIGNPOST_EVENT, v14, "HandleRequest", "pid:%llu, qos:%llu", &v20, 0x16u);
    }

    [self handleCommand:uint64 info:v16 reply:reply error:error];
    xpc_connection_send_message(v9, reply);
  }

  else
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-2 userInfo:0];
    v8 = SRLogCategorySafety();
    v9 = v8;
    v10 = handleMessage_error__errorCount;
    v11 = ++handleMessage_error__errorCount;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v9, OS_SIGNPOST_EVENT, v11, "HandleRequestError", &unk_1AE5BED9F, &v20, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)handleCommand:(uint64_t)a1 info:(NSObject *)a2 reply:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "Invalid command %llu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end