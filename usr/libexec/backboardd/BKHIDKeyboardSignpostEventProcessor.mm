@interface BKHIDKeyboardSignpostEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDKeyboardSignpostEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  if (*event)
  {
    IOHIDEventGetTimeStamp();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
  }

  kdebug_trace();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue != 7 && IntegerValue != 65289)
  {
    v11 = sub_100008528();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [senderCopy eventSource];
      v12 = _BKSHIDEventGetConciseDescriptionKeyboard();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", &v15, 0xCu);
    }
  }

  displayUUID = [senderCopy displayUUID];
  _BKHIDNoteUserEventOccurredOnDisplay();

  return 0;
}

@end