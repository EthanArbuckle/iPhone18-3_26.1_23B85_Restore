@interface RCAppContainerHandle
- (id)init:(id *)init;
- (void)dealloc;
@end

@implementation RCAppContainerHandle

- (id)init:(id *)init
{
  v22.receiver = self;
  v22.super_class = RCAppContainerHandle;
  v4 = [(RCAppContainerHandle *)&v22 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_26;
  }

  v4->_sandboxHandle = -1;
  v6 = RCVoiceMemosBundleID;
  if (!container_query_create())
  {
    sub_100008B60(1, 0, init);
LABEL_25:

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  container_query_set_class();
  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  v7 = xpc_string_create([v6 UTF8String]);
  container_query_set_identifiers();

  container_query_get_single_result();
  if (!container_copy_object())
  {
    container_query_get_last_error();
    v14 = container_error_copy_unlocalized_description();
    if (v14)
    {
      v15 = [NSString stringWithFormat:@"Query failed with description: %s", v14];
      free(v14);
      if (v15)
      {
        v23 = NSLocalizedFailureReasonErrorKey;
        v24 = v15;
        v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    sub_100008B60(2, v14, init);

    container_query_free();
    goto LABEL_25;
  }

  container_query_free();

  v8 = container_copy_sandbox_token();
  if (!v8)
  {
    sub_100008B60(4, 0, init);
LABEL_14:
    v5->_sandboxHandle = -1;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sandbox_extension_consume();
  if (v10 == -1)
  {
    v23 = NSUnderlyingErrorKey;
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v24 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    sub_100008B60(5, v17, init);
    free(v9);
    goto LABEL_14;
  }

  v11 = v10;
  free(v9);
  v5->_sandboxHandle = v11;
  path = container_get_path();
  if (path)
  {
    v13 = [NSString stringWithUTF8String:path];
  }

  else
  {
    sub_100008B60(3, 0, init);
    v13 = 0;
  }

  v18 = v5->_path;
  v5->_path = v13;

LABEL_18:
  container_free_object();
  v19 = v5->_path;
  if (v19)
  {
    if (v5->_sandboxHandle == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v5;
    }
  }

  v20 = v19;
LABEL_27:

  return v20;
}

- (void)dealloc
{
  if (self->_sandboxHandle != -1)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = RCAppContainerHandle;
  [(RCAppContainerHandle *)&v3 dealloc];
}

@end