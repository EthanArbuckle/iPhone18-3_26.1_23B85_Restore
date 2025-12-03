@interface UAMockActivityScanner
- (UAMockActivityScanner)initWithController:(id)controller;
- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout withCompletionHandler:(id)handler;
@end

@implementation UAMockActivityScanner

- (UAMockActivityScanner)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = UAMockActivityScanner;
  v6 = [(UAMockActivityScanner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout withCompletionHandler:(id)handler
{
  deviceCopy = device;
  payloadCopy = payload;
  commandCopy = command;
  handlerCopy = handler;
  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138544130;
    v19 = deviceCopy;
    v20 = 2114;
    v21 = payloadCopy;
    v22 = 2114;
    v23 = commandCopy;
    v24 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "activityPayloadFromDevice:%{public}@ forAdvertisementPayload:%{public}@ command:%{public}@ timeout:%ld", &v18, 0x2Au);
  }

  controller = [(UAMockActivityScanner *)self controller];
  [controller activityPayloadFromDevice:deviceCopy forAdvertisementPayload:payloadCopy command:commandCopy timeout:timeout withCompletionHandler:handlerCopy];
}

@end