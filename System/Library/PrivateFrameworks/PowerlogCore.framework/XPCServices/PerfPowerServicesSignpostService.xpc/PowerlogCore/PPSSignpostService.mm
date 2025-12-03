@interface PPSSignpostService
- (PPSSignpostService)init;
- (void)notifyExpired;
- (void)process:(id)process withReply:(id)reply;
@end

@implementation PPSSignpostService

- (PPSSignpostService)init
{
  v3.receiver = self;
  v3.super_class = PPSSignpostService;
  result = [(PPSSignpostService *)&v3 init];
  if (result)
  {
    result->_expired = 0;
  }

  return result;
}

- (void)notifyExpired
{
  v3 = PPSLogSignpostService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received notification for expiration!", v4, 2u);
  }

  self->_expired = 1;
}

- (void)process:(id)process withReply:(id)reply
{
  processCopy = process;
  replyCopy = reply;
  v8 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000013FC;
  block[3] = &unk_100010428;
  v12 = processCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = processCopy;
  v10 = replyCopy;
  dispatch_async(v8, block);
}

@end