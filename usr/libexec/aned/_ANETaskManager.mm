@interface _ANETaskManager
+ (void)registerTask:(id)task;
+ (void)unregisterTask:(id)task;
@end

@implementation _ANETaskManager

+ (void)registerTask:(id)task
{
  taskCopy = task;
  v4 = +[_ANELog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = taskCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Registered CTS task %@", buf, 0xCu);
  }

  name = [taskCopy name];
  uTF8String = [name UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000086E8;
  handler[3] = &unk_100030858;
  v9 = taskCopy;
  v7 = taskCopy;
  xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, handler);
}

+ (void)unregisterTask:(id)task
{
  name = [task name];
  v3 = name;
  xpc_activity_unregister([name UTF8String]);
}

@end