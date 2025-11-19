@interface _ANETask
+ (id)taskWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5;
- (_ANETask)initWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5;
@end

@implementation _ANETask

- (_ANETask)initWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v25.receiver = self;
    v25.super_class = _ANETask;
    v12 = [(_ANETask *)&v25 init];
    if (v12)
    {
      v13 = [v8 copy];
      name = v12->_name;
      v12->_name = v13;

      v15 = 5;
      if (a4 > 5)
      {
        v15 = a4;
      }

      v12->_periodSeconds = v15;
      v16 = objc_retainBlock(v10);
      handler = v12->_handler;
      v12->_handler = v16;

      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create("com.apple._ANETasks.defaultQueue", v18);
      queue = v12->_queue;
      v12->_queue = v19;

      keys[0] = XPC_ACTIVITY_INTERVAL;
      keys[1] = XPC_ACTIVITY_REPEATING;
      keys[2] = XPC_ACTIVITY_PRIORITY;
      keys[3] = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
      keys[4] = XPC_ACTIVITY_POWER_NAP;
      keys[5] = XPC_ACTIVITY_REQUIRES_CLASS_C;
      values[0] = xpc_int64_create(v12->_periodSeconds);
      values[1] = xpc_BOOL_create(1);
      values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
      values[3] = xpc_BOOL_create(1);
      values[4] = xpc_BOOL_create(1);
      values[5] = xpc_BOOL_create(1);
      v21 = xpc_dictionary_create(keys, values, 6uLL);
      executionCriteria = v12->_executionCriteria;
      v12->_executionCriteria = v21;

      for (i = 5; i != -1; --i)
      {
      }
    }

    self = v12;
    v11 = self;
  }

  return v11;
}

+ (id)taskWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithName:v9 period:a4 handler:v8];

  return v10;
}

@end