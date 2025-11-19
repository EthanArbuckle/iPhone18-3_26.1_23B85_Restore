@interface BIXPCAlarm
+ (id)getNameForEvent:(id)a3;
+ (void)deleteAlarmWithName:(id)a3;
+ (void)handleAlarmForEvent:(id)a3;
+ (void)setAlarmWithName:(id)a3 withClock:(int)a4 afterSeconds:(double)a5 wakeUpAP:(BOOL)a6;
@end

@implementation BIXPCAlarm

+ (void)setAlarmWithName:(id)a3 withClock:(int)a4 afterSeconds:(double)a5 wakeUpAP:(BOOL)a6
{
  v9 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (!v10)
  {
    v14 = sub_10001D668();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1000318F8(v14);
    }

    goto LABEL_14;
  }

  xpc_dictionary_set_BOOL(v10, "ShouldWake", a6);
  if (!a4)
  {
    v15 = ((time(0) + a5) * 1000000000.0);
    xpc_dictionary_set_string(v11, "Type", "Walltime");
    xpc_dictionary_set_date(v11, "Date", v15);
    goto LABEL_11;
  }

  if (a4 == 8)
  {
    v12 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + a5 * 1000000000.0);
    v13 = "Uptime";
    goto LABEL_9;
  }

  if (a4 != 4)
  {
    v14 = sub_10001D668();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000318B4(v14);
    }

LABEL_14:

    goto LABEL_15;
  }

  v12 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) + a5 * 1000000000.0);
  v13 = "Monotonic";
LABEL_9:
  xpc_dictionary_set_string(v11, "Type", v13);
  xpc_dictionary_set_uint64(v11, "Date", v12);
LABEL_11:
  [v9 UTF8String];
  xpc_set_event();
LABEL_15:
}

+ (void)deleteAlarmWithName:(id)a3
{
  [a3 UTF8String];

  xpc_set_event();
}

+ (id)getNameForEvent:(id)a3
{
  string = xpc_dictionary_get_string(a3, _xpc_event_key_name);

  return [NSString stringWithUTF8String:string];
}

+ (void)handleAlarmForEvent:(id)a3
{
  v4 = a3;
  v7 = [a1 getNameForEvent:v4];
  reply = xpc_dictionary_create_reply(v4);
  v6 = xpc_dictionary_get_remote_connection(v4);

  if (reply && v6)
  {
    xpc_connection_send_message(v6, reply);
  }

  [a1 deleteAlarmWithName:v7];
}

@end